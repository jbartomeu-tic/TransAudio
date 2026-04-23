from flask import Flask, request, jsonify, send_file
from flask_cors import CORS
import yt_dlp
import os
import tempfile
import shutil

app = Flask(__name__)
# Permitimos CORS para que GitHub Pages pueda acceder al backend
CORS(app)

# Carpeta temporal para las descargas
DOWNLOAD_DIR = tempfile.gettempdir()

@app.route('/', methods=['GET'])
def health_check():
    return jsonify({'status': 'online', 'message': 'TransAudio API is running'}), 200

@app.route('/api/info', methods=['GET'])
def get_info():
    url = request.args.get('url')
    if not url:
        return jsonify({'error': 'No se proporcionó una URL'}), 400

    ydl_opts = {
        'quiet': True,
        'no_warnings': True,
        'format': 'bestaudio/best',
    }

    try:
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            info = ydl.extract_info(url, download=False)
            return jsonify({
                'title': info.get('title'),
                'thumbnail': info.get('thumbnail'),
                'duration': info.get('duration'),
                'uploader': info.get('uploader'),
            })
    except Exception as e:
        return jsonify({'error': f"Error al obtener info: {str(e)}"}), 500

@app.route('/api/download', methods=['GET'])
def download():
    url = request.args.get('url')
    if not url:
        return jsonify({'error': 'No se proporcionó una URL'}), 400

    # Usamos un directorio temporal único para esta descarga
    session_dir = tempfile.mkdtemp()
    
    ydl_opts = {
        'format': 'bestaudio/best',
        'outtmpl': os.path.join(session_dir, '%(title)s.%(ext)s'),
        'postprocessors': [{
            'key': 'FFmpegExtractAudio',
            'preferredcodec': 'mp3',
            'preferredquality': '192',
        }],
        'quiet': True,
    }

    try:
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            info = ydl.extract_info(url, download=True)
            filename = ydl.prepare_filename(info)
            # yt-dlp cambia la extensión a .mp3 después del post-procesamiento
            mp3_path = os.path.splitext(filename)[0] + '.mp3'
            
            if not os.path.exists(mp3_path):
                return jsonify({'error': 'El archivo MP3 no se generó correctamente'}), 500

            # Enviamos el archivo y luego intentamos limpiar (aunque send_file bloquea el archivo)
            return send_file(
                mp3_path,
                as_attachment=True,
                download_name=f"{info.get('title', 'audio')}.mp3",
                mimetype='audio/mpeg'
            )
            
    except Exception as e:
        return jsonify({'error': f"Error en la descarga: {str(e)}"}), 500
    # Nota: En producción, se recomienda una tarea de limpieza periódica 
    # para borrar los directorios en 'session_dir'

if __name__ == '__main__':
    # Usamos el mismo puerto que tenías en Node.js
    app.run(host='0.0.0.0', port=2304, debug=True)

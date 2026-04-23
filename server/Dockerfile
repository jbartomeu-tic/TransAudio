# Usamos una imagen ligera de Python
FROM python:3.9-slim

# Instalamos FFmpeg (esencial para convertir a MP3)
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos e instalamos dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código del servidor
COPY . .

# Exponemos el puerto que usa nuestra app
EXPOSE 2304

# Comando para ejecutar la app con Gunicorn (más estable para producción)
# El timeout es alto porque descargar videos largos puede llevar tiempo
CMD ["gunicorn", "--bind", "0.0.0.0:2304", "app:app", "--timeout", "120"]

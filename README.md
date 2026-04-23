# 🎶 TransAudio

![TransAudio Banner](https://images.unsplash.com/photo-1614149162883-504ce4d13909?q=80&w=1000&auto=format&fit=crop)

**TransAudio/**
├── index.html        # Interfaz de usuario principal (Raíz para GitHub Pages)
├── style.css         # Estilo premium
├── script.js         # Lógica del frontend
├── server_python/    # Servidor de procesamiento (Python + Flask)
│   ├── app.py
│   └── requirements.txt
└── README.md         # Documentación

**TransAudio** es una aplicación web moderna y minimalista diseñada para extraer la esencia del sonido. Convierte tus videos favoritos de YouTube a MP3 con una calidad excepcional y una interfaz visualmente impresionante basada en **Glassmorphism**.

---

## 🚀 Demo en Vivo
Puedes ver una vista previa de la interfaz aquí:
👉 **[Ver Demo en GitHub Pages](https://jbartomeu-tic.github.io/TransAudio/)**

> [!NOTE]
> La versión en GitHub Pages es solo una demostración de la interfaz. Para realizar conversiones reales, el servidor de Node.js debe estar activo (sigue las instrucciones de instalación abajo).

---

## ✨ Características

- 💎 **Diseño Premium:** Interfaz elegante con efectos de cristal (Glassmorphism), animaciones fluidas y modo oscuro nativo.
- ⚡ **Conversión Rápida:** Procesamiento optimizado de audio mediante `ytdl-core` y `FFmpeg`.
- 📊 **Barra de Progreso Real:** Visualiza el estado de la conversión en tiempo real.
- 📱 **Totalmente Responsivo:** Diseñado para verse increíble en móviles, tablets y escritorio.
- 📂 **Lanzador Personalizado:** Incluye un script para crear accesos directos y abrir el programa fácilmente.

---

## 🛠️ Tecnologías Utilizadas

- **Frontend:** HTML5, CSS3 (Vanilla), JavaScript (ES6+).
- **Backend:** Node.js, Express.
- **Procesamiento:** FFmpeg, Fluent-ffmpeg.
- **Diseño:** Google Fonts (Outfit), CSS Glassmorphism.

---

## 📦 Instalación y Uso Local

Sigue estos pasos para ejecutar TransAudio en tu computadora:

### Requisitos Previos
- [Node.js](https://nodejs.org/) (Versión 16 o superior recomendada)
- [Python](https://www.python.org/) (Para el procesamiento interno de yt-dlp)

### Pasos
1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/jbartomeu-tic/TransAudio.git
   cd TransAudio
   ```

2. **Backend de Python (Recomendado para GitHub Pages):**
   - Haz doble clic en `start_python.bat`. Este script configurará un entorno virtual e instalará `yt-dlp` y `Flask`.
   
3. **Despliegue en GitHub Pages:**
   - Sube la carpeta `client` a tu repositorio de GitHub y activa GitHub Pages.
   - Despliega el contenido de `server_python` en [Render](https://render.com) o [Railway](https://railway.app).
   - Una vez desplegado el backend, copia la URL que te den y pégala en `client/script.js` dentro de la variable `PRODUCTION_API_URL`.

4. **(Opcional) Backend de Node.js:**
   - Si prefieres usar Node, ejecuta `start.bat`.


---

## 📸 Capturas de Pantalla

*(Próximamente: Añade aquí capturas de tu aplicación para impresionar a los visitantes)*

---

## 🤝 Contribuciones
Las contribuciones, problemas y solicitudes de características son bienvenidos. ¡Siéntete libre de revisar la página de [issues](https://github.com/jbartomeu-tic/TransAudio/issues)!

## 📄 Licencia
Este proyecto está bajo la licencia MIT.

---

Desarrollado con ❤️ por [[jbartomeu-tic](https://github.com/jbartomeu-tic)]

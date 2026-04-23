# 🎶 TransAudio

![TransAudio Banner](https://images.unsplash.com/photo-1614149162883-504ce4d13909?q=80&w=1000&auto=format&fit=crop)

```text
TransAudio/
├── index.html           # Interfaz de usuario principal
├── style.css            # Estilo premium (Glassmorphism)
├── script.js            # Lógica del frontend y conexión API
├── server/              # Backend (Python + Flask)
│   ├── app.py           # Servidor principal
│   ├── requirements.txt # Dependencias de Python
│   └── Dockerfile       # Receta para despliegue en la nube
├── tools/               # Utilidades de Windows
│   ├── Lanzar_TransAudio.bat
│   └── Instalar_Acceso_Directo.bat
├── docs/                # Documentación técnica
│   └── idea.md
├── .gitignore           # Archivos excluidos de Git
└── README.md            # Guía del proyecto
```

**TransAudio** es una aplicación web moderna y minimalista diseñada para extraer la esencia del sonido. Convierte tus videos favoritos de YouTube a MP3 con una calidad excepcional y una interfaz visualmente impresionante.

---

## 🚀 Demo en Vivo

[![Live Demo](https://img.shields.io/badge/VER_DEMO_EN_VIVO-Click_Aquí-0078d4?style=for-the-badge&logo=github&logoColor=white)](https://jbartomeu-tic.github.io/TransAudio/)

> [!IMPORTANT]
> La versión en GitHub Pages requiere que el servidor de Python esté activo (localmente o en la nube) para procesar las descargas.

---

## ✨ Características

- 💎 **Diseño Premium:** Interfaz elegante con efectos de cristal, animaciones fluidas y modo oscuro nativo.
- ⚡ **Conversión Rápida:** Procesamiento optimizado mediante `yt-dlp` y `FFmpeg`.
- 📊 **Feedback en Tiempo Real:** Barra de progreso visual durante la conversión.
- 📱 **Totalmente Responsivo:** Diseño adaptativo para móviles, tablets y escritorio.
- 📂 **Lanzador de un Clic:** Acceso directo personalizado para Windows.

---

## 🛠️ Tecnologías Utilizadas

- **Frontend:** HTML5, CSS3 (Vanilla), JavaScript (ES6+).
- **Backend:** Python 3.9 (Flask).
- **Procesamiento:** yt-dlp, FFmpeg.
- **Diseño:** Google Fonts (Outfit), Glassmorphism CSS.

---

## 📦 Instalación y Uso Local

### Requisitos Previos
- [Python 3.9+](https://www.python.org/)
- [FFmpeg](https://ffmpeg.org/download.html) (Asegúrate de que esté en tu PATH de Windows)

### Pasos
1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/jbartomeu-tic/TransAudio.git
   cd TransAudio
   ```

2. **Configuración inicial:**
   - Entra en `tools/` y ejecuta `Instalar_Acceso_Directo.bat`.
   - Aparecerá un icono llamado **TransAudio** en la raíz.

3. **Ejecutar:**
   - Haz doble clic en el acceso directo **TransAudio**. El script instalará todo lo necesario en el primer inicio.
   
4. **Despliegue Online:**
   - Sube la raíz a GitHub y activa **GitHub Pages**.
   - Despliega la carpeta `server/` en **Render.com** usando el `Dockerfile`.
   - Pon la URL de Render en `script.js` (`PRODUCTION_API_URL`).

---

## 🤝 Contribuciones
Las contribuciones son bienvenidas. Siéntete libre de abrir un issue o enviar un pull request.

## 📄 Licencia
Este proyecto está bajo la licencia MIT.

---

Desarrollado con ❤️ por [[jbartomeu-tic](https://github.com/jbartomeu-tic)] y [[poltorprogrammer](https://github.com/poltorprogrammer)]

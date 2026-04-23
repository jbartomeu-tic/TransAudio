# 🎶 TransAudio

![TransAudio Banner](https://images.unsplash.com/photo-1614149162883-504ce4d13909?q=80&w=1000&auto=format&fit=crop)

**TransAudio/**
├── index.html           # Interfaz de usuario principal (Raíz para GitHub Pages)
├── style.css            # Estilo premium
├── script.js            # Lógica del frontend
├── server/              # Servidor de procesamiento (Python + Flask)
│   ├── app.py
│   └── requirements.txt
├── tools/               # Scripts de utilidad y lanzadores
│   ├── Lanzar_TransAudio.bat
│   └── Instalar_Acceso_Directo.bat
├── docs/                # Documentación técnica
│   └── idea.md
├── .gitignore           # Archivos ignorados por Git
└── README.md            # Documentación principal

**TransAudio** es una aplicación web moderna y minimalista diseñada para extraer la esencia del sonido. Convierte tus videos favoritos de YouTube a MP3 con una calidad excepcional y una interfaz visualmente impresionante basada en **Glassmorphism**.

---

## 🚀 Demo en Vivo
Puedes ver una vista previa de la interfaz aquí:
👉 **[Ver Demo en GitHub Pages](https://jbartomeu-tic.github.io/TransAudio/)**

> [!IMPORTANT]
> La versión en GitHub Pages requiere que el servidor de Python esté activo o desplegado en la nube (ver instrucciones de instalación abajo).

---

## ✨ Características

- 💎 **Diseño Premium:** Interfaz elegante con efectos de cristal (Glassmorphism), animaciones fluidas y modo oscuro nativo.
- ⚡ **Conversión Rápida:** Procesamiento optimizado de audio mediante `yt-dlp` y `FFmpeg`.
- 📊 **Barra de Progreso Real:** Visualiza el estado de la conversión en tiempo real.
- 📱 **Totalmente Responsivo:** Diseñado para verse increíble en móviles, tablets y escritorio.
- 📂 **Lanzador Personalizado:** Incluye un acceso directo para abrir el programa fácilmente desde Windows.

---

## 🛠️ Tecnologías Utilizadas

- **Frontend:** HTML5, CSS3 (Vanilla), JavaScript (ES6+).
- **Backend:** Python (Flask).
- **Procesamiento:** yt-dlp, FFmpeg.
- **Diseño:** Google Fonts (Outfit), CSS Glassmorphism.

---

## 📦 Instalación y Uso Local

Sigue estos pasos para ejecutar TransAudio en tu computadora:

### Requisitos Previos
- [Python](https://www.python.org/) (Versión 3.9 o superior)
- [FFmpeg](https://ffmpeg.org/download.html) (Instalado en el sistema)

### Pasos
1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/jbartomeu-tic/TransAudio.git
   cd TransAudio
   ```

2. **Configuración inicial:**
   - Entra en la carpeta `tools/` y ejecuta `Instalar_Acceso_Directo.bat`.
   - Esto creará un icono llamado **TransAudio** en la carpeta raíz.

3. **Ejecutar el programa:**
   - Simplemente haz doble clic en el acceso directo **TransAudio** de la raíz.
   - El script configurará automáticamente el entorno de Python e instalará las librerías necesarias en el primer inicio.
   
4. **Despliegue en GitHub Pages:**
   - Sube todos los archivos de la raíz a tu repositorio de GitHub y activa GitHub Pages.
   - Despliega el contenido de la carpeta `server` en [Render](https://render.com) usando el `Dockerfile` incluido.
   - Una vez desplegado el backend, copia la URL que te den y pégala en `script.js` dentro de la variable `PRODUCTION_API_URL`.

---

## 📸 Capturas de Pantalla
*(Próximamente)*

---

## 🤝 Contribuciones
Las contribuciones son bienvenidas. ¡Siéntete libre de revisar la página de [issues](https://github.com/jbartomeu-tic/TransAudio/issues)!

## 📄 Licencia
Este proyecto está bajo la licencia MIT.

---

Desarrollado con ❤️ por [[jbartomeu-tic](https://github.com/jbartomeu-tic)] y [[poltorprogrammer](https://github.com/poltorprogrammer)]

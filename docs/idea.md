# TransAudio - Especificación del Proyecto

TransAudio es una aplicación web moderna diseñada para simplificar el proceso de descarga y conversión de contenido de YouTube en archivos de audio de alta calidad (MP3).

## 🎯 Objetivo del Proyecto
Proporcionar una interfaz fluida, rápida y estéticamente atractiva para que los usuarios extraigan audio de videos de YouTube para su escucha sin conexión.

## 🚀 Modos de Operación

### 1. Extracción de Pista Individual (MODO UNO)
- **Descripción**: El usuario proporciona una URL directa de YouTube.
- **Proceso**: La aplicación valida el enlace, obtiene metadatos (título, miniatura, duración) y procesa la extracción de audio.
- **Salida**: Un archivo MP3 de alta calidad listo para descargar.

### 2. Búsqueda y Descarga (Propuesto MODO DOS)
- **Descripción**: Funcionalidad de búsqueda integrada dentro de la aplicación.
- **Proceso**: Los usuarios buscan por palabras clave, exploran los resultados y seleccionan pistas para descargar sin salir de la plataforma.
- **Alternativa**: Procesamiento de listas de reproducción (descarga de todas las pistas de una URL de lista de reproducción).

## 🛠️ Stack Técnico
- **Frontend**: HTML5, Vanilla CSS3 (diseño moderno/premium) y JavaScript (ES6+).
- **Backend (Requerido)**: Node.js con `yt-dlp` o una biblioteca similar para el procesamiento del lado del servidor (para manejar los complejos protocolos de streaming de YouTube).
- **Estilo**: Enfocado en "Estética Rica" con glassmorphism (efecto cristal), transiciones suaves y un enfoque prioritario en modo oscuro.

## 📂 Estructura del Proyecto
```text
TransAudio/
├── client/
│   ├── index.html    # Interfaz de usuario principal
│   ├── style.css     # Estilo premium
│   └── script.js     # Lógica del frontend e interacción con la API
├── server/           # Necesario para el procesamiento de YouTube
│   ├── server.js     # Servidor Express
│   └── package.json  # Dependencias
└── README.md         # Documentación
```

## 🎨 Requisitos de UI/UX
- **Tema**: Oscuro, elegante y moderno.
- **Feedback**: Barras de progreso en tiempo real para descargas/conversión.
- **Responsividad**: Diseño pensado primero para móviles (mobile-first).
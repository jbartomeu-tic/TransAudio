@echo off
title TransAudio - Lanzador
setlocal enabledelayedexpansion

echo ==========================================
echo    TransAudio - Verificando Sistema
echo ==========================================

:: 1. Verificar si Python está instalado
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python no detectado.
    echo Por favor, instala Python desde: https://www.python.org/
    echo.
    pause
    exit
)
echo [OK] Python encontrado.

:: 2. Entrar a la carpeta del servidor
cd /d "%~dp0server_python"
if %errorlevel% neq 0 (
    echo [ERROR] No se pudo encontrar la carpeta del servidor.
    pause
    exit
)

:: 3. Crear entorno virtual (venv) si no existe
if not exist "venv\" (
    echo [INFO] Creando entorno virtual para librerias...
    python -m venv venv
)

:: 4. Activar y verificar dependencias
echo [INFO] Verificando dependencias (Flask, yt-dlp, etc.)...
call venv\Scripts\activate
pip install -q -r requirements.txt
if %errorlevel% neq 0 (
    echo [ERROR] No se pudieron instalar las dependencias.
    pause
    exit
)

:: 5. Iniciar servidor en segundo plano
echo.
echo [INFO] Iniciando servidor en http://localhost:2304
start /b python app.py

:: 6. Abrir la interfaz (que ahora está en la raíz)
timeout /t 3 >nul
echo [INFO] Abriendo interfaz...
start "" "..\index.html"

echo ==========================================
echo    ¡TransAudio esta listo!
echo    Mantén esta ventana abierta mientras lo uses.
echo ==========================================
pause

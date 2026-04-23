@echo off
title TransAudio - Lanzador
echo ==========================================
echo    TransAudio - Verificando Sistema
echo ==========================================

:: 1. Verificar Node.js
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js no detectado.
    echo Por favor, instala Node.js desde: https://nodejs.org/
    echo.
    pause
    exit
)
echo [OK] Node.js encontrado.

:: 2. Entrar a la carpeta server
cd /d "%~dp0server"
if %errorlevel% neq 0 (
    echo [ERROR] No se pudo encontrar la carpeta 'server'.
    pause
    exit
)

:: 3. Instalar dependencias si faltan
if not exist "node_modules\" (
    echo [INFO] Instalando dependencias de Node.js...
    call npm install
    if %errorlevel% neq 0 (
        echo [ERROR] Fallo la instalacion de dependencias.
        pause
        exit
    )
    echo [OK] Dependencias instaladas.
)

:: 4. Iniciar servidor
echo.
echo [INFO] Iniciando servidor en http://localhost:2304
start /b node server.js

:: 5. Abrir navegador
timeout /t 3 >nul
start http://localhost:2304

echo ==========================================
echo    ¡TransAudio esta listo!
echo    Mantén esta ventana abierta.
echo ==========================================
pause

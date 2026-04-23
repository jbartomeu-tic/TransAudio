@echo off
title TransAudio - Creador de Acceso Directo
setlocal enabledelayedexpansion

:: Definir rutas (usando comillas para manejar espacios)
set "targetPath=%~dp0Lanzar_TransAudio.bat"
set "shortcutPath=%~dp0..\TransAudio.lnk"
set "workingDir=%~dp0"

echo ==========================================
echo    Creador de Acceso Directo - TransAudio
echo ==========================================
echo.

:: Crear el acceso directo usando PowerShell en una sola línea para evitar errores de escape
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%shortcutPath%'); $s.TargetPath = '%targetPath%'; $s.WorkingDirectory = '%workingDir%'; $s.IconLocation = 'shell32.dll,187'; $s.Description = 'Lanzador de TransAudio'; $s.Save()"

:: Verificar si se creó correctamente
if exist "%shortcutPath%" (
    echo [OK] Se ha creado el archivo: TransAudio.lnk
    echo.
    echo 💡 Instrucciones:
    echo 1. Ahora veras un acceso directo llamado 'TransAudio' en la CARPETA RAIZ.
    echo 2. Puedes copiarlo o moverlo a tu Escritorio o donde quieras.
    echo 3. Al abrirlo, el programa funcionara perfectamente.
) else (
    echo [ERROR] No se pudo crear el acceso directo.
    echo Intenta ejecutar este archivo como administrador si el error persiste.
)

echo.
echo ==========================================
pause

@echo off
echo Setting up Visual Studio Build Tools environment...
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=x64
if %errorlevel% neq 0 (
    echo Error: Could not find VsDevCmd.bat. Please ensure Visual Studio Build Tools is installed correctly.
    exit /b %errorlevel%
)

echo Setting up Cargo path...
set PATH=C:\Users\akira_nagano\.cargo\bin;%PATH%

echo Starting Tauri desktop app...
npm run desktop-internal

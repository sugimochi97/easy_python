@echo off
setlocal

REM Function to build Docker image
:build_image
set "version=%~1"
set "image_name=python:%version%"

echo Building Docker image for Python %version%...
docker build --build-arg PYTHON_VERSION=%version% -t %image_name% -f Dockerfile.template .
goto :eof

REM Check command line arguments
if "%~1"=="" (
    echo Usage: %0 ^<python_version^>
    echo Example: %0 3.8.10
    exit /b 1
)

REM Build the specified Python version image
call :build_image %1

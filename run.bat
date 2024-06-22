@echo off
setlocal

REM Function to run Docker container
:run_container
set "version=%~1"
set "image_name=python:%version%"
set "container_name=python%version%"

echo Running Docker container for Python %version%...
docker run -it --name %container_name% %image_name%
goto :eof

REM Check command line arguments
if "%~1"=="" (
    echo Usage: %0 ^<python_version^>
    echo Example: %0 3.8.10
    exit /b 1
)

REM Run the specified Python version container
call :run_container %1

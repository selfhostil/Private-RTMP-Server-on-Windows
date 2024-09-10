@echo off

REM Stop and remove the old container if it exists
echo Stopping and removing old container...
docker rm -f my_rtmp_server_container >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo Old container removed successfully.
) else (
    echo No existing container found.
)

REM Remove the old Docker image
echo Removing old Docker image...
docker rmi my_rtmp_server >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo Old image removed successfully.
) else (
    echo No existing image found.
)

REM Build a new Docker image without using cache
echo Building new Docker image without cache...
docker build --no-cache -t my_rtmp_server .
if %ERRORLEVEL% neq 0 (
    echo Failed to build Docker image. Exiting...
    pause
    exit /b %ERRORLEVEL%
)

REM Run the newly built container
echo Running new container...
docker run -d -p 1935:1935 -p 80:80 --name my_rtmp_server_container my_rtmp_server
if %ERRORLEVEL% neq 0 (
    echo Failed to run the container. Exiting...
    pause
    exit /b %ERRORLEVEL%
)

echo Container started successfully.
echo The RTMP server is available at rtmp://localhost/live
echo The HTTP server is available at http://localhost
pause

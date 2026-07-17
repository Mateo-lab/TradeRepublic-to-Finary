@echo off
title TR to Finary
color 0B
echo.
echo  ====================================
echo   TR to Finary - Web UI
echo  ====================================
echo.

:: Kill any leftover Python server on port 8000
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8000.*LISTENING" 2^>nul') do (
    taskkill /F /PID %%a >nul 2>&1
)

echo  Starting server on http://127.0.0.1:8000
echo  Opening browser...
echo.
echo  Press Ctrl+C to stop the server.
echo.
python -m tr_to_finary.web

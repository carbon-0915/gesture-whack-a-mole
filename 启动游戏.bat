@echo off
chcp 65001 >nul
title 手势打地鼠 - 本地服务器
color 0A
cd /d "%~dp0"

echo.
echo ========================================
echo   手势打地鼠 - 本地服务器启动
echo ========================================
echo.

python --version >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [错误] 未检测到 Python，请先安装：https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

set GAME_URL=http://127.0.0.1:8000/
set PORT=8000

:: 若 8000 已在监听，只打开浏览器，不重复启动
netstat -ano | findstr ":%PORT%" | findstr "LISTENING" >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [提示] 本地服务器已在运行，正在打开浏览器...
    goto OPEN_BROWSER
)

echo [1/2] 正在后台启动本地服务器（端口 %PORT%）...
echo       若首次弹出 Windows 防火墙，请点「允许访问」并勾选专用网络。
echo.
start "手势打地鼠-服务器" /min cmd /c "cd /d "%~dp0" && python -m http.server %PORT%"

echo [2/2] 等待服务器就绪...
timeout /t 2 /nobreak >nul

:OPEN_BROWSER
echo 正在打开浏览器: %GAME_URL%
start "" "%GAME_URL%"

echo.
echo ========================================
echo   已尝试自动打开浏览器
echo ========================================
echo.
echo 若未自动打开，请手动访问：
echo   %GAME_URL%
echo.
echo 停止服务器：关闭任务栏里标题为「手势打地鼠-服务器」的最小化窗口
echo 或在本窗口按 Ctrl+C（若服务器在本窗口运行）
echo.
echo 本窗口可关闭，服务器在后台继续运行。
echo.
pause

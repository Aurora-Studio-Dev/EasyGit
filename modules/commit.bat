@echo off
chcp 65001 >nul
cls

echo ====================================================

echo                提交更改 (git commit)

echo ====================================================

set /p commit_msg=请输入提交信息: 

if "%commit_msg%"=="" (
    echo 错误:请提供提交信息
    pause
    exit /b 1
)

git add .

git commit -m "%commit_msg%"

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

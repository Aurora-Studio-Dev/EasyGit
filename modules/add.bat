@echo off
chcp 65001 >nul
cls

echo ====================================================

echo                添加文件 (git add)

echo ====================================================

set /p files=请输入要添加的文件(*表示所有文件): 

if "%files%"=="" (
    echo 错误:请指定要添加的文件
    pause
    exit /b 1
)

git add %files%

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

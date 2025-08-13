@echo off
chcp 65001 >nul
cls

echo ====================================================

echo                切换分支 (git checkout)

echo ====================================================

set /p branch_name=请输入要切换的分支名称: 

if "%branch_name%"=="" (
    echo 错误:请提供分支名称
    pause
    exit /b 1
)

git checkout "%branch_name%"

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

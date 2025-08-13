@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                初始化仓库 (git init)
echo ====================================================
set /p repo_name=请输入仓库名称(可留空在当前目录初始化):

if "%repo_name%"=="" (
    git init
) else (
    git init "%repo_name%"
)

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

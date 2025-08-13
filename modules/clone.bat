@echo off
chcp 65001 >nul
cls

echo ====================================================

echo                克隆仓库 (git clone)

echo ====================================================

set /p repo_url=请输入要克隆的仓库地址: 

if "%repo_url%"=="" (
    echo 错误:请提供仓库地址
    pause
    exit /b 1
)

set /p target_dir=请输入目标目录名称(可留空使用默认名称): 

if "%target_dir%"=="" (
    git clone "%repo_url%"
) else (
    git clone "%repo_url%" "%target_dir%"
)

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

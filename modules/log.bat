@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                查看日志 (git log)
echo ====================================================
echo 请选择日志显示方式:
echo .
echo 1. 详细日志
echo 2. 简洁日志(单行)
echo 3. 图形化日志
set /p log_choice=请选择: 

if "%log_choice%"=="1" (
    git log
) else if "%log_choice%"=="2" (
    git log --oneline
) else if "%log_choice%"=="3" (
    git log --graph --oneline --all
) else (
    git log
)
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

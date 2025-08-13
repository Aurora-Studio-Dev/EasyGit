@echo off
chcp 65001 >nul
cls

echo ====================================================

echo                查看差异 (git diff)

echo ====================================================

echo 请选择要比较的内容:

echo .

echo 1. 工作区与暂存区的差别

echo 2. 暂存区与最新提交的差别

echo 3. 工作区与最新提交的差别

set /p diff_choice=请选择: 

if "%diff_choice%"=="1" (
    git diff
) else if "%diff_choice%"=="2" (
    git diff --cached
) else if "%diff_choice%"=="3" (
    git diff HEAD
) else (
    git diff
)

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

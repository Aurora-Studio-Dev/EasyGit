@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                贮藏操作 (git stash)
echo ====================================================
echo 请选择操作:
echo .
echo 1. 贮藏当前更改
echo 2. 恢复贮藏的更改
echo 3. 查看贮藏列表
set /p stash_choice=请选择: 

if "%stash_choice%"=="1" (
    git stash
) else if "%stash_choice%"=="2" (
    git stash pop
) else if "%stash_choice%"=="3" (
    git stash list
)
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

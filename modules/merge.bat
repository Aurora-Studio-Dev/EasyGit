@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                合并分支 (git merge)
echo ====================================================
set /p merge_branch=请输入要合并的分支名称: 
if "%merge_branch%"=="" (
    echo 错误:请提供分支名称
    pause
    exit /b 1
)
git merge "%merge_branch%"
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

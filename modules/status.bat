@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                查看状态 (git status)
echo ====================================================
git status
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

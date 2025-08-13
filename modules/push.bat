@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                推送更新 (git push)
echo ====================================================
set /p remote_name=请输入远程仓库名称(默认为origin): 
if "%remote_name%"=="" set remote_name=origin
set /p remote_branch=请输入远程分支名称(默认为main): 
if "%remote_branch%"=="" set remote_branch=main
git push "%remote_name%" "%remote_branch%"
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

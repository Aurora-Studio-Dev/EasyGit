@echo off
chcp 65001 >nul
cls

echo ====================================================
echo                一键推送 (git add/commit/push)
echo ====================================================

set /p commit_msg=请输入提交信息: 

if "%commit_msg%"=="" (
    echo 错误:请提供提交信息
    pause
    exit /b 1
)

echo.
echo 正在添加所有文件...
git add .

echo.
echo 正在提交更改...
git commit -m "%commit_msg%"

echo.
echo 正在推送到远程仓库...
set /p remote_name=请输入远程仓库名称(默认为origin): 
if "%remote_name%"=="" set remote_name=origin

set /p remote_branch=请输入远程分支名称(默认为main): 
if "%remote_branch%"=="" set remote_branch=main

git push "%remote_name%" "%remote_branch%"

echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5
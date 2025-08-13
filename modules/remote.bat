@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                远程仓库 (git remote)
echo ====================================================
echo 请选择操作:
echo .
echo 1. 查看远程仓库
echo 2. 添加远程仓库
echo 3. 删除远程仓库
set /p remote_choice=请选择: 

if "%remote_choice%"=="1" (
    git remote -v
) else if "%remote_choice%"=="2" (
    set /p remote_name=请输入远程仓库名称: 
    set /p remote_url=请输入远程仓库地址: 
    if "!remote_name!"=="" (
        echo 错误:请提供远程仓库名称
    ) else if "!remote_url!"=="" (
        echo 错误:请提供远程仓库地址
    ) else (
        git remote add "!remote_name!" "!remote_url!"
    )
) else if "%remote_choice%"=="3" (
    set /p remote_name=请输入要删除的远程仓库名称: 
    if "!remote_name!"=="" (
        echo 错误:请提供远程仓库名称
    ) else (
        git remote remove "!remote_name!"
    )
)
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

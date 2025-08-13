@echo off
chcp 65001 >nul
cls

echo ====================================================

echo                分支管理 (git branch)

echo ====================================================

echo 请选择操作:

echo .

echo 1. 查看所有分支

echo 2. 创建新分支

echo 3. 删除分支

set /p branch_choice=请选择: 

if "%branch_choice%"=="1" (
    git branch -a
) else if "%branch_choice%"=="2" (
    set /p new_branch=请输入新分支名称: 
    if "!new_branch!"=="" (
        echo 错误:请提供分支名称
    ) else (
        git branch "!new_branch!"
    )
) else if "%branch_choice%"=="3" (
    set /p del_branch=请输入要删除的分支名称: 
    if "!del_branch!"=="" (
        echo 错误:请提供分支名称
    ) else (
        git branch -d "!del_branch!"
    )
)

echo.

echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

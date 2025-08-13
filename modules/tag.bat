@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                标签操作 (git tag)
echo ====================================================
echo 请选择操作:
echo .
echo 1. 查看所有标签
echo 2. 创建新标签
echo 3. 删除标签
set /p tag_choice=请选择: 

if "%tag_choice%"=="1" (
    git tag -l
) else if "%tag_choice%"=="2" (
    set /p tag_name=请输入标签名称: 
    if "!tag_name!"=="" (
        echo 错误:请提供标签名称
    ) else (
        git tag "!tag_name!"
    )
) else if "%tag_choice%"=="3" (
    set /p tag_name=请输入要删除的标签名称: 
    if "!tag_name!"=="" (
        echo 错误:请提供标签名称
    ) else (
        git tag -d "!tag_name!"
    )
)
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

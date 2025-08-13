@echo off
chcp 65001 >nul
cls
echo ====================================================
echo                重置操作 (git reset)
echo ====================================================
echo 请选择重置类型:
echo .
echo 1. 软重置(保留工作区和暂存区数据)
echo 2. 混合重置(保留工作区)
echo 3. 硬重置(删除所有更改)
set /p reset_choice=请选择: 

set /p commit_id=请输入提交ID(可选，默认为HEAD): 

if "%reset_choice%"=="1" (
    if "%commit_id%"=="" (
        git reset --soft HEAD
    ) else (
        git reset --soft "%commit_id%"
    )
) else if "%reset_choice%"=="2" (
    if "%commit_id%"=="" (
        git reset HEAD
    ) else (
        git reset "%commit_id%"
    )
) else if "%reset_choice%"=="3" (
    if "%commit_id%"=="" (
        git reset --hard HEAD
    ) else (
        git reset --hard "%commit_id%"
    )
)
echo.
echo 操作完成！

echo 窗口将在 5 秒后自动关闭...
timeout /t 5

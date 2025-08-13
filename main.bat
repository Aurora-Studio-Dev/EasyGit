@echo off

chcp 65001 >nul
setlocal enabledelayedexpansion

where git >nul 2>&1
if %errorlevel% neq 0 (
    echo ====================================================
    echo 错误: 未找到 Git 工具
    echo 请访问 https://git-scm.com/ 安装 Git 后再使用本工具
    echo ====================================================
    pause
    exit /b 1
)

:main_menu
cls
echo ====================================================
echo                       EasyGit
echo ====================================================
echo 请选择要执行的操作:
echo.
echo 1. 初始化仓库 (git init)
echo 2. 克隆仓库 (git clone)
echo 3. 添加文件 (git add)
echo 4. 查看状态 (git status)
echo 5. 提交更改 (git commit)
echo 6. 查看日志 (git log)
echo 7. 查看差异 (git diff)
echo 8. 分支管理 (git branch)
echo 9. 切换分支 (git checkout)
echo 10. 合并分支 (git merge)
echo 11. 获取更新 (git pull)
echo 12. 推送更新 (git push)
echo 13. 远程仓库 (git remote)
echo 14. 重置操作 (git reset)
echo 15. 贮藏操作 (git stash)
echo 16. 标签操作 (git tag)
echo 17. 一键推送
echo 0. 退出程序
echo ====================================================
set /p choice=请输入您的选择(0-16): 

if "%choice%"=="0" (
    echo 感谢使用EasyGit！
    timeout /t 5
    exit /b 0
)

if "%choice%"=="1" call :load_module init
if "%choice%"=="2" call :load_module clone
if "%choice%"=="3" call :load_module add
if "%choice%"=="4" call :load_module status
if "%choice%"=="5" call :load_module commit
if "%choice%"=="6" call :load_module log
if "%choice%"=="7" call :load_module diff
if "%choice%"=="8" call :load_module branch
if "%choice%"=="9" call :load_module checkout
if "%choice%"=="10" call :load_module merge
if "%choice%"=="11" call :load_module pull
if "%choice%"=="12" call :load_module push
if "%choice%"=="13" call :load_module remote
if "%choice%"=="14" call :load_module reset
if "%choice%"=="15" call :load_module stash
if "%choice%"=="16" call :load_module tag
if "%choice%"=="17" call :load_module push_all

set module_found=
goto main_menu

:load_module
set module_found=1
set module_file=%~dp0modules\%~1.bat
if exist "%module_file%" (
    call "%module_file%"
) else (
    echo 错误:找不到模块文件 %module_file%
    set module_found=
    pause
    goto :eof
)
goto :eof
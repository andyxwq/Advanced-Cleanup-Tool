@echo off
title Advanced Cleanup Tool v2.0
echo Cleaning temporary files and system cache...
echo Running as administrator is recommended.

:: Create log file
set logfile=%temp%\cleanup_log.txt
echo Cleanup started at %date% %time% > %logfile%

:: Delete temporary files
echo Cleaning temp files... >> %logfile%
cd /D %temp%
for /d %%D in (*) do rd /s /q "%%D" >> %logfile%
del /f /q *.* >> %logfile%

:: Clear browser caches
setlocal EnableDelayedExpansion
set browsers=(
    "%LocalAppData%\Microsoft\Edge\User Data\Default"
    "%LocalAppData%\Opera Software\Opera GX Stable"
    "%LocalAppData%\Google\Chrome\User Data\Default"
    "%LocalAppData%\BraveSoftware\Brave-Browser\User Data\Default"
    "%LocalAppData%\Vivaldi\User Data\Default"
)

for %%B in !browsers! do (
    if exist "%%B" (
        cd /D "%%B"
        del /f /q Cache* >> %logfile%
    )
)

:: Firefox cache cleanup
cd /D "%AppData%\Mozilla\Firefox\Profiles\"
for /d %%X in (*) do (
    if exist "%%X\cache2\" (
        cd "%%X\cache2"
        del /f /q *.* >> %logfile%
    )
)

:: Flush DNS cache
echo Flushing DNS cache... >> %logfile%
ipconfig /flushdns >> %logfile%

:: Optimize RAM by restarting Explorer
echo Restarting Explorer.exe to free up RAM... >> %logfile%
taskkill /F /IM explorer.exe >> %logfile%
start explorer.exe

:: Run disk cleanup and optimization
echo Running disk cleanup and optimization... >> %logfile%
cleanmgr /sagerun:1 >> %logfile%
defrag C: /O >> %logfile%

:: Completion message
echo Cleanup complete! >> %logfile%
echo Cleanup complete! Check log at %logfile%
pause

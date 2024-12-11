@echo off
:: Check if running as administrator
NET SESSION >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script requires administrator privileges. Restarting with elevated permissions...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit
)
echo Closing Google Chrome...
taskkill /F /IM chrome.exe /T > nul
echo.
for %%F in ("%WINDIR%\System32\GroupPolicy" "%WINDIR%\System32\GroupPolicyUsers" "%ProgramFiles(x86)%\Google\Policies" "%ProgramFiles%\Google\Policies") do (
    IF EXIST "%%F" (
        echo Deleting %%F folder...
        RD /S /Q "%%F" || goto error
    )
)
gpupdate /force
echo Deleting policies from Windows registries...
for %%R in (
    "HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome"
    "HKEY_LOCAL_MACHINE\Software\Policies\Google\Update"
    "HKEY_LOCAL_MACHINE\Software\Policies\Chromium"
    "HKEY_LOCAL_MACHINE\Software\Google\Chrome"
    "HKEY_LOCAL_MACHINE\Software\WOW6432Node\Google\Enrollment"
    "HKEY_CURRENT_USER\Software\Policies\Google\Chrome"
    "HKEY_CURRENT_USER\Software\Policies\Chromium"
    "HKEY_CURRENT_USER\Software\Google\Chrome"
    "HKEY_LOCAL_MACHINE\Software\WOW6432Node\Google\Update\ClientState\{430FD4D0-B729-4F61-AA34-91526481799D}"
) do (
    reg delete "%%R" /f
)
pause
exit
:error
echo Error encountered. Press any key to exit.
pause
exit

echo off
NET SESSION >nul 2>&1
IF %ERRORLEVEL EQU 0 (
  echo.
) ELSE (
  echo. ---------------------------------------------------------------
  echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES
  echo. ---------------------------------------------------------------
  echo. If you're seeing this, it means you don't have admin privileges"
  pause
  echo.
  echo. You will need to restart this program with Administrator privileges by right-clicking
  and select "Run As Administrator"
  
  pause
  
  echo.
  echo Press any key to leave this program. Make sure to Run As Administrator next time!
  
  pause
  
  EXIT /B 1
  
)

powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex
((New-Object System.Net.WebClient).DownloadString('htttps://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

echo Chocolatey is ready to begin installing packages!
pause

@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on. ] ----

choco install flashplayerplugin
choco install chocolatey-core.extension
choco install flashplayeractivex
choco install 7zip.install
choco install curl
choco install dotnetfx
choco install ffmpeg
choco install vlc
choco install adobe air
choco install everything

@rem ----[ You can add as many programs here as you desire!] ----

pause
echo.
echo Your installation is complete.
pause



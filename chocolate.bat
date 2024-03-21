echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo.-------------------------------------------------------------

   echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.

   echo. -------------------------------------------------------------

   echo. If you're seeing this, it means you don't have admin privileges!

   pause

   echo.

   echo. You will need to restart this program with Administrator privileges by right-clicking and select "Run As Administrator"

   pause 

    echo.

   echo Press any key to leave this program. Make sure to Run As Administrator next time!

   pause

   EXIT /B 1

)

powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

echo Chocolatey is ready to begin installing packages!

pause

@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on. ] ----
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
choco feature enable -n useFipsCompliantChecksums
choco install winrar 
7zip.install 
firefox 
dotnetfx 
flashplayerplugin 
vlc
chocolatey-core.extension
anydesk.install
chocolatey-dotnetfx.extension
dotnet4.7
dotnet4.7.1
dotnet4.6
dotnet4.6.2
dotnet4.6.1
dotnet4.5
dotnet4.0
dotnet3.5
chromium
nextcloud-client
gimp
gimp-data-extras
photogimp
krita
everything
adobereader
flashplayeractivex
jre8
chocolatey-windowsupdate.extension
notepadplusplus.install
git.install
adobeshockwaveplayer
steam-client
k-litecodecpackfull
keepass.install
audacity
obs-studio
obs-virtualcam
droidcamclient
openshot
tor-browser
protonvpn
pswindowsupdate
@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause

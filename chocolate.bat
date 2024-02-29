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
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d -Confirm:$false
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll 
Get-WuInstall -AcceptAll -IgnoreReboot
choco install winrar
choco install 7zip.install
choco install firefox
choco install dotnetfx
choco install flashplayerplugin
choco install vlc
choco install chocolatey-core.extension
choco install anydesk.install
choco install chocolatey-dotnetfx.extension
choco install dotnet4.7
choco install dotnet4.7.1
choco install dotnet4.6
choco install dotnet4.6.2
choco install dotnet4.6.1
choco install dotnet4.5
choco install dotnet4.0
choco install dotnet3.5
choco install chromium
choco install nextcloud-client
choco install gimp
choco install gimp-data-extras
choco install photogimp
choco install krita
choco install everything
choco install adobereader
choco install flashplayeractivex
choco install jre8
choco install chocolatey-windowsupdate.extension
choco install notepadplusplus.install
choco install git.install
choco install adobeshockwaveplayer
choco install sumatrapdf
choco install steam-client
choco install k-litecodecpackfull
choco install thunderbird
choco install keepass.install
choco install wireshark
choco install audacity
choco install obs-studio
choco install obs-virtualcam
choco install droidcamclient
choco install openshot
choco install librewolf
choco install tor
choco install tor-browser
choco install protonvpn
choco install pswindowsupdate
@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause

@echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (
    echo.
) ELSE (
    echo.-------------------------------------------------------------
    echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.
    echo.-------------------------------------------------------------
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

@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on). ] ----

# choco install winrar -y
choco install 7zip.install -y
choco install librefox -y   
choco install dotnetfx -y
choco install flashplayerplugin -y
choco install vlc -y
choco install chocolatey-core.extension -y
choco install rustdesk -y
choco install chocolatey-dotnetfx.extension -y
choco install git.install -y
choco install treesizefree -y
choco install tinywall -y
choco install obs-studio -y
choco install krita -y
choco install gimp -y
choco install photogimp -y
# choco install crystaldiskinfo -y
choco install openshot -y
choco install ungoogled-chromium -y
choco install everything -y
choco install flameshot -y
choco install adobereader -y
choco install silverlight -y
choco install jre8 -y
choco install microsoft-teams-new-bootstrapper -y 
# choco install anydesk -y
choco install mattermost-desktop -y
choco install element-desktop -y
choco install libreoffice -y
# choco install wireshark -y
choco install pspad -y
choco install etcher -y
choco install ventoy -y
# choco install qgis -y
choco install googleearthpro -y
choco install bulk-crap-uninstaller -y
choco install nircmd -y
choco install mullvad-app -y
choco install keepass -y 
choco install libreoffice -y
choco install adobeair -y
choco install microsoft-windows-terminal -y
choco install powershell -y
choco install veracrypt -y
choco install gpg4win -y
# choco install keybase -y
choco install advanced-ip-scanner -y

echo All installations are complete!
pause



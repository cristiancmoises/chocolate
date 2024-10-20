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

choco install winrar -y
choco install 7zip.install -y
choco install firefox -y
choco install chrome -y                @rem Google Chrome
choco install dotnetfx -y
choco install flashplayerplugin -y
choco install vlc -y
choco install chocolatey-core.extension -y
choco install anydesk.install -y
choco install chocolatey-dotnetfx.extension -y
choco install dotnet4.7 -y
choco install dotnet4.7.1 -y
choco install dotnet4.6 -y
choco install dotnet4.6.2 -y
choco install dotnet4.6.1 -y
choco install dotnet4.5 -y
choco install dotnet4.0 -y
choco install dotnet3.5 -y
choco install chromium -y
choco install nextcloud-client -y
choco install gimp -y

@rem Additional useful applications
choco install notepadplusplus -y     @rem Notepad++
choco install git -y                  @rem Git version control
choco install obs-studio -y           @rem OBS Studio for video recording/streaming
choco install slack -y                @rem Slack for team communication
choco install telegramdesktop -y       @rem Telegram Desktop
choco install skype -y                 @rem Skype
choco install visualstudio2019community -y  @rem Visual Studio Community edition
choco install microsoft-edge -y       @rem Microsoft Edge
choco install teams -y                 @rem Microsoft Teams
choco install autoruns -y             @rem Sysinternals Autoruns
choco install putty -y                @rem PuTTY for SSH and telnet
choco install gimp -y                 @rem GIMP image editor
choco install apacheopenoffice -y      @rem Apache OpenOffice
choco install winscp -y               @rem WinSCP for secure file transfer

echo All installations are complete!
pause

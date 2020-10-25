Write-Host "=================| Automated Windows Environment |======================"
Write-Host "                                                                        "
Write-Host "            Author  : Alexandre Delaunay                                "
Write-Host "            E-Mail  : a.delaunay97@gmail.com                            "
Write-Host "            LinkedIn: https://www.linkedin.com/in/alexandre-delaunay-/  "
Write-Host "            Blog    : In progress                                       "
Write-Host "            Github  : https://github.com/Alexandre-Delaunay             "
Write-Host "            Created : 23-10-2020                                        "
Write-Host "            File    : AutomatedEnvironnement.ps1                        "
Write-Host "            Version : 1.0.0                                             "
Write-Host "                                                                        "
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%@%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%%@@&%%%%%%%%%%%%%%%@@@%%%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@*.         .%@@&%%%%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%(%%%%%&&/          .(@%%%%%#%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%*   ..     .(%%%%%%%%%(      ,    #%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%        .%%%%%%%%%%%%%%%%%%%         %%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%/     */#(*,*%%%%%%%%%%%,,*##/,     #%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%/      %@%%%%%%(,#%%%%%/,%%%%#%%@%      %%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%       %**/@@%**(%,/%%%**%/**@@@**/%      ,%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%.      %/*@@@@@@**%%,(%*,%#*%@@@@@&*#/      (%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%       %%**@@@@/*/%%%%/%%%%**%@@@@*/%#       %%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%#%,    (%%%%((%%%%%*,,,,,/%%%%#(#%%%%.    #%#%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%,     *,,,,,,,*#%%%#(%%%%(,,,,,,,,,     #%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%      *%%%%%%%%#*%@@@/*%%%%%%%%%.      %%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%       /%%%%%%/*@@@@@*(%%%%%%.       %%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%. %      ,%%%%%****/%%%%%      .* *%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%#                       %%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%%%%,               /%%%%%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*     (%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
Write-Host "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

#Admin shell verification
#Récupération de l'ID utilisateur courant
$myWindowsID=[System.Security.Principal.WindowsIdentity]::GetCurrent()
$myWindowsPrincipal=new-object System.Security.Principal.WindowsPrincipal($myWindowsID)

#Récupération du role admin
$adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator

#Vérifie le role administrateur
if (-Not $myWindowsPrincipal.IsInRole($adminRole))
{
    Write-Host "Run this shell as administrator"
    Return
}

#Chocolatey Installation
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Vim
choco install vim -y --params "'/NoDesktopShortcuts'"

#Install Ditto
choco install ditto --pre -y

#Install Git
choco install git.install -y

#Install Windows Terminal
choco install microsoft-windows-terminal --pre -y

#Install Notable
choco install notable -y

#Install Wireshark
choco install wireshark -y

#Install Nmap
choco install nmap -y

#Install Google Chrome
choco install googlechrome -y

#Install Opera GX
choco install opera-gx -y

#Install Azure Data Studio
choco install azure-data-studio -y

#Install Visual Studio Code
choco install vscode -y

#Install Visual Studio 2019
choco install visualstudio2019community -y

#Install Postman
choco install postman -y
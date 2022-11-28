#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Software
#choco install visualstudiocode -y
choco install git -y
#choco install nodejs-lts  -y

#Copy sonar certificates

function Disable-IEESC {
$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0
Stop-Process -Name Explorer
Write-Host "IE Enhanced Security Configuration (ESC) has been disabled." -ForegroundColor Green
}
Disable-IEESC

cd c://; mkdir automation; cd automation; git clone https://username:password@github.com/amanchourasia/automation.git; Copy-Item -Path C:\automation\automation-vm\Certs -Destination C:\
# cd c://
# mkdir automation
# cd automation
# git clone https://rimilia@dev.azure.com/rimilia/Alloc8/_git/automation-vm
# Copy-Item -Path C:\automation\automation-vm\Certs -Destination C:\
# Remove-Item -path c:\automation -Recurse -Force -Confirm:$false

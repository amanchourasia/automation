#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Software
#choco install visualstudiocode -y
choco install git -y
#choco install nodejs-lts  -y

#Copy sonar certificates


cd c://; mkdir automation; cd automation; git clone https://rimilia@dev.azure.com/rimilia/Alloc8/_git/automation-vm; Copy-Item -Path C:\automation\automation-vm\Certs -Destination C:\
# cd c://
# mkdir automation
# cd automation
# git clone https://rimilia@dev.azure.com/rimilia/Alloc8/_git/automation-vm
# Copy-Item -Path C:\automation\automation-vm\Certs -Destination C:\
# Remove-Item -path c:\automation -Recurse -Force -Confirm:$false

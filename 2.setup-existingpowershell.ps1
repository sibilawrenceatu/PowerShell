# To download PowerShell 7 installation script
#To set the download location as C:\powershell
Set-Location C:\PowerShell
#setting the URL 
$URI = "https://aka.ms/install-powershell.ps1"
#The Invoke-RestMethod cmdlet supports all HTTP methods to download
Invoke-RestMethod -Uri $URI |
Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1
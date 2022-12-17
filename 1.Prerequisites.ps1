Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -force
Get-ExecutionPolicy
Install-PackageProvider Nuget -force
Install-Module -name powershellget -force -AllowClobber
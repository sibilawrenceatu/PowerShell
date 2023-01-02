#to get the execution policy 
Get-ExecutionPolicy
#to set the execution policy as unrestricted using force 
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -force
#to get the execution policy after applying the unrestricted command
Get-ExecutionPolicy
#installing package provider Nuget
Install-PackageProvider Nuget -force
#Installing the module powershellget
Install-Module -name powershellget -force -AllowClobber
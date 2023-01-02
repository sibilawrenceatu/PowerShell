#getting the help file
Get-Help -Name "C:\powershell\Install-PowerShell.ps1"
#parameter block is initialized
$parameters = @{
UseMSI = $true
Quiet = $true
AddExplorerContextMenu = $true
EnablePSRemoting = $true
}
#executing the script using the parameters
C:\powershell\Install-Powershell.ps1 @parameters

Get-Help -Name "C:\powershell\Install-PowerShell.ps1"
$parameters = @{
UseMSI = $true
Quiet = $true
AddExplorerContextMenu = $true
EnablePSRemoting = $true
}
C:\powershell\Install-Powershell.ps1 @parameters
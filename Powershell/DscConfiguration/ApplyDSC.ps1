Start-DscConfiguration -Path C:\PowerShell\WT4\DscConfiguration -Verbose -Wait -Force

Get-Content C:\Temp\HelloWorld.txt
Get-DscConfiguration
Get-DscResource

$Session = New-CimSession -ComputerName "localhost"
Remove-DscConfigurationDocument -Stage Current -CimSession $Session
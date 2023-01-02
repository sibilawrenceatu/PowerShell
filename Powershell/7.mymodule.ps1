#Code for creating a module named helloworld
$MymodulePath = "c:\users\$env:USERNAME\documents\powershell\modules\helloworld"
$mymodule = @"
#helloworld.psm1
function get-helloworld {
    "hello world"
}
"@
New-Item -Path $MymodulePath -ItemType Directory -Force | Out-Null 
$mymodule | Out-File -FilePath $MymodulePath\helloworld.psm1
Get-Module -Name helloworld -ListAvailable
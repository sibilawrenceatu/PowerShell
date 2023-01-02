#Initializing parameter I as 0
$I = 0
$env:PSModulePath -split ':' | foreach-object {"[{0:NO}] {1}" -f $I++, $_}
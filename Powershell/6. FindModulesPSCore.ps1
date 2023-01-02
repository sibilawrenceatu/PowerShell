#code for finding the core modules
$PGSM = Find-Module -Name * -Tag 'psedition_core'
"There are {0:N0} Modules in the PS Gallery" -f $PGSM.Count
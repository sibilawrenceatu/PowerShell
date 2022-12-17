#Desired state configuration for making sure RSAT and DNS server features installation and a file is always available at a desired path
#Beginning block of DSC consifuration
Configuration DscConfiguration
{
#setting the parameters
    param
    (
#Computer name set as localhost
        [string[]]$ComputerName='localhost'
    )
#Importing the DSC module
    Import-DscResource -ModuleName PsDesiredStateConfiguration
#setting the computer name
    Node $ComputerName
    {
#Initializing instances
        WindowsFeature MyFeatureInstance
        {
#Code block for ensuring the RSAT package present
            Ensure = 'Present'
            Name = 'RSAT'
        }
#Code block for ensuring the DNS server role present
        WindowsFeature My2ndFeatureInstance
        {
            Ensure = 'Present'
            Name = 'DNS'
        }
#Code block for file present at C:\temp
        File HelloWorld {
            DestinationPath = "C:\Temp\HelloWorld.txt"
            Ensure = "Present"
            Contents   = "Hello World from DSC!"
        }
    }
}
#Calling the function DscConfiguration
DscConfiguration
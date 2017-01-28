#from https://www.powershellgallery.com/packages/LabBuilder/0.7.9.953/Content/dsclibrary%5CMEMBER_ADFS.DSC.ps1
#.Title 
#    MEMBER_ADFS 
#.Desription 
 #   Builds an ADFS Server using WID. 
#.Parameters: 

Configuration MEMBER_ADFS
{
    WindowsFeature WIDInstall
    {
        Ensure = "Present"
        Name = "Windows-Internal-Database"
    }

    WindowsFeature ADFSInstall
    {
        Ensure = "Present"
        Name = "ADFS-Federation"
        DependsOn = "[WindowsFeature]WIDInstall"
    }

    # Enable ADFS FireWall rules
    xFirewall ADFSFirewall1
    {
        Name = "ADFSSrv-HTTP-In-TCP"
        Ensure = 'Present'
        Enabled = 'True'
    }

    xFirewall ADFSFirewall2
    {
        Name = "ADFSSrv-HTTPS-In-TCP"
        Ensure = 'Present'
        Enabled = 'True'
    }

    xFirewall ADFSFirewall3
    {
        Name = "ADFSSrv-SmartcardAuthN-HTTPS-In-TCP"
        Ensure = 'Present'
        Enabled = 'True'
    }
}



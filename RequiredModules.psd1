@{
    # Set up a mini virtual environment...
    PSDependOptions      = @{
        AddToPath  = $True
        Target     = 'output\RequiredModules'
        Parameters = @{
        }
    }

    invokeBuild          = 'latest'
    PSScriptAnalyzer     = 'latest'
    pester               = 'latest'
    ModuleBuilder        = 'latest'
    buildhelpers         = 'latest'
    psdeploy             = 'latest'

    #required for DSC authoring
    xDscResourceDesigner = 'latest'

    # Git Clone Used to test DSC Resources (This needs to be ported to a module)
    'PowerShell/DscResource.Tests' = @{
        Target = '.'
        parameters = @{
            TargetType     = 'exact'
            ExtractProject = $false
        }
        Version = 'master'
    }
}
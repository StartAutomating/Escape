<#
.SYNOPSIS
    README.md.ps1
.DESCRIPTION
    README.md.ps1 makes README.md

    This is a simple and helpful scripting convention for writing READMEs.

    `./README.md.ps1 > ./README.md`

    Feel free to copy and paste this code.
    
    Please document your parameters, and add NOTES.
.NOTES        
    This README.md.ps1 is used to generate help for a module.

    It:

    * Outputs the name and description
    * Provides installation instructions
    * Lists commands
    * Lists examples
    * Lists Extended Types
.EXAMPLE
    ./README.md.ps1 > ./README.md
.EXAMPLE
    Get-Help ./README.md.ps1
#>
param(
# The name of the module     
[string]$ModuleName = 'Escape',

# The domains that serve git repositories.
# If the project uri links to this domain, 
# installation instructions will show how to import the module locally.
[string[]]
$GitDomains = @(
    'github.com', 'tangled.org', 'tangled.sh', 'codeberg.org'
),

# A list of types the module exposes
[Alias('ModuleTypeNames','ModuleTypes')]
[string[]]
$ModuleTypeName = @('Escape.Sequence'),

# The name of the root directory containing types.
[string]
$TypeRoot = 'Types'
)

Push-Location $PSScriptRoot

$module = Import-Module "./$ModuleName.psd1" -PassThru

"# $module"

if ($module.Copyright) {
    "> © $($module.Copyright)"
}

"## $($module.Description)"

$module.PrivateData.PSData.PSIntro

@"

## Installing and Importing

You can install this module from the PowerShell gallery

~~~PowerShell
Install-Module $($ModuleName) -Scope CurrentUser -Force
~~~

Once installed, you can import the module with:

~~~PowerShell
Import-Module $ModuleName -PassThru
~~~

"@

$projectUri = $module.PrivateData.PSData.ProjectURI -as [uri]

if ($projectUri.DnsSafeHost -in $GitDomains) {
@"

You can also clone the repo and import the module locally:

~~~PowerShell
git clone $projectUri
cd ./$ModuleName
Import-Module ./ -PassThru
~~~

"@
}


$exportedFunctions = $module.ExportedFunctions

if ($exportedFunctions) {

    "## Functions"

    "$($ModuleName) has $($exportedFunctions.Count) function$(
        if ($exportedFunctions.Count -gt 1) { "s"}
    )"

    foreach ($export in $exportedFunctions.Keys | Sort-Object) {
        $help = Get-Help $export
        if ($help -is [string]) {
            "* $export"
        } else {
            "### $($export)"

            "#### $($help.SYNOPSIS)"

            "$($help.Description.text -join [Environment]::NewLine)"

            "##### Examples"

            $exampleNumber = 0
            foreach ($example in $help.examples.example) {
                $markdownLines = @()
                $exampleNumber++
                $nonCommentLine = $false
                "###### Example $exampleNumber"
                
                # Combine the code and remarks
                $exampleLines = 
                    @(
                        $example.Code
                        foreach ($remark in $example.Remarks.text) {
                            if (-not $remark) { continue }
                            $remark
                        }
                    ) -join ([Environment]::NewLine) -split '(?>\r\n|\n)' # and split into lines

                # Go thru each line in the example as part of a loop
                $codeBlock = @(foreach ($exampleLine in $exampleLines) {
                    # Any comments until the first uncommentedLine are markdown
                    if ($exampleLine -match '^\#' -and -not $nonCommentLine) {
                        $markdownLines += $exampleLine -replace '^\#\s{0,1}'
                    } else {
                        $nonCommentLine = $true
                        $exampleLine
                    }
                }) -join [Environment]::NewLine

                $markdownLines
                "~~~PowerShell"
                $CodeBlock
                "~~~"                
            }

            $relatedUris = foreach ($link in $help.relatedLinks.navigationLink) {
                if ($link.uri) {
                    $link.uri
                }
            }
            if ($relatedUris) {
                "#### Links"
                foreach ($related in $relatedUris) {
                    "* [$related]($related)"
                }
            }
        }
    }
}

if ($ModuleTypeName) {
    $typeData = Get-TypeData -TypeName $ModuleTypeName

    if ($typeData) {
        "## Types"
    }

    foreach ($typeInfo in $typeData) {
        "### $($typeInfo.TypeName)"

        "#### Members"

        "|Name|MemberType|"
        "|-|-|"

        foreach ($memberName in $typeInfo.Members.Keys) {
            "|$(
                $memberPath = "./Types/$($typeInfo.TypeName)/$memberName.ps1"
                if (Test-Path $memberPath) {
                    "[$memberName]($($memberPath -replace '^\./'))"
                } else {
                    $memberName
                }
            )|$(
                $typeInfo.Members[$memberName].GetType().Name -replace 'Data$'
            )|"
        }        
    }
}

Pop-Location
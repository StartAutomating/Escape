<#
.SYNOPSIS
    Escapes xml
.DESCRIPTION
    Escapes content into valid xml content.
.EXAMPLE
    ./xml.ps1 "<not a tag>"
#>
param(
[string]
$Content = "$($this.Input)"
)

[Web.HttpUtility]::HtmlEncode($Content)

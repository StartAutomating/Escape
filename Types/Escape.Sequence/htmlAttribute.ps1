<#
.SYNOPSIS
    Escapes html attributes
.DESCRIPTION
    Escapes content for encoding into an html attribute.
.EXAMPLE
    ./html.escape.ps1 "<escape this tag>"
#>
param(
[string]
$Content = "$($this.Content)"
)

[Web.HttpUtility]::HtmlAttributeEncode($Content)

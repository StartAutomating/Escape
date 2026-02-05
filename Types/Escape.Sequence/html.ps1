<#
.SYNOPSIS

.DESCRIPTION

.EXAMPLE
    ./html.escape.ps1 "<escape this tag>"
#>
param(
[string]
$Content = "$($this.Input)"
)

[Web.HttpUtility]::HtmlEncode($Content)

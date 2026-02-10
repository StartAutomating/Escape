<#
.SYNOPSIS
    Set tab background color escape sequence
.DESCRIPTION
    Escape sequence to set the tab background color
#>
param(
[ValidatePattern('^\#[0-9a-f]{6}')]
[string]
$TabColor = "$($this.Input)"
)

if (-not $tabColor) { return }

$r, $g, $b = 
    $TabColor.Substring(1,2),
    $TabColor.Substring(3,2),
    $TabColor.Substring(5,2)

$e = [char]27
"$e]4;264;rgb:$r/$g/$b$e\" 
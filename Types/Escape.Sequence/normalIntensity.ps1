<#
.SYNOPSIS
    Normal Intensity Escape Sequence
.DESCRIPTION
    Escape Sequence to use normal font intensity
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
[switch]
$Rapid
)

$e = [char]27
"$e[22m"



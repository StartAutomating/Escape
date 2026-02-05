<#
.SYNOPSIS
    Underline off Escape Sequence
.DESCRIPTION
    Escape Sequence to stop underlining
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
[switch]
$Rapid
)

$e = [char]27
"$e[24m"



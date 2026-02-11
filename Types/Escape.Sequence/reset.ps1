<#
.SYNOPSIS
    Reset Escape Sequence
.DESCRIPTION
    Escape Sequence for reset
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
)

$e = [char]27
"$e[0m"


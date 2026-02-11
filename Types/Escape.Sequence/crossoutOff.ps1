<#
.SYNOPSIS
    Crossout Off Escape Sequence
.DESCRIPTION
    Escape Sequence for stopping cross out text
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27
"$e[29m"


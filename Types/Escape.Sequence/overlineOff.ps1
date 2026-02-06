<#
.SYNOPSIS
    Overline Off Escape Sequence
.DESCRIPTION
    Escape Sequence for overline off
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27
"$e[55m"

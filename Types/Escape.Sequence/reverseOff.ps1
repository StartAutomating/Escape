<#
.SYNOPSIS
    Reverse Off Escape Sequence
.DESCRIPTION
    Escape Sequence for stopping color reversal (inversion) in text
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
)

$e = [char]27
"$e[27m"


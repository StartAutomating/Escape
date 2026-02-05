<#
.SYNOPSIS
    Conceal Escape Sequence
.DESCRIPTION
    Escape Sequence for concealed content
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
)

$e = [char]27
"$e[8m"



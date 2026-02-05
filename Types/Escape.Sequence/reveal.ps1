<#
.SYNOPSIS
    Reveal Escape Sequence
.DESCRIPTION
    Escape Sequence for to disable concealed content
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
)

$e = [char]27
"$e[28m"



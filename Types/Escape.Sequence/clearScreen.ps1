<#
.SYNOPSIS
    Clear Screen Escape Sequence
.DESCRIPTION
    Escape Sequence for clear screen
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES

#>
param()

$e = [char]27
"$e[2J"

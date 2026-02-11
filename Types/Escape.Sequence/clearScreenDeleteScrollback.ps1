<#
.SYNOPSIS
    Clear Screen and Delete Scrollback Escape Sequence
.DESCRIPTION
    Escape Sequence for clear screen and delete scrollback
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES

#>
param()

$e = [char]27
"$e[3J"

<#
.SYNOPSIS
    Clear to Start of Line Escape Sequence
.DESCRIPTION
    Escape Sequence for clear to start of line
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES

#>
param()

$e = [char]27
"$e[0K"

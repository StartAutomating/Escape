<#
.SYNOPSIS
    Clear to End of Line Escape Sequence
.DESCRIPTION
    Escape Sequence for clear to end of line
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES

#>
param()

$e = [char]27
"$e[1K"

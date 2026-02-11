<#
.SYNOPSIS
    Background Bright Red Escape Sequence
.DESCRIPTION
    Escape Sequence to set Background to Bright Red
.NOTES
    This color is xterm color number 9
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
$e = [char]27
"$e[101m"

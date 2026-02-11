<#
.SYNOPSIS
    Background Bright Yellow Escape Sequence
.DESCRIPTION
    Escape Sequence to set Background to Bright Yellow
.NOTES
    This color is xterm color number 11
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
$e = [char]27
"$e[103m"

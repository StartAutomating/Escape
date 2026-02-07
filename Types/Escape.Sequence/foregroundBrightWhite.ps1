<#
.SYNOPSIS
    Foreground Bright White Escape Sequence
.DESCRIPTION
    Escape Sequence to set Foreground to Bright White
.NOTES
    This color is xterm color number 15
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
$e = [char]27
"$e[97m"

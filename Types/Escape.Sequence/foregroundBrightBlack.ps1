<#
.SYNOPSIS
    Foreground Bright Black Escape Sequence
.DESCRIPTION
    Escape Sequence to set Foreground to Bright Black
.NOTES
    This color is xterm color number 8
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
$e = [char]27
"$e[90m"

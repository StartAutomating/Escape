<#
.SYNOPSIS
    Italic Off Escape Sequence
.DESCRIPTION
    Escape Sequence for italics off
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27
"$e[23m"

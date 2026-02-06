<#
.SYNOPSIS
    Encircled Escape Sequence
.DESCRIPTION
    Escape Sequence for encircled
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Not supported by most terminals.  Used for Emoji variation selection in mintty.
#>
param()

$e = [char]27
"$e[52m"

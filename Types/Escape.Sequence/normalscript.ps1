<#
.SYNOPSIS
    Normal Script Escape Sequence
.DESCRIPTION
    Escape Sequence for neither superscript not subscript
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Implemented in mintty
#>
param()

$e = [char]27
"$e[75m"

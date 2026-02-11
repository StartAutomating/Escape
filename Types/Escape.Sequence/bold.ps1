<#
.SYNOPSIS
    Bold Escape Sequence
.DESCRIPTION
    Escape Sequence for Bold (high intensity) text
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27
"$e[1m"

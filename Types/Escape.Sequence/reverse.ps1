<#
.SYNOPSIS
    Invert Escape Sequence
.DESCRIPTION
    Escape Sequence for invert
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
)

$e = [char]27
"$e[7m"


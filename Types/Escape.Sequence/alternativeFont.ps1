<#
.SYNOPSIS
    Alternate Font Escape Sequence
.DESCRIPTION
    Escape Sequence for alternate font selection
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    This functionality is not supported in all terminals.
#>
param(
# The alternative font number.
[ValidateRange(1,10)]
[int]$FontNumber = "$($this.input)"
)

$e = [char]27
"$e[$(10 + $fontNumber)m"


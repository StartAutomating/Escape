<#
.SYNOPSIS
    Set Cursor Position
.DESCRIPTION
    Escape Sequence for Set Cursor Position
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
# The row.
[int]$Row = 1,
# The column.
[int]$Column = 1
)

$e = [char]27
"$e[${Row};${column}H"
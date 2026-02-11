<#
.SYNOPSIS
    Cursor Up Escape Sequence
.DESCRIPTION
    Escape Sequence to move the cursor up
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
# The number of cells to move.
[int]$CellCount = $(
    if ("$($this.input)" -as [int]) {
        "$($this.input)"
    } else {
        1
    }
)    
)

$e = [char]27
if ($CellCount -gt 0) {
    "$e[${CellCount}A"
} else {
    "$e[${CellCount}B"
}


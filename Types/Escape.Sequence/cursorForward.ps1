<#
.SYNOPSIS
    Cursor Forward Escape Sequence
.DESCRIPTION
    Escape Sequence to move the cursor forward
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
if ($CellCount -ge 0) {
    "$e[${CellCount}C"
} else {
    "$e[${CellCount}D"
}

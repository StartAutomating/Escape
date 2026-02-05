<#
.SYNOPSIS
    Cursor Backward Escape Sequence
.DESCRIPTION
    Escape Sequence to move the cursor backward
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
# The number of cells to move
[int]$CellCount = $(
    if ("$($this.input)" -as [int]) {
        "$($this.input)"
    } else {
        1
    }
)    
)

$e = [char]27
if ($CellCount -lt 0) {
    "$e[${CellCount}C"
} else {
    "$e[${CellCount}D"
}



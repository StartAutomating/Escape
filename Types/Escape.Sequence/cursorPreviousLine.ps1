<#
.SYNOPSIS
    Cursor Next Line Escape Sequence
.DESCRIPTION
    Escape Sequence to move the cursor to the next line
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
# The number of cells to move.
[int]$LineCount = $(
    if ("$($this.input)" -as [int]) {
        "$($this.input)"
    } else {
        1
    }
)    
)


$e = [char]27
if ($LineCount -lt 0) {
    "$e[${LineCount}E"
} else {
    "$e[${LineCount}F"
}


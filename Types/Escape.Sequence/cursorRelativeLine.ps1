<#
.SYNOPSIS
    Cursor Relative Line Escape Sequence
.DESCRIPTION
    Escape Sequence to move the cursor to the relative line
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Not supported in all terminals
#>
param(
# The number of lines to move.
[int]$LineCount = $(
    if ("$($this.input)" -as [int]) {
        "$($this.input)"
    } else {
        1
    }
)    
)


$e = [char]27
"$e[$($LineCount)e"


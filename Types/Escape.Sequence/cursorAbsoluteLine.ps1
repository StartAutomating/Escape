<#
.SYNOPSIS
    Cursor Absolute Line Escape Sequence
.DESCRIPTION
    Escape Sequence to move the cursor to the absolute line
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
# The line to move to.
[int]$LineCount = $(
    if ("$($this.input)" -as [int]) {
        "$($this.input)"
    } else {
        1
    }
)    
)


$e = [char]27
"$e[$($LineCount)d"


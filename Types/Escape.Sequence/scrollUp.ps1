<#
.SYNOPSIS
    Scroll Up Escape Sequence
.DESCRIPTION
    Escape Sequence for Scroll Up
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
[int]$PageCount = $(
    if ("$($this.input)" -as [int]) {
        "$($this.input)"
    } else {
        1
    }
)
)
$e = [char]27
if ($PageCount -ge 0) {    
    "$e[${PageCount}S"
} else {
    "$e[${PageCount}T"
}


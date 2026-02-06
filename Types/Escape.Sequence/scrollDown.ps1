<#
.SYNOPSIS
    Scroll Down Escape Sequence
.DESCRIPTION
    Escape Sequence for Scroll Down
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
if ($pageCount -ge 0) {
    "$e[${PageCount}T"
} else {
    "$e[${PageCount}S"
}


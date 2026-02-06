<#
.SYNOPSIS
    Hide Cursor Escape Sequence
.DESCRIPTION
    Escape Sequence to hide the cursor
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27

"$e[25l"



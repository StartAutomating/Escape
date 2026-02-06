<#
.SYNOPSIS
    Save Cursor Escape Sequence
.DESCRIPTION
    Escape Sequence to save the cursor position
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27

"$e[s"



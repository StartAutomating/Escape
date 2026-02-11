<#
.SYNOPSIS
    Show Cursor Escape Sequence
.DESCRIPTION
    Escape Sequence to show the cursor
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27

"$e[25h"



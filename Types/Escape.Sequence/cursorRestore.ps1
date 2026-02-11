<#
.SYNOPSIS
    Restore Cursor Escape Sequence
.DESCRIPTION
    Escape Sequence to restore the cursor position
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param()

$e = [char]27

"$e[u"



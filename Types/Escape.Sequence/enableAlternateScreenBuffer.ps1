<#
.SYNOPSIS
    Enable Alternate Screen BufferEscape Sequence
.DESCRIPTION
    Escape Sequence for Enable Alternate Screen Buffer
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Enable Alternate Screen Buffer is supported in xterm.
#>
param()

$e = [char]27
"$e[1049h"

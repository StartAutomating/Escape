<#
.SYNOPSIS
    Disable Alternate Screen BufferEscape Sequence
.DESCRIPTION
    Escape Sequence for Disable Alternate Screen Buffer
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Disable Alternate Screen Buffer is supported in xterm.
#>
param()

$e = [char]27
"$e[1049l"

<#
.SYNOPSIS
    Clear to End of Screen Escape Sequence
.DESCRIPTION
    Escape Sequence for clear to end of stream
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES

#>
param()

$e = [char]27
"$e[1J"

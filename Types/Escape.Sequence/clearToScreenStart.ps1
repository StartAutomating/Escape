<#
.SYNOPSIS
    Clear to Start of Screen Escape Sequence
.DESCRIPTION
    Escape Sequence for clear to start of the stream
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES

#>
param()

$e = [char]27
"$e[0J"

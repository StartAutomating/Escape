<#
.SYNOPSIS
    Line width double
.DESCRIPTION
    Escape sequence for double line width.

    This will draw the line using double character width.
.NOTES
    This is not supported in all terminals.
.EXAMPLE
    "$(escape lineWidthNormal)Hello World"
    "$(escape lineWidthDouble)Hello World"
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code#nF_Escape_sequences
#>
param()

"$([char]27)#6"

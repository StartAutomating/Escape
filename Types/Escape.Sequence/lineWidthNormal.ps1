<#
.SYNOPSIS
    Line width normal
.DESCRIPTION
    Escape sequence for normal line width.

    This will draw the line using the normal character width.
.NOTES
    This is not supported in all terminals.
.EXAMPLE
    "$(escape lineWidthNormal)Hello World"
    "$(escape lineWidthDouble)Hello World"
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code#nF_Escape_sequences
#>
param()

"$([char]27)#5"

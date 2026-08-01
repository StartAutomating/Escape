<#
.SYNOPSIS
    Double height letter top
.DESCRIPTION
    Escape sequence for double height letter top.

    This will draw the top half of characters at double height.
.NOTES
    This is not supported in all terminals.
.EXAMPLE
    @(
        "$(escape doubleHeightLetterTop)Hello World"
        "$(escape doubleHeightLetterBottom)Hello World"
    ) -join [Environment]::Newline
#>
param()

"$([char]27)#3"
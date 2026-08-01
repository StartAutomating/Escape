<#
.SYNOPSIS
    Double height letter bottom
.DESCRIPTION
    Escape sequence for double height letter bottom.

    This will draw the bottom half of characters at double height.
.NOTES
    This is not supported in all terminals.
.EXAMPLE
    @(
        "$(escape doubleHeightLetterTop)Hello World"
        "$(escape doubleHeightLetterBottom)Hello World"
    ) -join [Environment]::Newline
#>
param()

"$([char]27)#4"

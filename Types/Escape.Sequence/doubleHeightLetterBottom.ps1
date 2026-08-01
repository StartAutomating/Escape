<#
.SYNOPSIS
    Double height letter bottom
.DESCRIPTION
    Escape sequence for double height letter bottom.

    This will draw the bottom half of characters at double height.
.NOTES
    This is not supported in all terminals.
.EXAMPLE
    escape doubleHeightLetterTop "Hello world"
    escape doubleHeightLetterBottom "Hello world"    
#>
param()

$e = [char]27
"$e#4"

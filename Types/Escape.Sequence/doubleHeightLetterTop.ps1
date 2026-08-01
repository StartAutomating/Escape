<#
.SYNOPSIS
    Double height letter top
.DESCRIPTION
    Escape sequence for double height letter top.

    This will draw the top half of characters at double height.
.NOTES
    This is not supported in all terminals.
#>
param()

$e = [char]27
"$e#3"

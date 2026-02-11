<#
.SYNOPSIS
    Cursor Shape Bar Escape Sequence
.DESCRIPTION
    Escape Sequence for Bar Cursor Shape
.NOTES
    This setting is sometimes ignored.
    
    Many terminals do not enable a blinking cursor.
.LINK
    https://learn.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences
#>
param()
$e = [char]27
"$e[6 q"


<#
.SYNOPSIS
    Cursor Blink Off Escape Sequence
.DESCRIPTION
    Escape Sequence for Cursor Blink Off
.NOTES
    This setting is often ignored.
    
    Many terminals do not enable a blinking cursor.

    Many others use to various cursor shapes to enable blinking.
.LINK
    https://learn.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences
#>
param()
$e = [char]27
"$e[?12h"


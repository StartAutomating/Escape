<#
.SYNOPSIS
    Next Line Escape Sequence
.DESCRIPTION
    Escape Sequence for next line.  
    
    Moves to the start of the next line.
    
    Equivalent to a newline and a carriage return.
.LINK
    https://en.wikipedia.org/wiki/C0_and_C1_control_codes
#>
param()

$e = [char]27
"${e}E"

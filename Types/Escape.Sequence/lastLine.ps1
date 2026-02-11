<#
.SYNOPSIS
    Last Line Escape Sequence
.DESCRIPTION
    Escape Sequence for last line.  
    
    Moves to the start of the previous line.
.LINK
    https://en.wikipedia.org/wiki/C0_and_C1_control_codes
.NOTES

#>
param()

$e = [char]27
"${e}M"

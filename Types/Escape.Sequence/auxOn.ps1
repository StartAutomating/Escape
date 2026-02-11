<#
.SYNOPSIS
    Aux On Escape Sequence
.DESCRIPTION
    Escape Sequence for auxillary output on 
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    This functionality is not supported in most terminals.

    It was often used for printing over a serial port.
#>
param()

$e = [char]27
"$e[5i"


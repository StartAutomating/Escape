<#
.SYNOPSIS
    Enable Reporting Focus Escape Sequence
.DESCRIPTION
    Escape Sequence for Enable Reporting Focus
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Enable reporting focus. Reports whenever terminal emulator enters or exits focus as ESC [I and ESC [O, respectively.
#>
param()

$e = [char]27
"$e[1004h"

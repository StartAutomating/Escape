<#
.SYNOPSIS
    Blink Escape Sequence
.DESCRIPTION
    Escape Sequence for blink
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
.NOTES
    Will not work in many terminals.  May be distracting when it does.
#>
param(
[switch]
$Rapid
)

$e = [char]27
if ($rapid) {
    "$e[6m"
} else {
    "$e[5m"
}


<#
.SYNOPSIS
    Exit Line Draw Mode Escape Sequence
.DESCRIPTION
    Escape Sequence to Exit Line Draw Mode
.NOTES
    If Line Drawing mode is supported by a terminal, 
    it will switch some regular characters into line and box drawing characters.

    This will be quite hard for people to read, and should be used sparingly.
#>
$e = [char]27
"$e("

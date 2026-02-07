<#
.SYNOPSIS
    Screen Alignment Pattern Escape sequence
.DESCRIPTION
    Escape Sequence for the Screen Alignment Pattern.

    This is normally a screen full of "E" characters.
.NOTES
    Implemented more places than you would expect.

    Normally prints a screen full of "E" characters, 
    but some hosts (like VSCode) may temporarily show alignment gridlines in other areas of the UI.
.LINK
    https://web.mit.edu/dosathena/doc/www/ek-vt520-rm.pdf
#>
param()
$e = [char]27
"$e#8"
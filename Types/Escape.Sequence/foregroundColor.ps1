<#
.SYNOPSIS
    Foreground Color Escape Sequence
.DESCRIPTION
    Escape Sequence to set Foreground Color  
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
[PSObject]
$Color = $(
    if ($this.Input -as [byte]) {
        $this.Input -as [byte]
    } elseif ($this.Input -match '^#[a-f0-9]{6}$') {
        $this.Input -as [byte]
    } else {
        15
    }
)
)

$e = [char]27
if ($color -as [byte]) {
    "$e[38;5;${color}m"
} elseif (
    $color -match '^#[a-f0-9]{6}$' -or
    $color -match '^random$'
) {
    if ($matches[0] -eq 'random') {
        $color = ("#{0:x6}" -f (Get-Random -Maximum 0xffffff))
    }  
    $r, $g, $b = 
        $Color.Substring(1,2),
        $Color.Substring(3,2),
        $Color.Substring(5,2)

    "$e[38;2;$(
        @(
            "0x$r" -as [byte]
            "0x$g" -as [byte]
            "0x$b" -as [byte]
        ) -join ';'            
    )m"
}



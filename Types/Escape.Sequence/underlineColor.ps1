<#
.SYNOPSIS
    Underline Color Escape Sequence
.DESCRIPTION
    Escape Sequence to set Underline Color  
.LINK
    https://en.wikipedia.org/wiki/ANSI_escape_code
#>
param(
[PSObject]
$Color = $(
    if ($null -ne $this.Input -as [byte]) {
        $this.Input -as [byte]
    } elseif ($this.Input -and 
        $this.Input -match '^#[a-f0-9]{6}$') {
        $this.Input
    } else {
        15
    }
)
)

$e = [char]27
if ($null -ne $color -as [byte]) {
    "$e[58;5;${color}m"
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

    "$e[58;2;$(
        @(
            "0x$r" -as [byte]
            "0x$g" -as [byte]
            "0x$b" -as [byte]
        ) -join ';'            
    )m"
}



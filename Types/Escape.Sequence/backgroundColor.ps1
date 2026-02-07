<#
.SYNOPSIS
    Background Color Escape Sequence
.DESCRIPTION
    Escape Sequence to set Background Color  
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
    "$e[48;5;${color}m"
} elseif ($color -match '^#[a-f0-9]{6}$') {    
    $r, $g, $b = 
        $Color.Substring(1,2),
        $Color.Substring(3,2),
        $Color.Substring(5,2)

    "$e[48;2;$(
        @(
            "0x$r" -as [byte]
            "0x$g" -as [byte]
            "0x$b" -as [byte]
        ) -join ';'            
    )m"
}



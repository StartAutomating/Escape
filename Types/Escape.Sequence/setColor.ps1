<#
.SYNOPSIS
    Set Color Escape Sequence
.DESCRIPTION
    Escape Sequence to Set Colors.

    This accepts a number and a color to change.
.NOTES
    Not all numbers are supported in all terminals.    

    * 0-7 are the normal intensity colors
    * 8-15 are the high intensity colors        
    * 16-231 default to a 6x6x6 color cube
    * 232-255 are a greyscale ramp, without black or white
    * Additional numbers may be used for any purpose perscribed by the terminal
#>
param(
# The number of the color to set
[int]
$Number = $(
    $num, $null = @($this.Input)
    if ($num) {
        $num 
    }
),

# The color to set.
[ValidatePattern('^\#[0-9a-f]{6}')]
[string]
$Color = $(
    $null, $color, $null = @($this.Input)
    $color
)
)

if (-not $color) { return }

$r, $g, $b = 
    $Color.Substring(1,2),
    $Color.Substring(3,2),
    $Color.Substring(5,2)

$e = [char]27
"$e]4;$Number;rgb:$r/$g/$b$e\" 
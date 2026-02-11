# Escape
> © 2026 Start-Automating
## Escape the pain of escape sequences

### Escape Sequences

Escape sequences are a nearly unavoiable part of technology.

We often need to escape strings into other formats
(like putting `<` or `>` inside of HTML).

We also often need to use more obscure escape sequences to adjust terminal settings.

Escape is a collection of escape sequences, and the way to escape having to remember them.

### Escape Architecture

Escape is a collection of scripts that make escape sequences.

It has a relatively simple architecture:

* Each script resides in `./Types/Escape.Sequence`.
* All scripts are compiled into ScriptMethods by [EZOut](https://github.com/StartAutomating/EZout).
* `Get-Escape` exposes all of these scripts with natural syntax
* `Get-Escape` is aliased to `escape` and `esc` for easier-to-read syntax

### Escape Contributions

While Escape has over a hundred sequences, it is nowhere near a _complete_ collection.

To help make it a better one, please consider [contributing](contributing.md)

## Installing and Importing

You can install this module from the PowerShell gallery

~~~PowerShell
Install-Module Escape -Scope CurrentUser -Force
~~~

Once installed, you can import the module with:

~~~PowerShell
Import-Module Escape -PassThru
~~~


You can also clone the repo and import the module locally:

~~~PowerShell
git clone https://github.com/StartAutomating/Escape
cd ./Escape
Import-Module ./ -PassThru
~~~

## Functions
Escape has 1 function
### Get-Escape
#### Get Escape Sequences
Get Escape
##### Examples
###### Example 1
Bolding text
~~~PowerShell
escape bold boldText reset
~~~
###### Example 2
Italic text
~~~PowerShell
escape italic italicText reset
~~~
###### Example 3
Bold and italic text
~~~PowerShell
escape bold italic boldAndItalic reset
~~~
###### Example 4
Crossed out text
~~~PowerShell
escape crossout "crossed out" reset
~~~
###### Example 5
Using standard foreground colors
~~~PowerShell
escape foregroundRed r foregroundGreen g foregroundBlue b reset
~~~
###### Example 6
Escape HTML content
~~~PowerShell
escape html "a > b"
~~~
###### Example 7
Escape html attributes
~~~PowerShell
escape htmlAttribute "'a' -gt 'b'"
~~~
###### Example 8
Escape XML content
~~~PowerShell
escape xml "a > b"
~~~
###### Example 9
Show primary console colors
~~~PowerShell
"$(
    escape underline overline
    foreach ($n in 0..15) {
        escape foregroundColor $n $n
    }
    escape reset
)"
~~~
###### Example 10
Display the 256 standard xterm colors        
~~~PowerShell
@(
    foreach ($n in 0..255) {
        "$(escape bold foregroundColor $n $n)"
    }
    escape reset
) -join "`t"
~~~
###### Example 11
Display the 256 standard xterm colors 
(using a prototype is faster than using natural syntax)
~~~PowerShell
$escape = [PSCustomObject]@{PSTypeName='Escape.Sequence'}
$escape.bold()        
@(
    foreach ($n in 0..255) {
        "$($escape.foregroundColor($n)) $n"
    }
    $escape.reset()
) -join "`t"
~~~
###### Example 12
RGB
~~~PowerShell
escape foregroundRed r foregroundGreen g foregroundBlue b reset
~~~
###### Example 13
RGB bold and italic
~~~PowerShell
escape bold italic foregroundRed r foregroundGreen g foregroundBlue b reset
~~~
###### Example 14
RGB bold italic underline overline
~~~PowerShell
escape underline overline bold italic foregroundRed r foregroundGreen g foregroundBlue b reset
~~~
###### Example 15
The Notorious RBG
~~~PowerShell
escape underline overline bold italic "The Notorious " foregroundRed R foregroundBlue B foregroundGreen G reset
~~~
###### Example 16
Terminal Rainbow
~~~PowerShell
escape @(
    "bold"
    "foregroundBrightRed", "r"
    "foregroundBrightYellow", "a"
    "foregroundYellow", "i"
    "foregroundGreen", "n"
    "foregroundBlue", "b"
    "foregroundBrightPurple", "o"
    "foregroundPurple", "w"
    "reset"        
)
~~~
###### Example 17
Terminal Reading Rainbow
~~~PowerShell
@(
    "Reading "
    "bold"
    "foregroundBrightRed", "R"
    "foregroundBrightYellow", "a"
    "foregroundYellow", "i"
    "foregroundGreen", "n"
    "foregroundBlue", "b"
    "foregroundBrightPurple", "o"
    "foregroundPurple", "w"        
    "reset"
) | escape
~~~
###### Example 18
Escape Konami Code
(will not do anything in any terminal, just having fun)
~~~PowerShell
escape @(
    'cursorUp',1 ,'cursorUp',1
    'cursorDown', 1, 'cursorDown', 1
    'cursorBackward', 1, 'cursorForward',1
    'cursorBackward', 1, 'cursorForward',1
    'b'
    'a'
    'start'
)
~~~
## Types
### Escape.Sequence
#### Members
|Name|MemberType|
|-|-|
|[alternativeFont](Types/Escape.Sequence/alternativeFont.ps1)|ScriptMethod|
|[auxOff](Types/Escape.Sequence/auxOff.ps1)|ScriptMethod|
|[auxOn](Types/Escape.Sequence/auxOn.ps1)|ScriptMethod|
|[backgroundBlack](Types/Escape.Sequence/backgroundBlack.ps1)|ScriptMethod|
|[backgroundBlue](Types/Escape.Sequence/backgroundBlue.ps1)|ScriptMethod|
|[backgroundBrightBlack](Types/Escape.Sequence/backgroundBrightBlack.ps1)|ScriptMethod|
|[backgroundBrightBlue](Types/Escape.Sequence/backgroundBrightBlue.ps1)|ScriptMethod|
|[backgroundBrightCyan](Types/Escape.Sequence/backgroundBrightCyan.ps1)|ScriptMethod|
|[backgroundBrightGreen](Types/Escape.Sequence/backgroundBrightGreen.ps1)|ScriptMethod|
|[backgroundBrightPurple](Types/Escape.Sequence/backgroundBrightPurple.ps1)|ScriptMethod|
|[backgroundBrightRed](Types/Escape.Sequence/backgroundBrightRed.ps1)|ScriptMethod|
|[backgroundBrightWhite](Types/Escape.Sequence/backgroundBrightWhite.ps1)|ScriptMethod|
|[backgroundBrightYellow](Types/Escape.Sequence/backgroundBrightYellow.ps1)|ScriptMethod|
|[backgroundColor](Types/Escape.Sequence/backgroundColor.ps1)|ScriptMethod|
|[backgroundCyan](Types/Escape.Sequence/backgroundCyan.ps1)|ScriptMethod|
|[backgroundDefault](Types/Escape.Sequence/backgroundDefault.ps1)|ScriptMethod|
|[backgroundGreen](Types/Escape.Sequence/backgroundGreen.ps1)|ScriptMethod|
|[backgroundPurple](Types/Escape.Sequence/backgroundPurple.ps1)|ScriptMethod|
|[backgroundRed](Types/Escape.Sequence/backgroundRed.ps1)|ScriptMethod|
|[backgroundWhite](Types/Escape.Sequence/backgroundWhite.ps1)|ScriptMethod|
|[backgroundYellow](Types/Escape.Sequence/backgroundYellow.ps1)|ScriptMethod|
|[blink](Types/Escape.Sequence/blink.ps1)|ScriptMethod|
|[blinkOff](Types/Escape.Sequence/blinkOff.ps1)|ScriptMethod|
|[bold](Types/Escape.Sequence/bold.ps1)|ScriptMethod|
|[clearLine](Types/Escape.Sequence/clearLine.ps1)|ScriptMethod|
|[clearScreen](Types/Escape.Sequence/clearScreen.ps1)|ScriptMethod|
|[clearScreenDeleteScrollback](Types/Escape.Sequence/clearScreenDeleteScrollback.ps1)|ScriptMethod|
|[clearToLineEnd](Types/Escape.Sequence/clearToLineEnd.ps1)|ScriptMethod|
|[clearToLineStart](Types/Escape.Sequence/clearToLineStart.ps1)|ScriptMethod|
|[clearToScreenEnd](Types/Escape.Sequence/clearToScreenEnd.ps1)|ScriptMethod|
|[clearToScreenStart](Types/Escape.Sequence/clearToScreenStart.ps1)|ScriptMethod|
|[conceal](Types/Escape.Sequence/conceal.ps1)|ScriptMethod|
|[crossout](Types/Escape.Sequence/crossout.ps1)|ScriptMethod|
|[crossoutOff](Types/Escape.Sequence/crossoutOff.ps1)|ScriptMethod|
|[cursorAbsoluteLine](Types/Escape.Sequence/cursorAbsoluteLine.ps1)|ScriptMethod|
|[cursorBackward](Types/Escape.Sequence/cursorBackward.ps1)|ScriptMethod|
|[cursorBlinkOff](Types/Escape.Sequence/cursorBlinkOff.ps1)|ScriptMethod|
|[cursorBlinkOn](Types/Escape.Sequence/cursorBlinkOn.ps1)|ScriptMethod|
|[cursorDown](Types/Escape.Sequence/cursorDown.ps1)|ScriptMethod|
|[cursorForward](Types/Escape.Sequence/cursorForward.ps1)|ScriptMethod|
|[cursorHide](Types/Escape.Sequence/cursorHide.ps1)|ScriptMethod|
|[cursorNextLine](Types/Escape.Sequence/cursorNextLine.ps1)|ScriptMethod|
|[cursorPreviousLine](Types/Escape.Sequence/cursorPreviousLine.ps1)|ScriptMethod|
|[cursorRestore](Types/Escape.Sequence/cursorRestore.ps1)|ScriptMethod|
|[cursorSave](Types/Escape.Sequence/cursorSave.ps1)|ScriptMethod|
|[cursorShapeBar](Types/Escape.Sequence/cursorShapeBar.ps1)|ScriptMethod|
|[cursorShapeBlinkingBar](Types/Escape.Sequence/cursorShapeBlinkingBar.ps1)|ScriptMethod|
|[cursorShapeBlinkingBlock](Types/Escape.Sequence/cursorShapeBlinkingBlock.ps1)|ScriptMethod|
|[cursorShapeBlinkingUnderline](Types/Escape.Sequence/cursorShapeBlinkingUnderline.ps1)|ScriptMethod|
|[cursorShapeBlock](Types/Escape.Sequence/cursorShapeBlock.ps1)|ScriptMethod|
|[cursorShapeDefault](Types/Escape.Sequence/cursorShapeDefault.ps1)|ScriptMethod|
|[cursorShapeUnderline](Types/Escape.Sequence/cursorShapeUnderline.ps1)|ScriptMethod|
|[cursorShow](Types/Escape.Sequence/cursorShow.ps1)|ScriptMethod|
|[cursorUp](Types/Escape.Sequence/cursorUp.ps1)|ScriptMethod|
|[disableAlternateScreenBuffer](Types/Escape.Sequence/disableAlternateScreenBuffer.ps1)|ScriptMethod|
|[disableReportingFocus](Types/Escape.Sequence/disableReportingFocus.ps1)|ScriptMethod|
|[doubleUnderline](Types/Escape.Sequence/doubleUnderline.ps1)|ScriptMethod|
|[enableAlternateScreenBuffer](Types/Escape.Sequence/enableAlternateScreenBuffer.ps1)|ScriptMethod|
|[enableReportingFocus](Types/Escape.Sequence/enableReportingFocus.ps1)|ScriptMethod|
|[encircled](Types/Escape.Sequence/encircled.ps1)|ScriptMethod|
|[enterLineDrawMode](Types/Escape.Sequence/enterLineDrawMode.ps1)|ScriptMethod|
|[exitLineDrawMode](Types/Escape.Sequence/exitLineDrawMode.ps1)|ScriptMethod|
|[foregroundBlack](Types/Escape.Sequence/foregroundBlack.ps1)|ScriptMethod|
|[foregroundBlue](Types/Escape.Sequence/foregroundBlue.ps1)|ScriptMethod|
|[foregroundBrightBlack](Types/Escape.Sequence/foregroundBrightBlack.ps1)|ScriptMethod|
|[foregroundBrightBlue](Types/Escape.Sequence/foregroundBrightBlue.ps1)|ScriptMethod|
|[foregroundBrightCyan](Types/Escape.Sequence/foregroundBrightCyan.ps1)|ScriptMethod|
|[foregroundBrightGreen](Types/Escape.Sequence/foregroundBrightGreen.ps1)|ScriptMethod|
|[foregroundBrightPurple](Types/Escape.Sequence/foregroundBrightPurple.ps1)|ScriptMethod|
|[foregroundBrightRed](Types/Escape.Sequence/foregroundBrightRed.ps1)|ScriptMethod|
|[foregroundBrightWhite](Types/Escape.Sequence/foregroundBrightWhite.ps1)|ScriptMethod|
|[foregroundBrightYellow](Types/Escape.Sequence/foregroundBrightYellow.ps1)|ScriptMethod|
|[foregroundColor](Types/Escape.Sequence/foregroundColor.ps1)|ScriptMethod|
|[foregroundCyan](Types/Escape.Sequence/foregroundCyan.ps1)|ScriptMethod|
|[foregroundDefault](Types/Escape.Sequence/foregroundDefault.ps1)|ScriptMethod|
|[foregroundGreen](Types/Escape.Sequence/foregroundGreen.ps1)|ScriptMethod|
|[foregroundPurple](Types/Escape.Sequence/foregroundPurple.ps1)|ScriptMethod|
|[foregroundRed](Types/Escape.Sequence/foregroundRed.ps1)|ScriptMethod|
|[foregroundWhite](Types/Escape.Sequence/foregroundWhite.ps1)|ScriptMethod|
|[foregroundYellow](Types/Escape.Sequence/foregroundYellow.ps1)|ScriptMethod|
|[framed](Types/Escape.Sequence/framed.ps1)|ScriptMethod|
|[html](Types/Escape.Sequence/html.ps1)|ScriptMethod|
|[htmlAttribute](Types/Escape.Sequence/htmlAttribute.ps1)|ScriptMethod|
|[hyperlink](Types/Escape.Sequence/hyperlink.ps1)|ScriptMethod|
|[ideogramDoubleOverline](Types/Escape.Sequence/ideogramDoubleOverline.ps1)|ScriptMethod|
|[ideogramDoubleUnderline](Types/Escape.Sequence/ideogramDoubleUnderline.ps1)|ScriptMethod|
|[ideogramOverline](Types/Escape.Sequence/ideogramOverline.ps1)|ScriptMethod|
|[ideogramReset](Types/Escape.Sequence/ideogramReset.ps1)|ScriptMethod|
|[ideogramStress](Types/Escape.Sequence/ideogramStress.ps1)|ScriptMethod|
|[ideogramUnderline](Types/Escape.Sequence/ideogramUnderline.ps1)|ScriptMethod|
|[italic](Types/Escape.Sequence/italic.ps1)|ScriptMethod|
|[italicOff](Types/Escape.Sequence/italicOff.ps1)|ScriptMethod|
|[lastLine](Types/Escape.Sequence/lastLine.ps1)|ScriptMethod|
|[musicNote](Types/Escape.Sequence/musicNote.ps1)|ScriptMethod|
|[nextLine](Types/Escape.Sequence/nextLine.ps1)|ScriptMethod|
|[normalIntensity](Types/Escape.Sequence/normalIntensity.ps1)|ScriptMethod|
|[normalscript](Types/Escape.Sequence/normalscript.ps1)|ScriptMethod|
|[notFramed](Types/Escape.Sequence/notFramed.ps1)|ScriptMethod|
|[overline](Types/Escape.Sequence/overline.ps1)|ScriptMethod|
|[overlineOff](Types/Escape.Sequence/overlineOff.ps1)|ScriptMethod|
|[proportionalSpacing](Types/Escape.Sequence/proportionalSpacing.ps1)|ScriptMethod|
|[proportionalSpacingOff](Types/Escape.Sequence/proportionalSpacingOff.ps1)|ScriptMethod|
|[reset](Types/Escape.Sequence/reset.ps1)|ScriptMethod|
|[reveal](Types/Escape.Sequence/reveal.ps1)|ScriptMethod|
|[reverse](Types/Escape.Sequence/reverse.ps1)|ScriptMethod|
|[reverseOff](Types/Escape.Sequence/reverseOff.ps1)|ScriptMethod|
|[screenAlignmentPattern](Types/Escape.Sequence/screenAlignmentPattern.ps1)|ScriptMethod|
|[scrollDown](Types/Escape.Sequence/scrollDown.ps1)|ScriptMethod|
|[scrollUp](Types/Escape.Sequence/scrollUp.ps1)|ScriptMethod|
|[setColor](Types/Escape.Sequence/setColor.ps1)|ScriptMethod|
|[setTabBackgroundColor](Types/Escape.Sequence/setTabBackgroundColor.ps1)|ScriptMethod|
|[setTabForegroundColor](Types/Escape.Sequence/setTabForegroundColor.ps1)|ScriptMethod|
|[subscript](Types/Escape.Sequence/subscript.ps1)|ScriptMethod|
|[superscript](Types/Escape.Sequence/superscript.ps1)|ScriptMethod|
|[underline](Types/Escape.Sequence/underline.ps1)|ScriptMethod|
|[underlineColor](Types/Escape.Sequence/underlineColor.ps1)|ScriptMethod|
|[underlineDefault](Types/Escape.Sequence/underlineDefault.ps1)|ScriptMethod|
|[underlineOff](Types/Escape.Sequence/underlineOff.ps1)|ScriptMethod|
|[xml](Types/Escape.Sequence/xml.ps1)|ScriptMethod|

function Get-Escape
{
    <#
    .SYNOPSIS
        Get Escape Sequences
    .DESCRIPTION
        Get Escape
    .EXAMPLE
        # Bolding text
        escape bold boldText reset
    .EXAMPLE
        # Italic text
        escape italic italicText reset
    .EXAMPLE
        # Bold and italic text
        escape bold italic boldAndItalic reset
    .EXAMPLE
        # Crossed out text
        escape crossout "crossed out" reset
    .EXAMPLE
        # Using standard foreground colors
        escape foregroundRed r foregroundGreen g foregroundBlue b reset
    .EXAMPLE
        # Escape HTML content
        escape html "a > b"
    .EXAMPLE
        # Escape html attributes
        escape htmlAttribute "'a' -gt 'b'"
    .EXAMPLE
        # Escape XML content
        escape xml "a > b"
    .EXAMPLE
        # Show primary console colors
        "$(
            escape underline overline
            foreach ($n in 0..15) {
                escape foregroundColor $n $n
            }
            escape reset
        )"
    .EXAMPLE                
        # Display the 256 standard xterm colors        
        @(
            foreach ($n in 0..255) {
                "$(escape bold foregroundColor $n $n)"
            }
            escape reset
        ) -join "`t"
    .EXAMPLE
        # Display the 256 standard xterm colors 
        # (using a prototype is faster than using natural syntax)
        $escape = [PSCustomObject]@{PSTypeName='Escape.Sequence'}
        $escape.bold()        
        @(
            foreach ($n in 0..255) {
                "$($escape.foregroundColor($n)) $n"
            }
            $escape.reset()
        ) -join "`t"
    .EXAMPLE        
        # RGB
        escape foregroundRed r foregroundGreen g foregroundBlue b reset
    .EXAMPLE
        # RGB bold and italic
        escape bold italic foregroundRed r foregroundGreen g foregroundBlue b reset
    .EXAMPLE
        # RGB bold italic underline overline
        escape underline overline bold italic foregroundRed r foregroundGreen g foregroundBlue b reset
    .EXAMPLE
        # The Notorious RBG
        escape underline overline bold italic "The Notorious " foregroundRed R foregroundBlue B foregroundGreen G reset
    .EXAMPLE
        # Terminal Rainbow
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
    .EXAMPLE    
        # Terminal Reading Rainbow
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
    .EXAMPLE
        # Escape Konami Code
        # (will not do anything in any terminal, just having fun)
        escape @(
            'cursorUp',1 ,'cursorUp',1
            'cursorDown', 1, 'cursorDown', 1
            'cursorBackward', 1, 'cursorForward',1
            'cursorBackward', 1, 'cursorForward',1
            'b'
            'a'
            'start'
        )
    #>
    [Alias('esc')]
    [CmdletBinding(PositionalBinding=$false)]
    param(
    # A list of arguments.  
    # These may be the names of a method or any other value
    [ArgumentCompleter({
        param ( $commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameters )
        if (-not $script:EscapeTypeData) {
            $script:EscapeTypeData = Get-TypeData -TypeName Escape.Sequence
        } 
        $memberNames = @($script:EscapeTypeData.Members.Keys)
                
        if ($wordToComplete) {
            return $memberNames -like "$wordToComplete*"
        } else {
            return $memberNames
        }
    })]
    [Parameter(ValueFromRemainingArguments)]
    [PSObject[]]
    $ArgumentList,

    # Any input object to process.    
    [ArgumentCompleter({
        param ( $commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameters )
        if (-not $script:EscapeTypeData) {
            $script:EscapeTypeData = Get-TypeData -TypeName Escape.Sequence
        } 
        $memberNames = @($script:EscapeTypeData.Members.Keys)
                
        if ($wordToComplete) {
            return $memberNames -like "$wordToComplete*"
        } else {
            return $memberNames
        }
    })]
    [Parameter(ValueFromPipeline)]
    [PSObject]
    $InputObject        
    )

    # All this function does is gather all of the input and arguments
    $allIn = @($input) + @($ArgumentList)    

    #region Little Logo

    $typeName = 'Escape.Sequence'
    # Enable light logo style natural language based off of the available methods.    

    # Then create our prototype
    $prototype = [PSCustomObject]@{PSTypeName=$typeName}  

    for ($index = 0; $index -lt $allIn.Count; $index++) {
        # pick off the next entry
        $in = $allIn[$index]
        # If it is a string and a method of the prototype
        if ($in -is [string] -and 
            $prototype.$in.Script) {
            # get it's script                
            $script = $prototype.$in.Script
            # and use the ast to find the parameters.
            $paramBlock = $script.Ast.ParamBlock
            $positionalArgs = @(
                # If there were positional parameters
                if ($paramBlock.Parameters.Count) {
                    # dequeue that many items
                    foreach ($n in 1..$paramBlock.Parameters.Count) {
                        $allIn[$index + $n]
                    }
                }
                $index += $paramBlock.Parameters.Count
            )
            # and run the script.
            & $script @positionalArgs
        } else {
            # otherwise pass thru the input
            $in
        }
    }    
    #endregion Little Logo
}

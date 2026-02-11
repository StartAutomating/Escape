<#
.SYNOPSIS
    Hyperlink Escape Sequence
.DESCRIPTION
    Escape Sequence for a Hyperlink
#>
param(
# The link uri 
[alias('Url')]
[uri]
$Uri,

# The link text
[string]
$Text
)


if (-not $uri) { return }
if (-not $text) { $text = $uri }

$e = [char]27
"$e]8;;${uri}$e\${text}$e]8;;$e\"
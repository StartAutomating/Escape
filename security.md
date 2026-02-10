### Escape Security Guide

Escape Sequences can be very useful, and, like many useful things, they can be used maliciously.

This module's purpose is to be a functional guide to constructing and using escape sequences.

It will escape the pain of escape sequences, and this will make the construction of escaped content easier.

The vast majority of this content will be mostly harmless (for example, changing the color of the text).

Some of these sequences can be used to conceal content from users (for example, the conceal/reveal escape sequence)

Other of these sequences can make text in a terminal quite hard to read (for example, the line drawing mode escape sequence)

Others are obviously dual-use, such as making hyperlinks.

These sequences will be treated differently by different termianls, ignored by many editors, and highlighted in a few (like Visual Studio Code).

It is fundamentally the responsibility of each of these terminals and editors to mitigate malicious use of the escape sequences.

If, for example, an escape sequence causes your terminal to crash, it is the responsibility of that terminal, not this module.
Please file an issue on that terminal if you find yourself in this scenario.

Please only use this module in the limited ways required for your scenario, and please report any malicious use of this module to the appropriate project.

If you would like to use only an isolated escape sequence from this module, please simply copy and paste the appropriate escape sequence file into a function or script.

Most of these escape sequences have been around for decades, and will not be chaning anytime soon.

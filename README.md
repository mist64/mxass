# mxass

*mxass* is a cross assembler that targets Commodore 64-like platforms. It runs on UNIX systems and supports 6502, 65816 and Z80.

## History

*mxass* was started in 1995 in PowerBASIC/DOS, was ported to Turbo Pascal in 1997 and abandoned in 1998. The last DOS binary can still be found [here](http://www.weihenstephan.org/~michaste/mxass/). In 2008, I dug up the source again, and ported it to C on UNIX. Most of the code is in an abominable state, but I find it an interesting experiment to port this code forward. And maybe someone finds it useful...

## Notes

* The history in the repository goes back to the 1997 Pascal version.
* This is not a release version. It assembles the examples, but might fail horribly on everything else.
* The manual is outdated. For example, *mxass* does not support the PC64 or 64NET cables any more.
* There are two examples: dia.asm is a C64 diagnostics program (German user interface), and x7.asm is the core of the C64 diskmag "X-Dome".

## License

Public Domain

## Author

Michael Steil <mist64@mac.com>

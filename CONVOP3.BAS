hexdigits$="0123456789abcdef"
cls
open "opcodes.ill" for input as #1
open "opcodes.a18" for output as #2
for i?=1 to 24: input #1, a$: next ' šberschriften

do
	input #1, Mnemo$: if Mnemo$="" then exit loop
        MNEMO$=UCASE$(Mnemo$)
	print #2, left$(Mnemo$,3);
        t$=mid$(Mnemo$,4,1)
        select case t$
          case "A": print #2, chr$(1);
          case "X": print #2, chr$(2);
          case else: print #2, chr$(0);
        end select
        ? left$(Mnemo$,3)
	for j?=1 to 23
		input #1, h$
                h$=lcase$(h$)
	        ' hex -> dezimal
	        i?=len(H$): number??=0
                if i? then
			do
		        	d$=mid$(H$,i?,1)
		                ins?=instr(hexdigits$, d$)
		                if ins?=0 then ?"Wrong hex number! "h$: stop
		                incr number??, 16^(len(H$)-i?)*(ins?-1)
		                decr i?
		        loop until i?=0
                else
                	number??=&HFFFF
                end if
	        print#2,chr$(number?? and 255, int(number??/256));
	next
loop until eof(1)

close
cls
open "opz80.txt" for input as #1
open "opz80.a23" for output as #2
do
  line input #1, a$
  if a$="" then exit loop
  if left$(a$,1)="*" then iterate
  a?=instr(a$," ")
  mnemo$=left$(left$(a$,a?-1)+"  ",4)
  opcode$=mid$(a$,a?+1,len(a$)-a?-2)
  addmode$=right$(a$,1)

  if len(opcode$)=2 then opcode1?=dec?(opcode$): opcode2?=0
  if len(opcode$)=4 then opcode1?=dec?(left$(opcode$,2)): opcode2?=dec?(mid$(opcode$,3))
  addmode?=instr("0123456789abcdef",addmode$)-1
  ? ucase$(mnemo$),addmode?,opcode1?,opcode2?
  print #2, ucase$(mnemo$);chr$(addmode?);chr$(opcode1?);chr$(opcode2?);
loop until eof(1)
close

function dec?(a$)
  a?=instr("0123456789abcdef",left$(a$,1))-1
  b?=instr("0123456789abcdef",mid$(a$,2))-1
  dec?=a?*16+b?
end function
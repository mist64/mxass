{
 19.04.96: 01:06:23:34
 20.04.96: 01:07:35:17
           01:34:42:49
           00:50:45:32
           00:51:53:51
        ->(05:31:19:83)
 21.04.96: 00:39:00:24
 22.04.96: 00:38:50:35 64NET-Transfer
           00:03:50:42 wirkliche Zeilennummern
           00:03:41:69
 18.05.96: 00:01:45:51 Ausgabe von Start- und Endadresse
 27.05.96  00:02:46:78 Bugfix: Spaces bei RechenausdrÅcken
 29.05.96: 01:03:35:51 lokale Labels (beginnen mit "+" oder "-")
 30.05.96: 00:06:57:44 Bugfix bei lokalen Labels und "array scan"-AusdrÅcken
        ->(08:06)
 30.05.96: 00:35:08:28 Kommandozeilenparameter, Env.Var., SaveAs, Transfer
           00:01:41:52 Weglassen von Erweiterung beim Filenamen mîglich
           00:00:52:01 Bugfix
           00:57:24:74 (bis zum Stromausfall...)
           01:13:24:46 Geschwindigkeitsoptimierung um 37%
           00:35:01:84 Geschwindigkeitsoptimierung um weitere 9% (insg.: 42%)
           00:26:46:54 SaveAs P00, N64
           00:11:31:63 Rechnen mit lokalen Labels
 01.06.96: 00:08:51:10 Bugfix bei lokalen Labels ohne Namen
           01:15:43:43 Include, .SYM-Datei
           00:23:46:33 Makros
           00:47:06:84 numerische Variablen bei Makros
           00:38:04:86 verschiedene Bugfixes
 06.07.96  00:13:06:50 Speicheroptimierung (32KB weniger)
                       verschiedene Bugfixes
 08.07.96  00:08:21:34 Errorstop bei "Byte > 8 Bit" bei "immediate" etc.
           00:02:21:69 Zu viele Parameter bei ".br"
 10.08.96  00:36:21:38 Optimierung der 64NET-Routinen
 18.08.96  00:30:19:36 öbertragung per PC64-Kabel
 25.09.96  01:10:24:90 Umschreiben in Pascal...
 26.09.96  02:00:04:39 ...
 27.09.96  00:46:10:15 ...
           00:45:29:70 ...
 28.09.96  00:47:37:03 ...
           01:07:15:26 ... (Debugging)
           01:36:46:75 ... (Debugging)
 29.09.96  00:14:33:34 ...
           01:35:13:96 ...
        ->(21:18)
           00:13:38:07 ...
 08.11.96  01:18:55:66 ..., dynamische Speicherverwaltung
 10.11.96  00:42:58:67 Eintippen der 65816-Opcodes
 13.11.96  00:46:06:19 ...
           00:25:59:23 Anpassung an 65816
 16.11.96  00:21:25:70 ...
 17.11.96  02:03:04:81 ...
           00:25:49:70 ...
           00:23:07:74 UnterstÅtzung von 16-Bit-Akku und -Index
 18.11.96  01:01:41:45 illegale 6502-Opcodes
 21.12.96  00:03:03:25 Portangabe als const
 24.01.97  00:14:58:80
           00:20:58:18 .LO, Linken von Datenfiles (nur PC64)
           00:10:34:57 .TS, Text als Screencode ablegen
 25.01.97  00:01:07:47 File-not-found bei .LO-Dateien
 01.02.97  00:01:53:47 Tastendruck vor Transfer
           00:01:33:31 ...
 09.03.97  00:11:03:98 64NET: Bugfix, .LO
        ->(29:56)
 21.05.97  00:21:31:26 Opcodes-Datei als EXE-Overlay
           00:20:42:57 LOs auch im Ass-Verz.
 22.05.97  00:19:24:50 Labels in Zeile mit Mnemo; Line/sec
           00:27:59:24 Eintippen der Z80-Opcodes
           00:24:52:95 Z80-Assembler
 28.05.97  01:22:37:35 ...
           00:35:56:84 ...
 29.05.97  01:07:35:38 ...
           01:10:07:47 ...
           00:08:50:24 Z80-Bugfix
 30.05.97  00:53:17:40 Umstrukturierung,Pseudo-Statements in Makros,Z80-Makros
           00:35:24:08 Z80: ix,iy-Register
           00:00:45:82 Bugfix
           00:23:48:22 Hilfestellung
           00:13:21:45 Z80-Opcodes-Datei als EXE-Overlay
           00:09:50:20 Verbesserung des SHOW-Modus
           00:06:22:97 ...
 25.06.97  00:06:30:22 Bugfix bei Pseudo-Opcodes
 02.07.97  00:02:23:89 Anzeigen der Åbertragenen Dateien
           00:06:28:21 Bug bei .LA mit Leerzeichen behoben
 16.08.97  01:09:10:58 KompatibilitÑt zu anderen Assemblern: #, DC, EQU
           00:23:34:89 ...
 17.08.97  00:40:31:78 GEQU,DS,ANOP,65816 ON/OFF,START,END,LONGA/I (WDC-Ass)
 18.08.97  00:19:07:08 .EQU, .DB, .DW, .ORG (Table Assembler)
 05.03.98  00:12:05:65 Bugfix: Punkte in/LÑnge von Datei/Verzeichnisnamen
 06.03.98  00:06:03:82 .start (Giga-Ass)
           00:07:37:75 .eq, .te, .ds (Giga-Ass)
 11.03.98  00:07:31:53 '=' wie EQU, .setpc, .b, .w (Professional Ass)
 14.03.98  00:19:31:23 .ob wie -PRG, mit variablem Dateinamen (Hypra-Ass)
           00:13:59:10 .en als Ende des Quelltexts (Hypra-Ass)
 15.03.98  00:16:16:48 .lo "filename",address
           00:22:04:37 * als aktuelle Adresse, .ds > 255, .ds=0-Bugfix
           00:10:03:25 *-Bugfix
 17.03.98  00:15:46:94 Base-Definition Åber *=$C000 (Turbo Ass)
           00:15:01:20 Bugifx: = ohne Space davor
           00:05:20:05 Bugfix bei Spaces in RechenausdrÅcken
           00:13:30:67 .comment - .en; .if wert=wert - .en
 21.03.98  00:02:35:83 .ds-Bugifx
           00:00:27:43 .ds-Bugfix #2
}

{$G+}
{$M 65520, 65536, 655360}

uses Crt, Dos;

const MNEMOS=108;       { Anzahl der bekannten Mnemos }
      ADDMODES=23;
      Z80MNEMOS=78;
      MAXNAMELENGTH=25;
      SOURCEMEM=65535; { Bytes fÅr Quelltext }
      MAXLINES=3000;
      MAXLABELS=490;   { Maximale Anzahl der Labels }
      MAXFILES=10;      { Maximale Anzahl der Quelldateien }
      MAXMACROS=10;     { Maximale Anzahl der Makros }
      MAXMACROLENGTH=512;{ Bytes fÅr Makroquelltext }
      MAXMACPARA=10;    { Maximale Anzahl von Makroparametern }
      MAXOCODE=15000;   { Maximale Grî·e des ObjectCodes }

      QUOTE=#34;
      CR=#13+#10;
      SPACES=#9+#32;
      SEMICOLON=';';
      COLON=':';
      HEXDIGITS='0123456789ABCDEF';
      DECDIGITS='0123456789';
      NUL=#0;
      PLUSMINUS='+-';
      SWITCHES='-/';
      SEP=#0+#1+#2+#3+#4+#5+#6+#7+#8+#9+#10+#11+#12+#13+#14+#15+#16+#17+#18+
          #19+#20+#21+#22+#23+#24+#25+#26+#27+#28+#29+#30+#31+#32+#33+#35+#38+
          #39+        #42+#43+#44+#45+#46+#47+#58+#59+#61+#63+#64+#91+#92+#93+
          #94+#96+#123+#124+#125+#126+#127;
      CALCSEP=#0+#1+#2+#3+#4+#5+#6+#7+#8+#9+#10+#11+#12+#13+#14+#15+#16+#17+#18+
          #19+#20+#21+#22+#23+#24+#25+#26+#27+#28+#29+#30+#31+    #33+#35+#38+
          #39+        #42+#43+#44+#45+#46+#47+#58+#59+#61+#63+#64+#91+#92+#93+
          #94+#96+#123+#124+#125+#126+#127;
      KEINRECHENZEICHEN=#0;
      NONE8=$FF;
      NONE16=$FFFF;
      POT2: array[0..23] of longint=(1,2,4,8,16,32,64,128,$100,$200,$400,$800,
                                  $1000,$2000,$4000,$8000,$10000,$20000,$40000,
                                  $80000,$100000,$200000,$400000,$800000);
      BIT8MODES=#1+#2+#3+#4+#8+#9+#13+#16+#17+#19+#20;
      BIT16MODES=#5+#6+#7+#10+#15+#18;
      BIT24MODES=#12+#14;
      BYTE2MODES=BIT8MODES+#11;
      BYTE3MODES=BIT16MODES+#21+#22;
      BYTE4MODES=BIT24MODES;

      Z80REGS=8;
      Z80REG: array[0..Z80REGS-1] of string[4]=('B','C','D','E','H','L','L','A');
      { zweites L ist ein Dummy, wird nie Åbereinstimmen }
      Z80REG8S=8;
      Z80REG8: array[0..Z80REG8S-1] of string[4]=('B','C','D','E','H','L','(HL)','A');
      Z80REG16S=4;
      Z80REG16: array[0..Z80REG16S-1] of string[2]=('BC','DE','HL','SP');
      Z80REG162S=4;
      Z80REG162: array[0..Z80REG162S-1] of string[2]=('BC','DE','HL','AF');
      Z80REG816S=12;
      Z80REG816: array[0..Z80REG816S-1] of string[4]=('B','BC','C','D','DE','E','H','HL','L','(HL)','SP','A');
      Z80CONDS=8;
      Z80COND: array[0..Z80CONDS-1] of string[2]=('NZ','Z','NC','C','PO','PE','P','M');
      Z80REGCONV1: array[0..Z80REG8S-1] of byte=(0,2,3,5,6,8,9,$B);
      Z80REGCONV2: array[0..Z80REG162S-1] of byte=(1,4,7,$FF);

      Z80OPCODECONV: array[0..Z80REG816S-1] of byte=($0,$6,$8,$10,$16,$18,$20,$26,$28,$30,$36,$38);

      PORT=$378; { LPT1 }

      OPCODESFILENAME='OPCODES.A18';
      OPCODESFILENAMEZ80='OPZ80.A23';
      OPCODESFILELENGTH=5350;
      OPCODESFILELENGTHZ80=546;

type tSourceText = array[0..SOURCEMEM-1] of byte;
     numbertype = longint;

{ Arrays }
var SourceText : ^tSourceText;
    reallinenumber: array[0..MAXLINES] of word;
    belongstoFile: array[0..MAXLINES] of word;
    Mnemo: array[1..MNEMOS] of string[3];
    Opcode: array[1..MNEMOS,0..ADDMODES-1] of word;

    Z80Mnemo: array[1..Z80MNEMOS] of string[4];
    Z80Addmode: array[1..Z80MNEMOS] of byte;
    Z80Opcode: array[1..Z80MNEMOS] of word;

    RegisterInvolved: array[1..MNEMOS] of byte;
    xLabel: array[0..MAXLABELS] of string[MAXNAMELENGTH];
    Value: array[0..MAXLABELS] of word;
    LValue: array[0..MAXLABELS] of word;
    SourceFile: array[0..MAXFILES] of string;
    MacroName: array[0..MAXMACROS] of string[MAXNAMELENGTH];
    MacroSourceText: array[0..MAXMACROS] of array[0..MAXMACROLENGTH-1] of byte;
    MacroSourceEnd: array[0..MAXMACROS] of word;
    MacroOperand: array[0..MAXMACROS] of string;
    MacroLabel: array[0..MAXMACPARA] of string[MAXNAMELENGTH];
    MacroValue: array[0..MAXMACPARA] of word;
    ocode: array[0..MAXOCODE] of byte;
{ Variablen }
    ASSDirectory: string; { Verzeichnis, in dem sich ASS.EXE befindet }
    Loads: string[255];
    LoadAddress: word;
    Time: word absolute $40:$6C;
    StartTime: word;
    AssemblyTime: real;
    Show: boolean;
    PrintLine: string;
    NumberOfMnemos: byte;
    Labels: word;
    MacroLabels: word;
    MacroError: boolean;
    actl: string;
    Pass: byte;
    unknown: boolean;
    AsciiFlag: byte;
    Cpu: byte;
    CpuIllegal: boolean;
    opaddress, oldopaddress: word;
    startjumpaddress: word;
    currentline: word;
    ParameterFile: string;
    Filename: string;
    Transfer: byte;
    SaveAs: byte;
    SaveName: string;
    Symbols: boolean;
    SourceFiles: word;
    lines, reallines: word;
    basedefined: boolean;
    Pseudo, Operand: string;
    number, number2: numbertype;
    startaddress: word;
    times: word;
    insold: word;
    a: string;
    Macros: word;
    ShowIndex: byte;
    Header: string[26];
{ neu hinzugefÅgte Variablen }
    i: word;
    j: byte;
    ins, ins2: byte;
    SwitchParameter: string[10];
    OpcodesFile: file;
    OpcodesHelp: array[0..(ADDMODES shl 1)+4] of byte;
    BytesRead: word;
    CurL: string;
    actMacroName: string;
    actMacroOperand: string;
    help: word;
    ArrayScan: word;
    ArrayFound: boolean;
    PseudoOK: boolean;
    ocodeIndex: word;
    SourceIndex, SourceEnd: word;
    MacroSourceIndex: word;
    SwitchOK: boolean;
    SaveFile: file;
    SymbolsFile: text;
    SizeAccu, SizeIndex: boolean;

    IgnoreNextEnd: boolean;

{ neue Funktionen/Prozeduren fÅr Pascal }
function UpCaseStr(S: string): string;
var i: byte;
begin
  for i:=1 to Length(S) do S[i]:=UpCase(S[i]);
  UpCaseStr:=S;
end;

function Trim(S: string): string;
begin
  if S<>'' then
  begin
    { Spaces links lîschen }
    while ((S[1]=' ') or (S[1]=#9)) and (S<>'') do S:=Copy(S,2,255);
    { Spaces rechts lîschen }
    while (S[Length(S)]=' ') or (S[Length(S)]=#9) do S[0]:=Chr(Length(S)-1);
  end;
  Trim:=S;
end;

function Hex(a: word; decimals: byte): string;
var i: byte;
    s: string;
begin
  s:='';
  for i:=1 to decimals do
  begin
    s:=Copy(HEXDIGITS,(a and 15)+1,1)+s;
    a:=a shr 4;
  end;
  Hex:=s;
end;

function HiHi(number: numbertype): byte;
begin
  HiHi:=number shr 16;
end;

function Right4(A: word): string;
var S: string;
begin
  Str(A, S);
  while Length(S)<4 do S:=' '+S;
  Right4:=S;
end;

function FindAny(Sub, Main: string): byte;
var l: byte;
begin
  for l:=1 to Length(Main) do
  begin
    if Pos(Main[l],Sub)>0 then begin FindAny:=l; Exit; end;
  end;
  FindAny:=0;
end;

function KillQuotes(T: string): string;
var ins1, ins2: byte;
    l: byte;
begin
  repeat
    ins1:=Pos(QUOTE, T); { alles innerhalb von "" Åbermalen (einschl.) }
    if ins1=0 then Break;
    ins2:=Pos(QUOTE,Copy(T,ins1+1,255));
    if ins2=0 then ins2:=Length(T) else ins2:=ins1+ins2;
    for l:=ins1 to ins2 do T[l]:='X';
  until FALSE;
  KillQuotes:=T;
end;

function FindSeparator(S: string): byte;
begin
  FindSeparator:=FindAny(SEP,KillQuotes(S));
end;
function FindCalcSeparator(S: string): byte;
begin
  FindCalcSeparator:=FindAny(CalcSEP,KillQuotes(S));
end;

function FindFile(Filename: string): boolean;
var SeF, OfF: word;
begin
  Filename:=Filename+#0;
  SeF:=Seg(Filename); OfF:=Ofs(Filename)+1;
  asm
    push ds
    mov ax, SeF
    mov ds, ax
    mov dx, OfF
    mov ah, 4Eh
    mov cx, 20h
    int 21h
    jnc @@NoError
    mov @Result, FALSE
    jmp @@FindEnd
@@NoError:
    mov @Result, TRUE
@@FindEnd:
    pop ds
  end;
end;

{ Funktionen/Prozeduren }
procedure TrimSourceText(Filename: string);
var actSourcefile: text;
    actReallinenumber: word;
    Line, Line2: string;
    ins, ins2: byte;
    IncFile: string;
    IncFound: boolean;
    NextLineInBuffer: boolean;
    testequ: string;
label EQU;
begin
  if FindFile(Filename)=FALSE then
  begin
    Writeln('File "',Filename,'" not found!');
    Halt;
  end;
  SourceFile[SourceFiles]:=Filename; Inc(SourceFiles);
  Assign(actSourceFile, Filename); Reset(actSourceFile);
  actReallinenumber:=0;
  NextLineInBuffer:=FALSE;
  repeat
    Inc(actReallinenumber);
    if NextLineInBuffer then
    begin
      Line:=Line2;
    end else begin
      Readln(actSourceFile, Line);
    end;
    ins:=Pos(SEMICOLON, Line);
    if ins>0 then Line[0]:=Chr(ins-1); { REMs lîschen }
 { Zeile mit Label und Mnemo aufspalten }
    if (Line[0]<>#0) and (Line[1]<>' ') and (Line[1]<>#9)
    and (Line[1]<>'.') and (Line[1]<>'#') and (NextLineInBuffer=FALSE) then
    begin        { ^ Pseudo-Opcodes dÅrfen weiterhin an 1. Stelle stehen }
      ins:=Pos(' ', Line); if ins=0 then ins:=255;
      ins2:=Pos(#9, Line); if ins2=0 then ins2:=255;
      if ins2<ins then ins:=ins2;
      testequ:=UpCaseStr(Copy(Trim(Copy(Line,ins+1,255)),1,4));
      if (Copy(testequ,1,3)='EQU') or (testequ='GEQU') or (testequ='.EQU') or
         ((testequ[1]='=') and (testequ[0]<>#0)) then goto EQU;
      if ins<>255 then
      begin
        if Line[ins-1]='=' then begin
          { fÅr =-Routine von spÑter ein Space einfÅgen }
          Line:=Copy(Line,1,ins-2)+' '+Copy(Line,ins-1,255);
          goto EQU;
        end;
        Line2:=Copy(Line,ins+1,255);
        Line[0]:=Chr(ins-1);
        if Line[Length(Line)]<>COLON then Line:=Line+COLON;
        NextLineInBuffer:=TRUE;
        { -> Line wird abgelegt, Line2 beim nÑchsten Durchlauf }
      end else begin
        Line2:='';
        if Line[Length(Line)]<>COLON then Line:=Line+COLON;
        NextLineInBuffer:=TRUE;
      end;
    end else begin
EQU:
      NextLineInBuffer:=FALSE;
    end;
    Line:=Trim(Line);
    if Line<>'' then
    begin
      if (UpCaseStr(Copy(Line,2,7))='INCLUDE') and ((Line[1]='.') or (Line[1]='#')) then
      begin
        IncFile:=Trim(Copy(Line,9,255));
        if IncFile[1]=QUOTE then IncFile:=Copy(IncFile,2,255); { Quotes weg }
        if IncFile[Length(IncFile)]=QUOTE then IncFile[0]:=Chr(Length(IncFile)-1);
	IncFound:=FALSE;
        if Pos('.', IncFile)=0 then
        begin
          if FindFile(IncFile+'.ASM') then begin IncFile:=IncFile+'.ASM'; IncFound:=TRUE; end;
          if FindFile(IncFile+'.INC') then begin IncFile:=IncFile+'.INC'; IncFound:=TRUE; end;
	end else begin
	  if FindFile(IncFile) then IncFound:=TRUE;
	end;
        if UpCaseStr(Filename)=UpCaseStr(IncFile) then
        begin
          Writeln('Recursive ".include" in file ',UpCaseStr(Filename),', line ',actReallinenumber,'!');
          Halt;
        end;
        Writeln('     Reading include    "',UpCaseStr(IncFile),'"');
	TrimSourcetext(IncFile);
        Writeln('     Continuing         "',UpCaseStr(Filename),'"');
      end else begin
        if SourceIndex+Length(Line)>=SOURCEMEM then
        begin
          Writeln('Sourcetext too big!');
          Halt;
        end;
        { Zeile in Quelltextspeicher kopieren }
        Move(Ptr(Seg(Line),Ofs(Line)+1)^,Ptr(Seg(SourceText^),Ofs(SourceText^)+SourceIndex)^,Length(Line));
        Inc(SourceIndex,Length(Line)+1);
        SourceText^[SourceIndex-1]:=0;

        Reallinenumber[i]:=actReallinenumber;
        belongstoFile[i]:=SourceFiles-1;
        Inc(i);
        if i>MAXLINES then
        begin
          Writeln('Too many lines!'); Halt;
        end;
      end;
    end;
  until Eof(actSourceFile) and (NextLineInBuffer=FALSE);
  Close(ActSourceFile);
  Dec(SourceFiles); { dem Aufrufer wieder die richtige Ebene Åbergeben }
end;

procedure Errorstop(S: string);
begin
  GotoXY(1,WhereY-1);
  Writeln('Line ',currentline,': ',S);
  Writeln(curL);
  Halt;
end;

function HexDec(H: string): numbertype; { hex -> dezimal }
var i: byte;
    number: numbertype;
    d: char;
    ins: byte;
begin
  H:=UpCaseStr(H);
  number:=0;
  for i:=1 to Length(H) do
  begin
    d:=H[i];
    ins:=Pos(D, HEXDIGITS);
    if ins=0 then Errorstop('Wrong hex number!');
    Dec(ins);
    number:=number+Trunc(ins *(Pot2[(4*(Length(H)-i))]));
  end;
  HexDec:=number;
end;

function BinDec(H: string): word; { bin -> dezimal }
var i: byte;
    number: word;
    d: byte;
    ins: byte;
begin
  number:=0;
  for i:=1 to Length(H) do
  begin
    d:=Ord(H[i])-48;
    if (d>1) then Errorstop('Wrong bin number!');
    number:=number+d shl (Length(H)-i);
  end;
  BinDec:=number;
end;

function Petscii(S: char): char;
{ wandelt einzelnes Zeichen von ASCII nach PETSCII }
var a: byte;
begin
  a:=Ord(S);
  if (a>64) and (a<91) then begin Petscii:=Chr(a+32); Exit; end;
  if (a>96) and (a<123) then begin Petscii:=Chr(a-32); Exit; end;
  Petscii:=S;
end;

function SPetscii(A: string): string;{ wandelt String von ASCII nach PETSCII }
var SegA, OfsA: word;
    LenA: byte;
    j: byte;
    b: byte;
begin
  SegA:=Seg(A); OfsA:=Ofs(A)+1; LenA:=Length(A);
  asm
    push ds
    mov ax, SegA
    mov ds, ax
    mov es, ax
    mov si, OfsA
    mov di, si
    mov cl, LenA
    mov ch, 0
@@petloop:
    lodsb
    cmp al, 65
    jb @@petend
    cmp al, 92
    ja @@pet1
    add al, 32
    jmp @@petend
@@pet1:
    cmp al, 97
    jb @@petend
    cmp al, 122
    ja @@petend
    sub al, 32
@@petend:
    stosb
    loop @@petloop
    pop ds
  end;
  SPetscii:=A;
end;

function SScrCode(A: string): string;{ wandelt Str PETSCII nach Screencode }
var SegA, OfsA: word;
    LenA: byte;
    j: byte;
    b: byte;
begin
  SegA:=Seg(A); OfsA:=Ofs(A)+1; LenA:=Length(A);
  asm
    push ds
    mov ax, SegA
    mov ds, ax
    mov es, ax
    mov si, OfsA
    mov di, si
    mov cl, LenA
    mov ch, 0
@@scrloop:
    lodsb
    cmp al, $20
    jae @@scr1
    add al, $80
    jmp @@scrend
@@scr1:
    cmp al, $40
    jb @@scrend
    cmp al, $60
    jae @@scr2
    sub al, $40
    jmp @@scrend
@@scr2:
    cmp al, $80
    jae @@scr3
    sub al, $20
    jmp @@scrend
@@scr3:
    cmp al, $A0
    jae @@scr4
    add al, $40
    jmp @@scrend
@@scr4:
    cmp al, $C0
    jae @@scr5
    sub al, $40
    jmp @@scrend
@@scr5:
    cmp al, $FF
    je @@scr6
    sub al, $80
    jmp @@scrend
@@scr6:
    mov al, $5E { Pi }
@@scrend:
    stosb
    loop @@scrloop
    pop ds
  end;
  SScrCode:=A;
end;

function GetNumber(S: string): numbertype;
var locallabelflag: boolean;
    realS: string;
    S2: string;
    number, number2: numbertype;
    ins: byte;
    Rechenzeichen: char;
    H: String;
    i: byte;
    a: char;
    ValCode: integer;
    LLabels: word;
    oldfound: word;
    ArrayScan: word;
    help: word;
    Labelfound: boolean;
    RzOK: boolean;
begin
  S:=Trim(S);
  if (S[1]='+') or (S[1]='-') then { lokales Label }
  begin
    locallabelflag:=TRUE;
    realS:=S; S:=Copy(S,2,255);
  end else begin
    locallabelflag:=FALSE;
  end;
  if (S[1]='*') and (S<>'') then begin
    if Length(S)>1 then ins:=FindCalcSeparator(Copy(S,2,255))+1 else ins:=0;
  end else begin
    ins:=FindCalcSeparator(S);
  end;
  if ins>0 then { komplexer Ausdruck mit Rechenzeichen }
  begin
    S2:=Copy(S,ins+1,255);
    number2:=GetNumber(S2); { rekursiv! }
    Rechenzeichen:=S[ins];
    if locallabelflag then
    begin
      S:=Trim(Copy(realS,1,ins)); { echtes Label wiederherstellen }
    end else begin
      S:=Trim(Copy(S,1,ins-1));
    end;
  end else begin
    Rechenzeichen:=KEINRECHENZEICHEN;
    if locallabelflag then S:=realS;
  end;
  if (S[1]='*') and (S<>'') then { aktuelle Assembly-Adresse }
  begin
    number:=opaddress;
    S:='';
  end;
  if (S[1]='$') and (S<>'') then { hex-Konstante }
  begin
    number:=HexDec(Copy(S,2,255));
    S:='';
  end;
  if (S[1]='%') and (S<>'') then  { bin-Konstante }
  begin
    number:=BinDec(Copy(S,2,255));
    S:='';
  end;
  if (S[1]=QUOTE) and (S<>'') then { ASCII-Konstante }
  begin
    if S[3]<>QUOTE then Errorstop('ASCII constant too long!');
    a:=S[2]; if AsciiFlag=0 then a:=Petscii(a);
    number:=Ord(a);
    S:='';
  end;
  if (S[1]='<') and (S<>'') then { Low-Byte }
  begin
    number:=GetNumber(Copy(S,2,255)) and 255;
    S:='';
  end;
  if (S[1]='>') and (S<>'') then { High-Byte }
  begin
    number:=GetNumber(Copy(S,2,255)) shr 8;
    S:='';
  end;
  if (S[1]='(') and (S<>'') then { Ausdruck in Klammern }
  begin
    if S[Length(S)]<>')' then Errorstop('Brackets error!');
    number:=GetNumber(Copy(S,2,Length(S)-2));
    S:='';
  end;
  if (S<>'') and (S[1]>='0') and (S[1]<='9') then { dezimale Konstante }
  begin
    Val(S,number,ValCode); {! ValCode auswerten! }
    S:='';
  end;
  if S<>'' then { Label }
  begin
    S:=UpCaseStr(S);
    if locallabelflag then { lokales Label }
    begin
      if Pass=1 then
      begin
        unknown:=TRUE;
      end else begin
        LLabels:=0; oldfound:=0;
	repeat
          ArrayFound:=FALSE;
	  for ArrayScan:=oldfound to Labels-1 do
          begin
            if xLabel[ArrayScan]=S then begin help:=ArrayScan; ArrayFound:=TRUE; Break; end;
          end;
	  if not ArrayFound then Break;
	  LValue[LLabels]:=Value[help];
	  Inc(LLabels);
	  OldFound:=help+1;
	until FALSE;
        if LLabels=0 then Errorstop('(1)Local label not found!');
        if S[1]='+' then { nur VorwÑrtsverweise erlaubt }
        begin
        { (Annahme, lokale Labels sind nach Adresse sortiert) }
          number:=0;
          for i:=0 to LLabels-1 do
          begin
            if LValue[i]>opaddress then begin number:=LValue[i]; Break; end;
          end;
          if number=0 then Errorstop('(2)Local label not found!');
        end else begin
          number:=0;
          for i:=LLabels-1 downto 0 do
          begin
            if LValue[i]<=opaddress then begin number:=LValue[i]; Break; end;
          end;
          if number=0 then Errorstop('(2)Local label not found!');
          { Nebeneffekt: lokales Label darf nicht Wert 0 haben }
        end;
      end;
    end else begin { globales Label }
      ArrayFound:=FALSE;
      if Labels>0 then for ArrayScan:=0 to Labels-1 do
                       begin
                         if xLabel[ArrayScan]=S then begin help:=ArrayScan; ArrayFound:=TRUE; Break; end;
                       end;
      if not ArrayFound then { Label nicht gefunden }
      begin { vielleicht ein Makro-Parameter? }
        Labelfound:=FALSE;
        if MacroLabels>0 then
        begin
          ArrayFound:=FALSE;
          if MacroLabels>0 then for ArrayScan:=0 to MacroLabels-1 do
                                begin
                                  if MacroLabel[ArrayScan]=S then begin help:=ArrayScan; ArrayFound:=TRUE; Break; end;
                                end;
          if ArrayFound then
          begin
            number:=MacroValue[help]; Labelfound:=TRUE;
          end;
        end;
        if not Labelfound then
        begin
          if Pass=1 then unknown:=TRUE else Errorstop('Label not fond!');
        end else begin
          {! number:=Value[help]; ???}
        end;
      end else begin
        number:=Value[help];
      end;
    end;
  end;
  RzOK:=FALSE;
  if Rechenzeichen='+' then begin number:=number+number2; RzOK:=TRUE; end;
  if Rechenzeichen='-' then begin number:=number-number2; RzOK:=TRUE; end;
  if Rechenzeichen='*' then begin number:=number*number2; RzOK:=TRUE; end;
  if Rechenzeichen='/' then begin number:=number div number2; RzOK:=TRUE; end;
  if Rechenzeichen=KEINRECHENZEICHEN then RzOK:=TRUE;
  if not RzOK then Errorstop('Wrong calcualtion character!');
  GetNumber:=number;
end;

procedure SetLabel (L: string; V: word);
var help: word;
    ArrayScan: word;
begin
  if L='*' then begin { Base Address setzen }
    if unknown=TRUE then Errorstop('Base has to be a constant!');
    if basedefined then
    begin
      if V<opaddress then Errorstop('Base error!');
      if Pass=2 then Inc(ocodeIndex,V-opaddress);
      if ocodeIndex>MAXOCODE then Errorstop('Object code overflow!');
    end else begin
      startaddress:=V;
    end;
    opaddress:=V;
    basedefined:=TRUE;
    Exit;
  end;

  if (L[1]='+') or (L[1]='-') then
  begin
{ bei lokalen Variablen nicht testen, ob schon definiert }
    if Pass=2 then Exit; { in Pass 2 Wert nicht neu setzen,
                           da nur Sprungmarken fÅr lokale
                           Variablen in Frage kommen, die
                           fest sind. Au·erdem wÑr's zu auf-
                           wendig, da mehrere mit gl. Namen. }
    ArrayFound:=FALSE;
  end else begin
    { schon benutzt? }
    ArrayFound:=FALSE;
    if Labels>0 then for ArrayScan:=0 to Labels-1 do
                     begin
                       if xLabel[ArrayScan]=L then begin help:=ArrayScan; ArrayFound:=TRUE; Break; end;
                     end;
  end;
  if not ArrayFound then
  begin
    if Labels=MAXLABELS then Errorstop('Too many labels!');
    xLabel[Labels]:=L;
    Value[Labels]:=V;
    Inc(Labels);
  end else begin
    if Pass=1 then Errorstop('Symbol used twice!');
    Value[help]:=V;
  end;
end;

function MacroReadLine(Num: word): string;
var SText, OText, Len, EndDI: word;
    S: string;
begin
  if MacroSourceIndex>=MacroSourceEnd[Num] then
  begin
    MacroReadLine:='';
  end else begin
    SText:=Seg(MacroSourceText[Num]); OText:=Ofs(MacroSourceText[Num])+MacroSourceIndex;
    Len:=MAXMACROLENGTH-MacroSourceIndex;
    asm
      mov ax, SText
      mov es, SText
      mov di, OText
      mov cx, Len
      mov al, 0
      repnz scasb
      mov EndDI, di
      mov Len, cx
    end;
    S[0]:=Chr(EndDI-OText-1);
    Move(Ptr(SText,OText)^,Ptr(Seg(S),Ofs(S)+1)^,Ord(S[0]));
    Inc(MacroSourceIndex,EndDI-OText);
    MacroReadLine:=S;
  end;
end;

function Assemble(curL: string): string; forward;

function AssembleMacro(Line: string): string;
var MacroNum: word;
    Mask: string;
    ins1,ins2,ins1old,ins2old: byte;
    V: string;
    La: string;
    opaddresssaved: word;
    a,b: string;
    Statement: string;
    Operand, Operand2: string;
    byteword: char;
    testequ: string;
label DCB, DCW;
begin
  if Line[1]='*' then begin
    Statement:=Line[1];
    Operand:=Copy(Line,2,255);
  end else begin
    ins:=FindSeparator(Line);
    if ins=0 then
    begin
      Statement:=Line;
      Operand:='';
    end else begin
      Statement:=Copy(Line,1,ins-1);
      Operand:=Copy(Line,ins+1,255);
    end;
  end;
  ArrayFound:=FALSE;
  if Macros>0 then for ArrayScan:=0 to Macros-1 do
                   begin
                     if MacroName[ArrayScan]=Statement then begin MacroNum:=ArrayScan; ArrayFound:=TRUE; Break; end;
                   end;
  if not ArrayFound then
  begin
{ Pseudo-Statements ohne fÅhrenden Punkt (WDC-Konvention) }
    Statement:=UpCaseStr(Statement);
    PseudoOK:=FALSE;
    if Statement='DCB' then goto DCB;
    if Statement='DCW' then goto DCW;
    if (Statement='DC') or (Statement='DCR') then { wie '.BY'/'.WO' }
    begin
      byteword:=Operand[1];
      Operand:=Trim(Copy(Operand,2,255));
      if UpCase(byteword)='B' then
      begin
DCB:
        PseudoOK:=TRUE;
        Operand:=Trim(Operand);
        insold:=1;
        Operand:=Operand+',';
        a:='';
        repeat
          ins:=Pos(',',KillQuotes(Copy(Operand,insold,255)));
          if ins=0 then Break; {! .by ohne Parameter -> Fehler! }
          unknown:=FALSE;
          Operand2:=Copy(Operand,insold,ins-1);
          if (Operand2[1]='"') and (Operand2[Length(Operand2)]='"') then
          { ASCII-String }
          begin
            b:=Copy(Operand2,2,Length(Operand2)-2);
            if (AsciiFlag=0) and (Pass=2) then b:=SPetscii(b);
            a:=a+b;
          end else begin
            number:=GetNumber(Operand2);
            if unknown then number:=0;
            if number>256 then Errorstop('Byte > 8 Bit!');
            a:=a+Chr(number);
          end;
          insold:=insold+ins;
        until FALSE;
      end;
      if UpCase(byteword)='W' then
      begin
DCW:
        PseudoOK:=TRUE;
        insold:=1;
        Operand:=Operand+',';
        a:='';
        repeat
          ins:=Pos(',',Copy(Operand,insold,255));
          if ins=0 then Break; {! .by ohne Parameter -> Fehler! }
          unknown:=FALSE;
          number:=GetNumber(Copy(Operand,insold,ins-1));
          if unknown then number:=0;
          a:=a+Chr(Lo(number))+Chr(Hi(number));
          insold:=insold+ins;
        until FALSE;
      end;
    end;
    if Statement='DS' then { define storage, wie .br }
    begin
      PseudoOK:=TRUE;
      unknown:=FALSE;
      times:=GetNumber(Operand);
      if unknown then Errorstop('Repeat number has to be a constant!');
      a:='';
      for i:=1 to times do a:=a+#0;
    end;
    if (Statement='ANOP') or
       (Statement='START') or (Statement='END') or (Statement='KEEP') then
    begin                                { alle ignorieren }
      PseudoOK:=TRUE; a:='';
    end;
    if Statement='ORG' then
    begin
      PseudoOK:=TRUE;
      unknown:=FALSE;
      number:=GetNumber(Operand);
      if unknown=TRUE then Errorstop('Base has to be a constant!');
      if basedefined then
      begin
        if number<opaddress then Errorstop('Base error!');
        if Pass=2 then Inc(ocodeIndex,number-opaddress);
        if ocodeIndex>MAXOCODE then Errorstop('Object code overflow!');
      end else begin
        startaddress:=number;
      end;
      opaddress:=number;
      basedefined:=TRUE;
    end;
    if Statement='65816' then
    begin
      Operand:=UpCaseStr(Trim(Operand));
      if Operand='ON' then begin Cpu:=2; PseudoOK:=TRUE; end;{65816 oder 65802}
      if Operand='OFF' then begin Cpu:=0; PseudoOK:=TRUE; end;{6502}
      if not PseudoOK then Errorstop('"65816 ON" for 65816/65802; "65816 OFF" for 6502.');
    end;
    if Statement='LONGA' then
    begin
      if Cpu<>2 then Errorstop('Only supported by 65802/65816!');
      Operand:=UpCaseStr(Trim(Operand));
      if Operand='ON' then begin SizeAccu:=TRUE; PseudoOK:=TRUE; end;
      if Operand='OFF' then begin SizeAccu:=FALSE; PseudoOK:=TRUE; end;
      if not PseudoOK then Errorstop('ON or OFF required.');
    end;
    if Statement='LONGI' then
    begin
      if Cpu<>2 then Errorstop('Only supported by 65802/65816!');
      Operand:=UpCaseStr(Trim(Operand));
      if Operand='ON' then begin SizeIndex:=TRUE; PseudoOK:=TRUE; end;
      if Operand='OFF' then begin SizeIndex:=FALSE; PseudoOK:=TRUE; end;
      if not PseudoOK then Errorstop('ON or OFF required.');
    end;
    if not PseudoOK then Operand:=Trim(Operand); { fÅr nÑchsten Test }
    testequ:=UpCaseStr(Copy(Operand,1,4));
    if (
        (Copy(testequ,1,3)='EQU') or
        (testequ='GEQU') or
        (testequ='.EQU') or
        ((testequ[1]='=') and (testequ[0]<>#0))
       )
       and (PseudoOK=FALSE) then
    begin
      if (testequ[1]='=') and (testequ[0]<>#0) then begin
        Operand:=Trim(Copy(Operand,2,255))
      end else begin

        if testequ='GEQU' then begin
          Operand:=Trim(Copy(Operand,5,255))
        end else begin
          Operand:=Trim(Copy(Operand,4,255));
        end;
      end;
      PseudoOK:=TRUE; a:='';
      unknown:=FALSE;
      number:=GetNumber(Operand);
      { if unknown=FALSE then}
      SetLabel(Statement, number);
    end;
    if PseudoOK then
    begin
      AssembleMacro:=a; MacroError:=FALSE; Exit;
    end else begin
      MacroError:=TRUE; Exit;
    end;
  end;
  { Parameter auswerten }
  if Operand<>'' then
  begin
    Mask:=MacroOperand[MacroNum]+',';
    Operand:=Operand+',';
    MacroLabels:=0;
    { 'redim MacroLabel$(0%:10), MacroValue??(0:10) nicht nîtig, siehe unten }
    repeat
      ins1:=Pos(',',Operand);
      { instr(ins1old??,MacroOperand$,",") }
      ins2:=Pos(',',Mask);
      { instr(ins2old??,Mask$,",") }
      if (ins1=0) and (ins2=0) then Break;
      if (ins1=0) or (ins2=0) then Errorstop('Parameter error!');
      V:=Copy(Operand,1,ins1-1);
      { mid$(MacroOperand$,ins1old??, ins1??-ins1old??) }
      La:=Copy(Mask,1,ins2-1);
      { mid$(Mask$,ins2old??, ins2??-ins2old??) }
      if La='' then Break;
      if V='' then V:='0';
      MacroLabel[MacroLabels]:=UpCaseStr(Trim(La));
      MacroValue[MacroLabels]:=GetNumber(V);
      { '? MacroLabel$(MacroLabels??);"=";MacroValue??(MacroLabels??) }
      Inc(MacroLabels);
      Operand:=Copy(Operand,ins1+1,255);
      Mask:=Copy(Mask,ins2+1,255);
    until FALSE;
  end;
  a:='';
  opaddresssaved:=opaddress;
  MacroSourceIndex:=0;
  repeat
    curL:=MacroReadLine(MacroNum);
    if curL='' then Break;
    b:=Assemble(curL);
    a:=a+b;
    opaddress:=opaddress+Length(a) { Speicherpos. weiterzÑhlen! }
  until FALSE;
  opaddress:=opaddresssaved;
  { MakroLabels lîschen, da sie nicht mehr gelten }
  for i:=0 to MAXMACPARA do {! nîtig? }
  begin
    MacroLabel[i]:='';
    MacroValue[i]:=0;
  end;
  MacroLabels:=0;
  AssembleMacro:=a; MacroError:=FALSE;
end;

function Assemble65xx(Line: string): string;
var actMnemo: string[3];
    ArrayScan: word;
    MnemoNum: word;
    i: word;

    addmode: byte;
    lOp: char;
    immediate: boolean;
    operandFlag: boolean; {! Funktion mu· noch untersucht werden... }
    lrOp3: string[3];
    lrOp2: string[2];
    actOpcode: byte;
    actCpu: byte;
    branch: integer;
    branch2: byte;
    branch3: word;

    curL: string;

    Cpos: byte;
    number, number2: numbertype;
    s: byte;
label nMnemo;
begin
  s:=FindSeparator(Line);
  if (s<>4) and (s<>0) then goto nMnemo;
  actMnemo:=UpCaseStr(Copy(Line,1,3));
  Operand:=Trim(Copy(Line,4,255));
  MnemoNum:=0;
  for ArrayScan:=1 to Mnemos-1 do
  begin
    if Mnemo[ArrayScan]=actMnemo then begin MnemoNum:=ArrayScan; Break; end;
  end;
  if MnemoNum=0 then { vielleicht ein Makroname? }
  begin
nMnemo:
    Assemble65xx:=AssembleMacro(Line);
    if MacroError then Errorstop ('Unknown Mnemo!');
    Exit;
  end;

{ Operand }
  addmode:=0;
  lOp:=Operand[1];
  if lOp='#' then { immediate }
  begin
    immediate:=TRUE; Operand:=Copy(Operand,2,255); operandFlag:=TRUE;
  end else begin
    immediate:=FALSE;
  end;
  if lOp='(' then
  begin
    lrOp3:=UpCaseStr(Copy(Operand,Length(Operand)-2,3));
    if lrOp3=',X)' then
    begin
      if Opcode[MnemoNum, 8]=NONE16 then addmode:=18 else addmode:=8;
                                       { JMP (addr,X)   LDA (dp,X) }
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,2,Length(Operand)-4));
      if unknown then number:=0;
      Operand:='';
    end;
    if lrOp3='),Y' then
    begin
      unknown:=FALSE;
      if UpCaseStr(Copy(Operand,Length(Operand)-4,2))=',S' then
      begin
        number:=GetNumber(Copy(Operand,2,Length(Operand)-6));
        addmode:=20;
      end else begin
        number:=GetNumber(Copy(Operand,2,Length(Operand)-4));
        addmode:=9;
      end;
      if unknown then number:=0;
      Operand:='';
    end;
    if Operand[Length(Operand)]=')' then
    begin
      if Opcode[MnemoNum, 10]=NONE16 then addmode:=16 else addmode:=10;
                                         { LDA ($FF)        JMP ($FFFF) }
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,2,Length(Operand)-2));
      if unknown then number:=$FFFF;
      Operand:='';
    end;
    if Operand<>'' then Errorstop('Brackets error!');
  end;
  if lOp='[' then
  begin
    lrOp3:=UpCaseStr(Copy(Operand,Length(Operand)-2,3));
    if Operand[Length(Operand)]=']' then
    begin
      if Opcode[MnemoNum, 15]=NONE16 then addmode:=17 else addmode:=15;
                                         { JMP [$FFFF]      LDA [$FF] }
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,2,Length(Operand)-2));
      if unknown then number:=$FFFF;
      Operand:='';
    end;
    if lrOp3='],Y' then
    begin
      addmode:=13;
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,2,Length(Operand)-4));
      if unknown then number:=0;
      Operand:='';
    end;
    if Operand<>'' then Errorstop('Brackets error!');
  end;
  lrOp2:=UpCaseStr(Copy(Operand,Length(Operand)-1,2));
  if lrOp2=',X' then
  begin
    unknown:=FALSE;
    number:=GetNumber(Copy(Operand,1,Length(Operand)-2));
    if unknown then number:=$FFFF;
    if number<256 then addmode:=3        { LDA $FF,X }
    else if number<65536 then addmode:=6 { LDA $FFFF,X }
    else addmode:=14;                    { LDA $FFFFFF,X }
    Operand:='';
  end;
  if lrOp2=',Y' then
  begin
    unknown:=FALSE;
    number:=GetNumber(Copy(Operand,1,Length(Operand)-2));
    if unknown then number:=$FFFF;
    if number<256 then addmode:=4 else addmode:=7;
    Operand:='';
  end;
  if lrOp2=',S' then
  begin
    unknown:=FALSE;
    number:=GetNumber(Copy(Operand,1,Length(Operand)-2));
    if unknown then number:=$FFFF;
    addmode:=19;
    Operand:='';
  end;

  if Operand<>'' then
  begin
   CPos:=Pos(',',KillQuotes(Operand));
   if CPos>0 then
   begin
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,1,CPos-1));
      if unknown then number:=$FF;
      unknown:=FALSE;
      number2:=GetNumber(Copy(Operand,CPos+1,255));
      if unknown then number:=$FF;
      addmode:=21;
   end else begin { absolute/immediate }
      unknown:=FALSE;
      number:=GetNumber(Operand); operandFlag:=TRUE;
      if unknown then number:=$FFFF;
    end;
  end else begin
    operandFlag:=FALSE;
  end;

{ Adressierungsart ermitteln }
  if addmode=0 then
  begin
    if operandFlag=FALSE then
    begin
      addmode:=0 { implicit }
    end else begin
      if immediate=FALSE then
      begin { absolute }
        if Opcode[MnemoNum, 22]<>NONE16 then addmode:=22 { PER }
        else begin
          if number>65535 then
          begin
            addmode:=12; { abs long }
          end else begin
            if number<256 then addmode:=2 { Zero-Page } else addmode:=5; { absolute }
          end;
        end;
      end else begin
        addmode:=1 { immediate }
      end;
      { implied      (0)
        immediate    (1)
        Zero-Page    (2)
        Zero-Page, X (3)
        Zero-Page, Y (4)
        abs          (5)
        abs, x       (6)
        abs, y       (7)
        ind, x       (8)
        ind, y       (9)
        abs ind      (10)
        rel          (11)
        abs long     (12) *
        dp ind long, y(13)*
        abs long, x  (14) *
        abs ind long (15) *
        dp ind       (16) *
        dp ind long  (17) *
        abs ind, x   (18) *
        stack relative(19)*
        sr ind, y     (20)*
        block move    (21)*
        pc rel long   (22)*
        }
    end;
  end;
  actOpcode:=Opcode[MnemoNum, addmode];
  actCpu:=Opcode[MnemoNum, addmode] shr 8;
  if actCpu=NONE8 then
  begin
    if (addmode>1) and (addmode<5) then
    begin
      { versuchen, einen nicht-Zero-Page-Mode zu finden }
      Inc(addmode,3);
      actOpcode:=Opcode[MnemoNum, addmode];
      if Opcode[MnemoNum, addmode]=NONE16 then Errorstop('(1)Wrong addressing mode!');
    end else begin
      if (addmode=5) and (Opcode[MnemoNum, 11]<>NONE16) then { vielleicht Branch? }
      begin
        addmode:=11;
        actOpcode:=Opcode[MnemoNum, 11];
      end else begin
        Errorstop('(2)Wrong addressing mode!');
      end;
    end;
  end;
  actCpu:=Opcode[MnemoNum, addmode] shr 8;
  if (actCpu=$F) and (not CpuIllegal) then Errorstop('Illegal opcodes only allowed on 6502ILL!');
  if (actCpu<>$F) then if actCpu>Cpu then Errorstop('Statement/addressing mode not allowed on this CPU type!');

  if (RegisterInvolved[MnemoNum]=1) and
     (SizeAccu) and
     (addmode=1) { immediate } then addmode:=5;
  if (RegisterInvolved[MnemoNum]=2) and
     (SizeIndex) and
     (addmode=1) { immediate } then addmode:=5;

  if Pass=1 then { Pass 1, nur Dummy Åbergeben }
  begin
    if addmode=0                      then a:=' ';
    if Pos(Chr(addmode),BYTE2MODES)>0 then a:='  ';
    if Pos(Chr(addmode),BYTE3MODES)>0 then a:='   ';
    if Pos(Chr(addmode),BYTE4MODES)>0 then a:='    ';
  end else begin { Pass 2, echten Objectcode Åbergeben }
{ 0 (0 Bit) }
    if addmode=0 then
    begin
      a:=Chr(actOpCode);
    end;
{ 1, 2, 3, 4, 8, 9, 13, 16, 17, 19, 20 (8 Bit) }
    if Pos(Chr(addmode),BIT8MODES)>0 then
    begin
      if number>255 then Errorstop('Byte > 8 Bit!');
      a:=Chr(actOpcode)+Chr(number);
    end;
{ 5, 6, 7, 10, 15, 18 (16 Bit) }
    if Pos(Chr(addmode),BIT16MODES)>0 then
    begin
      a:=Chr(actOpcode)+Chr(Lo(number))+Chr(Hi(number));
    end;
{ 11 ( 8 Bit relative) }
    if addmode=11 then
    begin
      branch:=number-opaddress-2;
      if (branch<-128) or (branch>127) then Errorstop('Label out of range!');
      branch2:=branch;
      a:=Chr(actOpcode)+Chr(branch2);
    end;
{ 12, 14 (24 Bit) }
    if Pos(Chr(addmode),BIT24MODES)>0 then
    begin
      a:=Chr(actOpcode)+Chr(Lo(number))+Chr(Hi(number))+Chr(HiHi(number));
    end;
{ 21 2x 8 Bit}
    if addmode=21 then
    begin
      if (number>255) or (number2>255) then Errorstop('Byte > 8 Bit!');
      a:=Chr(actOpcode)+Chr(number2)+Chr(number);
    end;
{ 22 ( 16 Bit relative) }
    if addmode=22 then
    begin
      branch:=number-opaddress-3;
      branch3:=branch;
      a:=Chr(actOpcode)+Chr(Lo(branch3))+Chr(Hi(branch3));
    end;
  end;
  Assemble65xx:=a;
end;

function ReadLine: string;
var SText, OText, Len, EndDI: word;
    S: string;
begin
  if SourceIndex>=SourceEnd then
  begin
    ReadLine:='';
  end else begin
    SText:=Seg(SourceText^); OText:=Ofs(SourceText^)+SourceIndex;
    Len:=SOURCEMEM-SourceIndex;
    asm
      mov ax, SText
      mov es, SText
      mov di, OText
      mov cx, Len
      mov al, 0
      repnz scasb
      mov EndDI, di
      mov Len, cx
    end;
    S[0]:=Chr(EndDI-OText-1);
    Move(Ptr(SText,OText)^,Ptr(Seg(S),Ofs(S)+1)^,Ord(S[0]));
    Inc(SourceIndex,EndDI-OText);
    ReadLine:=S;
  end;
end;


{
 ***** 64NET-Routinen (C) MIST
 27.12.1995 SendByte
 28.12.1995 GetByte
 10.08.1996 Bugfixes, Optimierung
}
procedure COPYRIGHT1; assembler;
asm
 ret
 db '*** The 64NET tranfer routines are (c) copyright 1995 Michael Steil ***';
end;

procedure InitPort; assembler;
asm
  mov al, 0 { "nicht bereit" }
  mov dx, 0378h
  out dx, al
end;

procedure getport; assembler;
asm
  mov dx, 0379h
@@getport1:
  in al, dx
  cmp al, ah
  je @@getport2
  mov ah, al
  jmp @@getport1
@@getport2:
  xor al, 128
  mov ah, al
  shr al, 6
  and ah, 32
  shr ah, 3
  or al, ah
end;

procedure WaitForATN; assembler;
asm
@@WaitForATN1:
  call getport
  cmp al, 0
  jne @@WaitForATN1
  mov al, 128
  mov dx, 0378h
  out dx, al
end;

function GetByte: byte;
begin
  asm
@@wfcl1:
  call getport
  test al, 4
  je @@wfcl1    { Auf Clock=1 warten }
  and al, 3
  mov bl, al
  mov al, 10*8  { =%(0)101(0) }
  mov dx, 0378h
  out dx, al
@@wfcl2:
  call getport
  test al, 4
  jne @@wfcl2   { Auf Clock=0 warten }
  and al, 3
  mov bh, al
  mov al, 4*8   { =%(0)010(0) }
  mov dx, 0378h
  out dx, al
@@wfcl3:
  call getport
  test al, 4
  je @@wfcl3    { Auf Clock=1 warten }
  and al, 3
  mov cl, al
  mov al, 12*8  { =%(0)110(0) }
  mov dx, 0378h
  out dx, al
@@wfcl4:
  call getport
  test al, 4
  jne @@wfcl4   { Auf Clock=0 warten }
  and al, 3
  mov ch, al
  mov al, 2*8   { =%(0)001(0) }
  mov dx, 0378h
  out dx, al
  shl ch, 6
  shl cl, 4
  shl bh, 2
  or bl, bh
  or bl, cl
  or bl, ch
  mov @Result, bl
  end;
end;

function GetFilename: string;
var F: string;
    l: byte;
    i: byte;
begin
  F:='';
  l:=GetByte;
  if l>0 then for i:=1 to l do Filename:=Filename+Chr(GetByte);
  GetFilename:=F;
end;

procedure asmsendbyte; assembler;
asm
  push ax
@@wfready1:
  call getport
  cmp al, 4
  jne @@wfready1
  pop ax
  push ax
  shl al, 4
  or al, 8
  dec dx { $0378 }
  out dx, al
@@wfready2:
  call getport
  or al, al
  jne @@wfready2
  pop ax
  and al, 0F0h
  mov dx, 0378h
  out dx, al
end;

procedure SendByte(b: byte);
begin
  asm
    mov al, b
    call asmsendbyte
  end
end;

procedure SendData(a: array of byte; l: byte);
var S, O: word;
begin
   S:=Seg(a); O:=Ofs(a);
  asm
    push ds
    mov ax, S
    mov ds, ax
    mov si, O
    mov cl, l
    mov ch, 0
@@sendstringloop:
    lodsb
    call asmsendbyte
    loop @@sendstringloop
    pop ds
  end;
end;

procedure POKEC64(Addr: word; a: array of byte; l: byte);
begin
  SendByte($FF);
  SendByte(1);
  SendByte(l+1);
  SendByte(Lo(Addr));
  SendByte(Hi(Addr));
  SendData(a,l);
end;

procedure POKELC64(Addr: word; a: array of byte; l: word);
var i: word;
    b: array[0..249] of byte;
begin
  i:=0;
  repeat
    for j:=0 to 249 do b[j]:=a[i+j];
    if l-i>=250 then PokeC64(addr+i,b,250) else PokeC64(addr+i,b,l-i);
    Inc(i,250);
  until i>=l;
end;

procedure Transfer64NET(addr: word; a: array of byte; l: word);
var Filename: string;
begin
  WaitForATN; { 64NET-Server-Initialisierung }
  GetByte; { Befehl }
  Filename:=GetFilename;
  GetByte; { SekundÑradresse }
  POKELC64(Addr, a, l);
{'  EndOfTransmission 0 }
end;

procedure SYS(Addr: word; A,X,Y: byte);
begin
  SendByte($F8);
  SendByte(Lo(Addr));
  SendByte(Hi(Addr));
  SendByte(A);
  SendByte(X);
  SendByte(Y);
  SendByte(0);
end;

{
procedure EndOfTransmission(Status: byte);
begin
  SendByte($FE);
  SendByte(Status);
end;
}

{
 ***** PC64-Routinen (C) MIST
 17.,18.08.1996
}
procedure COPYRIGHT2; assembler;
asm
 ret
 db '*** The PC64 cable tranfer routines are (c) copyright 1996 Michael Steil ***'
end;


procedure PC64SendByte(b: byte); assembler;
label wfC64a, wfC64b;
asm
    mov ah, b
    mov dx, PORT+1
wfC64b:
    in al, dx
    and al, 128
    jne wfC64b  { auf Clock = 0 warten }

    dec dx
    mov al, 128
    out dx, al { NMI vorbereiten }

    mov al, ah
    and al, 15
    out dx, al { Lo-Nybble senden, NMI=1 }

    inc dx
wfC64a:
    in al, dx
    and al, 128
    je wfC64a  { auf Clock = 1 warten }

    dec dx
    mov al, 128
    out dx, al { NMI vorbereiten }
    shr ax, 12
    out dx, al { Hi-Nybble senden, NMI=1 }
end;

procedure PC64SendData(S: array of byte; l: byte);
label wfC64a, wfC64b, SendLoop, lll;
var SSeg, SOfs: word;
begin
  SSeg:=Seg(S); SOfs:=Ofs(S);
  asm
    push ds

    mov cl, l
    mov ch, 0
    mov si, SOfs
    mov ax, SSeg
    mov ds, ax
    mov dx, PORT+1
SendLoop:
    lodsb
    mov ah, al
    mov bl, al
    and bl, 15 { Lo-Nybble nach bl }
wfC64b:
    in al, dx
    and al, 128
    jne wfC64b  { auf Clock = 0 warten }

    dec dx
    mov al, 128
    out dx, al { NMI vorbereiten }

    mov al, bl
    out dx, al { Lo-Nybble senden, NMI=1 }

    shr ah, 4 { Hi-Nybble nach ah }

    inc dx
wfC64a:
    in al, dx
    and al, 128
    je wfC64a  { auf Clock = 1 warten }

    dec dx
{    mov al, 128  al=128! }
    out dx, al { NMI vorbereiten }
    mov al, ah
    out dx, al { Hi-Nybble senden, NMI=1 }
    inc dx

    loop SendLoop

    pop ds
  end;
end;


procedure PC64POKEC64(Addr: word; a: array of byte; l: byte);
begin
  PC64SendByte(0);
  PC64SendByte(l);
  PC64SendByte(Lo(Addr));
  PC64SendByte(Hi(Addr));
  PC64SendData(a,l);
end;

procedure PC64POKELC64(Addr: word; a: array of byte; l: word);
var i: word;
    b: array[0..249] of byte;
begin
  i:=0;
  repeat
    for j:=0 to 249 do b[j]:=a[i+j];
    if l-i>=250 then PC64PokeC64(addr+i,b,250) else PC64PokeC64(addr+i,b,l-i);
    Inc(i,250);
  until i>=l;
end;

procedure PC64SYS(Addr: word; A,X,Y: byte);
begin
  PC64SendByte(1);
  PC64SendByte(Lo(Addr));
  PC64SendByte(Hi(Addr));
  PC64SendByte(X);
  PC64SendByte(Y);
  PC64SendByte(A);
end;

function AssembleZ80(Line: string): string;
label AddmodeOK,addprefixes,indexok;
var ins: byte;
    Mnemo, UMnemo: string;
    Operands, UOperands, Operands2: string;
    Op1, Op2, UOp1, UOp2: string;
    ArrayScan: byte;
    MnemoNum: byte;
    a: string;
    Op: word;
    i, po: byte;
    Addmode: byte;
    reg, reg8, reg16, reg162, reg816, cond: byte;
    reg81, reg82: byte;
    number: word;
    branch: integer;
    branch2: byte;
    Prefix, addbyte: byte;
    addbytepresent: boolean;
begin
  ins:=FindSeparator(Line);
  if ins>0 then
  begin
    Mnemo:=UpCaseStr(Copy(Line,1,ins-1));
    Operands:=Trim(Copy(Line,ins,255));
  end else begin
    Mnemo:=UpCaseStr(Line);
    Operands:='';
  end;
  MnemoNum:=0;
  for ArrayScan:=1 to Z80MNEMOS do
  begin
    if (Z80Mnemo[ArrayScan]=Mnemo) then begin MnemoNum:=ArrayScan; Break; end;
  end;
  if (MnemoNum=0) and (Mnemo<>'LD') and (Mnemo<>'IM') and (Mnemo<>'EX')
                  and (Mnemo<>'RST') and (Mnemo<>'IN') and (Mnemo<>'OUT') then
  begin { vielleicht ein Makro? }
    AssembleZ80:=AssembleMacro(Line);
    if MacroError then Errorstop ('Unknown Mnemo!');
    Exit;
  end;
{
 *** 0 *** ohne Argument                                             OK!
 *** 1 *** A, B/C/D/E/H/L/(HL)/A;  Byte + regA                       OK!
 *** 2 *** A, n                                                      OK!
 *** 3 *** HL, BC/DE/HL/SP;  letztes Byte + regC                     OK!
 *** 4 *** B/C/D/E/H/L/(HL)/A;  letztes Byte + regA                  OK?
 *** 5 *** n                                                         -
 *** 6 *** B/BC/C/D/DE/E/H/HL/L/(HL)/SP/A;  Byte + regD              OK!
 *** 7 *** x, B/C/D/E/H/L/(HL)/A;  letztes Byte + (x*8) + regA       OK!
 *** 8 *** nn                                                        OK?
 *** 9 *** nn; Umsetzung nach relativ!                               -
 *** A *** cond, nn;  Byte + cond                                    OK!
 *** B *** cond, nn;  Byte + cond; Umsetzung nach relativ!           -
 *** C *** cond;  Byte + cond                                        OK!
 *** D *** B/C/D/E/H/L/A,(c);  letztes Byte + regE                   OK!
 *** E *** (c),B/C/D/E/H/L/A;  letztes Byte + regE                   OK!
 *** F *** BC/DE/HL/AF;  Byte + regF                                 OK?
}
  Prefix:=0; addbytepresent:=FALSE;
  { ix und iy durch hl ausdrÅcken }
  Operands2:=UpCaseStr(KillQuotes(Operands));
  i:=Pos('(IX',Operands2); { indirektes IX }
  if i>0 then
  begin
    j:=Pos(')',Copy(Operands2,i+3,255));
    Operands2:=Copy(Operands,i+3,j-1);
    if (Operands2[1]<>'-') and (Operands2[1]<>'+') then Errorstop('+/- required!');
    number:=Getnumber(Copy(Operands2,2,255));
    if Pass=2 then
    begin
      if number>255 then Errorstop('8 Bit!');
      if Operands2[1]='-' then number:=256-number;
    end;
    prefix:=$DD;
    addbyte:=number; addbytepresent:=TRUE;
    Operands:=Copy(Operands,1,i)+'HL'+Copy(Operands,i+j+2,255);
    goto indexok;
  end;
  i:=Pos('(IY',Operands2); { indirektes IY }
  if i>0 then
  begin
    j:=Pos(')',Copy(Operands2,i+3,255));
    Operands2:=Copy(Operands,i+3,i+j-4);
    if (Operands2[1]<>'-') and (Operands2[1]<>'+') then Errorstop('+/- required!');
    number:=Getnumber(Copy(Operands2,2,255));
    if Pass=2 then
    begin
      if number>255 then Errorstop('8 Bit!');
      if Operands2[1]='-' then number:=256-number;
    end;
    prefix:=$FD;
    addbyte:=number; addbytepresent:=TRUE;
    Operands:=Copy(Operands,1,i)+'HL'+Copy(Operands,i+j+2,255);
    goto indexok;
  end;
  i:=Pos('IX',Operands2); { direktes IX }
  if i>0 then
  begin
    Operands:=Copy(Operands,1,i-1)+'HL'+Copy(Operands,i+2,255);
    prefix:=$DD
  end;
  i:=Pos('IY',Operands2); { direktes IY }
  if i>0 then
  begin
    Operands:=Copy(Operands,1,i-1)+'HL'+Copy(Operands,i+2,255);
    prefix:=$FD
  end;



indexok:
  { Besondere Mnemos }
  UMnemo:=UpCaseStr(Mnemo); UOperands:=UpCaseStr(Operands);
  if UMnemo='LD' then { ld }
  begin
    i:=Pos(',',Operands);
    if i=0 then ErrorStop('Syntax: LD reg/mem,reg/mem');
    Op1:=Trim(Copy(Operands,1,i-1));
    Op2:=Trim(Copy(Operands,i+1,255));
    UOp1:=UpCaseStr(Op1); UOp2:=UpCaseStr(Op2);
    reg81:=$FF;
    for i:=0 to Z80REG8s-1 do
    begin
     if UOp1=Z80Reg8[i] then begin reg81:=i; Break; end;
    end;
    reg82:=$FF;
    for i:=0 to Z80REG8s-1 do
    begin
     if UOp2=Z80Reg8[i] then begin reg82:=i; Break; end;
    end;
    if (reg81<>$FF) and (reg82<>$FF) then { reg8,reg8 }
    begin
      if (reg81=6) and (reg82=6) then Errorstop('Invalid combination: LD (HL),(HL)');
      a:=Chr($40+reg81*8+reg82); goto addprefixes;
    end;
    if reg81=7 then { a,... }
    begin
      if UOp2='(BC)' then begin a:=Chr($0A); goto addprefixes; end;
      if UOp2='(DE)' then begin a:=Chr($1A); goto addprefixes; end;
      if UOp2='I' then begin a:=Chr($ED)+Chr($57); goto addprefixes; end;
      if UOp2='R' then begin a:=Chr($ED)+Chr($5F); goto addprefixes; end;
      if (UOp2[1]='(') and (UOp2[Length(UOp2)]=')') then
      begin
        number:=Getnumber(Copy(Op2,2,Length(Op2)-2));
        if Pass=1 then
          a:='   '
        else
          a:=Chr($3A)+Chr(lo(number))+Chr(hi(number));
        goto addprefixes;
      end;
    end;
    if reg82=7 then { ...,a }
    begin
      if UOp1='(BC)' then begin a:=Chr($02); goto addprefixes; end;
      if UOp1='(DE)' then begin a:=Chr($12); goto addprefixes; end;
      if UOp1='I' then begin a:=Chr($ED)+Chr($47); goto addprefixes; end;
      if UOp1='R' then begin a:=Chr($ED)+Chr($4F); goto addprefixes; end;
      if (UOp1[1]='(') and (UOp1[Length(UOp1)]=')') then
      begin
        number:=Getnumber(Copy(Op1,2,Length(Op1)-2));
        if Pass=1 then
          a:='   '
        else
          a:=Chr($32)+Chr(lo(number))+Chr(hi(number));
        goto addprefixes;
      end;
    end;
    if (UOp1[1]='(') and (UOp1[Length(UOp1)]=')') then
    begin
      if UOp2='BC' then begin number:=Getnumber(Copy(Op1,2,Length(Op1)-2));
                              a:=Chr($ED)+Chr($43)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
      if UOp2='DE' then begin number:=Getnumber(Copy(Op1,2,Length(Op1)-2));
                              a:=Chr($ED)+Chr($53)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
      if UOp2='HL' then begin number:=Getnumber(Copy(Op1,2,Length(Op1)-2));
                              a:=Chr($22)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
      if UOp2='SP' then begin number:=Getnumber(Copy(Op1,2,Length(Op1)-2));
                              a:=Chr($ED)+Chr($73)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
    end;
    if (UOp2[1]='(') and (UOp2[Length(UOp2)]=')') then
    begin
      if UOp1='BC' then begin number:=Getnumber(Copy(Op2,2,Length(Op2)-2));
                              a:=Chr($ED)+Chr($4B)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
      if UOp1='DE' then begin number:=Getnumber(Copy(Op2,2,Length(Op2)-2));
                              a:=Chr($ED)+Chr($5B)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
      if UOp1='HL' then begin number:=Getnumber(Copy(Op2,2,Length(Op2)-2));
                              a:=Chr($2A)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
      if UOp1='SP' then begin number:=Getnumber(Copy(Op2,2,Length(Op2)-2));
                              a:=Chr($ED)+Chr($7B)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
    end;
    number:=Getnumber(Op2);
    if reg81<>$FF then
    begin
      if (Pass=2) and (number>255) then Errorstop('8 Bit!');
      a:=Chr($06+reg81*8)+Chr(number);
      goto addprefixes;
    end;
    if UOp1='BC' then begin a:=Chr($01)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
    if UOp1='DE' then begin a:=Chr($11)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
    if UOp1='HL' then begin a:=Chr($21)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
    if UOp1='SP' then begin a:=Chr($31)+Chr(lo(number))+Chr(hi(number)); goto addprefixes; end;
  end;
  if (UMnemo='JP') and (UOperands='(HL)') then begin a:=Chr($E9); goto addprefixes; end;
  if UMnemo='IM' then
  begin
    if Operands='0' then begin a:=Chr($ED)+Chr($46); goto addprefixes; end;
    if Operands='1' then begin a:=Chr($ED)+Chr($56); goto addprefixes; end;
    if Operands='2' then begin a:=Chr($ED)+Chr($5E); goto addprefixes; end;
    Errorstop('Syntax: IM 0/1/2');
  end;
  if UMnemo='EX' then
  begin
    i:=Pos(',',Operands);
    if i=0 then ErrorStop('Syntax: EX op1,op2');
    Op1:=Trim(Copy(Operands,1,i-1));
    Op2:=Trim(Copy(Operands,i+1,255));
    UOp1:=UpCaseStr(Op1); UOp2:=UpCaseStr(Op2);
    if (UOp1='(SP)') and (UOp2='HL') then begin a:=Chr($E3); goto addprefixes; end;
    if (UOp1='AF') and (UOp2='AF''') then begin a:=Chr($08); goto addprefixes; end;
    if (UOp1='DE') and (UOp2='HL') then begin a:=Chr($EB); goto addprefixes; end;
  end;
  if UMnemo='RST' then
  begin
    number:=Getnumber(Operands);
    if (number and 7>0) or (number>$38) then Errorstop('Syntax: RST 0/8/10/18/20/28/30/38');
    a:=Chr($C7+number);
    goto addprefixes;
  end;
  if UMnemo='IN' then
  begin
    i:=Pos(',',Operands);
    if i<>0 then
    begin
      Op1:=Trim(Copy(Operands,1,i-1));
      Op2:=Trim(Copy(Operands,i+1,255));
      UOp1:=UpCaseStr(Op1); UOp2:=UpCaseStr(Op2);
      if (UOp1='A') and (UOp2[1]='(') and (UOp2[Length(UOp2)]=')') and (UOp2<>'(C)') then
      begin
        number:=Getnumber(Copy(Op2,2,Length(Op2)-2));
        if number>255 then Errorstop('8 Bit!');
        a:=Chr($DB)+Chr(number);
        goto addprefixes;
      end;
    end;
  end;
  if UMnemo='OUT' then
  begin
    i:=Pos(',',Operands);
    if i<>0 then
    begin
      Op1:=Trim(Copy(Operands,1,i-1));
      Op2:=Trim(Copy(Operands,i+1,255));
      UOp1:=UpCaseStr(Op1); UOp2:=UpCaseStr(Op2);
      if (UOp2='A') and (UOp1[1]='(') and (UOp1[Length(UOp1)]=')') and (UOp1<>'(C)') then
      begin
        number:=Getnumber(Copy(Op1,2,Length(Op1)-2));
        if number>255 then Errorstop('8 Bit!');
        a:=Chr($D3)+Chr(number);
        goto addprefixes;
      end;
    end;
  end;

  { In Tabellen erfa·te Mnemos }
  if Operands='' then { Addmode 0 }
  begin
    Addmode:=0;
  end else begin { Parameter vorhanden }
    if UpCaseStr(Copy(Operands,Length(Operands)-2,3))='(C)' then { Addmode D }
    begin
      Operands:=Trim(Copy(Operands,1,Length(Operands)-3));
      if (Operands[Length(Operands)]<>',') then ErrorStop('Syntax: B/C/D/E/H/L/A,(C)');
      Operands:=UpCaseStr(Trim(Copy(Operands,1,Length(Operands)-1)));
      reg:=$FF;
      for i:=0 to Z80REGs-1 do
      begin
        if Operands=Z80Reg[i] then begin reg:=i; Break; end;
      end;
      if reg=$FF then ErrorStop('Syntax: B/C/D/E/H/L/A,(C)');
      Addmode:=$D;
      goto AddmodeOK
    end;
    if UpCaseStr(Copy(Operands,1,3))='(C)' then { Addmode E }
    begin
      Operands:=Trim(Copy(Operands,4,255));
      if (Operands[1]<>',') or (Length(Operands)=0) then ErrorStop('Syntax: (C),B/C/D/E/H/L/A');
      Operands:=UpCaseStr(Trim(Copy(Operands,2,255)));
      reg:=$FF;
      for i:=0 to Z80REGs-1 do
      begin
        if Operands=Z80Reg[i] then begin reg:=i; Break; end;
      end;
      if reg=$FF then ErrorStop('Syntax: B/C/D/E/H/L/A,(C)');
      Addmode:=$E;
      goto AddmodeOK
    end;
    if UpCaseStr(Copy(Operands,1,2))='A,' then { Addmode 1 oder 2 }
    begin
      Operands:=UpCaseStr(Trim(Copy(Operands,3,255)));
      reg8:=$FF;
      for i:=0 to Z80REG8s-1 do
      begin
        if Operands=Z80Reg8[i] then begin reg8:=i; Break; end;
      end;
      if reg8<>$FF then
      begin { Addmode 1 }
        Addmode:=1;
      end else begin
        Addmode:=2;
        number:=GetNumber(Operands);
      end;
      goto AddmodeOK
    end;
    if UpCaseStr(Copy(Operands,1,3))='HL,' then { Addmode 3 }
    begin
      Operands:=UpCaseStr(Trim(Copy(Operands,4,255)));
      reg16:=$FF;
      for i:=0 to Z80REG16s-1 do
      begin
        if Operands=Z80Reg16[i] then begin reg16:=i; Break; end;
      end;
      if reg16=$FF then ErrorStop('Syntax: HL, BC/DE/HL/SP');
      Addmode:=3;
      goto AddmodeOK
    end;
    if (Operands[1]>='0') and (Operands[1]<='9') and (Operands[2]=',') and (Length(Operands)>1) then
    begin { Addmode 7 }
      Operands:=UpCaseStr(Trim(Copy(Operands,3,255)));
      reg8:=$FF;
      for i:=0 to Z80REG8s-1 do
      begin
        if Operands=Z80Reg8[i] then begin reg8:=i; Break; end;
      end;
      if reg8<>$FF then
      begin
        Addmode:=7;
        number:=Ord(Operands[1])-48;
      end else begin
        Errorstop('Syntax: ?, B/C/D/E/H/L/(HL)/A');
      end;
      goto AddmodeOK
    end;
    { Auf Addmode 4 testen }
    Operands2:=UpCaseStr(Operands);
    reg8:=$FF;
    for i:=0 to Z80REG8s-1 do
    begin
      if Operands2=Z80Reg8[i] then begin reg8:=i; Break; end;
    end;
    if reg8<>$FF then
    begin { Addmode 4 }
      Addmode:=4;
      goto AddmodeOK;
    end;
    { Auf Addmode F testen }
    reg162:=$FF;
    for i:=0 to Z80REG162s-1 do
    begin
      if Operands2=Z80Reg162[i] then begin reg162:=i; Break; end;
    end;
    if reg162<>$FF then
    begin { Addmode F }
      Addmode:=$F;
      goto AddmodeOK;
    end;
    { Auf Addmode 6 testen }
    reg816:=$FF;
    for i:=0 to Z80REG816s-1 do
    begin
      if Operands2=Z80Reg816[i] then begin reg816:=i; Break; end;
    end;
    if reg816<>$FF then
    begin { Addmode 6 }
      Addmode:=6;
      goto AddmodeOK;
    end;
    { Auf Addmode A,B,C (cond) testen }
    po:=Pos(',',Operands);
    if (po>0) or (Length(Operands)<=2) then
    begin
      if po=0 then po:=255;
      Operands2:=UpCaseStr(Trim(Copy(Operands,1,po-1)));
      cond:=$FF;
      for i:=0 to Z80CONDs-1 do
      begin
        if Operands2=Z80COND[i] then begin cond:=i; Break; end;
      end;
      if cond<>$FF then
      begin
        if po=255 then
        begin
          Addmode:=$C
        end else begin
          number:=Getnumber(Trim(Copy(Operands,po+1,255)));
          Addmode:=$A;
        end;
        goto AddmodeOK;
      end;
    end;
    { nichts gefunden, dann absolut, Addmode 8 }
    Addmode:=8;
    number:=Getnumber(Operands);
  end;
AddmodeOK:
{ Opcode suchen }
  MnemoNum:=0;
  for ArrayScan:=1 to Z80MNEMOS do
  begin
    if (Z80Mnemo[ArrayScan]=Mnemo) and (Z80Addmode[ArrayScan]=Addmode) then begin MnemoNum:=ArrayScan; Break; end;
  end;
  if MnemoNum=0 then
  begin
    if Addmode=8 then begin Addmode:=9; goto AddmodeOK; end;
    if Addmode=9 then begin Addmode:=5; goto AddmodeOK; end;
    if Addmode=$A then begin Addmode:=$B; goto AddmodeOK; end;
    if Addmode=4 then
    begin
      Addmode:=6;
      { Konvertierung der Registernummer von REG8 nach REG816! }
      reg816:=Z80REGCONV1[reg8];
      goto AddmodeOK;
    end;
    if Addmode=$F then
    begin
      Addmode:=6;
      { Konvertierung der Registernummer von REG162 nach REG816! }
      reg816:=Z80REGCONV2[reg162];
      if reg816<>$FF then goto AddmodeOK; { sonst schlug Reg.-Konv. fehl }
    end;
    Errorstop('Unknown Addressing Mode');
  end;
  Op:=Z80Opcode[MnemoNum];
  if Op>255 then a:=Chr(Op and 255)+Chr(Op shr 8) else a:=Chr(Op);
  case Addmode of
  1:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+reg8);
    end;
  2:
    begin
      if Pass=2 then
      begin
        if number>255 then Errorstop('8 Bit!');
        a:=a+Chr(number);
      end else begin
        a:=a+' ';
      end;
    end;
  3:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+reg16*$10);
    end;
  4:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+reg8);
    end;
  5:
    begin
      if Pass=2 then
      begin
        if number>255 then Errorstop('8 Bit!');
        a:=a+Chr(number);
      end else begin
        a:=a+' ';
      end;
    end;
  6:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+Z80OPCODECONV[reg816]);
    end;
  7:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+number*8+reg8);
    end;
  8:
    begin
      if Pass=2 then
      begin
        a:=a+Chr(number and 255)+Chr(number shr 8);
      end else begin
        a:=a+'  ';
      end;
    end;
  9:
    begin
      if Pass=2 then
      begin
        branch:=number-opaddress-2;
        if (branch<-128) or (branch>127) then Errorstop('Label out of range!');
        branch2:=branch;
        a:=a+Chr(branch2);
      end else begin
        a:=a+' ';
      end;
    end;
  $A:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+cond*8);
      if Pass=2 then
      begin
        a:=a+Chr(number and 255)+Chr(number shr 8);
      end else begin
        a:=a+'  ';
      end;
    end;
  $B:
    begin
      if (UMnemo='JR') and (cond>3) then Errorstop('Invalid condition for JR');
      a[Length(a)]:=Chr(Ord(a[Length(a)])+cond*8);
      if Pass=2 then
      begin
        branch:=number-opaddress-2;
        if (branch<-128) or (branch>127) then Errorstop('Label out of range!');
        branch2:=branch;
        a:=a+Chr(branch2);
      end else begin
        a:=a+' ';
      end;
    end;
  $C:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+cond*8);
    end;
  $D:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+reg*8);
    end;
  $E:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+reg*8);
    end;
  $F:
    begin
      a[Length(a)]:=Chr(Ord(a[Length(a)])+reg162*$10);
    end;
  end;
addprefixes:
  if ((Mnemo='ADC') or (Mnemo='SBC')) and (prefix>0) and (addbytepresent=FALSE) then Errorstop('ix/iy not allowed here!');
  if (a=Chr($EB)) and (prefix>0) then Errorstop('ix/iy not allowed here!'); { der Teufel wei·, warum }
  if prefix>0 then a:=Chr(prefix)+a;
  if addbytepresent then a:=a+Chr(addbyte);
  AssembleZ80:=a;
end;

function Assemble(curL: string): string;
label codeok;
var Operand2,b: string;
begin
  a:='';
  if curL[1]='.' then { Pseudo-Opcode }
  begin
    curL:=Copy(curL,2,255);
    ins:=FindSeparator(curL);
    if ins>0 then
    begin
      Pseudo:=Copy(curL,1,ins-1);
      Operand:=Trim(Copy(CurL,ins,255));
    end else begin
      Pseudo:=curL; Operand:='';
    end;
    Pseudo:=UpCaseStr(Copy(Pseudo,1,2));
    PseudoOK:=FALSE;
    if Pseudo='RL' then { Index-Register auf 16 Bit }
    begin
      if Cpu<>2 then Errorstop('Only supported by 65802/65816!');
      PseudoOK:=TRUE;
      SizeIndex:=TRUE;
    end;
    if Pseudo='RS' then { Index-Register auf 8 Bit }
    begin
      PseudoOK:=TRUE;
      SizeIndex:=FALSE;
    end;
    if Pseudo='AL' then { Akku auf 16 Bit }
    begin
      if Cpu<>2 then Errorstop('Only supported by 65802/65816!');
      PseudoOK:=TRUE;
      SizeAccu:=TRUE;
    end;
    if Pseudo='AS' then { Akku auf 8 Bit }
    begin
      PseudoOK:=TRUE;
      SizeAccu:=FALSE;
    end;
    if Pseudo='CP' then { .CPU }
    begin
      PseudoOK:=TRUE;
      CpuIllegal:=FALSE;
      if Operand='6502' then begin Cpu:=0; PseudoOK:=TRUE; end;
      if Copy(UpCaseStr(Operand),1,7)='6502ILL' then begin Cpu:=1; CpuIllegal:=TRUE; PseudoOK:=TRUE; end;
      if UpCaseStr(Operand)='65C02' then begin Cpu:=1; PseudoOK:=TRUE; end;
      if (Operand='65816') or (Operand='65802') then begin Cpu:=2; PseudoOK:=TRUE; end;
      if UpCaseStr(Operand)='Z80' then begin Cpu:=80; PseudoOK:=TRUE; end;
      if not PseudoOK then Errorstop('Supported CPUs: 6502,6502ILL,65C02,65802/65816/Z80!');
    end;
    if Pseudo='PE' then begin AsciiFlag:=0; PseudoOK:=TRUE; end;
    if Pseudo='AS' then begin AsciiFlag:=1; PseudoOk:=TRUE; end;
    if (Pseudo='BA') or (Pseudo='OR') or (Pseudo='SE') then
    begin { .ba oder .org oder .setpc }
      PseudoOK:=TRUE;
      unknown:=FALSE;
      number:=GetNumber(Operand);
      SetLabel('*',number);
    end;
    if Pseudo='ST' then { .start }
    begin
      PseudoOK:=TRUE;
      unknown:=FALSE;
      number:=GetNumber(Operand);
      startjumpaddress:=number;
      Transfer:=Transfer or 128; { bei Transfer Start einschalten }
    end;
    if Pseudo='OB' then { .object }
    begin
      PseudoOK:=TRUE;
      if Operand='' then Errorstop('Filename required!');
      if Operand[1]='"' then Operand:=Copy(Operand,2,255);
      if Operand[Length(Operand)]='"' then Operand[0]:=Chr(Length(Operand)-1);
      if Copy(Operand,1,2)='@:' then Operand:=Copy(Operand,3,255);
      ins:=Pos(',',Operand);
      if ins>0 then begin
        a:=UpCaseStr(Copy(Operand,ins+1,1));
        Operand:=Copy(Operand,1,ins-1);
        if a='P' then Operand:=Operand+'.PRG';
        if a='S' then Operand:=Operand+'.SEQ';
        if a='U' then Operand:=Operand+'.USR';
        a:=''; { nur als Hilfsvariable benutzt }
      end;
      SaveName:=Operand;
      SaveAs:=2;
    end;
    if (Pseudo='BR') or (Pseudo='DS') then { .br oder .ds (define storage) }
    begin
      PseudoOK:=TRUE;
      ins:=Pos(',',Operand);
      if ins=0 then Errorstop('At least two operands required!');
      if Pos(',',Copy(Operand,ins+1,255))>0 then Errorstop('Too many operands!');
      unknown:=FALSE;
      times:=GetNumber(Copy(Operand,1,ins-1));
      if unknown or (times=0) then Errorstop('Repeat number error!');
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,ins+1,255));
      if unknown then number:=0;
      if number>256 then Errorstop('Byte > 8 Bit!');
      if not basedefined then Errorstop('Base missing!');
      if Pass=2 then begin
        if ocodeIndex+times>MAXOCODE then Errorstop('Object code overflow!');
        for i:=0 to Times-1 do ocode[ocodeIndex+i]:=number;
        Inc(ocodeIndex,Times);
      end;
      Inc(opaddress,Times);
      a:='';
    end;
    if (Pseudo='BY') or (Pseudo='DB') or (Pseudo='B') then
    begin
      PseudoOK:=TRUE;
      insold:=1;
      Operand:=Operand+',';
      a:='';
      repeat
        ins:=Pos(',',KillQuotes(Copy(Operand,insold,255)));
        if ins=0 then Break; {! .by ohne Parameter -> Fehler! }
        unknown:=FALSE;
        Operand2:=Copy(Operand,insold,ins-1);
        if (Operand2[1]='"') and (Operand2[Length(Operand2)]='"') then
        { ASCII-String }
        begin
          b:=Copy(Operand2,2,Length(Operand2)-2);
          if (AsciiFlag=0) and (Pass=2) then b:=SPetscii(b);
          a:=a+b;
        end else begin
          number:=GetNumber(Operand2);
          if unknown then number:=0;
          if number>256 then Errorstop('Byte > 8 Bit!');
          a:=a+Chr(number);
        end;
        insold:=insold+ins;
      until FALSE;
    end;
    if (Pseudo='LA') or (Pseudo='EQ') then { .la oder .equate }
    begin
      PseudoOK:=TRUE;
      ins:=Pos('=',Operand);
      if ins=0 then Errorstop('"=" expected');
      unknown:=FALSE;
      number:=GetNumber(Copy(Operand,ins+1,255));
      if unknown=FALSE then SetLabel(Trim(UpCaseStr(Copy(Operand,1,ins-1))), number);
      { wenn Value nicht bekannt, Zuweisung ignorieren }
    end;
    if (Pseudo='TX') or (Pseudo='TE') then { .tx oder .text }
    begin
      PseudoOK:=TRUE;
      if Operand[1]<>QUOTE then ErrorStop('Quote expected!');
      a:=Copy(Operand,2,255);
      if a[Length(a)]=QUOTE then a[0]:=Chr(Length(a)-1);
      { nach Petscii {!Bug in ASS16.BAS?}
      if (AsciiFlag=0) and (Pass=2) then a:=SPetscii(a);
    end;
    if Pseudo='TS' then { Screencode }
    begin
      PseudoOK:=TRUE;
      if Operand[1]<>QUOTE then ErrorStop('Quote expected!');
      a:=Copy(Operand,2,255);
      if a[Length(a)]=QUOTE then a[0]:=Chr(Length(a)-1);
      a:=SPetscii(a);
      a:=SScrCode(a);
    end;
    if (Pseudo='WO') or (Pseudo='DW') or (Pseudo='W') then
    begin
      PseudoOK:=TRUE;
      insold:=1;
      Operand:=Operand+',';
      a:='';
      repeat
        ins:=Pos(',',Copy(Operand,insold,255));
        if ins=0 then Break; {! .by ohne Parameter -> Fehler! }
        unknown:=FALSE;
        number:=GetNumber(Copy(Operand,insold,ins-1));
        if unknown then number:=0;
        a:=a+Chr(Lo(number))+Chr(Hi(number));
        insold:=insold+ins;
      until FALSE;
    end;
    if Pseudo='MA' then { macro }
    begin
      PseudoOK:=TRUE;
      if Pass=1 then
      begin
        ins:=FindSeparator(Operand);
        if ins=0 then
        begin
          actMacroName:=Operand;
          actMacroOperand:='';
        end else begin
          actMacroName:=Copy(Operand,1,ins-1);
          actMacroOperand:=Copy(Operand,ins+1,255);
        end;
        ArrayFound:=FALSE;
        if Macros>0 then for ArrayScan:=0 to Macros do
                         begin
                           if MacroName[ArrayScan]=actMacroName then begin help:=ArrayScan; ArrayFound:=TRUE; Break; end;
                         end;
        if ArrayFound then Errorstop('Macro already defined!');
	MacroName[Macros]:=actMacroName;
        MacroOperand[Macros]:=actMacroOperand;
	Inc(i);
        MacroSourceIndex:=0;
        repeat
          CurL:=ReadLine;
          if CurL='' then Errorstop('End of macro expected!');
          if UpCaseStr(Copy(CurL,1,3))='.EN' then Break;
          { Zeile in Makro-Quelltext kopieren }
          Move(Ptr(Seg(CurL),Ofs(CurL)+1)^,
               Ptr(Seg(MacroSourceText[Macros]),
               Ofs(MacroSourceText[Macros])+MacroSourceIndex)^,
               Length(CurL));
          Inc(MacroSourceIndex,Length(CurL)+1);
          MacroSourceText[Macros,SourceIndex-1]:=0;
          Inc(i);
        until FALSE;
        MacroSourceEnd[Macros]:=MacroSourceIndex;
        Inc(Macros);
      end else begin { im Pass 2 Åberspringen }
        Inc(i);
        repeat
        if UpCaseStr(Copy(ReadLine,1,3))='.EN' then Break;
        Inc(i);
      until FALSE;
      end;
    end;
    if Pseudo='IF' then { .if, bedingte Assemblierung }
    begin
      PseudoOK:=TRUE;
      ins:=Pos('=',Operand);
      number:=GetNumber(Copy(Operand,1,ins-1));
      number2:=GetNumber(Copy(Operand,ins+1,255));
      if number<>number2 then begin
        repeat
          CurL:=ReadLine;
          if CurL='' then Errorstop('End if expected!');
        until UpCaseStr(Copy(CurL,1,3))='.EN';
      end else begin
        IgnoreNextEnd:=True;
      end;
    end;
    if Pseudo='CO' then { .comment, mehrzeiliger Kommentar }
    begin
      PseudoOK:=TRUE;
      repeat
        CurL:=ReadLine;
        if CurL='' then Errorstop('End if expected!');
      until UpCaseStr(Copy(CurL,1,3))='.EN';
    end;
    if Pseudo='LO' then
    begin
      if Operand='' then Errorstop('Filename required');
      if Operand[1]='"' then Operand:=Copy(Operand,2,255);
      i:=Pos('"',Operand); if i=0 then i:=255;
      a:=Copy(Operand,1,i-1); Operand:=Copy(Operand,i+1,255);
      if Operand<>'' then begin
        if Operand[1]<>',' then Errorstop('"," expected!');
        number:=GetNumber(Copy(Operand,2,255));
      end else begin
        number:=$FFFF;
      end;
      if Length(Loads)+Length(a)+2>254 then Errorstop('Too many files to load!');
      if Pass=2 then Loads:=Loads+a+#0+Chr(Lo(number))+Chr(Hi(number));
      a:='';
      PseudoOK:=TRUE;
    end;
    if not PseudoOK then Errorstop('Unknown pseudo opcode!');
    goto codeok;
  end;
  if curL[Length(curL)]=COLON then { Label definieren }
  begin
    SetLabel(UpCaseStr(Copy(curL,1,Length(curL)-1)),opaddress);
    Assemble:=''; Exit;
  end;
  if CPU=80 then a:=AssembleZ80(curL) else a:=Assemble65xx(curL);
codeok:
  Assemble:=a;
end;

{ Main }

begin
  COPYRIGHT1; COPYRIGHT2; { nur Dummies }
  InitPort;

  New(SourceText);


  { Co:=Environ$("6502")+" "+Command$+" " }

  Writeln;
  Writeln('MXASS       6502/65816/Z80 X-Assembler      Version 0.27d   03-21-98');
  Writeln('Copr. 1995-1998 Michael Steil. All rights reserved.');
  Writeln;

  ASSDirectory:=ParamStr(0);
  i:=Length(ASSDirectory);
  repeat
    if ASSDirectory[i]='\' then
    begin
      ASSDirectory:=Copy(ASSDirectory,1,i);
      Break;
    end;
    Dec(i);
  until i=0;

{ Kommandozeile parsen }
  ParameterFile:=''; Transfer:=0; SaveAs:=0; Symbols:=FALSE;
  for i:=1 to ParamCount do
  begin
    if ParamStr(i)='' then Continue;
    if Pos(Copy(ParamStr(i),1,1), SWITCHES)>0 then
    begin
      SwitchParameter:=UpCaseStr(Copy(ParamStr(i),2,255));
      SwitchOK:=FALSE;
      if SwitchParameter='64NET' then begin Transfer:=(Transfer and 128)+1; SwitchOK:=TRUE; end;
      if SwitchParameter='PC64' then begin Transfer:=(Transfer and 128)+2; SwitchOK:=TRUE; end;
      if SwitchParameter='TRANSFER-' then begin Transfer:=0; SwitchOK:=TRUE; end;
      if SwitchParameter='START' then begin Transfer:=Transfer or 128; SwitchOK:=TRUE; end;
      if SwitchParameter='START-' then begin Transfer:=Transfer and 127; SwitchOK:=TRUE; end;
      if SwitchParameter='OCODE' then begin SaveAs:=1; SwitchOK:=TRUE; end;
      if SwitchParameter='PRG' then begin SaveAs:=2; SwitchOK:=TRUE; end;
      if SwitchParameter='P00' then begin SaveAs:=3; SwitchOK:=TRUE; end;
      if SwitchParameter='N64' then begin SaveAs:=4; SwitchOK:=TRUE; end;
      if SwitchParameter='D64' then begin SaveAs:=5; SwitchOK:=TRUE; end;
      if SwitchParameter='T64' then begin SaveAs:=6; SwitchOK:=TRUE; end;
      if SwitchParameter='C64' then begin SaveAs:=7; SwitchOK:=TRUE; end;
      if SwitchParameter='SHOW' then begin Show:=TRUE; SwitchOK:=TRUE; end;
      if SwitchParameter='SHOW-' then begin Show:=FALSE; SwitchOK:=TRUE; end;
      if SwitchParameter='SYM' then begin Symbols:=TRUE; SwitchOK:=TRUE; end;
      if SwitchParameter='SYM-' then begin Symbols:=FALSE; SwitchOK:=TRUE; end;
      if not SwitchOK then
      begin
        Writeln('Unknown switch -',SwitchParameter,'!');
        Halt;
      end;
    end else begin
      ParameterFile:=ParamStr(i);
    end;
  end;

  if Transfer=128 then begin Writeln('No transfer cable specified!'); Halt; end;
  if ParameterFile='' then
  begin
    Writeln('Usage:  MXASS [-options] filename[.ASM]'); Writeln;
    Writeln('Valid options: (*) = default');
    Writeln('  -64net     The object code will be transferred to a C64 via the 64NET cable');
    Writeln('  -pc64      The object code will be transferred to a C64 via the PC64 cable');
    Writeln('  -transfer- The object code will not be transferred to a C64 (*)');
    Writeln('  -start     The program will be started on the C64 after transfer');
    Writeln('  -start-    The program will not be started on the C64 after transfer (*)');
    Writeln('  -ocode     The object code will be written to disk as a binary file with the');
    Writeln('             extention .OBJ');
    Writeln('  -prg       The object code will be written to disk as a binary file with the');
    Writeln('             extention .PRG containing the load address at the beginning');
    Writeln('  -p00       The object code will be written to disk as a Personal C64 P00-file');
    Writeln('  -n64       The object code will be written to disk as a 64NET N64-file');
{    Writeln('  -d64       The object code will be written to disk as a D64-file as used by');
    Writeln('             several emulators');
    Writeln('  -t64       The object code will be written to disk as a C64S T64-file');
    Writeln('  -c64       The object code will be written to disk as a Personal C64 C64-file');}
    Writeln('  -show      Every line being assembled will be shown on the screen');
    Writeln('  -show-     Quiet mode (*)');
    Writeln('  -sym       The program symbols will be written to disk as a text file with');
    Writeln('             the extention .SYM');
    Writeln('  -sym-      The program symbols will not be written to disk (*)');


    Halt;
  end;
  ins:=Pos('.',ParameterFile);
  repeat
    ins2:=Pos('.',Copy(ParameterFile,ins+1,255));
    if ins2<>0 then ins:=ins+ins2
  until ins2=0;
  if (ins>0) and (ins+4>Length(ParameterFile)) then begin
    Filename:=Copy(ParameterFile,1,ins);
  end else begin
    Filename:=ParameterFile+'.';
    ParameterFile:=ParameterFile+'.ASM';
  end;

  { Z80-Opcodes einlesen }
  Assign(OpcodesFile,OPCODESFILENAMEZ80);   { existiert separate Datei?    }
  {$I-} Reset(OpcodesFile,1); {$I+}
  if IOResult>0 then                     { nein, dann aus EXE-Overlay   }
  begin                                  { laden (funktioniert nicht in }
    Assign(OpcodesFile,ParamStr(0));     { der Entwicklungsumgebung!)   }
    {$I-} Reset(OpcodesFile,1); {$I+}
    if IOResult>0 then
    begin
      Writeln('MXASS.EXE is corrupt!');
      Halt;
    end;
    Seek(OpcodesFile,FileSize(OpcodesFile)-OPCODESFILELENGTH-OPCODESFILELENGTHZ80);
  end;
  for i:=1 to Z80MNEMOS do
  begin
    BlockRead(OpcodesFile,Ptr(Seg(Z80Mnemo[i]),Ofs(Z80Mnemo[i])+1)^,4);
    BlockRead(OpcodesFile,Z80Addmode[i],1);
    BlockRead(OpcodesFile,Z80Opcode[i],2);
    Z80Mnemo[i][0]:=#4;
    while Z80Mnemo[i][Length(Z80Mnemo[i])]=' ' do Z80Mnemo[i][0]:=Chr(Ord(Z80Mnemo[i][0])-1)
  end;
  Close(OpcodesFile);

  { 65xx-Opcodes einlesen }
  Assign(OpcodesFile,OPCODESFILENAME);   { existiert separate Datei?    }
  {$I-} Reset(OpcodesFile,1); {$I+}
  if IOResult>0 then                     { nein, dann aus EXE-Overlay   }
  begin                                  { laden (funktioniert nicht in }
    Assign(OpcodesFile,ParamStr(0));     { der Entwicklungsumgebung!)   }
    {$I-} Reset(OpcodesFile,1); {$I+}
    if IOResult>0 then
    begin
      Writeln('MXASS.EXE is corrupt!');
      Halt;
    end;
    Seek(OpcodesFile,FileSize(OpcodesFile)-OPCODESFILELENGTH);
  end;
  NumberOfMnemos:=1;
  repeat
    BlockRead(OpcodesFile, OpcodesHelp, (ADDMODES shl 1)+4, BytesRead);
    if BytesRead=0 then Break;
    Mnemo[NumberOfMnemos]:=Chr(OpcodesHelp[0])+Chr(OpcodesHelp[1])+Chr(OpcodesHelp[2]);
    RegisterInvolved[NumberOfMnemos]:=OpcodesHelp[3];
    for j:=0 to ADDMODES-1 do
    begin
      Opcode[NumberOfMnemos,j]:=Ord(OpcodesHelp[j shl 1+4]) + Ord(OpcodesHelp[j shl 1+5]) shl 8;
    end;
    Inc(NumberOfMnemos);
  until Eof(OpcodesFile);
  Close(OpcodesFile);



  Writeln(' *** Reading sourcecode ',QUOTE,UpCaseStr(ParameterFile),QUOTE);

  i:=0; SourceFiles:=0; SourceIndex:=0;
  TrimSourceText(ParameterFile);
  lines:=i; reallines:=reallinenumber[i-1];
  SourceEnd:=SourceIndex;
  IgnoreNextEnd:=False;

  StartTime:=Time;
  Labels:=0;
  for Pass:=1 to 2 do
  begin
    Writeln(' *** Pass',Pass); Writeln('Line     /',reallines);
    ocodeIndex:=0;
    opaddress:=0;
    AsciiFlag:=1; Cpu:=0; CpuIllegal:=FALSE; SizeAccu:=FALSE; SizeIndex:=FALSE;
    basedefined:=FALSE;
    SourceIndex:=0;
    i:=0;
    repeat
      currentline:=reallinenumber[i];
      curL:=ReadLine; if curL='' then Break;
      Inc(i);
      if ((i and 63)=0) and ((Pass<>2) or (SHOW=FALSE)) then
      begin
        GotoXY(6,WhereY-1); Writeln(Right4(currentline));
      end;
      if UpCaseStr(curL)='.EN' then begin
        if not IgnoreNextEnd then Break; { Ende der Assemblierung, alles nach .en Åberlesen }
        curL:='ANOP'; { Zeile ignorieren }
        IgnoreNextEnd:=False;
      end;
      a:=Assemble(curL);
      if (Length(a)>0) and (not basedefined) then Errorstop('Base missing!');
      if (Pass=2) then
      begin
        if ocodeIndex+Length(a)>MAXOCODE then Errorstop('Object code overflow!');
        for j:=1 to Length(a) do ocode[ocodeIndex+j-1]:=Ord(a[j]);
        Inc(ocodeIndex,Length(a));
      end;
      Inc(Opaddress, Length(a));
      if (Show=TRUE) and (Pass=2) then
      begin
        PrintLine:=Hex(oldopaddress,4)+' ';
        if a<>'' then for ShowIndex:=1 to Length(a) do PrintLine:=PrintLine+Hex(Ord(a[ShowIndex]),2)+' ';
        while Length(PrintLine)<20 do PrintLine:=PrintLine+' ';
        PrintLine:=Copy(PrintLine,1,20);
        if curL[Length(curL)]<>':' then while Length(PrintLine)<28 do PrintLine:=PrintLine+' ';
        PrintLine:=PrintLine+curL;
        Writeln(PrintLine);
        oldopaddress:=opaddress;
      end;
    until FALSE;
  if (Pass<>2) or (SHOW=FALSE) then begin GotoXY(6,WhereY-1); Writeln(Right4(reallines)); end;{ fertig! }
  end;

  Writeln;
  Writeln('Assembly O.K. (',(Time-StartTime)/18.2 : 5 : 2,' sec), $',hex(Startaddress,4),'-$',hex(Startaddress+OcodeIndex,4));
  if Time-StartTime<>0 then Writeln(reallines/((Time-StartTime)/18.2):5:0,' lines/sec.');

  if SaveAs>0 then
  begin
    Write('Save...');
    case SaveAs of
    1: { ocode }
    begin
      Assign(SaveFile,Filename+'OBJ'); Rewrite(SaveFile,1);
        BlockWrite(SaveFile,ocode,ocodeIndex);
      Close(SaveFile);
    end;
    2: { PRG }
    begin
      if SaveName='' then SaveName:=Filename+'PRG';
      Assign(SaveFile,SaveName); Rewrite(SaveFile,1);
        BlockWrite(SaveFile,Startaddress,2);
        BlockWrite(SaveFile,ocode,ocodeIndex);
      Close(SaveFile);
    end;
    3: { P00 }
    begin
      Assign(SaveFile,Filename+'P00'); Rewrite(SaveFile,1);
        Header:=SPetscii(Filename);
        Header[0]:=Chr(Length(Header)-1);
        while Length(Header)<18 do Header:=Header+#0;
        Header:='C64File'+#0+Header;
        BlockWrite(SaveFile,Startaddress,2);
        BlockWrite(SaveFile,ocode,ocodeIndex);
      Close(SaveFile);
    end;
    4: { N64 }
    begin
      Assign(SaveFile,Filename+'N64'); Rewrite(SaveFile,1);
        Header:='C64'+#1+#$82;
        BlockWrite(SaveFile,Header,5);
        BlockWrite(SaveFile,Startaddress,2);
        Inc(ocodeIndex,2); BlockWrite(SaveFile,ocodeIndex,2); Dec(ocodeIndex,2);
        Header:=''; for i:=1 to 22 do; Header:=Header+#0;
        BlockWrite(SaveFile,Header,22);
        Header:=SPetscii(Filename);
        Header[0]:=Chr(Length(Header)-1);
        while Length(Header)<17 do Header:=Header+#0;
        BlockWrite(SaveFile,Header,27);
        Header:=''; for i:=1 to 206 do; Header:=Header+#0;
        BlockWrite(SaveFile,Header,206);
        BlockWrite(SaveFile,Startaddress,2);
        BlockWrite(SaveFile,ocode,ocodeIndex);
      Close(SaveFile);
    end else begin
      Write('Sorry, format not yet implemented!'); Halt;
    end;
    end;
    Writeln('OK.');
  end;

  if Symbols=TRUE then
  begin
    Write('Saving symbols...');
    Assign(SymbolsFile,Filename+'SYM'); Rewrite(SymbolsFile);
    Writeln(SymbolsFile,'#    name');
    for i:=0 to Labels-1 do
      Writeln(SymbolsFile, Hex(Value[i],4),' ',xLabel[i]);

    Close(SymbolsFile);
    Writeln('OK.');
  end;

  if (Transfer and 127)>0 then
  begin
    Write('Press any key to start transfer...'); repeat until KeyPressed; Writeln;
    Write('Transfer...');
    case Transfer and 127 of
    1: { 64NET } Transfer64NET(Startaddress, ocode, ocodeIndex);
    2: { PC64 }  PC64POKELC64(Startaddress, ocode, ocodeIndex);
    else begin Writeln('Sorry, transfer not yet implemented!'); Halt; end; end;
    while Loads<>'' do
    begin
      j:=Pos(#0,Loads);
      Filename:=Copy(Loads,1,j-1);
      LoadAddress:=Ord(Loads[j+1])+Ord(Loads[j+2]) shl 8;
      Loads:=Copy(Loads,j+3,255);
      if FindFile(Filename)=FALSE then
      begin
        Filename:=ASSDirectory+Filename;
        if FindFile(Filename)=FALSE then
        begin
          Writeln; Writeln('File "',Filename,'" not found!');
          Halt;
        end;
      end;
      Write(Filename,' ');
      Assign(SaveFile,Filename); Reset(SaveFile,1);
      BlockRead(SaveFile,i,2);
      if LoadAddress<>$FFFF then i:=LoadAddress;
      repeat
        BlockRead(SaveFile,ocode,MAXOCODE,BytesRead);
        if (Transfer and 127)=1 then POKELC64(i,ocode,BytesRead);
        if (Transfer and 127)=2 then PC64POKELC64(i,ocode,BytesRead);
        Inc(i,BytesRead);
      until Eof(SaveFile);
      Close(SaveFile);
    end;
    Writeln('OK.');
    if (Transfer and 128)>0 then
    begin
      Write('Start...');
      if startjumpaddress=0 then startjumpaddress:=startaddress;
      case Transfer and 127 of
      1: { 64NET } SYS(startjumpaddress,0,0,0);
      2: { PC64 } PC64SYS(startjumpaddress,0,0,0);
      else begin Writeln('Sorry, start not yet implemented!'); Halt; end;
      end;
    end;
    Writeln('OK.');
  end;

  Writeln;

  Dispose(SourceText);

  InitPort;
end.


(*
****************************************************************************
 in die Tat umgesetzte Erweiterungen:

 - lo/hi-Berechnungs-Optimierung                               300596/300596
 - Geschwindigkeit!!!                                          290596/300596
 - Ausgabe als PRG, P00, N64                                   290596/300596
 - INCLUDE von ASM-Files                                       300596/010696
 - eigenes 64NET-Wedge (verkÅrztes Wedge fÅr ASS14+)           300596/100896
 - öbertragung an C64 per PC64-Kabel                           290596/180896
 - BRK fÅhrt zu Fehler, da Code 00 auch bedeutet "nicht
   mîglich"                                                    080796/171196
 - Screencode-Text                                             080796/240197
 - INCLUDE von Objectfiles                                     300596/240197
 - Leerzeichen bei .LA                                   CHECKY080397/210597
 - Suchen nach .LO-Dateien und .A18 im ASS-Verzeichnis   CHECKY080397/210597
 - Label und Mnemo in einer Zeile                              220597/220597
 - Z80-Assembler                                               191196/290597
 - Pseudo-Statements mÅssen auch in Makros erlaubt sein!       191196/300597
 - Makros in Z80-Code                                          300597/300597
 - Unterstrich _ mu· in Labelnamen erlaubt sein                060497/170897
 - Bugs bei Namen mit ".."                                     300597/050398
 - .start-Pseudo-Opcode, um Einsprungsadresse festzulegen      300596/060398
 - * = aktuelle Position                                       180897/150398
 - .BR & DS > 255                                              170897/150398
 - ÅberprÅfen, wie der Assembler auf leere Makros reagiert     160897/170398
 - Bedingtes Assemblieren mit .if                              280597/170398

****************************************************************************
 geplante Erweiterungen:

 - lokale Labels kînnen mittels ".la" definiert werden, was nicht
   richtig funktioniert, da lokale Labels nach Grî·e sortiert sein mÅssen
   (-> bei Sprungmarken immer gewÑhrleistet, da RÅckwÑrtsassemblierung
   nicht mîglch (siehe "Base error!"))
   Abhilfe: .la Òlabel=... mu· zu Fehler fÅhren                       290596
 - Ausgabe als D64, C64 und Aufruf                                    290596
 - Starten eines Emulators/von 64NET                                  290596
 - Zeichenumsetzung bei P00-Dateien nîtig: "-" wird zu "_"            010696
 - Punkt vor Strich!                                                  080796
 - End-of-Transmission! Kein Absturz des C64-Wedge-Programms          180896
 - X-Debugger                                                         180896
 - Spaces bei Rechnungen rausfiltern                                  191196
 - Synchronisationsfehler erkennen                                    260197
 - Abbruch bei Transfer                                         CHECKY080397
 - Flexible Port-Angabe fÅr PC64 UND 64NET per Parameter              090397
 - mehrere Bases; Base<>Position im Speicher                     HOOGO210597
 - GEOS!                                                              210597
 - Linken von Libraries/Prozessor-Emulatoren                          210597
 - Transfer von 0 Bytes abfangen!                                     210597
 - Bedingtes Assemblieren mit .if                                     280597
 - Aufruf eines externen öbertragungsprogramms                        300597
 - Einheitlichere Kommandozeile                                       300597
 - ausfÅhrliche Hilfestellung als Overlay                             300597
 - Alle Bildschirmausgaben au·er Line ??/?? nach STDOUT               300597
 - alles, was nach den Makros entdeckt wird (DC, EQU) fehlt in SHOW   160897
 - jmp.l                                                              160897
 - asl a                                                              160897
 - $12:1234                                                           170897
 - Unterscheidung von $0002 und DP:$02 beim 65816 (siehe Seite 202)   170897
 - DC A'ASCII'                                                        170897
 - GB Z80                                                             180897
 - '' statt ""                                                        180897
 - #define fÅr Makros                                                 180897
 - Reassembler                                                        180897
 - Sharewareversion: Sonderbyte nach jedem RTS                        170398
 - Alternative zu .petscii, mit Sachen wie {orange}                   170398
 - Auswerten von AusdrÅcken wie >,<,!,& (Boole)                       170398
*)

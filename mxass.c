/*
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
  27.05.96  00:02:46:78 Bugfix: Spaces bei Rechenausdrücken
  29.05.96: 01:03:35:51 lokale Labels (beginnen mit "+" oder "-")
  30.05.96: 00:06:57:44 Bugfix bei lokalen Labels und "array scan"-Ausdrücken
         ->(08:06)
  30.05.96: 00:35:08:28 Kommandozeilenparameter, Env.Var., SaveAs, Transfer
            00:01:41:52 Weglassen von Erweiterung beim Filenamen möglich
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
  18.08.96  00:30:19:36 Übertragung per PC64-Kabel
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
            00:23:07:74 Unterstützung von 16-Bit-Akku und -Index
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
  02.07.97  00:02:23:89 Anzeigen der übertragenen Dateien
            00:06:28:21 Bug bei .LA mit Leerzeichen behoben
  16.08.97  01:09:10:58 Kompatibilität zu anderen Assemblern: #, DC, EQU
            00:23:34:89 ...
  17.08.97  00:40:31:78 GEQU,DS,ANOP,65816 ON/OFF,START,END,LONGA/I (WDC-Ass)
  18.08.97  00:19:07:08 .EQU, .DB, .DW, .ORG (Table Assembler)
  05.03.98  00:12:05:65 Bugfix: Punkte in/Länge von Datei/Verzeichnisnamen
  06.03.98  00:06:03:82 .start (Giga-Ass)
            00:07:37:75 .eq, .te, .ds (Giga-Ass)
  11.03.98  00:07:31:53 '=' wie EQU, .setpc, .b, .w (Professional Ass)
  14.03.98  00:19:31:23 .ob wie -PRG, mit variablem Dateinamen (Hypra-Ass)
            00:13:59:10 .en als Ende des Quelltexts (Hypra-Ass)
  15.03.98  00:16:16:48 .lo "filename",address
            00:22:04:37 * als aktuelle Adresse, .ds > 255, .ds=0-Bugfix
            00:10:03:25 *-Bugfix
  17.03.98  00:15:46:94 Base-Definition über *=$C000 (Turbo Ass)
            00:15:01:20 Bugifx: = ohne Space davor
            00:05:20:05 Bugfix bei Spaces in Rechenausdrücken
            00:13:30:67 .comment - .en; .if wert=wert - .en
  21.03.98  00:02:35:83 .ds-Bugifx
            00:00:27:43 .ds-Bugfix #2
  05.04.98  00:01:28:14 bessere ASCII-PETSCII-Konversion
  11.04.98  00:03:25:47 Bug in Opcodeliste: ldx abs,y
  19.05.98  00:10:52:48 Bugfix: Labels in Makros
  20.05.98  00:30:33:27 geosSym.asm, geosMac.asm
  21.05.98  00:37:30:85 Timeout bei PC64 Übertragung
            00:18:00:88 Timeout bei 64NET Übertragung (untested)
            00:01:59:60 Bugfix
  23.05.98  00:03:10:36 -KEY, -KEY-
            00:06:31:37 "Trying to establish connection"
  27.05.98  00:21:20:76 Secret message
  01.06.98  00:35:37:99 GoDot StartUp...
  05.06.98  00:03:21:24 LONGA/LONGI/65816 bugfix
            00:20:45:82 multiple bases...
  06.06.98  00:44:35:69 ...
            00:11:33:18 ...!
  31.01.08  02:00:00:00 Port to C...
  02.02.08  04:29:00:00 ...
            01:53:00:00 ... (Debugging)
18:16
*/

#include <p2c/p2c.h>

typedef unsigned short uint16_t;

#define MNEMOS          107	/* Anzahl der bekannten Mnemos */
#define ADDMODES        23
#define Z80MNEMOS       78
#define MAXNAMELENGTH   25

#define SOURCEMEM       65535L	/* Bytes für Quelltext */

#define MAXLINES        3000
#define MAXLABELS       490	/* Maximale Anzahl der Labels */
#define MAXFILES        10	/* Maximale Anzahl der Quelldateien */
#define MAXMACROS       10	/* Maximale Anzahl der Makros */
#define MAXMACROLENGTH  512	/* Bytes für Makroquelltext */
#define MAXMACPARA      10	/* Maximale Anzahl von Makroparametern */
#define MAXOCODE        15000	/* Maximale Größe des ObjectCodes */

#define QUOTE           '"'

#define CR              "\015\n"
#define SPACES          "\t "

#define SEMICOLON       ';'
#define COLON           ':'

#define HEXDIGITS       "0123456789ABCDEF"
#define DECDIGITS       "0123456789"

#define NUL             '\0'

#define PLUSMINUS       "+-"

#define SEP             "\001\002\003\004\005\006\007\b\t\n\013\f\015\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !#&'*+,-./:;=?@[\\]^`{|}~\177"

#define CALCSEP         "\001\002\003\004\005\006\007\b\t\n\013\f\015\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037!#&'*+,-./:;=?@[\\]^`{|}~\177"

#define NOOPERATOR  '\0'

#define NONE8           0xff

#define NONE16          0xffffL

#define BIT8MODES       "\001\002\003\004\b\t\015\020\021\023\024"

#define BIT16MODES      "\005\006\007\n\017\022"

#define BIT24MODES      "\f\016"

#define BYTE2MODES      (BIT8MODES "\013")

#define BYTE3MODES      (BIT16MODES "\025\026")

#define BYTE4MODES      BIT24MODES

#define Z80REGS         8
/* zweites L ist ein Dummy, wird nie übereinstimmen */
#define Z80REG8S        8
#define Z80REG16S       4
#define Z80REG162S      4
#define Z80REG816S      12
#define Z80CONDS        8

#define PORT            0x378	/* LPT1 */

#define OPCODESFILENAME  "OPCODES.A18"
#define OPCODESFILENAMEZ80  "OPZ80.A23"

#define OPCODESFILELENGTH  5350
#define OPCODESFILELENGTHZ80  546

#define SAVE_AS_NONE 0
#define SAVE_AS_OCODE 1
#define SAVE_AS_PRG 2
#define SAVE_AS_P00 3
#define SAVE_AS_D64 4
#define SAVE_AS_T64 5
#define SAVE_AS_C64 6

typedef int    numbertype;


/* Arrays */


Static long     POT2[24] = {
	1, 2, 4, 8, 16, 32, 64, 128, 0x100, 0x200, 0x400, 0x800, 0x1000, 0x2000,
	0x4000, 0x8000L, 0x10000L, 0x20000L, 0x40000L, 0x80000L, 0x100000L,
	0x200000L, 0x400000L, 0x800000L
};

Char            STR1[14];
Char            STR3[10];

Static Char     Z80REG[Z80REGS][5] = {
	"B", "C", "D", "E", "H", "L", "L", "A"
};

Static Char     Z80REG8[Z80REG8S][5] = {
	"B", "C", "D", "E", "H", "L", "(HL)", "A"
};

Static Char     Z80REG16[Z80REG16S][3] = {
	"BC", "DE", "HL", "SP"
};

Static Char     Z80REG162[Z80REG162S][3] = {
	"BC", "DE", "HL", "AF"
};

Static Char     Z80REG816[Z80REG816S][5] = {
	"B", "BC", "C", "D", "DE", "E", "H", "HL", "L", "(HL)", "SP", "A"
};

Static Char     Z80COND[Z80CONDS][3] = {
	"NZ", "Z", "NC", "C", "PO", "PE", "P", "M"
};

Static uchar    Z80REGCONV1[Z80REG8S] = {
	0, 2, 3, 5, 6, 8, 9, 0xb
};

Static uchar    Z80REGCONV2[Z80REG162S] = {
	1, 4, 7, 0xff
};

Static uchar    Z80OPCODECONV[Z80REG816S] = {
	0, 0x6, 0x8, 0x10, 0x16, 0x18, 0x20, 0x26, 0x28, 0x30, 0x36, 0x38
};

Static char   *SourceText;
Static unsigned short reallinenumber[MAXLINES + 1];
Static unsigned short belongstoFile[MAXLINES + 1];
Static Char     Mnemo[MNEMOS][4];
Static unsigned short Opcode[MNEMOS][ADDMODES];

Static Char     Z80Mnemo[Z80MNEMOS][5];
Static uchar    Z80Addmode[Z80MNEMOS];
Static uint16_t Z80Opcode[Z80MNEMOS];

Static uchar    RegisterInvolved[MNEMOS];
Static Char     xLabel[MAXLABELS + 1][MAXNAMELENGTH + 1];
Static unsigned short Value[MAXLABELS + 1];
Static unsigned short LValue[MAXLABELS + 1];
Static Char     SourceFile[MAXFILES + 1][256];
Static Char     MacroName[MAXMACROS + 1][MAXNAMELENGTH + 1];
Static char    MacroSourceText[MAXMACROS + 1][MAXMACROLENGTH];
Static unsigned short MacroSourceEnd[MAXMACROS + 1];
Static Char     MacroOperand[MAXMACROS + 1][256];
Static Char     MacroLabel[MAXMACPARA + 1][MAXNAMELENGTH + 1];
Static unsigned short MacroValue[MAXMACPARA + 1];
Static uchar    ocode[MAXOCODE + 1];
/* Variablen */
Static Char     Loads[256];	/* TODO: Must be done with arrays */
//Static Char     StoreAddresses[256];	/* TODO: Must be done with arrays */
#define MAXStoreAddresses 200
struct {
	uint16_t	ocodeindex;
	uint16_t	memoryaddress;
} StoreAddresses[MAXStoreAddresses];
int nStoreAddresses;
Static unsigned short LoadAddress, Time;	/* TODO absolute $40:$6C; */
Static unsigned short StartTime;
Static double   AssemblyTime;
Static boolean  Show;
Static Char     PrintLine[256];
Static unsigned short Labels, MacroLabels;
Static boolean  MacroError;
Static Char     actl[256];
Static uchar    Pass;
Static boolean  unknown;
Static uchar    AsciiFlag, Cpu;
Static boolean  CpuIllegal;
Static unsigned short opaddress, oldopaddress, startjumpaddress, currentline;
Static Char     Filename[256];
Static uchar    SaveAs;
Static Char     SaveName[256];
Static boolean  Symbols;
Static unsigned short SourceFiles, lines, reallines;
Static Char     Pseudo[256], Operand[256];
Static numbertype number, number2;
Static unsigned short startaddress, times, insold;
Static Char     a[256];
Static unsigned short Macros;
Static uchar    ShowIndex;
Static Char     Header[27];	/* TODO: must be an array instead; should be
				 * local */
/* neu hinzugefügte Variablen */
Static unsigned short i;
Static uchar    j, ins, ins2;
Static Char     SwitchParameter[11];
Static FILE    *OpcodesFile;
Static Char*    CurL;
Static Char     actMacroName[256];
Static Char     actMacroOperand[256];
Static unsigned short help, ArrayScan;
Static boolean  ArrayFound, PseudoOK;
Static unsigned short ocodeIndex, SourceIndex, SourceEnd, MacroSourceIndex;
Static FILE    *SaveFile;
Static FILE    *SymbolsFile;
Static boolean  SizeAccu, SizeIndex;

Static boolean  IgnoreNextEnd;

Static boolean  TransErr;

Static Char     SaveFile_NAME[_FNSIZE];
Static Char     SymbolsFile_NAME[_FNSIZE];


/* neue Funktionen/Prozeduren für Pascal */
Static Char    *
UpCaseStr(Result, S_)
	Char           *Result;
	Char           *S_;
{
	Char            S[256];
	uchar           i, FORLIM;

	strcpy(S, S_);
	FORLIM = strlen(S);
	for (i = 0; i < FORLIM; i++)
		S[i] = toupper(S[i]);
	return strcpy(Result, S);
}


Static Char    *
Trim(Result, S_)
	Char           *Result;
	Char           *S_;
{
//printf("Trim: '%s'\n", S_);
	Char            S[256];
	Char            STR4[256];

	strcpy(S, S_);
	if (*S == '\0')
		return strcpy(Result, S);
	/* Spaces links löschen */
	while ((S[0] == ' ' || S[0] == '\t') && *S != '\0') {
		strcpy(STR4, S + 1);
		strcpy(S, STR4);
	}
	/* Spaces rechts löschen */
	while (S[strlen(S) - 1] == ' ' || S[strlen(S) - 1] == '\t')
		S[strlen(S) - 1] = '\0';
	return strcpy(Result, S);
}


Static Char    *
Hex(Result, a, decimals)
	Char           *Result;
	unsigned short  a;
	uchar           decimals;
{
	uchar           i;
	Char            s[256];
	Char            STR4[256];
	Char            STR5[256];

	*s = '\0';
	for (i = 1; i <= decimals; i++) {
		sprintf(s, "%s%s",
		 strsub(STR4, HEXDIGITS, (a & 15) + 1, 1), strcpy(STR5, s));
		a >>= 4;
	}
	return strcpy(Result, s);
}


Static uchar 
HiHi(number)
	long            number;
{
	return (((unsigned long) number) >> 16);
}


Static Char    *
Right4(Result, A)
	Char           *Result;
	unsigned short  A;
{
	Char            S[256];
	Char            STR4[256];

	sprintf(S, "%u", A);
	while (strlen(S) < 4)
		sprintf(S, " %s", strcpy(STR4, S));
	return strcpy(Result, S);
}


Static uchar 
FindAny(Sub, Main)
	Char           *Sub, *Main;
{
//printf("FindAny: Sub='%s', Main='%s'\n", Sub, Main);
	uchar           l, FORLIM;
	Char            STR4[256];

	FORLIM = strlen(Main);
	for (l = 1; l <= FORLIM; l++) {
		sprintf(STR4, "%c", Main[l - 1]);
		if (strpos2(Sub, STR4, 1) > 0)
			return l;
	}
	return 0;
}


Static Char    *
KillQuotes(Result, T_)
	Char           *Result;
	Char           *T_;
{
	Char            T[256];
	uchar           ins1, ins2, l;
	Char            STR4[256];
	Char            STR5[256];

	strcpy(T, T_);
	do {
		sprintf(STR4, "%c", QUOTE);
		ins1 = strpos2(T, STR4, 1);
		/* alles innerhalb von "" übermalen (einschl.) */
		if (ins1 == 0)
			goto _LBreak;
		sprintf(STR4, "%c", QUOTE);
		ins2 = strpos2(strcpy(STR5, T + ins1), STR4, 1);
		if (ins2 == 0)
			ins2 = strlen(T);
		else
			ins2 += ins1;
		for (l = ins1 - 1; l < ins2; l++)
			T[l] = 'X';
	} while (true);
_LBreak:
	return strcpy(Result, T);
}


Static uchar 
FindSeparator(S)
	Char           *S;
{
	Char            STR4[256];

	return (FindAny(SEP, KillQuotes(STR4, S)));
}


Static uchar 
FindCalcSeparator(S)
	Char           *S;
{
	Char            STR4[256];

	return (FindAny(CALCSEP, KillQuotes(STR4, S)));
}


Static boolean 
FindFile(Filename)
	Char           *Filename;
{
	printf("ERROR: asm1!\n");
	exit(1);
	/*
	 * Filename:=Filename+#0; SeF:=Seg(Filename); OfF:=Ofs(Filename)+1;
	 * asm push ds mov ax, SeF mov ds, ax mov dx, OfF mov ah, 4Eh mov cx,
	 * 20h int 21h jnc @@NoError mov @Result, FALSE jmp @@FindEnd
	 * @@NoError: mov @Result, TRUE @@FindEnd: pop ds end;
	 */
}


/* Funktionen/Prozeduren */
static int 
TrimSourceText(char *Filename_, int i)
{
	Char            Filename[256];
	FILE           *actSourcefile;
	unsigned short  actReallinenumber;
	Char            Line[256], Line2[256];
	uchar           ins, ins2;
	Char            IncFile[256];
	boolean         IncFound, NextLineInBuffer;
	Char            testequ[256];
	Char            STR4[256];
	Char            STR5[256], STR6[256];
	Char           *TEMP;
	Char            STR7[256];
	Char            STR9[256];

	strcpy(Filename, Filename_);
	actSourcefile = NULL;

	strcpy(SourceFile[SourceFiles], Filename);
	SourceFiles++;
	if (!(actSourcefile = fopen(Filename, "r"))) {
		printf("File \"%s\" not found!\n", Filename);
		exit(1);
	}
	actReallinenumber = 0;
	NextLineInBuffer = false;
	do {
		actReallinenumber++;
		if (NextLineInBuffer)
			strcpy(Line, Line2);
		else {
			if (!fgets(Line, 256, actSourcefile)) break;
			if ((TEMP = strchr(Line, '\n')))
				*TEMP = 0;
			if ((TEMP = strchr(Line, '\r')))
				*TEMP = 0;
		}
		sprintf(STR5, "%c", SEMICOLON);
		ins = strpos2(Line, STR5, 1);
		if (ins > 0) {	/* REMs löschen */
			Line[ins - 1] = '\0';
		}
		/* Zeile mit Label und Mnemo aufspalten */
		if (*Line != '\0' && Line[0] != ' ' && Line[0] != '\t' &&
		    Line[0] != '.' && Line[0] != '#' && NextLineInBuffer == false) {	/* ^ Pseudo-Opcodes
											 * dürfen weiterhin an
											 * 1. Stelle stehen */
			ins = strpos2(Line, " ", 1);
			if (ins == 0)
				ins = 255;
			ins2 = strpos2(Line, "\t", 1);
			if (ins2 == 0)
				ins2 = 255;
			if (ins2 < ins)
				ins = ins2;
			sprintf(STR4, "%.4s", Trim(STR6, strcpy(STR7, Line + ins)));
			UpCaseStr(testequ, STR4);
			sprintf(STR4, "%.3s", testequ);
			if (!strcmp(STR4, "EQU") || !strcmp(testequ, "GEQU") ||
			    !strcmp(testequ, ".EQU") || testequ[0] == '=' && *testequ != '\0')
				goto _LEQU;
			if (ins != 255) {
				if (Line[ins - 2] == '=') {
					sprintf(STR7, "%.*s %s", ins - 2, Line, Line + ins - 2);
					/*
					 * für =-Routine von später ein Space
					 * einfügen
					 */
					strcpy(Line, STR7);
					goto _LEQU;
				}
				strcpy(Line2, Line + ins);
				Line[ins - 1] = '\0';
/* p2c: ASS29.PAS, line 444:
 * Note: Modification of string length may translate incorrectly [146] */
				if (Line[strlen(Line) - 1] != COLON)
					sprintf(Line + strlen(Line), "%c", COLON);
				NextLineInBuffer = true;
				/*
				 * -> Line wird abgelegt, Line2 beim nächsten
				 * Durchlauf
				 */
			} else {
				*Line2 = '\0';
				if (Line[strlen(Line) - 1] != COLON)
					sprintf(Line + strlen(Line), "%c", COLON);
				NextLineInBuffer = true;
			}
		} else {
	_LEQU:
			NextLineInBuffer = false;
		}
		strcpy(Line, Trim(STR7, Line));
		if (*Line != '\0') {
			if (!strcmp(UpCaseStr(STR7, strsub(STR4, Line, 2, 7)), "INCLUDE") &&
			    (Line[0] == '.' || Line[0] == '#')) {
				Trim(IncFile, strcpy(STR5, Line + 8));
				if (IncFile[0] == QUOTE) {	/* Quotes weg */
					strcpy(STR5, IncFile + 1);
					strcpy(IncFile, STR5);
				}
				if (IncFile[strlen(IncFile) - 1] == QUOTE)
					IncFile[strlen(IncFile) - 1] = '\0';
				IncFound = false;
				if (strpos2(IncFile, ".", 1) == 0) {
					sprintf(STR5, "%s.ASM", IncFile);
					if (FindFile(STR5)) {
						strcat(IncFile, ".ASM");
						IncFound = true;
					}
					sprintf(STR5, "%s.INC", IncFile);
					if (FindFile(STR5)) {
						strcat(IncFile, ".INC");
						IncFound = true;
					}
				} else {
					if (FindFile(IncFile))
						IncFound = true;
				}
				if (!strcmp(UpCaseStr(STR5, Filename), UpCaseStr(STR6, IncFile))) {
					printf("Recursive \".include\" in file %s, line %u!\n",
					       UpCaseStr(STR9, Filename), actReallinenumber);
					exit(1);
				}
				printf("     Reading include    \"%s\"\n", UpCaseStr(STR6, IncFile));
				TrimSourceText(IncFile, i);
				printf("     Continuing         \"%s\"\n", UpCaseStr(STR9, Filename));
			} else {
				if (SourceIndex + strlen(Line) >= SOURCEMEM) {
					printf("Sourcetext too big!\n");
					exit(1);
				}
				/* Zeile in Quelltextspeicher kopieren */
				memcpy(SourceText+SourceIndex, Line, strlen(Line));
//printf("memcpy(%x, %x, %d)\n", SourceText+SourceIndex, Line, strlen(Line));
//printf("'%c','%c','%c'\n", Line[0], Line[1], Line[2]);
				SourceIndex += strlen(Line) + 1;
				SourceText[SourceIndex - 1] = 0; //zero terminate

				reallinenumber[i] = actReallinenumber;
				belongstoFile[i] = SourceFiles - 1;
				i++;
				if (i > MAXLINES) {
					printf("Too many lines!\n");
					exit(1);
				}
			}
		}
	} while (!(feof(actSourcefile) && NextLineInBuffer == false));
	fclose(actSourcefile);
	SourceFiles--;		/* dem Aufrufer wieder die richtige Ebene übergeben */
	return i;
}


Static Void 
Errorstop(S)
	Char           *S;
{
	printf("Line %u: %s\n", currentline, S);
	puts(CurL);
	exit(1);
}


Static long 
HexDec(H_)
	Char           *H_;
{
	/* hex -> dezimal */
	Char            H[256];
	uchar           i;
	numbertype      number;
	Char            d;
	uchar           ins;
	Char            STR4[256];
	uchar           FORLIM;

	strcpy(H, H_);
	strcpy(H, UpCaseStr(STR4, H));
	number = 0;
	FORLIM = strlen(H);
	for (i = 1; i <= FORLIM; i++) {
		d = H[i - 1];
		sprintf(STR4, "%c", d);
		ins = strpos2(HEXDIGITS, STR4, 1);
		if (ins == 0)
			Errorstop("Wrong hex number!");
		ins--;
		number += (long) ((double) (ins * POT2[(strlen(H) - i) * 4]));
	}
	return number;
}


Static unsigned short 
BinDec(H)
	Char           *H;
{
	/* bin -> dezimal */
	uchar           i;
	unsigned short  number;
	uchar           d, FORLIM;

	number = 0;
	FORLIM = strlen(H);
	for (i = 1; i <= FORLIM; i++) {
		d = H[i - 1] - 48;
		if (d > 1)
			Errorstop("Wrong bin number!");
		number += d << (strlen(H) - i);
	}
	return number;
}


Static Char 
Petscii(S)
	Char            S;
{
	/* wandelt einzelnes Zeichen von ASCII nach PETSCII */
	uchar           a;

	a = S;
	if (a > 64 && a < 91)
		return (a + 128);
	if (a > 96 && a < 123)
		return (a - 32);
	return S;
}


Static Char    *
SPetscii(Result, A)
	Char           *Result;
	Char           *A;
{
	/* wandelt String von ASCII nach PETSCII */
	int i;
	for (i=0; i<strlen(A); i++) {
		Result[i] = Petscii(A[i]);
	}
	Result[i] = 0;
	return Result;
}


Static Char    *
SScrCode(Result, A)
	Char           *Result;
	Char           *A;
{
	/* wandelt Str PETSCII nach Screencode */
	printf("ERROR: asm3!\n");
	exit(1);
	/*
	 * SegA:=Seg(A); OfsA:=Ofs(A)+1; LenA:=Length(A); asm push ds mov ax,
	 * SegA mov ds, ax mov es, ax mov si, OfsA mov di, si mov cl, LenA
	 * mov ch, 0 @@scrloop: lodsb cmp al, $20 jae @@scr1 add al, $80 jmp
	 * @@scrend @@scr1: cmp al, $40 jb @@scrend cmp al, $60 jae @@scr2
	 * sub al, $40 jmp @@scrend @@scr2: cmp al, $80 jae @@scr3 sub al,
	 * $20 jmp @@scrend @@scr3: cmp al, $A0 jae @@scr4 add al, $40 jmp
	 * @@scrend @@scr4: cmp al, $C0 jae @@scr5 sub al, $40 jmp @@scrend
	 * @@scr5: cmp al, $FF je @@scr6 sub al, $80 jmp @@scrend @@scr6: mov
	 * al, $5E { Pi } @@scrend: stosb loop @@scrloop pop ds end;
	 */
	return strcpy(Result, A);
}


Static long 
GetNumber(S_)
	Char           *S_;
{
	Char            S[256];
	boolean         locallabelflag;
	Char            realS[256];
	Char            S2[256];
	numbertype      number, number2;
	uchar           ins;
	Char            Operator;
	uchar           i;
	Char            a;
	short           ValCode;
	unsigned short  LLabels, oldfound, ArrayScan, help;
	boolean         Labelfound, OperatorOK;
	Char            STR4[256];
	Char            STR5[256];
	unsigned short  FORLIM;
	short           TEMP;

	strcpy(S, S_);
	strcpy(S, Trim(STR4, S));
	if (S[0] == '+' || S[0] == '-') {	/* lokales Label */
		locallabelflag = true;
		strcpy(realS, S);
		strcpy(STR4, S + 1);
		strcpy(S, STR4);
	} else
		locallabelflag = false;
	if (S[0] == '*' && *S != '\0') {
		if (strlen(S) > 1)
			ins = FindCalcSeparator(strcpy(STR4, S + 1)) + 1;
		else
			ins = 0;
	} else
		ins = FindCalcSeparator(S);
	if (ins > 0) {		/* komplexer Ausdruck mit Operator */
		strcpy(S2, S + ins);
		number2 = GetNumber(S2);	/* rekursiv! */
		Operator = S[ins - 1];
		if (locallabelflag) {
			sprintf(STR5, "%.*s", ins, realS);
			Trim(S, STR5);	/* echtes Label wiederherstellen */
		} else {
			sprintf(STR4, "%.*s", ins - 1, S);
			strcpy(S, Trim(STR5, STR4));
		}
	} else {
		Operator = NOOPERATOR;
		if (locallabelflag)
			strcpy(S, realS);
	}
	if (S[0] == '*' && *S != '\0') {	/* aktuelle Assembly-Adresse */
		number = opaddress;
		*S = '\0';
	}
	if (S[0] == '$' && *S != '\0') {	/* hex-Konstante */
		number = HexDec(strcpy(STR5, S + 1));
		*S = '\0';
	}
	if (S[0] == '%' && *S != '\0') {	/* bin-Konstante */
		number = BinDec(strcpy(STR5, S + 1));
		*S = '\0';
	}
	if (S[0] == QUOTE && *S != '\0') {	/* ASCII-Konstante */
		if (S[2] != QUOTE)
			Errorstop("ASCII constant too long!");
		a = S[1];
		if (AsciiFlag == 0)
			a = Petscii(a);
		number = a;
		*S = '\0';
	}
	if (S[0] == '<' && *S != '\0') {	/* Low-Byte */
		number = GetNumber(strcpy(STR5, S + 1)) & 255;
		*S = '\0';
	}
	if (S[0] == '>' && *S != '\0') {	/* High-Byte */
		number = ((unsigned long) GetNumber(strcpy(STR5, S + 1))) >> 8;
		*S = '\0';
	}
	if (S[0] == '(' && *S != '\0') {	/* Ausdruck in Klammern */
		if (S[strlen(S) - 1] != ')')
			Errorstop("Brackets error!");
		number = GetNumber(strsub(STR5, S, 2, (int) (strlen(S) - 2)));
		*S = '\0';
	}
	if (*S != '\0' && isdigit(S[0])) {	/* dezimale Konstante */
		ValCode = (sscanf(S, "%ld", &number) == 0);	/* ! ValCode auswerten! */
		*S = '\0';
	}
	if (*S != '\0') {	/* Label */
		strcpy(S, UpCaseStr(STR5, S));
		if (locallabelflag) {	/* lokales Label */
			if (Pass == 1)
				unknown = true;
			else {
				if (S[0] == '+')	/* nur Vorwärtsverweise erlaubt */
					number = 0xFFFF;
				else	/* '-' */
					number = 0;
				ArrayFound = 0;
				for (ArrayScan = 0; ArrayScan < Labels; ArrayScan++)
					if (!strcmp(xLabel[ArrayScan], S))
						if (((S[0] == '+') && (Value[ArrayScan] > opaddress && number > Value[ArrayScan])) ||
							(Value[ArrayScan] <= opaddress && number < Value[ArrayScan])) {
							number = Value[ArrayScan];
							ArrayFound = 1;
						}
				if (!ArrayFound)
					Errorstop("Local label not found!");
				/* Nebeneffekt: lokales Label darf nicht Werte 0 bzw. 0xFFFF haben */
			}
		} else {	/* globales Label */
			ArrayFound = false;
			for (ArrayScan = 0; ArrayScan < Labels; ArrayScan++) {
				if (!strcmp(xLabel[ArrayScan], S)) {
					help = ArrayScan;
					ArrayFound = true;
					break;
				}
			}
			if (ArrayFound) {
				number = Value[help];
			} else {	/* Label nicht gefunden - vielleicht ein Makro-Parameter? */
				Labelfound = false;
				if (MacroLabels > 0) {
					ArrayFound = false;
					if (MacroLabels > 0) {
						for (ArrayScan = 0; ArrayScan < MacroLabels; ArrayScan++) {
							if (!strcmp(MacroLabel[ArrayScan], S)) {
								help = ArrayScan;
								ArrayFound = true;
								break;
							}
						}
					}
					if (ArrayFound) {
						number = MacroValue[help];
						Labelfound = true;
					}
				}
				if (!Labelfound) {
					if (Pass == 1)
						unknown = true;
					else
						Errorstop("Label not found!");
				}
			}
		}
	}
	OperatorOK = false;
	if (Operator == '+') {
		number += number2;
		OperatorOK = true;
	}
	if (Operator == '-') {
		number -= number2;
		OperatorOK = true;
	}
	if (Operator == '*') {
		number *= number2;
		OperatorOK = true;
	}
	if (Operator == '/') {
		number /= number2;
		OperatorOK = true;
	}
	if (Operator == NOOPERATOR)
		OperatorOK = true;
	if (!OperatorOK)
		Errorstop("Wrong operator!");
	return number;
}


Static Void 
SetLabel(L_, V)
	Char           *L_;
	unsigned short  V;
{
	Char            L[256];
	unsigned short  help, ArrayScan, FORLIM;

	/* TODO: must be an array instead! */
	strcpy(L, L_);
	if (!strcmp(L, "*")) {	/* Base Address setzen */
		if (unknown == true)
			Errorstop("Base has to be a constant!");
		if (nStoreAddresses >= MAXStoreAddresses)
			Errorstop("Too many base definitions!");
		if (!nStoreAddresses)
			startaddress = V;
		StoreAddresses[nStoreAddresses].ocodeindex = ocodeIndex;
		StoreAddresses[nStoreAddresses].memoryaddress = V;
		nStoreAddresses++;
		opaddress = V;
		return;
	}
	if (L[0] == '+' || L[0] == '-') {
		/* bei lokalen Variablen nicht testen, ob schon definiert */
		if (Pass == 2)
			return;
		/*
		 * in Pass 2 Wert nicht neu setzen, da nur Sprungmarken für
		 * lokale Variablen in Frage kommen, die fest sind. Außerdem
		 * wär's zu auf- wendig, da mehrere mit gl. Namen.
		 */
		ArrayFound = false;
	} else {
		/* schon benutzt? */
		ArrayFound = false;
		if (Labels > 0) {
			FORLIM = Labels;
			for (ArrayScan = 0; ArrayScan < FORLIM; ArrayScan++) {
				if (!strcmp(xLabel[ArrayScan], L)) {
					help = ArrayScan;
					ArrayFound = true;
					goto _LBreak;
				}
			}
		}
_LBreak:	;
	}
	if (!ArrayFound) {
		if (Labels == MAXLABELS)
			Errorstop("Too many labels!");
		strcpy(xLabel[Labels], L);
/* p2c: ASS29.PAS, line 882:
 * Note: Possible string truncation in assignment [145] */
		Value[Labels] = V;
		Labels++;
		return;
	}
	if (Pass == 1)
		Errorstop("Symbol used twice!");
	Value[help] = V;
}


Static Char    *
MacroReadLine(Num)
	unsigned short  Num;
{
	char *s;
//printf("macro %d: %x[%d/%d]\n", Num, MacroSourceText[Num], MacroSourceIndex, MacroSourceEnd[Num]);
	if (MacroSourceIndex>=MacroSourceEnd[Num]) return "";
	s = &MacroSourceText[Num][MacroSourceIndex];
//printf("strlen(s) = %d\n", strlen(s));
	MacroSourceIndex+=strlen(s)+1;
	return s;
}


int Assemble(char* Result, char* curL);


int
AssembleMacro(char *a, char *Line_)
{
	char *curL;
	Char            Line[256];
	unsigned short  MacroNum;
	Char            Mask[256];
	uchar           ins1, ins2;
	Char            V[256];
	Char            La[256];
	unsigned short  opaddresssaved;
	int aLen, bLen;
	char b[255];
	Char            Statement[256];
	Char            Operand[256], Operand2[256];
	Char            byteword;
	Char            testequ[256];
	Char            STR4[256];
	unsigned short  FORLIM;
	Char            STR5[256];
	Char            STR6[256];

	strcpy(Line, Line_);
	if (Line[0] == '*') {
		sprintf(Statement, "%c", Line[0]);
		strcpy(Operand, Line + 1);
	} else {
		ins = FindSeparator(Line);
		if (ins == 0) {
			strcpy(Statement, Line);
			*Operand = '\0';
		} else {
			sprintf(Statement, "%.*s", ins - 1, Line);
			strcpy(Operand, Line + ins);
		}
	}
	ArrayFound = false;
	if (Macros > 0) {
		FORLIM = Macros;
		for (ArrayScan = 0; ArrayScan < FORLIM; ArrayScan++) {
			if (!strcmp(MacroName[ArrayScan], Statement)) {
				MacroNum = ArrayScan;
				ArrayFound = true;
				goto _LBreak;
			}
		}
	}
_LBreak:
	if (!ArrayFound) {
		/* Pseudo-Statements ohne führenden Punkt (WDC-Konvention) */
		strcpy(Statement, UpCaseStr(STR4, Statement));
		PseudoOK = false;
		if (!strcmp(Statement, "DCB"))
			goto _LDCB;
		if (!strcmp(Statement, "DCW"))
			goto _LDCW;
		if (!strcmp(Statement, "DC") || !strcmp(Statement, "DCR")) {	/* wie '.BY'/'.WO' */
			byteword = Operand[0];
			strcpy(Operand, Trim(STR4, strcpy(STR5, Operand + 1)));
			if (toupper(byteword) == 'B') {
		_LDCB:
				PseudoOK = true;
				strcpy(Operand, Trim(STR4, Operand));
				insold = 1;
				strcat(Operand, ",");
				*a = '\0';
				do {
					ins = strpos2(KillQuotes(STR4, strcpy(STR5, Operand + insold - 1)),
						      ",", 1);
					if (ins == 0)	/* ! .by ohne Parameter
							 * -> Fehler! */
						goto _LBreak1;
					unknown = false;
					strsub(Operand2, Operand, insold, ins - 1);
					if (Operand2[0] == '"' && Operand2[strlen(Operand2) - 1] == '"') {
						/* ASCII-String */
						strsub(b, Operand2, 2, (int) (strlen(Operand2) - 2));
						if (AsciiFlag == 0 && Pass == 2)
							strcpy(b, SPetscii(STR4, b));
						strcat(a, b);
					} else {
						number = GetNumber(Operand2);
						if (unknown)
							number = 0;
						if (number > 256)
							Errorstop("Byte > 8 Bit!");
						sprintf(a + strlen(a), "%c", (Char) number);
					}
					insold += ins;
				} while (true);
		_LBreak1:	;
			}
			if (toupper(byteword) == 'W') {
		_LDCW:
				PseudoOK = true;
				insold = 1;
				strcat(Operand, ",");
				*a = '\0';
				do {
					ins = strpos2(strcpy(STR4, Operand + insold - 1), ",", 1);
					if (ins == 0)	/* ! .by ohne Parameter
							 * -> Fehler! */
						goto _LBreak2;
					unknown = false;
					number = GetNumber(strsub(STR4, Operand, insold, ins - 1));
					if (unknown)
						number = 0;
					sprintf(a + strlen(a), "%c",
						(number & 255) + (((unsigned long) number) >> 8));
					insold += ins;
				} while (true);
		_LBreak2:	;
			}
		}
		if (!strcmp(Statement, "DS")) {	/* define storage, wie .br */
			PseudoOK = true;
			unknown = false;
			times = GetNumber(Operand);
			if (unknown)
				Errorstop("Repeat number has to be a constant!");
			*a = '\0';
			FORLIM = times;
			for (i = 1; i <= FORLIM; i++) {	/* TODO: needs to be
							 * done differently */
				strcpy(STR4, a);
				strcpy(a, STR4);
			}
		}
/* p2c: ASS29.PAS, line 1022:
 * Note: Null character at end of sprintf control string [148] */
		if (!strcmp(Statement, "ANOP") || !strcmp(Statement, "START") ||
		  !strcmp(Statement, "END") || !strcmp(Statement, "KEEP")) {	/* alle ignorieren */
			PseudoOK = true;
			*a = '\0';
		}
		if (!strcmp(Statement, "ORG")) {
			PseudoOK = true;
			*a = '\0';
			unknown = false;
			number = GetNumber(Operand);
			SetLabel("*", (int) number);
		}
		if (!strcmp(Statement, "65816")) {
			strcpy(Operand, UpCaseStr(STR4, Trim(STR5, Operand)));
			if (!strcmp(Operand, "ON")) {
				Cpu = 2;
				PseudoOK = true;
			}	/* 65816 oder 65802 */
			if (!strcmp(Operand, "OFF")) {
				Cpu = 0;
				PseudoOK = true;
			}	/* 6502 */
			*a = '\0';
			if (!PseudoOK)
				Errorstop("\"65816 ON\" for 65816/65802; \"65816 OFF\" for 6502.");
		}
		if (!strcmp(Statement, "LONGA")) {
			if (Cpu != 2)
				Errorstop("Only supported by 65802/65816!");
			strcpy(Operand, UpCaseStr(STR4, Trim(STR5, Operand)));
			if (!strcmp(Operand, "ON")) {
				SizeAccu = true;
				PseudoOK = true;
			}
			if (!strcmp(Operand, "OFF")) {
				SizeAccu = false;
				PseudoOK = true;
			}
			*a = '\0';
			if (!PseudoOK)
				Errorstop("ON or OFF required.");
		}
		if (!strcmp(Statement, "LONGI")) {
			if (Cpu != 2)
				Errorstop("Only supported by 65802/65816!");
			strcpy(Operand, UpCaseStr(STR4, Trim(STR5, Operand)));
			if (!strcmp(Operand, "ON")) {
				SizeIndex = true;
				PseudoOK = true;
			}
			if (!strcmp(Operand, "OFF")) {
				SizeIndex = false;
				PseudoOK = true;
			}
			*a = '\0';
			if (!PseudoOK)
				Errorstop("ON or OFF required.");
		}
		if (!PseudoOK)	/* für nächsten Test */
			strcpy(Operand, Trim(STR4, Operand));
		sprintf(STR5, "%.4s", Operand);
		UpCaseStr(testequ, STR5);
		sprintf(STR5, "%.3s", testequ);
		if ((!strcmp(STR5, "EQU") || !strcmp(testequ, "GEQU") ||
		     !strcmp(testequ, ".EQU") ||
		     testequ[0] == '=' && *testequ != '\0') && PseudoOK == false) {
			if (testequ[0] == '=' && *testequ != '\0')
				strcpy(Operand, Trim(STR4, strcpy(STR6, Operand + 1)));
			else {
				if (!strcmp(testequ, "GEQU"))
					strcpy(Operand, Trim(STR4, strcpy(STR6, Operand + 4)));
				else
					strcpy(Operand, Trim(STR4, strcpy(STR6, Operand + 3)));
			}
			PseudoOK = true;
			*a = '\0';
			unknown = false;
			number = GetNumber(Operand);
			/* if unknown=FALSE then */
			SetLabel(Statement, (int) number);
		}
		if (PseudoOK) {
			MacroError = false;
			return aLen;
		} else {
			MacroError = true;
			return aLen;
		}
	}
	/* Parameter auswerten */
	if (*Operand != '\0') {
		sprintf(Mask, "%s,", MacroOperand[MacroNum]);
		strcat(Operand, ",");
		MacroLabels = 0;
		/*
		 * 'redim MacroLabel$(0%:10), MacroValue??(0:10) nicht nötig,
		 * siehe unten
		 */
		do {
			ins1 = strpos2(Operand, ",", 1);
			/* instr(ins1old??,MacroOperand$,",") */
			ins2 = strpos2(Mask, ",", 1);
			/* instr(ins2old??,Mask$,",") */
			if (ins1 == 0 && ins2 == 0)
				goto _LBreak3;
			if (ins1 == 0 || ins2 == 0)
				Errorstop("Parameter error!");
			sprintf(V, "%.*s", ins1 - 1, Operand);
			/* mid$(MacroOperand$,ins1old??, ins1??-ins1old??) */
			sprintf(La, "%.*s", ins2 - 1, Mask);
			/* mid$(Mask$,ins2old??, ins2??-ins2old??) */
			if (*La == '\0')
				goto _LBreak3;
			if (*V == '\0')
				strcpy(V, "0");
			UpCaseStr(MacroLabel[MacroLabels], Trim(STR4, La));
/* p2c: ASS29.PAS, line 1115:
 * Note: Possible string truncation in assignment [145] */
			MacroValue[MacroLabels] = GetNumber(V);
			/*
			 * '?
			 * MacroLabel$(MacroLabels??);"=";MacroValue??(MacroLa
			 * bels??)
			 */
			MacroLabels++;
			strcpy(STR4, Operand + ins1);
			strcpy(Operand, STR4);
			strcpy(STR4, Mask + ins2);
			strcpy(Mask, STR4);
		} while (true);
_LBreak3:	;
	}
	*a = '\0';
	opaddresssaved = opaddress;
	MacroSourceIndex = 0;
	do {
		CurL = MacroReadLine(MacroNum);
		if (*CurL == '\0') break;
//printf("%s\n", CurL);
		bLen = Assemble(b, CurL);
		memcpy(a, b, bLen);
		aLen += bLen;
		opaddress += bLen;	/* Speicherpos. weiterzählen! */
	} while (true);
	opaddress = opaddresssaved;
	/* MakroLabels löschen, da sie nicht mehr gelten */
	for (i = 0; i <= MAXMACPARA; i++) {	/* ! nötig? */
		*MacroLabel[i] = '\0';
		MacroValue[i] = 0;
	}
	MacroLabels = 0;
	MacroError = false;
	return aLen;
}


int 
Assemble65xx(char *a, char *Line_)
{
	int aLen;
	Char            Line[256];
	Char            actMnemo[4];
	unsigned short  ArrayScan, MnemoNum;

	uchar           addmode;
	Char            lOp;
	boolean         immediate, operandFlag;
	/* ! Funktion muß noch untersucht werden... */
	Char            lrOp3[4];
	Char            lrOp2[3];
	uchar           actOpcode, actCpu;
	short           branch;
	uchar           branch2;
	unsigned short  branch3;

	Char            curL[256];

	uchar           Cpos, s;
	numbertype      number, number2;
	Char            STR4[256], STR5[256];
	Char            STR6[256];

	strcpy(Line, Line_);
	s = FindSeparator(Line);
	if (s != 4 && s != 0)
		goto _LnMnemo;
	sprintf(STR5, "%.3s", Line);
	UpCaseStr(actMnemo, STR5);
/* p2c: ASS29.PAS, line 1174:
 * Note: Possible string truncation in assignment [145] */
	Trim(Operand, strcpy(STR4, Line + 3));
	MnemoNum = 0;
	for (ArrayScan = 1; ArrayScan < MNEMOS; ArrayScan++) {
		if (!strcmp(Mnemo[ArrayScan - 1], actMnemo)) {
			MnemoNum = ArrayScan;
			goto _LBreak;
		}
	}
_LBreak:
	if (MnemoNum == 0) {	/* vielleicht ein Makroname? */
_LnMnemo:
		aLen = AssembleMacro(a, Line);
		if (MacroError)
			Errorstop("Unknown Mnemo!");
		return aLen;
	}
	/* Operand */
	addmode = 0;
	lOp = Operand[0];
	if (lOp == '#') {	/* immediate */
		immediate = true;
		strcpy(STR4, Operand + 1);
		strcpy(Operand, STR4);
//printf("%d\n", __LINE__);
		operandFlag = true;
	} else
		immediate = false;
	if (lOp == '(') {
		UpCaseStr(lrOp3, strsub(STR5, Operand, (int) (strlen(Operand) - 2), 3));
/* p2c: ASS29.PAS, line 1201:
 * Note: Possible string truncation in assignment [145] */
		if (!strcmp(lrOp3, ",X)")) {
			if (Opcode[MnemoNum - 1][8] == NONE16)
				addmode = 18;
			else
				addmode = 8;
			/* JMP (addr,X)   LDA (dp,X) */
			unknown = false;
			number = GetNumber(strsub(STR5, Operand, 2, (int) (strlen(Operand) - 4)));
			if (unknown)
				number = 0;
			*Operand = '\0';
		}
		if (!strcmp(lrOp3, "),Y")) {
			unknown = false;
			if (!strcmp(UpCaseStr(STR5, strsub(STR4, Operand,
					   (int) (strlen(Operand) - 4), 2)),
				    ",S")) {
				number = GetNumber(strsub(STR6, Operand, 2, (int) (strlen(Operand) - 6)));
				addmode = 20;
			} else {
				number = GetNumber(strsub(STR6, Operand, 2, (int) (strlen(Operand) - 4)));
				addmode = 9;
			}
			if (unknown)
				number = 0;
			*Operand = '\0';
		}
		if (Operand[strlen(Operand) - 1] == ')') {
			if (Opcode[MnemoNum - 1][10] == NONE16)
				addmode = 16;
			else
				addmode = 10;
			/* LDA ($FF)        JMP ($FFFF) */
			unknown = false;
			number = GetNumber(strsub(STR5, Operand, 2, (int) (strlen(Operand) - 2)));
			if (unknown)
				number = 0xffffL;
			*Operand = '\0';
		}
		if (*Operand != '\0')
			Errorstop("Brackets error!");
	}
	if (lOp == '[') {
		UpCaseStr(lrOp3, strsub(STR4, Operand, (int) (strlen(Operand) - 2), 3));
/* p2c: ASS29.PAS, line 1238:
 * Note: Possible string truncation in assignment [145] */
		if (Operand[strlen(Operand) - 1] == ']') {
			if (Opcode[MnemoNum - 1][15] == NONE16)
				addmode = 17;
			else
				addmode = 15;
			/* JMP [$FFFF]      LDA [$FF] */
			unknown = false;
			number = GetNumber(strsub(STR4, Operand, 2, (int) (strlen(Operand) - 2)));
			if (unknown)
				number = 0xffffL;
			*Operand = '\0';
		}
		if (!strcmp(lrOp3, "],Y")) {
			addmode = 13;
			unknown = false;
			number = GetNumber(strsub(STR4, Operand, 2, (int) (strlen(Operand) - 4)));
			if (unknown)
				number = 0;
			*Operand = '\0';
		}
		if (*Operand != '\0')
			Errorstop("Brackets error!");
	}
	UpCaseStr(lrOp2, strsub(STR5, Operand, (int) (strlen(Operand) - 1), 2));
/* p2c: ASS29.PAS, line 1258:
 * Note: Possible string truncation in assignment [145] */
	if (!strcmp(lrOp2, ",X")) {
		unknown = false;
		sprintf(STR5, "%.*s", (int) (strlen(Operand) - 2), Operand);
		number = GetNumber(STR5);
		if (unknown)
			number = 0xffffL;
		if (number < 256)	/* LDA $FFFFFF,X */
			addmode = 3;	/* LDA $FF,X */
		else if (number < 65536L)
			addmode = 6;	/* LDA $FFFF,X */
		else
			addmode = 14;
		*Operand = '\0';
	}
	if (!strcmp(lrOp2, ",Y")) {
		unknown = false;
		sprintf(STR5, "%.*s", (int) (strlen(Operand) - 2), Operand);
		number = GetNumber(STR5);
		if (unknown)
			number = 0xffffL;
		if (number < 256)
			addmode = 4;
		else
			addmode = 7;
		*Operand = '\0';
	}
	if (!strcmp(lrOp2, ",S")) {
		unknown = false;
		sprintf(STR5, "%.*s", (int) (strlen(Operand) - 2), Operand);
		number = GetNumber(STR5);
		if (unknown)
			number = 0xffffL;
		addmode = 19;
		*Operand = '\0';
	}
	if (*Operand != '\0') {
		Cpos = strpos2(KillQuotes(STR5, Operand), ",", 1);
		if (Cpos > 0) {
			unknown = false;
			sprintf(STR5, "%.*s", Cpos - 1, Operand);
			number = GetNumber(STR5);
			if (unknown)
				number = 0xff;
			unknown = false;
			number2 = GetNumber(strcpy(STR5, Operand + Cpos));
			if (unknown)
				number = 0xff;
			addmode = 21;
		} else {	/* absolute/immediate */
			unknown = false;
			number = GetNumber(Operand);
			operandFlag = true;
			if (unknown)
				number = 0xffffL;
		}
	} else
		operandFlag = false;

	/* Adressierungsart ermitteln */
	if (addmode == 0) {
		if (operandFlag == false)
			addmode = 0;	/* implicit */
		else {
			if (immediate == false) {	/* absolute */
				if (Opcode[MnemoNum - 1][22] != NONE16)
					addmode = 22;	/* PER */
				else {
					if (number > 65535L)
						addmode = 12;	/* abs long */
					else {
						if (number < 256)	/* absolute */
							addmode = 2;	/* Zero-Page */
						else
							addmode = 5;
					}
				}
			} else
				addmode = 1;	/* immediate */
			/*
			 * implied      (0) immediate    (1) Zero-Page    (2)
			 * Zero-Page, X (3) Zero-Page, Y (4) abs          (5)
			 * abs, x       (6) abs, y       (7) ind, x       (8)
			 * ind, y       (9) abs ind      (10) rel
			 * (11) abs long     (12) * dp ind long, y(13)* abs
			 * long, x  (14) * abs ind long (15) * dp ind
			 * (16) * dp ind long  (17) * abs ind, x   (18) *
			 * stack relative(19)* sr ind, y     (20)* block move
			 * (21)* pc rel long   (22)*
			 */
		}
	}
	actOpcode = Opcode[MnemoNum - 1][addmode];
	actCpu = Opcode[MnemoNum - 1][addmode] >> 8;
	if (actCpu == NONE8) {
		if (addmode > 1 && addmode < 5) {
			addmode += 3;
			actOpcode = Opcode[MnemoNum - 1][addmode];
			if (Opcode[MnemoNum - 1][addmode] == NONE16)
				Errorstop("(1)Wrong addressing mode!");
		} else {
			if (addmode == 5 && Opcode[MnemoNum - 1][11] != NONE16) {	/* vielleicht Branch? */
				addmode = 11;
				actOpcode = Opcode[MnemoNum - 1][11];
			} else
				Errorstop("(2)Wrong addressing mode!");
		}
		/* versuchen, einen nicht-Zero-Page-Mode zu finden */
	}
	actCpu = Opcode[MnemoNum - 1][addmode] >> 8;
	if (actCpu == 0xf && !CpuIllegal)
		Errorstop("Illegal opcodes only allowed on 6502ILL!");
	if (actCpu != 0xf) {
		if (actCpu > Cpu)
			Errorstop("Statement/addressing mode not allowed on this CPU type!");
	}
	if (RegisterInvolved[MnemoNum - 1] == 1 && SizeAccu && addmode == 1)
		/* immediate */
		addmode = 5;
	if (RegisterInvolved[MnemoNum - 1] == 2 && SizeIndex && addmode == 1)
		/* immediate */
		addmode = 5;

	if (Pass == 1) {	/* Pass 1, nur Dummy übergeben */
		if (addmode == 0)
			aLen=1;
		sprintf(STR5, "%c", addmode);
		if (strpos2(BYTE2MODES, STR5, 1) > 0)
			aLen=2;
		sprintf(STR5, "%c", addmode);
		if (strpos2(BYTE3MODES, STR5, 1) > 0)
			aLen=3;
		sprintf(STR5, "%c", addmode);
		if (strpos2(BYTE4MODES, STR5, 1) > 0)
			aLen=4;
		return aLen;
	}

	/* Pass 2, echten Objectcode übergeben */
	if (addmode == 0) { /* 0 (0 Bit) */
		a[0] = actOpcode;
		aLen = 1;
	} else if (strchr(BIT8MODES, addmode)) { /* 1, 2, 3, 4, 8, 9, 13, 16, 17, 19, 20 (8 Bit) */
		if (number > 255)
			Errorstop("Byte > 8 Bit!");
		a[0] = actOpcode;
		a[1] = number;
		aLen = 2;
	} else if (strchr(BIT16MODES, addmode)) { /* 5, 6, 7, 10, 15, 18 (16 Bit) */
		a[0] = actOpcode;
		a[1] = number;
		a[2] = number >> 8;
		aLen = 3;
	} else if (addmode == 11) { /* 11 ( 8 Bit relative) */
		branch = number - opaddress - 2;
//printf("number=%x, opaddress=%x\n", number, opaddress);
		if (branch < -128 || branch > 127)
			Errorstop("Label out of range!");
		branch2 = branch;
		a[0] = actOpcode;
		a[1] = branch2;
		aLen = 2;
	} else if (strchr(BIT24MODES, addmode)) { /* 12, 14 (24 Bit) */
		a[0] = actOpcode;
		a[1] = number;
		a[2] = number >> 8;
		a[3] = number >> 16;
		aLen = 4;
	} else if (addmode == 21) { /* 21 2x 8 Bit */
		if (number > 255 || number2 > 255)
			Errorstop("Byte > 8 Bit!");
		a[0] = actOpcode;
		a[1] = number2;
		a[2] = number;
		aLen = 3;
	} else if (addmode == 22) { /* 22 ( 16 Bit relative) */
		branch = number - opaddress - 3;
		branch3 = branch;
		a[0] = actOpcode;
		a[1] = branch3;
		a[2] = branch3>>8;
		aLen = 3;
	}
//printf("aLen = %d\n", aLen);
	return aLen;
}


Static Char    *
ReadLine()
{
	char *s;
	if (SourceIndex>=SourceEnd) return "";
	s = &SourceText[SourceIndex];
//printf("%x[%d] = '%s'\n", SourceText, SourceIndex, s);
	SourceIndex+=strlen(s)+1;
	return s;
}


int
AssembleZ80(char *a, char *Line_)
{
	int aLen;
	Char            Line[256];
	uchar           ins;
	Char            Mnemo[256], UMnemo[256];
	Char            Operands[256], UOperands[256], Operands2[256];
	Char            Op1[256], Op2[256], UOp1[256], UOp2[256];
	uchar           ArrayScan, MnemoNum;
	unsigned short  Op;
	uchar           i, po, Addmode, reg, reg8, reg16, reg162, reg816,
	                cond, reg81, reg82;
	unsigned short  number;
	short           branch;
	uchar           branch2, Prefix, addbyte;
	boolean         addbytepresent;
	Char            STR4[256], STR5[256];
	Char            STR6[256];
	Char            STR7[256];
	Char            STR8[256];

	strcpy(Line, Line_);
	ins = FindSeparator(Line);
	if (ins > 0) {
		sprintf(STR5, "%.*s", ins - 1, Line);
		UpCaseStr(Mnemo, STR5);
		Trim(Operands, strcpy(STR4, Line + ins - 1));
	} else {
		UpCaseStr(Mnemo, Line);
		*Operands = '\0';
	}
	MnemoNum = 0;
	for (ArrayScan = 1; ArrayScan <= Z80MNEMOS; ArrayScan++) {
		if (!strcmp(Z80Mnemo[ArrayScan - 1], Mnemo)) {
			MnemoNum = ArrayScan;
			goto _LBreak;
		}
	}
_LBreak:
	if (MnemoNum == 0 && strcmp(Mnemo, "LD") && strcmp(Mnemo, "IM") &&
	strcmp(Mnemo, "EX") && strcmp(Mnemo, "RST") && strcmp(Mnemo, "IN") &&
	    strcmp(Mnemo, "OUT")) {	/* vielleicht ein Makro? */
		aLen = AssembleMacro(a, Line);
		if (MacroError)
			Errorstop("Unknown Mnemo!");
		return aLen;
	}
	/*
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
        */
	Prefix = 0;
	addbytepresent = false;
	/* ix und iy durch hl ausdrücken */
	UpCaseStr(Operands2, KillQuotes(STR5, Operands));
	i = strpos2(Operands2, "(IX", 1);	/* indirektes IX */
	if (i > 0) {
		j = strpos2(strcpy(STR5, Operands2 + i + 2), ")", 1);
		strsub(Operands2, Operands, i + 3, j - 1);
		if (Operands2[0] != '-' && Operands2[0] != '+')
			Errorstop("+/- required!");
		number = GetNumber(strcpy(STR5, Operands2 + 1));
		if (Pass == 2) {
			if (number > 255)
				Errorstop("8 Bit!");
			if (Operands2[0] == '-')
				number = 256 - number;
		}
		Prefix = 0xdd;
		addbyte = number;
		addbytepresent = true;
		sprintf(STR6, "%.*sHL%s", i, Operands, Operands + i + j + 1);
		strcpy(Operands, STR6);
		goto _Lindexok;
	}
	i = strpos2(Operands2, "(IY", 1);	/* indirektes IY */
	if (i > 0) {
		j = strpos2(strcpy(STR6, Operands2 + i + 2), ")", 1);
		strsub(Operands2, Operands, i + 3, i + j - 4);
		if (Operands2[0] != '-' && Operands2[0] != '+')
			Errorstop("+/- required!");
		number = GetNumber(strcpy(STR6, Operands2 + 1));
		if (Pass == 2) {
			if (number > 255)
				Errorstop("8 Bit!");
			if (Operands2[0] == '-')
				number = 256 - number;
		}
		Prefix = 0xfd;
		addbyte = number;
		addbytepresent = true;
		sprintf(STR4, "%.*sHL%s", i, Operands, Operands + i + j + 1);
		strcpy(Operands, STR4);
		goto _Lindexok;
	}
	i = strpos2(Operands2, "IX", 1);	/* direktes IX */
	if (i > 0) {
		sprintf(STR5, "%.*sHL%s", i - 1, Operands, Operands + i + 1);
		strcpy(Operands, STR5);
		Prefix = 0xdd;
	}
	i = strpos2(Operands2, "IY", 1);	/* direktes IY */
	if (i > 0) {
		sprintf(STR6, "%.*sHL%s", i - 1, Operands, Operands + i + 1);
		strcpy(Operands, STR6);
		Prefix = 0xfd;
	}
_Lindexok:
	/* Besondere Mnemos */
	UpCaseStr(UMnemo, Mnemo);
	UpCaseStr(UOperands, Operands);
	if (!strcmp(UMnemo, "LD")) {	/* ld */
		i = strpos2(Operands, ",", 1);
		if (i == 0)
			Errorstop("Syntax: LD reg/mem,reg/mem");
		sprintf(STR5, "%.*s", i - 1, Operands);
		Trim(Op1, STR5);
		Trim(Op2, strcpy(STR6, Operands + i));
		UpCaseStr(UOp1, Op1);
		UpCaseStr(UOp2, Op2);
		reg81 = 0xff;
		for (i = 0; i < Z80REG8S; i++) {
			if (!strcmp(UOp1, Z80REG8[i])) {
				reg81 = i;
				goto _LBreak1;
			}
		}
_LBreak1:
		reg82 = 0xff;
		for (i = 0; i < Z80REG8S; i++) {
			if (!strcmp(UOp2, Z80REG8[i])) {
				reg82 = i;
				goto _LBreak2;
			}
		}
_LBreak2:
		if (reg81 != 0xff && reg82 != 0xff) {	/* reg8,reg8 */
			if (reg81 == 6 && reg82 == 6)
				Errorstop("Invalid combination: LD (HL),(HL)");
			sprintf(a, "%c", reg81 * 8 + reg82 + 0x40);
			goto _Laddprefixes;
		}
		if (reg81 == 7) {	/* a,... */
			if (!strcmp(UOp2, "(BC)")) {
				strcpy(a, "\n");
				goto _Laddprefixes;
			}
			if (!strcmp(UOp2, "(DE)")) {
				strcpy(a, "\032");
				goto _Laddprefixes;
			}
			if (!strcmp(UOp2, "I")) {
				sprintf(a, "%c", 0xed + 'W');
				goto _Laddprefixes;
			}
			if (!strcmp(UOp2, "R")) {
				sprintf(a, "%c", 0xed + '_');
				goto _Laddprefixes;
			}
			if (UOp2[0] == '(' && UOp2[strlen(UOp2) - 1] == ')') {
				number = GetNumber(strsub(STR6, Op2, 2, (int) (strlen(Op2) - 2)));
				if (Pass == 1)
					strcpy(a, "   ");
				else
					sprintf(a, "%c", (number & 255) + (number >> 8) + 0x3a);
				goto _Laddprefixes;
			}
		}
		if (reg82 == 7) {	/* ...,a */
			if (!strcmp(UOp1, "(BC)")) {
				strcpy(a, "\002");
				goto _Laddprefixes;
			}
			if (!strcmp(UOp1, "(DE)")) {
				strcpy(a, "\022");
				goto _Laddprefixes;
			}
			if (!strcmp(UOp1, "I")) {
				sprintf(a, "%c", 0xed + 'G');
				goto _Laddprefixes;
			}
			if (!strcmp(UOp1, "R")) {
				sprintf(a, "%c", 0xed + 'O');
				goto _Laddprefixes;
			}
			if (UOp1[0] == '(' && UOp1[strlen(UOp1) - 1] == ')') {
				number = GetNumber(strsub(STR6, Op1, 2, (int) (strlen(Op1) - 2)));
				if (Pass == 1)
					strcpy(a, "   ");
				else
					sprintf(a, "%c", (number & 255) + (number >> 8) + 0x32);
				goto _Laddprefixes;
			}
		}
		if (UOp1[0] == '(' && UOp1[strlen(UOp1) - 1] == ')') {
			if (!strcmp(UOp2, "BC")) {
				number = GetNumber(strsub(STR6, Op1, 2, (int) (strlen(Op1) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x130);
				goto _Laddprefixes;
			}
			if (!strcmp(UOp2, "DE")) {
				number = GetNumber(strsub(STR6, Op1, 2, (int) (strlen(Op1) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x140);
				goto _Laddprefixes;
			}
			if (!strcmp(UOp2, "HL")) {
				number = GetNumber(strsub(STR6, Op1, 2, (int) (strlen(Op1) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x22);
				goto _Laddprefixes;
			}
			if (!strcmp(UOp2, "SP")) {
				number = GetNumber(strsub(STR6, Op1, 2, (int) (strlen(Op1) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x160);
				goto _Laddprefixes;
			}
		}
		if (UOp2[0] == '(' && UOp2[strlen(UOp2) - 1] == ')') {
			if (!strcmp(UOp1, "BC")) {
				number = GetNumber(strsub(STR6, Op2, 2, (int) (strlen(Op2) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x138);
				goto _Laddprefixes;
			}
			if (!strcmp(UOp1, "DE")) {
				number = GetNumber(strsub(STR6, Op2, 2, (int) (strlen(Op2) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x148);
				goto _Laddprefixes;
			}
			if (!strcmp(UOp1, "HL")) {
				number = GetNumber(strsub(STR6, Op2, 2, (int) (strlen(Op2) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x2a);
				goto _Laddprefixes;
			}
			if (!strcmp(UOp1, "SP")) {
				number = GetNumber(strsub(STR6, Op2, 2, (int) (strlen(Op2) - 2)));
				sprintf(a, "%c", (number & 255) + (number >> 8) + 0x168);
				goto _Laddprefixes;
			}
		}
		number = GetNumber(Op2);
		if (reg81 != 0xff) {
			if (Pass == 2 && number > 255)
				Errorstop("8 Bit!");
			sprintf(a, "%c", reg81 * 8 + number + 0x6);
			goto _Laddprefixes;
		}
		if (!strcmp(UOp1, "BC")) {
			sprintf(a, "%c", (number & 255) + (number >> 8) + 0x1);
			goto _Laddprefixes;
		}
		if (!strcmp(UOp1, "DE")) {
			sprintf(a, "%c", (number & 255) + (number >> 8) + 0x11);
			goto _Laddprefixes;
		}
		if (!strcmp(UOp1, "HL")) {
			sprintf(a, "%c", (number & 255) + (number >> 8) + 0x21);
			goto _Laddprefixes;
		}
		if (!strcmp(UOp1, "SP")) {
			sprintf(a, "%c", (number & 255) + (number >> 8) + 0x31);
			goto _Laddprefixes;
		}
	}
	if (!strcmp(UMnemo, "JP") && !strcmp(UOperands, "(HL)")) {
		strcpy(a, "\351");
		goto _Laddprefixes;
	}
	if (!strcmp(UMnemo, "IM")) {
		if (!strcmp(Operands, "0")) {
			sprintf(a, "%c", 0xed + 'F');
			goto _Laddprefixes;
		}
		if (!strcmp(Operands, "1")) {
			sprintf(a, "%c", 0xed + 'V');
			goto _Laddprefixes;
		}
		if (!strcmp(Operands, "2")) {
			sprintf(a, "%c", 0xed + '^');
			goto _Laddprefixes;
		}
		Errorstop("Syntax: IM 0/1/2");
	}
	if (!strcmp(UMnemo, "EX")) {
		i = strpos2(Operands, ",", 1);
		if (i == 0)
			Errorstop("Syntax: EX op1,op2");
		sprintf(STR5, "%.*s", i - 1, Operands);
		Trim(Op1, STR5);
		Trim(Op2, strcpy(STR6, Operands + i));
		UpCaseStr(UOp1, Op1);
		UpCaseStr(UOp2, Op2);
		if (!strcmp(UOp1, "(SP)") && !strcmp(UOp2, "HL")) {
			strcpy(a, "\343");
			goto _Laddprefixes;
		}
		if (!strcmp(UOp1, "AF") && !strcmp(UOp2, "AF'")) {
			strcpy(a, "\b");
			goto _Laddprefixes;
		}
		if (!strcmp(UOp1, "DE") && !strcmp(UOp2, "HL")) {
			strcpy(a, "\353");
			goto _Laddprefixes;
		}
	}
	if (!strcmp(UMnemo, "RST")) {
		number = GetNumber(Operands);
		if ((number & 7) > 0 || number > 0x38)
			Errorstop("Syntax: RST 0/8/10/18/20/28/30/38");
		sprintf(a, "%c", number + 0xc7);
		goto _Laddprefixes;
	}
	if (!strcmp(UMnemo, "IN")) {
		i = strpos2(Operands, ",", 1);
		if (i != 0) {
			sprintf(STR5, "%.*s", i - 1, Operands);
			Trim(Op1, STR5);
			Trim(Op2, strcpy(STR6, Operands + i));
			UpCaseStr(UOp1, Op1);
			UpCaseStr(UOp2, Op2);
			if (!strcmp(UOp1, "A") && UOp2[0] == '(' &&
			    UOp2[strlen(UOp2) - 1] == ')' && strcmp(UOp2, "(C)")) {
				number = GetNumber(strsub(STR6, Op2, 2, (int) (strlen(Op2) - 2)));
				if (number > 255)
					Errorstop("8 Bit!");
				sprintf(a, "%c", number + 0xdb);
				goto _Laddprefixes;
			}
		}
	}
	if (!strcmp(UMnemo, "OUT")) {
		i = strpos2(Operands, ",", 1);
		if (i != 0) {
			sprintf(STR5, "%.*s", i - 1, Operands);
			Trim(Op1, STR5);
			Trim(Op2, strcpy(STR6, Operands + i));
			UpCaseStr(UOp1, Op1);
			UpCaseStr(UOp2, Op2);
			if (!strcmp(UOp2, "A") && UOp1[0] == '(' &&
			    UOp1[strlen(UOp1) - 1] == ')' && strcmp(UOp1, "(C)")) {
				number = GetNumber(strsub(STR6, Op1, 2, (int) (strlen(Op1) - 2)));
				if (number > 255)
					Errorstop("8 Bit!");
				sprintf(a, "%c", number + 0xd3);
				goto _Laddprefixes;
			}
		}
	}
	/* In Tabellen erfaßte Mnemos */
	if (*Operands == '\0')	/* Addmode 0 */
		Addmode = 0;
	else {			/* Parameter vorhanden */
		if (!strcmp(UpCaseStr(STR6, strsub(STR5, Operands,
					  (int) (strlen(Operands) - 2), 3)),
			    "(C)")) {	/* Addmode D */
			sprintf(STR7, "%.*s", (int) (strlen(Operands) - 3), Operands);
			strcpy(Operands, Trim(STR4, STR7));
			if (Operands[strlen(Operands) - 1] != ',')
				Errorstop("Syntax: B/C/D/E/H/L/A,(C)");
			sprintf(STR8, "%.*s", (int) (strlen(Operands) - 1), Operands);
			strcpy(Operands, UpCaseStr(STR4, Trim(STR7, STR8)));
			reg = 0xff;
			for (i = 0; i < Z80REGS; i++) {
				if (!strcmp(Operands, Z80REG[i])) {
					reg = i;
					goto _LBreak3;
				}
			}
	_LBreak3:
			if (reg == 0xff)
				Errorstop("Syntax: B/C/D/E/H/L/A,(C)");
			Addmode = 0xd;
			goto _LAddmodeOK;
		}
		sprintf(STR5, "%.3s", Operands);
		if (!strcmp(UpCaseStr(STR6, STR5), "(C)")) {	/* Addmode E */
			strcpy(Operands, Trim(STR4, strcpy(STR7, Operands + 3)));
			if (Operands[0] != ',' || *Operands == '\0')
				Errorstop("Syntax: (C),B/C/D/E/H/L/A");
			strcpy(Operands,
			       UpCaseStr(STR4, Trim(STR7, strcpy(STR8, Operands + 1))));
			reg = 0xff;
			for (i = 0; i < Z80REGS; i++) {
				if (!strcmp(Operands, Z80REG[i])) {
					reg = i;
					goto _LBreak4;
				}
			}
	_LBreak4:
			if (reg == 0xff)
				Errorstop("Syntax: B/C/D/E/H/L/A,(C)");
			Addmode = 0xe;
			goto _LAddmodeOK;
		}
		sprintf(STR5, "%.2s", Operands);
		if (!strcmp(UpCaseStr(STR6, STR5), "A,")) {	/* Addmode 1 oder 2 */
			strcpy(Operands,
			       UpCaseStr(STR4, Trim(STR7, strcpy(STR8, Operands + 2))));
			reg8 = 0xff;
			for (i = 0; i < Z80REG8S; i++) {
				if (!strcmp(Operands, Z80REG8[i])) {
					reg8 = i;
					goto _LBreak5;
				}
			}
	_LBreak5:
			if (reg8 != 0xff)	/* Addmode 1 */
				Addmode = 1;
			else {
				Addmode = 2;
				number = GetNumber(Operands);
			}
			goto _LAddmodeOK;
		}
		sprintf(STR5, "%.3s", Operands);
		if (!strcmp(UpCaseStr(STR6, STR5), "HL,")) {	/* Addmode 3 */
			strcpy(Operands,
			       UpCaseStr(STR4, Trim(STR7, strcpy(STR8, Operands + 3))));
			reg16 = 0xff;
			for (i = 0; i < Z80REG16S; i++) {
				if (!strcmp(Operands, Z80REG16[i])) {
					reg16 = i;
					goto _LBreak6;
				}
			}
	_LBreak6:
			if (reg16 == 0xff)
				Errorstop("Syntax: HL, BC/DE/HL/SP");
			Addmode = 3;
			goto _LAddmodeOK;
		}
		if (isdigit(Operands[0]) && Operands[1] == ',' && strlen(Operands) > 1) {	/* Addmode 7 */
			strcpy(Operands,
			       UpCaseStr(STR6, Trim(STR5, strcpy(STR4, Operands + 2))));
			reg8 = 0xff;
			for (i = 0; i < Z80REG8S; i++) {
				if (!strcmp(Operands, Z80REG8[i])) {
					reg8 = i;
					goto _LBreak7;
				}
			}
	_LBreak7:
			if (reg8 != 0xff) {
				Addmode = 7;
				number = Operands[0] - 48;
			} else
				Errorstop("Syntax: ?, B/C/D/E/H/L/(HL)/A");
			goto _LAddmodeOK;
		}
		/* Auf Addmode 4 testen */
		UpCaseStr(Operands2, Operands);
		reg8 = 0xff;
		for (i = 0; i < Z80REG8S; i++) {
			if (!strcmp(Operands2, Z80REG8[i])) {
				reg8 = i;
				goto _LBreak8;
			}
		}
_LBreak8:
		if (reg8 != 0xff) {	/* Addmode 4 */
			Addmode = 4;
			goto _LAddmodeOK;
		}
		/* Auf Addmode F testen */
		reg162 = 0xff;
		for (i = 0; i < Z80REG162S; i++) {
			if (!strcmp(Operands2, Z80REG162[i])) {
				reg162 = i;
				goto _LBreak9;
			}
		}
_LBreak9:
		if (reg162 != 0xff) {	/* Addmode F */
			Addmode = 0xf;
			goto _LAddmodeOK;
		}
		/* Auf Addmode 6 testen */
		reg816 = 0xff;
		for (i = 0; i < Z80REG816S; i++) {
			if (!strcmp(Operands2, Z80REG816[i])) {
				reg816 = i;
				goto _LBreak10;
			}
		}
_LBreak10:
		if (reg816 != 0xff) {	/* Addmode 6 */
			Addmode = 6;
			goto _LAddmodeOK;
		}
		/* Auf Addmode A,B,C (cond) testen */
		po = strpos2(Operands, ",", 1);
		if (po > 0 || strlen(Operands) <= 2) {
			if (po == 0)
				po = 255;
			sprintf(STR4, "%.*s", po - 1, Operands);
			UpCaseStr(Operands2, Trim(STR5, STR4));
			cond = 0xff;
			for (i = 0; i < Z80CONDS; i++) {
				if (!strcmp(Operands2, Z80COND[i])) {
					cond = i;
					goto _LBreak11;
				}
			}
	_LBreak11:
			if (cond != 0xff) {
				if (po == 255)
					Addmode = 0xc;
				else {
					number = GetNumber(Trim(STR5, strcpy(STR4, Operands + po)));
					Addmode = 0xa;
				}
				goto _LAddmodeOK;
			}
		}
		/* nichts gefunden, dann absolut, Addmode 8 */
		Addmode = 8;
		number = GetNumber(Operands);
	}
_LAddmodeOK:
	/* Opcode suchen */
	MnemoNum = 0;
	for (ArrayScan = 1; ArrayScan <= Z80MNEMOS; ArrayScan++) {
		if (!strcmp(Z80Mnemo[ArrayScan - 1], Mnemo) &&
		    Z80Addmode[ArrayScan - 1] == Addmode) {
			MnemoNum = ArrayScan;
			goto _LBreak12;
		}
	}
_LBreak12:
	if (MnemoNum == 0) {
		if (Addmode == 8) {
			Addmode = 9;
			goto _LAddmodeOK;
		}
		if (Addmode == 9) {
			Addmode = 5;
			goto _LAddmodeOK;
		}
		if (Addmode == 0xa) {
			Addmode = 0xb;
			goto _LAddmodeOK;
		}
		if (Addmode == 4) {
			Addmode = 6;
			/*
			 * Konvertierung der Registernummer von REG8 nach
			 * REG816!
			 */
			reg816 = Z80REGCONV1[reg8];
			goto _LAddmodeOK;
		}
		if (Addmode == 0xf) {
			Addmode = 6;
			/*
			 * Konvertierung der Registernummer von REG162 nach
			 * REG816!
			 */
			reg816 = Z80REGCONV2[reg162];
			if (reg816 != 0xff)	/* sonst schlug Reg.-Konv.
						 * fehl */
				goto _LAddmodeOK;
		}
		Errorstop("Unknown Addressing Mode");
	}
	Op = Z80Opcode[MnemoNum - 1];
	if (Op > 255) {
		a[0] = Op;
		a[1] = Op>>8;
		aLen = 2;
	} else {
		a[0] = Op;
		aLen = 1;
	}
	switch (Addmode) {

	case 1:
		a[aLen-1] += reg8;
		break;

	case 2:
		if (Pass == 2) {
			if (number > 255)
				Errorstop("8 Bit!");
			a[aLen] = number;
		}
		aLen++;
		break;

	case 3:
		a[aLen-1] += reg16 * 0x10;
		break;

	case 4:
		a[aLen-1] += reg8;
		break;

	case 5:
		if (Pass == 2) {
			if (number > 255)
				Errorstop("8 Bit!");
			a[aLen] = number;
		}
		aLen++;
		break;

	case 6:
		a[aLen-1] += Z80OPCODECONV[reg816];
		break;

	case 7:
		a[aLen-1] += number * 8 + reg8;
		break;

	case 8:
		if (Pass == 2) {
			a[aLen] = number;
			a[aLen+1] = number>>8;
		}
		aLen += 2;
		break;

	case 9:
		if (Pass == 2) {
			branch = number - opaddress - 2;
			if (branch < -128 || branch > 127)
				Errorstop("Label out of range!");
			branch2 = branch;
			a[aLen] = branch2;
		}
		aLen++;
		break;

	case 0xa:
		a[aLen-1] += cond * 8;
		if (Pass == 2) {
			a[aLen] = number;
			a[aLen++] = number>>8;
		}
		aLen += 2;
		break;

	case 0xb:
		if (!strcmp(UMnemo, "JR") && cond > 3)
			Errorstop("Invalid condition for JR");
		a[aLen-1] += cond * 8;
		if (Pass == 2) {
			branch = number - opaddress - 2;
			if (branch < -128 || branch > 127)
				Errorstop("Label out of range!");
			branch2 = branch;
			a[aLen] = branch2;
		}
		aLen++;
		break;

	case 0xc:
		a[aLen-1] += cond * 8;
		break;

	case 0xd:
		a[aLen-1] += reg * 8;
		break;

	case 0xe:
		a[aLen-1] += reg * 8;
		break;

	case 0xf:
		a[aLen-1] += reg162 * 0x10;
		break;
	}
_Laddprefixes:
	if ((!strcmp(Mnemo, "ADC") || !strcmp(Mnemo, "SBC")) && Prefix > 0 &&
	    addbytepresent == false)
		Errorstop("ix/iy not allowed here!");
	if (!strcmp(a, "\353") && Prefix > 0)	/* der Teufel weiß, warum */
		Errorstop("ix/iy not allowed here!");
	if (Prefix > 0) {
		memmove(&a[1], &a[0], aLen);
		a[0] = Prefix;
		aLen++;
	}
	if (addbytepresent)
		a[aLen++] = addbyte;
	return aLen;
}


int
Assemble(char *a, char *curL_)
{
	int aLen;
	Char aa[256];
	Char            *curL;
	Char            Operand2[256], b[256];
	Char            STR4[256];
	Char            STR5[256];
	unsigned short  FORLIM;
	Char            STR6[256];

	curL = curL_;
	aLen = 0;
	if (curL[0] == '.') {	/* Pseudo-Opcode */
		curL++;
		ins = FindSeparator(curL);
		if (ins > 0) {
			sprintf(Pseudo, "%.*s", ins - 1, curL);
			Trim(Operand, strcpy(STR5, curL + ins - 1));
		} else {
			strcpy(Pseudo, curL);
			*Operand = '\0';
		}
//printf("operand: '%s'\n", Operand);
		sprintf(STR4, "%.2s", Pseudo);
		strcpy(Pseudo, UpCaseStr(STR5, STR4));
		PseudoOK = false;
		if (!strcmp(Pseudo, "RL")) {	/* Index-Register auf 16 Bit */
			if (Cpu != 2)
				Errorstop("Only supported by 65802/65816!");
			PseudoOK = true;
			SizeIndex = true;
		}
		if (!strcmp(Pseudo, "RS")) {	/* Index-Register auf 8 Bit */
			PseudoOK = true;
			SizeIndex = false;
		}
		if (!strcmp(Pseudo, "AL")) {	/* Akku auf 16 Bit */
			if (Cpu != 2)
				Errorstop("Only supported by 65802/65816!");
			PseudoOK = true;
			SizeAccu = true;
		}
		if (!strcmp(Pseudo, "AS")) {	/* Akku auf 8 Bit */
			PseudoOK = true;
			SizeAccu = false;
		}
		if (!strcmp(Pseudo, "CP")) {	/* .CPU */
			PseudoOK = true;
			CpuIllegal = false;
			if (!strcmp(Operand, "6502")) {
				Cpu = 0;
				PseudoOK = true;
			}
			sprintf(STR5, "%.7s", UpCaseStr(STR4, Operand));
			if (!strcmp(STR5, "6502ILL")) {
				Cpu = 1;
				CpuIllegal = true;
				PseudoOK = true;
			}
			if (!strcmp(UpCaseStr(STR5, Operand), "65C02")) {
				Cpu = 1;
				PseudoOK = true;
			}
			if (!strcmp(Operand, "65816") || !strcmp(Operand, "65802")) {
				Cpu = 2;
				PseudoOK = true;
			}
			if (!strcmp(UpCaseStr(STR5, Operand), "Z80")) {
				Cpu = 80;
				PseudoOK = true;
			}
			if (!PseudoOK)
				Errorstop("Supported CPUs: 6502,6502ILL,65C02,65802/65816/Z80!");
		}
		if (!strcmp(Pseudo, "PE")) {
			AsciiFlag = 0;
			PseudoOK = true;
		}
		if (!strcmp(Pseudo, "AS")) {
			AsciiFlag = 1;
			PseudoOK = true;
		}
		if (!strcmp(Pseudo, "BA") || !strcmp(Pseudo, "OR") ||
		    !strcmp(Pseudo, "SE")) {	/* .ba oder .org oder .setpc */
			PseudoOK = true;
			unknown = false;
			number = GetNumber(Operand);
			SetLabel("*", (int) number);
		}
		if (!strcmp(Pseudo, "ST")) {	/* .start */
			PseudoOK = true;
			unknown = false;
			number = GetNumber(Operand);
			startjumpaddress = number;
			//TODO: was used for transfer; can be reused for emulator snapshots
		}
		if (!strcmp(Pseudo, "SA")) {	/* store at */
			PseudoOK = true;
			unknown = false;
			number = GetNumber(Operand);
			StoreAddresses[nStoreAddresses].ocodeindex = ocodeIndex;
			StoreAddresses[nStoreAddresses].memoryaddress = number;
			nStoreAddresses++; //TODO: check upper bound
		}
		if (!strcmp(Pseudo, "AS"))
			/* assemblefor; logische Assemblieradresse ändern, */
		{		/* Ort im Speicher beibehalten */
			PseudoOK = true;
			unknown = false;
			number = GetNumber(Operand);
			opaddress = number;
		}
		if (!strcmp(Pseudo, "OB")) {	/* .object */
			PseudoOK = true;
			if (*Operand == '\0')
				Errorstop("Filename required!");
			if (Operand[0] == '"') {
				strcpy(STR5, Operand + 1);
				strcpy(Operand, STR5);
			}
			if (Operand[strlen(Operand) - 1] == '"')
				Operand[strlen(Operand) - 1] = '\0';
			sprintf(STR5, "%.2s", Operand);
			if (!strcmp(STR5, "@:")) {
				strcpy(STR4, Operand + 2);
				strcpy(Operand, STR4);
			}
			ins = strpos2(Operand, ",", 1);
			if (ins > 0) {
				UpCaseStr(aa, strsub(STR4, Operand, ins + 1, 1));
				sprintf(Operand, "%.*s", ins - 1, strcpy(STR4, Operand));
				if (!strcmp(aa, "P"))
					strcat(Operand, ".PRG");
				if (!strcmp(aa, "S"))
					strcat(Operand, ".SEQ");
				if (!strcmp(aa, "U"))
					strcat(Operand, ".USR");
			}
			strcpy(SaveName, Operand);
			SaveAs = SAVE_AS_PRG;
		}
		if (!strcmp(Pseudo, "BR") || !strcmp(Pseudo, "DS")) {	/* .br oder .ds (define
									 * storage) */
			PseudoOK = true;
			ins = strpos2(Operand, ",", 1);
			if (ins == 0)
				Errorstop("At least two operands required!");
			if (strpos2(strcpy(STR4, Operand + ins), ",", 1) > 0)
				Errorstop("Too many operands!");
			unknown = false;
			sprintf(STR4, "%.*s", ins - 1, Operand);
			times = GetNumber(STR4);
			if (unknown || times == 0)
				Errorstop("Repeat number error!");
			unknown = false;
			number = GetNumber(strcpy(STR4, Operand + ins));
			if (unknown)
				number = 0;
			if (number > 256)
				Errorstop("Byte > 8 Bit!");
			if (!nStoreAddresses)
				Errorstop("Base missing!");
			if (Pass == 2) {
				if (ocodeIndex + times > MAXOCODE)
					Errorstop("Object code overflow!");
				FORLIM = times;
				for (i = 0; i < FORLIM; i++)
					ocode[ocodeIndex + i] = number;
				ocodeIndex += times;
			}
			opaddress += times;
			aLen = 0;
		}
		if (!strcmp(Pseudo, "BY") || !strcmp(Pseudo, "DB") || !strcmp(Pseudo, "B")) {
			PseudoOK = true;
			insold = 1;
			strcat(Operand, ",");
			aLen = 0;
			do {
				ins = strpos2(KillQuotes(STR4, strcpy(STR5, Operand + insold - 1)),
					      ",", 1);
				if (ins == 0)	/* ! .by ohne Parameter ->
						 * Fehler! */
					goto _LBreak;
				unknown = false;
				strsub(Operand2, Operand, insold, ins - 1);
				if (Operand2[0] == '"' && Operand2[strlen(Operand2) - 1] == '"') {
					/* ASCII-String */
					strsub(b, Operand2, 2, (int) (strlen(Operand2) - 2));
					if (AsciiFlag == 0 && Pass == 2)
						strcpy(b, SPetscii(STR4, b));
					strcpy(a+aLen, b); //TODO: security
					aLen += strlen(b);
				} else {
					number = GetNumber(Operand2);
					if (unknown)
						number = 0;
					if (number > 256)
						Errorstop("Byte > 8 Bit!");
					a[aLen++] = number;
				}
				insold += ins;
			} while (true);
	_LBreak:	;
		}
		if (!strcmp(Pseudo, "LA") || !strcmp(Pseudo, "EQ")) {	/* .la oder .equate */
			PseudoOK = true;
//printf("operand: '%s'\n", Operand);
			ins = strpos2(Operand, "=", 1);
			if (ins == 0)
				Errorstop("\"=\" expected");
			unknown = false;
			number = GetNumber(strcpy(STR4, Operand + ins));
			if (unknown == false) {
				sprintf(STR6, "%.*s", ins - 1, Operand);
				SetLabel(Trim(STR4, UpCaseStr(STR5, STR6)), (int) number);
			}
			/* wenn Value nicht bekannt, Zuweisung ignorieren */
		}
		if (!strcmp(Pseudo, "TX") || !strcmp(Pseudo, "TE")) {
			/* .tx oder .text */
			PseudoOK = true;
			if (Operand[0] != QUOTE)
				Errorstop("Quote expected!");
			strcpy(a, Operand + 1);
			if (a[strlen(a) - 1] == QUOTE)
				a[strlen(a) - 1] = '\0';
			/* nach Petscii {!Bug in ASS16.BAS? */
			if (AsciiFlag == 0 && Pass == 2)
				strcpy(a, SPetscii(STR4, a));
			aLen = strlen(a);
		}
		if (!strcmp(Pseudo, "TS")) {	/* Screencode */
			PseudoOK = true;
			if (Operand[0] != QUOTE)
				Errorstop("Quote expected!");
			strcpy(a, Operand + 1);
			if (a[strlen(a) - 1] == QUOTE)
				a[strlen(a) - 1] = '\0';
			strcpy(a, SScrCode(STR4, a));
			aLen = strlen(a);
		}
		if (!strcmp(Pseudo, "WO") || !strcmp(Pseudo, "DW") || !strcmp(Pseudo, "W")) {
			PseudoOK = true;
			insold = 1;
			strcat(Operand, ",");
			aLen = 0;
			do {
				ins = strpos2(strcpy(STR4, Operand + insold - 1), ",", 1);
				if (ins == 0)	/* ! .by ohne Parameter ->
						 * Fehler! */
					goto _LBreak2;
				unknown = false;
				number = GetNumber(strsub(STR4, Operand, insold, ins - 1));
				if (unknown)
					number = 0;
				a[aLen++] = number;
				a[aLen++] = number>>8;
				insold += ins;
			} while (true);
	_LBreak2:	;
		}
		if (!strcmp(Pseudo, "MA")) {	/* macro */
			PseudoOK = true;
			if (Pass == 1) {
				ins = FindSeparator(Operand);
				if (ins == 0) {
					strcpy(actMacroName, Operand);
					*actMacroOperand = '\0';
				} else {
					sprintf(actMacroName, "%.*s", ins - 1, Operand);
					strcpy(actMacroOperand, Operand + ins);
				}
				ArrayFound = false;
				if (Macros > 0) {
					FORLIM = Macros;
					for (ArrayScan = 0; ArrayScan <= FORLIM; ArrayScan++) {
						if (!strcmp(MacroName[ArrayScan], actMacroName)) {
							help = ArrayScan;
							ArrayFound = true;
							goto _LBreak3;
						}
					}
				}
		_LBreak3:
				if (ArrayFound)
					Errorstop("Macro already defined!");
				strcpy(MacroName[Macros], actMacroName);
/* p2c: ASS29.PAS, line 2671:
 * Note: Possible string truncation in assignment [145] */
				strcpy(MacroOperand[Macros], actMacroOperand);
				i++;
				MacroSourceIndex = 0;
				do {
					curL = ReadLine();
//printf("line read: '%s'\n", curL);
					if (*curL == '\0')
						Errorstop("End of macro expected!");
					sprintf(STR5, "%.3s", curL);
					if (!strcmp(UpCaseStr(STR4, STR5), ".EN"))
						goto _LBreak4;
					/* Zeile in Makro-Quelltext kopieren */
//printf("%x, %d)\n", &MacroSourceText[Macros][0], MacroSourceIndex);
					memcpy(&MacroSourceText[Macros][MacroSourceIndex], curL, strlen(curL));
//printf("'%s'\n", curL);
//printf("memcpy(%x, %x, %d)\n", &MacroSourceText[Macros][SourceIndex], curL, strlen(curL));
					MacroSourceIndex += strlen(curL) + 1;
					MacroSourceText[Macros][SourceIndex - 1] = 0;
					i++;
				} while (true);
		_LBreak4:
				MacroSourceEnd[Macros] = MacroSourceIndex;
				Macros++;
			} else {/* im Pass 2 überspringen */
				i++;
				do {
					sprintf(STR4, "%.3s", ReadLine());
					if (!strcmp(UpCaseStr(STR5, STR4), ".EN"))
						goto _LBreak5;
					i++;
				} while (true);
		_LBreak5:	;
			}
		}
		if (!strcmp(Pseudo, "IF")) {	/* .if, bedingte
						 * Assemblierung */
			PseudoOK = true;
			ins = strpos2(Operand, "=", 1);
			sprintf(STR5, "%.*s", ins - 1, Operand);
			number = GetNumber(STR5);
			number2 = GetNumber(strcpy(STR5, Operand + ins));
			if (number != number2) {
				do {
					curL = ReadLine();
					if (*curL == '\0')
						Errorstop("End if expected!");
				} while (strcmp(UpCaseStr(STR5, (sprintf(STR4, "%.3s", curL), STR4)),
						".EN"));
			} else
				IgnoreNextEnd = true;
		}
		if (!strcmp(Pseudo, "CO")) {	/* .comment, mehrzeiliger
						 * Kommentar */
			PseudoOK = true;
			do {
				curL = ReadLine();
				if (*curL == '\0')
					Errorstop("End if expected!");
			} while (strcmp(UpCaseStr(STR5, (sprintf(STR4, "%.3s", curL), STR4)),
					".EN"));
		}
		if (!strcmp(Pseudo, "LO")) {
			if (*Operand == '\0')
				Errorstop("Filename required");
			if (Operand[0] == '"') {
				strcpy(STR5, Operand + 1);
				strcpy(Operand, STR5);
			}
			i = strpos2(Operand, "\"", 1);
			if (i == 0)
				i = 255;
			sprintf(a, "%.*s", i - 1, Operand);
			strcpy(STR5, Operand + i);
			strcpy(Operand, STR5);
			if (*Operand != '\0') {
				if (Operand[0] != ',')
					Errorstop("\",\" expected!");
				number = GetNumber(strcpy(STR5, Operand + 1));
			} else
				number = 0xffffL;
			if (strlen(Loads) + strlen(a) > 252)
				Errorstop("Too many files to load!");
			/* TODO: Must be done with arrays */
			if (Pass == 2) {
				sprintf(Loads + strlen(Loads), "%s%c",
					a, (number & 255) + (((unsigned long) number) >> 8));
/* p2c: ASS29.PAS, line 2738:
 * Note: Null character at end of sprintf control string [148] */
			}
			*a = '\0';
			PseudoOK = true;
		}
		if (!PseudoOK)
			Errorstop("Unknown pseudo opcode!");
		goto _Lcodeok;
	}
	if (curL[strlen(curL) - 1] == COLON) {	/* Label definieren */
		sprintf(STR4, "%.*s", (int) (strlen(curL) - 1), curL);
		SetLabel(UpCaseStr(STR5, STR4), opaddress);
		return 0;
	}
	if (Cpu == 80)
		aLen = AssembleZ80(a, curL);
	else
		aLen = Assemble65xx(a, curL);
_Lcodeok:
	return aLen;
}

/* Main */
Static unsigned short b1;
Static uchar    b2;		/* für geheime Botschaft */
Static Char     s[256] = "\004"; /*TODO: translation bug*/

main(argc, argv)
	int             argc;
	Char           *argv[];
{
	int aLen;
	Static Char*     ParameterFile;
	char*	ins;
	Char            STR2[256];
	Char            STR4[256];
	Char            STR5[28];
	unsigned short  FORLIM;
	Char            STR6[256], STR7[256], STR8[256];
	uchar           FORLIM1;
	Char            STR9[36];

	PASCAL_MAIN(argc, argv);
	SymbolsFile = NULL;
	SaveFile = NULL;
	OpcodesFile = NULL;
	SourceText = (char *) Malloc(SOURCEMEM);

	// TODO: we could re-add this feature from BASIC
	/* Co:=Environ$("6502")+" "+Command$+" " */

	printf("\nMXASS       6502/65816/Z80 X-Assembler      Version 0.30a   XX-XX-08\n");
	printf("Copr. 1995-2008 Michael Steil. All rights reserved.\n\n");

	/* geheime Botschaft */
	if (P_argc == 2 && strlen(strcpy(STR4, P_argv[1])) == 8) {
		strcpy(a, P_argv[1]);
		for (i = 1; i <= 8; i++) {
			b1 += a[i - 1] * i;
			b2 ^= a[i - 1];
		}
		if (b1 == 3717 && b2 == 47) {
			printf("MXASS is dedicated to %s. ", a);
			for (i = 1; i <= 8; i++) {
				if (i == 5)
					putchar(' ');
				putchar(a[i - 1] + s[i - 1]);
			}
			printf("!\n");
			exit(0);
		}
	}

	/* Kommandozeile parsen */
	ParameterFile = NULL;
	SaveAs = SAVE_AS_NONE;
	Symbols = false;
	for (i = 1; i < P_argc; i++) {
		boolean SwitchOK;
		if (P_argv[i][0] == '\0') continue;
		if (P_argv[i][0] == '-') {
			UpCaseStr(SwitchParameter, P_argv[i] + 1);
			if (!strcmp(SwitchParameter, "OCODE")) {
				SaveAs = SAVE_AS_OCODE;
			}
			else if (!strcmp(SwitchParameter, "PRG")) {
				SaveAs = SAVE_AS_PRG;
			}
			else if (!strcmp(SwitchParameter, "P00")) {
				SaveAs = SAVE_AS_P00;
			}
			else if (!strcmp(SwitchParameter, "D64")) {
				SaveAs = SAVE_AS_D64;
			}
			else if (!strcmp(SwitchParameter, "T64")) {
				SaveAs = SAVE_AS_T64;
			}
			else if (!strcmp(SwitchParameter, "C64")) {
				SaveAs = SAVE_AS_C64;
			}
			else if (!strcmp(SwitchParameter, "SHOW")) {
				Show = true;
			}
			else if (!strcmp(SwitchParameter, "SHOW-")) {
				Show = false;
			}
			else if (!strcmp(SwitchParameter, "SYM")) {
				Symbols = true;
			}
			else if (!strcmp(SwitchParameter, "SYM-")) {
				Symbols = false;
			}
			else {
				printf("Unknown switch -%s!\n", SwitchParameter);
				exit(1);
			}
		} else
			ParameterFile = P_argv[i];
	}

	if (!ParameterFile) {
		printf("Usage:  MXASS [-options] filename[.ASM]\n\n");
		printf("Valid options: (*) = default\n");
		printf("  -ocode     The object code will be written to disk as a binary file with the\n");
		printf("             extention .OBJ\n");
		printf("  -prg       The object code will be written to disk as a binary file with the\n");
		printf("             extention .PRG containing the load address at the beginning\n");
		printf("  -p00       The object code will be written to disk as a Personal C64 P00-file\n");
/*
		printf("  -d64       The object code will be written to disk as a D64-file as used by\n");
		printf("             several emulators\n");
		printf("  -c64       The object code will be written to disk as a Personal C64 C64-file\n");
*/
		printf("  -show      Every line being assembled will be shown on the screen\n");
		printf("  -show-     Quiet mode (*)\n");
		printf("  -sym       The program symbols will be written to disk as a text file with\n");
		printf("             the extention .SYM\n");
		printf("  -sym-      The program symbols will not be written to disk (*)\n");

		exit(0);
	}
	ins = strrchr(ParameterFile, '.');
	if (ins)
		strncpy(Filename, ParameterFile, ins-ParameterFile);
	else {
		strncpy(Filename, ParameterFile, sizeof(Filename));
	}

	/* Z80-Opcodes einlesen */
	OpcodesFile = fopen(OPCODESFILENAMEZ80, "r+b");
	//TODO: error case
	for (i = 0; i <= Z80MNEMOS-1; i++) {
		fread(&Z80Mnemo[i], 4, 1, OpcodesFile);
		Z80Mnemo[i][4] = '\0';
		fread(&Z80Addmode[i], 1, 1, OpcodesFile);
		fread(&Z80Opcode[i], 2, 1, OpcodesFile); //TODO: only works on little endian
		if (ins = strchr(Z80Mnemo[i], ' '))
			*ins = 0;
//		printf("%s: %d, %02x-%02x\n", Z80Mnemo[i], Z80Addmode[i], Z80Opcode[i]&0xFF, Z80Opcode[i]>>8);
	}
	fclose(OpcodesFile);

	/* 65xx-Opcodes einlesen */
	OpcodesFile = fopen(OPCODESFILENAME, "r+b");
	//TODO: error case
	for (i = 0; i <= MNEMOS-1; i++) {
		fread(Mnemo[i], 1, 3, OpcodesFile);
		fread(&RegisterInvolved[i], 1, 1, OpcodesFile);
		for (j = 0; j < ADDMODES; j++)
			fread(&Opcode[i][j], 2, 1, OpcodesFile); //TODO: only works on little endian
//		printf("%s\n", Mnemo[i]);
	}
	fclose(OpcodesFile);

	printf(" *** Reading sourcecode \"%s\"\n", ParameterFile);

	SourceFiles = 0;
	SourceIndex = 0;
	lines = TrimSourceText(ParameterFile, 0);
//	printf("lines: %d\n", lines);
	reallines = reallinenumber[lines - 1];
	SourceEnd = SourceIndex;
	IgnoreNextEnd = false;

	StartTime = Time;
	Labels = 0;
	for (Pass = 1; Pass <= 2; Pass++) {
		printf(" *** Pass%d\n", Pass);
		ocodeIndex = 0;
		opaddress = 0;
		AsciiFlag = 1;
		Cpu = 0;
		CpuIllegal = false;
		SizeAccu = false;
		SizeIndex = false;
		nStoreAddresses = 0;
		SourceIndex = 0;
		i = 0;
		do {
			currentline = reallinenumber[i];
			CurL = ReadLine();
//printf("%x\n", CurL);
//printf("'%s'\n", CurL); //DEBUG
//printf("\n\n\nXX'%c' '%c' '%c'XX\n\n\n\n", CurL[0], CurL[1], CurL[2]);
			if (*CurL == '\0') break;
			i++;
			if (!strcmp(UpCaseStr(STR4, CurL), ".EN")) {
				if (!IgnoreNextEnd) break; /* Ende der Assemblierung, alles nach .en überlesen */
				strcpy(CurL, "ANOP");	/* Zeile ignorieren */
				IgnoreNextEnd = false;
			}
			aLen = Assemble(a, CurL);
			if (aLen && !nStoreAddresses)
				Errorstop("Base missing!");
			if (Pass == 2) {
				if (ocodeIndex + aLen > MAXOCODE)
					Errorstop("Object code overflow!");
				FORLIM1 = aLen;
				for (j = 1; j <= FORLIM1; j++)
					ocode[ocodeIndex + j - 1] = a[j - 1];
				ocodeIndex += aLen;
			}
			opaddress += aLen;
			if (Show == true && Pass == 2) {
				sprintf(PrintLine, "%s ", Hex(STR4, oldopaddress, 4));
				if (aLen) {
					FORLIM1 = aLen;
					for (ShowIndex = 1; ShowIndex <= FORLIM1; ShowIndex++)
						sprintf(PrintLine + strlen(PrintLine), "%s ",
							Hex(STR4, a[ShowIndex - 1], 2));
				}
				while (strlen(PrintLine) < 20)
					strcat(PrintLine, " ");
				sprintf(PrintLine, "%.20s", strcpy(STR4, PrintLine));
				if (CurL[strlen(CurL) - 1] != ':') {
					while (strlen(PrintLine) < 28)
						strcat(PrintLine, " ");
				}
				strcat(PrintLine, CurL);
				puts(PrintLine);
				oldopaddress = opaddress;
			}
		} while (true);
	}

	printf("\nAssembly O.K. (%5.2f sec), $%s-$%s\n",
	       (Time - StartTime) / 18.2, Hex(STR4, startaddress, 4),
	       Hex(STR8, startaddress + ocodeIndex, 4));
	if (Time - StartTime != 0)
		printf("%5.0f lines/sec.\n", reallines / ((Time - StartTime) / 18.2));

	if (SaveAs != SAVE_AS_NONE) {
		printf("Save...");
		switch (SaveAs) {
		case SAVE_AS_OCODE:
			sprintf(SaveFile_NAME, "%s.obj", Filename);
			SaveFile = fopen(SaveFile_NAME, "w+b");
			fwrite(ocode, ocodeIndex, 1, SaveFile);
			fclose(SaveFile);
			break;

		case SAVE_AS_PRG:
			if (*SaveName == '\0')
				sprintf(SaveName, "%s.prg", Filename);
			SaveFile = fopen(SaveName, "w+b"); //TODO: error handling
			fwrite(&startaddress, 2, 1, SaveFile);
			fwrite(ocode, ocodeIndex, 1, SaveFile);
			fclose(SaveFile);
			break;

		case SAVE_AS_P00:
			sprintf(SaveFile_NAME, "%s.p00", Filename);
			SaveFile = fopen(SaveFile_NAME, "w+b");
			SPetscii(Header, Filename);
			fwrite("C64File", 8, 1, SaveFile);
			fwrite(Header, strlen(Header), 1, SaveFile);
			for (i=strlen(Header); i<18; i++)
				fputc(0, SaveFile);
			fwrite(&startaddress, sizeof(unsigned short), 1, SaveFile);
			fwrite(ocode, ocodeIndex, 1, SaveFile);
			fclose(SaveFile);
			break;

		default:
			printf("Sorry, format not yet implemented!");
			exit(1);
			break;
		}
		printf("OK.\n");
	}
	if (Symbols == true) {
		printf("Saving symbols...");
		sprintf(STR7, "%s.sym", Filename);
		strcpy(SymbolsFile_NAME, STR7);
		if (SymbolsFile != NULL)
			SymbolsFile = freopen(SymbolsFile_NAME, "w", SymbolsFile);
		else
			SymbolsFile = fopen(SymbolsFile_NAME, "w");
		if (SymbolsFile == NULL)
			_EscIO(FileNotFound);
		fprintf(SymbolsFile, "#    name\n");
		FORLIM = Labels;
		for (i = 0; i < FORLIM; i++)
			fprintf(SymbolsFile, "%s %s\n", Hex(STR8, Value[i], 4), xLabel[i]);

		if (SymbolsFile != NULL)
			fclose(SymbolsFile);
		SymbolsFile = NULL;
		printf("OK.\n");
	}
	putchar('\n');

	Free(SourceText);

	if (OpcodesFile != NULL)
		fclose(OpcodesFile);
	if (SaveFile != NULL)
		fclose(SaveFile);
	if (SymbolsFile != NULL)
		fclose(SymbolsFile);
	exit(EXIT_SUCCESS);
}


/*
****************************************************************************
 in die Tat umgesetzte Erweiterungen:

 - lo/hi-Berechnungs-Optimierung                               300596/300596
 - Geschwindigkeit!!!                                          290596/300596
 - Ausgabe als PRG, P00, N64                                   290596/300596
 - INCLUDE von ASM-Files                                       300596/010696
 - eigenes 64NET-Wedge (verkürztes Wedge für ASS14+)           300596/100896
 - Übertragung an C64 per PC64-Kabel                           290596/180896
 - BRK führt zu Fehler, da Code 00 auch bedeutet "nicht
   möglich"                                                    080796/171196
 - Screencode-Text                                             080796/240197
 - INCLUDE von Objectfiles                                     300596/240197
 - Leerzeichen bei .LA                                   CHECKY080397/210597
 - Suchen nach .LO-Dateien und .A18 im ASS-Verzeichnis   CHECKY080397/210597
 - Label und Mnemo in einer Zeile                              220597/220597
 - Z80-Assembler                                               191196/290597
 - Pseudo-Statements müssen auch in Makros erlaubt sein!       191196/300597
 - Makros in Z80-Code                                          300597/300597
 - Unterstrich _ muß in Labelnamen erlaubt sein                060497/170897
 - Bugs bei Namen mit ".."                                     300597/050398
 - .start-Pseudo-Opcode, um Einsprungsadresse festzulegen      300596/060398
 - * = aktuelle Position                                       180897/150398
 - .BR & DS > 255                                              170897/150398
 - überprüfen, wie der Assembler auf leere Makros reagiert     160897/170398
 - Bedingtes Assemblieren mit .if                              280597/170398
 - Abbruch bei Transfer                                  CHECKY080397/210598
 - GEOS!                                                       210597/200598

****************************************************************************
 geplante Erweiterungen:

 - lokale Labels können mittels ".la" definiert werden, was nicht
   richtig funktioniert, da lokale Labels nach Größe sortiert sein müssen
   (-> bei Sprungmarken immer gewährleistet, da Rückwärtsassemblierung
   nicht möglch (siehe "Base error!"))
   Abhilfe: .la ±label=... muß zu Fehler führen                       290596
 - Ausgabe als D64, C64 und Aufruf                                    290596
 - Starten eines Emulators/von 64NET                                  290596
 - Zeichenumsetzung bei P00-Dateien nötig: "-" wird zu "_"            010696
 - Punkt vor Strich!                                                  080796
 - End-of-Transmission! Kein Absturz des C64-Wedge-Programms          180896
 - X-Debugger                                                         180896
 - Spaces bei Rechnungen rausfiltern                                  191196
 - Synchronisationsfehler erkennen                                    260197
 - Flexible Port-Angabe für PC64 UND 64NET per Parameter              090397
 - mehrere Bases; Base<>Position im Speicher                     HOOGO210597
 - Linken von Libraries/Prozessor-Emulatoren                          210597
 - Transfer von 0 Bytes abfangen!                                     210597
 - Bedingtes Assemblieren mit .if                                     280597
 - Aufruf eines externen Übertragungsprogramms                        300597
 - Einheitlichere Kommandozeile                                       300597
 - ausführliche Hilfestellung als Overlay                             300597
 - Alle Bildschirmausgaben außer Line ??/?? nach STDOUT               300597
 - alles, was nach den Makros entdeckt wird (DC, EQU) fehlt in SHOW   160897
 - jmp.l                                                              160897
 - asl a                                                              160897
 - $12:1234                                                           170897
 - Unterscheidung von $0002 und DP:$02 beim 65816 (siehe Seite 202)   170897
 - DC A'ASCII'                                                        170897
 - GB Z80                                                             180897
 - '' statt ""                                                        180897
 - #define für Makros                                                 180897
 - Reassembler                                                        180897
 - Sharewareversion: Sonderbyte nach jedem RTS                        170398
 - Alternative zu .petscii, mit Sachen wie {orange}                   170398
 - Auswerten von Ausdrücken wie >,<,!,& (Boole)                       170398
 - Zeilenanzeige korrekt                                        CHECKY130298
 - SHOW bei Makros                                                    190598
 - Mnemos an Position 1                                          SOREX210598
 - Reihenfolge Code/Daten beim Transfer ändern!                  SOREX210598
 - Offset<=Offset                                                SOREX210598
 - ERRORLEVEL                                                         270598
>let it print the real line# instead of the physical opcode line#
>
>it gives error on lda$xxxx,x ldaxx,x type opcodes although that
>ldaxxxx and ldaxx are accepted.
>
>      main=$xxxx   doesn't work
>main=$xxxx   doesn't work either
>main= $xxxx   works
 - Bug: .text ".;" -> ; wird als Kommentar erkannt

*/

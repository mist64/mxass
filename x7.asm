
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; X-Dome #7
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Men
; 22.-27.07.1995
; 15.,16.08.95
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Textanzeiger fr X-Dome
; 09.07.1995
; 10.07.1995
; 13.07.1995
;  Umschgeschrieben von $35 nach $37
;  => Bank 1
; 14.07.1995
;  Schnellader
; 15.07.1995
; 25.07.1995
; 11.08.1995  Entpacker
; 12.,13.,14.,15.08.1995
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Verbesserungen fr Ausgabe #2
; 21.,22.09.1995 Flash-8
; 09.10.1995
; 31.10.,01.11.1995
; 02.11.1995 Koala
; 04.11.1995 Music Menu, 2*selbe Rubrik
;            Positionsbalken
; 12.11.1995
; 14.11.1995 Sprite-Animation
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Verbesserungen fr Ausgaben #3-#4
; wurden im Objectcode erledigt. Es
; handelte sich lediglich um kleinere
; Anpassungen
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Verbesserungen fr Ausgabe #5
; 08.07.1996 Portierung auf X-Ass,
;            Textanzeiger schluckt auch
;            Texte mit falscher Endadr.
;            L„ngenoptimierung
; 11.-13.07.1996 REU-RAM-Disk
; 13.07.1996 Neue Load-Animation
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Verbesserungen fr Ausgabe #6
; 29.11.1996 Bugfix: Flicker bei FLD
;            schnelleren Lader eingebaut
; 30.11.1996 Bugfix: Flicker bei Start
;            Ausflashen von LOADING
;            Einflashen des Logos
;            Logos werden oben nicht mehr
;            abgeschnitten (->rubypixels)
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Verbesserungen fr Ausgabe #6
; 19.05.1997 Hoogo's Schnellader


 .ba $9000
 .petscii
 .lo "flop.prg" ; $2000
 .la flop=$2000

 .la zaks=7

 .la screenlines=210

; fr Men
 .la cy=32
 .la cx=33
 .la reupos=34; + 35
 .la barcolor=36
 .la scroll=37
 .la fldindex=38
 .la d011inhalt=39
 .la scrollup=40
 .la subzp=41 ; + 42
 .la screenzp=43
 .la colindex=45
 .la fire=46
 .la flashcolor=47
 .la subtab=48
 .la colindex2=50
; 51 bis 54 frei
; 55 bis 64 reserviert fr Fastloader
 .la stopmusic=65
 .la stopmusiccounter=66
 .la volume=67
 .la nochmalflag=68
 .la lasttrk=69
 .la lastsec=70
 .la fadescreen=71
 .la fadecounter=72
 .la fadestep=73
 .la backtosubflag=74
 .la loadsprite=75
 .la oposy=76
 .la fld2=77
 .la lumchange=78 ; frs Faden von Logos
 .la printzp=79 ; Vektor bei Ausgabe von " LOADING " / "TURN DISK"

 .la oben=61
 .la unten=249
 .la links=24
 .la rechts=62

 .la maxspeed=2

 .la raster1=$fa
 .la raster2=41

 .la border=0
 .la subcol=15

 .la stopmusicspeed=11
 .la fadespeed=3

 .la mscreen=$0c00
 .la mcolors=$8800
 .la screenram=$0400
 .la submenus=$5000
 .la musicmenu=$8c00
 .la schnittstelle=17

; fr Rubriken
 .la savex=2
 .la savey=3
 .la fld=4
 .la textptr=5            ; + 6
 .la showlastflag=7
 .la addspeed=8
 .la joyflag=9
 .la fl25hz=10
 .la savedd011=11
 .la textende=12          ; + 13
; .la move=14
 .la txttrk=17
 .la txtsec=18
 .la pictrk=19
 .la picsec=20
 .la loadcnt=23
 .la endflag=24
 .la fileend=25           ;+26
 .la lastfire=27
 .la halve=28

 .la loadaddress=$80      ; + $81

 .la rscreen=$4400
 .la text=$a000
 .la picscreen=$7f40
 .la colram=picscreen+1000
 .la bitmap=$6000

 .la spriteram=$7000

 .la ramdiskbuffer=$0400
 .la buffer=$0400


 .la line=8
 .la toleranz=20
 .la maxspeed1=$fb
 .la maxspeed2=5
 .la traegheit=3
 .la basis1=47
 .la basis2=57
 .la rubypixels=0 ; Anzahl der Pixel, um die der Rubi-Screen nach unten
                  ; verschoben wird (-> kein Verdecken der Logos durch
                  ; Border)

.la loadsource=$9fff

menu:
	lda #$37
	sta 1

        jsr flop

	lda #15
	sta volume
	sta $d418
	lda #0
	tax
	tay
	jsr $1000
	lda #$b7
	sta 1
	lda #0
	sta lasttrk
	sta lastsec
	sta backtosubflag
menu2:
	lda #200
	sta fld

;	lda #<rti
;	ldy #>rti
;	sta $0318
;	sty $0319
	sei
	lda #<irq1
	sta $0314
	lda #>irq1
	sta $0315
	lda #$f1
	sta $d01a
	lda #raster1
	sta $d012
	lda $d011
	and #%01111111
        ora #%01100000 ; Screen ausschalten, sonst flasht er kurz auf!
	sta $d011
	lda #$7f
	sta $dc0d
	sta $dd0d
	bit $dc0d
	bit $dd0d
	lda $d019
	sta $d019
	cli
	lda #0
	sta cy
	sta cx
	sta halve
	sta scroll
	sta scrollup
	sta colindex
	sta colindex2
	sta fire
	sta lastfire
	sta fadescreen
	sta loadsprite

	sta $d010
	sta $d017
	sta $d01b
	sta $d01c
	sta $d01d
	lda #1
	sta 53269
	lda #1
	sta 53287
	lda #$a0
	sta $d000
	sta $d001

	lda #$ff
	sta $3fff

	ldx #0
copspr1:
	lda pfeilsprite,x
	sta $0340,x
	inx
	cpx #64
	bcc copspr1

;	lda #$97
;	sta $dd00 macht Schnellader
 lda #60
 sta $dd02
mainmenu:
	lda $d016
	ora #%00010000
	sta $d016
	lda #25
	sta $d018

	lda #0
	sta $d021

	lda #13
	sta mscreen+$03f8

	lda backtosubflag
	beq ntosubmenu
	lda osubzp
	sta subzp
	lda osubzp+1
	sta subzp+1
	lda osubtab
	sta subtab
	lda osubtab+1
	sta subtab+1
	lda #0
	sta backtosubflag
	lda oposy
	sta $d001
	jmp tosubmenu
ntosubmenu:
	ldx #0
copcol:
	lda mcolors,x
	sta $d800,x
	lda mcolors+$0100,x
	sta $d900,x
	lda mcolors+$0200,x
	sta $da00,x
	lda mcolors+$0300,x
	sta $db00,x
	lda mscreen,x
	sta screenram,x
	lda mscreen+$0100,x
	sta screenram+$0100,x
	lda mscreen+$0200,x
	sta screenram+$0200,x
	lda mscreen+$0300,x
	sta screenram+$0300,x
	dex
	bne copcol

;         lda #13
;         sta 2040

	lda #%00111000
	sta d011inhalt

;          lda #200
;          sta fld
	lda #0
	sta fldindex
	inc scrollup

wfscrup:
	lda scrollup
	bne wfscrup

	lda #0
	sta fire
zzz:
	lda $d001
	cmp #60
	bcc daneben
	cmp #160
	bcs daneben

	lda $d010
	and #1
	beq nmus1
	lda $d000
	cmp #40
	bcc nmus1
	ldx #0
	lda #>musicmenu
	bne jp
nmus1:
	lda $d001
	cmp #115
	bcs menueunten

	lda $d010
	and #1
	bne menuerechts1
	lda $d000
	cmp #160
	bcs menuerechts1
	lda #>submenus
	ldx #<filetab
	ldy #>filetab
	bne jp
menuerechts1:
	lda #>submenus+$04 ;00 !!!
.la filetab48=filetab+48 ; !!!
	ldx #<filetab48
	ldy #>filetab48
	bne jp

menueunten:
	lda $d010
	and #1
	bne menuerechts2
	lda $d000
	cmp #160
	bcs menuerechts2
	lda #>submenus+$08 ;00 !!!
.la filetab96=filetab+96 ; !!!
	ldx #<filetab96
	ldy #>filetab96
	bne jp
menuerechts2:
	lda #>submenus+$0c ;00 !!!
.la filetab144=filetab+144 ; !!!
	ldx #<filetab144
	ldy #>filetab144
	bne jp
daneben:
	lda #0
	sta fire
jp:
	beq zzz         ; daneben

	sta subzp+1
	lda #0
	sta subzp
	stx subtab
	sty subtab+1

	lda fire
	beq zzz

	lda #0
	sta fldindex
	inc scroll

waitforscrollend:
	lda scroll
	bne waitforscrollend

	lda subzp
	sta osubzp
	lda subzp+1
	sta osubzp+1
	lda subtab
	sta osubtab
	lda subtab+1
	sta osubtab+1
tosubmenu:

	lda #border
	sta $d021

	lda #%01111000 ; Bildschirm schwarz
	sta d011inhalt

	lda #18
	sta $d018
	lda $d016
	and #%11101111
	sta $d016

	lda #<screenram
	sta screenzp
	lda #>screenram
	sta screenzp+1

	ldx #4
	ldy #0
copysubmenu:
	lda (subzp),y
	sta (screenzp),y
	iny
	bne copysubmenu
	inc subzp+1
	inc screenzp+1
	dex
	bne copysubmenu

	lda #13
	sta 2040        ; spr!

	lda #subcol
storecolram1:
	sta $d800,x
	sta $d900,x
	sta $da00,x
	sta $db00,x
	dex
	bne storecolram1

	lda #%00011000
	sta d011inhalt

	lda #0
	sta fldindex
	inc scrollup

wfscrup2:
	lda scrollup
	bne wfscrup2


	lda #0
	sta fire
; ausw!!!!!!!!!!!
subjoy:
	lda $d001
	sec
	sbc #60
	lsr
	lsr
	lsr
	lsr
	tax
	tay

	lda #<$d800
	sta screenzp
	sta subzp
	lda #>$d800
	sta screenzp+1
	sta subzp+1

	cpx #0
	beq calclineend
calclineloop:
	lda screenzp
	clc
	adc #80
	sta screenzp
	bcc ku4711
	inc screenzp+1
ku4711:
	dex
	bne calclineloop
calclineend:
	tya
	pha
	beq keinstoreoben

	ldy #0
	lda #subcol
storeoben:
	sta (subzp),y
	inc subzp
	bne ku4712
	inc subzp+1
ku4712:
	ldx subzp
	cpx screenzp
	bne storeoben
	ldx subzp+1
	cpx screenzp+1
	bne storeoben

keinstoreoben:
	ldy #79
	lda flashcolor
flashline:
	sta (screenzp),y
	dey
	bpl flashline

	lda screenzp
	clc
	adc #80
	sta screenzp
	bcc ku4713
	inc screenzp+1
ku4713:
	ldy #0
storeunten:
	lda #subcol
	sta (screenzp),y
	inc screenzp
	bne storeunten
	inc screenzp+1
	lda screenzp+1
	cmp #$dc
	bne storeunten

	pla

	ldx fire
	bne nsubjoy
	jmp subjoy
nsubjoy:
	ldx #0
	stx fldindex
	inc scroll
wfscr:
	ldx scroll
	bne wfscr

	pha
	lda subtab
	beq istmusicmenu

	pla
	asl
	asl             ;mal 4
	clc
	adc subtab
	sta subtab
	bcc ku4800
	inc subtab+1
ku4800:
	ldy #3
copyfiletab:
	lda (subtab),y
	sta schnittstelle,y
	dey
	bpl copyfiletab

	cmp #0
	bne nichtleer

mm1:
	jmp mainmenu

nichtleer:
	lda $d001
	sta oposy
	jmp rubriken

istmusicmenu:
	pla
	sec
	sbc #1 ; (Zeile von ZAK #1 (0-12)) -1
	bcc mm1
	beq mm1
	cmp #zaks+1
	bcs mm1
	sec
	sbc #1
	asl
	tay
	lda musicts+1,y
	tax
	lda musicts,y
	pha

	sei
	lda #<musicirq
	sta $0314
	lda #>musicirq
	sta $0315
	lda #0
	sta $d012
	lda $d011
	ora #$80
	sta $d011
	lda #$f1
	sta $d01a
	lda #$7f
	sta $dc0d
	bit $dc0d

	lda #stopmusicspeed
	sta stopmusiccounter
	lda #15
	sta volume
	inc stopmusic
	cli
	lda #0
	sta $d011
	sta $d015
;	lda #$c6
;	sta $dd00
 lda #61
 sta $dd02

	lda #$00
	sta loadaddress
	lda #$f0
	sta loadaddress+1
	pla
	jsr load

        lda #$f0
        sta reupos+1
        lda #$10
        sta subzp+1
        ldy #0
        sty reupos
        sty subzp
        sei
        sty 1
        ldx #$10
copymusic:
	lda (reupos),y
        sta (subzp),y
        iny
        bne copymusic
        inc reupos+1
        inc subzp+1
        dex
        bne copymusic

	ldy #24
clrsid:
	sta $d400,y
	dey
	bpl clrsid

	jmp menu


irq1:
	lda ($00,x)
	lda ($00,x)
	nop         ; 14 Zyklen
	lda barcolor
	ldx #border
	sta $d020
	ldy #11
nop1:
	dey
	bne nop1
	bit $ea  ; 59 Zyklen
	stx $d020

	jsr joy
	lda halve
	eor #1
	sta halve
	bne halve1
	jsr joy
halve1:

	lda $d001
	clc
	adc cy
	cmp #oben
	bcs cyok1
	lda #oben
cyok1:
	cmp #unten
	bcc cyok2
	lda #unten
cyok2:
	sta $d001

	lda cx
	bmi cxminus

	lda $d000
	clc
	adc cx
	bcc keinmsb
schonmsb:
	tax
	lda $d010
	eor #1
	sta $d010
	txa
	jmp keinmsb
cxminus:
	lda $d000
	clc
	adc cx
	bcc schonmsb
keinmsb:
	tax
	lda $d010
	and #1
	bne rechtehaelfte
	txa
	cmp #links
	bcs cxok
	lda #links
	bne cxok
rechtehaelfte:
	txa
	cmp #rechts
	bcc cxok
	lda #rechts
cxok:
	sta $d000

	lda cx
	jsr intdec
	sta cx
	lda cy
	jsr intdec
	sta cy

	lda d011inhalt
	sta $d011

	jsr playmusic

	lda #raster2
	ldx #<irq2
	ldy #>irq2
irqend:
	sta $d012
	stx $0314
	sty $0315
	lda $d011
	and #%01111111
	sta $d011
irqreturn:
	lda $d019
	sta $d019
	jmp $ea81

joy:
	lda #0
	sta $dc00
	ldy $dc01
	ldx #$7f
	stx $dc00
	cpy #251
	beq jright
	cpy #235
	beq jleft
	cpy #127
	beq jdown
	cpy #111
	beq jup
;         cpy #239
;         beq jfire
	cpy #253
	beq jfire

	lda $dc00
	tax
        and #1
	bne nichtoben
jup:
	dec cy
nichtoben:
	txa
	and #2
	bne nichtunten
jdown:
	inc cy

nichtunten:
	txa
	and #4
	bne nichtlinks
jleft:
	dec cx
nichtlinks:
	txa
	and #8
	bne nichtrechts
jright:
	inc cx
nichtrechts:
	txa
	and #16
	bne nichtfire
jfire:
	lda lastfire
	inc lastfire
	cmp #0
	beq fireend
	inc fire
nichtfire:
	lda #0
	sta lastfire
fireend:
	rts

intdec:
	beq rts
	bmi intdec1
	cmp #maxspeed+1
	bcc intdec2
	lda #maxspeed
	rts
intdec2:
	sec
	sbc #1
rts:
	rts
intdec1:
	cmp #255-maxspeed
	bcs intdec3
	lda #256-maxspeed

intdec3:
	clc
	adc #1
	rts

irq2:
	lda d011inhalt
	sta $d011
	lda fld
	beq fldend

	ldx #0
fldloop:
	clc
	lda $d011
	adc #1
	and #7
	ora d011inhalt
	sta $d011

	nop
	nop
	jsr rts
	jsr rts

;         bit $00
	nop

	lda $d012
	cmp #$f3
	beq fldend
	inx
	cpx fld
	bne fldloop
	jmp skipnofld
fldend:

	lda $d011
	and #%11110000      ; Aufbau der Zeile zulassen
	ora #%00001011
	sta $d011
skipnofld:
        lda fld
        cmp #185
        bcc nscroff
        lda $d011
        ora #%01110000
        sta $d011
nscroff:
	lda $d021
	pha
	ldx #border

	lda #0
	sta $3fff

	lda barcolor

	ldy $d012
wfnl:
	cpy $d012
	beq wfnl

	sta $d020
	sta $d021
	ldy #9
nop2:
	dey
	bne nop2
	nop      ; 48 Zyklen
	stx $d020
	stx $d021
	lda #$ff
	sta $3fff
	pla
	sta $d021

	lda scroll
	beq keinscroll

	ldx fldindex
	lda #screenlines
	sec
	sbc sinus2,x
	sta fld
	inx
	stx fldindex
	cpx #25
	bcc fldindexok

	lda #0
	sta scroll
fldindexok:

keinscroll:

	lda scrollup
	beq keinscrollup

	ldx fldindex
	lda #screenlines
	sec
	sbc sinus1,x
	sta fld
	inx
	stx fldindex
	cpx #25
	bcc fldindexok2

	lda #0
	sta scrollup
fldindexok2:
keinscrollup:

	ldx colindex
	lda coltab,x
	sta barcolor
	lda coltab2,x
	sta flashcolor
	inx
	cpx #8+6
	bcc colindexok
	ldx #0
colindexok:
	stx colindex

        lda halve
        bne nflashmouse
	ldx colindex2
	lda coltab3,x
	sta $d027
	inx
	cpx #14
	bne color3
	ldx #0
color3:
	stx colindex2
nflashmouse:

	lda #raster1
	ldx #<irq1
	ldy #>irq1
	jmp irqend

rti:
	rti


;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

rubriken:
	lda lasttrk
	cmp txttrk
	bne nichtnochmal
	lda lastsec
	cmp txtsec
	bne nichtnochmal

	lda #1
 .by $2c
nichtnochmal:
	lda #0
	sta nochmalflag

	lda txttrk
	sta lasttrk
	lda txtsec
	sta lastsec

	lda #0
	sta $d015

	ldx #<musicirq
	ldy #>musicirq
	sei
	stx $0314
	sty $0315
	lda #0
	sta $d012
	lda $d011
; Screen anlassen!
	and #%01010000 ; auch erweiterten Farbtext-Modus aus -> Bild sichtbar
	ora #%11000011
	sta $d011
	lda #$f1
	sta $d01a
	lda #$7f
	sta $dc0d
	bit $dc0d
	lda #0
	sta stopmusic
        lda #15
        sta volume
	lda #fadespeed
	sta fadecounter
	lda #0
	sta fadestep
	inc fadescreen
	cli

; bank=1
;	lda #$c6
;	sta $dd00
 lda #61
 sta $dd02


	lda #0
	sta $d022

	lda #$60
	ldx #0
cls:
	sta rscreen,x
	dex
	bne cls
	ldx #104
cls2:
	sta rscreen+$ff,x
	dex
	bne cls2

	lda #" "
cls3:
	sta rscreen+360,x
	sta rscreen+$0200,x
	sta rscreen+$0300,x
	dex
	bne cls3

        jsr printloading

	lda #<text
	sta textptr
	lda #>text
	sta textptr+1
	lda #<text
	sta textende
	lda #>text
	sta textende+1

	lda #7
	sta fld
	lda #0
	sta showlastflag
	sta addspeed
	sta fl25hz
	sta halve

        jsr setcolram

	lda #1
	sta $d015
        lda #0
	sta $d01c
        lda #226
	sta $d001
	lda #172
	sta $d000
	lda #0
	sta $d010
	lda #0
	sta $47f8
	lda #6
	sta $d027

	inc loadsprite

	lda nochmalflag
	beq doload
	jmp nn1
doload:
testside:
; auf richtige Diskseite testen
	lda #$00
	sta loadaddress
	lda #$C0
	sta loadaddress+1
	lda #$12
	ldx #$11
	jsr load
        lda $C000
        cmp #2
        beq sideok

; Flip Disk        MIST
        jsr fadeout
        ldx #<textflip
        ldy #>textflip
        jsr print
        jsr fadein

wfkflip:
        lda $dc01
        cmp #$ff
        bne wfkflipend
        lda $dc00
        and #$10
        bne wfkflip
wfkflipend:

        jsr fadeout
        jsr printloading
        jsr fadein
        jmp testside
sideok:
	lda #<bitmap
	sta loadaddress
	lda #>bitmap
	sta loadaddress+1
	lda pictrk
	ldx picsec
	jsr load        ; Koala

	lda #<text
	sta loadaddress
	lda #>text
	sta loadaddress+1
	lda txttrk
	ldx txtsec
	jsr load        ; Text

; "LOADING" ausblenden
        ldx #0
killloading1:
        lda fadecolors,x
        ldy #0
killloading2:
        sta $da00,y
        iny
        bne killloading2
        lda #$20
killloading3:
        dey
        bne killloading3
        pha
        lda $47f8
        bne nspriteend
        lda #0
        sta loadsprite
        sta $d015
nspriteend:
        pla
        sec
        sbc #1
        bne killloading3
        inx
        cpx #6
        bne killloading1

waitforspriteend:
	lda $47f8
        bne waitforspriteend
        lda #0
        sta loadsprite

        ldx #0
        lda #11
killloading4:
        sta $da00,x
        dex
        bne killloading4

;        ldx #0
;        txa
;-:
;        sta rscreen,x
;        sta rscreen+$40,x
;        dex
;        bne -

nn1:

	lda #0
	sta $d020

	lda $d011
	and #%10111111
	sta $d011
; MIST
	ldx #$c0
        lda #0
-:
	sta spriteram-1,x
	dex
	bne -


        ldx #5
        lda #$ff
-:
        sta spriteram,x
        dex
        bpl -

        ldx #2
        lda #$aa
-:
        sta spriteram+6,x
        dex
        bpl -

        ldx #20
        lda #$55
-:
        sta spriteram+$40+3,x
        dex
        bpl -

        ldx #2
        lda #$aa
-:
        sta spriteram+$40+24,x
        dex
        bpl -

        ldx #2
        lda #$ff
-:
        sta spriteram+$40+27,x
        dex
        bpl -

        ldx #17
        lda #$ff
-:
        sta spriteram+$80,x
        dex
        bpl -

	ldx 1
	lda #$b0
	sei
	sta 1
	lda #" "
	sta text
	sta text+1
	stx 1
	cli

	lda fileend
	sec
.la sbc1=18*40 ; !!!
.la sbc2=18*40-1 ; !!!
	sbc #<sbc2
	sta textende
	lda fileend+1
	sbc #>sbc2
	sta textende+1

	sei
	jsr showtext1
	cli
	lda #1
	sta showlastflag

	lda #0
	sta lastfire

	jsr storeirq


; Farben einblenden
        ldy #8
fadelogoloop:
	ldx #0
copycol1:
	lda colram,x
        jsr convcol4
	sta $d800,x
	lda picscreen,x
        jsr convcol8
	sta rscreen,x
	dex
	bne copycol1
.la linemal40minus1=linemal40-1
	ldx #<linemal40minus1
copycol2:
	lda colram+$0100,x
        jsr convcol4
	sta $d900,x
	lda picscreen+$0100,x
        jsr convcol8
	sta rscreen+$0100,x
	dex
	bpl copycol2

;        ldx #0
;        lda #0
;-:
;        dex
;        bne -
;        clc
;        adc #1
;        bne -

        cpy #0
        beq fadelogoend
        dey
        dey
        bpl fadelogoloop
        ldy #0           ; noch einmal mit Originalfarben
        beq fadelogoloop ; bra
fadelogoend:

endlos:
	jmp endlos


irqa:
	lda $d011
	sta savedd011

	lda #$ff
	sta 53269
	sta $d01d
	lda #%11111110
	sta $d01c
	lda #0
	sta $d01b
	lda #%11000000
	sta $d010
	ldx #7
sprl1:
	lda #193
	sta $47f8,x
	lda #11
	sta $d027,x
	dex
	bpl sprl1
	ldx #0
	lda #111 ; Y-Position der oberen Rasterbar-Sprites
sprl2:
	sta $d001,x
	inx
	inx
	cpx #16
	bne sprl2
	lda #24
	sta $d002
	lda #66
	sta $d004
	lda #114
	sta $d006
	lda #162
	sta $d008
	lda #210
	sta $d00a
	lda #2
	sta $d00c
	lda #50
	sta $d00e
	lda #0
	sta $d025
	lda #12
	sta $d026

	lda #112
	sta $d001
	lda #194
	sta $47f8
	lda #12
	sta $d027

	lda textende+1
	sec
	sbc #>text
	cmp #8
	bcs textgrossgenug

	lda #%11111110
	sta 53269
	jmp keinpossprite

textgrossgenug:
	lda textptr
	sta $fa
	lda textptr+1
	sec
	sbc #>text
	sta $fb
	lda textende+1
	sec
	sbc #>text
	sta $fc

; Division nach Hoogo
	ldx #16
	lda #0
div1:
	asl $fa
	rol $fb
	rol
	cmp $fc
	bcc div2
	sbc $fc
	inc $fa
div2:
	dex
	bne div1

	lda $fa
	sta $fc
	lda $fb
	lsr
	ror $fc
	lsr
	ror $fc
	pha
	lda $fc
	clc
	adc $fa
	sta $fa
	pla
	adc $fb
	sta $fb

	lda $fa
;         clc
;         adc #21
;         bcc kuspr
;         inc $fb
;kuspr:
	sta $d000
	lda $d010
	ora $fb
	sta $d010

keinpossprite:
.la linemal8=line*8 ; !!!
.la basis1plus8lines=basis1+linemal8 ; !!!
	lda #basis1plus8lines
-:
	cmp $d012
	bne -

;        dec$d020

	ldy #13 ;14
nop3:
	dey
	bne nop3 ; 71 Zyklen

; FLD-Routine
        lda fld
        clc
        adc #rubypixels
        and #7
        sta fld2

	lda $d011
	and #%11110000
	ora #%01100000
	ora fld2
	sta $d011
	lda $d016
	and #%11101111
	sta $d016
	lda #15
	sta $d021
; Screen=$400,Char=$800
	lda #18
	sta $d018

	lda $d011       ; schon mal ho
	and #%10011111  ; screen an
	sta $d011

        ldx #57
-:
        dex
        bne -

	lda #$ff
	sta $d01b

	ldx #0
	lda #243
sprl3:
	sta $d001,x
	inx
	inx
	cpx #16
	bne sprl3

	ldx #7
sprl4:
	lda #11
	sta $d027,x
	lda #192
	sta $47f8,x
	dex
	bpl sprl4

	lda #195
	sta $47f8

; Joystick- und Anzeige-Routine
;          lda move
;          bne njoyende
;          jmp joyende
;njoyende:
	lda showlastflag
	beq keinlastflag
	jsr showtext2
	lda #0
	sta showlastflag

keinlastflag:
	ldx #0
	lda $dc00
	and #2
	beq joydown
	lda $dc00
	and #1
	beq joyup
	lda $dc00
	and #8
	beq joyright
	lda $dc00
	and #4
	beq joyleft
	lda $dc00
	and #16
	beq joyfire
	lda #0
	sta $dc00
	ldx $dc01
	cpx #251
	bne nichtjoyright
joyright:
	dec addspeed
	lda addspeed
	cmp #maxspeed1
	bne nichtmax1
	inc addspeed
nichtmax1:
	inc joyflag
nichtjoyright:
	cpx #235
	bne nichtjoyleft
joyleft:
	inc addspeed
	lda addspeed
	cmp #maxspeed2
	bne nichtmax2
	dec addspeed

nichtmax2:
	inc joyflag

nichtjoyleft:
	cpx #127
	bne njoydown
joydown:
	lda #$ff
	sta addspeed
njoydown:
	cpx #111
	bne njoyup
joyup:
	lda #1
	sta addspeed
njoyup:
	cpx #253
	bne nfire
joyfire:
	lda lastfire
	inc lastfire
	cmp #0
	beq nfire2
	inc backtosubflag
	jmp menu2
nfire:
	lda #0
	sta lastfire
nfire2:
	lda #$7f
	sta $dc00

	jsr scroll2

	lda joyflag
	bne joyende

	lda fl25hz
	clc
	adc #1
	cmp #traegheit
	bne nichtnull
	lda #0
nichtnull:
	sta fl25hz
	bne joyende
; langsamer werden
	lda addspeed
	bmi minusaddspeed
	beq joyende
	dec addspeed
	jmp joyende
minusaddspeed:
	inc addspeed

joyende:
	lda #0
	sta joyflag

	jsr playmusic

	lda $d011
	bmi schonunten
	lda $d012
	cmp #basis1plus8lines-toleranz
	bcc schonunten

;*******
	lda #<irqb
	sta $0314
	lda #>irqb
	sta $0315
	lda $d011
	ora #$80
	sta $d011
	lda #0
	sta $d012

	jmp irqend2

irqb:
	lda $d011
	and #$7f
	sta $d011
	lda #basis1plus8lines-toleranz
	sta $d012
	lda #<irqa
	sta $0314
	lda #>irqa
	sta $0315


;*******

schonunten:

	lda #0
	sta $d021

	lda savedd011
        and #%11111000
	ora #%00101000+rubypixels ; Grafik an
                                  ; Bildschirm bei n„chstem Aufbau verschieben
	sta $d011
	lda $d016
	ora #%00010000
	sta $d016
; Screen=$400,Bitmap=$2000
	lda #25
	sta $d018
irqend2:
        lda $d019
	sta $d019
	jmp $ea81

wshowtext1:
; warten, damit nicht w„hrend
; Anzeige kopiert wird
	lda #170
wait1:
	cmp $d012
	bcs wait1

showtext1:
	lda textptr
	sta sfm1+1
	lda textptr+1
	sta sfm1+2
.la rscreenplus40lines=rscreen+linemal40 ; !!!
	lda #<rscreenplus40lines
	sta sfm2+1
	lda #>rscreenplus40lines
	sta sfm2+2

	ldx #0
	jsr copypage

	inc sfm1+2
	inc sfm2+2

	ldx #0
	jmp copypage

showtext2:
	ldy textptr
	dey
	sty sfm1+1
	ldx textptr+1
	inx
	cpy #$ff
	beq ueb1
	inx
ueb1:
	stx sfm1+2
.la rscreenplus40linesplus511=rscreenplus40lines+511
	lda #<rscreenplus40linesplus511
	sta sfm2+1
	lda #>rscreenplus40linesplus511
	sta sfm2+2

	ldx #488-linemal40
; laeuft rein
copypage:
	lda #$b0
	sta 1
st1:
sfm1:
	lda $ffff,x
sfm2:
	sta $ffff,x
	dex
	bne st1
	lda #$b7
	sta 1
	rts

scroll2:
	lda fld
	clc
	adc addspeed

	cmp #8
	bcc keinuebertrag
	bpl scrollnachoben

	and #7
	sta fld
	lda textptr
	clc
	adc #40
	sta textptr
	bcc kub
	inc textptr+1
kub:
	lda textende+1
	cmp textptr+1
	bcc ueberende
	bne nichtueberende
	lda textende
	cmp textptr
	bcs nichtueberende
ueberende: ; User ist beim Scrollen ber das Textende hinausgeschossen
	lda textptr
	sec
	sbc #40
	sta textptr    ; Zeile wieder dekrementieren
	bcs ueberende1
	dec textptr+1
ueberende1:
	lda #0
	sta addspeed
	sta fld
nichtueberende:


gotoshow:
	jsr wshowtext1
	lda #1
	sta showlastflag
	rts
scrollnachoben:
	and #7
	sta fld
	lda textptr
	sec
	sbc #40
	sta textptr
	bcs kua
	dec textptr+1
kua:
	lda textptr+1
	cmp #>text
	bcc ueberanfang
	bne nichtueberanfang
	lda textptr
	cmp #<text
	bcs nichtueberanfang
ueberanfang:
	lda #<text
	sta textptr
	lda #>text
	sta textptr+1
	lda #0
	sta addspeed
	lda #7
	sta fld
nichtueberanfang:
	jmp gotoshow

keinuebertrag:
	sta fld
	rts

storeirq:
	ldx #<irqa
	ldy #>irqa
	sei
	stx $0314
	sty $0315
	lda #basis1plus8lines-toleranz
	sta $d012
	lda $d011
	and #%01110000
	ora #%00010000
	sta $d011
	lda #$f1
	sta $d01a
	lda #$7f
	sta $dc0d
	bit $dc0d
	cli
	rts


musicirq:
	lda stopmusic
	beq musicirq1

	dec stopmusiccounter
	bne musicirq1

	lda #stopmusicspeed
	sta stopmusiccounter

	dec volume
	lda volume
	bne musicirq1
	sta stopmusic
musicirq1:
	jsr playmusic
	lda volume
	cmp #15
	beq nleiser
	lda $d418
	and #$f0
	ora volume
	sta $d418
nleiser:
	lda fadescreen
	beq nfade

	dec fadecounter
	bne nfade
	lda #fadespeed
	sta fadecounter

	ldx fadestep
	lda fadecolors,x
	sta $d021

	inc fadestep
	lda fadestep
	cmp #6
	bne nfade
	lda #0
	sta fadescreen
nfade:
	lda loadsprite
	beq nloadsprite

	lda halve
        clc
        adc #1
        sta halve
        and #3
	bne nloadsprite

	inc $47f8
	lda $47f8
	cmp #16
	bcc nloadsprite

	lda #0
	sta $47f8

nloadsprite:
	lda $d019
	sta $d019
	jmp $ea81

playmusic:
	lda #$37
	sta 1
	lda #0
	tax
	tay
	jsr $1003
	lda #$b7
	sta 1
	rts

; Schnellader mit Adv.Squeezer-Entpacker
; braucht Floppy-Routine auf Track 12, Sector 12.
;
; 20.-22.11.1994
; 13.07.1995 Anpassung an X-Dome
; 19.09.1996 Anpassung an Tool-Collie
; 29.11.1996 Re-Anpassung an X-Dome

load:
 sta $0400
 stx $0401

;; Laderoutine
	jsr startsector
	jsr unpack

;        lda #$c6
;	sta $dd00
 lda #61
 sta $dd02

;	lda #$0f
;	jmp $f291       ;close
 rts

startsector:
        ldx $0400
        ldy $0401
        jsr flop+$C
        jsr flop+$F
;        lda $0400
;        sta nexttrack+1
;        lda $0401
;        sta lastbyte+1
        lda #2
        sta loadcnt
	rts


 .la dlf6=55
 .la dlf7=56
 .la dlf8=57
 .la dlf9=58
 .la dlfa=59
 .la dlfb=60
 .la dlfc=61
 .la dlfd=62
 .la dlfe=63
 .la dlff=64
;---------------------------------------

unpack:
	ldx #$04
l101a:
	jsr getbyte
	sta dlfb,x
	dex
	bpl l101a

	lda dlfc
	clc
	adc loadaddress
	sta dlfc
	sta fileend
	lda dlfc+1
	adc loadaddress+1
	sta dlfc+1
	sta fileend+1

	ldy #0
unpackstart:
	tya
	sta dlf6
	sty dlf8
l103b:
	jsr l10a6
	rol
	bne l1043
	bcc l104f
l1043:
	rol dlf8
	jsr l10a6
	bcs l103b
	sta dlf7
	jsr l10c2
l104f:
	tya
	sty dlf9
	sty dlfa
l1054:
	jsr l10a6
	rol
	beq l1063
	bmi l1061
	jsr l10a6
	bcs l1054
l1061:
	inc dlf6
l1063:
	adc #$02
	sta dlf7
	ldx #$02
l1069:
	jsr l10a6
	rol dlf6
	dex
	bne l1069
l1071:
	ldx dlf6
	lda tl1107,x
	tax
	beq l1083
l1079:
	jsr l10a6
	rol dlf9
	rol dlfa
	dex
	bne l1079
l1083:
	lda dlf6
	and #$03
	beq l1093
	inc dlf9
	bne l108f
	inc dlfa
l108f:
	dec dlf6
	bpl l1071
l1093:
	lda dlfc
	adc dlf9
	sta dlf9
	lda dlfd
	adc dlfa
	sta dlfa
	inc dlf6
	jsr l10cf
	beq unpackstart
l10a6:
	asl dlfb
	bne l10c1
	cpy dlfe
	bne l10b4
	cpy dlff
	beq l10bf
	dec dlff
l10b4:
	dec dlfe
	pha
	jsr getbyte
	sec
	rol
	sta dlfb
 .by $24
l10bf:
 .by $68
	pla
l10c1:
	rts
l10c2:
	sec
	lda dlfe
	sbc dlf7
	sta dlfe
	lda dlff
	sbc dlf8
	sta dlff
l10cf:
	ldy dlf7
	beq l10e6
	lda dlfc
	sec
	sbc dlf7
	sta dlfc
	bcs l10de
l10dc:
	dec dlfd
l10de:
	jsr l10f1
        sei
        inc 1
	sta (dlfc),y
        dec 1
        cli
	dey
	bne l10de
l10e6:
	cpy dlf8
	beq l10f0
	dec dlfa
	dec dlf8
	bpl l10dc
l10f0:
	rts
l10f1:
	lda dlf6
	beq getbyte
        sei
        inc 1
	lda (dlf9),y
        dec 1
	rts

getbyte:
	stx savex
        ldx loadcnt
        lda buffer,x

        inc loadcnt
	bne nsecende
        pha
        tya
        pha
	jsr startsector
        pla
        tay
        pla
nsecende:
        ldx savex
	rts
tl1107:
 .by $04,$02,$02,$02,$05,$02,$02
 .by $03
 .by 0; (n”tig???)



convcol4:
        sty lumchange
        and #15          ; Farbe maskieren
        tay
        lda coltolum,y   ; Helligkeit der Farbe ermitteln
        sec
        sbc lumchange    ; Helligkeit erniedrigen
        bcc convcol4black; Unterlauf, dann schwarz
        tay
        lda lumtocol,y   ; passende Farbe holen
        ldy lumchange
        rts
convcol4black:
        lda #0
        ldy lumchange
        rts

convcol8:
        sty lumchange
        pha
        and #15          ; Farbe maskieren
        tay
        lda coltolum,y   ; Helligkeit der Farbe ermitteln
        sec
        sbc lumchange    ; Helligkeit erniedrigen
        bcc +            ; Unterlauf, dann schwarz
        tay
        lda lumtocol,y   ; passende Farbe holen
        .by $2c
+:
        lda #0

        sta fadelogosfm+1
        pla
        lsr
        lsr
        lsr
        lsr

        tay
        lda coltolum,y   ; Helligkeit der Farbe ermitteln
        sec
        sbc lumchange    ; Helligkeit erniedrigen
        bcc +            ; Unterlauf, dann schwarz
        tay
        lda lumtocol,y   ; passende Farbe holen
        .by $2c
+:
        lda #0

        asl
        asl
        asl
        asl
fadelogosfm:
        ora #0
        ldy lumchange
        rts


fade:
        ldy #0
fade2:
        sta $da00,y
        iny
        bne fade2
        lda #$20
fade3:
        dey
        bne fade3
        sec
        sbc #1
        bne fade3
        rts
fadeout:
; Blendet einen Text im Textfenster aus
        ldx #0
fadeout1:
        lda fadecolors,x
        jsr fade
        inx
        cpx #6
        bne fadeout1
        rts
fadein:
; Blendet einen Text im Textfenster ein
        ldx #5
fadein1:
        lda fadecolors,x
        ldy #0
        jsr fade
        dex
        bpl fadein1
; l„uft in setcolram
setcolram:
	ldx #0
storecolram2:
	lda #0
	sta $d800,x
	sta $d900,x
	lda #11
	sta $da00,x
	sta $db00,x
	dex
	bne storecolram2

.la linemal40=line*40 ; !!!
	ldx #<linemal40
xxx:
	sta $d900,x
	inx
	bne xxx
        rts

printloading:
; Druckt LOADING ins Textfenster
        ldx #<textloading
        ldy #>textloading
; l„uft in print
print:
        stx printzp
        sty printzp+1
	ldy #8
printflip:
	lda (printzp),y
	sta rscreen+$028F,y
	dey
	bpl printflip
        rts

textloading:
 .by $20,$0c,$0f,$01,$04,$09,$0e,$07,$20
textflip:
 .by $14,$15,$12,$0e,$20,$04,$09,$13,$0B

lumtocol:
 .by 0,6,9,11,2,4,8,12,14,10,5,15,3,7,13,1
coltolum:
 .by 0,15,4,12,5,10,1,13,6,2,9,3,7,14,8,11

coltab:
 .br 14,11
 .by 0,9,2,8,$0a,$0f,$0d,1
 .by $0d,$0f,$0a,8,2,9

coltab2:
 .by $0d,3,$0e,4,2,6
 .by 0,6,2,4,$0e,3,$0d,1

coltab3:
 .by 0,9,2,8,10,15,7,1
 .by 7,15,5,4,11,6
fadecolors:
; .by 0,9,2,8,10,15
 .by 0,6,11,4,10,15


musicts:
 .by 15,0 ; emotion overflow
 .by 20,0 ; creative dimensions
 .by 15,1 ; error 4711
 .by 14,0 ; twister
 .by 21,5 ; tune
 .by 21,0 ; shorty
 .by 20,5 ; doomsday

filetab:
 .br 4,0
 .br 4,0
 .br 4,0
 .by 13,1, 17,0           ; der editorialismus
 .by 29,0, 16,9           ; reactions
 .by 11,2, 19,0           ; x-dome intern
 .by 35,5, 16,9           ; magsystem
 .by 24,0, 17,1           ; impressum
 .br 4,0
 .br 4,0
 .br 4,0
 .br 4,0


 .br 4,0
 .by 6,0,  19,9           ; rechnen in basic 3
 .by 17,5, 19,9           ; mist's asskurs 4a
 .by 14,1, 19,9           ; mist's asskurs 4b
 .by 5,1,  19,0           ; jtr's zockerecke 1
 .by 31,0, 19,3           ; jtr's zockerecke 2a
 .by 4,7,  16,9           ; jtr's zockerecke 2b
 .by 3,1,  19,0           ; jtr's zockerecke 3a
 .by 33,0, 19,3           ; jtr's zockerecke 3b
 .by 22,0, 19,0           ; teddy verkauft
 .br 4,0
 .br 4,0

 .br 4,0
 .br 4,0
 .by 27,8, 16,3           ; news
 .by 8,9,  19,3           ; comparade
 .by 10,0, 16,1           ; sush
 .by 25,1, 16,1           ; jtr
 .by 27,2, 16,9           ; magreview
 .by 5,0,  19,3           ; the net
 .by 35,12, 19,7           ; addy corner
 .by 22,2, 16,9           ; birthday corner
 .br 4,0


 .br 4,0
 .br 4,0
 .br 4,0
 .br 4,0
 .by 13,0, 16,0           ; dance corner
 .by 6,1,  19,5           ; spasticus corner
 .by 28,1, 19,3           ; rauchen
 .by 13,15,19,5           ; funtalk
 .by 9,0,  19,0           ; islam 2
 .by 22,4, 16,9           ; christ
 .br 4,0
 .br 4,0


sinus1:
 .by $00,$0c,$19,$25,$31,$3d,$49,$55
 .by $60,$6b,$75,$7f,$88,$91,$9a,$a1
 .by $a8,$af,$b4,$b9,$be,$c1,$c4,$c6
 .by $c7
sinus2:
 .by $c7,$c7,$c6,$c4,$c1,$be,$b9,$b4
 .by $af,$a8,$a1,$9a,$91,$88,$7f,$75
 .by $6b,$60,$55,$49,$3d,$31,$25,$19
 .by $0c,$00
pfeilsprite:
 .by $80,$00,$00,$60,$00,$00,$78,$00
 .by $00,$2e,$00,$00,$37,$80,$00,$1b
 .by $e0,$00,$1d,$f8,$00,$0a,$fe,$00
 .by $0d,$7f,$80,$06,$bf,$e0,$07,$5e
 .by $18,$02,$a8,$00,$03,$50,$00,$01
 .by $a0,$00,$01,$e0,$00,$00,$c0,$00
 .by $00,$c0,$00,$00,$40,$00,$00,$40
 .by $00,$00,$20,$00,$00,$20,$00,$00

; .by 0,0,0,0,$10,0,0,$38
; .by 0,0,$7c,0,0,$fe,0,1
; .by $ff,0,3,$ff,$80,7,$ff,$c0
; .by $0f,$ff,$e0,0,$38,0,0,$38
; .by 0,0,$38,0,0,$38,0,0
 ; .by $38,0,0,$38,0,0,$38,0
; .by 0,$38,0,0,$38,0,0,$38
; .by 0,0,0,0,0,0,0,0
spritedata:
; .br 6,$ff     ; unten
; .br 3,$aa
; .br 55,0
;
; .by 0,0,0     ; oben
; .br 24-3,$55
; .br 3,$aa
; .br 3,$ff
; .br 34,0
;
; .br 18,$ff    ; Balken
; .br 45,0
osubzp:
 .wo 0
osubtab:
 .wo 0

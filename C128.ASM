;*****************************************************************************
; GerÅst fÅr ein C128-Programm, das sowohl den 8502 als auch den Z80
; benutzt. Eine beliebige Z80-Routine kann vom 8502-Programm heraus mit
; "call" aufgerufen werden, sie wird mit "ret" beendet.
; MIST, 30.05.97
;*****************************************************************************

.ba $3000; Aufruf mit BANK 0: SYS DEC("3000")

.ma call ROUTINE
  ldx #<ROUTINE
  ldy #>ROUTINE
  jsr Z80CALL
.en

        jsr Z80INIT

        call Routine1

        rts


; ***** 8502/Z80-Management-Unterroutinen ************************************
Z80INIT lda #$c3
        sta $ffee
        lda #<Z80STRT
        sta $ffef
        lda #>Z80STRT
        sta $fff0
        lda #$58
        sta $ffdc
        lda #$60
        sta $ffdd
        rts
Z80CALL stx Z80SFMD+1
        sty Z80SFMD+2
        jmp $ffd0

 .CPU Z80
Z80STRT ld sp,$8000
Z80SFMD call $FFFF
        jp $ffe0


; ***** Z80-Routinen *********************************************************
Routine1:
        ld bc,$d020
        in a,(c)
        dec a
        out (c),a
        ret

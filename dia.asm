

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; MIST Diagnostics V1.2
;  16.,17.,21.08.1994
;  17.,18.,19.04.1995
;  06.05.1995(FD-2000,4000 mit/ohne RTC)
;  17.05.1995(Flash 8,Verbesserungen)
;  19.05.1995(Bugfix, GeoRAM)
;  16.07.1995(Nordic Power, Taktfrq)
;  05.09.1995(Flash 8 Takt)
;  07.09.1995(Sicherung,Mausport)
;  08.09.1995(C64-Emulatoren,1700,1750)
;  04.10.1995(CIA-Timing)
; [22.04.1996(Portiertung auf PC)]
;  18.05.1996(alle REUs 100%)
;  21.06.1996(SuperCPU)
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

 .ba $6000                              
 .petscii

 .la punkte=10
 .la cr=$aad7
 .la cls=$e544                          
 .la bsout=$ffd2                        
                                        
 .la scrsich=$0503                      
                                        
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Uhr starten (siehe Sicherungstest)    
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda #$b7                      
          sta 1                         
                                        
          lda #0                        
          sta $dc0b
          sta $dc0a                     
          sta $dc09                     
          sta $dc08                     

          lda $02a6                     
          eor #1
          lsr                           
          lda #0                        
          ror                           
          ora $dc0e                     
          sta $dc0e                     
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Meldung ausgeben                      
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                                        
          ldx #11                       
          ldy #12
          jsr $e50c                     
          lda #176                      
          jsr bsout
          lda #192 ; "Ä"
          ldx #15
          jsr repeat
          lda #174
          jsr bsout
          ldx #12
          ldy #12
          jsr $e50c
          lda #<textplw1
          ldy #>textplw1
          jsr $ab1e       ; direkt!
          ldx #13
          ldy #12
          jsr $e50c
          lda #<textplw2
          ldy #>textplw2
          jsr $ab1e
          ldx #14
          ldy #12
          jsr $e50c
          lda #173
          jsr bsout
          lda #192 ; "Ä"
          ldx #15
          jsr repeat                    
          lda #189
          jsr bsout                     
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Emulator?                             
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          ldx #$55
          ldy #$aa                      
          cpx $dfff                     
          beq emu1                      
          cpx $dfff                     
          bne emu2                      
emu1:                                   
          cpy $dfff                     
          bne emu2                      
          cpx $dfff
          bne emu2                      
          cpy $dfff                     
          bne emu2                      
;Emu!
          lda $dffe
          sta emulator
          lda #4
          sta cpu
          jmp cpuend
emu2:
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; CPU
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda $d030
          and #1
          eor #1
          sta cpu
; auf W65C816 (Flash8/SuperCPU) testen (auch bei C128!)
          sed
          lda #$99
          clc
          adc #$01
          bmi cpuc64
          cld
          lda #3 ; SuperCPU
          sta cpu
          ldx #6
testflash8:
          lda flash8id,x
          cmp $e479,x
          bne cpunflash8
          dex
          bpl testflash8
          lda #2 ; Flash 8
          sta cpu
cpunflash8:
cpuc64:
          cld
cpuend:
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Taktfrequenz
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda $02a6
          sta clock
          lda cpu
          cmp #2
          beq test65816clock
          cmp #3
          bne ntest65816clock
test65816clock:
          lda #$37 ; Flash 8 softwarem„áig auf "schnell" schalten
          sta 1

          lda #0
wfl0:
          cmp $d012
          bne wfl0
          ldx #0
testclock:
          inx
          lda $d012
          beq testclock
          cpx #14
          bcc ntest65816clock ; immer noch 1 MHz
          lda cpu      ; -> Flash 8  -> clock=2 (8 MHz)
          sta clock    ; -> SuperCPU -> clock=3 (20 MHz)

          lda #$b7                      
          sta 1       ; Flash 8 wieder auf 1 MHz drosseln
                                        
ntest65816clock:
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Color-RAM Version                     
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda #0                        
          sta $dbff                     
          tax                           
          sei                           
colramloop:                             
          clc                           
          adc $dbff                     
          bne highnybbleaenderung       
          dex                           
          bne colramloop
                                        
          lda #0
          sta colram                    
          cli                           
          jmp colramcont                
highnybbleaenderung:                    
; Bits testen                           
          ldy #4                        
clrcolbits:                             
          lda #0                        
          sta colbits-1,y               
          dey                           
          bne clrcolbits                
                                        
colloop1:                               
          lda $dbff                     
          ldx #7                        
colloop2:                               
          asl
          bcc nichterhoehen
          inc colbits-4,x               
nichterhoehen:                          
          dex                           
          cpx #3                        
          bne colloop2                  
          dey                           
          bne colloop1                  
                                        
          cli                           
          ldy #0                        
          ldx #0                        
colloop3:                               
          lda colbits,x                 
          sta 2                         
          cpy 2                         
          bcs bitnichtgroesser
          txa                           
          tay                           
bitnichtgroesser:
          inx
          cpx #4                        
          bne colloop3                  
          sty colram                    
          tya                           
          clc                           
          adc #4                        
          sta colram                    
                                        
colramcont:                             
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; auf SID testen                        
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda #0
          ldx #24                       
          sei                           
clrsid:                                 
          sta $d400,x                   
          dex                           
          bpl clrsid                    

          lda $d400                     
          ldx #0                        
getsiddata:                             
          clc                           
          adc $d400                     
          bne keinsidinstalliert        
          dex                           
          bne getsiddata                
                                        
; auf SID-Version testen
; (herausgefunden am 19.04.1995!)       
          lda #0                        
          sta sidcounter                
          sta sidcounter+1              
          lda #$ff                      
          sta $d400                     
sidloop:                                
          lda $d400                     
          beq sid6581                   
          inc sidcounter
          bne sidloop                   
          inc sidcounter+1              
          bne sidloop                   
; sid 8580                              
          lda #2                        
 .by $2c                                
sid6581:
          lda #1                        
 .by $2c                                
keinsidinstalliert:                     
          lda #0                        
          cli                           
          sta sid                       
                                        
          tax                           
          bne maustesten                
; wenn kein SID da ist, kann auch keine 
; Maus da sein!                         
          lda #0                        
          sta maus
          beq maustestenende            
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; auf Maus testen                       
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
maustesten:                             
          lda #%01111111                
          sta $dc00                     
                                        
          lda $d419                     
          cmp #$ff                      
          bne mausinstalliert1          
          lda $d41a                     
          cmp #$ff                      
          bne mausinstalliert1          
          lda #%10000000                
          sta $dc00                     
          lda $d419                     
          cmp #$ff                      
          bne mausinstalliert2          
          lda $d41a
          cmp #$ff
          bne mausinstalliert2          
          lda #0                        
 .by $2c                                
mausinstalliert2:                       
          lda #2                        
 .by $2c                                
mausinstalliert1:                       
          lda #1                        
          sta maus                      
          lda #$7f                      
          sta $dc00                     
maustestenende:                         
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; CIA-Timing                            
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          sei                           
in1:
          lda $d011                     
          bpl in1
in2:                                    
          lda $d011                     
          bmi in2                       
          ldy #5                        
          jsr waitline                  
          ldx #32                       
          ldy #0                        
in3:                                    
          lda $d012                     
          cmp #10                       
          bne in3                       
          stx $dd04                     
          sty $dd05                     
          lda #$11                      
          sta $dd0e
          lda #129                      
          sta $dd0d                     
          ldx #<nmi                     
          ldy #>nmi                     
          stx $0318
          sty $0319                     
          bit 0                         
          bit 0                         
 .br 9,$ea                              
nmi:                                    
          ldx $dd04                     
          pla                           
          pla                           
          pla                           
          lda $dd0d                     
          lda #127
          sta $dd0d
          lda #8                        
          sta $dd0e                     
          cli                           
          stx ciatiming                 
                                        
          lda #$47                      
          sta $0318                     
          lda #$fe
          sta $0319
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ROM-Version                           
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda $ff80                     
          sta rom                       
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Geraete am IEC-Bus                    
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          ldx #15                       
iec1:                                   
          txa                           
          jsr testiec                   
          lda #0                        
          rol                           
          eor #1                        
          sta iecgeraete,x              
          dex                           
          bpl iec1                      

          lda iecgeraete+4
          sta drucker                   
          lda iecgeraete+5              
          beq kein5                     
          inc drucker                   
kein5:
          ldx #8                        
          lda #0                        
testiec2:                               
          clc                           
          adc iecgeraete,x              
          inx                           
          cpx #16                       
          bcc testiec2                  
          sta drives                    
                                        
          lda #0                        
          sta modul                     
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Test auf Modul
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          jsr $fd02                     
          bne keinmod
          dec modul                     
keinmod:                                
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Test auf FINAL CARTRIDGE III          
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          ldx #7                        
testfc:                                 
          lda finalid,x                 
          cmp $de00,x                   
          bne keinefc                   
          dex                           
          bpl testfc                    
          lda #1                        
          sta modul                     
          jmp modulende                 
keinefc:                                
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Test auf SIMONS' BASIC
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda $8000                     
          cmp #82                       
          bne keinsimons                
          lda $8001                     
          cmp #129                      
          bne keinsimons                
          lda #2                        
          sta modul                     
          jmp modulende                 
keinsimons:                             
          lda $0330                     
          cmp #$6d                      
          bne keinar5                   
          lda $0331                     
          cmp #$df
          bne keinar5                   
          lda $0332                     
          cmp #$6f
          bne keinar5
          lda $0333                     
          cmp #$df                      
          bne keinar5                   
          lda #3                        
          sta modul                     
          bne modulende                 
keinar5:                                
          lda $0330                     
          cmp #$66                      
          bne keinnordic
          lda $0331                     
          cmp #$df                      
          bne keinnordic
          lda $0332                     
          cmp #$6b                      
          bne keinnordic
          lda $0333                     
          cmp #$df                      
          bne keinnordic
          lda #5
          sta modul                     
          bne modulende                 
keinnordic:
	  JSR GETREU
          BCS KEINEREU

          STX REUGROESSE
          STY REUGROESSE+1
          LDA #6
          STA MODUL
          JMP MODULENDE

KEINEREU:
; GEO-Ram-Erkennung
          lda #$3e                      
          sta $dffe                     
          lda #$03
          sta $dfff                     
          ldy #0
geo1:
          tya
          sta $de00,x                   
          iny                           
          bne geo1                      
geo2:                                   
          tya                           
          cmp $de00,y
          bne keingeoram                
          iny                           
          bne geo2                      
          lda #4                        
          sta modul                     
keingeoram:                             
modulende:                              
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Sicherung intakt?                     
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda $dc08
          ora $dc09
          sta sicherung
                                        
                                        
          lda #$37                      
          sta 1
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Ergebnis ausgeben                     
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          lda #23                       
          sta $d018                     
                                        
          lda $d021                     
          sta $d020                     
                                        
          lda #1                        
          sta gewaehlt
mainscreen:                             
          jsr cls                       
          jsr cr                        
          ldx #9
          jsr spaces
          lda #<titel
          ldy #>titel                   
          jsr sspaltesetzen             
                                        
          lda cpu
          bne cpunichtc64
          lda #<textc64                 
          ldy #>textc64                 
          bne cpucont1
cpunichtc64:
          cmp #1                        
          bne cpunichtc128
          lda #<textc128                
          ldy #>textc128
          bne cpucont1
cpunichtc128:
          cmp #2
          bne nichtflash8
          lda #<textflash8
          ldy #>textflash8
          bne cpucont1
nichtflash8:
          cmp #3
          bne nichtsupercpu
          lda #<textsupercpu
          ldy #>textsupercpu
          bne cpucont1
nichtsupercpu:
          lda emulator
          cmp #"a"
          bne nemua
          lda #<textc64alive
          ldy #>textc64alive
          bne emucont
nemua:
          cmp #"p"                      
          bne nemup                     
          lda #<textpc64                
          ldy #>textpc64
          bne emucont
nemup:
          cmp #"s"                      
          bne nemus                     
          lda #<textc64s                
          ldy #>textc64s                
          bne emucont
nemus:                                  
          cmp #"x"                      
          bne nemux                     
          lda #<textx64                 
          ldy #>textx64                 
          bne emucont
nemux:                                  
          lda #<textunbekemu            
          ldy #>textunbekemu            
emucont:                                
          jsr strout                    
          lda #<textemulator
          ldy #>textemulator
cpucont1:
          jsr strout                    
          jsr crspaces1                 
                                        
          lda #<textclock
          ldy #>textclock
          jsr sspaltesetzen

          lda clock
          bne nichtntsc
          lda #<textntsc
          ldy #>textntsc
          bne istntsc1
nichtntsc:
          cmp #1
          bne nichtpal
          lda #<textpal
          ldy #>textpal
          bne istntsc1
nichtpal:
          cmp #2
          bne nicht8mhz
          lda #<textfl8mhz
          ldy #>textfl8mhz
          bne istntsc1
nicht8mhz:
          lda #<textscpu20mhz
          ldy #>textscpu20mhz
istntsc1:
          jsr strout
          lda #<textmhz
          ldy #>textmhz
          jsr crspaces

          lda #<textsid
          ldy #>textsid
          jsr strout
          jsr spaltesetzen              
          lda sid
          bne sidda
          jsr nein                      
          jmp sidcont2                  
sidda:                                  
          cmp #1                        
          bne nicht6581                 
          lda #<text6581                
          ldy #>text6581                
          bne sidcont3                  
nicht6581:                              
          lda #<text8580
          ldy #>text8580                
sidcont3:                               
          jsr strout                    
sidcont2:                               
          jsr crspaces1                 

          lda #<textmaus                
          ldy #>textmaus                
          jsr sspaltesetzen             

          lda maus                      
          bne printmaus                 
          jsr nein                      
          jmp maus2                     
printmaus:                              
          lda #<textport                
          ldy #>textport
          jsr strout                    
                                        
          ldx maus                      
          lda #0                        
          jsr $bdcd                     
          jsr crspaces1
maus2:                                  
                                        
          lda #<textcolram              
          ldy #>textcolram              
          jsr printversion              
                                        
          ldx colram
          lda #0                        
          jsr $bdcd                     
          jsr crspaces1                 

          lda #<textrom                 
          ldy #>textrom                 
          jsr printversion              
                                        
          lda rom                       
          jsr printaltneu
                                        
          lda #<textsich                
          ldy #>textsich                
          jsr strout                    
                                        
          lda sicherung                 
          jsr printjanein               
                                        
                                        
          lda #<textciatiming
          ldy #>textciatiming
          jsr sspaltesetzen             
                                        
          ldx ciatiming                 
          lda #0                        
          jsr $bdcd                     
          jsr crspaces1
                                        
          lda #<textiec                 
          ldy #>textiec                 
          jsr sspaltesetzen             
                                        
          lda drucker                   
          clc                           
          adc drives                    
          bne geraete                   
                                        
          lda #<textkeineger
          ldy #>textkeineger            
          jsr strout
          jmp keinelaufwerke            
                                        
geraete:                                
          lda drucker
          beq keindrucker               
                                        
          ldx drucker                   
          lda #0                        
          jsr $bdcd                     
                                        
          lda #<textdrucker             
          ldy #>textdrucker             
          jsr strout                    
                                        
          lda drives
          beq keinelaufwerke            
          lda #","                      
          jsr bsout                     
          jsr space                     
keindrucker:
          ldx drives
          beq keinelaufwerke            
          lda #0                        
          jsr $bdcd                     
          lda #<textlw                  
          ldy #>textlw                  
          jsr strout                    
                                        
keinelaufwerke:                         
          jsr crspaces1                 
                                        
          lda #<textmodul
          ldy #>textmodul               
          jsr sspaltesetzen             
                                        
          lda modul                     
          bne schonmodul                
          lda #<textkeines
          ldy #>textkeines              
          bne modul1
schonmodul:                             
          bpl nichtunbek                
          lda #<textunbek               
          ldy #>textunbek               
          bne modul1                    
nichtunbek:                             
          cmp #1                        
          bne nichtfinal                
          lda #<textfinal
          ldy #>textfinal               
          bne modul1                    
nichtfinal:                             
          cmp #2                        
          bne nichtsimons               
          lda #<textsimons
          ldy #>textsimons              
          bne modul1                    
nichtsimons:                            
          cmp #3                        
          bne nichtar5
          lda #<textar5                 
          ldy #>textar5                 
          bne modul1                    
nichtar5:                               
          cmp #5                        
          bne nichtnordic
          lda #<textnordic
          ldy #>textnordic
          bne modul1
nichtnordic:
          cmp #6
          bne nichtreu
          lda #<textreu
          ldy #>textreu
          jsr strout
          ldx reugroesse
          lda reugroesse+1
          jsr $bdcd
          lda #<textkb
          ldy #>textkb
          bne modul1
nichtreu:
          lda #<textgeoram
          ldy #>textgeoram
modul1:
          jsr strout
                                        
          lda gewaehlt                  
          jsr invertieren
                                        
waitforkey:                             
          jsr getkey                    
                                        
          cmp #17 ; down
          bne nichtunten
; CSR down
          lda gewaehlt
          jsr invertieren
          inc gewaehlt
          lda gewaehlt
          cmp #punkte+1
          bne nersterpunktgewaehlt
          lda #1
          sta gewaehlt
nersterpunktgewaehlt:
          jsr invertieren
          jmp waitforkey
nichtunten:
          cmp #145 ; up
          bne nichtoben
          lda gewaehlt
          jsr invertieren
          dec gewaehlt
          beq letzterpunkt
          lda gewaehlt
          jsr invertieren
          jmp waitforkey
letzterpunkt:
          lda #punkte
          sta gewaehlt
          jsr invertieren
          jmp waitforkey

nichtoben:                              
          cmp #13                       
          bne waitforkey                
          ldx gewaehlt                  
          cpx #10                       
          bne nicht9                    
          lda modul                     
          beq waitforkey                
nicht9:                                 
          dex                           
          txa
          asl                           
          tax                           
          lda routines,x                
          sta jmp+1                     
          lda routines+1,x              
          sta jmp+2
          txa                           
          pha                           
          jsr cls                       
          pla                           
          tax                           
          lda erkl,x                    
          ldy erkl+1,x                  
          jsr strout                    
jmp:                                    
          jmp $ffff                     

rcpu:                                   
          lda #<cpuerklb                
          ldy #>cpuerklb                
          jsr strout                    
                                        
          lda cpu
          beq getkeymainscreen          
          cmp #1                        
          beq rcpu128
          cmp #2                        
          beq getkeymainscreen          
; Emulator                              
          lda emulator                  
          bne nemu0                     
          lda #" "                      
nemu0:                                  
          sta emuerkl0
          lda #<emuerkl1                
          ldy #>emuerkl1                
          jsr strout                    
          lda $dffd                     
          jsr hex4                      
          lda #"."
          jsr bsout                     
          lda $dffc                     
          jsr hex8                      
          lda #<emuerkl2                
          ldy #>emuerkl2                
          jsr strout
          ldx #0                        
emuloop:                                
          lda #1                        
          sta $d4                       
          lda $dfa0,x
          beq emuend                    
          jsr bsout                     
          inx                           
          bne emuloop                   
emuend:                                 
          jmp getkeymainscreen
rcpu128:                                
          lda #<cpuerkl2                
          ldy #>cpuerkl2                
          jsr strout                    
                                        
          lda $d030                     
          jsr hex8dollar                
                                        
getkeymainscreen:
          jsr getkey                    
          jmp mainscreen
rsid:                                   
          lda #$d4                      
          ldx #$20                      
          jsr dump                      
          beq getkeymainscreen          
rmouse:
          lda #"9"                      
          jsr bsout                     
          jsr colon                     
          jsr space                     
          lda $d419                     
          jsr hex8dollar                
                                        
          lda #<mouseerkl2              
          ldy #>mouseerkl2              
          jsr strout                    

          lda #"a"
          jsr bsout                     
          jsr colon                     
          jsr space                     
          lda $d41a                     
          jsr hex8dollar
getkeymainscreen1:                      
          jmp getkeymainscreen          
rcolram:                                
          lda $d800                     
          jsr hex8dollar                
                                        
          jsr $ffe4                     
          bne rcolramende               
                                        
          ldx #3                        
          lda #157 ; left
          jsr repeat                    
          beq rcolram                   
rcolramende:                            
          jmp mainscreen
rrom:                                   
          lda $ff80
          jsr hex8dollar                
          bne getkeymainscreen1         
rsich:                                  
          ldx #0                        
          lda $dc0b                     
          jsr scrhex8                   
          lda #":"                      
          sta scrsich,x                 
          inx                           
          lda $dc0a                     
          jsr scrhex8
          lda #":"                      
          sta scrsich,x                 
          inx                           
          lda $dc09                     
          jsr scrhex8                   
          lda #":"
          sta scrsich,x
          inx                           
          lda $dc08                     
          jsr scrhex4
          jsr $ffe4                     
          beq rsich                     
          jmp mainscreen                
rtiming:                                
          jmp getkeymainscreen          
riec:                                   
          lda #"4"
          jsr bsout                     
          lda #<vorhanden               
          ldy #>vorhanden               
          jsr strout                    
                                        
          lda iecgeraete+4
          jsr printjanein1              
                                        
          jsr pos1                      
          lda #145 ; up
          jsr bsout                     
                                        
          lda #<iecerkl                 
          ldy #>iecerkl                 
          jsr strout                    
          lda #"5"                      
          jsr bsout
          lda #<vorhanden               
          ldy #>vorhanden               
          jsr strout                    
                                        
          lda iecgeraete+5              
          jsr printjanein1
                                        
          jsr pos1                      
                                        
                                        
          lda #8                        
          sta 2                         
showiecloop:
          lda #<textlaufwerk            
          ldy #>textlaufwerk            
          jsr strout                    

          ldx 2                         
          lda #0                        
          jsr $bdcd                     
                                        
          lda #<vorhanden               
          ldy #>vorhanden
          jsr strout                    
                                        
          ldx 2                         
          lda iecgeraete,x              
          pha                           
          jsr printjanein1              
                                        
          lda #145 ; up
          jsr bsout                     

          pla
          beq geraetnichtda             
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; Auslesen des Floppy-ROMs              
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
          ldx #$78                      
          ldy #$ff
          jsr readfloppymem             
                                        
          cmp #$aa                      
          bne nicht1541a                
          lda #<text1541a               
          ldy #>text1541a               
          bne stroutgeraetnichtda       
nicht1541a:                             
          cmp #$85                      
          bne nicht1541c                
          lda #<text1541c
          ldy #>text1541c               
          bne stroutgeraetnichtda
nicht1541c:                             
          cmp #$d0                      
          bne nicht1541b                
          lda #<text1541b
          ldy #>text1541b               
          bne stroutgeraetnichtda       
nicht1541b:                             
          cmp #$a8                      
          bne nicht1571                 
          lda #<text1571                
          ldy #>text1571                
          bne stroutgeraetnichtda       
nicht1571:                              
          cmp #$da                      
          bne nicht1581
          lda #<text1581                
          ldy #>text1581                
          bne stroutgeraetnichtda       
nicht1581:                              
          cmp #$f3
          bne nichtfd
          ldx #$f0                      
          ldy #$fe                      
          jsr readfloppymem             
          cmp #"2"                      
          bne nichtfd2000               
          lda #<textfd2000              
          ldy #>textfd2000              
          bne stroutfdcont              
nichtfd2000:                            
          lda #<textfd4000              
          ldy #>textfd4000
stroutfdcont:                           
          jsr strout                    
          ldx #$f5                      
          ldy #$fe                      
          jsr readfloppymem             
          cmp #"r"
          bne nichtrtc                  
          lda #<textmit
          ldy #>textmit                 
          bne stroutfdcont2             
nichtrtc:                               
          lda #<textohne                
          ldy #>textohne                
stroutfdcont2:                          
          jsr strout                    
          lda #<textrtc                 
          ldy #>textrtc
          bne stroutgeraetnichtda       
nichtfd:                                
          lda #<textfloppyunbekannt     
          ldy #>textfloppyunbekannt     
stroutgeraetnichtda:                    
          jsr strout
                                        
geraetnichtda:                          
          jsr pos1                      
                                        
          inc 2
          lda 2                         
          cmp #16                       
          bcs contx1                    
          jmp showiecloop               
contx1:                                 
getkeymainscreen2:
          jmp getkeymainscreen          
rclock:                                 
          lda #<clockerkl2              
          ldy #>clockerkl2              
          jsr strout                    
          lda $02a6
          jsr hex8dollar                
          bne getkeymainscreen2         
                                        
rmodul:                                 
          lda modul                     
          cmp #1                        
          bne keinfc1                   
          lda #<finalerkl
          ldy #>finalerkl               
          jsr strout                    
          lda #$de
          ldx #$90                      
          jsr dump                      
          beq getkeymainscreen2         
keinfc1:                                
          cmp #2                        
          bne keinsimons1
          lda #<simonserkl              
          ldy #>simonserkl              
stroutgkms:                             
          jsr strout                    
          jmp getkeymainscreen          
keinsimons1:                            
          cmp #3                        
          bne keinar5erkl               
          lda #<ar5erkl                 
          ldy #>ar5erkl                 
          bne stroutgkms
keinar5erkl:                            
          cmp #5                        
          bne keinnordicerkl
          lda #<nordicerkl
          ldy #>nordicerkl
          bne stroutgkms
keinnordicerkl:
          cmp #6
          beq schonreuerkl
          cmp #7
          bne keinreuerkl
schonreuerkl:
          lda #<reuerkl1
          ldy #>reuerkl1
          jsr strout
          lda #<reuerkl2
          ldy #>reuerkl2
          jsr strout
          jmp getkeymainscreen
keinreuerkl:
          cmp #4
          bne keingeoramerkl
          lda #<georamerkl
          ldy #>georamerkl
          bne stroutgkms
keingeoramerkl:
          lda #<unbekerkl
          ldy #>unbekerkl
          bne stroutgkms
;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
dump:
          stx selfmod3+1
          sta selfmod4+1
          sta selfmod2+2

          lda #0
          sta selfmod1+1
          sta selfmod2+1
dump1:
          lda #"."
          jsr bsout
          lda #":"
          jsr bsout

selfmod1:
          lda #$00
selfmod4:
          ldy #$d4
          jsr hex16

          ldx #0
memloop:
          jsr space
selfmod2:
          lda $d400,x
          stx 2
          jsr hex8
          ldx 2
          inx
          cpx #8
          bne memloop

          jsr cr

          lda selfmod1+1
          clc
          adc #8
          sta selfmod1+1
          sta selfmod2+1
selfmod3:
          cmp #$20
          bne dump1
          rts

testiec:
          jsr $f648                     
          asl $90                       
          rts                           
space:                                  
          lda #" "
 .by $2c                                
colon:                                  
          lda #":"
          jmp bsout                     
getkey:                                 
          jsr $ffe4                     
          beq getkey                    
          rts                           
hex8dollar:
          tax                           
          lda #"$"                      
          jsr bsout                     
          txa                           
          jmp hex8                      
hex16:                                  
          pha                           
          tya                           
          jsr hex8                      
          pla                           
hex8:
          tay                           
          lsr                           
          lsr                           
          lsr                           
          lsr                           
          jsr hex4
          tya                           
hex4:                                   
          and #15                       
          tax                           
          lda hextab,x                  
          jmp bsout                     
                                        
                                        
invertieren:                            
          sec                           
          sbc #1
          asl                           
          clc                           
          adc #4
          tax                           
          lda #0                        
          sta $fe
          lda $0288                     
          sta $ff                       
                                        
calculateline:                          
          lda $fe                       
          clc                           
          adc #40                       
          sta $fe                       
          lda $ff                       
          adc #0                        
          sta $ff
          dex                           
          bne calculateline             
                                        
          ldy #39                       
invertierloop:                          
          lda ($fe),y
          eor #$80                      
          sta ($fe),y                   
          dey                           
          bpl invertierloop             
          rts                           
                                        
printversion:                           
          jsr strout                    
          lda #<textversion             
          ldy #>textversion             
          jmp strout
printjanein:                            
          pha                           
          jsr spaltesetzen              
          pla                           
printjanein1:                           
          beq nein
ja:                                     
          lda #<textja                  
          ldy #>textja
          bne crspaces                  
nein:                                   
          lda #<textnein                
          ldy #>textnein                
crspaces:                               
          jsr strout                    
crspaces1:                              
          jsr cr
          jsr cr                        
          ldx #2                        
spaces:                                 
          lda #" "                      
repeat:                                 
          jsr bsout
          dex                           
          bne repeat                    
          rts                           
printaltneu:                            
          pha                           
          jsr spaltesetzen
          pla                           
          beq alt                       
          cmp #1                        
          beq nerweitert                
          cmp #3
          beq nerweitert                
          lda #<texterweitert
          ldy #>texterweitert
          bne crspaces                  
nerweitert:                             
          lda #<textneu
          ldy #>textneu                 
          bne crspaces                  
alt:                                    
          lda #<textalt                 
          ldy #>textalt                 
          bne crspaces                  
erweitert:                              
          lda #<texterweitert
          ldy #>texterweitert
          bne crspaces                  

                                        
sspaltesetzen:                          
          jsr strout                    
spaltesetzen:                           
          ldy #21                       
 .by $2c
pos1:                                   
          ldy #0                        
          jmp $e50e                     
                                        
strout:                                 
          pha                           
          lda $d011                     
          and #%11101111                
          sta $d011                     
          pla                           
          jsr $ab1e
          pha
          lda $d011                     
          ora #%00010000                
          sta $d011                     
          pla                           
          rts
                                        
readfloppymem:                          
          stx mrop                      
          sty mrop+1                    
          lda #1                        
          ldx 2                         
          ldy #$6f                      
          jsr $ffba                     
          ldx #<mr                      
          ldy #>mr                      
          lda #5
          jsr $ffbd                     
          jsr $ffc0                     
                                        
          lda 2
          jsr $ffb4                     
          lda #$6f
          jsr $ff96                     
          jsr $ffa5                     
                                        
          pha                           
                                        
          lda 2                         
          jsr $ffab                     
          lda #1                        
          jsr $ffc3                     
                                        
          jsr $ffc3
                                        
          pla                           
          rts                           
                                        
scrhex8:                                
          pha
          lsr
          lsr                           
          lsr                           
          lsr                           
          jsr scrhex4
          pla                           
scrhex4:
          and #15
          tay
          lda scrhextab,y
          sta scrsich,x
          inx
          rts

; REU-Erkennung
; 18.05.1996
; gibt in X/Y die Anzahl der Kilobytes zurck, mit der die REU bestckt ist.
; X/Y = 0     -> keine REU
; X/Y = 16384 -> 16 MB, h”chtm”gliche Zahl
; bankweise Prfung, das erste Byte jeder Bank wird zerst”rt.
.la bank=sfmbank+1
getreu:
; unver„nderliche Werte bei der šbertragung setzen
        lda #<reubuffer
        sta $df02                 ; C64-Speicherposition setzen
        lda #>reubuffer
        sta $df03
        ldx #$00
        stx $df09                 ; keine Interrupts
        stx $df04                 ; REU-Adresse(lo)=0
        stx $df05                 ; REU-Adresse(hi)=0
        stx $df08                 ; Anzahl er zu bertragenden Bytes(hi)=0
        inx
        stx $df07                 ; Anzahl der zu bertragenden Bytes(lo)=1

	lda #0
        sta bank
        lda #$aa
        sta reubuffer
        jsr store

	inc bank
reuloop:
        lda #$55
	sta reubuffer

        jsr store

        lda #0
        sta reubuffer

        ldx bank
        lda #0
        sta bank
        jsr get
        stx bank

        lda reubuffer
        beq noreu
        cmp #$55     ; in REU:00:0000 befindet sich der gerade geschriebene
        beq reuend   ; Wert -> Wraparound -> Ende des Speichers

        inc bank
        bne reuloop  ; n„chste Bank

        ldx #0
        ldy #$40     ; wenn kein Wraparound, dann 16 MB
        clc
        rts
noreu:
        sec
        rts

reuend:
        lda #0
        sta reubuffer
	lda bank
        lsr
        ror reubuffer
        lsr
        ror reubuffer
        tay
        ldx reubuffer
        clc
	rts

store:
	lda #$fc ; C64 -> REU
        .byte $2c
get:
	lda #$fd ; REU -> C64
        sta transfersfm+1
sfmbank:
        lda #$00 ; Bank
        sta $df06
transfersfm:
        lda #0; Transferart
        sta $df01
        rts

waitline:
          cpy $d012
          bne waitline
          ldx #10
de1:
          dex
          bne de1
          iny
          cpy $d012                     
          nop                           
          beq sk1                       
          cmp 0                         
          nop
sk1:                                    
          ldx #9                        
de2:                                    
          dex                           
          bne de2                       
          iny
          nop                           
          nop
          cpy $d012                     
          nop                           
          beq sk2                       
          cmp 0                         
sk2:                                    
          ldx #10                       
de3:                                    
          dex                           
          bne de3
          iny                           
          cpy $d012                     
          bne sk3                       
sk3:
          rts                           

textplw1:
 .by 14 ; Kleinschrift
 .by 8  ; verriegeln
 .by 221; "³"
 .tx "Teste Computer,"
 .by 221; "³"
 .by 0
textplw2:
 .by 221; "³"
 .tx "bitte warten..."
 .by 221; "³"
 .by 0
titel:
 .tx "MIST Diagnostics V1.2"
 .by 13,13,13,32,32
 .tx "CPU:"                             
 .by 0
textclock:
 .tx "Taktfrequenz:"
 .by 0
textntsc:
 .tx "1.02"
 .by 0
textpal:
 .tx "0.98"
 .by 0
textfl8mhz:
 .tx "8"
 .by 0
textscpu20mhz:
 .tx "20"
 .by 0
textmhz:
 .tx " MHz"
 .by 0
textmaus:
 .tx "Maus vorhanden:"
 .by 0
textport:
 .tx "Port "
 .by 0
textsid:                                
 .tx "SID:"
 .by 0                                  
text6581:
 .tx "6581"                             
 .by 0                                  
text8580:                               
 .tx "8580"                             
 .by 0                                  
textcolram:                             
 .tx "Color-RAM"                        
 .by 0                                  
textrom:
 .tx "ROM"                              
 .by 0                                  
textsich:                               
 .tx "Sicherung intakt:"                
 .by 0                                  
textciatiming:
 .tx "CIA-Timing:"
 .by 0                                  
textiec:                                
 .tx "IEC-Bus:"                         
 .by 0
textmodul:                              
 .tx "Modul:"                           
 .by 0                                  
textversion:                            
 .tx " Version: "                       
 .by 0
textja:                                 
 .tx "ja"                               
 .by 0                                  
textnein:
 .tx "nein"                             
 .by 0
textalt:                                
 .tx "alt"                              
 .by 0                                  
textneu:
 .tx "neu"                              
 .by 0                                  
texterweitert:
 .tx "erweitert"
 .by 0
textkb:
 .tx " KB"
 .by 0
textdrucker:
 .tx " Drucker"
 .by 0                                  
textlw:                                 
 .tx " Lfw."                            
 .by 0                                  
textkeineger:                           
 .tx "keine Geraete"
 .by 0                                  
textfinal:                              
 .tx "Final Cartridge III"              
 .by 0                                  
textsimons:                             
 .tx "Simons' Basic"                    
 .by 0
textar5:
 .tx "Action Replay"                    
 .by 0                                  
textnordic:
 .tx "Nordic Power"
 .by 0                                  
textreu:
 .tx "REU "
 .by 0
textgeoram:
 .tx "GeoRAM"                           
 .by 0                                  
textunbek:                              
 .tx "unbekannt"                        
 .by 0                                  
textkeines:                             
 .tx "keines"
 .by 0
text1541a:                              
 .tx "Commodore 1541-I"                 
 .by 13,0
text1541c:                              
 .tx "Commodore 1541-C"                 
 .by 13,0
text1541b:
 .tx "Commodore 1541-II"                
 .by 13,0                               
text1571:                               
 .tx "Commodore 1571"                   
 .by 13,0                               
text1581:                               
 .tx "Commodore 1581"                   
 .by 13,0                               
textfd2000:                             
 .tx "FD-2000"
 .by 0                                  
textfd4000:
 .tx "FD-4000"                          
 .by 0                                  
textmit:                                
 .tx " mit"
 .by 0                                  
textohne:                               
 .tx " ohne"                            
 .by 0
textrtc:                                
 .tx " Echtzeituhr"                     
 .by 13,0                               
textfloppyunbekannt:                    
 .tx "unbekannt"                        
 .by 13,0                               

textc64:                                
 .tx "6510/8500 (C64)"                  
 .by 0                                  
textc128:                               
 .tx "8502 (C128)"
 .by 0
textflash8:                             
 .tx "65816 (Flash 8)"                  
 .by 0
textsupercpu:
 .tx "65816 (SuperCPU)"
 .by 0
textc64alive:
 .tx "C64ALIVE"                         
 .by 0                                  
textpc64:                               
 .tx "PC64"                             
 .by 0                                  
textc64s:                               
 .tx "C64S"
 .by 0                                  
textx64:                                
 .tx "X64"                              
 .by 0                                  
textunbekemu:                           
 .tx "unbek."
 .by 0                                  
textemulator:
 .tx " Emulator"
 .by 0                                  
                                        
cpuerkl1:                               
 .tx "Ob es sich um einen C64 oder ein"
 .tx "en C128"                          
 .by 13                                 
 .tx "handelt, kann man dadurch festst" 
 .tx "ellen,"
 .by 13                                 
 .tx "indem man aus dem VIC-Register $" 
 .tx "d030"                             
 .by 13                                 
 .tx "liest."                           
 .by 13
 .tx "Flash 8/SuperCPU lassen sich durch"
 .tx " eine"
 .by 13                                 
 .tx "Routine erkennen, die das N"      
 .tx "-Flag nach"
 .by 13
 .tx "einer Ueberlauf-Operation im"     
 .tx " Dezimal-"                        
 .by 13                                 
 .tx "Modus testet."
 .by 13,0
cpuerklb:                               
 .tx "Bei Emulatoren wechselt der Inhalt
 .tx " von"                             
 .by 13                                 
 .tx "$DFFF zwischen $55 und $AA. In "  
 .tx "$DFFE"
 .by 13                                 
 .tx "befindet sich der Emulatortyp, in"
 .by 13                                 
 .tx "$DFFC/D "                         
 .tx "die Versionsnummer und ab $DFA0"  
 .by 13                                 
 .tx "der Copyrightstring."             
 .by 0
cpuerkl2:
 .by 13,13                              
 .tx "Inhalt der Speicherstelle $d030: "
 .by 0                                  
emuerkl1:
 .by 13,13                              
 .tx "Emulator Manufacturer: '"         
emuerkl0:                               
 .by 0,"'",13
 .tx "Versionsnummer: "
 .by 0                                  
emuerkl2:                               
 .by 13                                 
 .tx "Copyrightstring:"                 
 .by 13,0                               
                                        
                                        
siderkl:                                
 .tx "Schreibt man einen Wert in ein SI"
 .tx "D-"
 .by 13
 .tx "Register, so 'verliert' es ihn na"
 .tx "ch"                               
 .by 13                                 
 .tx "einer gewissen Zeit ;"
 .tx " beim 6581 recht"
 .by 13                                 
 .tx "schnell, beim 8580 langsamer."    
 .by 13                                 
 .tx "Erhaelt man beim Lesen Zufallswer"
 .tx "te,"                              
 .by 13                                 
 .tx "dann ist kein SID eingebaut."     
 .by 13,13                              
 .tx "Inhalt des IO-Bereichs ab $d400:" 
 .by 13,13,0                            
mouseerkl:
 .tx "Ist eine Maus angeschlossen, ent" 
 .tx "halten"                           
 .by 13
 .tx "die SID-Register $19 und $1a dere"
 .tx "n"                                
 .by 13
 .tx "Koordinaten, ansonsten $ff."      
 .by 13
mouseerkl2:                             
 .by 13                                 
 .tx "Inhalt von $d41"                  
 .by 0                                  
colramerkl:
 .tx "Da die oberen 4 Bits des Color-"  
 .tx "RAMs"                             
 .by 13                                 
 .tx "nicht belegt sind, ergeben sie "
 .tx "beim"                             
 .by 13                                 
 .tx "Auslesen zufaellige Werte. Dadu"  
 .tx "rch"                              
 .by 13                                 
 .tx "kann der Chip identifiziert werd"
 .tx "en."
 .by 13,13                              
 .tx "Inhalt der Speicherstelle $d800: "
 .by 0                                  
romerkl:
 .tx "In der Speicherstelle $ff80 im ROM
 .tx " steht"                           
 .tx "die Versionsnummer des Betriebssys
 .tx "tems,"                            
 .by 13
 .tx "wobei 0 fuer die alte und 3 die "
 .tx "neue "                            
 .by 13                                 
 .tx "Version steht. Andere Zahlen "    
 .tx "deuten auf"                       
 .by 13                                 
 .tx "ein erweitertes Betriebssystem "
 .tx "hin."                             
 .by 13,13                              
 .tx "Inhalt der Speicherstelle $ff80: "
 .by 0
sicherkl:                               
 .tx "Sollten die Echtzeituhren der CIA"
 .tx "s"                                
 .by 13
 .tx "nicht mehr laufen, deutet das auf"
 .tx " eine"                            
 .by 13
 .tx "defekte Sicherung im Inneren des" 
 .by 13
 .tx "Computers hin. Ein weiteres Anzei"
 .tx "chen"                             
 .by 13                                 
 .tx "dafuer ist, dass kein Ton mehr vom
 .tx " SID"                             
 .by 13
 .tx "kommt."                           
 .by 13                                 
 .tx "Echtzeituhr CIA 1:"               
 .by 0
timingerkl:
 .tx "Neuere C64 reagieren auf IRQs und"
 .tx " NMIs"                            
 .by 13                                 
 .tx "der CIAs schneller als aeltere:"
 .by 13                                 
 .tx " alte C64/C128 (bis ca. 1986): 12"
 .by 13                                 
 .tx " neue C64/C128:                14"
 .by 0
clockerkl:
 .tx "Ab Adresse $ff5b steht im Betriebs
 .tx "system"                           
 .tx "eine Routine, die auf PAL/NTSC"   
 .tx " testet"                          
 .by 13                                 
 .tx "und das Ergebnis in $02a6 ablegt."
 .by 13                                 
 .tx "(0=NTSC, 1=PAL)"                  
 .by 13
 .tx "PAL-Computer werden mit 0.98 MHz"
 .tx " ge-"
 .by 13                                 
 .tx "taktet, NTSC-Modelle mit 1.02 MHz"
 .tx "."
 .by 13,0                               
clockerkl2:                             
 .tx "Ein C64 mit einer Flash 8 laeuft"
 .tx " je"                              
 .by 13
 .tx "nach Zustand von DIP 1 mit 1 (OFF"
 .tx ")"                                
 .by 13                                 
 .tx "oder 8 MHz (ON)."                 
 .by 13,13                              
 .tx "Inhalt der Speicherstelle $02a6: "
 .by 0                                  
iecerkl:                                
 .tx "Drucker "
 .by 0
textlaufwerk:
 .tx "Laufwerk "                        
 .by 0                                  
vorhanden:                              
 .tx " vorhanden: "
 .by 0                                  
modulerkl:                              
 .by 0                                  
                                        
finalerkl:
 .tx "Steckt eine Final Cartridge III"  
 .tx " im"                              
 .by 13                                 
 .tx "Expansionsport, so stehen im Be"  
 .tx "reich"                            
 .by 13
 .tx "von $de00 bis $dfff bestimmte "   
 .tx "Werte."                           
 .by 13,13                              
 .tx "Inhalt des IO-Bereichs ab $de00:"
 .by 13,13,0
simonserkl:
 .tx "Steckt ein Simons' Basic-Modul"   
 .tx " im"                              
 .by 13
 .tx "Expansionsport, so steht in den"  
 .by 13                                 
 .tx "Speicherstellen $8000/$8001 $52"  
 .tx " bzw."                            
 .by 13
 .tx "$81."                             
 .by 13,13                              
 .tx "Inhalt der Speicherstelle $8000:"
 .tx "$52"                              
 .by 13                                 
 .tx "Inhalt der Speicherstelle $8001:" 
 .tx "$81"                              
 .by 0                                  
ar5erkl:
 .tx "Steckt ein Action Replay-Mod"
 .tx "ul"
 .by 13                                 
 .tx "im Expansionsport, so stehen in d"
 .tx "en"                               
 .by 13
 .tx "Speicherstellen $0330 bis $0333 d"
 .tx "ie"                               
 .by 13                                 
 .tx "Werte $6d, $df, $6f, $df, da die" 
 .by 13
 .tx "Vektoren, die fuer das Laden und" 
 .by 13                                 
 .tx "Speichern verantwortlich sind, ve"
 .tx "r-"                               
 .by 13                                 
 .tx "bogen wurden."
 .by 0                                  
nordicerkl:                             
 .tx "Steckt ein Nordic Power-Modul"    
 .by 13
 .tx "im Expansionsport, so stehen in d"
 .tx "en"                               
 .by 13                                 
 .tx "Speicherstellen $0300 bis $0333 d"
 .tx "ie"
 .by 13                                 
 .tx "Werte $66, $df, $6b, $df, da die"
 .by 13                                 
 .tx "Vektoren, die fuer das Laden und" 
 .by 13
 .tx "Speichern verantwortlich sind, ve"
 .tx "r-"                               
 .by 13
 .tx "bogen wurden."
 .by 0                                  
reuerkl1:                               
 .tx "Eine REU kann erkannt werden, in" 
 .tx "dem man"                          
 .by 13                                 
 .tx "versucht, ein Byte in das erwei"
 .tx "terte"
 .by 13                                 
 .tx "RAM zu schreiben. Erhaelt man beim
 .tx " Lesen"
 .tx "das urspruengliche Byte, so ist "
 .tx "eine"                             
 .by 13                                 
 .tx "REU eingesteckt."                 
 .by 13,0                               
reuerkl2:
 .tx "Ob es sich um eine 1700 (128 KB)" 
 .tx " oder"                            
 .by 13                                 
 .tx "eine 1750 (512 KB) handelt, laesst
 .tx " sich"                            
 .by 13                                 
 .tx "durch die Speicherstelle $DF00"   
 .tx " fest-"                           
 .by 13                                 
 .tx "stellen."
 .by 13,13
 .tx "Inhalt von $DF00: $"              
 .by 0                                  
georamerkl:                             
 .tx "Ist ein Geo-RAM-Modul eingesteckt"
 .tx ","                                
 .by 13
 .tx "behaelt der I/O-Bereich die Werte"
 .tx ","                                
 .by 13
 .tx "die hineingeschrieben werden."    
 .by 0                                  
unbekerkl:                              
 .tx "Die Routine ab $fd02 im Betriebs" 
 .tx "system"                           
 .by 13                                 
 .tx "testet, ob ein Modul eingesteckt "
 .tx "ist"
 .by 13                                 
 .tx "(CBM80-Kennung)."
 .by 13
 .tx "Die Routine meldete, dass sich "  
 .tx "die"                              
 .by 13
 .tx "CBM80-Kennung ab $8004 befindet," 
 .tx " das"                             
 .by 13                                 
 .tx "Modul konnte jedoch nicht identi" 
 .tx "fiziert"                          
 .by 13
 .tx "werden."                          
 .by 0                                  
                                        
hextab:                                 
 .tx "0123456789abcdef"
scrhextab:                              
 .tx "0123456789"                       
 .by 1,2,3,4,5,6                        
mr:
 .tx "m-r"
mrop:
 .wo 0                                  
finalid:                                
 .by $40,$8d,$ff,$df,$60,$48,$a9,$40
flash8id:
 .by $46,$4c,$41,$53,$48,$20,$38
                                        
routines:                               
 .wo rcpu                               
 .wo rclock,rsid,rmouse,rcolram,rrom    
 .wo rsich,rtiming,riec                 
 .wo rmodul
erkl:                                   
 .wo cpuerkl1
 .wo clockerkl,siderkl,mouseerkl        
 .wo colramerkl,romerkl,sicherkl        
 .wo timingerkl,iecerkl,modulerkl       
                                        
gewaehlt:                               
 .by 0

cpu:                                    
 .by 0                                  
sid:                                    
 .by 0                                  
sidversion:                             
 .by 0          
maus:                                   
 .by 0                                  
colram:                                 
 .by 0
rom:
 .by 0                                  
drucker:                                
 .by 0
drives:
 .by 0
modul:
 .by 0
reugroesse:
 .by 0
iecgeraete:
 .br 16,0
colbits:
 .br 4,0
reubuffer:
 .by 0
sidcounter:
 .wo 0
clock:
 .by 0
sicherung:
 .by 0
emulator:
 .by 0
ciatiming:
 .by 0


    

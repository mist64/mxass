all: mxass

mxass: mxass.c
	cc -o mxass mxass.c

zip:
	rm -f mxass.zip
	zip -9 mxass.zip mxass.c Makefile OPCODES.A18 OPZ80.A23 dia.asm x7.asm readme.txt mxass.txt

clean:
	rm -f mxass mxass.zip

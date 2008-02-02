all: mxass

mxass.c: ASS29.c
	indent -nfc1 < ASS29.c > mxass.c

mxass: mxass.c
	cc -o mxass -I . -lp2c mxass.c

ASS29.c: ASS29.PAS
	p2c-2/p2c -LTURBO ASS29.PAS

clean:
	rm -f mxass.c ASS29.c mxass

all: mxass

mxass: ASS29.c
	cc -o mxass -I . -lp2c ASS29.c

ASS29.c: ASS29.PAS
	p2c-2/p2c -LTURBO ASS29.PAS

clean:
	rm -f ASS29.c mxass

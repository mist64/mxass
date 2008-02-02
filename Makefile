all: mxass

mxass: mxass.c
	cc -o mxass -I . -lp2c mxass.c

clean:
	rm -f mxass

all: mxass

mxass: mxass.c
	cc -o mxass mxass.c

clean:
	rm -f mxass

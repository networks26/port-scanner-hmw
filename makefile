

all:
		cc -o port-scanner port-scanner.c


test:
		./port-scanner -t 192.168.1.1 -p 1-1024



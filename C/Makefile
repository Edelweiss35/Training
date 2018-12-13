files = ex1 ex3 ex4 ex5 ex6 ex7 ex8 ex9 ex10
CFLAGS=-Wall -g
.PHONY : clean

all: 
	make $(files)
	for file in $(files); do \
		(echo $$file : && ./$$file && echo ); done
clean :
	rm -f $(files) $(files).o
	echo clean -> make complete

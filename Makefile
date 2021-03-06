main: main.o funcs.o decrypt.o caesar.o decode.o
	g++ -o main main.o funcs.o decrypt.o caesar.o decode.o

tests: tests.o caesar.o viginere.o decrypt.o decode.o
	g++ -o tests tests.o caesar.o viginere.o decrypt.o decode.o

funcs.o: funcs.cpp funcs.h

main.o: main.cpp funcs.h

tests.o: tests.cpp  doctest.h

caesar.o: caesar.cpp caesar.h

viginere.o: viginere.cpp viginere.h

decrypt.o: decrypt.cpp decrypt.h

decode.o: decode.cpp decode.h decrypt.h

clean:
	rm -f main tests main.o tests.o funcs.o caesar.o viginere.o decrypt.o decode.o

help:
	@echo  make main : make executable named main
	@echo make tests : make test suite named tests


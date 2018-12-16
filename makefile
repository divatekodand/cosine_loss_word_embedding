CC = gcc
#Using -Ofast instead of -O3 might result in faster code, but is supported only by newer GCC versions
CFLAGS = -lm -pthread -O3 -march=native -Wall -funroll-loops -Wno-unused-result -g

all: word2vec word2phrase distance word-analogy compute-accuracy bin2txt clwe

clwe : clwe.c
	$(CC) clwe.c -o clwe $(CFLAGS)
word2vec : word2vec.c
	$(CC) word2vec.c -o word2vec $(CFLAGS)
word2phrase : word2phrase.c
	$(CC) word2phrase.c -o word2phrase $(CFLAGS)
distance : distance.c
	$(CC) distance.c -o distance $(CFLAGS)
word-analogy : word-analogy.c
	$(CC) word-analogy.c -o word-analogy $(CFLAGS)
compute-accuracy : compute-accuracy.c
	$(CC) compute-accuracy.c -o compute-accuracy $(CFLAGS)	
bin2txt : bin2txt.c
	$(CC) bin2txt.c -lm -o bin2txt $(CFLAG)


clean:
	rm -rf word2vec word2phrase distance word-analogy compute-accuracy bin2txt clwe
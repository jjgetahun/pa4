all: indexer


indexer: indexer.c tokenizer.o
	gcc -g -o indexer indexer.c tokenizer.o

tokenizer.o: tokenizer.c tokenizer.h
	gcc -c tokenizer.c

cav:
	git add -A
	git commit -m "Added stuff. - JCav"
	git push

get:
	git add -A
	git commit -m "Added stuff. - JGet"
	git push

clean:
	rm -rf *.o indexer 

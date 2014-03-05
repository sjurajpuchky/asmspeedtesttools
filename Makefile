# Speed test of instructions Makefile
# @author Juraj Puchký - Devtech <sjurajpuchky@seznam.cz>


help:
	@echo "make clean,all,results"
clean:
	rm -f *.100k *.result *.avg *.ps *.jpg
all:
	chmod 755 *.sh
	chmod 755 ./graph
	./prepare-temps.sh
	./prepare-test.sh
	gcc -O4 -lrt -o speedtest speedtest.c
	./prepare-data.sh|tee results.txt

results:
	./graph results.ps
	convert -density 300x300 results.ps results.jpg


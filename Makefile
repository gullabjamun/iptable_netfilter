nfqnl_test: nfqnl_test.o
	gcc -o nfqnl_test nfqnl_test.o -lnetfilter_queue

nfqnl_test.o: nfqnl_test.c
	gcc -c -o nfqnl_test.o nfqnl_test.c -lnetfilter_queue

clean:
	rm *.o nfqnl_test

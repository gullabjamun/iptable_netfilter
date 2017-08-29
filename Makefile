nfqnl_test: nfqnl_test.o printfunc.o
	gcc -o nfqnl_test nfqnl_test.o printfunc.o -lnetfilter_queue

printfunc.o: printfunc.c
	gcc -c -o printfunc.o printfunc.c -lnetfilter_queue

nfqnl_test.o: nfqnl_test.c
	gcc -c -o nfqnl_test.o nfqnl_test.c -lnetfilter_queue

clean:
	rm *.o nfqnl_test

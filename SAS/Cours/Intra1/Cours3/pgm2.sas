dm log 'clear';
dm output 'clear';

libname biblio '.';

data biblio.poulet;
	infile datalines;
	input x 1-1 y $ 3-5;
	datalines;
1 2
3 4 5
6 .
7
9  9
;
run;

proc contents data = poulet;
run;

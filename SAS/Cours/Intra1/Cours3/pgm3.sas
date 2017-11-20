dm log 'clear';
dm output 'clear';


data jambon;
	infile datalines;
	input @1 x 1. @3 y 5.2; /*pour x: de 1 a 1 et pour y: de 3 a 5 avec 2 decimales*/
	datalines;
1   2
3 4157
6 .
7
9 100.5
;
run;

proc print data=jambon noobs;
	var x y;
run;

dm log 'clear';
dm output 'clear';

data poulet;
	infile datalines;
	informat x $11. y 1.;
	input x y;
	datalines;
AA66tt  2
BCGXXXRTTYY 3
run;

proc print data = poulet;
run;

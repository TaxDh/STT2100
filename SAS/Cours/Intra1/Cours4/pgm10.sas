dm log 'clear';
dm output 'clear';

data poulet;
	infile datalines;
	input x :$11. y; /*: jusqu'a  11. (11 caractere)*/
	datalines;
AA66tt  2
BCGXXXRTTYY 3
run;

proc print data = poulet;
run;

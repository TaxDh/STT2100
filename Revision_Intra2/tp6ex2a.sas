dm log 'clear';
dm output 'clear';

data tornade;
	infile 'tornades.txt';
	input state $16. cout dollar10.4;
	format cout dollar10.4;
run;

proc print data = tornade;
run;

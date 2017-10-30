dm log 'clear';
dm output 'clear';

data baby;
	infile 'babies.txt' firstobs=2;
	input bwt gestation parity age height weight smoke;
	
run;

proc print data=baby;
run;


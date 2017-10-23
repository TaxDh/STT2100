dm log 'clear';
dm output 'clear';

data center;
	infile 'callcenter.txt';
	input x;
	if x <= 500 then output; 
	label x='Duree de l''apel';
run;

proc univariate data=center;
	histogram x;
run;

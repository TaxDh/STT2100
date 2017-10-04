dm log 'clear';
dm output 'clear';

data poulet;
	infile datalines dlm=",";
	input sexe $ y z;
	datalines;
Homme Femme,1,2
F,4,5
;
run;

proc print data=poulet;
run;


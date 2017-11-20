data poulet;
	infile 'poulet.txt' dlm=",";
	input sexe $ y z;
	datalines;
run;

proc print data=poulet;
run;


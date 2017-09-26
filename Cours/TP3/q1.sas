dm log 'clear';
dm output 'clear';

data blood;
	infile 'Blood.txt';
	informat sexe $6. groupe $2. age $5.;
	input no sexe groupe age WBC RBC Chol;
run;

proc print data=blood;
run;

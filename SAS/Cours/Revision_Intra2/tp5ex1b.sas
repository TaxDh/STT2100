dm log 'clear';
dm output 'clear';

data blood;
	infile 'Blood.txt';
	input Sujet Sexe $ Groupe $ Age $ DGB DGR CHOL;

run;

proc sort data = blood;
	by Sexe;
run;

proc freq data = blood;
	tables Sexe*Groupe /chisq;
run;

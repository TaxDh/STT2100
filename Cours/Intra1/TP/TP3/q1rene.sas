dm log 'clear';
dm output 'clear';

data sang;
	infile 'Blood.txt';
	informat no 4.
			 sexe $ 6.
			 grSang $ 2.
			 grAge $ 5.
			 wbc 4.
			 rbc 3.2
			 chol 3.;
	input no sexe grSang grAge wbc rbc chol;
	label  no = 'numero'
		   grSang = 'groupe sanguin'
		   grAge = 'groupe d''age'
		   wbc = 'globules blancs'
		   rbc = 'globules rouges'
		   chol = 'cholesterol';
run;

proc print data = sang label noobs;
run;

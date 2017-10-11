dm log 'clear';
dm output 'clear';

data sang;
	infile 'Blood.txt';
	informat no 4.
			 sexe $ 6.
			 grSang $ 2.
			 grAge $ 5.;
	input no sexe grSang grAge wbc rbc chol;
	label  no = 'numero'
		   grSang = 'groupe sanguin'
		   grAge = 'groupe d''age'
		   wbc = 'globules blancs'
		   rbc = 'globules rouges'
		   chol = 'cholesterol';
run;

proc report data=sang nowd spacing = 10 headline headskip;
			column sexe grSang chol;
			define sexe / group;
			define grSang/ group 'groupe sanguind';
			define chol/mean format = 14.1;
			rbreak after/;
run;

proc report data = sang nowd spacing = 5 headline headskip;
			column sexe wbc rbc;
			define sexe/group;
			define wbc/mean 'WBC moyen' format = comma10.0;
			define rbc/mean 'RBC moyen' format = 4.2;
			rbreak after/ dol summarize;
run;

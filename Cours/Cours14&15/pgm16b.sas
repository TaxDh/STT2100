dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Bidon DateEnt Dep $ SalEnt Sal01 Exp Anc;
	if Bidon eq 1 then Sexe ='F';
	if Bidon eq 0 then Sexe= 'H';
	drop bidon;
	label Dep='Departement';
run;
/*2 variables qualitative*/
proc freq data=prof;
	tables Sexe*Dep/chisq;/*test statistique du tableau de contingence*/
run;


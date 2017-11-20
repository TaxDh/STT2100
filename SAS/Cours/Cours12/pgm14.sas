dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
run;

ods graphics on;

proc sgplot data=prof;
	hbar Dep /datalabel
				barwidth=0.5 /*largeur des barre?*/
				nooutline;

	xaxis label = 'Effectifs'
		grid /*quadriller ?*/
			values = (0 to 35 by 5);

	yaxis label = 'Departement';
run;

quit;
ods graphics off;

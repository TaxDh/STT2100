dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
run;

ods graphics on;

proc sgplot data=prof;
	dot Dep ; /*remplace le baton par une bille au max de la valeure || et on peut mettre datalabel comme pour hbar*/ 
	xaxis label = 'Effectifs'
		grid /*quadriller ?*/
			values = (0 to 35 by 5);

	yaxis label = 'Departement';
run;

quit;
ods graphics off;

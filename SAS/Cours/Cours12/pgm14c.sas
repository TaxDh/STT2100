dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
run;

ods graphics on;

proc sgplot data=prof;
	dot Dep/datalabel;
	xaxis label = 'Effectifs'
		grid /*quadriller ?*/
			values = (0 to 35 by 5);

	refline 25 /axis=x;/*ligne a 25 des axis*/
	label Dep = 'Departement';
run;

quit;
ods graphics off;

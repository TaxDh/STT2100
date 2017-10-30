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

proc tabulate data=prof 
				out=sal01prof (keep=Dep Sal01_Mean);
	class Dep;
	var Sal01;
	table Dep, Sal01*mean;
run;

proc print data=sal01prof;
run;

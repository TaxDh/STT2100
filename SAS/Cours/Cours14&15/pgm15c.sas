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

proc sort data=prof;
	by Dep;
run;

proc sort data=sal01prof;
	by Dep;
run;

data newprof;
	merge prof sal01prof;
	by Dep;
run;

proc sort data=newprof;
	by Sal01_mean;
run;

ods graphics on;
proc sgplot data=newprof;
	hbox Sal01 / category=Dep; /*un moustache par departement*/
	xaxis label = 'Salaire en 2011' grid
		  values=(25000 to 70000 by 5000);
	yaxis discreteorder=data; /*dans quel ordre on veut le faire*/
run;
quit;
ods graphics off;

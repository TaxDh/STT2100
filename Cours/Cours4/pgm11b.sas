dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
	label DatEnt = "Date d'entree"
		  Dep = "Departement"
		  SalEnt = "salaire de l'embauche"
		  Exp = "experience anterieur (en mois)"
		  Anc = "anciennete (en annees)";
run;

proc print data = prof label;
run;

proc freq data=prof;
	tables Dep; /*tables de frequences*/
run;

proc univariate data = prof;
	var Sal01;
run;

dm log 'clear';
dm output 'clear';

proc format;/*pour definir un format*/
	value SexeFmt 0=Femme
		          1=Homme;
	value $Depfmt 'CB' = chimie;
run;

data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
	label DatEnt = "Date d'entree"
		  Dep = "Departement"
		  SalEnt = "salaire de l'embauche"
		  Exp = "experience anterieur (en mois)"
		  Anc = "anciennete (en annees)";
	format Sexe Sexefmt.
		   Dep Depfmt.
		   SalEnt 10.2;
run;

proc print data = prof label;
	var Sexe Dep SalEnt;
run;

proc contents data = prof;
run;

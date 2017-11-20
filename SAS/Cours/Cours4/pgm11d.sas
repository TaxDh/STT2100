dm log 'clear';
dm output 'clear';
/*conserver table prof et le format*/

libname cours4 '.';
options fmtsearch = (cours4);/*il met stt2100 au lieu de cours4*/


proc format library=cours4;
	value SexeFmt 0=Femme
		          1=Homme;
	value $Depfmt 'CB' = chimie;
run;

data cours4.prof;
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

proc print data = cours4.prof label;
	var Sexe Dep SalEnt;
run;

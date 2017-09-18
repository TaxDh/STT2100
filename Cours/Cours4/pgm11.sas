dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
	/*label Dep = "Departement";*/ /*--- etiquette, seulement en haut du */
run;

proc print data = prof label;
run;

proc freq data=prof;
	tables Dep; /*tables de frequences*/

run;

dm log 'clear';
dm output 'clear';

/*Vous voulez combiner les deux tables Demographic et Survey1 sur une variable servant
à l’identification. Elle est appelée id dans la table Demographic et Subject dans
la table Survey1. Comment procéderiez-vous ?*/

libname lib '.';

/*jveux imprimer juste pour voir de quoi on l'air les tables*/

proc print data = lib.Demographic;
run;

proc print data = lib.Survey1;
run;

data lib.Survey1_ID; /*survey avec modification de variable*/
	set lib.Survey1;
	rename Subj = ID;
run;

proc print data = lib.Survey1_ID;
run;

proc sort data = lib.Survey1_ID;
	by ID;
run;

proc sort data = lib.Demographic;
	by ID;
run;

data combine;
	merge lib.Survey1_ID lib.Demographic;
run;

proc print data = combine;
run;

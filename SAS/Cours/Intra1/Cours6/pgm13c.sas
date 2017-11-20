dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Bidon DateEnt Dep $ SalEnt Sal01 Exp Anc;
run;

proc print data = prof;
run;

data prof_homme prof_femme;
	set prof (keep = Bidon Sal01 Anc);/*on garde que ces 3 variables et apres on enleve bidon*/
	if Bidon = 0 then do;
		Sexe = 'Femme';
		output prof_femme;
	end;
	if Bidon = 1 then do;
		Sexe = 'Homme';
		output prof_homme;
	end;

	drop Bidon; /*pour l'enlever globalement*/
run;

proc print data = prof_homme;
run;

proc print data = prof_femme;
run;
		

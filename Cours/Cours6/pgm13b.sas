dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Bidon DateEnt Dep $ SalEnt Sal01 Exp Anc;
run;

proc print data = prof;
run;

data prof_homme (drop = Bidon) prof_femme;/*pour enlever bidon dans la table prof_homme*/
	set prof;
	if Bidon = 0 then do;
		Sexe = 'Femme';
		output prof_femme;
	end;
	if Bidon = 1 then do;
		Sexe = 'Homme';
		output prof_homme;
	end;
run;

proc print data = prof_homme;
run;
		

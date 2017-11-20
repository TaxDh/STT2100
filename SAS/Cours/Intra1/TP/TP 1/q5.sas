dm log 'clear';
dm output 'clear';

data donnees;
	infile 'banque.txt';
	input nom $ 1-9 compte $ 13-20 solde 25-30 taux 33-37;
	annuel = taux*solde/12;
run;

proc print data = donnees noobs;
run;

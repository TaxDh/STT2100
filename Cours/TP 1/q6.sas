dm log 'clear';
dm output 'clear';

data tableau;
	/*infile datalines;*/
	input taille poids pres_systo pres_diato;
	press_moyenne += + abs(pres_systo - pres_diato)/3;
	datalines;
001 68 150 110 70
002 73 240 150 90
003 62 101 120 80
;
run;

proc print data=tableau;
run;

dm log 'clear';
dm output 'clear';

data poulet;
	infile datalines /*FIRSTOBS=4*/; /*FIRSTOBS ca indique la premier obs par la ligne #n, OBS est pour la derniere ligne*/
	input  x 1-1 y $ 3-5;/*colonne 1 a 1 et colonne 3 a 5 juste les colonnes*/
	datalines;
1 2
3 4 5
6 .
7
9  9
;
run;

proc print data = poulet;
run;

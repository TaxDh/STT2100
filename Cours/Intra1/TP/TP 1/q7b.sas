dm log 'clear';
dm output 'clear';

data homme;
	infile 'mens.txt';
	input prenom 1-13 $ sexe 16-16 $ age 20-21 taille 25-27 poids 31-34;
run;

proc print data=homme;
run;

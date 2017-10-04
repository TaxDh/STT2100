dm log 'clear';
dm output 'clear';

data homme;
	infile 'mens.txt';
	input prenom $ sexe $ age taille poids;
run;

proc print data=homme;
run;

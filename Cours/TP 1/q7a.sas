dm log 'clear';
dm output 'clear';

data homme;
	infile 'mens.txt';
	input prenom $ sexe $ age taille poids;
run;

proc print data=homme;
run;
/*Le fichier mens.txt contient des donn�es concernant un groupe d�adolescents : pr�-
nom, sexe, age, taille et poids (je vous laisse deviner quelles sont les unit�s).*/

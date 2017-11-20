dm log 'clear';
dm output 'clear';

/*Considérons les données du fichier Blood.txt.
a) À partir de ces données, créer deux tables, une pour les femmes et une pour les
hommes.
b) Combiner les deux tables précédentes pour obtenir une table ne contenant que
les patients appartenant à la catégorie d’âge Old et ayant un cholestérol supérieur
à 165, et que les variables donnant le groupe sanguin et les niveaux WBC
et RBC. Explorer différentes façons de réaliser cette tâche.?*/

libname lib '.';

data blood;
	infile 'Blood.txt';
	input num sexe $ sang $ age $ wbc rbc chol;
		label num = 'No'
			  sang = 'Groupe sanguin'
			  age = ' Groupe d''age'
			  wbc = 'Niveau de globules blancs'
			  rbc = 'Niveau de globules rouges'
			  chol = 'Niveau de cholesterol';
	run;

proc print data = blood label;
run;

data tableFemme tableHomme;
	set blood;
	if sexe = 'Female' then output tableFemme;
	if sexe = 'male' then output tableHomme;
run;

data old_165;
	set tableFemme tableHomme;
	if (age = 'Old' and chol > 165 then output;
	keep sang wbc rbc;
run;

proc print data = old_165;
run;
	
	


/*data blood;
  infile 'Blood.txt';
  input No Sexe $ G_sanguin $ G_age $ WBC RBC Chol;
  label G_sanguin='Groupe sanguin'
        G_age='Groupe d''age'
		WBC='Niveau des globules blancs'
		RBC='Niveau des globules rouges'
		Chol='Cholesterol'
		;
run;

proc print data=blood noobs label;
run;

data blood_femmes blood_hommes;
  set blood;
  if Sexe='Female' then output blood_femmes;
  if Sexe='Male' then output blood_hommes;
run;

data blood_old_165;
  set blood_femmes blood_hommes;
  keep G_sanguin WBC RBC;
  if G_age='Old' and Chol > 165 then output;
run;

proc print data=blood_old_165;
run;
*/

dm log 'clear';
dm output 'clear';

data blood;
	infile 'Blood.txt';
	informat Sexe $6.
	Groupe $2.
	Age $5.;
	input Sujet Sexe Groupe Age DGB DGR CHOL;
	label DGB = 'Globules blancs'
	DGR = 'Globules rouges'
	CHOL = 'Cholesterol';
run;

proc print data=blood noobs label;
	var Sujet Sexe Groupe Age DGB DGR CHOL;
run;


proc tabulate data=blood;
	var DGB DGR CHOL;
	class Sexe Groupe Age;
	table ((Groupe=' ' ALL)*(Sexe=' ' ALL)),
			(Age='Age (Frequence)'*pctn=' '*f=8.1
			Age='DGB Moyen'*DGB=' '*mean=' '*f=10.);
	keylabel n='Effectif'
	pctn='Frequence';
run;

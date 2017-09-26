dm log 'clear';
dm output 'clear';



data prof;
	infile 'prof.txt';
	input Sexe DatEnt Dep $ SalEnt Sal01 Exp Anc;
		Effectif = 1;
	label Dep='Departement'
		  Anc='Anciennete';
run;

proc report data=prof nowd headline;
	column Dep Sexe, (Effectif Anc);
	/*on definie chaque variable, pcq on veut pas faire une moy des departements, ce qui ne marcherait pas aniway*/
	define Dep / group width = 25 format=$depfmt.;
	define Sexe/ across '-Sexe du prof -' format = sexefmt.;
	define Effectif / sum;
	define Anc / mean format = 11.1;
	rbreak after / dol summarize;
	/*break after Sexe / ol summarize skip;/*ou before ----- le skip fait une sorte de retour de ligne*/
run;

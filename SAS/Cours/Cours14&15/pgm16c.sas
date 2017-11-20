dm log 'clear';
dm output 'clear';

data prof;
	infile 'prof.txt';
	input Bidon DateEnt Dep $ SalEnt Sal01 Exp Anc;
	if Bidon eq 1 then Sexe ='F';
	if Bidon eq 0 then Sexe= 'H';
	drop bidon;
	label Dep='Departement';
run;
/*2 variables quantitatives*/
/*il y a dependance entre ses 2 variables, voir les tableaux*/

proc corr data=prof pearson spearman kendall;/*pearson spearman & kendall sont des analyse de correlation*/
	var Sal01;
	with Anc;
run;

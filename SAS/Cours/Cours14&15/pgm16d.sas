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
/*il y a independance entre ses 2 variables, voir les tableaux*/

proc corr data=prof pearson spearman kendall;/*pearson spearman & kendall sont des analyse de correlation*/
	var Sal01;
	with Exp;
run;

/*notes, la prob critique est en bas, la valeur du coeff en haut et si la prob critique est plus grande que 0.05, on ne rejette pas H0
ici H0 les 2 variables sont independantes*/

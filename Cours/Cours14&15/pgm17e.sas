dm log 'clear';
dm output 'clear';

data baby;
	infile 'babies.txt' firstobs=2;
	input bwt gestation parity age height weight smoke;
	/*modification du fichier, remplacement des valeures manquantes*/
	if gestation eq 999 then gestation =.;
	if parity eq 9 then parity =.;
	if age eq 99 then age =.;
	if height eq 99 then height =.;
	if weight eq 999 then weight =.;
	if smoke eq 9 then smoke =.;
	
run;

proc format;
	value smokefmt 0='Non fumeuse'
				   1='Fumeuse';
run;

ods graphics on;
proc sgplot data=baby;
	hbox bwt /category = smoke;
	xaxis label = 'Poids du bebe a la naissance (en onces)';
	yaxis label = 'Tabagisme de la mere';
	format smoke smokefmt.;
run;
quit;
ods graphics off;

ods graphics on;
proc ttest data = baby;
	class smoke;
	var bwt;
	label bwt = 'Poids du bebe a la naissance (en onces)';
	label smoke = 'Tabagisme de la mere';
	format smoke smokefmt.;
run;
quit;
ods graphics off;

proc npar1way data=baby wilcoxon median;/*npar1(un)way*/
	class smoke;
	var bwt;
	label bwt = 'Poids du bebe a la naissance (en onces)';
	label smoke = 'Tabagisme de la mere';
	format smoke smokefmt.;
run;

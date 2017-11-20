dm log 'clear';
dm output 'clear';

data blood;
	infile 'prof.txt' firstobs=2;
	input Sexe DatEnt Dep $ SalEnt Sal01 Exp Anc;
run;

proc sort data = blood;
	by Sexe;
run;

proc univariate data = blood;
	by Sexe;
	var Sexe DatEnt SalEnt Sal01 Exp Anc;
run;

proc sort data = blood;
	by Dep;
run;

proc univariate data = blood;
	by Dep;
	var Sexe DatEnt SalEnt Sal01 Exp Anc;
run;

dm log 'clear';
dm output 'clear';

data blood;
	infile 'prof.txt' firstobs=2;
	input Sexe DatEnt Dep $ SalEnt Sal01 Exp Anc;
run;

proc sort data = blood;
	by Sexe;
run;

proc sort data = blood;
	by Sexe;
run;

proc freq data = blood;
	tables Sexe*Dep / chisq;
run;

proc freq data = blood;
	tables Sexe Dep;
run;

dm log 'clear';
dm output 'clear';

data un;
	input matricule $ p1;
	datalines;
CL 89
ET 44
JSC 78
AB 78
;
run;

data deux;
	input matricule $ p2 f;
	datalines;
PDD 54 .
AB 56 98
CL 85 92
JSC 82 64
;
run;

proc sort data = un;
	by matricule;
run;

proc sort data = deux;
	by matricule;
run;


data trois;
	set un deux;
	by matricule;
run;

proc print data = trois;
run;

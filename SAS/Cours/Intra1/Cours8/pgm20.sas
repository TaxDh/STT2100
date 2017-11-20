dm log 'clear';
dm output 'clear';

data un;
	input x y z;
	datalines;
34 34 57 69
39 -12 11 10
4 5 6
;
run;

data deux;
	input x y z;
	datalines;
1 2 3
2 3 4
4 5 6
;
run;

data trois;
	set un (in=tab1) deux (in=tab2);
	file print;
	if tab1 then put _n_ 'On est dans la table un';
	if tab2 then put _n_ 'On est dans la table deux';
run;

proc print data=trois;
run;

dm log 'clear';
dm output 'clear';

/*combinaison de plusieurs tables*/

data un;
	input x y z;
	datalines;
34 34 57 89
39 -12 -11 10
4 5 6
run;

data trois;
	input x y z t;
	datalines;
1 2 3 4
2 3 4 5
run;

data nouvelle;
	set un (in=tab1) trois (drop=t in=tab3);
	if tab1 then groupe = 1;
	if tab3 then groupe = 3;
run;

proc print data = nouvelle;
run;

dm log 'clear';
dm output 'clear';

/*on veut fair une mise à jour de inventory*/
/*on a 2 modele, M567 qui est 25.95 now et X999 = 35.99*/

libname tp4 '.'; /*nom du repertoire si je puis dire*/

proc print data=tp4.Inventory noobs;
run;

data uptdate;
	infile datalines;
	input Model $ price comma6.2;
	format price dollar6.2;
	datalines;
M567 25.95
X999 35.99
;
run;

proc sort tp4.Inventory;
	by model;
run;

proc sort data = uptdate;
run;

data mise_a_jour;
	update tp4.Inventory uptdate;
	 by model;
run;

proc print data = mise_a_jour;
run;

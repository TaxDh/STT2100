dm log 'clear';
dm output 'clear';

libname TP4 '.';

proc print data=TP4.Inventory noobs;
run;



data changement_prix;
	input Model $ Price comma6.2;
	format Price dollart6.2;
	datalines;
M567 25.95
X999 35.99
;
run;


proc sort data=TP4.Inventory;
	by Model;
run;

proc sort data=changement_prix;
	by Model;
run;

data miseAjour;
	merge  TP4.Inventory changement_prix;
	by Model;
run;


proc print data=miseAjour noobs;
run;

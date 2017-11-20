dm log 'clear';
dm output 'clear';

proc import datafile="Classeur1.xlsx"
		out = table_sas
		dbms=xlsx
		replace;
	range"Feuil1$b1:d4";
	getnames = yes;
run;

proc print data = table_sas;
run;

proc contents data = table_sas;
run;

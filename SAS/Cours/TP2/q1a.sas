dm log 'clear';
dm output 'clear';

proc import datafile = "A03.xlsx"
			out=table_sas
			dbms=xlsx
			replace;
		range = "Feuil1$a1:j211";
		getnames=yes;
run;

proc print data = table_sas;

run;

proc import datafile="A06.xlsx"
			out = table_sasA06
			dbms = xlsx
			replace;
		range= "Feuil1$a1:m58";
		getnames = yes;
run;

proc print data = table_sasA06;
run;

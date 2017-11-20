dm log 'clear';
dm output 'clear';

proc import datafile="A03.xlsx"
			out=A03
			dbms=xlsx
			replace;
		range="Feuil1$a1:j211";
		getnames=yes;
run;

proc import datafile="A06.xlsx"
			out=A06
			dbms=xlsx
			replace;
		range="Feuil1$a1:m58";
		getnames=yes;
run;

proc export data = A03
		outfile="A03.csv"
		dbms = csv
		replace;
run;

proc export data = A06
		outfile="A06.csv"
		dbms=csv
		replace;
run;
		/*proc export data=sashelp.class (where=(sex='F'))
     outfile="c:\myfiles\Femalelist.csv"
     dbms=csv 
     replace;
run;*/

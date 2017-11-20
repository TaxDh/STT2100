dm log 'clear';
dm output 'clear';

proc import datafile="A03.xlsx"
            out=A03
			dbms=xlsx
			replace;
	range="Feuil1$a1:j211";
	getnames=yes;

run;

proc print data=A03;
run;

 proc import datafile="A06.xlsx"
            out=A06
			dbms=xlsx
			replace;
	range="Feuil1$a1:m58";
	getnames=yes;

run;

proc print data=A06;
run;


proc export data=A03
     outfile="A03.txt"
	 dbms=TXT
	 replace label;
	 run;
proc print data=A03;
run;

proc export data=A06
     outfile="A06.txt"
	 dbms=TXT
	 replace label;
	 run;
proc print data=A06;
run;

 proc import datafile="A03.xlsx"
            out=A03
			dbms=xlsx
			replace;
	range="Feuil1$a1:j211";
	getnames=yes;

run;

proc print data=A03;
run;

 proc import datafile="A06.xlsx"
            out=A06
			dbms=xlsx
			replace;
	range="Feuil1$a1:m58";
	getnames=yes;

run;

proc print data=A06;
run;


proc export data=A03
     outfile="A03.txt"
	 dbms=dlm
	 replace;
	 run;
proc print data=A03;
run;

proc export data=A06
     outfile="A06.txt"
	 dbms=dlm
	 replace;
	 delimiter= ';';
	 run;
proc print data=A06;
run;

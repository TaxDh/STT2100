dm log 'clear';
dm output 'clear';

proc import datafile = "employee.csv"
			out=employee
			dbms=csv
			replace;
		delimiter = ";";
		getnames=yes;
run;

proc print data = employee;
run;

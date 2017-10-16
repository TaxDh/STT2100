dm log 'clear';
dm output 'clear';

data q3;
	infile 'employee.csv' delimiter = ';';
	informat matricule 3.
			 nom $ 15.
			 departement $ 10.
			 dateDEmb anydtdte10.
			 salaire comma6.;
	format dateDEmb mmddyy10.
			salaire dollar7.;
	input matricule nom departement dateDEmb salaire;
	label dateDEmb = 'Date d''embauche';
run;

proc print data = q3 label;
run;
	

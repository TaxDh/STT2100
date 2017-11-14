dm log 'clear';
dm output 'clear';

data tornades;
	infile 'tornades.txt';
	input etat $16. moyenne dollar10.4;
	format moyenne dollar10.4;
run;

/*
proc sort data = tornades;
	by etat;
run;
*/

ods graphics on / height=11in width=8.5in; ;
proc sgplot data=tornades;
 hbar etat /datalabel
          response=moyenne;
 xaxis label='moyenne des dommages '
       grid;
 yaxis label='etat'
       ;
run;
quit;
ods graphics off;


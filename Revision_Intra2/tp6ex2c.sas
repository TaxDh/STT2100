dm log 'clear';
dm output 'clear';

data tornades;
	infile 'tornades.txt';
	input etat $16. moyenne dollar10.4;
	format moyenne dollar10.4;
run;


proc sort data = tornades;
	by descending moyenne;
run;



ods graphics on / height=11in width=8.5in;
proc sgplot data=tornades;
 dot etat /datalabel
          response=moyenne;
 xaxis label='moyenne des dommages '
       grid
	   values=(0 to 90 by 10);
 yaxis label='etat'
        discreteorder=data;
   
run;
quit;
ods graphics off;


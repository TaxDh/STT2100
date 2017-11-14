dm log 'clear';
dm output 'clear';

/*Faites l’histogramme des dommages moyens*/

data tornades;
	infile 'tornades.txt';
	input etat $16. moyenne dollar10.4;
	format moyenne dollar10.4;
run;




ods graphics off;
proc univariate data = tornades;
	histogram moyenne / endpoints = 10 to 90 by 5
								normal(mu=est sigma=est)
                     kernel (color=red);
;
run;

dm log 'clear';
dm output 'clear';


data exo8;
	infile 'stockprices.txt';
	input titre $ 1-4 dateA ddmmyy10. 5-14 prixA $ 15-20 quantite 21-24 dateV ddmmyy10. prixV $ ;
run;
proc print data=exo8;
	format dateA ddmmyy10.; 
	format dateV ddmmyy10.;
run;

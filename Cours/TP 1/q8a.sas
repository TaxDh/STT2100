dm log 'clear';
dm output 'clear';

data q8;
	infile 'stockprices.txt';
	input titre $ date_achat DDMMYY10. prix_achat dollar4.2 date_vente DDMMYY10. prix_vente dollar4.2;
run;

proc print data=q8 noobs;
run;

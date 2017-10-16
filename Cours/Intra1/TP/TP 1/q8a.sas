dm log 'clear';
dm output 'clear';
/*lecture facile*/
data q8;
	infile 'stockprices.txt';
	input titre $ 1-4 date_achat $ 5-14 prix_achat $ 16-20 quantite 22-24 date_vente $ 25-34prix_vente $36-40;
run;

proc print data=q8 noobs;
run;



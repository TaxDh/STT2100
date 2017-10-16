dm log 'clear';
dm output 'clear';

data exo8;
infile 'stockprices.txt';
input titre $ 1-4 dateA ddmmyy10. prixA $ 15-20 quantite 21-24 dateV ddmmyy10. prixV $ ;
run;
proc print data=exo8 label noobs;
format dateA ddmmyy10.; 
format dateV ddmmyy10.;
label titre = 'Titre'
      dateA = 'Date achat'
	  prixA = 'prix achat'
	  quantite = 'Quantite achete'
	  dateV= 'date de vente'
	  prixV = 'prix de vente';
run;

dm log 'clear';
dm output 'clear';

data blood;
	 infile 'blood.txt';
	 input No Sexe $ GS $ GA $ WBC RBC Chol;
	 label	 GS = 'groupe sanguin' 
			 GA = 'groupe d’âge'
			 WBC = 'niveau des globules blancs'
			 Chol = 'Cholesterol'
			 RBC='niveau des globules rouges';
	 format Sexe sexefmt. No nofmt.;
run;

data Blood_A Blood_B;
 	set blood;
 	Combin = 0.001*WBC+RBC;
	if Sexe='Female' and GS='AB' then output Blood_A; 
 	if  Sexe='Male' and GS='A' and Combin>10 then output Blood_B;
run;



proc print data=Blood_A label noobs;
run;

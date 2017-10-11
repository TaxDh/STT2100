dm log 'clear';
dm output 'clear';

data blood;
	 infile 'blood.txt';
	 input No Sexe $ GS $ GA $ WBC RBC Chol;
	 label GS = 'groupe sanguin' 
		 GA = 'groupe d’âge'
		 WBC = 'niveau des globules blancs'
		 Chol = 'Cholesterol'
		 RBC='niveau des globules rouges'
		 format Sexe sexefmt. No nofmt.;
run;

proc report data=blood nowd spacing=5 headline headskip;
            column Sexe WBC RBC;
			define sexe / group;
            define WBC / Mean 'WBC moyen' format=comma10.0;
			define RBC / Mean 'RBC moyen' format=14.2;         
            rbreak after / dol summarize;
run;


proc report data=blood nowd
            spacing=10 headline headskip;
            column Sexe GS Chol;
			define Sexe / group;
            define GS / group 'groupe sanguin';
			define Chol / analyse mean  format=14.1;         
            rbreak after/;
run;


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


proc print data=blood label noobs;
run;

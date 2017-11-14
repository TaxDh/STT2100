dm log 'clear';
dm output 'clear';

data revenu;
 input nombre pourcentage groupe$;
 datalines;
 1 57 faible
 2 20 faible
 3 12 faible
 4 5 faible
 5 3 faible
 6 2 faible
 7 1 faible
 1 7 Haut
 2 32 Haut
 3 20 Haut
 4 24 Haut
 5 10 Haut
 6 5 Haut
 7 2 Haut
 ;
 run;
 proc print data=revenu;
 run;

 ods graphics on;
 proc sgpanel data=revenu;
  panelby groupe/novarname;
  hbar nombre/ response=pourcentage;
 run;
 quit;
 ods graphics off;


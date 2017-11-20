libname stt '.';

proc format lib=stt;
  value Sexefmt 0='Femme'
                1='Homme';
  value Fumfmt 0='Non fumeur'
               1='Fumeur';
  value Cote 1='Accord total'
             2='Plutot en accord'
             3='Plutot en desaccord'
             4='Desaccord total'
             5='Refus de repondre';
  value Deux 1-2='Favorable'
             3-4='Defavorable'
             5='Refus de repondre'; 
run;

dm log 'clear';
dm output 'clear';

libname stt2100 '.';

data stt2100.LMX;
  infile 'leader.txt';
  input ID $ 1-4 
        @6 (pers frnd fun wrk oth mist sjd swg hrd impr rsp adm
                 busy alne dftt smbc hnde decs nac emp top tell
                 ablt poli pay advp judg meth wcon cowr prai facc
                 lemp yps gend)(1.)
        ;
  run;


proc format library=stt2100;
  value At 1='Fortement en désaccord'
           2='En désaccord'
           3='Plutôt en désaccord'
           4='Indifférent'
           5='Plutôt en accord'
           6='En accord'
           7='Fortement en accord'
		   ;
  value Bt 1='Très insatisfait'
           2='Insatisfait'
           3='Indifférent'
           4='Satisfait'
           5='Très satisfait'
		   ;
  value Ct 1= '0-5 ans'
           2= '6-10 ans'
           3= '11-15 ans'
           4= '16-20 ans'
           5= '21-25 ans'
           6= 'Plus de 25 ans'
		   ;
  value Dt 1= 'Femme'
           2= 'Homme'
		   ;
run;

proc print data=stt2100.lmx;
  format pers frnd fun wrk oth mist sjd swg hrd impr rsp adm At.
         busy alne dftt smbc hnde decs nac emp top tell
         ablt poli pay advp judg meth wcon cowr prai facc Bt.
         lemp yps Ct.
         gend Dt.;
run;

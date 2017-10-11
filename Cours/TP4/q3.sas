dm log 'clear';
dm output 'clear';

libname TP4 '.';

proc print data= TP4.Survey1;
run;

proc print data=TP4.Demographic;
run;

data TP4.Survey1_ID;
  set TP4.Survey1;
  rename Subj=ID;
run;

proc sort data=TP4.Demographic;
  by ID;
run;

proc sort data=TP4.Survey1_ID;
  by ID;
run;

data table_D_S;
  merge TP4.demographic TP4.survey1_ID;
run;

proc print data=table_D_S;
run;

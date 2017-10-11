dm log 'clear';
dm output 'clear';

libname TP4 '.';

data TP4.table_concatenation;
  set TP4.Inventory TP4.Newproducts;
run;

proc sort data=TP4.table_concatenation;
	by model;
run;
proc print data=TP4.table_concatenation;
run;

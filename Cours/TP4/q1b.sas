dm log 'clear';
dm output 'clear';

libname TP4 '.';


proc sort data= TP4.Inventory;
	by Model;
run;

proc sort data= TP4.Newproducts;
	by Model;
run;

data TP4.table_concatenation1;
	set TP4.Newproducts TP4.Inventory ;
	by Model;
run;
proc print data=TP4.table_concatenation1;
run;

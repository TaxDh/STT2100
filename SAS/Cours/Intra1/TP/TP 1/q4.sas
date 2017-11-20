data libre;
infile datalines; input x 
y;/*Cela semble fonctionner dans les 2 cas*/
datalines;
1 2
4 5
6 7
run;
proc print data=libre;
run;

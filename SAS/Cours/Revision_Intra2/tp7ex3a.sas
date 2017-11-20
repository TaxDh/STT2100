dm log 'clear';
dm output 'clear';

data voitures;
 input CO @@;
 datalines;
5.01 11.53 4.12 4.74 6.78 7.24 14.97 22.92 4.29 12.10
8.60 5.21 19.00 5.36 6.02 12.30 5.04 3.81 14.83 8.43
4.95 9.62 11.20 15.13 5.22 7.98 3.38 1.85 6.35 3.99
7.51 5.69 3.45 6.02 14.67 4.10 23.53 2.26 5.79 7.47
14.59 3.95 4.10 2.03 4.42 4.62

run;
proc print data=voitures;
run;

proc univariate data=voitures;
 var CO;
 qqplot CO/ normal(mu=est sigma=est);
run;

data log ; 
 set voitures ;
  logy = log10(CO);   /* The log to base 10  */
run;

proc print data=log;
run;

proc univariate data=log;
 var logy;
 qqplot logy / normal(mu=est sigma=est);
run;

dm log 'clear';
dm output 'clear';

data un;
	input iden $ x y z; /*4 variables, une caractere, 3 numeriques*/
	datalines;
AB45 10 20 25
FF37 12 24 23
BG34 15 24 23
LL98 15 24 20
GF10 10 22 20
;
run;

data deux;
	input iden $ x y z; /*meme variables que dans data = un*/
	datalines;
DF45 10 20 21
PP29 13 20 22
LR21 14 24 23
HF77 15 24 20
RB13 11 24 22
;
run;


/*on veut un croisement par rapport a l'identifier iden, alors on les tri par iden*/

proc sort data = un;
	by iden;
run;

proc sort data = deux;
	by iden;
run;

data trois;
	set un deux; /*on croise avec set, on prend un et deux*/
	by iden; /*avec la variable iden*/
run;

proc print data = trois;
run;	

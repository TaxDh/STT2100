dm log 'clear';
dm output 'clear';

data center;
	infile 'callcenter.txt';
	input x;
	if x <= 500 then output; 
	label x='Duree de l''apel';
run;

proc univariate data=center;
	histogram x /endpoints = 0 to 520 by 20
				barlabel = percent
				grid
				vminor=4
				waxis = 1;/*semble agrandir le graphique, en tk pour le prof...*/
run;

ods graphics on;
proc sgplot data=center;
	hbox x;/*diagramme boite moustache*/
run;
quit;
ods graphics off;

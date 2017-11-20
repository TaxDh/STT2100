dm log 'clear';
dm output 'clear';

/*Q1 tp7*/

data nord;
	input diametre @@;/*pour eviter les enter... pas besoin de les mettre sur une ligne ou meme col je crois? ou a cause moins de ligne que d'observation*/
	datalines;
27.8 14.5 39.1 3.2 58.8 55.5 25.0 5.4 19.0 30.6
15.1 3.6 28.4 15.0 2.2 14.2 44.2 25.7 11.2 46.8
36.9 54.1 10.2 2.5 13.8 43.5 13.8 39.7 6.4 4.8
;
run;


data sud;
	input diametre @@;/*pour eviter les enter... pas besoin de les mettre sur une ligne ou meme col je crois?*/
	datalines;
44.2 26.1 50.4 23.3 39.5 51.0 48.1 47.2 40.3 37.4
36.8 21.7 35.7 32.0 40.4 12.8 5.6 44.3 52.9 38.0
2.6 44.6 45.5 29.1 18.7 7.0 43.8 28.3 36.9 51.6
;
run;

/*on veut combiner diametre et region, pour pouvoir faire des ttest*/

data arbres;
	set nord (in=table1) sud (in=table2);
	if table1 then Region = 'Nord';
	if table2 then Region = 'Sud';
run;

proc print data = arbres;
run;

/*table arbres marche, je me suis arreter la*/

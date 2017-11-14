dm log 'clear';
dm output 'clear';

proc format;
	value Sexefrmt 0='Femme'
				  1='Homme';
run;


data prof;
	infile 'prof.txt';
	input Sexe DateEnt Dep $ SalEnt Sal01 Exp Anc;
	label Dep='Departement d''appartenance';/*label au dessus de la table du departement*/
run;

proc freq data= prof;/*pour avoir les frequences*/
	tables Sexe Dep;/*pour avoir 2 tables uniquement de sexe et une de dep*/
	format Sexe Sexefrmt.;
run;

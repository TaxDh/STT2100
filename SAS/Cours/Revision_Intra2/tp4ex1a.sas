dm log 'clear';
dm output 'clear';

/*on telecharge les deux tables inventory et newproducts*/
/*on fait la concatenation des tables et le tri de la table*/

libname table '.';

data table.tableconcatenation;
	set table.Inventory table.Newproducts;
run;

proc sort data = table.tableconcatenation;
	by model;

dm log 'clear';
dm output 'clear';

libname lib '.';

proc import datafile = "college.xls"
						out = lib.tableCollege
						dbms =xls
						replace;
						range = "college$a1:f101";
						getnames = yes;
	label StudentID='Identificateur de l''etudiant'
      Gender='Sexe'
	   SchoolSize='Taille du college'
	   Scholarship='Bourse d''etudes'
	   GPA='GPA'
	   ClassRank='Rang';
run;

proc format;
	value $Genderfmt 'M' = 'Homme'
					'F' = 'Femme';
	value $SchoolSizefmt 'M' = 'Moyenne'
					  'S' = 'Petite'
					  'L' = 'Grande';
	value $Scholarshipfmt 'Y'='Oui'
                           'N'='Non';
run;


proc tabulate data = lib.tableCollege;
	class SchoolSize Gender Scholarship;
	table Gender (Scholarship all = "tous"), SchoolSize;
	keylabel N = ' ';
	format Gender $Genderfmt.
		   SchoolSize $SchoolSizefmt.
		   Scholarship $Scholarshipfmt.;
run;

proc tabulate data = lib.tableCollege;
	class Gender;
	var GPA;
	table (GPA)*(sum mean max min) , (Gender="Sexe" all = "Tous");
	keylabel N = ' ' sum="Effectif" mean = "Moyenne" max= "Maximum" min = "Minimum";
	format Gender $Genderfmt.;
run;

proc tabulate data = lib.tableCollege;
	class Gender SchoolSize Scholarship;
	table (Gender all = "Total")* (Scholarship all = "Total"),
			(SchoolSize all = "Total");
	keylabel N = ' ';
	format Gender $Genderfmt.
		   ScoolSize $SchoolSizefmt.
		   Scholarship $Scholarshipfmt.;
run;

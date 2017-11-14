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

proc print data = lib.tableCollege noobs label;
	format Gender $Genderfmt.
		   SchoolSize $SchoolSizefmt.
		   Scholarship $Scholarshipfmt.;
run;

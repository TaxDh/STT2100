dm log 'clear';
dm output 'clear';



data maitre;
  input matricule $ p1 p2 f;
  datalines;

ET 44 . .
PDD . 54 .
AB 78 56 98
CL 89 85 92
JSC 78 82 64
;
run;

proc sort data=maitre;
	by matricule;
run;

data trans;
	input matricule $ p1 p2 f;
	datalines;
PDD . . 67
AB . 61 .
CJDV 65 76 72
;
run;

proc sort data=trans;
	by matricule;
run;

/*la mise a jour est ici*/

data nouvelle;
	update maitre trans;
	by matricule;
run;

proc print data = nouvelle;
run;

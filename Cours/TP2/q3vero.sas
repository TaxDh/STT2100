dm log 'clear';
dm output 'clear';

data employee_table;
  infile 'employee.csv' firstobs=1 delimiter=';';
  informat ID 3. 
           Nom $ 15. 
           Dep $ 8. 
           DateEmbauche anydtdte8. 
           Salaire comma6.
           ;
  format DateEmbauche mmddyy8. Salaire dollar7.;
  input ID Nom Dep DateEmbauche  Salaire;
  label Dep='Departement'
        DateEmbauche='Date d''embauche'
		;
run;

proc print data=employee_table label;
run; 

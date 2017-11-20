dm log 'clear';
dm output 'clear';

proc format;
	value $depfmt 'SA' = 'Sciences de l''atmosphere'
				  'SB' = 'Science biologique'
				  'PH' = 'Physique'
				  'IN' = 'Intervention'
				  'MS' = 'Marketing'
				  'CO' = 'Communication'
				  'CM' = 'Chimie'
				  'CB' = 'Comptabilite';
	value sexefmt    0 = 'Femme'
					 1 = 'Homme';
run;

dm log 'clear';
dm output 'clear';

/*ne pas oublier de rouler A11fmt avant de rouler ce programme*/

libname Cour10 '.';
options fmtsearch = (Cour10);

data A11;
	infile 'A11.txt' firstobs = 2;
	input No Id Sexe Fum Singe Astro Paume Lune Mort Pein Avort Parad Egl Rel Race;
	drop No id; /*on exclut ces 2 variables*/
	label Fum='Tabagisme du repondant'
        Singe='L''homme et le singe ont un ancetre commun'
        Astro='L''astrologie est une anerie'
        Paume='La longueur de la ligne de vie nous apprend quelque chose'
        Lune ='Les phases de la lune ont une influence sur le sexe d''un bebe'
        Mort ='Certaines personnes peuvent communiquer avec les morts'
        Pein ='La peine de mort devrait etre appliquee pour des crimes graves'
        Avort='Au debut de la grossesse, l''avortement devrait etre accessible'
        Parad='Il y a une vie apres la mort'
        Egl  ='Je vais regulierement a l''eglise'
        Rel  ='Je n''epouserais pas quelqu''un qui n''est pas de ma religion'
        Race ='Je n''epouserais pas quelqu''un qui n''est pas de ma race';
run;

proc freq data=A11;
	tables Sexe Fum Singe Astro Paume Lune Mort /*rappel ne pas mettre les variable drop...*/
		   Pein Avort Parad Egl Rel Race /nocum;
 	format Sexe SexeFmt.;
	format Fum Fumfmt.;
	format Singe Astro Paume Lune Mort Pein Avort Parad Egl Rel Race Deux.;
run;

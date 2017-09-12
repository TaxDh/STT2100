data new-data;
	infile prob1.txt;
	input x1 x2;
	y1 = 3(x1)+2(x2);
	y2 = x1 / x2;
	nouvelle_variable_de_x1_et_x2 = x1+x2-37;
run;

#on va utiliser lsfit, une affaire de tendance des moindres carres

pr = function(x, p=1){
	n = length(x)
	tt = 1:n
	z = NULL
	for(i in 1:p){
		z = cbind(z,tt^i)	
	}
	a = lsfit(z,x)$coefficient
	z = cbind(rep(1,n),z)
	mhat = z%*%a
	tsp(mhat) = tsp(x)
	y = x - mhat
	tsp(y) = tsp(x)
	return (list(coeff=a,mhat = mhat, residuals = y))
}

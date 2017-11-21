#une fonction "univariate"

univ = function(x){
	sdb = stats(x)
	p = c(0.01, 0.1, 0.25, 0.50, 0.75, 0.9, 0.95, 0.99)
	Q = quantile(x, probs =p)
	return(list(sdb=sdb, Q=Q))
}
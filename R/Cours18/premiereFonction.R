#exemple de fonction on l'appelle stats
stats = function(x) {
	sdb = c(mean(x), sd(x), median(x), min(x), max(x))
	return(sdb)
}
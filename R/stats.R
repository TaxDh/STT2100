#exemple de fonction on l'appelle stats
stats = function(x) {
	sdb = c(mean(x), sd(x), median(x), min(x), max(x))
	names(sdb)= c("Moyenne","�cart-type","M�diane","Minimum","Maximum")
	return(sdb)
}
#il faut rouler cette fonction une fois pour que ca marche
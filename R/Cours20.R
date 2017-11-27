#27 novembre 2017

#fonction de script
#function (arguments) {enonces}

f = function(x,y){ x+y}
f(1,2)

f(x=1, y=2)
f(y=2, x=3)

#on peut aussi placer des valeurs par defaut

g = function(x,y = 10) {x+y}
g(1)

#ajouter des parametres variables
f = function(x,...) { print(x); summary(...)}#summary c'est un peu comme notre fonction stats
#ca veut dire que f a un argument specifier et un variable
v = sqrt(1:20)
f(v, v,digits=2)#digits c'est le nombre de chiffres significatif?


f = function(x, y=10) {x^2 ; x+y}
f(3,2)
#le x^2 se calcul, mais se perd et n'est pas utiliser dans le calcul de x+y

#ce genre de fonction est bon pour le debogage de fonctions
f = function(x, y=10) {print(x^2) ; x+y}
f(3,2)

f = function(x, y=10) {print(x^2) ; return(x+y)}
f(10,2)

#if(condition) {enonces}
#else{enonces}

#while(condition) {enonces}
#for(var in list) {enonces}

prof = read.table(file="prof.txt", header = TRUE)
prof[1:10,]

#imprime la ieme position
for(i in 1:10) {print(i)}

# pour toutes les variables du tableau prof, dit nous la sorte de variables (qualitatif ou quantitatif)
for(v in prof) {print(class(v))}

names(prof)

#travail sur la fonction lake.R
#voir un nouveau script pr.R
#pour une raison inconnu, la fonction marche ici mais pas dans pr.R
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

pr(lake,2)
#foncti0on lake.R
## Niveau du lac Huron (1875-1972, annuelle)

lake <- ts(data=scan("lake.txt"),start=1875,frequency=1)
windows(width=10,height=8)
plot(lake,type="p",xlab="Annee",ylab="Niveau (en pieds)"); lines(lake)
title("Niveau du lac Huron (1875-1972)")

#ajout
out = pr(x=lake,p=2)
lines(out$mhat,col ="red")

#bon je ne fais pas la fin, pcq sa marhce pas....




















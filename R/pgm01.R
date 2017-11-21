#on regarde ses objets:
#L'objet vector
x = c(2,3,-4)
x
#fabrication des vecteurs de logique
y = c(TRUE, TRUE, FALSE)
y
#repete le nombre 4, 5 fois
z = rep(4,5)
z
#je pars de 3, j'additionne 4 jusqu'a 25
seq(3,25,4)
rep(x,5)
c(seq(3,25,4),rep(5,6 ))

#ouverture d'un fichier vecteur.txt
scan(file="vecteur.txt")
y = scan(file="vecteur.txt")
y
#lecture des n premiers elements
y[3]
#selection 1 a 7
1:7
#selection y 1 a 5
y[1:5]
#selection plus partialle
y[c(2,5,3,7)]
#regarde si les elements sont plus petits que 10 et dit vrai si cest vrai
y < 10
#montre les elements qui sont plus petit que 10
y[y<10]
z

#vu que z et y ne sont pas de la meme longueur, on ne peut les additionner
z+y

#moyenne, variance et somme
mean(y)
var(y)
sum(y)

#matrix
y = c(1,2,3,4,5,8,10,12,-1)
length(y)
M=matrix(data=y, nrow=3, ncol =3, byrow=TRUE)
M
#autre type de matrice
M^2
M*M
#multiplication matricielle
M%*%M

matrix(data=scan(file="vecteur.txt"), nrow=3, ncol =3, byrow=TRUE)
#chercher dans la matrice, element 1,2
M[1,2]
#sous matrice 2 par 2
M[1:2,1:2]
#ensuite autre commande
M>6
M[M>6]
#matrice colonne 2
M[,2]
M[,2]>0
M[M[,2]>0,]
#attribut de matrice
dim(M)
ncol(M)
nrow(M)
ls()
class(M)
class(y)
is.matrix(y)
is.matrix(M)
M
#combiner la matrice avec une colonne
cbind(M,c(1,1,1))
#combine la matrice avec une ligne
rbind(M,c(1,1,1))


#list
#factor
#data.frame
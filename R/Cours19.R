prof = read.table(file="prof.txt" , header = TRUE)
boxplot(Sal01~Dep, data=prof)
reorder(prof$Dep, prof$Sal01, mean)
allo = reorder(prof$Dep, prof$Sal01, mean)
allo
boxplot(Sal01~allo)

var.test(Sal01~Sexe, data=prof)
t.test(Sal01~Sexe, data=prof, var.equal=TRUE)

table(prof$Dep)
table(prof$Dep,prof$Sexe)

chisq.test(table(prof$Sexe,prof$Dep))

#on doit regarder le panel de diagramme en baton
#il faut le fabriquer en R

table(prof$Dep[prof$Sexe == 0])
table(prof$Dep[prof$Sexe == 1])

#on ouvre une fenetre (et on la laisse ouverte
windows()
#dans la fenetre, il y aura une ligne 2 col
par(mfrow=c(1,2))
#on fait un premier barplot
barplot(height=table(prof$Dep[prof$Sexe==1]))
#ca le place dans la col de gauche
barplot(height=table(prof$Dep[prof$Sexe==0]))
#et ce 2e barplot est a droite
#on peut aussi mettre ce genre de demarche dans un script

#on l'a appeler panel dans le script
source("panel.R")

x = c(-3,4,-5,6,7,10)
#classe le vecteur
sort(x)
#donne les indice dans le vecteur original -5 etait a la 3e place, -3 a la premiere, etc
order(x)

#ca nous dit si une variable est numerique ou non
lapply(prof,is.numeric)

#meme chose mais ca fait un vecteur
sapply(prof,is.numeric)

prof[1:10,]

#selectionne les colonne du tableau avec que les variables numerique
prof[1:10, sapply(prof,is.numeric)]

#on peut prendre la moyenne du tableau, donc de chaque colonne
sapply(prof[1:10, sapply(prof,is.numeric)],mean)

























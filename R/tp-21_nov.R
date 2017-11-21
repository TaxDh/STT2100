#tp numero ?
#question 1
prof = read.table(file="prof.txt", header = TRUE)

#on change le sexe 0 et 1 de sexe en homme femme
#en r un caractere c'est un facteur
help(as.factor)
factor(prof$Sexe, levels = c(0,1), labels = c("F", "H"))
#on associe a la variable sexe, le vecteur factor(...)
prof$Sexe = factor(prof$Sexe, levels = c(0,1), labels = c("F", "H"))
#on verifie
prof$Sexe
prof

#
table(prof$Sexe)

#tableau de contingence, le b, on l'a fait avec prof et non blood
table(prof$Sexe, prof$Dep)











































































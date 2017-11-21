#on ouvre une fenetre (et on la laisse ouverte
windows()
#dans la fenetre, il y aura une ligne 2 col
par(mfrow=c(1,2))
#on fait un premier barplot
barplot(height=table(prof$Dep[prof$Sexe==1]))
#ca le place dans la col de gauche
barplot(height=table(prof$Dep[prof$Sexe==0]))
#et ce 2e barplot est a droite

#lire la table prof
prof = read.table(file="prof.txt" , header = TRUE)
prof
#montre les departement
prof$Dep
#compte combien par departement
table(prof$Dep)
#pourcentage
100*table(prof$Dep)/sum(table(prof$Dep))
#pour faire un graphique or jstudio
windows()
barplot(height = table(prof$Dep))
#un autre
windows(); barplot(height=table(prof$Dep),horiz=TRUE,xlab="Departement")
#ca me donne kkchose et la probabilite critique, il faut que p-value soit plus petite que 0.05 pour
#que H0 soit rejete
chisq.test(table(prof$Dep))
#plein de ptites choses
names(prof)
Sal01 = prof$Sal01
mean(Sal01)
sd(Sal01)
median(Sal01)
min(Sal01)
max(Sal01)
quantile(Sal01)
#il faut executer toutes les fonctions creer avant d'utiliser tes fonctions
stats(Sal01)
univ(Sal01)
#histogramme
windows(); hist(Sal01)
#fixons les bornes
windows(); hist(Sal01,breaks = seq(25000, 75000,2500))
#avec titre
windows(); hist(Sal01,breaks = seq(25000, 75000,2500), xlab="Salaire en 2001", ylab= "Effectif", main = "Distribution des professeurs selon le salaire en 2001")
#boite a moustache, on utilise boxplot
windows(); boxplot(x=Sal01, horizontal = TRUE, notch=TRUE)
#une affaire de la loit normal qqplot
windows(); qqnorm(Sal01); qqline(Sal01)
windows(); qqnorm(y=Sal01); qqline(y=Sal01)
#2 variables quantitative
salent = prof$SalEnt
cor(salent, Sal01)
cor(salent, Sal01, method = "kendall")
cor(salent, Sal01, method = "pearson")
cor(salent, Sal01, method = "spearman")
cor.test(salent, Sal01, method = "spearman")
#
exp = prof$Exp
cor.test(salent, exp, method = "spearman")
#nuage de points
windows(); plot(Sal01, exp, type= "p")
cor(salent, exp, method = "pearson")
cor(salent, Sal01, method = "pearson")
windows(); plot(salent, Sal01, type = "p")

#variable qualitative: table barplot chisq.test
#variable quantitative: univ, hist, boxplot, qqnorm; qqline
#2 var quantitative: cor, plot, cor.test 
#2 var qualitative: demain






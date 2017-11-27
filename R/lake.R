
## Niveau du lac Huron (1875-1972, annuelle)

lake <- ts(data=scan("lake.txt"),start=1875,frequency=1)
windows(width=10,height=8)
plot(lake,type="p",xlab="Annee",ylab="Niveau (en pieds)"); lines(lake)
title("Niveau du lac Huron (1875-1972)")
#ajout, sense faire une ligne rouge... une mesure de tendance
out = pr(x=lake,p=2)
lines(out$mhat,col ="red")
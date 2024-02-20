#ejercicio 3. asigna las etiquetas.
nuevo_dir <- "c:/practica4"
setwd(nuevo_dir)

#ejercicio 1.
library(readxl)
spear <- read_excel("c:/spearhead/spearheads.xlsx")
str(spear)
class (spear)

spear <- as.data.frame(spear)
class (spear)

#ejercicio 2.

names(spear)[names(spear)="mat"] <- "material"
names(spear)[names(spear)="cont"] <- "contexto"
names(spear)[names(spear)="cons"] <- "conservacion"
names(spear)[names(spear)="loo"] <- "loop"
names(spear)[names(spear)="peg"] <- "remache"
names(spear)[names(spear)="date"] <- "fecha"
names(spear)[names(spear)="maxle"] <- "longitud_max"
names(spear)[names(spear)="socle"] <- "longitud_caje"
names(spear)[names(spear)="maxwi"] <- "ancho_max"
names(spear)[names(spear)="upsoc"] <- "ancho_encaje"
names(spear)[names(spear)="maxwit"] <- "ancho_max_encaje"
names(spear)[names(spear)="weight"] <- "peso"
spear
View(spear)

#ejercicio 3.

spear$contexto=factor(spear$contexto, levels=c("1","2","3"), labels=c("s/c", "habitacional", "funerario"))
Spear$conservacion=factor(spear$conservacion, levels("1","2","3"), labels=c("excelente", "bueno", "regular", "malo"))
spear$remache=factor(spear$remache, levels=c(1,2), labels=c("si", "no"))
spear$materiales=factor(spear$materiales, levels=c(1,2), labels=c("bronce", "hierro"))

#ejercicio 4. 

freq-mat=table(spear$materiales)
View(freq.mat)
freq.con=table(spear$contexto)
View(freq.con)
freq.cond=table(spear$conservacion)
Viwe(freq.cond)
freq.cond=table(spear$conservacion)
view(freq.cond)

#ejercicio 5. 

cross.condcon=table(spear$materiales,spear.copntexto)
cross.condcon#visualizar tabla de frecuencia en la cosola
cross.condmat=table(spear$conservacion,spear$materiales)
cross.condmat#visualizar tabla de frecuencias en la consola

#ejercicio 6. 

#the prop.table() function in R can be used to calculate the value of each cell in a table as.data.frame(prop.mat)
prop.mat=prop.table(freq.mat)
view(prop.mat)
prop.mat <- as.data.frame(prop.mat)
prop.mat$porcentaje <- prop.mat$freq * 100
prop.mat

#ejercicio 7. 

pop.cross.condcon=round(pop.table(cross.condcon)*100.0)
view(prop.cross.condcon)
pop.cross.condcon.condmat=round(prop.table(cross.condmat)*100.0)
View(prop.cross.condmat)

#ejercicio 8. 
bar.cond=barplot(table(spear$conservacion))
bar.con=barplot(table(spear$contexto))

#ejercicio 9.

barth.mater=barplot(table(spear$materiales), horiz=TRUE)

xlim <- c(0, 1,2*max(table(spear$materiales)))

# Carlos MauricioWeinmann Olmedo
# 10/10/2023
# Matricula:1919780


# Imporatr datos ----------------------------------------------------------

library(repmis)

DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

DAP$Paraje <- as.factor(DAP$Paraje)

DAP$SP <- as.factor(DAP$SP)

# Determinar estadisticas descriptivas ------------------------------------

boxplot(DAP$EDAD ~ DAP$Paraje)

boxplot(DAP$DAP ~ DAP$Paraje)


tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)


# Normalidad --------------------------------------------------------------

shapiro.test(DAP$DAP)

hist(DAP$DAP)
#los datos del DAP no son normales 

bartlett.test(DAP$DAP ~ DAP$Paraje)
# la varianzas son iguales 


#transformar DAP para cumplir normalidad 
DAP$raiz <-sqrt(DAP$DAP)

hist(DAP$raiz)

#probar mormalidad a los datos transformados (raiz cuadrada)

shapiro.test(DAP$raiz)
#los datos son ahora normales 

#probar homogeneidad de varianzas de los datos transformados 
bartlett.test(DAP$raiz ~ DAP$Paraje)


dap.aov <- aov(DAP$raiz ~ DAP$Paraje)

summary(dap.aov)

boxplot(DAP$raiz ~ DAP$Paraje,
        col="skyblue")
#encontrar las diferencias significativas 
TukeyHSD(dap.aov)

#encontarr las diferencias significativas
plot(TukeyHSD(dap.aov))



# Carlos Mauricio Weinmann Olmedo
# 10/10/2023
# Analisis de varianza


# interpretar estadisticas descriptivas  ----------------------------------
Datos_Rascon_Anova$Paraje <- as.factor(Datos_Rascon_Anova$Paraje)
Datos_Rascon_Anova$SP <- as.factor(Datos_Rascon_Anova$SP)
boxplot(Datos_Rascon_Anova$EDAD ~ Datos_Rascon_Anova$Paraje)
boxplot(Datos_Rascon_Anova$DAP ~ Datos_Rascon_Anova$Paraje)


tapply(Datos_Rascon_Anova$EDAD, Datos_Rascon_Anova$Paraje, mean)
tapply(Datos_Rascon_Anova$EDAD, Datos_Rascon_Anova$Paraje, var)


# normalidad --------------------------------------------------------------

shapiro.test(Datos_Rascon_Anova$DAP)
hist(Datos_Rascon_Anova$DAP)
# Los datos del DAP no son normales 
bartlett.test(Datos_Rascon_Anova$DAP ~ Datos_Rascon_Anova$Paraje)

# Transformar DAP para cumplir normalidad
Datos_Rascon_Anova$raiz <- sqrt(Datos_Rascon_Anova$DAP)
hist(Datos_Rascon_Anova$raiz)
shapiro.test(Datos_Rascon_Anova$raiz)
bartlett.test(Datos_Rascon_Anova$raiz)

dap.aov <- aov(Datos_Rascon_Anova$raiz ~ Datos_Rascon_Anova$Paraje)
summary(dap.aov)
boxplot(Datos_Rascon_Anova$raiz ~ Datos_Rascon_Anova$Paraje)
 TukeyHSD(dap.aov)
 plot(TukeyHSD(dap.aov))
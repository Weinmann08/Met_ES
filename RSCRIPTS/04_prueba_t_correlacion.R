# Carlos Mauricio Weinamnn Olmedo
# 18/09/2023
# Matricula: 1919780

setwd("C:/Weinmann_Met_ES/Met_ES/codigos")
 cnpy <- read.csv("canopy.csv", header = T)
 cnpy$Forest <- as.factor(cnpy$Forest)

 plot(cnpy$Cnpy, cnpy$LAI4)
 #Asocoacion negativa 
 
 plot(cnpy$Cnpy, cnpy$GLI)
 #Asociacion positiva 
 
 plot(cnpy$LAI4, cnpy$GLI)
 #Asociacion negativa 
 
 #Personalizar
 plot(cnpy$Cnpy, cnpy$LAI4, xlab = "Apertura dosel", ylab = "Area foliar",
      col = "red", pch = 19)
 cor.test(cnpy$Cnpy, cnpy$LAI4)
 
 text(25,1.2, "r= -0.83***")
 
 plot(cnpy$Cnpy, cnpy$GLI, xlab = "Apertura dosel", ylab = "Area foliar",
      col = "blue", pch = 19)
 cor.test(cnpy$Cnpy, cnpy$GLI)
 
 text(25,40, "r= 0.5457512")
 
 plot(cnpy$LAI4, cnpy$GLI, xlab = "Apertura dosel", ylab = "Area foliar", 
      col = "green", pch = 19)
 cor.test(cnpy$LAI4, cnpy$GLI)
 
 text(25,1.2, "r= -0.6894101")
 
 
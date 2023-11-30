#Conjunto de datos para correlacion 
#Carlos Mauricio Weinamnn Olmedo
#26/09/2023

#crear la base de datos 

x <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y <- c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)

#Crear un data.frame

d3 <- data.frame(x,y)


#Estadisicas descriptivas
 mean(d3$x); var(d3$x)
 mean(d3$y); var(d3$y)

#Aplicar correlacion
 
 cor.test(d3$x, d3$y)
 
 #Grafica
 
 plot(d3$x, d3$y, xlab = "x", ylab = "y", pch = 19, col = "red")
 
 
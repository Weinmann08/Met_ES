# Carlos Mauricio Weinmann Olmedo 
# 21/08/2023
# Matricula:1919780

# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Weinmann_Met_ES/Met_ES/codigos")

mediciones1 <- read.csv("mediciones1.csv", header = TRUE)
head(mediciones1)
# Funcion head (sirve para ver los primeros 6 datos)

# Descriptivas ------------------------------------------------------------
# medidas de tendencia central media, mediana, rango

mean(mediciones1$crecimiento) #Moda
median(mediciones1$crecimiento) #Mediana
range(mediciones1$crecimiento) #Rango
fivenum(mediciones1$crecimiento) #Representa los 5 numeros del boxplot

# medidas de dispersión desviacion estándar, varianza

sd(mediciones1$crecimiento)
var(mediciones1$crecimiento)

# Gráficas ----------------------------------------------------------------

boxplot(mediciones1$crecimiento,col = "blue", ylab = "altura (cm)", main = "Sitio 1", ylim = c(6,14))

# Hipótesis ---------------------------------------------------------------

# xobs 10.17 vs xteo=11
# Todos los cedros no alcanzaron los 11 cm.
# El valor de alfa referencia es 0.05

# Procedimiento -----------------------------------------------------------
# Aplicar la función de t.test (Nunca se pone la media, se ponen los datos de origen)
t.test(mediciones1$crecimiento,mu=11)
# "df" significa grados de libertad
t.test(mediciones1$crecimiento,mu=10.5)
t.test(mediciones1$crecimiento,mu=10.6)
t.test(mediciones1$crecimiento,mu=10.55)

# Replicabilidad ----------------------------------------------------------

# Guardar la prueba de ten un objeto llamado "prueba"
prueba<-t.test(mediciones1$crecimiento, mu=11)

# Conocer los grados de libertad
prueba$parameter
# Conocer el p-value
prueba$p.value
# Se acepta la H1
# Conocer los intervalos de confianza
prueba$conf.int
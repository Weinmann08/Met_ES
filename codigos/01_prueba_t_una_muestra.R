# Carlos Mauricio Weinmann Olmedo
# 21/08/23
# Matricula: 1919780
# Importar datos  ---------------------------------------------------------
#funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Weinmann_Met_ES/Met_ES/codigos")

mediciones <- read.csv("mediciones.csv", header = TRUE)
head(mediciones) #funcion head(sirve para ver los primeros 6 datos)


# Descriptivas  -----------------------------------------------------------
#medidas de tendencia central, media, mediana, rango

mean(mediciones$altura)
median(mediciones$altura)
range(mediciones$altura)
fivenum(mediciones$altura)

# medidias de dispersion, desviacion estandar, varianza

sd(mediciones$altura)
var(mediciones$altura)


# Graficas ----------------------------------------------------------------

boxplot(mediciones$alturas, col = "red", ylab = "altura", main = "sitio 1")


# Hipotesis ---------------------------------------------------------------

# xobos = 10.17 vs xteo = 11
# plantas de cedro deben alcanzar una altura de 11 cm en un año
# de acuerdo a los dichos de viveristas
# el valor alfa de referencia de 0.05


# Procedimientos ----------------------------------------------------------
#primer paso aplicar la funcion de t.test (nunca se pone la media pero si los datos de origen)

#ejemplo(el "mu" es la muestra teorica) (df es grados de livertad de es igual a el numero de datos con lo que estoy comparando)

t.test(mediciones$altura, mu =11)
t.test(mediciones$altura, mu =10.5)
t.test(mediciones$altura, mu =10.6)
t.test(mediciones$altura, mu =10.55)

# Replicabilidad ----------------------------------------------------------
#guardar la prueba de t en un objeto llamado "prueba"

prueba <- t.test(mediciones$alturas, mu = 11)

#conocer los grados de livertad

prueba$parameter

#conocer el p-value
#se acepta la hipotesis alternativa 

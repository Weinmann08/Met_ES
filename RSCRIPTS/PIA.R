# Carlos Mauricio Weinmann Olmedo
# 1919780
# 28/11/2023


# Importar datos ----------------------------------------------------------
setwd("C:/Weinmann_Met_ES/Met_ES/codigos")
Clima_<- read.csv("Clima_.csv" , header = TRUE)
head(Clima_)

median(Clima_$Tmax)#28.6
mean(Clima_$Tmax)#28.30645
range(Clima_$Tmax)#18.5 34.4
fivenum(Clima_$Tmax)#18.50 26.35 28.60 30.35 34.40

median(Clima_$Tmín)#18.1
mean(Clima_$Tmín)#17.56129
range(Clima_$Tmín)#10.2 22.9
fivenum(Clima_$Tmín)#10.20 15.70 18.10 19.95 22.90

sd(Clima_$Tmax)#3.570148
sd(Clima_$Tmín)#3.517165

var(Clima_$Tmax)#12.74596
var(Clima_$Tmín)#12.37045


boxplot(Clima_$Tmax)
boxplot(Clima_$Tmín)


#Tmax =  28.6 vs Tmin = 18.1
# Hipotesis nula: todas las tempeeraturas de el mes fueron muy altas 
# Hipotesis alternativa: la temperatura de el mes tuvo temperaturas muy altas y bajas 

# En mi caso si se cumplio la hipotesis alternativa por que si huvo mucha variasion de temperaturas 


t.test(Clima_$Tmax, mu = 29)
t.test(Clima_$Tmax, mu = 28.5)
t.test(Clima_$Tmax, mu = 14.5)
t.test(Clima_$Tmax, mu = 28.6)
# Guardar la prueba t en un objeto llamado prueba 
prueba <- t.test(Clima_$Tmax, mu = 29)
# Conocer el p-value
prueba$p.value
# Conocer los grados de libertad 
prueba$conf.int


cor.test(Clima_$Tmax, Clima_$Tmín)
#t = 3.6534, df = 29, p-value = 0.001016


plot(Clima_$Tmax, Clima_$Tmín, xlab = "Tmax", ylab = "Tmin", pch = 19)

Clima_lm <- lm (Clima_$Tmax ~ Clima_$Tmín)
Clima_lm #obtenemos el valr de alfa y beta
summary(Clima_lm) #Obtenemos la significancia 


Clima_$yprima <- 18.2987 + 0.5699*Clima_$Tmax
Clima_$estimados <- Clima_lm$fitted.values







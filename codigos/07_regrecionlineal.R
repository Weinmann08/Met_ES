#Regresion lineal
# Carlos Mauricio Weinmann Olmedo
# 09/10/2023

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

plot(erupciones$waiting, erupciones$eruptions, xlab = "tiempo de espera", ylab = "duracion", pch = 19, col = "skyblue")
# abline sirve para despegar la linea de tendencia central
abline(eru.lm, col = "green")
range(erupciones$waiting)
erup <- c(80, 43, 45, 53, 61, 95)
y.pr <- -1.874 + 0.075*erup
eru.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
eru.lm #obtenemos el valor de alfa y beta
summary(eru.lm)

erupciones$yprima <- -1.874 + 0.075* erupciones$waiting
erupciones$estimados <- eru.lm$fitted.values

-1.874016 + 0.075628* 80
-1.874016 + 0.075628* 43
-1.874016 + 0.075628* 45
-1.874016 + 0.075628* 53
-1.874016 + 0.075628* 61
-1.874016 + 0.075628* 95

# el rango de el valor de x son mi ventana de prediccion de yprima range(erupciones$waiting) 


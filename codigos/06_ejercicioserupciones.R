# Carlos Mauricio Weinmann Olmedo 
# 02/10/2023
# 1919780

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# hipotesis ---------------------------------------------------------------
# la nula: es igual a 0
# la alternativa: la verdadera no es igual a 0



# Correlacion -------------------------------------------------------------
# ¿Cuál es el coeficiente de correlación (r)?
  cor.test(erupciones$eruptions, erupciones$waiting)
0.9008112 
# ¿Es significativa la correlación?
  # R: si por ser mayor que 0.5 por tanto no se puede rechazar 



# estadisticas decstriptivas  ---------------------------------------------
mean(erupciones$eruptions)3.487783
mean(erupciones$waiting)70.89706
var(erupciones$eruptions)1.302728
var(erupciones$waiting) 184.8233
sd(erupciones$eruptions)1.141371
sd(erupciones$waiting)13.59497

plot(erupciones$eruptions, erupciones$waiting, xlab = "x", ylab = "y", pch = 16, col = "red")
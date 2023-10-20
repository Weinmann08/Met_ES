# Carlos Mauricio Weinamnn Olmedo
# 28/08/2023
# Matricula: 1919780

#Dos tratamientos ctrl y Fert , un grupo de plantas
# Prueba de t independientes 


# Importar ----------------------------------------------------------------
setwd("C:/Weinmann_Met_ES/Met_ES/codigos")
vivero <- read.csv("IE.csv", header = T)


# Descriptivas ------------------------------------------------------------

# Usar la libreria dpylr para seleccionar datos mediante 
# restricciones 


library(dplyr)
Ctrl <- vivero %>% 
  filter(Tratamiento == "Ctrl")

Fert <- vivero %>% 
  filter(Tratamiento == "Fert")

mean(Ctrl$IE)
mean(Fert$IE)


vivero %>% 
  group_by(Tratamiento) %>% 
  summarise(
    n = n (),
    media = mean(IE),
    mediana = median(IE), 
    sd = sd(IE), 
    var = var(IE)
  )
View(Descriptor)


# Grafica -----------------------------------------------------------------

boxplot(vivero$IE ~ vivero$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Indice Esbeltes",
        main = "vivero",
        col = "red")


t.test(vivero$IE ~ vivero$Tratamiento, var.equal = T)




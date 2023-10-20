
# Importar datos ----------------------------------------------------------

setwd("C:/Weinmann_Met_ES/Met_ES/codigos")
Tratamiento <- read.csv("Tratamiento.csv", header = T)

# Descriptivas  -----------------------------------------------------------

library(dplyr)

Tratamiento %>% 
  filter(Tratamiento == "Ta")
Tratamiento %>% 

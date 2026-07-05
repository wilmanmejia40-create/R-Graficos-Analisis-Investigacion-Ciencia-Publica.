# ==============================================================================
# Script: 03 - Estadística Inferencial y Comparación de Grupos
# Dataset: chickwts (Efecto de la alimentación en el crecimiento)
# ==============================================================================

library(tidyverse)

data("chickwts")

print("--- Comparación de Múltiples Grupos (Kruskal-Wallis) ---")
# Evaluamos si el tipo de alimento (feed) influye significativamente en el peso (weight)
prueba_grupos <- kruskal.test(weight ~ feed, data = chickwts)
print(prueba_grupos)

# 2. Análisis de Correlación (Dataset: iris)
# Correlación no paramétrica de Spearman entre longitud y ancho del pétalo
print("--- Análisis de Correlación de Spearman ---")
correlacion_sp <- cor.test(iris$Petal.Length, 
                           iris$Petal.Width, 
                           method = "spearman")
print(correlacion_sp)

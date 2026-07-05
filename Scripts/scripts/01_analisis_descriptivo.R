# ==============================================================================
# Script: 01 - Análisis Exploratorio y Descriptivo de Datos
# Dataset: msleep (Datos ecológicos de mamíferos en ggplot2)
# ==============================================================================

# 1. Cargar librerías necesarias
library(tidyverse)
library(summarytools) 

# 2. Cargar e inspeccionar el dataset nativo
data("msleep", package = "ggplot2")

print("--- Estructura General del Dataset ---")
glimpse(msleep)

# 3. Resumen estadístico descriptivo de variables cuantitativas (Horas de sueño y peso)
print("--- Estadísticos Descriptivos ---")
descr(msleep[, c("sleep_total", "brainwt", "bodywt")], stats = "common")

# 4. Tabla de frecuencias para variables categóricas (Tipo de alimentación / Dieta)
print("--- Distribución por Tipo de Alimentación (vore) ---")
freq(msleep$vore)

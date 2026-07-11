# ==============================================================================
# Script: 02 - Evaluación de Supuestos y Pruebas de Normalidad
# Dataset: iris (Medidas morfológicas de flores)
# ==============================================================================

library(tidyverse)

# 1. Cargar dataset nativo
data("iris")

# 2. Prueba formal de Shapiro-Wilk para la longitud del sépalo
shapiro_resultado <- shapiro.test(iris$Sepal.Length)
print("--- Resultado de la Prueba de Shapiro-Wilk ---")
print(shapiro_resultado)

# Intermediación lógica para el reporte científico:
if(shapiro_resultado$p.value > 0.05) {
  message("Supuesto cumplido: Los datos siguen una distribución normal (p > 0.05).")
} else {
  message("Supuesto violado: Los datos NO siguen una distribución normal (p <= 0.05).")
}

# 3. Evaluación visual con un gráfico Q-Q Plot (Calidad de Publicación)
qq_plot <- ggplot(iris, aes(sample = Sepal.Length)) +
  stat_qq(color = "#2c3e50", alpha = 0.7) +
  stat_qq_line(color = "#e74c3c", linewidth = 1) +
  labs(title = "Gráfico de Probabilidad Normal (Q-Q Plot)",
       subtitle = "Variable: Longitud del Sépalo (Dataset: iris)",
       x = "Cuantiles Teóricos",
       y = "Cuantiles Muestrales") +
  theme_light()

# Guardar automáticamente en la carpeta de salidas
ggsave("outputs/01_qqplot_normalidad.png", plot = qq_plot, width = 6, height = 4)

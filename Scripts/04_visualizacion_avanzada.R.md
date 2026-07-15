# ==============================================================================
# Script: 04 - Visualización de Datos Avanzada con ggplot2
# Dataset: chickwts
# ==============================================================================

library(tidyverse)

data("chickwts")

# Diseñar el gráfico con calidad de publicación científica
grafico_final <- ggplot(chickwts, aes(x = reorder(feed, weight, FUN = median), y = weight, fill = feed)) +
  geom_boxplot(outlier.shape = NA, alpha = 0.6, width = 0.5, color = "grey20") +
  geom_jitter(width = 0.15, alpha = 0.7, size = 2, aes(color = feed)) +
  scale_fill_viridis_d(option = "plasma", begin = 0.2, end = 0.8) +
  scale_color_viridis_d(option = "plasma", begin = 0.2, end = 0.8) +
  labs(
    title = "Efecto del Tipo de Suplemento Alimenticio en el Crecimiento",
    subtitle = "Análisis comparativo basado en el dataset estándar chickwts",
    x = "Tipo de Alimentación (Ordenado por Mediana)",
    y = "Peso Corporal (gramos)",
    caption = "Repositorio: R-Graficos-Analis-Investigacion-Ciencia-Publica"
  ) +
  theme_bw(base_size = 11) + 
  theme(
    legend.position = "none",
    plot.title = element_text(face = "bold", size = 13, color = "grey10"),
    panel.grid.minor = element_blank(),
    axis.text.x = element_text(angle = 15, hjust = 1)
  )

# Exportar en alta resolución (300 DPI) para el entorno público o académico
ggsave("outputs/02_grafico_suplementos_chickwts.png", 
       plot = grafico_final, 
       width = 8, 
       height = 5.5, 
       dpi = 300)

# R-Graficos-Analisis-Investigacion-Ciencia-Publica.

¡Bienvenido/a al repositorio! Este espacio está dedicado al desarrollo de scripts en **R** enfocados en el análisis estadístico, visualización de datos y procesamiento de información para proyectos de investigación científica.

El objetivo es centralizar flujos de trabajo reproducibles que sirvan de apoyo para la toma de decisiones, análisis ecológicos o publicaciones de ciencia abierta.

## 📂 Estructura del Repositorio

Para mantener el orden, el proyecto se organiza de la siguiente manera:

*   **`scripts/`**: Código fuente en R (`.R` o `.Rmd`) organizado por tipo de análisis.
*   **`data/`**: Datos crudos o procesados utilizados en los ejemplos (o enlaces para descargarlos si son muy pesados).
*   **`outputs/`**: Gráficos generados (mapas, plots de `ggplot2`, tablas formateadas).
*   **`docs/`**: Notas metodológicas o manuales breves.

## 📊 Contenido Actual e Introducción

*   **`Restadístico.md`**: Documentación inicial sobre pruebas estadísticas y flujos de análisis en R.

## 🛠️ Requisitos y Librerías Comunes

Para replicar los análisis de este repositorio, se suelen utilizar los siguientes paquetes de R:

```r
# Instala las librerías principales si no las tienes:
install.packages(c("tidyverse", "sf", "summarytools", "knitr"))

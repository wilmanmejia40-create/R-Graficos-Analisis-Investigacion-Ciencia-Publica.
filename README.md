Repositorio dedicado al aprendizaje de **R**, donde encontrarás guías paso a paso, scripts comentados y ejemplos orientados a la investigación científica y el análisis de datos.

## Sobre mí

**Wilman Eliud Mejía Velásquez**

🧬 Biólogo  
🗺️ Especialista en Sistemas de Información Geográfica (SIG)  
📊 Analista de Datos en R  
🌱 Investigador Ambiental

---

## 📂 Contenido Disponible

### 📘 1. Fundamentos e Introducción
Guías paso a paso para configurar tu entorno de trabajo e iniciar en el análisis de datos.
- [Introducción](./Introduccion/01_introduccion_restauracion.md)
- [Instalación de R y Rstudio](./Introduccion/02_instalacion_r.md)
- [Importación de Datasets y primeros pasos](./Introduccion/03_importar_datos.md)
- [Base de Datos disponibles y funcionales en R](./Introduccion/04-Bases-de-Datos-Disponibles-en-R.md)

### 📊 2. Scripts de Análisis Avanzado

Scripts modulares optimizados para análisis estadístico, manipulación de datos con el ecosistema `tidyverse` y visualizaciones con `ggplot2`.

* [**Análisis Exploratorio de Datos (EDA)**](./Scripts/01_analisis_descriptivo.R.md)
* [**Pruebas de Normalidad y Supuestos Estadísticos**](./Scripts/02_pruebas_normalidad.R.md)
* [**Estadística Inferencial y Modelado**](./Scripts/03_estadistica_inferencial.R.md)
* [**Visualización Científica Avanzada**](./Scripts/04_visualizacion_avanzada.R.md)

---

## 🛠️ Tecnologías y Librerías Utilizadas

Este repositorio emplea herramientas ampliamente utilizadas en ciencia de datos, estadística y análisis espacial con **R**.

| Herramienta | Descripción |
|-------------|-------------|
| **Lenguaje** | **R (v4.4+)** para análisis estadístico, visualización y ciencia de datos. |
| **IDE** | **RStudio** como entorno de desarrollo recomendado. |
| **Manipulación de Datos** | `tidyverse`, `dplyr`, `tidyr`, `readr`, `stringr`, `lubridate`. |
| **Visualización** | `ggplot2`, `ggthemes`, `patchwork`, `cowplot` para gráficos científicos y de publicación (APA 7.ª edición). |
| **Estadística** | `stats`, `rstatix`, `car`, `agricolae`, `broom`. |
| **Análisis Espacial** | `sf`, `terra`, `stars`, `tmap`, `leaflet`. |
| **Importación de Datos** | `readxl`, `openxlsx`, `haven`. |
| **Reportes Reproducibles** | `R Markdown`, `Quarto`, `knitr`. |
| **Control de Versiones** | Git y GitHub. |

---

### 📦 Principales paquetes utilizados

```r
library(tidyverse)
library(ggplot2)
library(sf)
library(terra)
library(readxl)
library(openxlsx)
library(rstatix)
library(car)
library(patchwork)
library(knitr)
```

> **Nota:** No todas las guías utilizan los mismos paquetes. Cada script indica las dependencias necesarias para su ejecución.

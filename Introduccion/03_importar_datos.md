💻 Opción 1: Cargar datos desde tu equipo (Local)
Para leer archivos locales (como .csv), la mejor práctica en R moderno es combinar el paquete readr (parte de tidyverse) con el paquete here, el cual gestiona las rutas de los archivos de forma automática sin importar en qué computadora se corra el script.

Paso 1: Configurar el Directorio de Trabajo con un Proyecto de RStudio
En lugar de usar el viejo comando setwd(), la mejor práctica actual es usar un archivo .Rproj (Proyecto de RStudio). Al abrir el proyecto, R sabe automáticamente que esa carpeta es la raíz.

Paso 2: El Script para leer un archivo CSV
Si tienes un archivo llamado mis_datos.csv dentro de una carpeta llamada data, el código limpio y profesional se escribe así:

R
# 1. Cargar las librerías necesarias
library(tidyverse)
library(here)

# 2. Definir la ruta relativa de forma segura
# (here busca desde la raíz donde está tu archivo .Rproj)
ruta_archivo <- here("data", "mis_datos.csv")

# 3. Importar los datos a un objeto llamado 'datos_locales'
datos_locales <- read_csv(ruta_archivo)

# 4. Inspeccionar que todo se haya cargado bien
glimpse(datos_locales)
🌐 Opción 2: Cargar Bases de Datos que ya existen en R
Para un curso, esta es la mejor opción porque no requiere que los estudiantes descarguen archivos adicionales. R y muchas de sus librerías ya vienen con bases de datos espectaculares listas para usar.

A) Bases de datos nativas (Ecosystema Base)
R viene con datasets clásicos preinstalados como iris o mtcars. Solo debes llamarlos con la función data().

R
# Cargar el dataset nativo de flores Iris
data("iris")

# Ver las primeras 6 filas en la consola
head(iris)
B) Usar Datasets de librerías famosas
Hay librerías específicas que contienen datos excelentes para practicar estadística, manipulación o gráficos:

R
# Ejemplo 1: El dataset de pingüinos de Palmer (Ideal para reemplazar a 'iris')
# Instalar si no lo tienen: install.packages("palmerpenguins")
library(palmerpenguins)
data("penguins")

# Ejemplo 2: El dataset de pasajeros del Titanic (Ideal para pruebas estadísticas)
# Instalar si no lo tienen: install.packages("titanic")
library(titanic)
datos_titanic <- titanic_train
🗃️ Opción 3: Cargar datos desde una Base de Datos SQL (Avanzado)
Si tus estudiantes necesitan conectarse a un servidor de bases de datos real (PostgreSQL, MySQL, SQLite), R se conecta de forma nativa usando los paquetes DBI y dbplyr.

Aquí tienes un ejemplo conectando a una base de datos local ligera de tipo SQLite:

R
library(DBI)
library(RSQLite)
library(dplyr)

# 1. Establecer la conexión con el archivo de la base de datos
con <- dbConnect(RSQLite::SQLite(), dbname = here("data", "mi_base_datos.sqlite"))

# 2. Conectarse a una tabla específica sin traer todos los datos a la memoria RAM aún
tabla_remota <- tbl(con, "nombre_de_tu_tabla")

# 3. Hacer consultas usando dplyr (se traduce a SQL automáticamente)
datos_filtrados <- tabla_remota %>%
  filter(edad > 18) %>%
  collect() # collect() trae los resultados finales a R

# 4. Siempre cerrar la conexión al terminar
dbDisconnect(con)

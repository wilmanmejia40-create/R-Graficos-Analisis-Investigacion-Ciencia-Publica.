# Datasets Integrados en R

Uno de los mayores beneficios de R es que incluye numerosas bases de datos listas para usar. Estas permiten practicar análisis estadístico, visualización de datos y modelado sin necesidad de descargar información externa.

---

## ¿Cómo ver todos los datasets disponibles?

```r
data()
```

También puedes buscar un dataset específico:

```r
help(iris)
```

o

```r
?iris
```

Para cargar un dataset:

```r
data(iris)
head(iris)
```

---

# Datasets más utilizados

## iris

Uno de los datasets más famosos en ciencia de datos.

```r
data(iris)
```

**Variables**

- Sepal.Length
- Sepal.Width
- Petal.Length
- Petal.Width
- Species

Ideal para:

- Estadística descriptiva
- Clasificación
- Machine Learning
- Visualización

---

## mtcars

Características de 32 automóviles.

```r
data(mtcars)
```

Ideal para:

- Regresión lineal
- Correlaciones
- ANOVA

---

## airquality

Calidad del aire en Nueva York durante 1973.

```r
data(airquality)
```

Ideal para:

- Manejo de datos faltantes
- Series temporales
- Visualización

---

## ToothGrowth

Crecimiento dental según dosis de vitamina C.

```r
data(ToothGrowth)
```

Ideal para:

- Pruebas t
- ANOVA

---

## PlantGrowth

Crecimiento de plantas bajo diferentes tratamientos.

```r
data(PlantGrowth)
```

Ideal para:

- ANOVA
- Boxplots

---

## faithful

Erupciones del géiser Old Faithful.

```r
data(faithful)
```

Ideal para:

- Distribuciones
- Clustering

---

## CO2

Absorción de CO₂ en plantas.

```r
data(CO2)
```

Ideal para:

- Modelos lineales
- Ecología

---

## trees

Datos forestales.

```r
data(trees)
```

Variables:

- Girth
- Height
- Volume

Ideal para:

- Regresión
- Ciencias forestales

---

## ChickWeight

Crecimiento de polluelos.

```r
data(ChickWeight)
```

Ideal para:

- Modelos mixtos
- Series temporales

---

# Datasets del paquete ggplot2

Si tienes instalado **ggplot2**, encontrarás datasets muy utilizados.

```r
library(ggplot2)
data(package = "ggplot2")
```

Los más conocidos son:

- diamonds
- mpg
- economics
- msleep
- midwest

---

# Datasets para análisis espacial

Con **sf**

```r
library(sf)
data(package = "sf")
```

Destaca:

- nc

Con **terra**

```r
library(terra)
data(package = "terra")
```

Incluye ejemplos raster y vectoriales para practicar SIG.

---

# Ver todos los datasets de un paquete

```r
data(package = "datasets")
```

Ejemplos:

```r
data(package = "MASS")
data(package = "ggplot2")
data(package = "sf")
data(package = "terra")
```

---

# Explorar la estructura de un dataset

```r
str(iris)
summary(iris)
head(iris)
tail(iris)
View(iris)
```

---

# Recomendación

Para comenzar a aprender R, los datasets más utilizados son:

- iris
- mtcars
- airquality
- ToothGrowth
- PlantGrowth
- diamonds
- mpg
- CO2
- trees

Estos cubren la mayoría de los ejemplos de análisis descriptivo, estadística inferencial, visualización y modelado que encontrarás en este repositorio.

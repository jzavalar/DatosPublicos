# README.md

## Contexto

Este repositorio corresponde a una versión actualizada del repositorio [DatosPublicos](https://github.com/hllinas/DatosPublicos) del dr. Humberto LLinás, disponible en GitHub. 

Esencialmente, se ha preparado el script [`prerrequisitos.R`](https://github.com/jzavalar/probabilidad/blob/main/codigo/prerrequisitos.R) para que el tutorial [9.5. Probabilidad en R: Probabilidad condicional](https://github.com/jzavalar/probabilidad/blob/main/codigo/9.5_Probabilidad-en-R_Probabilidad-condicional.Rmd) se compile correctamente y se reproduzca sin errores. Una copia puede encontrarse en [RStudio.cloud](https://posit.cloud/content/6287627).

El tutorial referido con anterioridad es parte del capítulo **Probabilidad en R**, que comprende los siguientes subcapítulos:

- [9.1. Experimento, espacio muestral y evento en R](https://rpubs.com/hllinas/R_Exp-Omega-Evento),
- [9.2. Muestreo desde una urna en R](https://rpubs.com/hllinas/R_Urnas),
- [9.3. Técnicas de conteo en R](https://rpubs.com/hllinas/R_Conteo),
- [9.4. Probabilidad clásica en R](https://rpubs.com/hllinas/R_Prob_Clasica) y
- [9.5. Probabilidad condicional en R](https://rpubs.com/hllinas/R_Prob_Condicional). 

En general, considero que, este capítulo y la referencia completa, es una fuente de gran calidad, en español, para el estudio del tema. Mi agradecimiento al autor.


## 2. Contenido

Los archivos del repositorio original corresponden al directorio `datos` del proyecto, que está organizado de la siguiente forma:

- **Archivos del proyecto**:
  - .gitignore (para conexión a GitHub)
  - .Rprofile
  - probabilidad.Rproj
  - renv (directorio del paquete `renv`)
  - renv.lock (snapshot de `renv`)

- **`codigo`** (directorio) (código .R y .Rmd, corresponde a los tutoriales anteriores, pero renombrados):
  - 9.1_Probabilidad-en-R_Conceptos.Rmd
  - 9.2_Probabilidad-en-R_Muestreo.Rmd
  - 9.3_Probabilidad-en-R_Conteo.Rmd
  - 9.4_Probabilidad-en-R_Probabilidad-clasica.Rmd
  - 9.5_Probabilidad-en-R_Probabilidad-condicional.Rmd
  - **`imagenes`** (directorio de imagenes requeridas el los archivos anteriores)
  - prerrequisitos.R (script)  

- **`datos`** (directorio de datos) (copia del repositorio del autor, con algunos archivos nuevos o actualizados):
  - Estudiantes.RData (datos) (original)
  - Estudiantes.csv (copia CSV copia del original) (creado por el script)
  - clipboard (archivo CSV copia del original) (creado por el script)
  - Estudiantes_diccionario-de-datos.pdf (diccionario de datos) (renombrado del original: `Estudiantes(Descripcion).pdf`)
  - hsbdemo.Rdata (datos) (original)

  
## 3. Script

El script [`prerrequisitos.R`](https://github.com/jzavalar/probabilidad/blob/main/codigo/prerrequisitos.R) tiene dos partes. La primera prepara el ambiente con los paquetes que requiere con uno de los tres métodos y la segunda prepara los archivos de datos requeridos. 

### 3.1. Preparación del ambiente 

Si durante la instalación de algunos paquetes exitieran errores de compilación, con el menú `Packages` -> `Install` -> `paquetes` o con el script, se deben instalar los archivos que se requieran, según el sistema operativo que esté usando. Por ejemplo, en Fedora, se instalaron siguientes archivos, como sigue desde la `Terminal`:

```
$ sudo dnf install libcurl-devel
$ sudo dnf install harfbuzz-devel fribidi-devel
$ sudo dnf install freetype-devel libpng-devel libtiff-devel libjpeg-turbo-devel
```

En este caso se usó el Método 3, con la instalación del paquete `renv` para que se pueda reproducir con exactitud. 

### 3.2. Preparación de datos

Luego, el script usa el archivo de datos [Estudiantes.Rdata](https://github.com/hllinas/DatosPublicos/blob/main/Estudiantes.Rdata) del autor como base y crea los otros archivos de datos que requieren los tutoriales, para su funcionamiento, mediante el paquete `rio`.

Supongo que, con algunas correcciones menores, todos los demás [tutoriales del dr. LLinás en RPubs](https://rpubs.com/hllinas/) que requieran los datos de este repositorio, funcionarán correctamente. 


[J. Zavala](https://t.me/jzavalar).

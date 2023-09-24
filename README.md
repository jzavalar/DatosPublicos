# Probabilidad

Este repositorio corresponde a una versión actualizada del repositorio [DatosPublicos](https://github.com/hllinas/DatosPublicos) del dr. Humberto LLinás, disponible en GitHub. Los archivos del repositorio original son:

- README.md (este archivo)
- Estudiantes.RData (datos)
- Estudiantes(Descripcion).pdf (Diccionario de datos de Estudiantes.RData, que se renombró a Estudiantes_diccionario-de-datos.pdf)
- hsbdemo.Rdata (datos)

Al repositorio original se la han agregado los siguientes archivos:

Archivos del proyecto:
- probabilidad.Rproj
- renv (directorio del paquete `renv`)
- renv.lock (snapshot de `renv`)
- codigo (directorio de código):
  - 9.1_Probabilidad-en-R_Conceptos.Rmd
  - 9.2_Probabilidad-en-R_Muestreo.Rmd
  - 9.3_Probabilidad-en-R_Conteo.Rmd
  - 9.4_Probabilidad-en-R_Probabilidad-clasica.Rmd
  - 9.5_Probabilidad-en-R_Probabilidad-condicional.Rmd
  - imagenes (directorio de imagenes requeridas el los archivos anteriores)
  - prerrequisitos.R
- datos (directorio de datos)


Esencialmente, se ha preparado el script [`prerrequisitos.R`](https://github.com/jzavalar/DatosPublicos/blob/main/prerrequisitos.R) para que el tutorial [Probabilidad Condicional](https://github.com/jzavalar/DatosPublicos/blob/main/R_Prob_Condicional.Rmd) se compile correctamente y se reproduzca sin errores. Una copia puede encontrarse en [RStudio.cloud](https://posit.cloud/content/6287627). 

El script prepara el ambiente con los paquetes que requiere con uno de los tres métodos. Si durante la instalación de algunos paquetes exitieran errores de compilación, con el menú `Packages` -> `Install` -> `paquetes` o con el script, se deben instalar los archivos que se requieran, según el sistema operativo que esté usando. Por ejemplo, en Fedora, se instalaron siguientes archivos, como sigue desde la `Terminal`:

```
$ sudo dnf install libcurl-devel
$ sudo dnf install harfbuzz-devel fribidi-devel
$ sudo dnf install freetype-devel libpng-devel libtiff-devel libjpeg-turbo-devel
```

En este caso se usó el Método 3, con la instalación del paquete `renv` para que se pueda reproducir con exactitud. 

Luego, el script usa el archivo de datos [Estudiantes.Rdata](https://github.com/hllinas/DatosPublicos/blob/main/Estudiantes.Rdata) del autor como base y crea los otros archivos de datos que requieren los tutoriales, para su funcionamiento, mediante el paquete `rio`.

Supongo que, con algunas correcciones menores, todos los demás [tutoriales del dr. LLinás en RPubs](https://rpubs.com/hllinas/) que requieran los datos de este repositorio, funcionarán correctamente. 

El tutorial referido con anterioridad es parte del capítulo **Probabilidad en R**, que comprende los siguientes subcapítulos:

- [9.1. Experimento, espacio muestral y evento en R](https://rpubs.com/hllinas/R_Exp-Omega-Evento),
- [9.2. Muestreo desde una urna en R](https://rpubs.com/hllinas/R_Urnas),
- [9.3. Técnicas de conteo en R](https://rpubs.com/hllinas/R_Conteo),
- [9.4. Probabilidad clásica en R](https://rpubs.com/hllinas/R_Prob_Clasica) y
- [9.5. Probabilidad condicional en R](https://rpubs.com/hllinas/R_Prob_Condicional). 

En general, considero que, este capítulo y la referencia completa, es una fuente de gran calidad, en español, para el estudio del tema. Mi agradecimiento al autor.

[J. Zavala](https://t.me/jzavalar).



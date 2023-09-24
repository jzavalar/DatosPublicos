# prerrequisitos.R
#
# Instalación los paquetes necesarios y
# Preparación los archivos de datos, desde https://github.com/hllinas/DatosPublicos
# para el tutorial Probabilidad Condicional: https://rpubs.com/hllinas/R_Prob_Condicional
# 
# Autor: profr. dr. J. Zavala
# Telegram: https://t.me/jzavalar
# Fecha: septiembre de 2023

# Se puede usar uno de los tres métodos siguientes, 
# resolviendo los errores al instalar los archivos que se requieran

# Metodo 1:
# Instalar el paquete prob
# Checar si prob está instalado
if (!require("prob")) {
  # Instalar paquete 'remotes'
  if (!require("remotes")) {
    install.packages("remotes")
  }
  # Instalar dependencias y paquete 'prob'
  # fuente: https://community.rstudio.com/t/installation-prob-package/157668/2
  remotes::install_github("cran/fOptions")
  remotes::install_github("cran/fAsianOptions")
  
  remotes::install_github("cran/prob")
}


# Instalar el paquete 'repmis'
if (!require("repmis")) {
  if (!require("devtools")) {
    install.packages("devtools",force=TRUE)
  } else {
    # Fuente: https://www.r-project.org/nosvn/pandoc/repmis.html
    devtools::install_github('christophergandrud/repmis')
  }
}


# Instalar el paquete 'rio'
if (!require("rio")) {
  # Instalar paquete y los formatos
  install.packages("rio")
  rio::install_formats()
}


# Metodo 2:
# Alternativamente, ejecutar el siguiente código, linea por linea:
install.packages("remotes")
remotes::install_github("cran/fOptions")
remotes::install_github("cran/fAsianOptions")
remotes::install_github("cran/prob")
install.packages("devtools")
devtools::install_github('christophergandrud/repmis')
install.packages("rio")
rio::install_formats()


# Metodo 3: Paquete 'renv'
# instalar el paquete renv, solo por primera vez
library(renv)
if (!require("renv")) {
  install.packages("renv")
}
# alternativamente, ejecutar el siguiente código:
install.packages("renv")
library(renv)
renv::status()
renv::init()
renv::activate()

renv::install(packages="remotes")
renv::install(packages="cran/fOptions")
renv::install(packages="cran/fAsianOptions")
renv::install(packages="cran/prob")
renv::install(packages="devtools")
renv::install(packages="christophergandrud/repmis")
renv::install(packages="rio")
rio::install_formats()
renv::install(packages="rmarkdown")
renv::install(packages="knitr")


# Preparación de los datos
# Preparar los datos de manera local
if (file.exists('./datos/Estudiantes.Rdata')) {
} else {  
  # cargar paquete rio
  library(rio)
  
  # lista los archivos de ./datos/
  list.files(path="./datos/", pattern=NULL, all.files=FALSE,
             full.names=FALSE)

    # archivo de datos, en Internet
  url_Estudiantes <- "https://github.com/hllinas/DatosPublicos/blob/main/Estudiantes.Rdata?raw=false"
  url_hsbdemo <- "https://github.com/hllinas/DatosPublicos/blob/main/hsbdemo.Rdata?raw=false"

  # archivo de datos original
  url_hsbdemo_dta <- "https://stats.oarc.ucla.edu/stat/data/hsbdemo.dta"
  # Fuente: https://search.r-project.org/CRAN/refmans/UPG/html/program.html
  url_hsbraw_csv <- "https://stats.idre.ucla.edu/stat/data/hsbraw.csv"
  
  # copiar archivo de Internet al directorio local
  # nombres de los archivos
  # Estudiantes
  archivo_est_rdata <- './datos/Estudiantes.Rdata'
  archivo_est_csv <- './datos/Estudiantes.csv'
  archivo_clip <- './datos/clipboard'
  
  # hsbdemo
  archivo_hsb_rdata <- './datos/hsbdemo.Rdata'
  archivo_hsb_dta <- './datos/hsbdemo.dta'
  archivo_hsbraw_csv <- './datos/hsbraw.csv'
  
  # Probar cargar datos
  Estudiantes <- import(url_Estudiantes)
  hsbdemo <- import(url_hsbdemo)

  # archivo originales
  hsbdemo_dta <- import(url_hsbdemo_dta)
  hsbraw_csv <- import(url_hsbraw_csv)

  # Copiar archivos
  # copiar Estudiantes.Rdata de Internet al directorio local
  convert(url_Estudiantes,archivo_est_rdata)
  # convertir Estudiantes.Rdata de Internet a .csv al directorio local
  convert(url_Estudiantes,archivo_est_csv)
  
  # copiar hsbdemo.Rdata de Internet al directorio local
  convert(url_hsbdemo,archivo_hsb_rdata)
  
  # copiar hsbdemo.dta de Internet al directorio local
  convert(url_hsbdemo_dta,archivo_hsb_dta)
  # copiar archivo hsbraw.csv de Internet al directorio local
  convert(url_hsbraw_csv,archivo_hsbraw_csv)
  
  # Crear el archivo .csv "clipboard"
  # Checar si existe el archivo
  if(file.exists(archivo_est_csv)){
    file.copy(archivo_est_csv,archivo_clip)
  } else {
    print('Archivo no encontrado :')
  }
  # Borrar el ambiente de la memoria
  rm(list = ls())
  # lista los archivos de datos
  list.files(path="./datos/", pattern=NULL, all.files=FALSE,
             full.names=FALSE)
  
}



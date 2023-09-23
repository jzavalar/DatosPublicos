# prerrequisitos.R
#
# Instalación los paquetes necesarios y
# Preparación los archivos de datos, desde https://github.com/hllinas/DatosPublicos
# para el tutorial Probabilidad Condicional: https://rpubs.com/hllinas/R_Prob_Condicional
# 
# Autor: profr. dr. J. Zavala
# Telegram: https://t.me/jzavalar
# Fecha: septiembre de 2023

# instalar el paquete prob
# checar si prob está instalado
if (!require("prob")) {
  # instalar paquete remotes
  if (!require("remotes")) {
    install.packages("remotes")
  }
  # instalar dependencias y paquete prob
  # a partir de la fuente: 
  # https://community.rstudio.com/t/installation-prob-package/157668/2
  remotes::install_github("cran/fOptions")
  remotes::install_github("cran/fAsianOptions")
  remotes::install_github("cran/prob")
}
# alternativamente, ejecutar el siguiente código:
install.packages("remotes")
remotes::install_github("cran/fOptions", force = TRUE)
remotes::install_github("cran/fAsianOptions", force = TRUE)
remotes::install_github("cran/prob", force = TRUE)


# instalar el paquete repmis
if (!require("repmis")) {
  if (!require("devtools")) {
    install.packages("devtools",force=TRUE)
  } else {
    # fuente: https://www.r-project.org/nosvn/pandoc/repmis.html
    devtools::install_github('christophergandrud/repmis')
  }
}
# Alternativamente usar el siguiente código:
install.packages("devtools",force=TRUE)
devtools::install_github('christophergandrud/repmis')


# instalar el paquete rio
if (!require("rio")) {
  # instalar paquete
  install.packages("rio")
  rio::install_formats()
}
# Alternativamente usar el siguiente código:
install.packages("rio")
rio::install_formats()

# instalar el paquete renv, solo por primera vez
library(renv)
if (!require("renv")) {
  install.packages("renv")
}
# alternativamente, ejecutar el siguiente código:
install.packages("renv")
library(renv)
renv::activate()
renv::install(packages="remotes")
renv::install("cran/fOptions")
renv::install("cran/fAsianOptions")
renv::install("cran/prob")
renv::install(packages="devtools")
renv::install(packages="christophergandrud/repmis")
renv::install(packages="rio")
rio::install_formats()



# Preparación de los datos
# preparar los datos de manera local
if (file.exists('./Estudiantes.Rdata')) {
} else {  # cargar datos
  # cargar paquete rio
  library(rio)
  
  # archivo de datos, en Internet
  url_data <- "https://github.com/hllinas/DatosPublicos/blob/main/Estudiantes.Rdata?raw=false"
  
  # copiar archivo de Internet al directorio local
  # nombres de los archivos
  archivo_rdata <- './Estudiantes.Rdata'
  archivo_csv <- './Estudiantes.csv'
  archivo_clip <- './clipboard'
  
  # convertir a Rdata
  convert(url_data,archivo_rdata)
  # convertir a csv
  convert(url_data,archivo_csv)
  
  # Crear el archivo .csv "clipboard"
  # Checar si existe el archivo
  if(file.exists(archivo_csv)){
    file.copy(archivo_csv,archivo_clip)
  } else {
    print('Archivo no encontrado :')
  }
}



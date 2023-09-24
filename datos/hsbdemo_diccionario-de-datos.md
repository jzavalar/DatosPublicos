## Diccionario de datos de hsbdemo

### Conjunto de datos hsbdemo.Rdata

El conjunto de datos `hsbdemo.Rdata` contiene 17 variables sobre 200 estudiantes que explican el comportamiento de los estudiantes que ingresan a la escuela secundaria al elegir un 'programa' (`prog`) de tres posibles: general, vocacional o académico. Este conjunto de datos tiene los siguientes campos:

1. `Student`: número de registro del estudiante, número.
2. `id`: código de identificación del estudiante, número.
3. `gender`: genero, el género del estudiante: 'female' (mujer), 'male' (hombre).
4. `ses`: socioeconomic status (estrato socioeconómico): 'low' (bajo), 'middle' (medio) o 'high' (alto).
5. `schtype`: (school type) tipo de escuela: public, private.
6. `prog`: (type of program) tipo de programa elegido por el estudiante: 'academic' (académico), 'general' (general), 'vocational' (vocacional) (variable de respuesta).
7. `read`, (reading score) puntaje en lectura (variable continua, de 0 a 100) 
8. `write`, (writing score) puntaje en lectura (variable continua, de 0 a 100) 
9. `math`, (math score) puntaje en matemáticas (variable continua, de 0 a 100)
10. `science`, (science score) puntaje en lectura (variable continua, de 0 a 100) 
11. `socst` , (social science score) puntaje en ciencias sociales (variable continua, de 0 a 100)
12. `Honors`, (honors english) honores en inglés: 0: not enrolled, 1: enrolled.
13. `awards`, (premios), número de premios recibidos, de 0 a 7.
14. `cid`, puntaje no especificado: de 1 a 20.
15. `prog0`, programa: general, variable binaria derivada de la variable `prog`: 0:no, 1:si.
16. `prog1`, programa: vocacional, variable binaria derivada de la variable `prog`, variable binaria: 0:no, 1:si.
17. `prog2`, programa: académico, variable binaria derivada de la variable `prog`, variable binaria: 0:no, 1:si.

Este conjunto de datos es una modificación de los conjuntos de datos base: *Students Program Choices* (`hsbdemo.dta`) y `hsbraw.csv`, ambos atribuidos a la University of Califonia Los Angeles (UCLA): Stat Consulting Group (2016), mismos que se explican a continuación. De manera general, se han incluido los siguientes cambios:

- El campo 1: `Student` es nuevo.
- El campo 3: `gender` cambió de nombre de `female` a `gender`.
- Los campos 15: `prog0`, 16: `prog1` y 17: `prog2` son variables derivadas de la variable `prog`.

### Conjunto de datos *Students Program Choices*

El conjunto de datos *Students Program Choices* es atribuido a la University of Califonia Los Angeles (UCLA): Stat Consulting Group. Existen dos versiones publicadas: el archivo `hsbdemo.dta` y el archivo `hsbraw.csv`. 

El archivo [`hsbdemo.dta`](https://stats.oarc.ucla.edu/stat/data/hsbdemo.dta) está referido en CRAN como el Conjunto de datos [Students Program Choices](https://search.r-project.org/CRAN/refmans/UPG/html/program.html). A continuación, se describen las variables:

1. `id`, código de identificación del estudiante.
2. `female`, el género del estudiante: 0:'no' o 'male', 1: 'yes' o 'female',
3. `ses`, estrato socioeconómico: 1: low, 2: middle o 3: high.
4. `schtype`, (school type) tipo de escuela: 1: public, 2: private.
5. `prog`, (type of program) tipo de programa elegido por el estudiante: 1: académico, 2: general, 3: vocacional (variable de respuesta).
6. `read`, (reading score) puntaje en lectura (variable continua, de 0 a 100) 
7. `write`, (writing score) puntaje en lectura (variable continua, de 0 a 100) 
8. `math`, (math score) puntaje en matemáticas (variable continua, de 0 a 100)
9. `science`, (science score) puntaje en lectura (variable continua, de 0 a 100) 
10. `socst` , (social science score) puntaje en ciencias sociales (variable continua, de 0 a 100)
11. `Honors`, (honors english) honores en inglés: 0: not enrolled, 1: enrolled.
12. `awards`, (premios), número de premios recibidos, de 0 a 7.
13. `cid`, puntaje no especificado: de 1 a 20.

El conjunto de datos conjunto de datos *Students Program Choices* en el archivo [`hsbraw.csv`](https://stats.idre.ucla.edu/stat/data/hsbraw.csv) es una copia del conjunto de datos `hsbdemo.dta` y contiene los mismos datos, pero los valores de los campos se han  transformado de claves a factores, como puede apreciarse a continuación:

1. `id`, código de identificación del estudiante.
2. `female`, el género del estudiante: 'female', 'male'.
3. `ses`, estrato socioeconómico: 'low', 'middle' o 'high'.
4. `schtype`, (school type) tipo de escuela: 'public', 'private'.
5. `prog`, (type of program) tipo de programa elegido por el estudiante: 'académico', 'general', 'vocacional'.
6. `read`, (reading score) puntaje en lectura (variable continua, de 0 a 100) 
7. `write`, (writing score) puntaje en lectura (variable continua, de 0 a 100) 
8. `math`, (math score) puntaje en matemáticas (variable continua, de 0 a 100)
9. `science`, (science score) puntaje en lectura (variable continua, de 0 a 100) 
10. `socst` , (social science score) puntaje en ciencias sociales (variable continua, de 0 a 100)
11. `Honors`, (honors english) honores en inglés: 'not enrolled', 'enrolled'.
12. `awards`, (premios), número de premios recibidos, de 0 a 7.
13. `cid`, puntaje no especificado: de 1 a 20.


### Referencias

- UCLA (s.f.). Program dataset (hbsdemo dataset). [data file] [hbsdemo.dta](https://stats.oarc.ucla.edu/stat/data/hsbdemo.dta), consulado en https://search.r-project.org/CRAN/refmans/UPG/html/program.html . 
- UCLA (s.f.). hsbraw dataset. [data file], [hsbraw.csv](https://stats.idre.ucla.edu/stat/data/hsbraw.csv) consultado en https://stats.oarc.ucla.edu/stat/data/intro_r/intro_r_interactive_flat.html#dataset-files
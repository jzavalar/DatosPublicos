## hsbdemo Diccionario de datos

El conjunto de datos `hsbdemo.Rdata`  (UCLA: Stat Consulting Group, 2016) contiene variables sobre 200 estudiantes. Los estudiantes que ingresan a la escuela secundaria hacen la elección de un programa de tres posibles: general, vocacional y académico. Su elección puede ser modelada usando algunas variables predictoras. A continuación, se describen las variables:

1. `Student`
2. `ID`, el estudiante y su código de identificación.
  gender, el género del estudiante: female, male.
3. `ses`, el estrato socioeconómico: low, middle, high.
4. `schtype`, el tipo de escuela: private, public.
5. `prog`, el tipo de programa elegido por el estudiante: general, vocacional y académico, la cual será nuestra variable de respuesta.
6. `read`, `write`, `math`, `science` y `socst` son variables continuas que representan los puntajes en lectura, escritura, matemática, ciencia y sociales, respectivamente.
7. `Honors`, estado de honores: enrolled, not enrolled.
8. `awards`, número de premios recibidos: de 0 a 9.
9. `cid`, puntaje no especificado: de 0 a 20.
10. `prog0`, prog=general, variable binaria: 1=si 0=de otro modo.
11. `prog1`, prog=vocation, variable binaria: 1=si, 0=de otro modo.
12. `prog2`, prog=academic, variable binaria: 1=si, 0=de otro modo.

### Referencias

UCLA: Stat Consulting Group. (2016). hbsdemo [hbsdemo.dta File](https://stats.oarc.ucla.edu/stat/data/hsbdemo.dta). ([program data](https://search.r-project.org/CRAN/refmans/UPG/html/program.html))
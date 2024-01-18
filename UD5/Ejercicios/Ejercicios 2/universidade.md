Nota: los ejercicios 21,22,24,25,26 y 27 no funcionan

1. Nombre de la universidad.

//universidad/nombre

2. Pais de la universidad.

//universidad/pais

3. Nombres de las carreras.

//carrera/nombre

4. Años de plan de estudio de las carreras.

//carrera/plan

5. Nombres de todos los alumnos.

//alumno/nombre

6. Identificadores de todas las carreras.

//carrera/@id

7. Datos de la carrera cuyo id es c01.

//carrera[@id='c01']

8. Centro en que se estudia de la carrera cuyo id es c02.

//carrera[@id='c02']/centro

9. Nombre de las carreras que tengan subdirector.

//carrera[contains(subdirector,'')]/nombre

10. Nombre de los alumnos que estén haciendo proyecto.

//alumno[estudios/proyecto]/nombre

11. Códigos de las carreras en las que hay algún alumno matriculado.

//alumno/estudios/carrera/@codigo

12. Apellidos y nombre de los alumnos con beca.

//alumno[@beca='si']/apellido1 | //alumno[@beca='si']/apellido2 | //alumno[@beca='si']/nombre

13. Nombre de las asignaturas de la titulación c04.

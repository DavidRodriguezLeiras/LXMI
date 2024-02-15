1. Nombre de los módulos que se imparten en el instituto.

//modulo/nombre

2. Nombre de los módulos del ciclo ASIR.

//modulo[ciclo/text()='ASIR']/nombre

3. Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo.

//modulo[curso/text()='2']/nombre

4. Nombre de los módulos de menos de 5 horas semanales.

//modulo[horasSemanales/text()<5]/nombre

5. Nombre de los módulos que se imparten en el primer curso de ASIR.

//modulo[ciclo/text()='ASIR'][curso/text()='1']/nombre

6. Horas semanales de los módulos de más de 3 horas semanales.

//modulo[horasSemanales/text()>3]/horasSemanales

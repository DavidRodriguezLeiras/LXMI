1. Extraer todos los elementos <peso> (etiqueta incluida).

//producto/peso

2. Extraer las cantidades de todos los elementos <peso> (sin la etiqueta <peso>).

//peso/text()

3. Extraer el peso del último elemento.

//peso[producto/last()]

4. Extraer las distintas unidades en las que se han almacenado los pesos.

(//peso | //inventario/producto)[last()]

5. Extraer el penúltimo codigo.

//producto[position()=2]/@codigo

6. Extraer el peso del elemento cuyo codigo sea AAA-111.

/inventario/producto[@codigo='AAA-111']/peso/text()

7. Extraer el nombre de los productos que hayan puesto el peso en gramos.

//producto[peso[@unidad='g']]/nombre

8. Extraer el codigo de los productos cuyo nombre sea Monitor.

//producto[nombre/text()='Monitor']/@codigo

9. Extraer el código de los productos que pesen más de un cuarto de kilo.

//producto[peso/@unidad='g'][peso/text()>250]/@codigo | //producto[peso/@unidad='kg'][peso/text()>0.25]/@codigo

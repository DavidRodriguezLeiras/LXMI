1. Título y editorial de todos los libros.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y la editorial de cada libro deben estar separados por un guión medio (-).

for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro
return <libro>{$lib/titulo} - {$lib/editorial}</libro>

2. El título de todos los libros de menos de 400 páginas.
* Se debe obtener únicamente los datos, sin etiquetas.

for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro
where $lib/paginas<400
return <libro>{$lib/titulo}</libro>


3. La cantidad de libros de más de 400 páginas.

let $lib := doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro[number(paginas)>400]
let $count := count($lib)
return $count


4. Una lista HTML con el título de los libros de la editorial O'Reilly Media ordenados por título.

<html><body><ul>{for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro[editorial="O'Reilly Media"]/titulo
return  <li>{$lib}</li>}</ul></body></html>

5. Título y editorial de los libros de 2018 y 2019.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y la editorial deben ir dentro de los elementos <titulo> y <editorial> respectivamente.

 for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro
 where $lib/@publicacion=2018 or $lib/@publicacion=2019
 return <libro><titulo>{$lib/titulo/text()}</titulo><editorial>{$lib/editorial/text()}</editorial></libro> 


6. Título y editorial de los libros con más de un autor.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y la editorial deben ir dentro de los elementos <titulo> y <editorial> respectivamente.

 for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro
 where count($lib/autor)>1
 return <libro><titulo>{$lib/titulo/text()}</titulo><editorial>{$lib/editorial/text()}</editorial></libro> 
 

7. Título y año de publicación de los libros que tienen versión electrónica.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y el año de publicación deben ir dentro de los elementos <titulo> y <fecha-publicacion> respectivamente.

 for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro
 where $lib/edicionElectronica = 'true'
 return <libro><titulo>{$lib/titulo/text()}</titulo><fecha_publicacion>{data($lib/@publicacion)}</fecha_publicacion></libro> 


8. Título de los libros que no tienen versión electrónica.
* Se debe obtener únicamente los datos, sin etiquetas.

 for $lib in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\biblioteca\biblioteca.xml")//biblioteca/libros/libro
 where not($lib/edicionElectronica) 
 return $lib/titulo/text()

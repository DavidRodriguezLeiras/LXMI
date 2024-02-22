Escribe las consultas XQuery que permitan obtener la siguiente información:
1. cada uno de los nombres de las categorias con la etiqueta "categoria".
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //categoria
return <categoria>{$a/text()}</categoria>

2. los titulos de los tutoriales con el número de visitas entre paréntesis, ambos dentro de la misma etiqueta "lostutoriales".
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial
return <lostutoriales>{$a/titulo/text()} ({$a/visitas/text()})</lostutoriales>


3. los nombres de los tutoriales con menos de 2000 visitas
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial[visitas/text()<2000]
return $a/titulo


4. los nombres de los tutoriales de XML con más de 30.000 visitas
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial[visitas/text()>30000][categoria/text() = 'XML']
return $a/titulo


5. el número total de visitas
let $b := doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //visitas
return sum($b)


6. los nombres de las categorías distintas, cada una en una etiqueta <categoriadistintas>
let $a := doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //categoria
let $diff := distinct-values($a)
for $a in $diff
return <categoriasdistintas>{$a}</categoriasdistintas>


7. nombres y apellidos de los autores eliminando los repetidos y acompañar cada nombre con todos sus tutoriales,
ordenados alfabeticamente por nombre de autor; cada autor en una etiqueta <autor> que contendrá una etiqueta <nombreyapellidos> y una etiqueta <titulo>.
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial
order by $a/autor/nombre

return <autor>
          <nombreyapellidos>{distinct-values($a/autor/nombre)} - {distinct-values($a/autor/apellidos)}</nombreyapellidos>
          <titulo>{$a/titulo/text()}</titulo>
       </autor>

8. la media de vistas de los tutoriales, dentro de una etiqueta <media>.
let $a := doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //visitas
return <media>{avg($a/text())}</media>


9. cuantos tutoriales de XML hay, dentro de una etiqueta <totaltutoriales>.
let $a := doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial[categoria='XML']
return <totaltutoriales>{count($a)}</totaltutoriales>


10. el nombre del tutorial y su categoría, ordenado por el nombre de cada categoría
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial
order by $a/categoria
return <tutoriales>{$a/titulo/text()} - {$a/categoria/text()}</tutoriales>


11. todos los datos de cada tutorial excepto las visitas.
for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial/*[not(self::visitas)]
return $a


12. En una tabla de HTML de dos columnas, el título de los tutoriales y los nombres de los autores.
<table>
  <tr>
    <th>Titulo</th>
    <th>Nombre</th>
  </tr>
{for $a in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\tutoriales\tutoriales.xml") //tutorial
return
<tr>
  <th>{$a/titulo/text()}</th>
  <th>{$a/autor/nombre/text()}</th>
</tr> 
}
</table> 
          


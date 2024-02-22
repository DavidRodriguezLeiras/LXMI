Escribe las consultas XQuery que permitan obtener la siguiente información:
1. Una lista que contiene, para cada receta, el elemento <titulo> de la receta y un elemento <calorias> que contenga el número de calorías.

<ul>
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//recetas/receta
  return <ul>
  <li><titulo>{$recipe/titulo/text()}</titulo></li>
  <li><calorias>{data($recipe/nutricion/@caloria)}</calorias></li>
  </ul>
}
</ul>

2. Una lista similar a la primera, ordenada según las calorías.

<ul>
{
  for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//recetas/receta
  let $cal := $recipe/nutricion/@caloria
  order by xs:int($cal)
  return
    <li>
      <titulo>{$recipe/titulo/text()}</titulo>
      <calorias>{data($cal)}</calorias>
    </li>
}
</ul>


3. Una lista similar a la primera, ordenada alfabéticamente según el título.

<ul>
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//recetas/receta
  let $title := $recipe/titulo
  order by xs:string($recipe)
  return <ul>
  <li><titulo>{$recipe/titulo/text()}</titulo></li>
  <li><calorias>{data($recipe/nutricion/@caloria)}</calorias></li>
  </ul>
}
</ul>


4. Una lista similar a la primera, ordenada según el contenido de grasa.

<ul>
{
  for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//recetas/receta
  let $cal := $recipe/nutricion/@grasa
  order by xs:int($cal)
  return
    <li>
      <titulo>{$recipe/titulo/text()}</titulo>
      <grasa>{data($cal)}</grasa>
    </li>
}
</ul>


5. Una lista similar a la primera, con el título como atributo y las calorías como contenido.

<ul>
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//recetas/receta
let $a := data($recipe/titulo)
  return <ul>
  <li><calorias titulo="{$a}">{data($recipe/nutricion/@caloria)}</calorias></li>
  </ul>
}
</ul>


6. Una lista que contenga para cada receta, el título como atributo y cada uno de los ingredientes de nivel superior (sin añadir los ingredientes que están dentro de otros ingredientes).

<ul>
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//recetas/receta
let $a := data($recipe/titulo)
let $b := $recipe/ingrediente
  return  <li><a titulo="{$a}">{data($b/@nombre)}</a></li>
}
</ul>

7. Una lista con cada una de las recetas que contengan el ingrediente harina. Poner el título de la receta como atributo del elemento receta.
<ul>
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//receta
where some $ing in $recipe/ingrediente satisfies contains($ing/@nombre,"harina") 
  return
  <li>{$recipe}</li>
}
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//receta
where some $ang in $recipe/ingrediente/ingrediente satisfies contains($ang/@nombre,"harina")
 return
  <li>{$recipe}</li>
}
</ul>

8. Una lista de todas aquellas recetas que tengan un ingrediente llamado relleno y este contenga en su interior más de 5 elementos ingrediente. 
* La lista resultante estará formada por elementos receta que contienen un atributo titulo con el valor del elemento titulo de la receta. 
* Además, dentro de cada elemento receta habrá elementos ingrediente con el nombre de cada uno de los ingredientes.

<ul>
{
for $recipe in doc("U:\DATOS PERSOAIS\linguaxes de marcas\UD5\xQuery\Ejercicios_xQuery\recetas\recetas.xml")//receta[count(ingrediente)<5]
where some $ing in $recipe/ingrediente satisfies contains($ing/@nombre,"relleno")
  return
  <li>{$recipe}</li>
}
</ul>


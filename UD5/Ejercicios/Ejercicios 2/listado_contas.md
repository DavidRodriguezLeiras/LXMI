1. Extraer la cantidad depositada en el fondo con cuenta asociada 20-A.
//listado/fondo[cuentaasociada='20-A']/datos/cantidaddepositada/text()

2. Extraer un listado sin etiquetas de todas las monedas usadas por los distintos fondos.
3. 
//fondo/datos/moneda/text()

4. Extraer el DNI de las cuentas que usen dólares como moneda de base.
//cuenta[saldoactual[@moneda='dólares']]/titular/@dni

5. Extraer toda la información de los fondos que usen Euros por un valor inferior a 2500.
//fondo[datos/moneda='Euros'][datos/cantidaddepositada<2500]
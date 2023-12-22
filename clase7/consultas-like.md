# Consultas de coincidencia ( que contenga )

> Las consultas de coincidencia se utilizan para traer información donde vamos especificar un filtro que contenga cierta cadena de caractéres 

> Traer nombre, precio y descripción 
> de la tabla productos 
> que contenga la cadena 'bluetooth' en la columna descripción

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%';

> Utilizamos la palabra reservada Like
> Utilizamos el carácter **%** como una especie de 'comodín' 
> que podría ocupar uno, varios o hasta ningún carácter


> Utilizamos el **_** (underscore o guión bajo) 
> como un comodín de 1 (un) solo carácter

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdNombre LIKE '_40%';

> Buscar una cadena de 6 (seis) caractéres de longitud

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdNombre LIKE '______';

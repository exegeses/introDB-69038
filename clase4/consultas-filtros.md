# Consultas con filtrado de registros 

> Filtrar registros signifaca que vamos
> a traer sólo los registros que 
> que cumplan con una condición  

> Para poder implementar filtros
> usamos la palabra reservada 
> **WHERE**  

> Ejemplo práctico: 
> Traer nombre y precio de la tabla destinos
> con un precio que no supere los 8000

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio <= 8000;  

> Traer nombre y precio de la tabla destinos
> con un precio que no supere los 8000 
> y que no sea menor a 6500 

    SELECT destNombre, destPrecio  
      FROM destinos  
       WHERE destPrecio >= 6500  
         AND destPrecio <= 8000;

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio BETWEEN 6500 AND 8000;  

> Traer nombre y precio de la tabla destinos 
> de la región 5 

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion = 5;   

> Traer nombre y precio de la tabla destinos
> de la región 5 y además de la región 3 

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion = 3  
      OR idRegion = 5;  

    SELECT destNombre, destPrecio  
       FROM destinos  
       WHERE idRegion IN( 3, 5 );  
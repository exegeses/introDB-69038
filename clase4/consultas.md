# Consultas en SQL

## Consultas a server

> Instrucciones vistas  

    -- listar las bases    
    SHOW DATABASES;  
    
    -- listar las tablas de una base      
    SHOW TABLES;  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> Para hacer otras consultas a server utilizamos la palabra reservada **SELECT**  

    -- consultar la fecha actual  
    SELECT NOW(), CURRENT_DATE();  

## Consultas a una tabla de una base de datos  

> Para hacer consultas a una tabla de una base de datos
> utilizamos la palabra reservada **SELECT** y además dedbemos especificar la tabla a la que queremos consultar 
> con la palabra reservada **FROM**


> Sintáxis: 
    
    SELECT * FROM nombreTabla;  

> Ejemplo práctico: 

    SELECT * FROM destinos; 

> La consulta anterior (usando *) trae los datos de todas las columnas.
 
> Si queremos traer datos de algunas de las columnas, 
> debemos especificarlas luego de **SELECT**

> Sintáxis:

    SELECT nombreCol2, nombreCol3  
      FROM nombreTabla;  

> Ejemplo práctico:

    SELECT destNombre, destPrecio 
      FROM destinos;  

### Ordenar los resultados de una consulta

> Para ordenar los resultados de una consulta  
> utilizamos la palabra reservada **ORDER BY**  

> Ejemplo práctico:

    SELECT destNombre, destPrecio 
      FROM destinos  
      ORDER BY destPrecio;

    SELECT destNombre, destPrecio 
      FROM destinos  
      ORDER BY destNombre;

    SELECT destNombre, destPrecio  
      FROM destinos  
      ORDER BY idRegion, destPrecio;

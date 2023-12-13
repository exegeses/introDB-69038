# Modificación de estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTable  
        CHANGE nombreActual nombreNuevo tipo;  

> Ejemplo práctico: 

    ALTER TABLE productos_apple  
        CHANGE nombre producto varchar(30) not null;


## Cambiar el tipo de dato de una columna

    ALTER TABLE nombreTable  
        MODIFY nobreColumna tipo;  

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        MODIFY producto varchar(50) not null;


## Agregar una nueva columna al final de la tabla

    ALTER TABLE nombreTable  
        ADD nombreColumna tipo;  

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        ADD descripcion varchar(500) not null;

## Agregar una nueva columna despu´´es de una columna existente 

    ALTER TABLE nombreTable  
        ADD nombreColumnaNueva tipo  
        AFTER nombreColumnaExistente;

    ALTER TABLE productos_apple  
        ADD descripcion varchar(500) not null  
        AFTER precio;

## Eliminar una columna de una tabla

    ALTER TABLE nombreTable   
        DROP nombreColumna; 

> Ejemplo práctico:

    ALTER TABLE productos_apple  
        DROP descripcion;


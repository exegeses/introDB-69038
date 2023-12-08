# Modificación de datos en una tabla

> Para modificar datos en una tabla
> utilizazºmos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
        SET  
            nombreCol = valor  
        WHERE colID = valorID;  

> Ejemplo práctico: 

    UPDATE personas  
        SET  
            nombre = 'Vanessa'  
        WHERE id = 3;

    UPDATE personas  
        SET  
            dni = 36520148,  
            alta = '2005-09-29'  
        WHERE id = 2;


> Modificar precio del destino 
> con el ID 1 a un precio de un 5% de aumento

    UPDATE destinos  
        SET destPrecio = destPrecio * 1.05  
      WHERE idDestino = 1;

> Modificar la región de los 
> destinos con el id 5 y el id 6
> para que tengan la regi´´on 7

    UPDATE destinos  
        SET idRegion = 7  
      WHERE idDestino = 5  
        OR idDestino = 6; 

    UPDATE destinos  
        SET idRegion = 7  
      WHERE idDestino IN( 5, 6 ); 

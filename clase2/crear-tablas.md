# Creación de tablas en SQL

> Para crear una tabla 
> utilizamos el comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombre  
    (  
        nombreColumna tipo características,    
        nombreColumna2 tipo características,   
        nombreColumna3 tipo características,   
        nombreColumna4 tipo características  
    );

> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id smallint unsigned auto_increment primary key not null,  
        apellido varchar(45) not null,
        nombre varchar(45) not null,
        dni int unique not null,
        alta date not null
    );

    CREATE TABLE productos_apple
    (  
        id smallint unsigned auto_increment primary key not null,    
        nombre varchar(30) unique not null,   
        precio decimal(10,2) unsigned not null,  
        stock smallint unsigned not null  
    );  

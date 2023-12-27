# creación de tabla departamentos

create table departamentos
(
    idDepartamento tinyint unsigned not null auto_increment primary key,
    departamento varchar(45) unique not null
);

-- Inserción de datos en tabla departamentos
INSERT INTO departamentos
VALUES
    ( DEFAULT, 'Administración' ),
    ( DEFAULT, 'Compras' ),
    ( DEFAULT, 'Ventas' ),
    ( DEFAULT, 'Atención al público' ),
    ( DEFAULT, 'Gerencia general' ),
    ( DEFAULT, 'Marketing' );

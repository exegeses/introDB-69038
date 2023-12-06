# Creación de tabla monedas

create table monedas
(
    id tinyint unsigned auto_increment primary key not null,
    exacto decimal(10,2) not null,
    aproximado float not null
);

-- inserción de datos
INSERT INTO monedas
    VALUES
        (DEFAULT, 90, 32 ),
        (DEFAULT, 32.4, 83 ),
        (DEFAULT, 83, 56.4 ),
        (DEFAULT, 56, 90 );

-- consulta
SELECT SUM(exacto), SUM(aproximado)
    FROM monedas;
# Creación de tabla regiones

CREATE TABLE regiones
(
    idRegion tinyint unsigned primary key auto_increment not null,
    regNombre varchar(50) unique not null
);

-- script para insertar datos en tabla regiones
INSERT INTO regiones
VALUES
    ( DEFAULT, 'América del Sur' ),
    ( DEFAULT, 'América Central' ),
    ( DEFAULT, 'Caribe y México' ),
    ( DEFAULT, 'América del Norte' ),
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');

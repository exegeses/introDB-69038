# Creación de tablas proyecto catálogo

-- creación de tabla marcas
create table marcas
(
    idMarca tinyint unsigned auto_increment not null primary key,
    mkNombre varchar(45) unique not null
);

-- creación de tabla categorias
create table categorias
(
    idCategoria tinyint unsigned auto_increment not null primary key,
    catNombre varchar(45) unique not null
);

-- creación de tabla productos
create table productos
(
    idProducto mediumint unsigned auto_increment not null primary key,
    prdNombre varchar(45) unique not null,
    prdPrecio decimal(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
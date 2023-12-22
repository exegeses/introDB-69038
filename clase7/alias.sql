-- los alias sirven para renombrar el encabezado de una columna
-- Utilizamos la palabra AS para crear el alias
SELECT prdNombre AS Producto,
       prdPrecio AS Precio,
       mkNombre AS Marca,
       catNombre AS Categoria
FROM productos
         JOIN marcas
              ON productos.idMarca = marcas.idMarca
         JOIN categorias
              ON productos.idCategoria = categorias.idCategoria;

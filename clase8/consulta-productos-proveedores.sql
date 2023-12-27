# consulta para saber cuáles son los proveedores de nuestros productos
-- utilizamos una tabla intermedia

-- traer nombre del producto
-- traer nombre del proveedor
-- ordenado por producto

/* versión JOIN */
SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
  FROM productos
         JOIN productos_proveedores  AS pp
          ON productos.idProducto = pp.idProducto
         JOIN proveedores
          ON proveedores.idProveedor = pp.idProveedor
  ORDER BY productos.idProducto;


/* versión Table relation */
SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
  FROM productos, proveedores, productos_proveedores AS pp
  WHERE productos.idProducto = pp.idProducto
  AND proveedores.idProveedor = pp.idProveedor
  ORDER BY productos.idProducto;
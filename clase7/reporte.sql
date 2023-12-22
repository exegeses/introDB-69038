/*
-- Query: SELECT prdNombre, prdPrecio, mkNombre, catNombre FROM productos JOIN marcas ON productos.idMarca = marcas.idMarca JOIN categorias ON productos.idCategoria = categorias.idCategoria
LIMIT 0, 1000

-- Date: 2023-12-21 22:32
*/
INSERT INTO `nombreTabla`
    (`prdNombre`,`prdPrecio`,`mkNombre`,`catNombre`)
  VALUES
    ('iPhone 12 Pro (256GB) gold',1200.00,'Apple','Smartphone');
INSERT INTO `nombreTabla` (`prdNombre`,`prdPrecio`,`mkNombre`,`catNombre`) VALUES ('Homepod Mini',99.00,'Apple','Parlantes bluetooth');
INSERT INTO `nombreTabla` (`prdNombre`,`prdPrecio`,`mkNombre`,`catNombre`) VALUES ('P40 Pro Plus 512GB',1250.00,'Huawei','Smartphone');
INSERT INTO `nombreTabla` (`prdNombre`,`prdPrecio`,`mkNombre`,`catNombre`) VALUES ('Marshall Acton II',300.00,'Marshall','Parlantes bluetooth');
INSERT INTO `nombreTabla` (`prdNombre`,`prdPrecio`,`mkNombre`,`catNombre`) VALUES ('Nikon Z6',1650.00,'Nikon','Cámaras mirorless');
INSERT INTO `nombreTabla` (`prdNombre`,`prdPrecio`,`mkNombre`,`catNombre`) VALUES ('Samsung Class QLED Q80T Series',1200.00,'Samsung','Smart TV');

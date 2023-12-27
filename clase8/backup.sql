-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb69038
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `catNombre-_UNIQUE` (`catNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (2,'Cámaras mirorless'),(6,'Consolas'),(3,'Lentes'),(4,'Parlantes bluetooth'),(5,'Smart TV'),(1,'Smartphone'),(7,'Tablets');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consulta_precios`
--

DROP TABLE IF EXISTS `consulta_precios`;
/*!50001 DROP VIEW IF EXISTS `consulta_precios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta_precios` AS SELECT 
 1 AS `id`,
 1 AS `Producto`,
 1 AS `Contado`,
 1 AS `Lista`,
 1 AS `Marca`,
 1 AS `Categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `idDestino` smallint unsigned NOT NULL AUTO_INCREMENT,
  `destNombre` varchar(50) NOT NULL,
  `idRegion` tinyint unsigned NOT NULL,
  `destPrecio` decimal(10,2) unsigned NOT NULL,
  `destAsientos` smallint unsigned NOT NULL,
  `destDisponibles` smallint unsigned NOT NULL,
  `destActivo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idDestino`),
  UNIQUE KEY `destNombre` (`destNombre`),
  KEY `idRegion` (`idRegion`),
  CONSTRAINT `destinos_ibfk_1` FOREIGN KEY (`idRegion`) REFERENCES `regiones` (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',5,10196.55,5,5,1),(2,'Amsterdam (Schiphol)',5,6231.00,5,5,1),(3,'Miami (Wilcox Field)',4,6517.00,5,5,1),(4,'Tokio (Narita)',7,8704.00,5,5,1),(5,'Kuala Lumpur (KLIA)',7,8570.00,5,5,1),(6,'Bangkok (Suvarnabhumi)',7,8469.00,5,5,1),(7,'París (Charles de Gaulle)',5,7713.00,5,5,1),(8,'Cancún (Cancún)',3,6494.00,5,5,1),(9,'Milán (Malpensa)',5,6756.00,5,5,1);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `mkNombre_UNIQUE` (`mkNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (2,'Apple'),(3,'Audiotechnica'),(6,'Huawei'),(4,'Marshall'),(1,'Nikon'),(5,'Samsung');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monedas` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `exacto` decimal(10,2) NOT NULL,
  `aproximado` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monedas`
--

LOCK TABLES `monedas` WRITE;
/*!40000 ALTER TABLE `monedas` DISABLE KEYS */;
INSERT INTO `monedas` VALUES (1,90.00,32),(2,32.40,83),(3,83.00,56.4),(4,56.00,90);
/*!40000 ALTER TABLE `monedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` int NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'González','Mónica',36520148,'2005-09-29'),(3,'Martínez','Vanessa',35741951,'2006-06-21'),(4,'Álvarez','Fernando',32912457,'2007-11-02'),(5,'Pérez','Mariano',34912457,'2005-08-08'),(6,'Gómez','Alberto',31912456,'2004-04-04');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(45) NOT NULL,
  `prdPrecio` decimal(8,2) unsigned NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `prdDescripcion` varchar(1000) NOT NULL,
  `prdImagen` varchar(45) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `prdNombre_UNIQUE` (`prdNombre`),
  KEY `https://dev.mysql.com//_idx` (`idMarca`),
  KEY `productos_categorias_idx` (`idCategoria`),
  CONSTRAINT `productos_categorias` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  CONSTRAINT `productos_marcas` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Nikon Z6',1650.00,1,2,'Cuerpo de cámara sin espejo formato full frame. Resolución 24.5 MPX. Bluetooth, Wi-Fi, GPS. ISO 100-51200','nikon-z6.jpg',1),(2,'iPhone 12 Pro (256GB) gold',1200.00,2,1,'Apple iPhone 12 Pro de 256GB color dorado, libre de carrier.','iphone-12-pro-gold.png',1),(3,'Marshall Acton II',300.00,4,4,'Altavoz inalámbrico Marshall Acton II. Wi-Fi y Bluetooth multihabitación color negro.','marshall-acton.jpg',1),(4,'Homepod Mini',100.00,2,4,'Altavoz inteligente inalámbrico. Compatible con Siri. Wifi, Bluetooth. Compatible con multihabitación.','homepod-mini.jpg',1),(5,'Samsung Class QLED Q80T Series',1200.00,5,5,'Smart TV Samsung Class QLED Q80T Series, 65\", 4K, UHD','Q80T.jpg',1),(6,'P40 Pro Plus 512GB',1250.00,6,1,'Smartphone Huawei P40 Pro Plus 5G 512GB','P40-pro-plus.jpg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_apple`
--

DROP TABLE IF EXISTS `productos_apple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_apple` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(50) NOT NULL,
  `precio` decimal(10,2) unsigned NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `stock` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`producto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_apple`
--

LOCK TABLES `productos_apple` WRITE;
/*!40000 ALTER TABLE `productos_apple` DISABLE KEYS */;
INSERT INTO `productos_apple` VALUES (1,'iPod',299.00,'',200),(2,'iPhone',399.00,'',300),(3,'iPad',499.00,'',250),(4,'Macbook Pro',1199.00,'',150);
/*!40000 ALTER TABLE `productos_apple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_proveedores`
--

DROP TABLE IF EXISTS `productos_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_proveedores` (
  `idPP` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `idProducto` mediumint unsigned NOT NULL,
  `idProveedor` smallint unsigned NOT NULL,
  PRIMARY KEY (`idPP`),
  KEY `idProducto` (`idProducto`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `productos_proveedores_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `productos_proveedores_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_proveedores`
--

LOCK TABLES `productos_proveedores` WRITE;
/*!40000 ALTER TABLE `productos_proveedores` DISABLE KEYS */;
INSERT INTO `productos_proveedores` VALUES (1,1,1),(2,1,4),(3,2,3),(4,2,4),(5,3,2),(6,3,4),(7,4,3),(8,4,2);
/*!40000 ALTER TABLE `productos_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` smallint unsigned NOT NULL AUTO_INCREMENT,
  `prvNombre` varchar(45) NOT NULL,
  `prvCuit` bigint unsigned NOT NULL,
  `prvTelefono` varchar(20) NOT NULL,
  `prvDireccion` varchar(45) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `prvNombre` (`prvNombre`),
  UNIQUE KEY `prvTelefono` (`prvTelefono`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedor de cámaras',20111111112,'44444444','Dirección proveedor 1'),(2,'Proveedor de Audio',20222222222,'44444445','Dirección proveedor 2'),(3,'Proveedor de Apple',20333333332,'44444446','Dirección proveedor 3'),(4,'Proveedor de todo un poco',20444444442,'44444447','Dirección proveedor 4');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `regNombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `regNombre` (`regNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (2,'América Central'),(4,'América del Norte'),(1,'América del Sur'),(7,'Asia'),(3,'Caribe y México'),(6,'Europa del Este'),(5,'Europa Occidental'),(8,'Oceanía');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `consulta_precios`
--

/*!50001 DROP VIEW IF EXISTS `consulta_precios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta_precios` AS select `p`.`idProducto` AS `id`,`p`.`prdNombre` AS `Producto`,`p`.`prdPrecio` AS `Contado`,(`p`.`prdPrecio` * 1.05) AS `Lista`,`m`.`mkNombre` AS `Marca`,`c`.`catNombre` AS `Categoria` from ((`productos` `p` join `marcas` `m` on((`p`.`idMarca` = `m`.`idMarca`))) join `categorias` `c` on((`p`.`idCategoria` = `c`.`idCategoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26 23:16:31

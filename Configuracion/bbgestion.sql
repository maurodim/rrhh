-- MySQL dump 10.13  Distrib 5.1.73, for Win32 (ia32)
--
-- Host: localhost    Database: bbgestion
-- ------------------------------------------------------
-- Server version	5.1.73-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BARRAS` varchar(30) DEFAULT NULL,
  `NOMBRE` varchar(49) DEFAULT NULL,
  `SERVICIO` double DEFAULT NULL,
  `COSTO` double DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `MINIMO` int(11) DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `PROVEEDOR` int(11) DEFAULT NULL,
  `RUBRON` varchar(12) DEFAULT NULL,
  `ALTA` varchar(19) DEFAULT NULL,
  `INHABILITADO` int(11) NOT NULL DEFAULT '0',
  `idRubro` int(11) NOT NULL DEFAULT '1',
  `equivalencia` double NOT NULL DEFAULT '1',
  `modificaPrecio` int(11) NOT NULL DEFAULT '0',
  `modificaServicio` int(11) NOT NULL DEFAULT '0',
  `recargo` double NOT NULL DEFAULT '0',
  `servicio1` double DEFAULT '0',
  `idcombo` int(11) DEFAULT '0',
  `actualizacion` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dolar` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'1','PRUEBA',12,10,12,NULL,NULL,NULL,NULL,NULL,0,1,1,0,0,1.2,12,0,3,'2017-07-18 12:50:30',1);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billetes`
--

DROP TABLE IF EXISTS `billetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billetes` (
  `id` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(30) NOT NULL DEFAULT '',
  `valor` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billetes`
--

LOCK TABLES `billetes` WRITE;
/*!40000 ALTER TABLE `billetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `billetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caja` (
  `numero` bigint(11) NOT NULL DEFAULT '0',
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `saldoinicial` double NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `saldofinal` double DEFAULT NULL,
  `fechacierre` varchar(30) DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` VALUES (1,1,1,9,0,0,1,NULL,NULL,NULL,'2017-07-18 12:39:26');
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coeficienteslistas`
--

DROP TABLE IF EXISTS `coeficienteslistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coeficienteslistas` (
  `id` int(11) NOT NULL DEFAULT '0',
  `coeficiente` double NOT NULL DEFAULT '0',
  `descripcion` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coeficienteslistas`
--

LOCK TABLES `coeficienteslistas` WRITE;
/*!40000 ALTER TABLE `coeficienteslistas` DISABLE KEYS */;
INSERT INTO `coeficienteslistas` VALUES (1,1,'base');
/*!40000 ALTER TABLE `coeficienteslistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combo`
--

DROP TABLE IF EXISTS `combo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `idarticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double DEFAULT NULL,
  `articulopadre` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combo`
--

LOCK TABLES `combo` WRITE;
/*!40000 ALTER TABLE `combo` DISABLE KEYS */;
/*!40000 ALTER TABLE `combo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobantes`
--

DROP TABLE IF EXISTS `comprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobantes` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(4) NOT NULL DEFAULT '',
  `destinatarioCondicion` int(11) NOT NULL DEFAULT '0',
  `descargaStock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantes`
--

LOCK TABLES `comprobantes` WRITE;
/*!40000 ALTER TABLE `comprobantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depositos`
--

DROP TABLE IF EXISTS `depositos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depositos` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `direccion` varchar(200) NOT NULL DEFAULT '',
  `telefono` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depositos`
--

LOCK TABLES `depositos` WRITE;
/*!40000 ALTER TABLE `depositos` DISABLE KEYS */;
INSERT INTO `depositos` VALUES (1,'casa central','lamadradid 2552','4555555');
/*!40000 ALTER TABLE `depositos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallefacturas`
--

DROP TABLE IF EXISTS `detallefacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallefacturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcionarticulo` varchar(150) DEFAULT NULL,
  `preciounitario` double NOT NULL,
  `descuento` int(11) NOT NULL,
  `cantidadremitida` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallefacturas`
--

LOCK TABLES `detallefacturas` WRITE;
/*!40000 ALTER TABLE `detallefacturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallefacturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturaelectronica`
--

DROP TABLE IF EXISTS `facturaelectronica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaelectronica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cae` varchar(20) DEFAULT NULL,
  `cae_vto` varchar(8) DEFAULT NULL,
  `fecha_cae` varchar(20) DEFAULT NULL,
  `afipqty` varchar(4) DEFAULT NULL,
  `afipplastid` varchar(20) DEFAULT NULL,
  `afipplastcbte` varchar(10) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `customerid` varchar(11) DEFAULT NULL,
  `customertypedoc` varchar(2) DEFAULT NULL,
  `tipo_comprobante` varchar(2) DEFAULT NULL,
  `importe_total` varchar(30) DEFAULT NULL,
  `importe_neto` varchar(25) DEFAULT NULL,
  `impto_liq` varchar(25) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaelectronica`
--

LOCK TABLES `facturaelectronica` WRITE;
/*!40000 ALTER TABLE `facturaelectronica` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturaelectronica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `idusuario` int(11) NOT NULL DEFAULT '0',
  `idpedido` int(11) DEFAULT NULL,
  `idremito` int(11) DEFAULT NULL,
  `numerofactura` varchar(30) NOT NULL DEFAULT ' ',
  `estado` int(11) NOT NULL DEFAULT '0',
  `saldo` double NOT NULL DEFAULT '0',
  `subtotal` double NOT NULL DEFAULT '0',
  `descuento` double NOT NULL DEFAULT '0',
  `porcentajed` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fallas`
--

DROP TABLE IF EXISTS `fallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fallas` (
  `st` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallas`
--

LOCK TABLES `fallas` WRITE;
/*!40000 ALTER TABLE `fallas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiscal`
--

DROP TABLE IF EXISTS `fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fiscal` (
  `fecha` varchar(8) NOT NULL DEFAULT '',
  `tipo` varchar(3) NOT NULL DEFAULT '011',
  `pto` varchar(5) NOT NULL DEFAULT '00002',
  `numero` varchar(20) NOT NULL DEFAULT '',
  `gravado` double NOT NULL DEFAULT '0',
  `alicuota` varchar(4) NOT NULL DEFAULT '0005',
  `impuesto` double NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL DEFAULT '0',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(11) NOT NULL DEFAULT '0',
  `idcliente` int(11) NOT NULL DEFAULT '1',
  `tipoClienteId` int(11) NOT NULL DEFAULT '99',
  `razon` varchar(30) NOT NULL DEFAULT '',
  `cuit` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `numero_2` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiscal`
--

LOCK TABLES `fiscal` WRITE;
/*!40000 ALTER TABLE `fiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivaventas`
--

DROP TABLE IF EXISTS `ivaventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ivaventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comprobante` varchar(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `numero` varchar(14) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(35) NOT NULL,
  `condicion` varchar(4) NOT NULL,
  `cuit` varchar(11) NOT NULL,
  `neto` varchar(15) NOT NULL,
  `iva` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `periodo` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivaventas`
--

LOCK TABLES `ivaventas` WRITE;
/*!40000 ALTER TABLE `ivaventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ivaventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listcli`
--

DROP TABLE IF EXISTS `listcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listcli` (
  `COD_CLIENT` varchar(6) DEFAULT NULL,
  `RAZON_SOCI` varchar(60) DEFAULT NULL,
  `DOMICILIO` varchar(30) DEFAULT NULL,
  `COND_VTA` int(11) NOT NULL DEFAULT '0',
  `TELEFONO_1` varchar(30) DEFAULT NULL,
  `LISTADEPRECIO` int(11) NOT NULL DEFAULT '0',
  `NUMERODECUIT` varchar(30) DEFAULT NULL,
  `CUPODECREDITO` double DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codmmd` int(11) NOT NULL DEFAULT '0',
  `saldo` double DEFAULT '0',
  `saldoactual` double DEFAULT '0',
  `TIPO_IVA` int(11) NOT NULL DEFAULT '0',
  `COEFICIENTE` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `codmmd` (`codmmd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listcli`
--

LOCK TABLES `listcli` WRITE;
/*!40000 ALTER TABLE `listcli` DISABLE KEYS */;
INSERT INTO `listcli` VALUES ('999999','CONSUMIDOR FINAL','NN',1,'11',1,'1',0,'sd',1,0,0,1,1,1);
/*!40000 ALTER TABLE `listcli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosarticulos`
--

DROP TABLE IF EXISTS `movimientosarticulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientosarticulos` (
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `idArticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `numeroDeposito` int(11) NOT NULL DEFAULT '0',
  `tipoComprobante` int(11) NOT NULL DEFAULT '0',
  `numeroComprobante` int(11) NOT NULL DEFAULT '0',
  `numeroCliente` int(11) NOT NULL DEFAULT '0',
  `fechaComprobante` varchar(30) NOT NULL DEFAULT '',
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `precioDeCosto` double NOT NULL DEFAULT '0',
  `precioDeVenta` double NOT NULL DEFAULT '0',
  `precioServicio` double NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idcaja` bigint(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idcomprobante` int(11) DEFAULT '0',
  `observaciones` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosarticulos`
--

LOCK TABLES `movimientosarticulos` WRITE;
/*!40000 ALTER TABLE `movimientosarticulos` DISABLE KEYS */;
INSERT INTO `movimientosarticulos` VALUES (1,1,-1,1,1,6,1,'2017-07-18',1,10,12,0,NULL,'2017-07-18 12:50:53',1,1,2,NULL);
/*!40000 ALTER TABLE `movimientosarticulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientoscaja`
--

DROP TABLE IF EXISTS `movimientoscaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientoscaja` (
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `idCliente` int(11) DEFAULT NULL,
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  `numeroComprobante` int(11) NOT NULL DEFAULT '0',
  `tipoComprobante` int(11) NOT NULL DEFAULT '0',
  `monto` double DEFAULT NULL,
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `cantidad` double DEFAULT NULL,
  `pagado` int(11) NOT NULL DEFAULT '0',
  `observaciones` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipoCliente` int(11) DEFAULT NULL,
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `fiscal` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientoscaja`
--

LOCK TABLES `movimientoscaja` WRITE;
/*!40000 ALTER TABLE `movimientoscaja` DISABLE KEYS */;
INSERT INTO `movimientoscaja` VALUES (1,NULL,1,37,0,0,9,1,NULL,0,NULL,NULL,NULL,1,0,'2017-07-18 12:39:27'),(1,0,1,42,0,150,9,1,NULL,1,NULL,NULL,0,13,0,'2017-07-19 15:16:40');
/*!40000 ALTER TABLE `movimientoscaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosclientes`
--

DROP TABLE IF EXISTS `movimientosclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientosclientes` (
  `numeroProveedor` int(11) NOT NULL DEFAULT '0',
  `monto` double NOT NULL DEFAULT '0',
  `pagado` int(11) DEFAULT NULL,
  `numeroComprobante` int(11) DEFAULT NULL,
  `idRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `fechaPago` varchar(20) DEFAULT NULL,
  `tipoComprobante` int(11) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idcomprobante` int(11) DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosclientes`
--

LOCK TABLES `movimientosclientes` WRITE;
/*!40000 ALTER TABLE `movimientosclientes` DISABLE KEYS */;
INSERT INTO `movimientosclientes` VALUES (1,12,1,6,NULL,1,1,NULL,1,1,NULL,1,2,'2017-07-18 12:50:53'),(1,-70,0,3,0,0,0,NULL,11,0,NULL,2,0,'2017-07-18 14:22:39'),(1,70,0,4,0,0,0,NULL,11,0,NULL,3,0,'2017-07-18 14:46:21');
/*!40000 ALTER TABLE `movimientosclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosdesucursales`
--

DROP TABLE IF EXISTS `movimientosdesucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientosdesucursales` (
  `depOrigen` int(11) DEFAULT NULL,
  `depDestino` int(11) DEFAULT NULL,
  `idArticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `confirmado` int(11) DEFAULT NULL,
  `numeroRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `idUsuarioRecep` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosdesucursales`
--

LOCK TABLES `movimientosdesucursales` WRITE;
/*!40000 ALTER TABLE `movimientosdesucursales` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientosdesucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosproveedores`
--

DROP TABLE IF EXISTS `movimientosproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientosproveedores` (
  `numeroProveedor` int(11) NOT NULL DEFAULT '0',
  `monto` double NOT NULL DEFAULT '0',
  `pagado` int(11) DEFAULT NULL,
  `numeroComprobante` varchar(30) DEFAULT NULL,
  `idRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `fechaPago` varchar(20) DEFAULT NULL,
  `tipoComprobante` int(11) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosproveedores`
--

LOCK TABLES `movimientosproveedores` WRITE;
/*!40000 ALTER TABLE `movimientosproveedores` DISABLE KEYS */;
INSERT INTO `movimientosproveedores` VALUES (1,-120,NULL,'1',0,1,0,NULL,11,1,NULL,1,'2017-07-18 14:05:15'),(1,-120,NULL,'2',0,1,0,NULL,11,1,NULL,2,'2017-07-18 14:20:49');
/*!40000 ALTER TABLE `movimientosproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosusuarios`
--

DROP TABLE IF EXISTS `movimientosusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientosusuarios` (
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `tipoAcceso` int(11) DEFAULT NULL,
  `entrada` varchar(30) NOT NULL DEFAULT '',
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosusuarios`
--

LOCK TABLES `movimientosusuarios` WRITE;
/*!40000 ALTER TABLE `movimientosusuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientosusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `ID` int(11) DEFAULT NULL,
  `nombre` varchar(19) DEFAULT NULL,
  `DOMICILIO` varchar(100) DEFAULT NULL,
  `LOCALIDAD` varchar(8) DEFAULT NULL,
  `TELEFONO` varchar(10) DEFAULT NULL,
  `INHABILITADO` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(200) NOT NULL DEFAULT '',
  `saldo` double DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (NULL,'mauro','lnlnl','santa fe','djlsjdl',NULL,1,'djlcslndsl',NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubros`
--

DROP TABLE IF EXISTS `rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubros`
--

LOCK TABLES `rubros` WRITE;
/*!40000 ALTER TABLE `rubros` DISABLE KEYS */;
INSERT INTO `rubros` VALUES (1,'ARTICULOS GENERALES');
/*!40000 ALTER TABLE `rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `direccion` varchar(100) NOT NULL DEFAULT '',
  `telefono` varchar(100) NOT NULL DEFAULT '',
  `deposito` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'POCO PRECIO 1','1','',1);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoacceso`
--

DROP TABLE IF EXISTS `tipoacceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoacceso` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(20) NOT NULL DEFAULT '',
  `nivel` int(11) NOT NULL DEFAULT '0',
  `menu1` int(11) NOT NULL DEFAULT '0',
  `menu2` int(11) NOT NULL DEFAULT '0',
  `menu3` int(11) NOT NULL DEFAULT '0',
  `menu4` int(11) NOT NULL DEFAULT '0',
  `menu5` int(11) NOT NULL DEFAULT '0',
  `menu6` int(11) NOT NULL DEFAULT '0',
  `menu7` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoacceso`
--

LOCK TABLES `tipoacceso` WRITE;
/*!40000 ALTER TABLE `tipoacceso` DISABLE KEYS */;
INSERT INTO `tipoacceso` VALUES (1,'administrador',1,1,1,1,1,1,1,1),(2,'cajero',2,0,0,1,1,0,1,0),(3,'prueba',3,0,0,1,1,0,0,0);
/*!40000 ALTER TABLE `tipoacceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocomprobantes`
--

DROP TABLE IF EXISTS `tipocomprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocomprobantes` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL DEFAULT '',
  `numeroActivo` int(11) NOT NULL DEFAULT '0',
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocomprobantes`
--

LOCK TABLES `tipocomprobantes` WRITE;
/*!40000 ALTER TABLE `tipocomprobantes` DISABLE KEYS */;
INSERT INTO `tipocomprobantes` VALUES (1,'ticket',7,1),(2,'FCA A',0,1),(3,'remito proveedor',0,1),(4,'remito interno',0,1),(5,'factura proveedor A',0,1),(6,'factura proveedor',0,1),(7,'ticket',0,2),(8,'FCA A',0,2),(9,'ticket',0,3),(10,'FCA A',0,3),(11,'recibo de pago',4,1),(12,'mov caja',44,0),(13,'gasto fijo',0,1),(14,'ticket',0,4),(15,'FCA A',0,4),(16,'ticket',0,5),(17,'FCA A',0,5),(18,'remito de ajuste de stock',0,1),(19,'TICKET',0,7),(20,'FACTURA PROVEEDOR',0,7),(21,'FCA A',0,7),(22,'ticket',0,6),(23,'FCA A',0,6),(81,'TFA',0,1),(82,'TFB',0,1),(112,'NCA',0,1),(113,'NCB',0,1);
/*!40000 ALTER TABLE `tipocomprobantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomovimientos`
--

DROP TABLE IF EXISTS `tipomovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomovimientos` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `DESCRIPCION` varchar(30) NOT NULL DEFAULT '',
  `DESTINOOPERACION` int(11) NOT NULL DEFAULT '0',
  `MULTIPLOOP` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomovimientos`
--

LOCK TABLES `tipomovimientos` WRITE;
/*!40000 ALTER TABLE `tipomovimientos` DISABLE KEYS */;
INSERT INTO `tipomovimientos` VALUES (1,'Ventas',1,1),(2,'Compras',1,1),(3,'Devolucion de Ventas',1,1),(4,'Retiro Efectivo',2,-1),(5,'Recepcion de mercaderias',1,1),(6,'Traslado de mercaderias',1,1),(7,'Ingreso de Caja',2,1),(8,'Devolucion de compras',1,1),(9,'saldo inicial',2,1),(10,'Cerrar Caja',2,-1),(11,'Pago a Proveedores',2,-1),(12,'Gastos de Caja',2,-1),(13,'Cobro de Cuenta Corriente Clie',2,1),(14,'ajuste de stock',1,1),(15,'ajuste de saldo',1,1);
/*!40000 ALTER TABLE `tipomovimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(70) NOT NULL DEFAULT '',
  `direccion` varchar(200) NOT NULL DEFAULT '',
  `localidad` varchar(70) NOT NULL DEFAULT '',
  `telefono` varchar(100) NOT NULL DEFAULT '',
  `mail` varchar(100) NOT NULL DEFAULT '',
  `nombreUsuario` varchar(100) NOT NULL DEFAULT '',
  `clave` varchar(100) NOT NULL DEFAULT '',
  `autorizacion` int(11) NOT NULL DEFAULT '0',
  `numeroTipoAcceso` int(11) NOT NULL DEFAULT '0',
  `sucursal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'administrador','','','','','adm','adm',1,1,1),(2,'ELIEL','','','','','ELIEL','ELIEL',2,2,7);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 12:31:32

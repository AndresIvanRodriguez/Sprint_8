CREATE DATABASE  IF NOT EXISTS `proyecto_integrador` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `proyecto_integrador`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_integrador
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Montaña'),(2,'Urbana'),(3,'Ruta'),(4,'BMX');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` int NOT NULL,
  `color` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `descuento` int NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `numDeCambios` int NOT NULL,
  `tipoFreno` varchar(255) NOT NULL,
  `suspension` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `stock` int NOT NULL,
  `categoriaId` int DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cea62b84-551e-426a-b59d-207a3dc0635c` (`typeId`),
  KEY `FK_d670ab93-e7a6-4f47-b2b4-9b5fe6715bff` (`categoriaId`),
  CONSTRAINT `FK_cea62b84-551e-426a-b59d-207a3dc0635c` FOREIGN KEY (`typeId`) REFERENCES `types` (`id`),
  CONSTRAINT `FK_d670ab93-e7a6-4f47-b2b4-9b5fe6715bff` FOREIGN KEY (`categoriaId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,' Jeep Baltoro Vesubios ',950000,' Negro ',' Unisex ',20,' nan ',' Aluminio ',21,' Montaña ',' Delantera ','./montaña/1 Montaña Jeep Baltoro 1.jpg ',5,1,NULL),(2,' Jeep Baltoro ',950000,' Negro-Naranja ',' Unisex ',20,' Bicicleta de Montaña Jeep Baltoro 29 pulgadas black-orange ',' Aluminio ',21,' Montaña ',' Delantera ','./montaña/2 Montaña Jeep Baltoro 1.jpg ',5,1,NULL),(3,' Kawasaki Dominator ',1100000,' Negro-Rojo ',' Unisex ',30,' Bicicleta de Montaña Kawasaki Dominator 29 Pulgadas ',' Aluminio ',10,' Montaña ',' Delantera ','./montaña/3 Montaña Kawasaki Dominator 1.jpg ',5,1,NULL),(4,' GW Hyena ',720000,' Negro ',' Unisex ',15,' Bicicleta GW Hyena rin 27,5 de 24 Velocidades ',' Aluminio ',24,' Montaña ',' Delantera ','./montaña/4 Montaña GW Hyena 1.jpg ',5,1,NULL),(5,' Ninja kawasaki ',1200000,' Negro mate ',' Unisex ',15,'  Bicicleta de Montaña Kawasaki Ninja 29 Pulgadas ',' Aluminio ',24,' Montaña ',' doble ','./montaña/5 Montaña Ninja Kawasaki 1.jpg ',5,1,NULL),(6,' Kawasaki Expert ',1100000,' Verde ',' Unisex ',10,' Bicicleta Montaña Kawasaki Expert 27.5 pulgadas ',' Aluminio ',24,' Montaña ',' Doble ','./montaña/6 Montaña Kawasaki Expert 1.jpg ',5,1,NULL),(7,' Schwinn Knowles ',1000000,' Verde ',' Unisex ',40,' Bicicleta de Montaña Schwinn Knowles 29 Pulgadas ',' Aluminio ',21,' Montaña ',' Doble ','./montaña/7 Montaña Schwinn Knowles 1.jpg ',5,1,NULL),(8,' Jeep Milano ',1200000,' Negro ',' Unisex ',10,' Bicicleta de Ruta Jeep Milano 1 700c ',' Aluminio ',14,' Ruta ',' Sin suspensión ','./ruta/8 Ruta Jeep Milano 1.jpg ',5,2,NULL),(9,' GW Sacramento ',1800000,' Gris ',' Unisex ',10,' Bicicleta de Ruta GW Sacramento 700c ',' Aluminio ',9,' Ruta ',' Sin suspensión ','./ruta/9 Ruta GW Sacramento 1.jpg ',5,2,NULL),(10,' Java Siluro ',4700000,' Blanco ',' Unisex ',10,' Bicicleta De Ruta Java Siluro 3D 700C ',' Aluminio ',11,' Ruta ',' Sin suspensión ','./ruta/10 Ruta Java Siluro 3D 700C 1.jpg ',5,2,NULL),(11,' Java Vesuvio D ',3900000,' Negro ',' Unisex ',12,' Bicicleta De Ruta Java Vesuvio D 700C ',' Carbono ',11,' Ruta ',' Sin suspensión ','./ruta/11 Ruta Java Vesuvio D 700C 1.jpg ',5,2,NULL),(12,' Jeep Nanga ',990000,' Azul ',' Unisex ',8,' Bicicleta de Ruta Jeep Nanga 28 pulgadas ',' Aluminio ',7,' Ruta ',' Sin suspensión ','./ruta/12 Ruta Jeep Nanga 1.jpg ',5,2,NULL),(13,' Merida ',3900000,' Blanco ',' Unisex ',8,' 7000-E Bicicleta de Carretera S Merida Reacto brillante TITAN/SILK 2021 Di2 Racing ',' Fibra de Carbón ',7,' Ruta ',' Sin suspensión ','./ruta/13 Bicicleta de Carretera S Merida Reacto 1.jpg ',5,2,NULL),(14,' TRIBAN ',2100000,' Blanco ',' Unisex ',8,' Bicicleta Triban Rc 120 disco cn fr ',' Aluminio ',7,' Ruta ',' Sin suspensión ','./ruta/14 TRIBAN 1.jpg ',5,2,NULL),(15,' Jeep Nuptse ',960000,' Negro ',' Unisex ',14,' Bicicleta Urbana Jeep Nuptse 28 pulgadas ',' Aluminio ',7,' Urbana ',' Sin suspensión ','./urbana/15 Urbana Jeep Nuptse 1.jpg ',5,3,NULL),(16,' Gear Cardinal ',490000,' Blanco ',' Mujer ',5,' Bicicletas Urbana Mountain Gear Cardinal 26 Pulgadas ',' Acero ',18,' Urbana ',' Sin suspensión ','./urbana/16 Urbana Mountain Gear Cardinal 1.jpg ',5,3,NULL),(17,' Scoop Rome ',500000,' Negro ',' Unisex ',0,' Bicicleta Urbana Rome. 28.V21 Scoop 28 Pulgadas ',' Acero ',6,' Urbana ',' Sin suspensión ','./urbana/17 Urbana Rome. 28.V21 Scoop 1.jpg ',5,3,NULL),(18,' Schwinn Network ',590000,' Azul ',' Unisex ',30,' Bicicleta Urbana Schwinn Network 700c ',' Acero ',7,' Urbana ',' Delantera ','./urbana/18 Urbana Schwinn Network 1.jpg ',5,3,NULL),(19,' Scoop Amsterdam ',590000,' Blanco ',' Mujer ',5,' Bicicleta Urbana Scoop Amsterdam V18 28 pulgadas ',' Acero ',6,' Urbana ',' Sin suspensión ','./urbana/19 Urbana Scoop Amsterdam 1.jpg ',5,3,NULL),(20,' Scoop Flyer ',590000,' Gris ',' Unisex ',14,' Bicicleta Urbana Scoop Flyer 28 V20 28 pulgadas ',' Acero ',7,' Urbana ',' Sin suspensión ','./urbana/20 Urbana Scoop Flyer 1.jpg ',5,3,NULL),(21,' Victory ',480000,' Azul ',' Unisex ',5,' Bicicleta urbana 26 pulgadas Urbana ',' Aluminio ',18,' Urbana ',' Sin suspensión ','./urbana/21 Urbana victory 1.jpg ',5,3,NULL),(22,' Freestyle Huffy ',780000,' Cafe ',' Unisex ',5,' Bicicleta Freestyle 23549A Huffy 20 pulgadas ',' Acero ',0,' BMX ',' Sin suspensión ','./bmx/22 Freestyle23549A Huffy1.jpg ',5,4,NULL),(23,' Bmx Stealth ',1200000,' Negro-azul ',' Unisex ',0,' Bicicleta Bmx Stealth Bicicleta Freestyle Elite 20 pulgadas  ',' Acero ',0,' BMX ',' Sin suspensión ','./bmx/23 Bmx Stealth 1.jpg ',5,4,NULL),(24,' KHE Strikedown Pro ',2200000,' Gris ',' Unisex ',5,' Bicicleta BMX KHE Strikedown Pro 20 pulgadas fijar Rotor Stealth Grey sólo 9,7kg ',' Acero ',0,' BMX ',' Sin suspensión ','./bmx/24 BMX KHE Strikedown Pro 1.jpg ',5,4,NULL),(25,' BMX Manivela ',1780000,' Blanco ',' Unisex ',5,' Bicicleta BMX Elite Outlaw 26pulgadas Manivela ',' Chrome ',0,' BMX ',' Sin suspensión ','./bmx/25 BMX Bicicleta Bici Manivela 1.jpg ',5,4,NULL),(26,' KHE United Roouse ',980000,' Azul-negro ',' Unisex ',5,' Bicicleta BMX KHE United Roouse Negro Azul 20 pulgadas con rotor sólo 11,65kg ',' Acero ',0,' BMX ',' Sin suspensión ','./bmx/26 BMX KHE United Roouse 1.jpg ',5,4,NULL),(27,' The Stealth ',970000,' Blanco ',' Unisex ',5,' BMX Elite The Stealth 20 pulgadas Freestyle ',' Acero ',0,' BMX ',' Sin suspensión ','./bmx/27 BMX Elite The Stealth 1.jpg ',5,4,NULL),(28,' GT Slammer ',1500000,' Negro ',' Unisex ',5,' BMX GT Slammer negro ',' Acero ',0,' BMX ',' Sin suspensión ','./bmx/28 BMX GT Slammer 1.jpg ',5,4,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Usuario'),(3,'Invitado');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8a363243-3357-478f-8aec-e91d61999563` (`roleId`),
  CONSTRAINT `FK_8a363243-3357-478f-8aec-e91d61999563` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Juan Diego','Quintero Peralta','juandiegoq56@gmail.com','Bogota - carrera falsa 123','2000-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(2,'Andres Ivan','Quintero Peralta','juandiegoq56@gmail.com','Bogota - carrera falsa 123','2000-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(3,'Diego','Mendoza','Diego@gmail.com','Bogota - carrera falsa 123','1996-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(4,'Juan Diego','Quintero Peralta','juandiegoq56@gmail.com','Bogota - carrera falsa 123','2000-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(5,'Andres Ivan','Quintero Peralta','juandiegoq56@gmail.com','Bogota - carrera falsa 123','2000-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(6,'Diego','Mendoza','Diego@gmail.com','Bogota - carrera falsa 123','1996-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(7,'Juan Diego','Quintero Peralta','juandiegoq56@gmail.com','Bogota - carrera falsa 123','2000-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(8,'Andres Ivan','Quintero Peralta','juandiegoq56@gmail.com','Bogota - carrera falsa 123','2000-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(9,'Diego','Mendoza','Diego@gmail.com','Bogota - carrera falsa 123','1996-11-21','$2a$10$43R0Fp8t6XLJTabVGhtYs.WWr9ixhEAU383Qe58/P4ow6RNDdekoG','./img/usersImagen/1646095534534-nuevo_mote_cristiano_ronaldo_juventus_el_bicho_6811.jpg',1),(10,'Diego','Prueba1 ','da@correo.udistrital.edu.co','pruebaBD','1996-01-07','1234567890','',NULL),(11,'Diego','Prueba1 ','diego@dfg.com','pruebaBD','1996-01-01','1234567890','',NULL),(12,'Diego','Prueba2','s@df.com','pruebaBD','1996-07-01','$2a$10$JzMboTqtlSXZN25/5sT4Yu8PIAjW4TE8FyoFY0xSkkmrV/prUYNPC','',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_products`
--

DROP TABLE IF EXISTS `users_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int DEFAULT NULL,
  `products_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6574815d-ff99-4dd1-aa7f-6ea106ddc430` (`users_id`),
  KEY `FK_d2fb48fd-8059-4e9d-b014-ba4d003b5c06` (`products_id`),
  CONSTRAINT `FK_6574815d-ff99-4dd1-aa7f-6ea106ddc430` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_d2fb48fd-8059-4e9d-b014-ba4d003b5c06` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_products`
--

LOCK TABLES `users_products` WRITE;
/*!40000 ALTER TABLE `users_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29 14:43:59

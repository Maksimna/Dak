-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `thecompositionofsales`
--

DROP TABLE IF EXISTS `thecompositionofsales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thecompositionofsales` (
  `number` varchar(45) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `books_ISBN` char(13) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_состав продаж_книги1_idx` (`books_ISBN`),
  CONSTRAINT `fk_состав продаж_книги1` FOREIGN KEY (`books_ISBN`) REFERENCES `books` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thecompositionofsales`
--

LOCK TABLES `thecompositionofsales` WRITE;
/*!40000 ALTER TABLE `thecompositionofsales` DISABLE KEYS */;
INSERT INTO `thecompositionofsales` VALUES ('1',1,'1234567890124'),('2',2,'1234567890123'),('3',3,'1234567890125'),('4',4,'1234567890126'),('5',5,'1234567890127'),('6',6,'1234567890128'),(NULL,7,'ISBNКНИГИ'),(NULL,8,'1234567890127'),(NULL,9,'1234567890127'),(NULL,10,'1234967890127');
/*!40000 ALTER TABLE `thecompositionofsales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 10:19:35

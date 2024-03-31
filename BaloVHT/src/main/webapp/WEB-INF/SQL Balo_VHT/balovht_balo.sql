-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: balovht
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `balo`
--

DROP TABLE IF EXISTS `balo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balo` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `mota` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balo`
--

LOCK TABLES `balo` WRITE;
/*!40000 ALTER TABLE `balo` DISABLE KEYS */;
INSERT INTO `balo` VALUES ('1','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv5Uzy3XOniEhn-j8TGCcMfAkGe5fLvl9rkA&usqp=CAU','Balo1',123,'abc'),('10','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv5Uzy3XOniEhn-j8TGCcMfAkGe5fLvl9rkA&usqp=CAU','Balo1',123,'abc'),('2','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQET1XNbqa9d6ra30vxBeAWYix5rrkcq4SxyA&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQET1XNbqa9d6ra30vxBeAWYix5rrkcq4SxyA&usqp=CAU','Balo23',456,'ass'),('8','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv5Uzy3XOniEhn-j8TGCcMfAkGe5fLvl9rkA&usqp=CAU','Balo1',123,'abc'),('9','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv5Uzy3XOniEhn-j8TGCcMfAkGe5fLvl9rkA&usqp=CAU','Balo1',123,'abc');
/*!40000 ALTER TABLE `balo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01  1:54:51

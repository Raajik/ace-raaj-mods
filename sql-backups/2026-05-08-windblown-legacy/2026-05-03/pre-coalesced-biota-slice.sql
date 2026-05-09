mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: ace_shard
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biota_properties_int`
--

DROP TABLE IF EXISTS `biota_properties_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biota_properties_int` (
  `object_Id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Type of Property the value applies to (PropertyInt.????)',
  `value` int NOT NULL DEFAULT '0' COMMENT 'Value of this Property',
  PRIMARY KEY (`object_Id`,`type`),
  CONSTRAINT `wcid_int` FOREIGN KEY (`object_Id`) REFERENCES `biota` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Int Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biota_properties_int`
--
-- WHERE:  object_Id IN (2147484416,2147484596,2147485682)

LOCK TABLES `biota_properties_int` WRITE;
/*!40000 ALTER TABLE `biota_properties_int` DISABLE KEYS */;
INSERT INTO `biota_properties_int` VALUES (2147484416,1,128),(2147484416,5,35),(2147484416,11,10),(2147484416,12,7),(2147484416,13,5),(2147484416,15,0),(2147484416,16,524296),(2147484416,18,20),(2147484416,19,0),(2147484416,33,0),(2147484416,53,10),(2147484416,65,101),(2147484416,93,1044),(2147484416,94,35215),(2147484416,98,1777588932),(2147484416,114,1),(2147484596,1,128),(2147484596,5,50),(2147484596,11,10),(2147484596,12,10),(2147484596,13,5),(2147484596,15,0),(2147484596,16,524296),(2147484596,18,20),(2147484596,19,0),(2147484596,33,0),(2147484596,53,11),(2147484596,65,101),(2147484596,93,1044),(2147484596,94,35215),(2147484596,98,1777604954),(2147484596,114,1),(2147485682,1,128),(2147485682,5,5),(2147485682,11,10),(2147485682,12,1),(2147485682,13,5),(2147485682,15,0),(2147485682,16,524296),(2147485682,18,1),(2147485682,19,0),(2147485682,33,0),(2147485682,53,33),(2147485682,65,101),(2147485682,93,1044),(2147485682,94,35215),(2147485682,98,1777841407),(2147485682,114,1);
/*!40000 ALTER TABLE `biota_properties_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biota_properties_d_i_d`
--

DROP TABLE IF EXISTS `biota_properties_d_i_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biota_properties_d_i_d` (
  `object_Id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Type of Property the value applies to (PropertyDataId.????)',
  `value` int unsigned NOT NULL DEFAULT '0' COMMENT 'Value of this Property',
  PRIMARY KEY (`object_Id`,`type`),
  CONSTRAINT `wcid_did` FOREIGN KEY (`object_Id`) REFERENCES `biota` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='DataID Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biota_properties_d_i_d`
--
-- WHERE:  object_Id IN (2147484416,2147484596,2147485682)

LOCK TABLES `biota_properties_d_i_d` WRITE;
/*!40000 ALTER TABLE `biota_properties_d_i_d` DISABLE KEYS */;
INSERT INTO `biota_properties_d_i_d` VALUES (2147484416,1,33557506),(2147484416,3,536870932),(2147484416,6,67112808),(2147484416,8,100690901),(2147484416,22,872415275),(2147484596,1,33557506),(2147484596,3,536870932),(2147484596,6,67112808),(2147484596,8,100690901),(2147484596,22,872415275),(2147485682,1,33557506),(2147485682,3,536870932),(2147485682,6,67112808),(2147485682,8,100690899),(2147485682,22,872415275);
/*!40000 ALTER TABLE `biota_properties_d_i_d` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 20:02:42

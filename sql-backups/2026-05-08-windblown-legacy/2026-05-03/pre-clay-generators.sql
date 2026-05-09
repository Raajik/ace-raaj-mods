-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: ace_world
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
-- Table structure for table `weenie_properties_generator`
--

DROP TABLE IF EXISTS `weenie_properties_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_generator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `probability` float NOT NULL DEFAULT '1',
  `weenie_Class_Id` int unsigned NOT NULL COMMENT 'Weenie Class Id of object to generate',
  `delay` float DEFAULT NULL COMMENT 'Amount of delay before generation',
  `init_Create` int NOT NULL DEFAULT '1' COMMENT 'Number of object to generate initially',
  `max_Create` int NOT NULL DEFAULT '1' COMMENT 'Maximum amount of objects to generate',
  `when_Create` int unsigned NOT NULL DEFAULT '2' COMMENT 'When to generate the weenie object',
  `where_Create` int unsigned NOT NULL DEFAULT '4' COMMENT 'Where to generate the weenie object',
  `stack_Size` int DEFAULT NULL COMMENT 'StackSize of object generated',
  `palette_Id` int unsigned DEFAULT NULL COMMENT 'Palette Color of Object Generated',
  `shade` float DEFAULT NULL COMMENT 'Shade of Object generated''s Palette',
  `obj_Cell_Id` int unsigned DEFAULT NULL,
  `origin_X` float DEFAULT NULL,
  `origin_Y` float DEFAULT NULL,
  `origin_Z` float DEFAULT NULL,
  `angles_W` float DEFAULT NULL,
  `angles_X` float DEFAULT NULL,
  `angles_Y` float DEFAULT NULL,
  `angles_Z` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wcid_generator` (`object_Id`),
  CONSTRAINT `wcid_generator` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28603 DEFAULT CHARSET=utf8mb3 COMMENT='Generator Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_generator`
--
-- WHERE:  weenie_Class_Id = 1

LOCK TABLES `weenie_properties_generator` WRITE;
/*!40000 ALTER TABLE `weenie_properties_generator` DISABLE KEYS */;
INSERT INTO `weenie_properties_generator` VALUES (55,1939,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(58,1942,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(61,1945,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(64,1948,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(110,3985,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(113,3988,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(116,3991,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(119,3994,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(179,4859,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(180,4860,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(185,4865,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(186,4866,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(191,4871,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(192,4872,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(197,4877,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(198,4878,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(248,7494,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(249,7495,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(250,7496,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(251,7497,1,1,0,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(263,7887,1,1,90,1,1,2,72,-1,0,0,0,0,0,0,1,0,0,0),(3234,3997,1,1,1500,1,1,2,64,-1,0,0,0,0,0,0,1,0,0,0),(3236,3999,1,1,1500,1,1,2,64,-1,0,0,0,0,0,0,1,0,0,0),(3242,4005,1,1,1500,1,1,2,64,-1,0,0,0,0,0,0,1,0,0,0),(3245,4008,1,1,1500,1,1,2,64,-1,0,0,0,0,0,0,1,0,0,0),(5024,7503,1,1,1000,1,1,2,64,-1,0,0,0,0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `weenie_properties_generator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 17:27:37

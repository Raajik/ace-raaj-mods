mysqldump: [Warning] Using a password on the command line interface can be insecure.
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
-- Table structure for table `landblock_instance`
--

DROP TABLE IF EXISTS `landblock_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landblock_instance` (
  `guid` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Instance',
  `landblock` int GENERATED ALWAYS AS ((`obj_Cell_Id` >> 16)) VIRTUAL,
  `weenie_Class_Id` int unsigned NOT NULL COMMENT 'Weenie Class Id of object to spawn',
  `obj_Cell_Id` int unsigned NOT NULL,
  `origin_X` float NOT NULL,
  `origin_Y` float NOT NULL,
  `origin_Z` float NOT NULL,
  `angles_W` float NOT NULL,
  `angles_X` float NOT NULL,
  `angles_Y` float NOT NULL,
  `angles_Z` float NOT NULL,
  `is_Link_Child` bit(1) NOT NULL COMMENT 'Is this a child link for any other instances?',
  `last_Modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`guid`),
  KEY `instance_landblock_idx` (`landblock`)
) ENGINE=InnoDB AUTO_INCREMENT=2142085204 DEFAULT CHARSET=utf8mb3 COMMENT='Weenie Instances for each Landblock';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landblock_instance`
--
-- WHERE:  landblock IN (0xB46F, 0xB470, 0x934B) AND weenie_Class_Id IN (1154, 1542, 7923)

LOCK TABLES `landblock_instance` WRITE;
/*!40000 ALTER TABLE `landblock_instance` DISABLE KEYS */;
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`) VALUES (2068246531,7923,3027173376,140.652,129.139,22.005,-0.741088,0,0,-0.671408,_binary '\0','2021-11-01 00:00:00'),(2068250731,1154,3027238945,112.168,12.26,42.005,0,0,0,-1,_binary '\0','2022-05-10 03:49:02'),(2068250810,1542,3027239247,127.954,76.2272,42.5533,0.263145,0,0,-0.964756,_binary '\0','2022-05-10 03:49:02');
/*!40000 ALTER TABLE `landblock_instance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-07 10:30:56
mysqldump: [Warning] Using a password on the command line interface can be insecure.
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
-- Table structure for table `landblock_instance_link`
--

DROP TABLE IF EXISTS `landblock_instance_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landblock_instance_link` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Instance Link',
  `parent_GUID` int unsigned NOT NULL COMMENT 'GUID of parent instance',
  `child_GUID` int unsigned NOT NULL COMMENT 'GUID of child instance',
  `last_Modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_child_uidx` (`parent_GUID`,`child_GUID`),
  KEY `child_idx` (`child_GUID`),
  CONSTRAINT `instance_link` FOREIGN KEY (`parent_GUID`) REFERENCES `landblock_instance` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=311110 DEFAULT CHARSET=utf8mb3 COMMENT='Weenie Instance Links';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landblock_instance_link`
--
-- WHERE:  parent_GUID IN (SELECT guid FROM landblock_instance WHERE landblock IN (0xB46F, 0xB470, 0x934B) AND weenie_Class_Id IN (1154, 1542, 7923))

mysqldump: Couldn't execute 'SELECT /*!40001 SQL_NO_CACHE */ * FROM `landblock_instance_link` WHERE parent_GUID IN (SELECT guid FROM landblock_instance WHERE landblock IN (0xB46F, 0xB470, 0x934B) AND weenie_Class_Id IN (1154, 1542, 7923))': Table 'landblock_instance' was not locked with LOCK TABLES (1100)

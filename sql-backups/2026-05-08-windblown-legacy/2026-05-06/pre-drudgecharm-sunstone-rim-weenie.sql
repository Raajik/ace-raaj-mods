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
-- Table structure for table `weenie`
--

DROP TABLE IF EXISTS `weenie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie` (
  `class_Id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Weenie Class Id (wcid) / (WCID) / (weenieClassId)',
  `class_Name` varchar(100) NOT NULL COMMENT 'Weenie Class Name (W_????_CLASS)',
  `type` int NOT NULL DEFAULT '0' COMMENT 'WeenieType',
  `last_Modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`class_Id`),
  UNIQUE KEY `className_UNIQUE` (`class_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=101189996 DEFAULT CHARSET=utf8mb3 COMMENT='Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie`
--
-- WHERE:  class_Id IN (24835,850271,850272,850273)

LOCK TABLES `weenie` WRITE;
/*!40000 ALTER TABLE `weenie` DISABLE KEYS */;
INSERT INTO `weenie` VALUES (24835,'drudgecharmbloodletter',51,'2026-05-01 21:32:47'),(850271,'drudgecharm_quality',51,'2026-05-04 15:41:44'),(850272,'drudgecharm_pristine',51,'2026-05-04 15:41:44'),(850273,'drudgecharm_perfect',51,'2026-05-04 15:41:44');
/*!40000 ALTER TABLE `weenie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-04 17:22:05
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
-- Table structure for table `weenie_properties_int`
--

DROP TABLE IF EXISTS `weenie_properties_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_int` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertyInt.????)',
  `value` int NOT NULL COMMENT 'Value of this Property',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_int_type_uidx` (`object_Id`,`type`),
  CONSTRAINT `wcid_int` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=615757 DEFAULT CHARSET=utf8mb3 COMMENT='Int Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_int`
--
-- WHERE:  object_Id IN (24835,850271,850272,850273)

LOCK TABLES `weenie_properties_int` WRITE;
/*!40000 ALTER TABLE `weenie_properties_int` DISABLE KEYS */;
INSERT INTO `weenie_properties_int` VALUES (155566,24835,1,128),(155567,24835,3,21),(155568,24835,5,40),(155569,24835,8,20),(155570,24835,9,0),(610030,24835,11,999),(155571,24835,16,1),(615722,24835,18,128),(155572,24835,19,5),(155573,24835,93,1044),(615721,24835,179,32),(615580,850271,1,128),(615581,850271,3,21),(615582,850271,5,40),(615583,850271,8,20),(615584,850271,9,0),(615694,850271,11,999),(615585,850271,12,40),(615586,850271,14,5),(615587,850271,16,1),(615588,850271,18,256),(615589,850271,19,5),(615590,850271,33,1),(615591,850271,93,1044),(615592,850271,111,100),(615630,850271,179,64),(615595,850272,1,128),(615596,850272,3,21),(615597,850272,5,40),(615598,850272,8,20),(615599,850272,9,0),(615695,850272,11,999),(615600,850272,12,40),(615601,850272,14,5),(615602,850272,16,1),(615603,850272,18,1),(615604,850272,19,5),(615605,850272,33,1),(615606,850272,93,1044),(615607,850272,111,100),(615631,850272,179,128),(615610,850273,1,128),(615611,850273,3,21),(615612,850273,5,40),(615613,850273,8,20),(615614,850273,9,0),(615696,850273,11,999),(615615,850273,12,40),(615616,850273,14,5),(615617,850273,16,1),(615618,850273,18,64),(615619,850273,19,5),(615620,850273,33,1),(615621,850273,93,1044),(615622,850273,111,100),(615632,850273,179,256);
/*!40000 ALTER TABLE `weenie_properties_int` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-04 17:22:05
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
-- Table structure for table `weenie_properties_string`
--

DROP TABLE IF EXISTS `weenie_properties_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_string` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertyString.????)',
  `value` text NOT NULL COMMENT 'Value of this Property',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_string_type_uidx` (`object_Id`,`type`),
  CONSTRAINT `wcid_string` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96365 DEFAULT CHARSET=utf8mb3 COMMENT='String Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_string`
--
-- WHERE:  object_Id IN (24835,850271,850272,850273)

LOCK TABLES `weenie_properties_string` WRITE;
/*!40000 ALTER TABLE `weenie_properties_string` DISABLE KEYS */;
INSERT INTO `weenie_properties_string` VALUES (25680,24835,1,'Bloodletter Drudge Charm'),(96346,24835,14,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96347,24835,15,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96348,24835,16,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96358,24835,20,'Bloodletter Drudge Charms'),(96306,850271,1,'Bloodletter Drudge Charm (Quality)'),(96312,850271,14,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96313,850271,15,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96314,850271,16,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96340,850271,20,'Bloodletter Drudge Charms (Quality)'),(96307,850272,1,'Bloodletter Drudge Charm (Pristine)'),(96315,850272,14,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96316,850272,15,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96317,850272,16,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96341,850272,20,'Bloodletter Drudge Charms (Pristine)'),(96308,850273,1,'Bloodletter Drudge Charm (Perfect)'),(96318,850273,14,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96319,850273,15,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96320,850273,16,'Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.'),(96342,850273,20,'Bloodletter Drudge Charms (Perfect)');
/*!40000 ALTER TABLE `weenie_properties_string` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-04 17:22:05
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
-- Table structure for table `weenie_properties_create_list`
--

DROP TABLE IF EXISTS `weenie_properties_create_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_create_list` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `destination_Type` tinyint NOT NULL COMMENT 'Type of Destination the value applies to (DestinationType.????)',
  `weenie_Class_Id` int unsigned NOT NULL COMMENT 'Weenie Class Id of object to Create',
  `stack_Size` int NOT NULL DEFAULT '1' COMMENT 'Stack Size of object to create (-1 = infinite)',
  `palette` tinyint NOT NULL COMMENT 'Palette Color of Object',
  `shade` float NOT NULL COMMENT 'Shade of Object''s Palette',
  `try_To_Bond` bit(1) NOT NULL COMMENT 'Unused?',
  PRIMARY KEY (`id`),
  KEY `wcid_createlist` (`object_Id`),
  CONSTRAINT `wcid_createlist` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89754 DEFAULT CHARSET=utf8mb3 COMMENT='CreateList Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_create_list`
--
-- WHERE:  object_Id IN (24835,850271,850272,850273)

LOCK TABLES `weenie_properties_create_list` WRITE;
/*!40000 ALTER TABLE `weenie_properties_create_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `weenie_properties_create_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-04 17:22:06

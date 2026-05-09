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
-- WHERE:  class_Id=850201

LOCK TABLES `weenie` WRITE;
/*!40000 ALTER TABLE `weenie` DISABLE KEYS */;
INSERT INTO `weenie` VALUES (850201,'manalattice',44,'2025-01-01 00:00:00');
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

-- Dump completed on 2026-05-03 17:12:21
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
) ENGINE=InnoDB AUTO_INCREMENT=615094 DEFAULT CHARSET=utf8mb3 COMMENT='Int Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_int`
--
-- WHERE:  object_Id=850201

LOCK TABLES `weenie_properties_int` WRITE;
/*!40000 ALTER TABLE `weenie_properties_int` DISABLE KEYS */;
INSERT INTO `weenie_properties_int` VALUES (607763,850201,1,128),(607764,850201,5,10),(607765,850201,8,10),(607766,850201,9,0),(607767,850201,11,1),(607768,850201,12,1),(607769,850201,13,10),(607770,850201,14,10),(607771,850201,15,50000),(607772,850201,16,524296),(607773,850201,19,50000),(607774,850201,33,1),(607775,850201,93,1044),(607776,850201,94,35215),(607777,850201,114,0),(607778,850201,218,4);
/*!40000 ALTER TABLE `weenie_properties_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weenie_properties_bool`
--

DROP TABLE IF EXISTS `weenie_properties_bool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_bool` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertyBool.????)',
  `value` bit(1) NOT NULL COMMENT 'Value of this Property',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_bool_type_uidx` (`object_Id`,`type`),
  CONSTRAINT `wcid_bool` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205108 DEFAULT CHARSET=utf8mb3 COMMENT='Bool Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_bool`
--
-- WHERE:  object_Id=850201

LOCK TABLES `weenie_properties_bool` WRITE;
/*!40000 ALTER TABLE `weenie_properties_bool` DISABLE KEYS */;
INSERT INTO `weenie_properties_bool` VALUES (203150,850201,22,_binary ''),(203151,850201,69,_binary '');
/*!40000 ALTER TABLE `weenie_properties_bool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weenie_properties_float`
--

DROP TABLE IF EXISTS `weenie_properties_float`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_float` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertyFloat.????)',
  `value` double NOT NULL COMMENT 'Value of this Property',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_float_type_uidx` (`object_Id`,`type`),
  CONSTRAINT `wcid_float` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=398467 DEFAULT CHARSET=utf8mb3 COMMENT='Float Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_float`
--
-- WHERE:  object_Id=850201

LOCK TABLES `weenie_properties_float` WRITE;
/*!40000 ALTER TABLE `weenie_properties_float` DISABLE KEYS */;
INSERT INTO `weenie_properties_float` VALUES (396208,850201,39,0.65);
/*!40000 ALTER TABLE `weenie_properties_float` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=96245 DEFAULT CHARSET=utf8mb3 COMMENT='String Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_string`
--
-- WHERE:  object_Id=850201

LOCK TABLES `weenie_properties_string` WRITE;
/*!40000 ALTER TABLE `weenie_properties_string` DISABLE KEYS */;
INSERT INTO `weenie_properties_string` VALUES (95292,850201,1,'Mana Lattice'),(95293,850201,14,'A crystalline lattice used as a base for creating reusable buff gems. Use a charged Spellsiphon on this to infuse it with extracted spells.'),(95294,850201,15,'A delicate lattice of crystallized mana, pulsing with faint prismatic light.'),(95295,850201,16,'A delicate lattice of crystallized mana.  When infused with spells via a charged Spellsiphon, it becomes a reusable buff gem that can be activated repeatedly.');
/*!40000 ALTER TABLE `weenie_properties_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weenie_properties_d_i_d`
--

DROP TABLE IF EXISTS `weenie_properties_d_i_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_d_i_d` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertyDataId.????)',
  `value` int unsigned NOT NULL COMMENT 'Value of this Property',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_did_type_uidx` (`object_Id`,`type`),
  CONSTRAINT `wcid_did` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=268996 DEFAULT CHARSET=utf8mb3 COMMENT='DataID Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_d_i_d`
--
-- WHERE:  object_Id=850201

LOCK TABLES `weenie_properties_d_i_d` WRITE;
/*!40000 ALTER TABLE `weenie_properties_d_i_d` DISABLE KEYS */;
INSERT INTO `weenie_properties_d_i_d` VALUES (267157,850201,1,33556407),(267158,850201,3,536870932),(267159,850201,6,67111919),(267160,850201,7,268435782),(267161,850201,8,100673212),(267162,850201,22,872415275);
/*!40000 ALTER TABLE `weenie_properties_d_i_d` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 17:12:21

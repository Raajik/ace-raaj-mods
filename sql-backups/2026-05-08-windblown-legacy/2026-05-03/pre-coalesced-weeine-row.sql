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
-- WHERE:  class_Id IN (42516,42517,42518)

LOCK TABLES `weenie` WRITE;
/*!40000 ALTER TABLE `weenie` DISABLE KEYS */;
INSERT INTO `weenie` VALUES (42516,'lessercoalescedmana',51,'2025-01-01 00:00:00'),(42517,'greatercoalescedmana',51,'2025-01-01 00:00:00'),(42518,'aethericcoalescedmana',51,'2025-01-01 00:00:00');
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

-- Dump completed on 2026-05-03 20:02:08
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
) ENGINE=InnoDB AUTO_INCREMENT=615183 DEFAULT CHARSET=utf8mb3 COMMENT='Int Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_int`
--
-- WHERE:  object_Id IN (42516,42517,42518)

LOCK TABLES `weenie_properties_int` WRITE;
/*!40000 ALTER TABLE `weenie_properties_int` DISABLE KEYS */;
INSERT INTO `weenie_properties_int` VALUES (607836,42516,1,128),(607837,42516,5,5),(607838,42516,11,10),(607839,42516,12,1),(607840,42516,16,524296),(607841,42516,18,20),(607842,42516,19,0),(607843,42516,33,0),(607844,42516,93,1044),(607845,42516,94,35215),(607846,42516,114,1),(607847,42517,1,128),(607848,42517,5,5),(607849,42517,11,10),(607850,42517,12,1),(607851,42517,16,524296),(607852,42517,18,32),(607853,42517,19,0),(607854,42517,33,0),(607855,42517,93,1044),(607856,42517,94,35215),(607857,42517,114,1),(607858,42518,1,128),(607859,42518,5,5),(607860,42518,11,10),(607861,42518,12,1),(607862,42518,16,524296),(607863,42518,18,1),(607864,42518,19,0),(607865,42518,33,0),(607866,42518,93,1044),(607867,42518,94,35215),(607868,42518,114,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=205129 DEFAULT CHARSET=utf8mb3 COMMENT='Bool Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_bool`
--
-- WHERE:  object_Id IN (42516,42517,42518)

LOCK TABLES `weenie_properties_bool` WRITE;
/*!40000 ALTER TABLE `weenie_properties_bool` DISABLE KEYS */;
INSERT INTO `weenie_properties_bool` VALUES (203173,42516,11,_binary ''),(203174,42516,13,_binary ''),(203175,42516,14,_binary ''),(203176,42516,19,_binary ''),(203177,42516,69,_binary '\0'),(203178,42517,11,_binary ''),(203179,42517,13,_binary ''),(203180,42517,14,_binary ''),(203181,42517,19,_binary ''),(203182,42517,69,_binary '\0'),(203183,42518,11,_binary ''),(203184,42518,13,_binary ''),(203185,42518,14,_binary ''),(203186,42518,19,_binary ''),(203187,42518,69,_binary '\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=398468 DEFAULT CHARSET=utf8mb3 COMMENT='Float Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_float`
--
-- WHERE:  object_Id IN (42516,42517,42518)

LOCK TABLES `weenie_properties_float` WRITE;
/*!40000 ALTER TABLE `weenie_properties_float` DISABLE KEYS */;
INSERT INTO `weenie_properties_float` VALUES (396212,42516,39,0.3),(396213,42517,39,0.3),(396214,42518,39,0.3);
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
) ENGINE=InnoDB AUTO_INCREMENT=96258 DEFAULT CHARSET=utf8mb3 COMMENT='String Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_string`
--
-- WHERE:  object_Id IN (42516,42517,42518)

LOCK TABLES `weenie_properties_string` WRITE;
/*!40000 ALTER TABLE `weenie_properties_string` DISABLE KEYS */;
INSERT INTO `weenie_properties_string` VALUES (95311,42516,1,'Lesser Coalesced Mana'),(95312,42516,15,'Use on equipment to Awaken it to tier I. Awakened items gain item XP and can level up to a maximum of 25.'),(95313,42516,16,'A mote of lesser coalesced mana. When used on eligible equipment, it Awakens the item, allowing it to gain experience and grow in power.'),(95314,42516,20,'Lesser Coalesced Mana'),(95315,42517,1,'Greater Coalesced Mana'),(95316,42517,15,'Use on equipment to Awaken it to tier II. Awakened items gain item XP and can level up to a maximum of 50.'),(95317,42517,16,'A mote of greater coalesced mana. When used on eligible equipment, it Awakens the item to tier II, allowing it to gain experience and grow in power.'),(95318,42517,20,'Greater Coalesced Mana'),(95319,42518,1,'Aetheric Coalesced Mana'),(95320,42518,15,'Use on equipment to Awaken it to tier III. Awakened items gain item XP and can level up to a maximum of 75.'),(95321,42518,16,'A mote of aetheric coalesced mana. When used on eligible equipment, it Awakens the item to tier III, allowing it to gain experience and grow in power.'),(95322,42518,20,'Aetheric Coalesced Mana');
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
) ENGINE=InnoDB AUTO_INCREMENT=269011 DEFAULT CHARSET=utf8mb3 COMMENT='DataID Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_d_i_d`
--
-- WHERE:  object_Id IN (42516,42517,42518)

LOCK TABLES `weenie_properties_d_i_d` WRITE;
/*!40000 ALTER TABLE `weenie_properties_d_i_d` DISABLE KEYS */;
INSERT INTO `weenie_properties_d_i_d` VALUES (267181,42516,1,33557506),(267182,42516,3,536870932),(267183,42516,6,67112808),(267184,42516,8,100690901),(267185,42516,22,872415275),(267186,42517,1,33557506),(267187,42517,3,536870932),(267188,42517,6,67112808),(267189,42517,8,100690900),(267190,42517,22,872415275),(267191,42518,1,33557506),(267192,42518,3,536870932),(267193,42518,6,67112808),(267194,42518,8,100690899),(267195,42518,22,872415275);
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

-- Dump completed on 2026-05-03 20:02:08

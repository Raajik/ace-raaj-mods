mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.4.8, for Win64 (x86_64)
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
-- WHERE:  class_Id IN (800039,850200,850201,850300,850301,850302,850303,850340,850341,42516,42517,42518) OR (class_Id IN (45875,45876))

LOCK TABLES `weenie` WRITE;
/*!40000 ALTER TABLE `weenie` DISABLE KEYS */;
INSERT INTO `weenie` VALUES (42516,'lessercoalescedmana',51,'2025-01-01 00:00:00'),(42517,'greatercoalescedmana',51,'2025-01-01 00:00:00'),(42518,'aethericcoalescedmana',51,'2025-01-01 00:00:00'),(45875,'ace45875-luckygoldletter',51,'2026-05-08 00:58:13'),(45876,'ace45876-scarletredletter',51,'2026-05-08 00:58:13'),(800039,'radi',12,'2025-02-09 10:00:00'),(850200,'spellsiphon',44,'2025-01-01 00:00:00'),(850201,'manalattice',38,'2026-05-03 00:00:00'),(850300,'kaelithsprovisions',12,'2026-04-30 08:46:48'),(850301,'thornwicksupplycache',12,'2026-05-01 10:56:43'),(850302,'mirellesarmory',12,'2026-05-01 10:56:50'),(850303,'eldrinsdepot',12,'2026-04-30 08:47:10');
/*!40000 ALTER TABLE `weenie` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=618395 DEFAULT CHARSET=utf8mb3 COMMENT='Int Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_int`
--
-- WHERE:  class_Id IN (800039,850200,850201,850300,850301,850302,850303,850340,850341,42516,42517,42518) OR (class_Id IN (45875,45876))

mysqldump: Couldn't execute 'SELECT /*!40001 SQL_NO_CACHE */ * FROM `weenie_properties_int` WHERE class_Id IN (800039,850200,850201,850300,850301,850302,850303,850340,850341,42516,42517,42518) OR (class_Id IN (45875,45876))': Unknown column 'class_Id' in 'where clause' (1054)

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
-- WHERE:  object_Id IN (45875,45876) OR (object_Id IN (24835,4133,7603,8144,8145,8146,8147,9097,12215,12216,12225,3680,3687,4121,22059,24846,25554,25561,28886,28888,28889,34029,36359,36362) AND type IN (93,19))

LOCK TABLES `weenie_properties_int` WRITE;
/*!40000 ALTER TABLE `weenie_properties_int` DISABLE KEYS */;
INSERT INTO `weenie_properties_int` VALUES (145117,3680,19,200),(145118,3680,93,1044),(145134,3687,19,10),(145135,3687,93,1044),(145230,4121,19,0),(145231,4121,93,1044),(51540,4133,19,2),(51541,4133,93,1044),(146853,7603,19,5),(146854,7603,93,1044),(146879,8144,19,0),(146880,8144,93,1044),(146888,8145,19,0),(146889,8145,93,1044),(146897,8146,19,0),(146898,8146,93,1044),(146906,8147,19,0),(146907,8147,93,1044),(147252,9097,19,5),(147253,9097,93,1044),(149910,12215,19,0),(149911,12215,93,1044),(149920,12216,19,0),(149921,12216,93,1044),(149940,12225,19,0),(149941,12225,93,1044),(153785,22059,19,0),(153786,22059,93,1044),(155572,24835,19,5),(155573,24835,93,1044),(155637,24846,19,200),(155638,24846,93,1044),(34293,25554,19,1000),(34296,25554,93,1044),(156195,25561,19,0),(156196,25561,93,1044),(157913,28886,19,0),(157914,28886,93,1044),(157931,28888,19,0),(157932,28888,93,1044),(157940,28889,19,0),(157941,28889,93,1044),(497767,34029,19,0),(497768,34029,93,1044),(498739,36359,19,0),(498740,36359,93,1044),(498749,36362,19,0),(498750,36362,93,1044),(339963,45875,1,8192),(339964,45875,5,1),(618389,45875,8,1),(339966,45875,9,0),(618373,45875,11,100),(618349,45875,12,1),(618374,45875,13,1),(618350,45875,14,1),(618375,45875,15,1),(618376,45875,16,1),(339968,45875,19,1),(618390,45875,33,1),(618391,45875,93,1044),(339974,45876,1,8192),(339975,45876,5,1),(618392,45876,8,1),(339977,45876,9,0),(618377,45876,11,100),(618355,45876,12,1),(618378,45876,13,1),(618356,45876,14,1),(618379,45876,15,1),(618380,45876,16,1),(339979,45876,19,1),(618393,45876,33,1),(618394,45876,93,1044);
/*!40000 ALTER TABLE `weenie_properties_int` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=96723 DEFAULT CHARSET=utf8mb3 COMMENT='String Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weenie_properties_string`
--
-- WHERE:  object_Id IN (45875,45876) OR (object_Id IN (24835,4133,7603,8144,8145,8146,8147,9097,12215,12216,12225,3680,3687,4121,22059,24846,25554,25561,28886,28888,28889,34029,36359,36362) AND type IN (93,19))

LOCK TABLES `weenie_properties_string` WRITE;
/*!40000 ALTER TABLE `weenie_properties_string` DISABLE KEYS */;
INSERT INTO `weenie_properties_string` VALUES (55405,45875,1,'Lucky Gold Letter'),(55406,45875,15,'A bright gold piece of paper with some writing on it.'),(55407,45876,1,'Scarlet Red Letter'),(55408,45876,15,'A bright red piece of paper with some writing on it.');
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

-- Dump completed on 2026-05-08 18:26:48


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
) ENGINE=InnoDB AUTO_INCREMENT=89534 DEFAULT CHARSET=utf8mb3 COMMENT='CreateList Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `weenie_properties_create_list` WRITE;
/*!40000 ALTER TABLE `weenie_properties_create_list` DISABLE KEYS */;
INSERT INTO `weenie_properties_create_list` VALUES (89484,801888,2,28046,0,93,0.7,_binary '\0'),(89485,801888,2,82,0,88,0.7,_binary '\0'),(89486,801888,2,107,0,88,0.7,_binary '\0'),(89487,801888,2,127,0,85,0,_binary '\0'),(89488,801888,2,130,0,85,0,_binary '\0'),(89489,801890,2,28046,0,93,0.7,_binary '\0'),(89490,801890,2,82,0,88,0.7,_binary '\0'),(89491,801890,2,107,0,88,0.7,_binary '\0'),(89492,801890,2,127,0,85,0,_binary '\0'),(89493,801890,2,130,0,85,0,_binary '\0'),(89494,803006,2,26007,0,88,0.67,_binary '\0'),(89495,803006,2,127,0,7,0.33,_binary '\0'),(89496,803006,2,132,0,18,1,_binary '\0'),(89497,803006,2,118,0,8,0,_binary '\0'),(89498,803006,2,10696,0,9,0.5,_binary '\0'),(89499,803006,4,802970,-1,0,1,_binary '\0'),(89500,803006,4,802972,-1,0,1,_binary '\0'),(89501,803006,4,802973,-1,0,1,_binary '\0'),(89502,803006,4,802974,-1,0,1,_binary '\0'),(89503,803006,4,802976,-1,0,1,_binary '\0'),(89504,803006,4,802977,-1,0,1,_binary '\0'),(89505,803006,4,802978,-1,0,1,_binary '\0'),(89506,803006,4,802979,-1,0,1,_binary '\0'),(89507,803006,4,802980,-1,0,1,_binary '\0'),(89508,803006,4,802981,-1,0,1,_binary '\0'),(89509,803006,4,802982,-1,0,1,_binary '\0'),(89510,803006,4,802983,-1,0,1,_binary '\0'),(89511,803006,4,802984,-1,0,1,_binary '\0'),(89512,803006,4,802985,-1,0,1,_binary '\0'),(89513,803006,4,802986,-1,0,1,_binary '\0'),(89514,803006,4,802987,-1,0,1,_binary '\0'),(89515,803006,4,802988,-1,0,1,_binary '\0'),(89516,803006,4,802989,-1,0,1,_binary '\0'),(89517,803006,4,802990,-1,0,1,_binary '\0'),(89518,803006,4,802991,-1,0,1,_binary '\0'),(89519,803006,4,802992,-1,0,1,_binary '\0'),(89520,803006,4,802993,-1,0,1,_binary '\0'),(89521,803006,4,802994,-1,0,1,_binary '\0'),(89522,803006,4,802995,-1,0,1,_binary '\0'),(89523,803006,4,802996,-1,0,1,_binary '\0'),(89524,803006,4,802997,-1,0,1,_binary '\0'),(89525,803006,4,802998,-1,0,1,_binary '\0'),(89526,803006,4,803458,-1,0,1,_binary '\0'),(89527,803006,4,803459,-1,0,1,_binary '\0'),(89528,803006,4,803001,-1,0,1,_binary '\0'),(89529,803006,4,803002,-1,0,1,_binary '\0'),(89530,803006,4,803003,-1,0,1,_binary '\0'),(89531,803006,4,803005,-1,0,1,_binary '\0'),(89532,803006,4,803004,-1,0,1,_binary '\0'),(89533,803006,4,803577,-1,0,1,_binary '\0');
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


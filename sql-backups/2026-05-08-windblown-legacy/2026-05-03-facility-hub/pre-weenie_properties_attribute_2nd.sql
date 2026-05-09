
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
DROP TABLE IF EXISTS `weenie_properties_attribute_2nd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_attribute_2nd` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `type` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertyAttribute2nd.????)',
  `init_Level` int unsigned NOT NULL COMMENT 'innate points',
  `level_From_C_P` int unsigned NOT NULL COMMENT 'points raised',
  `c_P_Spent` int unsigned NOT NULL COMMENT 'XP spent on this attribute',
  `current_Level` int unsigned NOT NULL COMMENT 'current value of the vital',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_attribute2nd_type_uidx` (`object_Id`,`type`),
  CONSTRAINT `wcid_attribute2nd` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33160 DEFAULT CHARSET=utf8mb3 COMMENT='Attribute2nd (Vital) Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `weenie_properties_attribute_2nd` WRITE;
/*!40000 ALTER TABLE `weenie_properties_attribute_2nd` DISABLE KEYS */;
INSERT INTO `weenie_properties_attribute_2nd` VALUES (33151,801888,1,10,0,0,100000),(33152,801888,3,10,0,0,100000),(33153,801888,5,10,0,0,100000),(33154,801890,1,10,0,0,100000),(33155,801890,3,10,0,0,100000),(33156,801890,5,10,0,0,100000),(33157,803006,1,25,0,0,38),(33158,803006,3,50,0,0,75),(33159,803006,5,20,0,0,45);
/*!40000 ALTER TABLE `weenie_properties_attribute_2nd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


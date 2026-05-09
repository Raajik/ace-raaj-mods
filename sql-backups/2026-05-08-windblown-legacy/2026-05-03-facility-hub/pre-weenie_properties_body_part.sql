
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
DROP TABLE IF EXISTS `weenie_properties_body_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weenie_properties_body_part` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Property',
  `object_Id` int unsigned NOT NULL COMMENT 'Id of the object this property belongs to',
  `key` smallint unsigned NOT NULL COMMENT 'Type of Property the value applies to (PropertySkill.????)',
  `d_Type` int NOT NULL,
  `d_Val` int NOT NULL,
  `d_Var` float NOT NULL,
  `base_Armor` int NOT NULL,
  `armor_Vs_Slash` int NOT NULL,
  `armor_Vs_Pierce` int NOT NULL,
  `armor_Vs_Bludgeon` int NOT NULL,
  `armor_Vs_Cold` int NOT NULL,
  `armor_Vs_Fire` int NOT NULL,
  `armor_Vs_Acid` int NOT NULL,
  `armor_Vs_Electric` int NOT NULL,
  `armor_Vs_Nether` int NOT NULL,
  `b_h` int NOT NULL,
  `h_l_f` float NOT NULL,
  `m_l_f` float NOT NULL,
  `l_l_f` float NOT NULL,
  `h_r_f` float NOT NULL,
  `m_r_f` float NOT NULL,
  `l_r_f` float NOT NULL,
  `h_l_b` float NOT NULL,
  `m_l_b` float NOT NULL,
  `l_l_b` float NOT NULL,
  `h_r_b` float NOT NULL,
  `m_r_b` float NOT NULL,
  `l_r_b` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wcid_bodypart_type_uidx` (`object_Id`,`key`),
  CONSTRAINT `wcid_bodypart` FOREIGN KEY (`object_Id`) REFERENCES `weenie` (`class_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83361 DEFAULT CHARSET=utf8mb3 COMMENT='Body Part Properties of Weenies';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `weenie_properties_body_part` WRITE;
/*!40000 ALTER TABLE `weenie_properties_body_part` DISABLE KEYS */;
INSERT INTO `weenie_properties_body_part` VALUES (83334,801888,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0.33,0,0,0.33,0,0,0.33,0,0,0.33,0,0),(83335,801888,1,4,0,0,0,0,0,0,0,0,0,0,0,2,0.44,0.17,0,0.44,0.17,0,0.44,0.17,0,0.44,0.17,0),(83336,801888,2,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0.17,0,0,0.17,0,0,0.17,0,0,0.17,0),(83337,801888,3,4,0,0,0,0,0,0,0,0,0,0,0,1,0.23,0.03,0,0.23,0.03,0,0.23,0.03,0,0.23,0.03,0),(83338,801888,4,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0.3,0,0,0.3,0,0,0.3,0,0,0.3,0),(83339,801888,5,4,2,0.75,0,0,0,0,0,0,0,0,0,2,0,0.2,0,0,0.2,0,0,0.2,0,0,0.2,0),(83340,801888,6,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0.13,0.18,0,0.13,0.18,0,0.13,0.18,0,0.13,0.18),(83341,801888,7,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0.6,0,0,0.6,0,0,0.6,0,0,0.6),(83342,801888,8,4,2,0.75,0,0,0,0,0,0,0,0,0,3,0,0,0.22,0,0,0.22,0,0,0.22,0,0,0.22),(83343,801890,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0.33,0,0,0.33,0,0,0.33,0,0,0.33,0,0),(83344,801890,1,4,0,0,0,0,0,0,0,0,0,0,0,2,0.44,0.17,0,0.44,0.17,0,0.44,0.17,0,0.44,0.17,0),(83345,801890,2,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0.17,0,0,0.17,0,0,0.17,0,0,0.17,0),(83346,801890,3,4,0,0,0,0,0,0,0,0,0,0,0,1,0.23,0.03,0,0.23,0.03,0,0.23,0.03,0,0.23,0.03,0),(83347,801890,4,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0.3,0,0,0.3,0,0,0.3,0,0,0.3,0),(83348,801890,5,4,2,0.75,0,0,0,0,0,0,0,0,0,2,0,0.2,0,0,0.2,0,0,0.2,0,0,0.2,0),(83349,801890,6,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0.13,0.18,0,0.13,0.18,0,0.13,0.18,0,0.13,0.18),(83350,801890,7,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0.6,0,0,0.6,0,0,0.6,0,0,0.6),(83351,801890,8,4,2,0.75,0,0,0,0,0,0,0,0,0,3,0,0,0.22,0,0,0.22,0,0,0.22,0,0,0.22),(83352,803006,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0.33,0,0,0.33,0,0,0.33,0,0,0.33,0,0),(83353,803006,1,4,0,0,0,0,0,0,0,0,0,0,0,2,0.44,0.17,0,0.44,0.17,0,0.44,0.17,0,0.44,0.17,0),(83354,803006,2,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0.17,0,0,0.17,0,0,0.17,0,0,0.17,0),(83355,803006,3,4,0,0,0,0,0,0,0,0,0,0,0,1,0.23,0.03,0,0.23,0.03,0,0.23,0.03,0,0.23,0.03,0),(83356,803006,4,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0.3,0,0,0.3,0,0,0.3,0,0,0.3,0),(83357,803006,5,4,2,0.75,0,0,0,0,0,0,0,0,0,2,0,0.2,0,0,0.2,0,0,0.2,0,0,0.2,0),(83358,803006,6,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0.13,0.18,0,0.13,0.18,0,0.13,0.18,0,0.13,0.18),(83359,803006,7,4,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0.6,0,0,0.6,0,0,0.6,0,0,0.6),(83360,803006,8,4,2,0.75,0,0,0,0,0,0,0,0,0,3,0,0,0.22,0,0,0.22,0,0,0.22,0,0,0.22);
/*!40000 ALTER TABLE `weenie_properties_body_part` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


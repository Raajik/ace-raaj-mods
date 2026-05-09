
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

LOCK TABLES `landblock_instance` WRITE;
/*!40000 ALTER TABLE `landblock_instance` DISABLE KEYS */;
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`) VALUES (1880293376,143,19923200,-4.05,-27.1675,0.0125,-0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00'),(1880293377,278,19923202,4.74999,-30,0,0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00'),(1880293378,4980,19923204,10,-30,0,-0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00'),(1880293379,278,19923211,30,-4.75,0,0,0,0,-1,_binary '\0','2021-11-01 00:00:00'),(1880293380,4979,19923222,62.1713,-29.7508,0,0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00'),(1880293381,278,19923224,55.25,-30,0,-0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00'),(1880293382,42841,19923238,30,-63.132,6.005,0,0,0,-1,_binary '\0','2021-11-01 00:00:00'),(1880293383,568,19923240,25.25,-60,6,-0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00'),(1880293384,568,19923241,34.75,-60,6,0.707107,0,0,-0.707107,_binary '\0','2021-11-01 00:00:00');
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


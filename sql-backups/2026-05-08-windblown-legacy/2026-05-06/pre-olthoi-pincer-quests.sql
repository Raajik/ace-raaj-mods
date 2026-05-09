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
-- Dumping data for table `quest`
--
-- WHERE:  name LIKE 'OlthoiHunting%' OR name LIKE '%Pincer%' OR name LIKE 'Hive_%' OR name = 'HarvesterInitialQuest'

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
INSERT INTO `quest` VALUES (1977,'BroodMatronPincerPickedUp',72000,-1,'You have obtained a Brood Matron Pincer.','2021-11-01 00:00:00'),(1985,'BroodPincerPickup',72000,-1,'quest timer','2022-06-21 15:22:25'),(3227,'HarvesterInitialQuest',72000,-1,'Harvester in the Mist','2021-11-01 00:00:00'),(3274,'HiveEvisPincer_0513',72000,-1,'Hive Eviscerator Pincer','2021-11-01 00:00:00'),(3275,'HiveQueenKill',0,1,'quest timer','2022-06-21 15:22:25'),(3276,'HiveWarriorPincer_0513',72000,-1,'quest timer','2021-11-01 00:00:00'),(4036,'OlthoiHunting1',72000,-1,'Olthoi Hunting 1','2021-11-01 00:00:00'),(4037,'OlthoiHunting2',72000,-1,'Olthoi Hunting 2','2021-11-01 00:00:00'),(4038,'OlthoiHunting3',72000,-1,'Olthoi Hunting 3','2021-11-01 00:00:00'),(4039,'OlthoiHunting4',72000,-1,'Olthoi Hunting 4','2021-11-01 00:00:00'),(4040,'OlthoiHunting5',72000,-1,'Olthoi Hunting 5','2021-11-01 00:00:00'),(4041,'OlthoiHunting6',72000,-1,'Olthoi Hunting 6','2021-11-01 00:00:00'),(4042,'OlthoiHunting7',72000,-1,'Olthoi Hunting 7','2021-11-01 00:00:00'),(4043,'OlthoiHunting8',72000,-1,'Olthoi Hunting 8','2021-11-01 00:00:00');
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 17:43:41

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
-- Dumping data for table `weenie`
--
-- WHERE:  class_Id=3669

LOCK TABLES `weenie` WRITE;
/*!40000 ALTER TABLE `weenie` DISABLE KEYS */;
INSERT INTO `weenie` VALUES (3669,'drudgecharm',51,'2026-04-29 19:58:41');
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

-- Dump completed on 2026-05-04  1:43:01
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
-- Dumping data for table `weenie_properties_int`
--
-- WHERE:  object_Id=3669

LOCK TABLES `weenie_properties_int` WRITE;
/*!40000 ALTER TABLE `weenie_properties_int` DISABLE KEYS */;
INSERT INTO `weenie_properties_int` VALUES (145020,3669,1,128),(145021,3669,3,21),(145022,3669,5,40),(145023,3669,8,20),(145024,3669,9,0),(607447,3669,12,40),(607448,3669,14,5),(145025,3669,16,1),(145026,3669,19,5),(607445,3669,33,1),(145027,3669,93,1044),(607446,3669,111,100);
/*!40000 ALTER TABLE `weenie_properties_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `weenie_properties_string`
--
-- WHERE:  object_Id=3669

LOCK TABLES `weenie_properties_string` WRITE;
/*!40000 ALTER TABLE `weenie_properties_string` DISABLE KEYS */;
INSERT INTO `weenie_properties_string` VALUES (22552,3669,1,'Drudge Charm');
/*!40000 ALTER TABLE `weenie_properties_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `weenie_properties_bool`
--
-- WHERE:  object_Id=3669

LOCK TABLES `weenie_properties_bool` WRITE;
/*!40000 ALTER TABLE `weenie_properties_bool` DISABLE KEYS */;
INSERT INTO `weenie_properties_bool` VALUES (40160,3669,22,_binary ''),(40161,3669,23,_binary '');
/*!40000 ALTER TABLE `weenie_properties_bool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `weenie_properties_float`
--
-- WHERE:  object_Id=3669

LOCK TABLES `weenie_properties_float` WRITE;
/*!40000 ALTER TABLE `weenie_properties_float` DISABLE KEYS */;
INSERT INTO `weenie_properties_float` VALUES (119253,3669,39,0.37);
/*!40000 ALTER TABLE `weenie_properties_float` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `weenie_properties_d_i_d`
--
-- WHERE:  object_Id=3669

LOCK TABLES `weenie_properties_d_i_d` WRITE;
/*!40000 ALTER TABLE `weenie_properties_d_i_d` DISABLE KEYS */;
INSERT INTO `weenie_properties_d_i_d` VALUES (66398,3669,1,33554683),(66399,3669,3,536870932),(66400,3669,6,67111919),(66401,3669,7,268435832),(66402,3669,8,100670040),(66403,3669,22,872415275),(66404,3669,36,234881046);
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

-- Dump completed on 2026-05-04  1:43:01

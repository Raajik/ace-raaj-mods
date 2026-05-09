
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

LOCK TABLES `weenie` WRITE;
/*!40000 ALTER TABLE `weenie` DISABLE KEYS */;
INSERT INTO `weenie` VALUES (373,'portalbelligtowerbase',7,'2005-02-09 10:00:00'),(1121,'portalmitemaze',7,'2005-02-09 10:00:00'),(1512,'portalhallshelm',7,'2005-02-09 10:00:00'),(2070,'portaldungeonfern',7,'2005-02-09 10:00:00'),(2391,'portalabandonedarena',7,'2005-02-09 10:00:00'),(3634,'portalmountainsewer',7,'2005-02-09 10:00:00'),(4160,'portaldungeonmei',7,'2005-02-09 10:00:00'),(4162,'portaldungeonbinar',7,'2005-02-09 10:00:00'),(4164,'portaldesertmine',7,'2005-02-09 10:00:00'),(4166,'portalmaggreth',7,'2005-02-09 10:00:00'),(4929,'portaldesertruin',7,'2005-02-09 10:00:00'),(7614,'portalforgottencatacombs',7,'2005-02-09 10:00:00'),(8367,'portalmosswartmaze',7,'2005-02-09 10:00:00'),(8379,'portalmosswartbanderlingdungeon',7,'2005-02-09 10:00:00'),(9005,'portaldesertmarch',7,'2005-02-09 10:00:00'),(28061,'portalcoraltunnelseast',7,'2005-02-09 10:00:00'),(801784,'AustereBugGen',1,'2005-02-09 10:00:00'),(801787,'AustereBugGen2',1,'2005-02-09 10:00:00'),(801789,'ThasaliGen',1,'2005-02-09 10:00:00'),(801791,'SwampRuinGen2',1,'2005-02-09 10:00:00'),(801824,'AustereGen3',1,'2005-02-09 10:00:00'),(801826,'KlaatuGen',1,'2005-02-09 10:00:00'),(801828,'KlaatuGen2',1,'2005-02-09 10:00:00'),(801830,'MithrilMosswartGen',1,'2005-02-09 10:00:00'),(801832,'MithrilMosswartMasterGen',1,'2005-02-09 10:00:00'),(801834,'MithrilBanderlingGen',1,'2005-02-09 10:00:00'),(801835,'AustereGen5',1,'2005-02-09 10:00:00'),(801836,'SandTuskerGen801836',1,'2005-02-09 10:00:00'),(801837,'ShadowElfinGen',1,'2005-02-09 10:00:00'),(801839,'BigShadowElfinGen',1,'2005-02-09 10:00:00'),(801841,'AustereGen6',1,'2005-02-09 10:00:00'),(801854,'RynthidGen1',1,'2005-02-09 10:00:00'),(801860,'RynthidGen01	',1,'2005-02-09 10:00:00'),(801861,'RynthidGen2',1,'2005-02-09 10:00:00'),(801862,'RynthidGen3',1,'2005-02-09 10:00:00'),(801863,'RynthidGen4',1,'2005-02-09 10:00:00'),(801864,'RynthidGen5',1,'2005-02-09 10:00:00'),(801865,'RynthidGen6',1,'2005-02-09 10:00:00'),(801867,'MithrilMiteGen',1,'2005-02-09 10:00:00'),(801868,'MordantGen1',1,'2005-02-09 10:00:00'),(801869,'MordantGen2',1,'2005-02-09 10:00:00'),(801871,'AerliteGen1',1,'2020-12-31 07:36:00'),(801875,'AerliteGen2',1,'2020-12-31 07:36:00'),(801876,'MordantGen3',1,'2020-12-31 07:36:00'),(801888,'Merril',10,'2023-01-14 02:28:36'),(801890,'Derril',10,'2023-01-14 02:30:48'),(802970,'ToTFloor1KC',38,'2024-04-24 10:41:07'),(802972,'ToTFloor2KC',38,'2024-04-24 10:41:22'),(802973,'ToTFloor3KC',38,'2024-04-24 10:41:45'),(802974,'ToTFloor4KC',38,'2024-04-24 10:42:00'),(802976,'Damp Caverns Contract',38,'2024-04-24 10:33:01'),(802977,'Dungeon Muddy Contract',38,'2024-04-24 10:28:25'),(802978,'Fractured Thesali Contract',38,'2024-04-24 10:28:56'),(802979,'Darkened Coral Tunnels Contract',38,'2024-04-24 10:29:23'),(802980,'Tusker Arena Contract',38,'2024-04-24 10:29:55'),(802981,'Corroded Halls Contract',38,'2024-04-24 10:30:31'),(802982,'Forbidden Banderling Conquest Contract',38,'2024-04-24 10:30:58'),(802983,'Mosswart Labrynth Contract',38,'2024-04-24 10:31:17'),(802984,'Catacombs of the Forbidden Contract',38,'2024-04-28 10:07:03'),(802985,'Thief Trail Contract',38,'2024-04-24 10:31:53'),(802986,'Nemesis Hideout Contract',38,'2024-04-24 10:32:22'),(802987,'Swamp Ruin Contract',38,'2024-04-22 10:48:06'),(802988,'Desert Mine Contract',38,'2024-04-24 10:34:02'),(802989,'Desert Ruin Contract',38,'2024-04-24 10:34:20'),(802990,'Bellig Tower Contract',38,'2024-04-24 10:34:44'),(802991,'Mountain Sewer Contract',38,'2024-04-24 10:35:05'),(802992,'Mite Maze Contract',38,'2024-04-24 10:35:38'),(802993,'Dungeon Maggreth Contract',38,'2024-04-24 10:36:11'),(802994,'Dungeon Mei Contract',38,'2024-04-24 10:36:38'),(802995,'Dungeon Binar Contract',38,'2024-04-24 10:36:59'),(802996,'Dungeon Fern Contract',38,'2024-04-24 10:37:24'),(802997,'Desert March Contract',38,'2024-04-24 10:37:45'),(802998,'Arramoran Highland Contract',38,'2024-04-24 10:38:16'),(802999,'Arramoran Coastal Contract',38,'2024-04-24 10:38:31'),(803000,'Arramoran Marshland Contract',38,'2024-04-24 10:38:47'),(803001,'Fractured Temple of Enlightenment Contract',38,'2024-04-24 10:39:19'),(803003,'Kou-ans Belt Contract',38,'2024-04-24 10:39:57'),(803004,'Gorth Falls Contract',38,'2024-04-24 10:40:16'),(803005,'Ashen Valley Contract',38,'2024-04-24 10:40:42'),(803006,'FHContractAgent',12,'2023-02-17 08:30:53'),(803458,'Venerable Mausoleum Contract',38,'2024-04-24 10:21:32'),(803459,'Shadow Bandit Contract',38,'2024-05-01 08:39:51'),(803577,'Fort Tethana Contract',38,'2024-04-25 12:09:26'),(850067,'ace850067-mordantbanditgenerator',1,'2020-12-31 07:36:00');
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


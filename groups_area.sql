
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `groups_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `area_meta_data_id` bigint(20) DEFAULT NULL,
  `create_area` bit(1) NOT NULL,
  `groups_id` bigint(20) NOT NULL,
  `view_area` bit(1) NOT NULL,
  `view_area_menu` bit(1) NOT NULL,
  `area_category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK62ADB41868B52F0E` (`groups_id`),
  KEY `FK62ADB418E6E6FE0` (`area_meta_data_id`),
  KEY `FK62ADB4185D3B4D1` (`area_category_id`),
  CONSTRAINT `FK62ADB4185D3B4D1` FOREIGN KEY (`area_category_id`) REFERENCES `area_category` (`id`),
  CONSTRAINT `FK62ADB41868B52F0E` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `FK62ADB418E6E6FE0` FOREIGN KEY (`area_meta_data_id`) REFERENCES `area_meta_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `groups_area` WRITE;
/*!40000 ALTER TABLE `groups_area` DISABLE KEYS */;
INSERT INTO `groups_area` VALUES (63,4,NULL,'',3,'','',1);
INSERT INTO `groups_area` VALUES (64,2,NULL,'\0',3,'','',2);
INSERT INTO `groups_area` VALUES (65,11,NULL,'',1,'','',1);
INSERT INTO `groups_area` VALUES (66,9,NULL,'\0',1,'','',2);
INSERT INTO `groups_area` VALUES (68,1,NULL,'',4,'','',1);
INSERT INTO `groups_area` VALUES (69,2,NULL,'\0',4,'','',2);
INSERT INTO `groups_area` VALUES (70,12,NULL,'\0',1,'','',3);
INSERT INTO `groups_area` VALUES (71,2,NULL,'',1,'','',4);
INSERT INTO `groups_area` VALUES (72,1,NULL,'\0',6,'','',1);
INSERT INTO `groups_area` VALUES (73,1,NULL,'\0',6,'','',4);
INSERT INTO `groups_area` VALUES (74,0,NULL,'\0',6,'\0','\0',2);
INSERT INTO `groups_area` VALUES (75,0,NULL,'\0',6,'\0','\0',3);
INSERT INTO `groups_area` VALUES (76,1,NULL,'',4,'','',4);
INSERT INTO `groups_area` VALUES (77,3,NULL,'\0',4,'','',3);
INSERT INTO `groups_area` VALUES (78,1,NULL,'',9,'','',1);
INSERT INTO `groups_area` VALUES (79,1,NULL,'\0',9,'','',4);
INSERT INTO `groups_area` VALUES (80,1,NULL,'\0',9,'','',2);
INSERT INTO `groups_area` VALUES (81,1,NULL,'\0',9,'','',3);
INSERT INTO `groups_area` VALUES (82,0,NULL,'\0',3,'\0','\0',4);
INSERT INTO `groups_area` VALUES (83,0,NULL,'\0',3,'\0','\0',3);
INSERT INTO `groups_area` VALUES (84,1,NULL,'',1,'','',5);
INSERT INTO `groups_area` VALUES (85,1,NULL,'',8,'','',5);
INSERT INTO `groups_area` VALUES (86,1,NULL,'',8,'','',1);
INSERT INTO `groups_area` VALUES (87,1,NULL,'',8,'','',4);
INSERT INTO `groups_area` VALUES (88,2,NULL,'\0',8,'','',2);
INSERT INTO `groups_area` VALUES (89,1,NULL,'\0',8,'','',3);
INSERT INTO `groups_area` VALUES (90,1,NULL,'\0',9,'','',5);
INSERT INTO `groups_area` VALUES (91,1,NULL,'\0',7,'','',5);
INSERT INTO `groups_area` VALUES (92,1,NULL,'\0',7,'','',1);
INSERT INTO `groups_area` VALUES (93,0,NULL,'\0',7,'\0','\0',4);
INSERT INTO `groups_area` VALUES (94,0,NULL,'\0',7,'\0','\0',2);
INSERT INTO `groups_area` VALUES (95,0,NULL,'\0',7,'\0','\0',3);
INSERT INTO `groups_area` VALUES (96,1,NULL,'',4,'','',5);
INSERT INTO `groups_area` VALUES (97,1,NULL,'',2,'','',5);
INSERT INTO `groups_area` VALUES (98,1,NULL,'',2,'','',1);
INSERT INTO `groups_area` VALUES (99,1,NULL,'\0',2,'','',4);
INSERT INTO `groups_area` VALUES (100,1,NULL,'\0',2,'','',2);
INSERT INTO `groups_area` VALUES (101,1,NULL,'\0',2,'','',3);
INSERT INTO `groups_area` VALUES (102,0,NULL,'\0',3,'\0','\0',5);
INSERT INTO `groups_area` VALUES (103,1,NULL,'\0',1,'','',7);
/*!40000 ALTER TABLE `groups_area` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


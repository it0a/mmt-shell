
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
DROP TABLE IF EXISTS `print_template_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `print_template_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `print_section_definition_id` bigint(20) NOT NULL,
  `print_template_id` bigint(20) NOT NULL,
  `section_order` int(11) NOT NULL,
  `default_on` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE2A4977213043BD5` (`print_section_definition_id`),
  KEY `FKE2A49772CA598086` (`print_template_id`),
  CONSTRAINT `FKE2A4977213043BD5` FOREIGN KEY (`print_section_definition_id`) REFERENCES `print_section_definition` (`id`),
  CONSTRAINT `FKE2A49772CA598086` FOREIGN KEY (`print_template_id`) REFERENCES `print_template` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1480 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `print_template_section` WRITE;
/*!40000 ALTER TABLE `print_template_section` DISABLE KEYS */;
INSERT INTO `print_template_section` VALUES (94,0,'2013-01-30 13:10:48','2013-01-30 13:10:48',2,1,1,'');
INSERT INTO `print_template_section` VALUES (95,0,'2013-01-30 13:10:48','2013-01-30 13:10:48',3,1,2,'\0');
INSERT INTO `print_template_section` VALUES (96,0,'2013-01-30 13:10:48','2013-01-30 13:10:48',1,1,3,'');
INSERT INTO `print_template_section` VALUES (97,0,'2013-01-30 13:10:48','2013-01-30 13:10:48',4,1,4,'');
INSERT INTO `print_template_section` VALUES (280,0,'2013-08-06 13:52:39','2013-08-06 13:52:39',13,7,1,'');
INSERT INTO `print_template_section` VALUES (282,0,'2013-08-07 12:18:28','2013-08-07 12:18:28',14,8,1,'\0');
INSERT INTO `print_template_section` VALUES (283,0,'2013-08-07 12:18:28','2013-08-07 12:18:28',13,8,2,'\0');
INSERT INTO `print_template_section` VALUES (377,0,'2013-08-13 09:26:46','2013-08-13 09:26:46',18,6,1,'\0');
INSERT INTO `print_template_section` VALUES (378,0,'2013-08-13 09:26:46','2013-08-13 09:26:46',20,6,2,'\0');
INSERT INTO `print_template_section` VALUES (379,0,'2013-08-13 09:26:46','2013-08-13 09:26:46',15,6,3,'\0');
INSERT INTO `print_template_section` VALUES (380,0,'2013-08-13 09:26:46','2013-08-13 09:26:46',16,6,4,'\0');
INSERT INTO `print_template_section` VALUES (381,0,'2013-08-13 09:26:46','2013-08-13 09:26:46',17,6,5,'\0');
INSERT INTO `print_template_section` VALUES (382,0,'2013-08-13 09:26:46','2013-08-13 09:26:46',19,6,6,'\0');
INSERT INTO `print_template_section` VALUES (1385,0,'2014-07-14 18:11:07','2014-07-14 18:11:07',24,2,1,'');
INSERT INTO `print_template_section` VALUES (1387,0,'2014-07-14 18:11:07','2014-07-14 18:11:07',34,2,2,'');
INSERT INTO `print_template_section` VALUES (1389,0,'2014-07-14 18:11:07','2014-07-14 18:11:07',25,2,3,'\0');
INSERT INTO `print_template_section` VALUES (1391,0,'2014-07-14 18:11:07','2014-07-14 18:11:07',26,2,4,'\0');
INSERT INTO `print_template_section` VALUES (1393,0,'2014-07-14 18:11:07','2014-07-14 18:11:07',8,2,5,'');
INSERT INTO `print_template_section` VALUES (1429,0,'2014-07-16 13:56:20','2014-07-16 13:56:20',24,3,1,'');
INSERT INTO `print_template_section` VALUES (1431,0,'2014-07-16 13:56:20','2014-07-16 13:56:20',34,3,2,'');
INSERT INTO `print_template_section` VALUES (1433,0,'2014-07-16 13:56:20','2014-07-16 13:56:20',28,3,3,'');
INSERT INTO `print_template_section` VALUES (1435,0,'2014-07-16 13:56:20','2014-07-16 13:56:20',41,3,4,'');
INSERT INTO `print_template_section` VALUES (1437,0,'2014-07-16 13:56:20','2014-07-16 13:56:20',43,3,5,'\0');
INSERT INTO `print_template_section` VALUES (1439,0,'2014-07-16 13:56:20','2014-07-16 13:56:20',29,3,6,'\0');
INSERT INTO `print_template_section` VALUES (1467,0,'2014-07-16 15:00:05','2014-07-16 15:00:05',24,11,1,'');
INSERT INTO `print_template_section` VALUES (1469,0,'2014-07-16 15:00:05','2014-07-16 15:00:05',34,11,2,'');
INSERT INTO `print_template_section` VALUES (1471,0,'2014-07-16 15:00:05','2014-07-16 15:00:05',45,11,3,'');
INSERT INTO `print_template_section` VALUES (1473,0,'2014-07-16 15:00:05','2014-07-16 15:00:05',30,11,4,'');
INSERT INTO `print_template_section` VALUES (1475,0,'2014-07-16 15:00:05','2014-07-16 15:00:05',31,11,5,'\0');
INSERT INTO `print_template_section` VALUES (1477,0,'2014-07-16 15:00:05','2014-07-16 15:00:05',43,11,6,'');
INSERT INTO `print_template_section` VALUES (1478,0,'2014-09-16 18:01:12','2014-09-16 18:01:12',46,12,1,'');
INSERT INTO `print_template_section` VALUES (1479,0,'2014-09-16 18:01:12','2014-09-16 18:01:12',47,13,1,'');
/*!40000 ALTER TABLE `print_template_section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


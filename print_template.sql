
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
DROP TABLE IF EXISTS `print_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `print_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `domain_meta_data_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenant_location_id` bigint(20) DEFAULT NULL,
  `wf_status` varchar(255) DEFAULT NULL,
  `work_flow_tracking_id` bigint(20) DEFAULT NULL,
  `step_tracking_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9169FDCC5A83AC16` (`work_flow_tracking_id`),
  KEY `FK9169FDCCC6CA088F` (`tenant_location_id`),
  KEY `FK9169FDCC40A25340` (`domain_meta_data_id`),
  KEY `FK9169FDCCAF0BA333` (`step_tracking_id`),
  CONSTRAINT `FK9169FDCC40A25340` FOREIGN KEY (`domain_meta_data_id`) REFERENCES `domain_meta_data` (`id`),
  CONSTRAINT `FK9169FDCC5A83AC16` FOREIGN KEY (`work_flow_tracking_id`) REFERENCES `work_flow_tracking` (`id`),
  CONSTRAINT `FK9169FDCCAF0BA333` FOREIGN KEY (`step_tracking_id`) REFERENCES `step_tracking` (`id`),
  CONSTRAINT `FK9169FDCCC6CA088F` FOREIGN KEY (`tenant_location_id`) REFERENCES `tenant_location_base` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `print_template` WRITE;
/*!40000 ALTER TABLE `print_template` DISABLE KEYS */;
INSERT INTO `print_template` VALUES (1,34,'2013-01-24 14:09:10','Sample',30,'2013-01-30 13:10:48','Sample',1,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (2,47,'2013-01-24 14:53:57','Example',105,'2014-07-14 18:11:07','Example',1,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (3,194,'2013-02-07 09:59:43','Cleaning Proposal',105,'2014-07-16 13:56:39','Cleaning Proposal',1,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (5,0,'2013-03-05 10:22:17',NULL,30,'2013-03-05 10:22:17','General Office Sales Brochure',1,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (6,29,'2013-07-11 10:02:12','Sample',82,'2013-08-13 09:26:46','Customer Location Sample',NULL,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (7,7,'2013-07-11 10:02:12','Sample',93,'2014-06-26 16:36:05','Vendor Sample',NULL,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (8,4,'2013-08-06 13:58:07','Vendor',49,'2014-06-26 16:36:10','Vendor',NULL,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (9,0,'2014-03-28 10:22:22','A print template, for me!',30,'2014-03-28 10:22:22','MyPrintTemplate',2,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (11,145,'2014-06-03 11:07:31','Reduced Cleaning Proposal',105,'2014-07-16 15:00:05','Reduced Cleaning Proposal',1,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (12,2,'2014-09-16 18:01:03','InvoiceBatch',158,'2014-09-16 18:01:12','InvoiceBatch',NULL,NULL,NULL,NULL);
INSERT INTO `print_template` VALUES (13,2,'2014-09-16 18:01:03','Invoice',157,'2014-09-16 18:01:12','Invoice',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `print_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


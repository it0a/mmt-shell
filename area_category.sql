
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
DROP TABLE IF EXISTS `area_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `area_color` varchar(255) DEFAULT NULL,
  `create_action` varchar(255) NOT NULL,
  `create_ctrl` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `menu_create` bit(1) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `work_flow_id` bigint(20) NOT NULL,
  `master_domain_id` bigint(20) NOT NULL,
  `step_tracking_id` bigint(20) DEFAULT NULL,
  `wf_status` varchar(255) DEFAULT NULL,
  `work_flow_tracking_id` bigint(20) DEFAULT NULL,
  `area_meta_data_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK23376C703EAC915D` (`work_flow_id`),
  KEY `FK23376C7072FBD6E8` (`master_domain_id`),
  KEY `FK23376C705A83AC16` (`work_flow_tracking_id`),
  KEY `FK23376C70AF0BA333` (`step_tracking_id`),
  KEY `FK23376C70E6E6FE0` (`area_meta_data_id`),
  CONSTRAINT `FK23376C703EAC915D` FOREIGN KEY (`work_flow_id`) REFERENCES `work_flow` (`id`),
  CONSTRAINT `FK23376C705A83AC16` FOREIGN KEY (`work_flow_tracking_id`) REFERENCES `work_flow_tracking` (`id`),
  CONSTRAINT `FK23376C7072FBD6E8` FOREIGN KEY (`master_domain_id`) REFERENCES `domain_meta_data` (`id`),
  CONSTRAINT `FK23376C70AF0BA333` FOREIGN KEY (`step_tracking_id`) REFERENCES `step_tracking` (`id`),
  CONSTRAINT `FK23376C70E6E6FE0` FOREIGN KEY (`area_meta_data_id`) REFERENCES `area_meta_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `area_category` WRITE;
/*!40000 ALTER TABLE `area_category` DISABLE KEYS */;
INSERT INTO `area_category` VALUES (1,1,'#5A64E8','customcreate','customerLocation','2014-03-19 00:00:00','Leads','Leads','2014-03-20 15:37:10','',50,'Leads',33,82,398696,'AreaCategories Draft',397459,76);
INSERT INTO `area_category` VALUES (2,2,'#5A64E8','customcreate','customerLocation','2014-03-19 00:00:00','Working','Working','2014-04-08 17:25:29','\0',60,'Working',33,82,398697,'AreaCategories Draft',397460,76);
INSERT INTO `area_category` VALUES (3,2,NULL,'customcreate','customerLocation','2014-03-20 17:03:13','Customers','Customers','2014-03-21 14:42:27','\0',70,'Customers',33,82,NULL,'AreaCategories Draft',397463,76);
INSERT INTO `area_category` VALUES (4,2,NULL,'create','campaign','2014-03-24 14:20:32','Campaigns','Campaigns','2014-03-24 14:21:55','\0',55,'Campaigns',53,129,NULL,'AreaCategories Draft',397468,123);
INSERT INTO `area_category` VALUES (5,1,NULL,'create','vendor','2014-03-27 12:23:59','Service Provider','Service Provider','2014-03-27 12:24:26',NULL,5,'Service Provider',24,36,NULL,'AreaCategories Draft',397636,77);
INSERT INTO `area_category` VALUES (7,2,NULL,'create','masterAgreement','2014-08-15 17:18:13','Accounting','Accounting','2014-08-15 17:20:54','\0',500,'Accounting',75,157,NULL,'AreaCategories Draft',NULL,NULL);
/*!40000 ALTER TABLE `area_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


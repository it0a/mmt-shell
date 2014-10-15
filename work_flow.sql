
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
DROP TABLE IF EXISTS `work_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_flow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `work_flow_name` varchar(255) DEFAULT NULL,
  `area_meta_data_id` bigint(20) NOT NULL,
  `primary_domain_id` bigint(20) DEFAULT NULL,
  `create_action` varchar(255) DEFAULT NULL,
  `create_ctrl` varchar(255) DEFAULT NULL,
  `update_action` varchar(255) DEFAULT NULL,
  `update_ctrl` varchar(255) DEFAULT NULL,
  `is_client_admin_editable` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK40F9B59CE6E6FE0` (`area_meta_data_id`),
  KEY `FK40F9B59C6B5BB288` (`primary_domain_id`),
  CONSTRAINT `FK40F9B59C6B5BB288` FOREIGN KEY (`primary_domain_id`) REFERENCES `domain_meta_data` (`id`),
  CONSTRAINT `FK40F9B59CE6E6FE0` FOREIGN KEY (`area_meta_data_id`) REFERENCES `area_meta_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `work_flow` WRITE;
/*!40000 ALTER TABLE `work_flow` DISABLE KEYS */;
INSERT INTO `work_flow` VALUES (1,7,'2012-02-16 16:40:10','Process to bring new customer on board.','2012-11-28 15:01:14','Active','Retail Chain',31,37,'customcreate',NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (2,0,'2012-02-21 19:10:27','Customer Workflow for single store','2012-02-21 19:10:27','Draft','Sinlge Store',31,NULL,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (8,2,'2012-07-03 11:39:05','Cleaning Audit','2012-11-07 11:35:02','Active','Cleaning Audit',80,88,'createAudit','customerLocation',NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (13,0,'2012-08-27 15:15:53','Space Basic Workflow','2012-08-27 15:15:53','Draft','Space Basic Workflow',55,69,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (20,0,'2012-09-11 17:12:54','CustomerLocationDetails Basic Workflow','2012-09-11 17:12:54','Active','CustomerLocationDetails Basic Workflow',88,93,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (24,3,'2012-09-18 12:05:19','Vendor','2013-07-09 13:52:02','Active','Vendor ',77,36,'customcreate','vendor',NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (26,1,'2012-09-18 15:56:26','Vendor Setup','2012-11-07 17:07:09','Active','Vendor Setup',78,85,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (27,0,'2012-09-25 13:50:10','Tenant Basic Workflow','2012-09-25 13:50:10','Active','Tenant Basic Workflow',73,84,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (28,0,'2012-09-25 13:50:16','TenantLocation Basic Workflow','2012-09-25 13:50:16','Active','TenantLocation Basic Workflow',74,83,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (29,0,'2012-10-17 09:29:32','FloorType Basic Workflow','2012-10-17 09:29:32','Active','Floor Type Setup',96,99,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (30,0,'2012-10-17 10:11:01','CleaningService Basic Workflow','2012-10-17 10:11:01','Active','Cleaning Service Setup',98,100,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (32,0,'2012-10-17 11:06:01','CleaningSpecialService Basic Workflow','2012-10-17 11:06:01','Active','Special Service Setup',100,104,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (33,5,'2012-10-17 11:40:53','Customer Worlkflow','2014-03-24 09:11:58','Active','Customer',76,82,'customcreate',NULL,NULL,NULL,'');
INSERT INTO `work_flow` VALUES (34,0,'2012-10-17 12:20:50','ServiceFrequency Basic Workflow','2012-10-17 12:20:50','Active','Service Frequency Setup',97,102,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (35,0,'2012-10-17 13:05:50','CleaningRate Basic Workflow','2012-10-17 13:05:50','Active','Cleaning Rates Setup',99,101,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (36,2,'2012-10-17 15:24:52','Proposal Workflow','2012-12-04 15:36:29','Active','Proposal',102,105,'proposalWizard','customerLocationProposal',NULL,NULL,'');
INSERT INTO `work_flow` VALUES (37,0,'2012-10-17 17:40:49','ServiceType Basic Workflow','2012-10-17 17:40:49','Draft','Service Types Setup',104,107,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (38,2,'2012-10-18 10:34:37',NULL,'2012-11-28 15:01:33','Active','Lead to Customer',31,NULL,'customcreate',NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (39,0,'2012-10-18 11:33:18','LocationTemplate Basic Workflow','2012-10-18 11:33:18','Active','LocationTemplate Basic Workflow',106,108,'customcreate','locationTemplate',NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (41,0,'2012-10-19 10:23:13','LocationTemplateArea Basic Workflow','2012-10-19 10:23:13','Active','Template Area Types',105,109,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (42,0,'2012-10-19 13:49:10','LocationTemplateAreaService Basic Workflow','2012-10-19 13:49:10','Active','Services',107,111,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (43,1,'2012-11-05 15:50:47','Contract ','2012-11-15 13:27:07','Active','Service Delivery',108,112,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (45,0,'2012-11-19 12:21:03','RoomType Basic Workflow','2012-11-19 12:21:03','Active','RoomType Basic Workflow',112,115,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (47,0,'2012-11-19 12:21:35','LocationTemplateRoom Basic Workflow','2012-11-19 12:21:35','Active','LocationTemplateRoom Basic Workflow',111,117,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (48,0,'2012-11-20 14:00:58','RoomTypeService Basic Workflow','2012-11-20 14:00:58','Active','RoomTypeService Basic Workflow',113,116,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (50,0,'2013-03-20 09:36:12','SubRegion Basic Workflow','2013-03-20 09:36:12','Active','SubRegion Basic Workflow',120,126,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (51,0,'2013-03-20 09:52:00','Region Basic Workflow','2013-03-20 09:52:00','Active','Region Basic Workflow',121,127,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (52,2,'2013-04-15 11:06:17','Service Workflow','2014-03-24 11:46:46','Active','Service',122,128,'customcreate','customerLocationService',NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (53,0,'2013-04-26 13:45:34','Campaign Basic Workflow','2013-04-26 13:45:34','Active','Campaign Basic Workflow',123,129,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (54,0,'2013-05-09 09:23:00','SalesProfile Basic Workflow','2013-05-09 09:23:00','Active','SalesProfile Basic Workflow',125,130,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (55,1,'2013-06-11 12:49:42','Leads Workflow','2013-07-02 11:24:48','Active','Leads Workflow',127,82,'customcreate',NULL,'updatecl','customerLocation','\0');
INSERT INTO `work_flow` VALUES (59,2,'2013-06-25 14:56:41','Working Workflow','2013-10-30 08:50:15','Active','Working',131,82,'customcreate',NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (60,0,'2013-06-25 15:45:07','Accounting Basic Workflow','2013-06-25 15:45:07','Active','Accounting Basic Workflow',132,82,'customcreate',NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (61,0,'2013-07-01 19:26:20','Ops Basic Workflow','2013-07-01 19:26:20','Active','Ops Basic Workflow',133,82,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (62,0,'2013-10-31 08:59:15','MsgBusLog Basic Workflow','2013-10-31 08:59:15','Active','MsgBusLog Basic Workflow',134,135,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (63,0,'2013-11-25 09:55:28','ComplianceDefinition Basic Workflow','2013-11-25 09:55:28','Active','ComplianceDefinition Basic Workflow',135,136,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (64,0,'2013-11-25 12:07:07','VendorCompliance Basic Workflow','2013-11-25 12:07:07','Active','VendorCompliance Basic Workflow',136,137,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (65,0,'2013-12-09 12:24:41','ScheduleJobAction Basic Workflow','2013-12-09 12:24:41','Active','ScheduleJobAction Basic Workflow',137,138,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (66,0,'2014-03-20 14:47:46','AreaCategories Basic Workflow','2014-03-20 14:47:46','Active','AreaCategories Basic Workflow',141,139,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (67,0,'2014-03-25 14:37:49','SpecialServiceTemplate Basic Workflow','2014-03-25 14:37:49','Active','SpecialServiceTemplate Basic Workflow',142,140,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (69,0,'2014-08-14 14:40:10','ServiceContract Basic Workflow','2014-08-14 14:40:10','Active','ServiceContract Basic Workflow',143,149,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (71,0,'2014-08-14 14:40:27','ServiceDeliveryProfile Basic Workflow','2014-08-14 14:40:27','Active','ServiceDeliveryProfile Basic Workflow',145,151,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (73,0,'2014-08-14 14:40:40','ServiceDeliveryProfileDetail Basic Workflow','2014-08-14 14:40:40','Active','ServiceDeliveryProfileDetail Basic Workflow',147,153,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (75,0,'2014-08-29 14:08:16','MasterInvoice Basic Workflow','2014-08-29 14:08:16','Active','MasterInvoice Basic Workflow',151,157,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (76,0,'2014-09-26 13:37:27','MasterAgreement Basic Workflow','2014-09-26 13:37:27','Active','MasterAgreement Basic Workflow',149,155,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (77,0,'2014-09-26 13:37:39','OperationsBatch Basic Workflow','2014-09-26 13:37:39','Active','OperationsBatch Basic Workflow',152,158,NULL,NULL,NULL,NULL,'\0');
INSERT INTO `work_flow` VALUES (78,0,'2014-10-02 20:45:10','CustomerReceipt Basic Workflow','2014-10-02 20:45:10','Active','CustomerReceipt Basic Workflow',153,159,NULL,NULL,NULL,NULL,'\0');
/*!40000 ALTER TABLE `work_flow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


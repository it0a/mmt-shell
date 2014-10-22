
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
DROP TABLE IF EXISTS `area_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_meta_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `master_domain_id` bigint(20) NOT NULL,
  `view_page` varchar(255) DEFAULT NULL,
  `area_type` varchar(255) DEFAULT NULL,
  `link_type` varchar(255) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `menu_create` bit(1) DEFAULT NULL,
  `area_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA69DCC7272FBD6E8` (`master_domain_id`),
  CONSTRAINT `FKA69DCC7272FBD6E8` FOREIGN KEY (`master_domain_id`) REFERENCES `domain_meta_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `area_meta_data` WRITE;
/*!40000 ALTER TABLE `area_meta_data` DISABLE KEYS */;
INSERT INTO `area_meta_data` VALUES (31,8,'','2012-01-25 15:13:37','This area holds the CRM information','Customers','2012-11-30 12:18:26','Customer',37,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (32,1,'','2012-01-27 09:39:10','Vendor / Vendor Contact Data','Vendor','2012-09-18 12:56:47','Vendor',30,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (33,0,'','2012-02-07 08:15:00','Area Meta Data','Area Meta Data','2012-02-07 08:15:00','AreaMetaData',43,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (35,2,'','2012-02-07 08:15:00','XSL Templates','XSL Templates','2012-10-17 18:17:11','XSLTemplates',30,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (36,1,'','2012-02-07 08:15:00','Security','Security','2012-02-17 14:36:56','Security',30,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (37,0,'','2012-02-15 12:26:57','List Views','List Views','2012-02-15 12:26:57','List Views',49,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (38,0,'','2012-02-15 12:26:57','Workflow Definitions','Workflow Definitions','2012-02-15 12:26:57','Workflow Definitions',53,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (42,0,'','2012-02-17 15:47:09','Surveys','Surveys','2012-02-17 15:48:35','Survey',33,NULL,NULL,NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (44,0,'','2012-03-13 14:30:30','DomainMetaData','DomainMetaData','2012-03-13 14:30:30','DomainMetaData',59,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (49,0,'','2012-03-20 14:14:47','Queries','Queries','2012-03-20 14:14:47','Queries',60,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (50,0,'','2012-03-21 15:36:15','Widget','Widget','2012-03-21 15:36:15','Widget',62,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (51,0,'','2012-03-28 17:31:30','Dashboard','Dashboard','2012-03-28 17:31:30','Dashboard',66,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (52,0,'','2012-04-13 14:03:11','AreaDataSource','AreaDataSource','2012-04-13 14:03:11','AreaDataSource',67,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (53,3,'','2012-04-16 10:31:14','FieldOptionSet','FieldOptionSet','2012-10-30 14:52:38','FieldOptionSet',68,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (54,0,'','2012-04-18 16:04:24','Area','Area','2012-04-18 16:04:24','Area',70,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (55,0,'','2012-04-18 16:04:25','Space','Space','2012-04-18 16:04:25','Space',69,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (56,0,'','2012-04-23 15:28:57','FileEntries','FileEntries','2012-04-23 15:28:57','FileEntries',72,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (57,0,'','2012-03-13 14:30:30','PropertyMetaData','PropertyMetaData','2012-03-13 14:30:30','PropertyMetaData',73,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (58,0,'','2012-04-24 14:19:42','PropertyMetaDatas','PropertyMetaDatas','2012-04-24 14:19:42','PropertyMetaDatas',73,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (59,0,'','2012-05-08 10:29:25','DynaForm','DynaForm','2012-05-08 10:29:25','DynaForm',74,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (60,0,'','2012-05-08 10:29:26','DynaFormElement','DynaFormElement','2012-05-08 10:29:26','DynaFormElement',75,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (61,3,'','2012-01-25 15:13:37','Placeholder for utility controller','Utility','2012-02-17 14:23:00','Utility',37,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (62,0,'','2012-05-21 09:43:22','DomainAction','DomainAction','2012-05-21 09:43:22','DomainAction',76,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (73,2,'','2012-06-15 13:39:30','Tenant','Tenant','2012-11-29 11:31:28','Tenant',84,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (74,1,'','2012-06-15 13:39:30','TenantLocation','TenantLocation','2012-10-17 11:46:11','TenantLocation',83,NULL,'User',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (75,0,'','2012-06-15 13:39:30','Company','Company','2012-06-15 13:39:30','Company',37,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (76,19,'','2012-06-15 13:39:31','Company Location','Customers','2014-03-24 15:12:41','Customer',82,NULL,'User',NULL,50,'','#5A64E8');
INSERT INTO `area_meta_data` VALUES (77,11,'','2012-06-15 13:39:31','Service Provider','Service Provider','2013-07-01 18:19:38','Vendor',36,NULL,'User',NULL,2,'','#A9DB5E');
INSERT INTO `area_meta_data` VALUES (78,1,'','2012-06-15 13:43:20','VendorLocation','VendorLocation','2012-09-18 17:00:02','VendorLocation',85,NULL,'User',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (80,5,'','2012-07-02 14:55:28','Audit','Surveys','2013-06-11 15:31:01','Audit',88,NULL,'System',NULL,99,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (81,0,'','2012-07-02 14:55:28','AuditTemplate','AuditTemplate','2012-07-02 14:55:28','AuditTemplate',87,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (87,0,'','2012-09-06 10:12:36','FieldCat','FieldCat','2012-09-06 10:12:36','FieldCat',92,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (88,2,'','2012-09-11 12:08:48','CustomerLocationDetails','CustomerLocationDetails','2012-10-17 11:39:17','delete me CustomerLocationDetails',93,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (89,0,'','2012-09-14 16:35:57','CustomerLocationDetails','CustomerLocationDetails','2012-09-14 16:35:57','CustomerLocationDetails',93,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (96,2,'','2012-10-16 14:27:58','FloorType','FloorType','2012-10-16 16:26:50','FloorType',99,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (97,0,'','2012-10-16 15:43:40','ServiceFrequencies','ServiceFrequencies','2012-10-16 15:43:40','ServiceFrequency',102,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (98,2,'','2012-10-16 15:43:49','CleaningService','CleaningService','2012-10-17 11:12:23','CleaningService',100,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (99,0,'','2012-10-16 15:43:54','CleaningRate','CleaningRate','2012-10-16 15:43:54','CleaningRate',101,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (100,0,'','2012-10-17 11:05:24','CleaningSpecialService','CleaningSpecialService','2012-10-17 11:05:24','CleaningSpecialService',104,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (102,3,'','2012-10-17 15:24:45','CompanyLocationProposal','Proposals','2013-06-11 15:39:51','CustomerLocationProposal',105,NULL,'Client',NULL,98,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (103,0,'','2012-10-17 16:38:19','CustomerLocationProposalItem','CustomerLocationProposalItem','2012-10-17 16:38:19','CustomerLocationProposalItem',106,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (104,1,'','2012-10-17 17:40:28','ServiceType','ServiceType','2012-10-17 17:42:43','ServiceType',107,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (105,0,'','2012-10-18 11:33:05','LocationTemplateArea','LocationTemplateArea','2012-10-18 11:33:05','LocationTemplateArea',109,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (106,4,'','2012-10-18 11:33:11','LocationTemplate','LocationTemplate','2012-10-19 11:45:18','LocationTemplate',108,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (107,0,'','2012-10-19 13:49:04','LocationTemplateAreaService','LocationTemplateAreaService','2012-10-19 13:49:04','LocationTemplateAreaService',111,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (108,5,'','2012-11-05 15:50:38','CompanyLocationContract','Service Delivery','2014-03-26 17:08:08','CustomerLocationContract',112,NULL,'System',NULL,100,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (109,1,'','2012-11-05 15:51:14','ToDo','ToDo','2012-11-07 12:12:45','ToDo',113,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (110,1,'','2012-11-12 09:50:33','ActionItem','Tasks','2012-11-12 09:51:46','ActionItem',114,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (111,1,'','2012-11-19 12:20:38','LocationTemplateRoom','LocationTemplateRoom','2012-11-19 12:46:03','LocationTemplateRoom',117,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (112,1,'','2012-11-19 12:20:45','RoomType','RoomType','2012-11-19 12:22:46','RoomType',115,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (113,0,'','2012-11-19 12:20:50','RoomTypeService','RoomTypeService','2012-11-19 12:20:50','RoomTypeService',116,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (114,2,'','2013-01-14 16:07:39','PrintAttachment','PrintAttachment','2013-01-16 13:19:43','PrintAttachment',121,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (115,1,'','2013-01-14 16:15:23','PrintAttachment','PrintAttachment','2013-03-01 08:50:57','PrintAttachment',121,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (116,1,'','2013-01-24 09:58:29','PrintTextDefinition','PrintTextDefinition','2013-03-01 08:51:28','PrintTextDefinition',122,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (117,1,'','2013-01-24 09:58:41','PrintSectionDefinition','PrintSectionDefinition','2013-03-01 08:49:22','PrintSectionDefinition',123,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (118,1,'','2013-01-24 09:58:50','PrintTemplate','PrintTemplate','2013-03-01 08:49:49','PrintTemplate',124,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (119,0,'','2013-01-24 10:15:49','PrintTemplateSection','PrintTemplateSection','2013-01-24 10:15:49','PrintTemplateSection',125,NULL,'System','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (120,0,'','2013-03-20 09:36:06','SubRegion','SubRegion','2013-03-20 09:36:06','SubRegion',126,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (121,0,'','2013-03-20 09:51:55','Region','Region','2013-03-20 09:51:55','Region',127,NULL,'Client','modal',0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (122,0,'','2013-04-14 14:06:48','CustomerLocationService','CustomerLocationService','2013-04-14 14:06:48','CustomerLocationService',128,NULL,'System',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (123,2,'','2013-04-26 12:48:03','Campaign','Campaign','2013-11-07 10:46:37','Campaign',129,NULL,'User',NULL,5,'',NULL);
INSERT INTO `area_meta_data` VALUES (124,1,'','2013-05-07 14:53:50','Campaign','Campaign','2013-11-07 10:46:48','Campaign',129,NULL,'System',NULL,0,'',NULL);
INSERT INTO `area_meta_data` VALUES (125,1,'','2013-05-09 09:16:54','SalesProfile','SalesProfile','2013-05-15 10:30:12','SalesProfile',130,NULL,'Client',NULL,0,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (127,5,'','2013-06-11 12:36:52','Leads','Leads','2014-03-26 12:25:55','Leads',82,NULL,'Hold',NULL,3,'','#F7D281');
INSERT INTO `area_meta_data` VALUES (131,21,'','2013-06-25 14:56:40','Prospects','Working','2014-03-26 12:25:56','Prospects',82,NULL,'Hold',NULL,10,'','#7DF58F');
INSERT INTO `area_meta_data` VALUES (132,16,'','2013-06-25 15:45:07','Accounting','Accounting','2014-03-26 12:25:57','Accounting',82,NULL,'Hold',NULL,60,'\0','#F57878');
INSERT INTO `area_meta_data` VALUES (133,17,'','2013-07-01 19:26:18','Inspections','Inspections','2014-03-26 12:25:58','Inspections',82,NULL,'Hold',NULL,55,'\0','#ED5205');
INSERT INTO `area_meta_data` VALUES (134,0,'','2013-10-31 08:59:14','MsgBusLog','MsgBusLog','2013-10-31 08:59:14','MsgBusLog',135,NULL,'Client',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (135,0,'','2013-11-25 09:55:27','ComplianceDefinition','ComplianceDefinition','2013-11-25 09:55:27','ComplianceDefinition',136,NULL,'Client',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (136,0,'','2013-11-25 12:07:06','VendorCompliance','VendorCompliance','2013-11-25 12:07:06','VendorCompliance',137,NULL,'System',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (137,1,'','2013-12-09 12:24:17','ScheduleJobAction','ScheduleJobAction','2013-12-19 10:53:24','ScheduleJobAction',138,NULL,'System',NULL,NULL,'\0',NULL);
INSERT INTO `area_meta_data` VALUES (141,0,'','2014-03-20 15:03:04','AreaCategories','AreaCategories','2014-03-20 15:03:04','AreaCategories',139,NULL,'System',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (142,0,'','2014-03-25 14:37:49','SpecialServiceTemplate','SpecialServiceTemplate','2014-03-25 14:37:49','SpecialServiceTemplate',140,NULL,'Client',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (143,0,'','2014-08-14 14:40:07','ServiceContract','ServiceContract','2014-08-14 14:40:07','ServiceContract',149,NULL,'System',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (145,0,'','2014-08-14 14:40:23','ServiceDeliveryProfile','ServiceDeliveryProfile','2014-08-14 14:40:23','ServiceDeliveryProfile',151,NULL,'System',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (147,0,'','2014-08-14 14:40:38','ServiceDeliveryProfileDetail','ServiceDeliveryProfileDetail','2014-08-14 14:40:38','ServiceDeliveryProfileDetail',153,NULL,'System',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (149,0,'','2014-08-14 14:41:18','MasterAgreement','MasterAgreement','2014-08-14 14:41:18','MasterAgreement',155,NULL,'User',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (151,0,'','2014-08-29 14:08:10','MasterInvoice','MasterInvoice','2014-08-29 14:08:10','MasterInvoice',157,NULL,'User',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (152,0,'','2014-09-26 13:37:39','OperationsBatch','OperationsBatch','2014-09-26 13:37:39','OperationsBatch',158,NULL,'User',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (153,0,'','2014-10-02 20:45:09','CustomerReceipt','CustomerReceipt','2014-10-02 20:45:09','CustomerReceipt',159,NULL,'System',NULL,NULL,NULL,NULL);
INSERT INTO `area_meta_data` VALUES (154,0,'','2014-10-22 19:42:03','VendorBillLineItem','VendorBillLineItem','2014-10-22 19:42:03','VendorBillLineItem',162,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `area_meta_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



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
DROP TABLE IF EXISTS `domain_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_meta_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `extendable` bit(1) NOT NULL,
  `is_sub_domain` bit(1) NOT NULL,
  `label` varchar(255) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `parent_domain_name` varchar(255) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL,
  `visible` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `domain_meta_data` WRITE;
/*!40000 ALTER TABLE `domain_meta_data` DISABLE KEYS */;
INSERT INTO `domain_meta_data` VALUES (30,0,'','2012-01-26 15:48:54','com.streamlinx.bcpt.CustomerContact','\0','\0','com.streamlinx.bcpt.CustomerContact','2012-01-26 15:48:54','CustomerContact',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (31,0,'','2012-01-26 15:48:55','com.streamlinx.bcpt.FixtureClassification','\0','\0','com.streamlinx.bcpt.FixtureClassification','2012-01-26 15:48:55','FixtureClassification',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (32,0,'','2012-01-26 15:48:55','com.streamlinx.bcpt.LocationSurvey','\0','\0','com.streamlinx.bcpt.LocationSurvey','2012-01-26 15:48:55','LocationSurvey',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (33,0,'','2012-01-26 15:48:55','com.streamlinx.bcpt.SurveyDetail','\0','\0','com.streamlinx.bcpt.SurveyDetail','2012-01-26 15:48:55','SurveyDetail',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (34,0,'','2012-01-26 15:48:56','com.streamlinx.bcpt.CustomerBillingAddress','\0','\0','com.streamlinx.bcpt.CustomerBillingAddress','2012-01-26 15:48:56','CustomerBillingAddress',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (35,0,'','2012-01-26 15:48:57','com.streamlinx.bcpt.Site','\0','\0','com.streamlinx.bcpt.Site','2012-01-26 15:48:57','Site',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (36,0,'','2012-01-26 15:48:57','com.streamlinx.bcpt.Vendor','\0','\0','com.streamlinx.bcpt.Vendor','2012-01-26 15:48:57','Vendor',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (37,1,'','2012-01-26 15:48:59','com.streamlinx.bcpt.Customer','\0','\0','ClientCo','2012-02-09 14:55:55','Customer',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (38,0,'','2012-01-26 15:49:00','com.streamlinx.bcpt.Location','\0','\0','com.streamlinx.bcpt.Location','2012-01-26 15:49:00','Location',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (41,0,'','2012-02-01 15:56:51','com.streamlinx.bcpt.Comment','\0','\0','com.streamlinx.bcpt.Comment','2012-02-01 15:56:51','Comment',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (42,0,'','2012-02-07 08:31:50','com.streamlinx.bcpt.SubAreaMetaData','\0','\0','com.streamlinx.bcpt.SubAreaMetaData','2012-02-07 08:31:50','SubAreaMetaData',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (43,0,'','2012-02-07 08:32:52','com.streamlinx.bcpt.AreaMetaData','\0','\0','com.streamlinx.bcpt.AreaMetaData','2012-02-07 08:32:52','AreaMetaData',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (45,0,'','2012-02-13 09:34:14','com.streamlinx.bcpt.TemplateStore','\0','\0','com.streamlinx.bcpt.TemplateStore','2012-02-13 09:34:14','TemplateStore',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (46,0,'','2012-02-15 09:05:17','com.streamlinx.bcpt.Groups','\0','\0','com.streamlinx.bcpt.Groups','2012-02-15 09:05:17','Groups',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (47,0,'','2012-02-15 09:05:17','com.streamlinx.bcpt.User','\0','\0','com.streamlinx.bcpt.User','2012-02-15 09:05:17','User',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (48,0,'','2012-02-15 09:05:17','com.streamlinx.bcpt.Role','\0','\0','com.streamlinx.bcpt.Role','2012-02-15 09:05:17','Role',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (49,0,'','2012-02-15 12:22:21','com.streamlinx.bcpt.ListView','\0','\0','com.streamlinx.bcpt.ListView','2012-02-15 12:22:21','ListView',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (50,0,'','2012-02-16 16:09:01','com.streamlinx.bcpt.StepSubTab','\0','\0','com.streamlinx.bcpt.StepSubTab','2012-02-16 16:09:01','StepSubTab',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (51,0,'','2012-02-16 16:09:01','com.streamlinx.bcpt.StepFormTemplate','\0','\0','com.streamlinx.bcpt.StepFormTemplate','2012-02-16 16:09:01','StepFormTemplate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (52,0,'','2012-02-16 16:09:01','com.streamlinx.bcpt.StepDefinition','\0','\0','com.streamlinx.bcpt.StepDefinition','2012-02-16 16:09:01','StepDefinition',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (53,0,'','2012-02-16 16:09:02','com.streamlinx.bcpt.WorkFlow','\0','\0','com.streamlinx.bcpt.WorkFlow','2012-02-16 16:09:02','WorkFlow',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (54,0,'','2012-02-16 16:09:02','com.streamlinx.bcpt.StepAction','\0','\0','com.streamlinx.bcpt.StepAction','2012-02-16 16:09:02','StepAction',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (55,0,'','2012-02-17 10:19:55','com.streamlinx.bcpt.TransitionDefinition','\0','\0','com.streamlinx.bcpt.TransitionDefinition','2012-02-17 10:19:55','TransitionDefinition',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (56,0,'','2012-03-01 15:06:22','com.streamlinx.bcpt.listview.AreaFieldSetProperty','\0','\0','com.streamlinx.bcpt.listview.AreaFieldSetProperty','2012-03-01 15:06:22','AreaFieldSetProperty',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (57,0,'','2012-03-01 15:07:39','com.streamlinx.bcpt.listview.AreaFieldSet','\0','\0','com.streamlinx.bcpt.listview.AreaFieldSet','2012-03-01 15:07:39','AreaFieldSet',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (58,0,'','2012-03-12 15:58:45','com.streamlinx.bcpt.user.DashboardWidget','\0','\0','com.streamlinx.bcpt.user.DashboardWidget','2012-03-12 15:58:45','DashboardWidget',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (59,0,'','2012-03-13 14:30:30','com.streamlinx.bcpt.listview.DomainMetaData','\0','\0','com.streamlinx.bcpt.listview.DomainMetaData','2012-03-13 14:30:30','DomainMetaData',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (60,0,'','2012-03-20 13:28:29','com.streamlinx.bcpt.query.Query','\0','\0','com.streamlinx.bcpt.query.Query','2012-03-20 13:28:29','Query',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (61,0,'','2012-03-20 13:28:29','com.streamlinx.bcpt.query.QueryColumn','\0','\0','com.streamlinx.bcpt.query.QueryColumn','2012-03-20 13:28:29','QueryColumn',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (62,0,'','2012-03-21 15:36:14','com.streamlinx.bcpt.widget.Widget','\0','\0','com.streamlinx.bcpt.widget.Widget','2012-03-21 15:36:14','Widget',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (63,0,'','2012-03-21 15:36:14','com.streamlinx.bcpt.widget.BarChartBar','\0','\0','com.streamlinx.bcpt.widget.BarChartBar','2012-03-21 15:36:14','BarChartBar',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (64,0,'','2012-03-21 15:36:14','com.streamlinx.bcpt.widget.LineChartLine','\0','\0','com.streamlinx.bcpt.widget.LineChartLine','2012-03-21 15:36:14','LineChartLine',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (65,0,'','2012-03-21 15:36:14','com.streamlinx.bcpt.widget.PieChartSlice','\0','\0','com.streamlinx.bcpt.widget.PieChartSlice','2012-03-21 15:36:14','PieChartSlice',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (66,0,'','2012-03-28 17:31:30','com.streamlinx.bcpt.user.Dashboard','\0','\0','com.streamlinx.bcpt.user.Dashboard','2012-03-28 17:31:30','Dashboard',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (67,0,'','2012-04-13 14:03:11','com.streamlinx.bcpt.listview.AreaQuerySource','\0','\0','com.streamlinx.bcpt.listview.AreaQuerySource','2012-04-13 14:03:11','AreaQuerySource',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (68,0,'','2012-04-16 10:31:14','com.streamlinx.bcpt.query.FieldOptionSet','\0','\0','com.streamlinx.bcpt.query.FieldOptionSet','2012-04-16 10:31:14','FieldOptionSet',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (69,0,'','2012-04-18 16:04:23','com.streamlinx.bcpt.Space','\0','\0','com.streamlinx.bcpt.Space','2012-04-18 16:04:23','Space',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (70,0,'','2012-04-18 16:04:24','com.streamlinx.bcpt.Area','\0','\0','com.streamlinx.bcpt.Area','2012-04-18 16:04:24','Area',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (72,0,'','2012-04-23 15:43:19','com.streamlinx.bcpt.FileEntry','\0','\0','com.streamlinx.bcpt.FileEntry','2012-04-23 15:43:19','FileEntry',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (73,0,'','2012-03-13 14:30:30','com.streamlinx.bcpt.listview.PropertyMetaData','\0','\0','com.streamlinx.bcpt.listview.PropertyMetaData','2012-03-13 14:30:30','PropertyMetaData',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (74,0,'','2012-05-08 10:29:25','com.streamlinx.bcpt.listview.DynaForm','\0','\0','com.streamlinx.bcpt.listview.DynaForm','2012-05-08 10:29:25','DynaForm',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (75,0,'','2012-05-08 10:29:25','com.streamlinx.bcpt.listview.DynaFormElement','\0','\0','com.streamlinx.bcpt.listview.DynaFormElement','2012-05-08 10:29:25','DynaFormElement',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (76,0,'','2012-05-21 09:43:22','com.streamlinx.bcpt.listview.DomainAction','\0','\0','com.streamlinx.bcpt.listview.DomainAction','2012-05-21 09:43:22','DomainAction',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (80,0,'','2012-06-11 11:20:14','bcpt.Coffee','\0','\0','bcpt.Coffee','2012-06-11 11:20:14','Coffee',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (81,0,'','2012-06-13 16:44:05','bcpt.Thing','\0','\0','bcpt.Thing','2012-06-13 16:44:05','Thing',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (82,0,'','2012-06-15 13:34:45','com.streamlinx.bcpt.CustomerLocation','\0','\0','com.streamlinx.bcpt.CustomerLocation','2014-09-26 13:37:46','CustomerLocation',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (83,0,'','2012-06-15 13:34:46','com.streamlinx.bcpt.TenantLocation','\0','\0','com.streamlinx.bcpt.TenantLocation','2012-06-15 13:34:46','TenantLocation',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (84,0,'','2012-06-15 13:34:46','com.streamlinx.bcpt.Tenant','\0','\0','com.streamlinx.bcpt.Tenant','2012-06-15 13:34:46','Tenant',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (85,0,'','2012-06-15 13:34:46','com.streamlinx.bcpt.VendorLocation','\0','\0','com.streamlinx.bcpt.VendorLocation','2012-06-15 13:34:46','VendorLocation',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (86,0,'','2012-07-02 14:55:28','com.streamlinx.bcpt.TenantType','\0','\0','com.streamlinx.bcpt.TenantType','2012-07-02 14:55:28','TenantType',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (87,0,'','2012-07-02 14:55:28','com.streamlinx.bcpt.AuditTemplate','\0','\0','com.streamlinx.bcpt.AuditTemplate','2012-07-02 14:55:28','AuditTemplate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (88,0,'','2012-07-02 14:55:28','com.streamlinx.bcpt.Audit','\0','\0','com.streamlinx.bcpt.Audit','2012-07-02 14:55:28','Audit',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (92,0,'','2012-09-06 10:12:35','com.streamlinx.bcpt.query.FieldCat','\0','\0','com.streamlinx.bcpt.query.FieldCat','2012-09-06 10:12:35','FieldCat',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (93,0,'','2012-09-11 12:08:47','com.streamlinx.fsm.CustomerLocationDetails','\0','\0','com.streamlinx.fsm.CustomerLocationDetails','2012-09-11 12:08:47','CustomerLocationDetails',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (96,0,'','2012-09-18 09:16:50','com.streamlinx.fsm.VendorCatalogItem','\0','\0','com.streamlinx.fsm.VendorCatalogItem','2012-09-18 09:16:50','VendorCatalogItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (97,0,'','2012-09-18 09:16:50','com.streamlinx.fsm.VendorPriceListItem','\0','\0','com.streamlinx.fsm.VendorPriceListItem','2012-09-18 09:16:50','VendorPriceListItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (98,0,'','2012-09-18 09:16:50','com.streamlinx.fsm.VendorPriceList','\0','\0','com.streamlinx.fsm.VendorPriceList','2012-09-18 09:16:50','VendorPriceList',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (99,0,'','2012-10-16 14:16:26','com.streamlinx.fsc.FloorType','\0','\0','Com.streamlinx.fsc. Floor Type','2012-10-16 14:16:26','FloorType',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (100,0,'','2012-10-16 15:43:02','com.streamlinx.fsc.CleaningService','\0','\0','Com.streamlinx.fsc. Cleaning Service','2012-10-16 15:43:02','CleaningService',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (101,0,'','2012-10-16 15:43:14','com.streamlinx.fsc.CleaningRate','\0','\0','Com.streamlinx.fsc. Cleaning Rate','2012-10-16 15:43:14','CleaningRate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (102,0,'','2012-10-16 15:43:28','com.streamlinx.fsc.ServiceFrequency','\0','\0','Com.streamlinx.fsc. Service Frequency','2012-10-16 15:43:28','ServiceFrequency',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (104,0,'','2012-10-17 11:05:09','com.streamlinx.fsc.CleaningSpecialService','\0','\0','Com.streamlinx.fsc. Cleaning Special Service','2012-10-17 11:05:09','CleaningSpecialService',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (105,0,'','2012-10-17 15:24:32','com.streamlinx.fsc.CustomerLocationProposal','\0','\0','Com.streamlinx.fsc. Customer Location Proposal','2012-10-17 15:24:32','CustomerLocationProposal',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (106,0,'','2012-10-17 16:38:08','com.streamlinx.fsc.CustomerLocationProposalItem','\0','\0','Com.streamlinx.fsc. Customer Location Proposal Item','2012-10-17 16:38:08','CustomerLocationProposalItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (107,0,'','2012-10-17 17:39:39','com.streamlinx.bcpt.ServiceType','\0','\0','Com.streamlinx.bcpt. Service Type','2012-10-17 17:39:39','ServiceType',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (108,0,'','2012-10-18 11:32:32','com.streamlinx.fsc.LocationTemplate','\0','\0','Com.streamlinx.fsc. Location Template','2012-10-18 11:32:32','LocationTemplate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (109,0,'','2012-10-18 11:32:37','com.streamlinx.fsc.LocationTemplateArea','\0','\0','Com.streamlinx.fsc. Location Template Area','2012-10-18 11:32:37','LocationTemplateArea',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (110,0,'','2012-10-18 11:32:45','com.streamlinx.fsc.LocationTemplateAreaProductionRate','\0','\0','Com.streamlinx.fsc. Location Template Area Production Rate','2012-10-18 11:32:45','LocationTemplateAreaProductionRate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (111,0,'','2012-10-18 16:27:42','com.streamlinx.fsc.LocationTemplateAreaService','\0','\0','Com.streamlinx.fsc. Location Template Area Service','2012-10-18 16:27:42','LocationTemplateAreaService',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (112,0,'','2012-11-05 15:49:59','com.streamlinx.fsc.CustomerLocationContract','\0','\0','Com.streamlinx.fsc. Customer Location Contract','2012-11-05 15:49:59','CustomerLocationContract',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (113,0,'','2012-11-05 15:51:06','com.streamlinx.bcpt.ToDo','\0','\0','Com.streamlinx.bcpt. To Do','2012-11-05 15:51:06','ToDo',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (114,0,'','2012-11-12 09:50:18','com.streamlinx.bcpt.ActionItem','\0','\0','Com.streamlinx.bcpt. Action Item','2012-11-12 09:50:18','ActionItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (115,0,'','2012-11-19 12:20:07','com.streamlinx.fsc.RoomType','\0','\0','Com.streamlinx.fsc. Room Type','2012-11-19 12:20:07','RoomType',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (116,0,'','2012-11-19 12:20:11','com.streamlinx.fsc.RoomTypeService','\0','\0','Com.streamlinx.fsc. Room Type Service','2012-11-19 12:20:11','RoomTypeService',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (117,0,'','2012-11-19 12:20:25','com.streamlinx.fsc.LocationTemplateRoom','\0','\0','Com.streamlinx.fsc. Location Template Room','2012-11-19 12:20:25','LocationTemplateRoom',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (118,0,'','2012-12-03 11:36:31','com.streamlinx.fsc.CustomerLocationProposalRoomService','\0','\0','Com.streamlinx.fsc. Customer Location Proposal Room Service','2012-12-03 11:36:31','CustomerLocationProposalRoomService',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (119,0,'','2012-12-07 16:59:22','com.streamlinx.bcpt.Address','\0','\0','Com.streamlinx.bcpt. Address','2012-12-07 16:59:22','Address',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (121,0,'','2013-01-18 08:40:43','com.streamlinx.bcpt.PrintAttachment','\0','\0','Com.streamlinx.bcpt. Print Attachment','2013-01-18 08:40:43','PrintAttachment',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (122,0,'','2013-01-24 09:56:49','com.streamlinx.bcpt.PrintTextDefinition','\0','\0','Com.streamlinx.bcpt. Print Text Definition','2013-01-24 09:56:49','PrintTextDefinition',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (123,0,'','2013-01-24 09:57:04','com.streamlinx.bcpt.PrintSectionDefinition','\0','\0','Com.streamlinx.bcpt. Print Section Definition','2013-01-24 09:57:04','PrintSectionDefinition',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (124,0,'','2013-01-24 09:57:13','com.streamlinx.bcpt.PrintTemplate','\0','\0','Com.streamlinx.bcpt. Print Template','2013-01-24 09:57:13','PrintTemplate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (125,0,'','2013-01-24 10:14:25','com.streamlinx.bcpt.PrintTemplateSection','\0','\0','Com.streamlinx.bcpt. Print Template Section','2013-01-24 10:14:25','PrintTemplateSection',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (126,0,'','2013-03-20 09:35:59','com.streamlinx.bcpt.SubRegion','\0','\0','Com.streamlinx.bcpt. Sub Region','2013-03-20 09:35:59','SubRegion',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (127,0,'','2013-03-20 09:51:50','com.streamlinx.bcpt.Region','\0','\0','Com.streamlinx.bcpt. Region','2013-03-20 09:51:50','Region',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (128,0,'','2013-04-14 14:06:41','com.streamlinx.bcpt.CustomerLocationService','\0','\0','Com.streamlinx.bcpt. Customer Location Service','2013-04-14 14:06:41','CustomerLocationService',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (129,0,'','2013-04-26 12:48:02','com.streamlinx.bcpt.Campaign','\0','\0','Com.streamlinx.bcpt. Campaign','2013-04-26 12:48:02','Campaign',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (130,0,'','2013-05-09 09:16:54','com.streamlinx.bcpt.SalesProfile','\0','\0','Com.streamlinx.bcpt. Sales Profile','2014-05-02 14:32:38','SalesProfile',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (131,0,'','2013-07-30 10:13:45','com.streamlinx.bcpt.Phone','\0','\0','Com.streamlinx.bcpt. Phone','2013-07-30 10:13:45','Phone',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (132,0,'','2012-02-15 09:05:17','com.streamlinx.bcpt.Salesperson','\0','\0','com.streamlinx.bcpt.Salesperson','2012-02-15 09:05:17','Salesperson',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (133,0,'','2013-10-09 09:20:56','com.streamlinx.bcpt.ServiceHvac','\0','\0','Com.streamlinx.bcpt. Service Hvac','2013-10-09 09:20:56','ServiceHvac',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (134,0,'','2013-10-09 09:21:04','com.streamlinx.bcpt.ServiceJanitorial','\0','\0','Com.streamlinx.bcpt. Service Janitorial','2013-10-09 09:21:04','ServiceJanitorial',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (135,0,'','2013-10-31 08:49:53','com.streamlinx.bcpt.MsgBusLog','\0','\0','Com.streamlinx.bcpt. Msg Bus Log','2013-10-31 08:49:53','MsgBusLog',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (136,0,'','2013-11-25 09:54:28','com.streamlinx.bcpt.ComplianceDefinition','\0','\0','Com.streamlinx.bcpt. Compliance Definition','2013-11-25 09:54:28','ComplianceDefinition',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (137,0,'','2013-11-25 12:05:18','com.streamlinx.bcpt.VendorCompliance','\0','\0','Com.streamlinx.bcpt. Vendor Compliance','2013-11-25 12:05:18','VendorCompliance',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (138,0,'','2013-12-09 12:06:10','com.streamlinx.bcpt.ScheduleJobAction','\0','\0','Com.streamlinx.bcpt. Schedule Job Action','2013-12-09 12:06:10','ScheduleJobAction',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (139,0,'','2014-03-20 14:07:51','com.streamlinx.bcpt.listview.AreaCategory','\0','\0','Com.streamlinx.bcpt.listview. Area Category','2014-03-20 14:07:51','AreaCategory',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (140,0,'','2014-03-25 14:37:48','com.streamlinx.fsc.SpecialServiceTemplate','\0','\0','Com.streamlinx.fsc. Special Service Template','2014-04-22 12:54:46','SpecialServiceTemplate',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (141,0,'','2014-04-22 12:54:52','com.streamlinx.fsc.SpecialServiceTemplateMaterialItem','','','Com.streamlinx.fsc. Special Service Template Material Item','2014-04-22 12:54:52','SpecialServiceTemplateMaterialItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (143,0,'','2014-04-22 12:54:53','com.streamlinx.fsc.SpecialServiceTemplateLaborItem','','','Com.streamlinx.fsc. Special Service Template Labor Item','2014-04-22 12:54:53','SpecialServiceTemplateLaborItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (145,0,'','2014-04-22 12:54:54','com.streamlinx.fsc.SpecialServiceLaborItem','\0','\0','Com.streamlinx.fsc. Special Service Labor Item','2014-04-22 12:54:54','SpecialServiceLaborItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (147,0,'','2014-04-22 12:54:54','com.streamlinx.fsc.SpecialServiceSummary','\0','\0','Com.streamlinx.fsc. Special Service Summary','2014-04-22 12:54:54','SpecialServiceSummary',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (149,0,'','2014-08-14 14:40:03','com.streamlinx.fsc.ServiceContract','\0','\0','Com.streamlinx.fsc. Service Contract','2014-08-14 14:40:03','ServiceContract',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (151,0,'','2014-08-14 14:40:20','com.streamlinx.fsc.ServiceDeliveryProfile','\0','\0','Com.streamlinx.fsc. Service Delivery Profile','2014-08-14 14:40:20','ServiceDeliveryProfile',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (153,0,'','2014-08-14 14:40:37','com.streamlinx.fsc.ServiceDeliveryProfileDetail','\0','\0','Com.streamlinx.fsc. Service Delivery Profile Detail','2014-08-14 14:40:37','ServiceDeliveryProfileDetail',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (155,0,'','2014-08-14 14:41:15','com.streamlinx.fsc.MasterAgreement','\0','\0','Com.streamlinx.fsc. Master Agreement','2014-09-26 13:37:49','MasterAgreement',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (157,0,'','2014-08-29 14:08:05','com.streamlinx.fsc.MasterInvoice','\0','\0','Com.streamlinx.fsc. Master Invoice','2014-09-26 13:37:48','MasterInvoice',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (158,0,'','2014-09-26 13:37:38','com.streamlinx.fsc.OperationsBatch','\0','\0','Com.streamlinx.fsc. Operations Batch','2014-09-26 13:37:38','OperationsBatch',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (159,0,'','2014-10-02 20:43:39','com.streamlinx.fsc.CustomerReceipt','\0','\0','Com.streamlinx.fsc. Customer Receipt','2014-10-02 20:43:39','CustomerReceipt',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (160,0,'','2014-10-13 21:06:56','com.streamlinx.fsc.MasterAgreementAging','\0','\0','Com.streamlinx.fsc. Master Agreement Aging','2014-10-13 21:06:56','MasterAgreementAging',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (161,0,'','2014-10-15 20:01:43','com.streamlinx.fsc.VendorBill','\0','\0','Com.streamlinx.fsc. Vendor Bill','2014-10-15 20:01:43','VendorBill',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (162,0,'','2014-10-22 19:40:13','com.streamlinx.fsc.VendorBillLineItem','\0','\0','Com.streamlinx.fsc. Vendor Bill Line Item','2014-10-22 19:40:13','VendorBillLineItem',NULL,0,'');
INSERT INTO `domain_meta_data` VALUES (163,0,'','2014-10-22 19:58:07','com.streamlinx.fsc.view.VendorBillLineItemSummary','\0','\0','Com.streamlinx.fsc.view. Vendor Bill Line Item Summary','2014-10-22 19:58:07','VendorBillLineItemSummary',NULL,0,'');
/*!40000 ALTER TABLE `domain_meta_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


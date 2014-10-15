-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: smarts_too_dallas_07142014
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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

--
-- Table structure for table `list_view`
--

DROP TABLE IF EXISTS `list_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_view` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `area_data_source_id` bigint(20) NOT NULL,
  `criteria_closure` varchar(1250) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `max_records_to_fetch` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `paged_records_to_fetch` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_view_type` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `menu_category` varchar(255) DEFAULT NULL,
  `default_sort_by_id` bigint(20) DEFAULT NULL,
  `default_sort_order` varchar(4) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `area_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB70AF5A6EA6B2C7D` (`area_data_source_id`),
  KEY `FKB70AF5A664E3E60A` (`area_data_source_id`),
  KEY `FKB70AF5A6C2567536` (`area_data_source_id`),
  KEY `FKB70AF5A698C5D9DB` (`default_sort_by_id`),
  KEY `FKB70AF5A65D3B4D1` (`area_category_id`),
  CONSTRAINT `FKB70AF5A65D3B4D1` FOREIGN KEY (`area_category_id`) REFERENCES `area_category` (`id`),
  CONSTRAINT `FKB70AF5A698C5D9DB` FOREIGN KEY (`default_sort_by_id`) REFERENCES `list_view_field` (`id`),
  CONSTRAINT `FKB70AF5A6C2567536` FOREIGN KEY (`area_data_source_id`) REFERENCES `area_query_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 16489472 kB; (`area_data_source_id`) REFER `lss';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_view`
--

LOCK TABLES `list_view` WRITE;
/*!40000 ALTER TABLE `list_view` DISABLE KEYS */;
INSERT INTO `list_view` VALUES (10,28,4,NULL,'2012-01-27 10:57:48','All Customers',0,'2012-06-27 16:36:58',500,'All Customers ',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (13,1,7,NULL,'2012-02-01 17:04:56','Comments',0,'2012-02-01 17:05:38',500,'Comments',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (14,1,8,NULL,'2012-02-07 08:41:57','Used for the Area / SubArea Maintenance screen',0,'2012-02-07 08:55:43',100,'AreaMetaDataSubAreaMetaData',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (18,3,9,'areametadata.areaType = \'User\' ','2012-02-07 09:34:08','Area Meta Data (User)',0,'2012-08-30 09:14:52',100,'Area Meta Data',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (21,1,13,NULL,'2012-02-13 09:42:37','XSL Templates',0,'2012-02-13 09:44:57',50,'XSL Templates',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (22,3,14,'user.username is not null','2012-02-15 09:14:30','Users',0,'2013-10-29 10:19:44',500,'Users',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (23,1,16,NULL,'2012-02-15 09:16:21','Roles',0,'2012-02-15 09:16:49',500,'Roles',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (24,1,15,NULL,'2012-02-15 09:17:21','Role Functions',0,'2012-02-15 09:17:42',100,'Role Functions',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (25,3,17,'listview.listViewType=\'SubArea\'','2012-02-15 12:34:03','SubArea List Views',0,'2012-02-17 15:54:07',100,'SubArea List Views',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (46,2,4,NULL,'2012-02-15 18:40:50','My New List View',0,'2012-02-15 18:53:04',500,'My New List View',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (50,2,18,NULL,'2012-02-16 16:20:55','Workflow Definitions',0,'2012-03-07 17:42:28',100,'Workflows',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (51,1,19,NULL,'2012-02-16 16:50:54','Workflow Steps',0,'2012-02-16 16:53:27',50,'Workflow Steps',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (53,1,20,NULL,'2012-02-17 10:25:43','Transitions',0,'2012-02-17 10:27:23',100,'Transitions',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (62,3,17,'listview.listViewType=\'Area\'','2012-02-17 16:00:37','Area List Views',0,'2013-07-01 10:24:48',500,'Area List Views',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (64,3,4,NULL,'2012-02-21 19:00:58','Enter your description here',0,'2013-08-01 11:35:18',500,'All Customers 2',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (65,1,33,NULL,'2012-03-01 15:16:20','LocationAreaSpaces',0,'2012-10-19 16:12:29',50,'LocationAreaSpaces',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (66,1,22,NULL,'2012-03-01 15:19:38','Enter your description hereAreaFiedSets',0,'2012-03-01 15:22:07',50,'Area Field Sets',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (68,0,24,NULL,'2012-03-13 14:30:30','DomainMetaData',0,'2012-03-13 14:30:30',500,'DomainMetaData',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (74,0,27,NULL,'2012-03-20 14:14:48','Queries',0,'2012-03-20 14:14:48',500,'Queries',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (75,0,27,NULL,'2012-03-20 14:14:48','Query Columns',0,'2012-03-20 14:14:48',5,'Query Columns',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (76,0,28,NULL,'2012-03-21 15:36:15','Widget',0,'2012-03-21 15:36:15',500,'Widget',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (78,1,29,NULL,'2012-03-28 17:34:47','Dashboard',0,'2013-06-26 13:56:08',500,'Dashboard',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (86,0,29,NULL,'2012-03-30 11:20:52','Dashboard Widgets',0,'2012-03-30 11:20:52',100,'Dashboard Widgets',100,0,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (87,3,30,NULL,'2012-03-14 11:39:13','AreaDataSources',0,'2013-07-30 15:07:47',500,'AreaDataSources',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (88,0,30,NULL,'2012-04-13 14:00:14','AreaDataSource',0,'2012-04-13 14:00:14',500,'AreaDataSource',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (89,0,31,NULL,'2012-04-16 10:31:14','FieldOptionSet',0,'2012-04-16 10:31:14',500,'FieldOptionSet',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (91,3,33,NULL,'2012-04-18 16:04:25','Elements',0,'2012-10-31 06:31:17',500,'Spaces',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (92,0,34,NULL,'2012-04-23 15:28:57','FileEntries',0,'2012-04-23 15:28:57',500,'FileEntries',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (93,0,34,NULL,'2012-04-23 15:34:25','Files',0,'2012-04-23 15:34:25',500,'Files',100,0,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (94,0,24,NULL,'2012-04-24 13:42:01','Domains',0,'2012-04-24 13:42:01',500,'Domains',100,0,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (95,0,36,NULL,'2012-04-24 13:54:57','Properties',0,'2012-04-24 13:54:57',500,'Properties',100,0,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (96,0,37,NULL,'2012-04-24 14:19:42','PropertyMetaDatas',0,'2012-04-24 14:19:42',500,'PropertyMetaDatas',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (97,0,38,NULL,'2012-05-08 10:29:26','DynaForm',0,'2012-05-08 10:29:26',500,'DynaForm',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (98,0,39,NULL,'2012-05-08 10:29:26','DynaFormElement',0,'2012-05-08 10:29:26',500,'DynaForm Elements',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (99,0,38,NULL,'2012-05-08 10:31:06','DynaForms',0,'2012-05-08 10:31:06',500,'DynaForms',100,0,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (100,0,39,NULL,'2012-05-16 16:03:43','DynaFormElement',0,'2012-05-16 16:03:43',500,'DynaFormElement',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (101,0,40,NULL,'2012-05-21 09:43:22','DomainAction',0,'2012-05-21 09:43:22',500,'DomainAction',100,1,0,'SubArea',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (105,1,46,NULL,'2012-06-15 13:39:30','Tenant',0,'2012-10-18 15:20:18',500,'Tenant',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (106,0,47,NULL,'2012-06-15 13:39:30','TenantLocation',0,'2012-06-15 13:39:30',500,'TenantLocation',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (107,2,7,NULL,'2012-06-15 13:39:30','Customer',0,'2013-08-01 11:29:02',500,'Company',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (108,1,48,NULL,'2012-06-15 13:39:31','CustomerLocation',0,'2012-07-02 16:01:14',500,'CustomerLocation',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (109,2,49,NULL,'2012-06-15 13:43:20','VendorLocation',0,'2012-09-18 14:00:28',500,'VendorLocation',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (110,0,4,NULL,'2012-07-02 12:19:52','Customers',0,'2012-07-02 12:19:52',500,'Customers',100,0,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (111,5,50,NULL,'2012-07-02 14:55:28','Audit',0,'2012-07-23 11:14:32',500,'Survey',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (115,16,9,'(areametadata.areaType = \'System\' or areametadata.areaType = \'Client\' )','2012-02-07 09:34:08','Area Meta Data (System)',0,'2012-10-17 18:14:53',100,'Area Meta Data',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (129,0,9,'areametadata.areaType = \'System\'','2012-08-30 11:58:08','Area Meta Data (System)',0,'2012-08-30 11:58:08',100,'COPY OF Area Meta Data',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (131,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:14:48','Area Meta Data (System)',0,'2012-08-30 12:14:48',100,'COPY OF Area Meta Data',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (132,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:15:25','Area Meta Data (System)',0,'2012-08-30 12:15:25',100,'COPY OF Area Meta Data',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (133,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:17:04','Area Meta Data (System)',0,'2012-08-30 12:17:04',100,'Bobos View',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (134,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:17:36','Area Meta Data (System)',0,'2012-08-30 12:17:36',100,'Bobos View',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (135,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:17:41','Area Meta Data (System)',0,'2012-08-30 12:17:41',100,'Bobos View',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (136,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:19:41','Area Meta Data (System)',0,'2012-08-30 12:19:41',100,'COPY OF Area Meta Data',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (137,0,9,'areametadata.areaType = \'System\'','2012-08-30 12:19:59','Area Meta Data (System)',0,'2012-08-30 12:19:59',100,'dude',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (142,0,17,'listview.listViewType=\'Area\'','2012-09-04 15:13:53','Area List Views',0,'2012-09-04 15:13:53',500,'Pauls View',100,1,0,'Area',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (143,1,54,NULL,'2012-09-06 10:49:37','FieldCat',0,'2012-09-06 10:50:54',500,'FieldCat',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (144,0,55,NULL,'2012-09-11 12:08:48','CustomerLocationDetails',0,'2012-09-11 12:08:48',500,'CustomerLocationDetails',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (151,0,61,NULL,'2012-10-16 14:27:58','FloorType',0,'2012-10-16 14:27:58',500,'FloorType',100,1,0,'Area','obj','Survey / Proposal Data Maintnenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (152,0,62,NULL,'2012-10-16 15:43:41','ServiceFrequencies',0,'2012-10-16 15:43:41',500,'ServiceFrequencies',100,1,0,'Area','obj','Survey / Proposal Data Maintnenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (153,3,63,NULL,'2012-10-16 15:43:49','CleaningService',0,'2014-01-14 12:04:03',500,'CleaningService',100,1,0,'Area','hql','Survey / Proposal',NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (154,2,64,NULL,'2012-10-16 15:43:54','CleaningRate',0,'2014-02-17 11:55:15',500,'CleaningRate',100,1,0,'Area','hql','Survey / Proposal Data Maintnenance',NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (155,1,65,NULL,'2012-10-17 11:05:24','CleaningSpecialService',0,'2012-10-17 14:21:14',500,'CleaningSpecialService',100,1,0,'Area','obj','Survey / Proposal Data Maintnenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (158,5,67,NULL,'2012-10-17 15:24:45','CustomerLocationProposal',0,'2013-07-08 10:29:08',500,'CustomerLocationProposals',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (159,1,68,NULL,'2012-10-17 16:38:19','CustomerLocationProposalItem',0,'2012-10-18 10:17:28',500,'CustomerLocationProposalItem',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (160,0,69,NULL,'2012-10-17 17:40:28','ServiceType',0,'2012-10-17 17:40:28',500,'ServiceType',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (161,2,70,NULL,'2012-10-18 11:33:05','LocationTemplateArea',0,'2012-10-19 11:50:30',500,'Area Types',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (162,0,71,NULL,'2012-10-18 11:33:11','LocationTemplate',0,'2012-10-18 11:33:11',500,'LocationTemplate',100,1,0,'Area','hql','Survey / Proposal',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (163,5,72,NULL,'2012-10-19 13:49:04','Services',0,'2012-10-31 11:08:33',500,'Services',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (164,3,50,'audit.wfStatus = \'Scheduled\'','2012-10-22 17:40:24','Scheduled Surveys',0,'2012-10-22 17:46:36',500,'2. Scheduled Surveys',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (165,2,50,'audit.wfStatus = \'Completed\'','2012-10-22 17:43:36','Completed Surveys',0,'2012-10-22 17:44:58',500,'3. Completed Surveys',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (166,1,9,'areametadata.areaType = \'System\'','2012-10-31 12:19:08','Area Meta Data (System)',0,'2012-10-31 12:23:55',100,'sys view',100,1,0,'Area','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (167,2,50,'audit.wfStatus = \'Planned\'','2012-10-31 12:22:17','Scheduled Surveys',0,'2013-02-07 15:45:17',500,'1. Planned Surveys',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (168,2,73,NULL,'2012-11-05 15:50:38','CustomerLocationContract',0,'2014-03-27 09:12:07',500,'CustomerLocationContract',100,1,0,'SubArea','hql',NULL,NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (169,1,74,NULL,'2012-11-05 15:51:14','ToDo',0,'2012-11-07 12:12:15',500,'ToDo',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (170,1,5,'phone.type = \'W\'','2012-11-08 14:29:57','Vendors',0,'2012-11-08 14:30:36',500,'Vendors',100,0,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (171,1,75,NULL,'2012-11-12 09:50:33','Tasks',0,'2012-11-12 09:51:12',500,'Tasks',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (172,4,76,NULL,'2012-11-19 12:20:38','LocationTemplateRoom',0,'2012-11-19 13:22:57',500,'Areas/Rooms',100,1,0,'SubArea','obj',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (173,2,77,NULL,'2012-11-19 12:20:45','RoomType',0,'2012-11-19 12:44:43',500,'RoomType',100,1,0,'Area','hql','Survey / Proposal',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (174,1,78,NULL,'2012-11-19 12:20:50','RoomTypeService',0,'2012-11-19 13:24:23',500,'RoomTypeService',100,1,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (175,4,67,'customerlocationproposal.wfStatus=\'Draft\'','2012-10-17 15:24:45','Proposals',0,'2012-12-07 15:41:39',500,'*Draft* Proposals',100,1,0,'Area','hql','Proposals',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (176,2,73,NULL,'2012-11-05 15:50:38','Contracts',0,'2012-12-07 15:42:19',500,'Contracts (All)',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (178,2,67,'customerlocationproposal.wfStatus=\'Lost\'','2012-12-07 15:15:42','Lost Proposals',0,'2012-12-07 15:21:24',500,'Lost Proposals',100,0,0,'Area','hql','Proposals',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (179,3,67,'customerlocationproposal.wfStatus=\'Proposed\'','2012-12-07 15:29:19','Proposed',0,'2012-12-07 15:41:11',500,'Delivered Proposals',100,0,0,'Area','hql','Proposals',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (180,3,67,'customerlocationproposal.wfStatus=\'Closed\'','2012-12-07 15:36:18','Closed Proposals',0,'2012-12-07 15:39:40',500,'Closed Proposals',100,0,0,'Area','hql','Proposals',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (181,0,79,NULL,'2013-01-24 09:58:29','PrintTextDefinition',0,'2013-01-24 09:58:29',500,'PrintTextDefinition',100,1,0,'Area','hql','Print Maintenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (182,0,80,NULL,'2013-01-24 09:58:41','PrintSectionDefinition',0,'2013-01-24 09:58:41',500,'PrintSectionDefinition',100,1,0,'Area','hql','Print Maintenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (183,0,81,NULL,'2013-01-24 09:58:50','PrintTemplate',0,'2013-01-24 09:58:50',500,'PrintTemplate',100,1,0,'Area','hql','Print Maintenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (184,0,83,'printattachment.type = null','2013-01-25 11:21:14','PrintAttachment',0,'2013-01-25 11:21:14',500,'PrintAttachment',100,1,0,'Area','hql','Print Maintenance',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (186,0,85,NULL,'2013-03-20 09:51:56','Region',0,'2013-03-20 09:51:56',500,'Territory',100,1,0,'Area','hql','Territories',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (187,0,86,NULL,'2013-04-14 14:06:48','CustomerLocationService',0,'2013-04-14 14:06:48',500,'CustomerLocationService',100,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (188,1,86,NULL,'2013-04-14 16:29:17','Services',0,'2013-04-15 06:40:46',500,'Services',100,0,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (189,1,87,NULL,'2013-04-19 12:27:27','Leads',0,'2013-04-19 12:28:20',500,'Leads',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (191,0,88,NULL,'2013-05-07 14:53:51','Campaign',0,'2013-05-07 14:53:51',500,'Campaign',100,1,0,'SubArea','sql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (193,3,5,'vendor.wfStatus=\'Prospect\' and phone.type = \'W\'','2013-05-29 09:40:53','Prospect',0,'2013-06-26 12:15:44',500,'Prospect',100,0,0,'Area','hql',NULL,NULL,NULL,5,NULL);
INSERT INTO `list_view` VALUES (195,3,5,'vendor.wfStatus=\'Candidate\' and phone.type = \'W\'','2013-05-29 09:56:10','Candidate',0,'2014-03-27 12:28:09',500,'Candidate',100,0,0,'Area','hql',NULL,NULL,'asc',10,5);
INSERT INTO `list_view` VALUES (196,4,5,'vendor.wfStatus=\'Active\' and phone.type = \'W\'','2013-05-29 09:56:52','Active',0,'2014-03-27 12:27:27',500,'Active',100,0,0,'Area','hql',NULL,1086,'asc',15,5);
INSERT INTO `list_view` VALUES (197,2,5,'vendor.wfStatus=\'Lost\' and phone.type = \'W\'','2013-05-29 09:58:04','Lost',0,'2013-06-26 12:22:34',500,'Lost',100,0,0,'Area','hql',NULL,NULL,NULL,20,NULL);
INSERT INTO `list_view` VALUES (198,3,5,'vendor.wfStatus=\'Terminated\' and phone.type = \'W\'','2013-05-29 09:58:38','Terminated',0,'2014-03-27 12:28:52',500,'Terminated',100,0,0,'Area','hql',NULL,NULL,'asc',25,5);
INSERT INTO `list_view` VALUES (199,3,104,'phone.type = \'W\'','2013-05-29 10:00:04','To-Do\'s',0,'2013-11-05 10:05:53',500,'Tasks',100,0,0,'Area','hql',NULL,NULL,'asc',30,NULL);
INSERT INTO `list_view` VALUES (201,8,108,'phone.type = \'W\'','2013-06-24 11:46:59','Leads By Name',0,'2014-03-25 10:49:55',1000,'All Leads',100,0,0,'Area','sql',NULL,795,'asc',5,1);
INSERT INTO `list_view` VALUES (202,6,108,'customer_location_base.lead_source=\'iLead\' and phone.type = \'W\'','2013-06-24 11:49:04','Internet Leads',0,'2014-03-24 16:46:32',500,'Internet Leads',100,0,0,'Area','sql',NULL,NULL,'asc',10,NULL);
INSERT INTO `list_view` VALUES (213,16,118,'customer_location_base.wf_status in (\'Active\', \'Working\') and phone.type = \'W\' and customer_location_service.wf_status = \'Qualified\'','2013-06-25 14:56:40','Prospects',0,'2014-03-26 13:36:22',500,'Prospects',100,1,0,'Area','sql',NULL,1387,'asc',30,2);
INSERT INTO `list_view` VALUES (214,7,94,'customerlocation.wfStatus=\'Proposal\' and phone.type = \'W\'','2013-06-25 15:34:10','Suspect',0,'2013-10-30 13:58:01',500,'Proposals',100,0,0,'Area','hql',NULL,NULL,NULL,20,NULL);
INSERT INTO `list_view` VALUES (215,18,117,'( customerlocation.wfStatus=\'Working\' or customerlocation.wfStatus=\'Active\'   )  and phone.type = \'W\'\r\nand service.wfStatus = \'Qualified\' and service.serviceType = actionitem.serviceType','2013-06-25 15:35:37','Appointments',0,'2014-03-26 14:00:10',500,'Appointments',100,0,0,'Area','hql',NULL,NULL,'asc',20,2);
INSERT INTO `list_view` VALUES (216,5,94,'customerlocation.wfStatus=\'Opportunity\' and phone.type = \'W\'','2013-06-25 15:43:07','Proposals',0,'2013-10-30 13:51:30',500,'Opportunities',100,0,0,'Area','hql',NULL,NULL,NULL,5,NULL);
INSERT INTO `list_view` VALUES (218,1,95,NULL,'2013-06-26 10:21:53','Collections',0,'2013-06-26 10:22:04',500,'Collections',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (219,1,95,NULL,'2013-06-26 10:22:31','Collections 60+',0,'2013-06-26 10:22:35',500,'Collections 60+',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (220,1,95,NULL,'2013-06-26 10:22:53','Collections Follow Up',0,'2013-06-26 10:22:56',500,'Collections Follow Up',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (221,15,97,'customer_location_base.wf_status = \'Active\' and customer_location_service.wf_status = \'Active\'','2013-06-26 13:09:20','Closed',0,'2014-07-14 18:12:08',500,'Closed',100,0,0,'Area','sql',NULL,NULL,'asc',5,3);
INSERT INTO `list_view` VALUES (222,16,97,'customer_location_base.wf_status = \'Active\' and customer_location_service.wf_status = \'Active\'','2013-06-26 13:13:39','Active - Customers',0,'2014-07-14 16:43:39',1000,'Active',100,0,0,'Area','sql',NULL,NULL,'asc',10,3);
INSERT INTO `list_view` VALUES (223,9,97,'customer_location_base.wf_status = \'Active\' and customer_location_service.wf_status = \'Active\'','2013-06-26 13:14:11','Suspended',0,'2014-07-14 18:12:13',500,'Suspended',100,0,0,'Area','sql',NULL,NULL,'asc',15,3);
INSERT INTO `list_view` VALUES (224,13,97,'customer_location_service.wf_status = \'Terminated\'','2013-06-26 13:14:37','Terminated - Customers',0,'2014-07-14 18:12:17',500,'Terminated',100,0,0,'Area','sql',NULL,NULL,'asc',20,3);
INSERT INTO `list_view` VALUES (226,1,5,'phone.type = \'W\'','2013-06-27 14:38:04','Compliance',0,'2013-06-27 14:40:47',500,'Compliance',100,0,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (227,1,5,'phone.type = \'W\'','2013-06-27 14:52:15','Customers Current',0,'2013-06-27 14:53:42',500,'Customers Current',100,0,0,'SubArea','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (233,1,4,NULL,'2013-07-29 12:08:21','Customer Comments',0,'2013-07-29 12:08:27',500,'Customer Comments',100,0,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (238,1,100,'phone.type = \'W\'','2013-08-01 10:55:40','Prospect Tasks',0,'2013-08-01 10:56:13',500,'Prospect Tasks',100,0,0,'Area','hql',NULL,NULL,NULL,30,NULL);
INSERT INTO `list_view` VALUES (239,2,99,'phone.type = \'W\'','2013-08-01 11:39:10','Current Month Onsite',0,'2013-08-01 11:42:57',500,'Current Month Onsite',100,0,0,'Area','hql',NULL,NULL,NULL,5,NULL);
INSERT INTO `list_view` VALUES (240,1,99,'phone.type = \'W\'','2013-08-01 12:44:45','Current Month Phone',0,'2013-08-01 12:44:56',500,'Current Month Phone',100,0,0,'Area','hql',NULL,NULL,NULL,10,NULL);
INSERT INTO `list_view` VALUES (241,1,99,'phone.type = \'W\'','2013-08-01 12:45:18','Current Month EP',0,'2013-08-01 12:45:29',500,'Current Month EP',100,0,0,'Area','hql',NULL,NULL,NULL,15,NULL);
INSERT INTO `list_view` VALUES (242,1,99,'phone.type = \'W\'','2013-08-01 12:45:50','Needs Action',0,'2013-08-01 12:46:03',500,'Needs Action',100,0,0,'Area','hql',NULL,NULL,NULL,20,NULL);
INSERT INTO `list_view` VALUES (243,1,99,'phone.type = \'W\'','2013-08-01 12:46:30','Customer Comments',0,'2013-08-01 12:46:39',500,'Customer Comments',100,0,0,'Area','hql',NULL,NULL,NULL,25,NULL);
INSERT INTO `list_view` VALUES (244,1,99,'phone.type = \'W\'','2013-08-01 12:47:05','Done This Month',0,'2013-08-01 12:47:22',500,'Done This Month',100,0,0,'Area','hql',NULL,NULL,NULL,30,NULL);
INSERT INTO `list_view` VALUES (245,1,99,'phone.type = \'W\'','2013-08-01 12:47:43','Missed Last Month',0,'2013-08-01 12:47:50',500,'Missed Last Month',100,0,0,'Area','hql',NULL,NULL,NULL,35,NULL);
INSERT INTO `list_view` VALUES (246,3,101,'campaign.wfStatus=\'Active\'','2013-08-14 12:34:49','Just Campaign Data for Maintenance',0,'2014-03-24 14:22:48',500,'Active Campaigns ',100,0,0,'Area','hql','Campaigns',NULL,'asc',20,4);
INSERT INTO `list_view` VALUES (249,5,101,'campaign.wfStatus=\'Completed\'','2013-08-14 14:30:13','Just Campaign Data for Maintenance',0,'2014-03-24 14:23:23',500,'Completed Campaigns',100,0,0,'Area','hql','Campaigns',NULL,'asc',30,4);
INSERT INTO `list_view` VALUES (250,2,101,'campaign.status=\'Draft\'','2013-08-14 14:32:54','Just Campaign Data for Maintenance',0,'2014-03-24 14:23:55',500,'Draft Campaigns',100,0,0,'Area','hql','Campaigns',NULL,'asc',10,4);
INSERT INTO `list_view` VALUES (254,2,94,'customerlocation.wfStatus=\'Lost\' and phone.type = \'W\'','2013-10-30 13:59:28','Appointments',0,'2014-03-26 13:06:02',500,'Lost',100,0,0,'Area','hql',NULL,NULL,'asc',25,NULL);
INSERT INTO `list_view` VALUES (255,5,103,NULL,'2013-10-31 08:59:14','MsgBusLog',0,'2013-10-31 12:55:59',500,'MsgBusLog',100,1,0,'Area','hql','Logs',1305,'desc',NULL,NULL);
INSERT INTO `list_view` VALUES (256,0,105,NULL,'2013-11-25 09:55:27','ComplianceDefinition',0,'2013-11-25 09:55:27',500,'ComplianceDefinition',20,1,0,'Area','hql','Service Provider',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (257,0,106,NULL,'2013-11-25 12:07:06','VendorCompliance',0,'2013-11-25 12:07:06',500,'VendorCompliance',20,1,0,'Area','hql','',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (258,1,107,NULL,'2013-12-09 12:24:20','ScheduleJobAction',0,'2013-12-09 12:49:25',500,'ScheduleJobAction',20,1,0,'Area','hql',NULL,NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (259,3,108,'phone.type = \'W\'','2013-12-19 13:25:32','New Leads By Name',0,'2014-03-24 16:47:00',1000,'New Leads By Name',100,0,0,'Area','sql',NULL,NULL,'asc',5,NULL);
INSERT INTO `list_view` VALUES (267,1,116,NULL,'2014-03-20 15:03:04','AreaCategories',0,'2014-03-21 11:24:06',500,'AreaCategories',20,1,0,'Area','hql',NULL,NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (268,8,94,'customerlocationservice.wfStatus = \'Qualified\' and phone.type=\'W\'','2014-03-25 11:54:58','All Working',0,'2014-03-26 11:02:54',500,'All Working',20,0,0,'Area','hql',NULL,NULL,'asc',10,2);
INSERT INTO `list_view` VALUES (270,4,120,'customer_location_base.wf_status in (\'Active\', \'Working\') and phone.type = \'W\' and customer_location_service.wf_status = \'Qualified\'','2014-03-26 11:36:46','All Working',0,'2014-03-26 13:22:10',500,'Proposal',100,0,0,'Area','sql',NULL,1430,'asc',40,2);
INSERT INTO `list_view` VALUES (271,4,121,'phone.type = \'W\' ','2014-03-26 11:58:04','Appointments',0,'2014-04-08 11:18:21',500,'Tasks',100,0,0,'Area','hql',NULL,NULL,'asc',60,2);
INSERT INTO `list_view` VALUES (272,1,122,'customerlocationservice.wfStatus = \'Lost\' and phone.type=\'W\'','2014-03-26 13:00:13','All Working',0,'2014-03-26 13:07:52',500,'Lost',100,0,0,'Area','hql',NULL,NULL,'asc',50,2);
INSERT INTO `list_view` VALUES (273,2,97,'customer_location_base.wf_status = \'Holding\' and customer_location_service.wf_status = \'Terminated\'','2014-03-27 14:20:08','Terminated - Customers',0,'2014-07-14 18:12:22',500,'Holding',100,0,0,'Area','sql',NULL,NULL,'asc',20,3);
INSERT INTO `list_view` VALUES (275,0,125,NULL,'2014-04-22 12:55:00','SpecialServiceTemplate',0,'2014-04-22 12:55:00',500,'SpecialServiceTemplate',20,1,0,'Area','hql','Survey / Proposal',NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (277,0,127,NULL,'2014-05-02 14:32:39','SalesProfile',0,'2014-05-02 14:32:39',500,'SalesProfile',100,1,0,'Area','hql','Territories',NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (281,0,88,'campaign.status=\'Active\' and phone.type = \'W\'','2014-06-10 13:56:46','A',0,'2014-06-10 13:56:46',500,'Leads in an Active Campaign',100,0,0,'Area','sql',NULL,NULL,'asc',15,NULL);
INSERT INTO `list_view` VALUES (283,0,88,'campaign.status=\'Active\' and phone.type = \'W\' and customer_location_base.id not in\n(select customer_location_base_action_items_id from customer_location_base_action_item\n        inner join action_item on action_item.id = customer_location_base_action_item.action_item_id\n where action_item.date_completed is null\n)','2014-06-10 13:58:27','B',0,'2014-06-10 13:58:27',500,'Leads Not Called',100,0,0,'Area','sql',NULL,NULL,'asc',15,NULL);
INSERT INTO `list_view` VALUES (285,0,129,'phone.type = \'W\' and action_item.assigned_to_id = @USERID and action_item.type = \'CallBack\' and action_item.date_completed is null','2014-06-10 14:08:39','C',0,'2014-06-10 14:08:39',500,'My Callbacks',100,0,0,'Area','sql',NULL,NULL,NULL,20,NULL);
INSERT INTO `list_view` VALUES (287,0,102,'phone.type = \'W\' and action_item.created_by_id = @USERID and day(action_item.date_created) = day(now()) and month(action_item.date_created) = month(now()) and year(action_item.date_created) = year(now())','2014-06-10 14:18:06','D',0,'2014-06-10 14:18:06',500,'My Calls Today',100,0,0,'Area','sql',NULL,NULL,NULL,25,NULL);
INSERT INTO `list_view` VALUES (289,0,129,'phone.type = \'W\' and action_item.assigned_to_id = @USERID and action_item.type = \'Appointment\' and action_item.date_completed is null','2014-06-10 14:25:55','E',0,'2014-06-10 14:25:55',500,'Appointments Scheduled',100,0,0,'Area','sql',NULL,NULL,'asc',20,NULL);
INSERT INTO `list_view` VALUES (291,2,97,'customer_location_base.id IN ( SELECT distinctrow customer_location_proposal.customer_location_id FROM customer_location_proposal INNER JOIN work_flow_tracking ON work_flow_tracking.id = customer_location_proposal.work_flow_tracking_id WHERE work_flow_tracking.created_by = \"Proposal Import\" ) AND customer_location_service.service_type_id = 5','2014-07-16 11:52:13','Active - Customers',0,'2014-07-16 11:53:00',1000,'SMARTS Proposals',100,0,0,'Area','sql',NULL,NULL,'asc',10,2);
INSERT INTO `list_view` VALUES (293,0,131,NULL,'2014-08-14 14:40:07','ServiceContract',0,'2014-08-14 14:40:07',500,'ServiceContract',20,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (295,0,133,NULL,'2014-08-14 14:40:24','ServiceDeliveryProfile',0,'2014-08-14 14:40:24',500,'ServiceDeliveryProfile',20,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (297,0,135,NULL,'2014-08-14 14:40:39','ServiceDeliveryProfileDetails belonging to a ServiceDeliveryProfile',0,'2014-08-14 14:40:39',500,'ServiceDeliveryProfileDetails',20,0,0,'SubArea','hql',NULL,NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (299,0,135,NULL,'2014-08-14 14:40:39','ServiceDeliveryProfileDetail',0,'2014-08-14 14:40:39',500,'ServiceDeliveryProfileDetail',20,1,0,'Area','hql',NULL,NULL,'asc',NULL,NULL);
INSERT INTO `list_view` VALUES (305,0,141,NULL,'2014-08-29 14:08:10','MasterInvoice',0,'2014-08-29 14:08:10',500,'MasterInvoice',20,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (307,2,145,'customer_location_base.wf_status in (\'Working\', \'Active\')\r\nand customer_location_proposal.wf_status not in (\'Import\') ','2014-09-23 15:20:35','Proposals',0,'2014-09-23 15:38:42',500,'Proposals',20,0,0,'Area','sql',NULL,NULL,'asc',99,2);
INSERT INTO `list_view` VALUES (311,0,147,NULL,'2014-09-26 13:37:39','OperationsBatch',0,'2014-09-26 13:37:39',500,'OperationsBatch',20,1,0,'Area','hql',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `list_view` VALUES (313,3,149,NULL,'2014-10-02 20:45:10','CustomerReceipt',0,'2014-10-03 13:24:28',500,'Receipts',100,1,0,'Area','hql',NULL,NULL,'asc',NULL,7);
INSERT INTO `list_view` VALUES (316,2,150,'address2.id = (select min(id) from CustomerLocationBaseAddress where customerLocation = customerlocation)\r\nand masteragreementaging.agingdays > 0','2014-10-14 14:03:00','Collections',0,'2014-10-14 14:15:23',500,'Collections',100,0,0,'Area','hql',NULL,NULL,'asc',NULL,7);
/*!40000 ALTER TABLE `list_view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-15 13:33:27

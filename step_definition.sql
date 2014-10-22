
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
DROP TABLE IF EXISTS `step_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `step_definition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `delete_access` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `owner_access` varchar(255) DEFAULT NULL,
  `read_access` varchar(255) DEFAULT NULL,
  `required_by_date` datetime DEFAULT NULL,
  `step_group` varchar(255) DEFAULT NULL,
  `step_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `update_access` varchar(255) DEFAULT NULL,
  `work_flow_id` bigint(20) NOT NULL,
  `step_validation` longtext,
  `custom_view` varchar(255) DEFAULT NULL,
  `custom_display` bit(1) NOT NULL DEFAULT b'0',
  `default_view_mode` varchar(255) DEFAULT NULL,
  `pos_left` varchar(255) DEFAULT NULL,
  `pos_top` varchar(255) DEFAULT NULL,
  `step_confirmation` longtext,
  PRIMARY KEY (`id`),
  KEY `FK31E18CA63D16AA0C` (`work_flow_id`),
  CONSTRAINT `FK31E18CA63EAC915D` FOREIGN KEY (`work_flow_id`) REFERENCES `work_flow` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `step_definition` WRITE;
/*!40000 ALTER TABLE `step_definition` DISABLE KEYS */;
INSERT INTO `step_definition` VALUES (1,266,'2012-02-16 18:20:30','Managers','Start the evaluation process.','2012-10-18 11:25:40','Administrators','Managers','2012-02-17 00:00:00','Evaluate','Draft','Transfer','Managers',1,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (2,10,'2012-02-17 11:24:11','Managers','Evaluate - Begin','2012-09-18 15:40:20','Administrators','Managers','2012-02-28 00:00:00','Evaluate','Start','Basic','Managers',1,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (3,2,'2012-02-17 11:25:38','Managers','Review','2012-04-25 09:21:49','Managers','Managers','2012-02-29 00:00:00','Review','Review','Basic','Managers',1,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (4,2,'2012-02-17 11:29:20','Administrators','Implementation - Begin','2012-05-02 12:50:32','Managers','Administrators','2012-02-29 00:00:00','Implementation','Install','Basic','Administrators',1,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (5,0,'2012-02-21 07:59:28','Administrators','Last','2012-02-21 07:59:28','Administrators','Administrators','2012-02-22 00:00:00','Last','Last','Basic','Administrators',1,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (6,6,'2012-03-02 09:09:04','Administrators','test','2012-06-13 16:21:35','Administrators','Administrators',NULL,'Last','End','Basic','Administrators',1,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (15,3,'2012-07-03 11:40:52','Administrators','Gather survey data on site.','2012-12-04 14:09:23','Administrators','Administrators','2012-07-31 00:00:00','Audit Steps','Scheduled','Basic','Administrators',8,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (16,2,'2012-07-03 11:41:38','Administrators','Verify information colleceted','2012-10-22 16:49:17','Administrators','Administrators','2012-07-31 00:00:00','Validation','Completed','Basic','Administrators',8,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (21,0,'2012-08-27 15:15:53',NULL,'Space Draft','2012-08-27 15:15:53',NULL,NULL,NULL,'Steps','Space Draft','Basic',NULL,13,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (28,11,'2012-09-11 17:12:55',NULL,'CustomerLocationDetails Draft','2012-09-18 15:41:01',NULL,NULL,NULL,'Steps','CustomerLocationDetails Draft','Basic',NULL,20,'def myValidator = { o -> \r\n  def rtrnValidator = [:]  \r\n  if(o.description == \'\' || o.description == null) { \r\n  	rtrnValidator.put \'description\', \'description must be filled in\' \r\n  } \r\n  \r\n  if(o.name == \'\' || o.name == null) { \r\n  	rtrnValidator.put \'name\', \'name must be filled in\' \r\n  } \r\n  \r\n  \r\n    return rtrnValidator \r\n  } ',NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (32,40,'2012-09-18 12:05:19',NULL,'New','2013-08-06 13:07:31',NULL,NULL,NULL,'Draft','Draft','Basic',NULL,24,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (34,8,'2012-09-18 15:56:26',NULL,'Create','2012-11-07 17:30:45',NULL,NULL,NULL,'Steps','Create','Basic',NULL,26,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (35,6,'2012-09-25 13:50:10',NULL,'Tenant Draft','2013-12-09 17:07:38',NULL,NULL,NULL,'Steps','Tenant Draft','Basic',NULL,27,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (36,14,'2012-09-25 13:50:17',NULL,'TenantLocation Draft','2013-11-15 08:27:15',NULL,NULL,NULL,'Steps','TenantLocation Draft','Basic',NULL,28,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (38,1,'2012-10-17 09:29:32',NULL,'FloorType Draft','2012-10-22 12:47:46',NULL,NULL,NULL,'Steps','FloorType Draft','Basic',NULL,29,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (39,1,'2012-10-17 10:11:01',NULL,'CleaningService Draft','2012-10-17 14:01:26',NULL,NULL,NULL,'Steps','CleaningService Draft','Basic',NULL,30,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (41,1,'2012-10-17 11:06:01',NULL,'CleaningSpecialService Draft','2012-10-17 14:14:10',NULL,NULL,NULL,'Steps','CleaningSpecialService Draft','Basic',NULL,32,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (42,72,'2012-10-17 11:40:53',NULL,'New','2014-03-26 10:05:30',NULL,NULL,NULL,'New','New','Basic',NULL,33,NULL,NULL,'\0','edit','24.8125','30.0625',NULL);
INSERT INTO `step_definition` VALUES (43,3,'2012-10-17 12:20:50',NULL,'ServiceFrequency Draft','2012-10-17 14:00:51',NULL,NULL,NULL,'Steps','ServiceFrequency Draft','Basic',NULL,34,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (44,5,'2012-10-17 13:05:50',NULL,'CleaningRate Draft','2012-10-24 12:00:39',NULL,NULL,NULL,'Steps','CleaningRate Draft','Basic',NULL,35,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (45,76,'2012-10-17 15:24:52',NULL,'Survey','2014-05-01 15:51:45',NULL,NULL,NULL,'Survey','Survey','Basic','1',36,NULL,'showPricing','\0','show','7.8125','119.0625',NULL);
INSERT INTO `step_definition` VALUES (46,1,'2012-10-17 17:40:49',NULL,'ServiceType Draft','2012-10-17 18:15:30',NULL,NULL,NULL,'Steps','ServiceType Draft','Basic',NULL,37,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (47,10,'2012-10-18 11:33:18',NULL,'Draft','2014-05-14 15:29:34',NULL,NULL,NULL,'Steps','Draft','Basic',NULL,39,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (49,2,'2012-10-18 11:55:17',NULL,'Lead is loaded or entered manually into the system','2012-10-31 09:11:50',NULL,NULL,NULL,'Lead','Lead','Basic',NULL,38,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (50,1,'2012-10-18 12:23:42',NULL,'TM/SP sets the appointment','2012-10-18 12:29:06',NULL,NULL,NULL,'Lead','Appointment','Basic',NULL,38,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (51,1,'2012-10-18 12:24:24',NULL,'Appointment complete, not proposed','2012-10-18 12:29:51',NULL,NULL,NULL,'Lead','Prospect','Basic',NULL,38,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (52,1,'2012-10-18 12:25:11',NULL,'Proposal has been printed and sent to the prospect','2012-10-18 12:27:34',NULL,NULL,NULL,'Lead','Proposal','Basic',NULL,38,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (53,1,'2012-10-18 12:26:15',NULL,'Proposal signed and ready for customer activation','2012-10-18 12:29:30',NULL,NULL,NULL,'Lead','Closed','Basic',NULL,38,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (54,0,'2012-10-18 12:26:45',NULL,'Customer service has started and customer is active','2012-10-18 12:26:45',NULL,NULL,NULL,'Customer','Active','Basic',NULL,38,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (55,0,'2012-10-18 12:30:17',NULL,'Customer is terminated','2012-10-18 12:30:17',NULL,NULL,NULL,'Customer','Terminated','Basic',NULL,38,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (56,2,'2012-10-19 10:23:13',NULL,'LocationTemplateArea Draft','2012-10-30 16:30:21',NULL,NULL,NULL,'Steps','LocationTemplateArea Draft','Basic',NULL,41,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (57,19,'2012-10-19 13:49:10',NULL,'Create','2012-10-30 12:25:29',NULL,NULL,NULL,'Steps','Create','Basic',NULL,42,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (58,30,'2012-10-23 11:16:04',NULL,NULL,'2014-03-24 12:22:49',NULL,NULL,NULL,'Proposed','Proposed','Basic','0',36,NULL,'showProposal','\0','show','429.8125','187.0625',NULL);
INSERT INTO `step_definition` VALUES (59,15,'2012-11-05 15:50:47',NULL,'Activation','2014-04-28 16:52:57',NULL,NULL,NULL,'Activation','Activation','Basic',NULL,43,NULL,NULL,'\0','show','56.8125','85.0625',NULL);
INSERT INTO `step_definition` VALUES (61,10,'2012-11-05 15:54:51',NULL,'Active','2014-03-26 17:06:19',NULL,NULL,NULL,'Active','Active','Basic',NULL,43,NULL,NULL,'\0','edit','245.8125','143.0625',NULL);
INSERT INTO `step_definition` VALUES (62,28,'2012-11-05 17:37:54',NULL,NULL,'2014-03-24 12:22:54',NULL,NULL,NULL,'Won','Won','Basic','0',36,NULL,NULL,'\0','edit','603.8125','112.0625',NULL);
INSERT INTO `step_definition` VALUES (63,20,'2012-11-05 17:38:07',NULL,NULL,'2014-03-24 12:22:49',NULL,NULL,NULL,'Lost','Lost','Basic','0',36,NULL,NULL,'\0','show','484.8125','8.0625',NULL);
INSERT INTO `step_definition` VALUES (64,0,'2012-11-07 11:33:46',NULL,NULL,'2012-11-07 11:33:46',NULL,NULL,NULL,'Steps','Archive','Wait External',NULL,8,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (66,9,'2012-11-07 12:28:18',NULL,'Suspended','2014-03-26 17:06:19',NULL,NULL,NULL,'Suspended','Suspended','Basic',NULL,43,NULL,NULL,'\0','edit','418.8125','22.0625',NULL);
INSERT INTO `step_definition` VALUES (67,50,'2012-11-07 13:06:12',NULL,NULL,'2013-11-25 13:37:04',NULL,NULL,NULL,'Active','Active','Basic',NULL,24,NULL,NULL,'\0','show',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (68,17,'2012-11-07 13:07:00',NULL,NULL,'2013-08-06 13:08:03',NULL,NULL,NULL,'Prospect','Prospect','Basic',NULL,24,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (69,14,'2012-11-07 13:07:37',NULL,NULL,'2013-08-06 13:07:54',NULL,NULL,NULL,'Lost','Lost','Basic',NULL,24,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (72,8,'2012-11-15 13:28:21',NULL,'Terminated','2014-03-26 17:06:19',NULL,NULL,NULL,'Terminated','Terminated','Basic',NULL,43,NULL,NULL,'\0','edit','491.8125','213.0625',NULL);
INSERT INTO `step_definition` VALUES (74,21,'2012-11-19 12:21:03',NULL,'RoomType Draft','2012-12-04 11:10:37',NULL,NULL,NULL,'Steps','RoomType Draft','Basic',NULL,45,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (76,3,'2012-11-19 12:21:35',NULL,'LocationTemplateRoom Draft','2012-12-05 17:07:03',NULL,NULL,NULL,'Steps','LocationTemplateRoom Draft','Basic',NULL,47,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (77,7,'2012-11-20 14:02:00',NULL,'Create','2012-11-29 09:27:40',NULL,NULL,NULL,'Create','Create','Basic',NULL,48,NULL,NULL,'\0','show',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (79,16,'2012-12-10 16:43:29',NULL,'Revise proposal','2014-03-24 12:22:49',NULL,NULL,NULL,'Archive','Archive','Basic','0',36,NULL,'showProposal','\0','edit','266.8125','10.0625',NULL);
INSERT INTO `step_definition` VALUES (81,0,'2013-03-20 09:36:12',NULL,'SubRegion Draft','2013-03-20 09:36:12',NULL,NULL,NULL,'Steps','SubRegion Draft','Basic',NULL,50,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (82,0,'2013-03-20 09:52:00',NULL,'Region Draft','2013-03-20 09:52:00',NULL,NULL,NULL,'Steps','Region Draft','Basic',NULL,51,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (83,6,'2013-04-15 11:06:17',NULL,'Unknown','2014-03-24 11:57:35',NULL,NULL,NULL,'Unknown','Unknown','Basic',NULL,52,NULL,NULL,'\0','edit','21.8125','113.0625',NULL);
INSERT INTO `step_definition` VALUES (84,29,'2013-04-26 13:45:35',NULL,'Campaign Draft','2014-02-04 13:10:19',NULL,NULL,NULL,'Draft','Draft','Basic',NULL,53,NULL,'campaignInfo','\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (85,3,'2013-05-09 09:23:00',NULL,'SalesProfile Draft','2013-05-09 10:08:39',NULL,NULL,NULL,'Steps','SalesProfile Draft','Basic',NULL,54,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (86,91,'2013-06-11 12:49:42',NULL,'Leads','2013-10-30 10:34:03',NULL,NULL,NULL,'Steps','Leads','Basic',NULL,55,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (89,37,'2013-06-25 14:56:41',NULL,'Prospect - Proposal','2014-03-24 15:12:54',NULL,NULL,NULL,'Working','Opportunity','Basic',NULL,59,NULL,'customview','\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (90,8,'2013-06-25 15:45:07',NULL,'CustomerLocation Draft','2014-03-24 15:12:55',NULL,NULL,NULL,'Steps','Accounting Draft','Basic',NULL,60,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (91,8,'2013-06-26 11:59:27',NULL,NULL,'2013-08-06 13:07:43',NULL,NULL,NULL,'Internet Inquiries','Internet Inquiries','Basic',NULL,24,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (92,8,'2013-06-26 11:59:47',NULL,NULL,'2013-08-06 13:07:19',NULL,NULL,NULL,'Candidate','Candidate','Basic',NULL,24,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (93,17,'2013-06-26 12:00:09',NULL,NULL,'2013-08-06 13:08:13',NULL,NULL,NULL,'Terminated','Terminated','Basic',NULL,24,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (94,36,'2013-06-26 13:43:09',NULL,NULL,'2014-03-26 10:05:30',NULL,NULL,NULL,'Unavailable','Unavailable','Basic',NULL,33,NULL,NULL,'\0','edit','362.8125','12.0625',NULL);
INSERT INTO `step_definition` VALUES (95,61,'2013-06-26 13:43:20',NULL,'Available','2014-03-26 10:05:30',NULL,NULL,NULL,'Available','Available','Basic',NULL,33,NULL,NULL,'\0','edit','123.8125','151.0625',NULL);
INSERT INTO `step_definition` VALUES (96,36,'2013-06-26 13:43:30',NULL,NULL,'2014-03-26 10:05:30',NULL,NULL,NULL,'Holding','Holding','Basic',NULL,33,NULL,NULL,'\0','edit','291.8125','223.0625',NULL);
INSERT INTO `step_definition` VALUES (97,36,'2013-06-26 13:43:43',NULL,NULL,'2014-03-26 17:13:42',NULL,NULL,NULL,'Active','Active','Basic',NULL,33,NULL,NULL,'\0','edit','558.8125','72.0625',NULL);
INSERT INTO `step_definition` VALUES (98,8,'2013-07-01 19:26:20',NULL,'CustomerLocation Draft','2014-03-24 15:12:57',NULL,NULL,NULL,'Steps','Ops Draft','Basic',NULL,61,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (99,12,'2013-07-30 15:56:50',NULL,'Proposals','2014-03-24 15:12:51',NULL,NULL,NULL,'Working','Lost','Basic',NULL,59,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (100,13,'2013-07-30 15:57:30',NULL,'Prospect - Draft','2014-03-24 15:12:52',NULL,NULL,NULL,'Working','Appointment','Basic',NULL,59,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (101,11,'2013-07-30 15:57:51',NULL,'Prospect','2014-03-24 15:12:53',NULL,NULL,NULL,'Working','Prospect','Basic',NULL,59,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (102,11,'2013-07-30 15:58:03',NULL,'Appointments','2014-03-24 15:12:50',NULL,NULL,NULL,'Working','Proposal','Basic',NULL,59,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (103,5,'2013-08-14 14:14:09',NULL,'Active','2014-04-08 17:54:15',NULL,NULL,NULL,'Active','Active','Basic',NULL,53,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (104,1,'2013-08-14 14:14:22',NULL,'Completed','2013-11-13 17:31:53',NULL,NULL,NULL,'Completed','Completed','Basic',NULL,53,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (105,0,'2013-10-31 08:59:15',NULL,'MsgBusLog Draft','2013-10-31 08:59:15',NULL,NULL,NULL,'Steps','MsgBusLog Draft','Basic',NULL,62,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (106,4,'2013-11-25 09:55:28',NULL,'ComplianceDefinition Draft','2013-11-25 11:03:17',NULL,NULL,NULL,'Steps','ComplianceDefinition Draft','Basic',NULL,63,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (107,0,'2013-11-25 12:07:07',NULL,'VendorCompliance Draft','2013-11-25 12:07:07',NULL,NULL,NULL,'Steps','Incomplete','Basic',NULL,64,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (108,0,'2013-12-02 11:05:27',NULL,'Pending Approval','2013-12-02 11:05:27',NULL,NULL,NULL,'Steps','Pending','Basic',NULL,64,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (109,0,'2013-12-02 11:06:41',NULL,'Approved, pending effective date','2013-12-02 11:06:41',NULL,NULL,NULL,'Steps','Approved','Basic',NULL,64,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (110,0,'2013-12-02 11:07:09',NULL,'Active','2013-12-02 11:07:09',NULL,NULL,NULL,'Steps','Active','Basic',NULL,64,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (111,0,'2013-12-02 11:07:55',NULL,'Closed','2013-12-02 11:07:55',NULL,NULL,NULL,'Steps','Closed','Basic',NULL,64,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (112,4,'2013-12-09 12:24:43',NULL,'ScheduleJobAction Draft','2013-12-19 10:54:20',NULL,NULL,NULL,'Steps','Draft','Basic',NULL,65,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (113,20,'2013-12-09 15:01:09',NULL,'job is published to scheduler','2013-12-19 10:54:54',NULL,NULL,NULL,'Steps','Published','Basic',NULL,65,NULL,NULL,'\0','show',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (114,12,'2013-12-09 16:37:04',NULL,'remove job/trigger from scheduler','2013-12-19 10:54:45',NULL,NULL,NULL,'Steps','Unscheduled','Basic',NULL,65,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (115,0,'2013-12-12 08:44:12',NULL,NULL,'2013-12-12 08:44:12',NULL,NULL,NULL,'Steps','Active','Basic',NULL,63,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (116,3,'2013-12-12 09:18:09',NULL,NULL,'2013-12-12 12:06:06',NULL,NULL,NULL,'Steps','Active','Basic',NULL,45,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (117,4,'2014-03-20 14:47:46',NULL,'AreaCategory Draft','2014-03-20 17:01:07',NULL,NULL,NULL,'Steps','AreaCategories Draft','Basic',NULL,66,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (118,20,'2014-03-21 17:10:51',NULL,'Working','2014-03-26 10:05:30',NULL,NULL,NULL,'Working','Working','Basic',NULL,33,NULL,NULL,'\0',NULL,'384.8125','134.0625',NULL);
INSERT INTO `step_definition` VALUES (119,5,'2014-03-24 11:47:32',NULL,'Unqualified','2014-03-24 11:57:35',NULL,NULL,NULL,'Unqualified','Unqualified','Basic',NULL,52,NULL,NULL,'\0',NULL,'197.8125','208.0625',NULL);
INSERT INTO `step_definition` VALUES (120,4,'2014-03-24 11:47:57',NULL,'Qualified','2014-03-24 11:57:35',NULL,NULL,NULL,'Qualified','Qualified','Basic',NULL,52,NULL,NULL,'\0',NULL,'359.8125','149.0625',NULL);
INSERT INTO `step_definition` VALUES (121,3,'2014-03-24 11:48:38',NULL,'Lost','2014-03-24 11:57:35',NULL,NULL,NULL,'Lost','Lost','Basic',NULL,52,NULL,NULL,'\0',NULL,'196.8125','19.0625',NULL);
INSERT INTO `step_definition` VALUES (122,3,'2014-03-24 11:49:09',NULL,'Active','2014-03-24 11:57:35',NULL,NULL,NULL,'Active','Active','Basic',NULL,52,NULL,NULL,'\0',NULL,'530.8125','103.0625',NULL);
INSERT INTO `step_definition` VALUES (123,2,'2014-03-24 11:49:47',NULL,'Terminated','2014-03-24 11:57:35',NULL,NULL,NULL,'Terminated','Terminated','Basic',NULL,52,NULL,NULL,'\0',NULL,'681.8125','155.0625',NULL);
INSERT INTO `step_definition` VALUES (124,12,'2014-03-24 12:11:22',NULL,'Draft','2014-03-26 14:10:49',NULL,NULL,NULL,'Draft','Draft','Basic','1',36,NULL,NULL,'\0','edit','165.8125','182.0625',NULL);
INSERT INTO `step_definition` VALUES (125,8,'2014-03-25 14:37:49',NULL,'SpecialServiceTemplate Draft','2014-04-09 09:05:24',NULL,NULL,NULL,'Steps','SpecialServiceTemplate Draft','Basic',NULL,67,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (127,0,'2014-04-22 12:54:50',NULL,'Archive','2014-04-22 12:54:50',NULL,NULL,NULL,'Archive','Archive','Basic',NULL,67,NULL,NULL,'\0','edit','282.8125','14.0625',NULL);
INSERT INTO `step_definition` VALUES (129,0,'2014-04-22 12:54:50',NULL,'Active','2014-04-22 12:54:50',NULL,NULL,NULL,'Active','Active','Basic',NULL,67,NULL,NULL,'\0','edit','143.8125','100.0625',NULL);
INSERT INTO `step_definition` VALUES (131,0,'2014-04-22 12:54:51',NULL,'SpecialServiceTemplate Draft','2014-04-22 12:54:51',NULL,NULL,NULL,'Steps','Draft','Basic',NULL,67,NULL,NULL,'\0','edit','8.8125','10.0625',NULL);
INSERT INTO `step_definition` VALUES (132,0,'2014-07-14 15:11:58',NULL,NULL,'2014-07-14 15:11:58',NULL,NULL,NULL,'Import','Import','Basic','1',36,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (133,0,'2014-08-14 14:40:10',NULL,'The ServiceContract has been terminated.','2014-08-14 14:40:10',NULL,NULL,NULL,'Terminated','Terminated','Basic',NULL,69,NULL,NULL,'\0','edit','178.8125','236.0625',NULL);
INSERT INTO `step_definition` VALUES (135,0,'2014-08-14 14:40:10',NULL,'The ServiceContract has no active ServiceDeliveryProfiles and is put on hold.','2014-08-14 14:40:10',NULL,NULL,NULL,'Suspended','Suspended','Basic',NULL,69,NULL,NULL,'\0','edit','403.8125','231.0625',NULL);
INSERT INTO `step_definition` VALUES (137,0,'2014-08-14 14:40:11',NULL,'Invalid ServiceContract.','2014-08-14 14:40:11',NULL,NULL,NULL,'Invalid','Invalid','Basic',NULL,69,NULL,NULL,'\0',NULL,'3.8125','238.0625',NULL);
INSERT INTO `step_definition` VALUES (139,0,'2014-08-14 14:40:11',NULL,'The Proposal was just won - but we still need a vendor to do the work.','2014-08-14 14:40:11',NULL,NULL,NULL,'Activation','Activation','Basic',NULL,69,'\ndef myValidator = { o -> \n  \n \n \n  \n  def rtrnValidator = [:]  \n\n  \n \n	def vMap = o.getValidationMap()\n	  if(vMap.size() > 0 ) {\n		  vMap.each {\n		     rtrnValidator << it\n		  }\n		\n	  }\n  \n  \n  \n    return rtrnValidator \n  } ',NULL,'\0','edit','50.8125','92.0625','def myConfirminator = { o ->   \n  def rtrnConfirminator = [:]  \n	def cMap = o.getActivationConfirmationMap()\n	  if(cMap.size() > 0 ) {\n		  cMap.each {\n		     rtrnConfirminator << it\n		  }		\n	  } \n    return rtrnConfirminator \n  } \n');
INSERT INTO `step_definition` VALUES (141,0,'2014-08-14 14:40:11',NULL,'Contract has ended due to modification.','2014-08-14 14:40:11',NULL,NULL,NULL,'Modified','Modified','Basic',NULL,69,NULL,NULL,'\0',NULL,'403.8125','9.0625',NULL);
INSERT INTO `step_definition` VALUES (143,1,'2014-08-14 14:40:11',NULL,'The ServiceContract is now tied to a valid ServiceDeliveryProfile.','2014-10-07 13:53:29',NULL,NULL,NULL,'Active','Active','Basic',NULL,69,NULL,NULL,'\0','edit','178.8125','14.0625',NULL);
INSERT INTO `step_definition` VALUES (145,0,'2014-08-14 14:40:27',NULL,'ServiceDeliveryProfile is standing by to be activated.','2014-08-14 14:40:27',NULL,NULL,NULL,'Activation','Activation','Basic',NULL,71,NULL,NULL,'\0',NULL,'7.8125','10.0625',NULL);
INSERT INTO `step_definition` VALUES (147,0,'2014-08-14 14:40:27',NULL,'The ServiceDeliveryProfile is currently on hold.','2014-08-14 14:40:27',NULL,NULL,NULL,'Suspended','Suspended','Basic',NULL,71,NULL,NULL,'\0','edit','552.8125','13.0625',NULL);
INSERT INTO `step_definition` VALUES (149,0,'2014-08-14 14:40:27',NULL,'ServiceDeliveryProfile Draft','2014-08-14 14:40:27',NULL,NULL,NULL,'Active','Active','Basic',NULL,71,NULL,NULL,'\0','edit','272.8125','8.0625',NULL);
INSERT INTO `step_definition` VALUES (151,0,'2014-08-14 14:40:28',NULL,'Invalid ServiceDeliveryProfile','2014-08-14 14:40:28',NULL,NULL,NULL,'Invalid','Invaid','Basic',NULL,71,NULL,NULL,'\0',NULL,'9.8125','191.0625',NULL);
INSERT INTO `step_definition` VALUES (153,0,'2014-08-14 14:40:28',NULL,'The ServiceDeliveryProfile has been terminated.','2014-08-14 14:40:28',NULL,NULL,NULL,'Terminated','Terminated','Basic',NULL,71,NULL,NULL,'\0','edit','275.8125','197.0625',NULL);
INSERT INTO `step_definition` VALUES (155,0,'2014-08-14 14:40:40',NULL,'This ServiceDeliveryProfileDetali (job) was rejected by the Customer.','2014-08-14 14:40:40',NULL,NULL,NULL,'Rejected','Rejected','Basic',NULL,73,NULL,NULL,'\0',NULL,'582.8125','223.0625',NULL);
INSERT INTO `step_definition` VALUES (157,0,'2014-08-14 14:40:40',NULL,'This ServiceDeliveryProfileDetail (job) has been successfully completed and is authorized for payment.','2014-08-14 14:40:40',NULL,NULL,NULL,'Complete','Complete','Basic',NULL,73,NULL,NULL,'\0',NULL,'779.8125','20.0625',NULL);
INSERT INTO `step_definition` VALUES (159,0,'2014-08-14 14:40:40',NULL,'This ServiceDeliveryProfileDetail (job) has been unsuccessfully completed and will not be authorized for payment.','2014-08-14 14:40:40',NULL,NULL,NULL,'Incomplete','Incomplete','Basic',NULL,73,NULL,NULL,'\0',NULL,'774.8125','217.0625',NULL);
INSERT INTO `step_definition` VALUES (161,0,'2014-08-14 14:40:41',NULL,'This ServiceDeliveryProfileDetail (job) should currently be In Progress.','2014-08-14 14:40:41',NULL,NULL,NULL,'In Progress','In Progress','Basic',NULL,73,NULL,NULL,'\0','edit','191.8125','11.0625',NULL);
INSERT INTO `step_definition` VALUES (163,0,'2014-08-14 14:40:41',NULL,'This ServiceDeliveryProfileDetail (job) has been marked as complete by the Vendor and is awaiting approval by the Customer (or X days pass, where the job is then automatically approved)','2014-08-14 14:40:41',NULL,NULL,NULL,'Awaiting Approval','Awaiting Approval','Basic',NULL,73,NULL,NULL,'\0',NULL,'376.8125','101.0625',NULL);
INSERT INTO `step_definition` VALUES (165,0,'2014-08-14 14:40:41',NULL,'ServiceDeliveryProfileDetail Draft','2014-08-14 14:40:41',NULL,NULL,NULL,'Scheduled','Scheduled','Basic',NULL,73,NULL,NULL,'\0','edit','8.8125','10.0625',NULL);
INSERT INTO `step_definition` VALUES (167,0,'2014-08-14 14:40:41',NULL,'This ServiceDeliveryProfileDetail (job) has been approved by the Customer (or automatically approved by the system after X days have passed.)','2014-08-14 14:40:41',NULL,NULL,NULL,'Approved','Approved','Basic',NULL,73,NULL,NULL,'\0',NULL,'580.8125','23.0625',NULL);
INSERT INTO `step_definition` VALUES (169,0,'2014-08-14 14:40:41',NULL,'This ServiceDeliveryProfileDetail (job) has been canceled.','2014-08-14 14:40:41',NULL,NULL,NULL,'Canceled','Canceled','Basic',NULL,73,NULL,NULL,'\0',NULL,'95.8125','188.0625',NULL);
INSERT INTO `step_definition` VALUES (171,0,'2014-08-29 14:08:16',NULL,'MasterInvoice Active','2014-08-29 14:08:16',NULL,NULL,NULL,'Steps','Active','Basic',NULL,75,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (172,0,'2014-09-26 13:37:27',NULL,'MasterAgreement Active','2014-09-26 13:37:27',NULL,NULL,NULL,'Steps','Active','Basic',NULL,76,NULL,NULL,'\0','edit',NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (173,0,'2014-09-26 13:37:39',NULL,'OperationsBatch Draft','2014-09-26 13:37:39',NULL,NULL,NULL,'Steps','OperationsBatch Draft','Basic',NULL,77,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (174,0,'2014-10-02 20:45:10',NULL,'CustomerReceipt Draft','2014-10-02 20:45:10',NULL,NULL,NULL,'Steps','CustomerReceipt Draft','Basic',NULL,78,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
INSERT INTO `step_definition` VALUES (175,0,'2014-10-22 19:42:03',NULL,'VendorBillLineItem Draft','2014-10-22 19:42:03',NULL,NULL,NULL,'Steps','VendorBillLineItem Draft','Basic',NULL,79,NULL,NULL,'\0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `step_definition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


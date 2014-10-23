
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
DROP TABLE IF EXISTS `transition_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transition_definition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `allow_access` varchar(255) DEFAULT NULL,
  `auto_trigger` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `interim_screen` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `transition_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `validation` varchar(500) DEFAULT NULL,
  `work_flow_id` bigint(20) NOT NULL,
  `domain_action_id` bigint(20) DEFAULT NULL,
  `from_step_id` bigint(20) DEFAULT NULL,
  `to_step_id` bigint(20) DEFAULT NULL,
  `to_workflow_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK19B1E67D3D16AA0C` (`work_flow_id`),
  KEY `FK19B1E67D93736FF` (`domain_action_id`),
  KEY `FK19B1E67DBDE2FBF8` (`from_step_id`),
  KEY `FK19B1E67DAA496` (`to_workflow_id`),
  KEY `FK19B1E67D4D3B91C9` (`to_step_id`),
  CONSTRAINT `FK19B1E67D3EAC915D` FOREIGN KEY (`work_flow_id`) REFERENCES `work_flow` (`id`),
  CONSTRAINT `FK19B1E67D4D3B91C9` FOREIGN KEY (`to_step_id`) REFERENCES `step_definition` (`id`),
  CONSTRAINT `FK19B1E67D93736FF` FOREIGN KEY (`domain_action_id`) REFERENCES `domain_action` (`id`),
  CONSTRAINT `FK19B1E67DAA496` FOREIGN KEY (`to_workflow_id`) REFERENCES `work_flow` (`id`),
  CONSTRAINT `FK19B1E67DBDE2FBF8` FOREIGN KEY (`from_step_id`) REFERENCES `step_definition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `transition_definition` WRITE;
/*!40000 ALTER TABLE `transition_definition` DISABLE KEYS */;
INSERT INTO `transition_definition` VALUES (1,10,NULL,'na','2012-02-17 12:05:52','test','na','2012-11-30 10:38:10','test','Manual','def mycode = { thing, val ->\r\n  // this is my code\r\n  def rtrnMap = [:]\r\n  if(thing.abbreviation == \"\" || thing.abbreviation == null) {\r\n     rtrnMap.pass = false\r\n     rtrnMap.msg = \"Abreviation must be filled out !!\"\r\n     return rtrnMap;\r\n  } else {\r\n  	 rtrnMap.pass = true\r\n     rtrnMap.msg = \"OK\"\r\n     return rtrnMap;\r\n  }\r\n\r\n}',1,26,1,2,NULL);
INSERT INTO `transition_definition` VALUES (2,2,NULL,'na','2012-02-17 12:08:03','Another','na','2012-05-02 15:57:17','Another','Manual','def mycode = { thing, val ->\r\n  // this is my code\r\n  def rtrnMap = [:]\r\n  if(thing.abbreviation == \"\" || thing.abbreviation == null) {\r\n     rtrnMap.pass = false\r\n     rtrnMap.msg = \"Abreviation must be filled out !!\"\r\n     return rtrnMap;\r\n  } else {\r\n  	 rtrnMap.pass = true\r\n     rtrnMap.msg = \"OK\"\r\n     return rtrnMap;\r\n  }\r\n\r\n}',1,NULL,2,3,NULL);
INSERT INTO `transition_definition` VALUES (3,1,NULL,'na','2012-02-19 14:22:07','Review_Install','na','2012-05-02 15:57:36','Review_Install','Manual','def mycode = { thing, val ->\r\n  // this is my code\r\n  def rtrnMap = [:]\r\n  if(thing.abbreviation == \"\" || thing.abbreviation == null) {\r\n     rtrnMap.pass = false\r\n     rtrnMap.msg = \"Abreviation must be filled out !!\"\r\n     return rtrnMap;\r\n  } else {\r\n  	 rtrnMap.pass = true\r\n     rtrnMap.msg = \"OK\"\r\n     return rtrnMap;\r\n  }\r\n\r\n}',1,NULL,3,4,NULL);
INSERT INTO `transition_definition` VALUES (5,1,NULL,'na','2012-02-21 08:00:31','install_last','na','2012-05-02 15:57:24','install_last','Manual','def mycode = { thing, val ->\r\n  // this is my code\r\n  def rtrnMap = [:]\r\n  if(thing.abbreviation == \"\" || thing.abbreviation == null) {\r\n     rtrnMap.pass = false\r\n     rtrnMap.msg = \"Abreviation must be filled out !!\"\r\n     return rtrnMap;\r\n  } else {\r\n  	 rtrnMap.pass = true\r\n     rtrnMap.msg = \"OK\"\r\n     return rtrnMap;\r\n  }\r\n\r\n}',1,NULL,4,5,NULL);
INSERT INTO `transition_definition` VALUES (6,5,NULL,NULL,'2012-03-02 09:09:36','Last to End',NULL,'2012-05-02 15:37:59','End','Manual','def mycode = { thing, val ->\r\n  // this is my code\r\n  def rtrnMap = [:]\r\n  if(thing.abbreviation == \"\" || thing.abbreviation == null) {\r\n     rtrnMap.pass = false\r\n     rtrnMap.msg = \"Abreviation must be filled out !!\"\r\n     return rtrnMap;\r\n  } else {\r\n  	 rtrnMap.pass = true\r\n     rtrnMap.msg = \"OK\"\r\n     return rtrnMap;\r\n  }\r\n\r\n}',1,NULL,5,6,NULL);
INSERT INTO `transition_definition` VALUES (11,1,'Administrators',NULL,'2012-07-03 11:43:01','From On site to Verify',NULL,'2013-02-07 14:02:21','Completed','Manual',NULL,8,NULL,15,16,NULL);
INSERT INTO `transition_definition` VALUES (13,0,'Sales',NULL,'2012-10-18 12:28:22',NULL,NULL,'2012-10-18 12:28:22','Set Appt','Manual',NULL,38,NULL,49,50,NULL);
INSERT INTO `transition_definition` VALUES (14,0,'Sales',NULL,'2012-10-18 12:33:02',NULL,NULL,'2012-10-18 12:33:02','Appt Complete','Manual',NULL,38,NULL,50,51,NULL);
INSERT INTO `transition_definition` VALUES (15,1,NULL,NULL,'2012-10-18 12:33:24',NULL,NULL,'2012-10-18 12:34:05','Create Proposal','Manual',NULL,38,NULL,51,52,NULL);
INSERT INTO `transition_definition` VALUES (16,0,'Sales',NULL,'2012-10-18 12:33:53',NULL,NULL,'2012-10-18 12:33:53','Signed Proposal','Manual',NULL,38,NULL,52,53,NULL);
INSERT INTO `transition_definition` VALUES (17,0,'Managers',NULL,'2012-10-18 12:35:06',NULL,NULL,'2012-10-18 12:35:06','Start Service','Manual',NULL,38,NULL,53,54,NULL);
INSERT INTO `transition_definition` VALUES (18,0,'Managers',NULL,'2012-10-18 12:35:39',NULL,NULL,'2012-10-18 12:35:39','Termination','Manual',NULL,38,NULL,54,55,NULL);
INSERT INTO `transition_definition` VALUES (21,0,NULL,NULL,'2012-11-07 11:34:14',NULL,NULL,'2012-11-07 11:34:14','Archive',NULL,NULL,8,NULL,16,64,NULL);
INSERT INTO `transition_definition` VALUES (26,1,NULL,NULL,'2012-11-07 13:08:01','Qualify - Prospect',NULL,'2013-06-26 12:02:00','Qualify - Prospect','Manual',NULL,24,NULL,32,68,NULL);
INSERT INTO `transition_definition` VALUES (28,1,NULL,NULL,'2012-11-08 16:25:15','Lost',NULL,'2013-06-26 12:01:33','Lost','Manual',NULL,24,NULL,67,69,NULL);
INSERT INTO `transition_definition` VALUES (32,1,NULL,NULL,'2012-11-15 12:16:43','Activate Vendor',NULL,'2013-06-26 12:01:02','Activate Vendor','Manual',NULL,24,24,92,67,NULL);
INSERT INTO `transition_definition` VALUES (40,0,NULL,NULL,'2013-06-26 12:02:27','Qualify - Internet Inquiries',NULL,'2013-06-26 12:02:27','Qualify - Internet Inquiries','Manual',NULL,24,NULL,32,91,NULL);
INSERT INTO `transition_definition` VALUES (41,0,NULL,NULL,'2013-06-26 12:03:06','Candidate - Prospect',NULL,'2013-06-26 12:03:06','Candidate - Prospect','Manual',NULL,24,NULL,68,67,NULL);
INSERT INTO `transition_definition` VALUES (42,0,NULL,NULL,'2013-06-26 12:03:23','Candidate - Internet Inquiries',NULL,'2013-06-26 12:03:23','Candidate - Internet Inquiries','Manual',NULL,24,NULL,91,92,NULL);
INSERT INTO `transition_definition` VALUES (43,0,NULL,NULL,'2013-06-26 12:03:45','Terminate',NULL,'2013-06-26 12:03:45','Terminate','Manual',NULL,24,NULL,69,93,NULL);
INSERT INTO `transition_definition` VALUES (44,0,NULL,NULL,'2013-06-26 12:39:23','Test',NULL,'2013-06-26 12:39:23','Test','Manual',NULL,24,NULL,69,67,NULL);
INSERT INTO `transition_definition` VALUES (45,2,NULL,NULL,'2013-06-26 13:44:14','New to Available',NULL,'2014-03-26 09:18:25','New_Available','Manual',NULL,33,NULL,42,95,NULL);
INSERT INTO `transition_definition` VALUES (46,1,NULL,NULL,'2013-06-26 13:44:28','Available to Holding',NULL,'2014-03-26 09:20:34','Available_Holding','Manual',NULL,33,NULL,95,96,NULL);
INSERT INTO `transition_definition` VALUES (47,1,NULL,NULL,'2013-06-26 13:44:46','Holding to Available',NULL,'2014-03-26 09:21:34','Holding_Available','Manual',NULL,33,NULL,96,95,NULL);
INSERT INTO `transition_definition` VALUES (48,1,NULL,NULL,'2013-06-26 13:44:59','Available to Unavailable',NULL,'2014-03-26 09:19:50','Available_Unavailable','Manual',NULL,33,NULL,95,94,NULL);
INSERT INTO `transition_definition` VALUES (49,1,NULL,NULL,'2013-06-26 13:45:11','Unavailable to Active',NULL,'2014-03-26 09:22:23','Unavailable_Active','Manual',NULL,33,NULL,94,97,NULL);
INSERT INTO `transition_definition` VALUES (50,1,NULL,NULL,'2013-07-30 16:00:43','Prospects',NULL,'2013-07-30 16:16:16','Prospects','Manual',NULL,59,NULL,89,100,NULL);
INSERT INTO `transition_definition` VALUES (51,0,NULL,NULL,'2013-07-30 16:01:07','Prospect',NULL,'2013-07-30 16:01:07','Prospect','Manual',NULL,59,NULL,100,101,NULL);
INSERT INTO `transition_definition` VALUES (52,1,NULL,NULL,'2013-07-30 16:01:25','Appointments',NULL,'2013-07-30 16:16:07','Appointments','Manual',NULL,59,NULL,101,102,NULL);
INSERT INTO `transition_definition` VALUES (53,1,NULL,NULL,'2013-07-30 16:01:38','Proposals',NULL,'2013-07-30 16:16:12','Proposals','Manual',NULL,59,NULL,102,99,NULL);
INSERT INTO `transition_definition` VALUES (54,1,NULL,NULL,'2013-08-14 14:14:51','Activate',NULL,'2013-10-02 14:04:20','Activate','Manual',NULL,53,30,84,103,NULL);
INSERT INTO `transition_definition` VALUES (55,0,NULL,NULL,'2013-08-14 14:15:10','Complete',NULL,'2013-08-14 14:15:10','Complete','Manual',NULL,53,NULL,103,104,NULL);
INSERT INTO `transition_definition` VALUES (56,3,NULL,NULL,'2013-10-21 11:33:00','Move to Opportunity',NULL,'2013-10-30 10:17:02','Move to Opportunity','Manual',NULL,55,32,86,89,59);
INSERT INTO `transition_definition` VALUES (57,0,NULL,NULL,'2013-10-30 08:54:12','Appointment to Proposal',NULL,'2013-10-30 08:54:12','Appointment_Proposal','Manual',NULL,59,NULL,100,102,NULL);
INSERT INTO `transition_definition` VALUES (58,0,NULL,NULL,'2013-10-30 09:46:25','Move to Appointment',NULL,'2013-10-30 09:46:25','Move to Appointment','Manual',NULL,55,31,86,100,59);
INSERT INTO `transition_definition` VALUES (59,0,NULL,NULL,'2013-12-02 11:08:33','Incomplete To Pending',NULL,'2013-12-02 11:08:33','IncompleteToPending','Manual',NULL,64,NULL,107,108,NULL);
INSERT INTO `transition_definition` VALUES (60,0,NULL,NULL,'2013-12-02 11:09:04','Pending To Approved',NULL,'2013-12-02 11:09:04','PendingToApproved','Manual',NULL,64,NULL,108,109,NULL);
INSERT INTO `transition_definition` VALUES (61,0,NULL,NULL,'2013-12-02 11:09:29','Approved To Active',NULL,'2013-12-02 11:09:29','ApprovedToActive','Manual',NULL,64,NULL,109,110,NULL);
INSERT INTO `transition_definition` VALUES (62,0,NULL,NULL,'2013-12-02 11:09:53','Active To Closed',NULL,'2013-12-02 11:09:53','ActiveToClosed','Manual',NULL,64,NULL,110,111,NULL);
INSERT INTO `transition_definition` VALUES (63,1,NULL,NULL,'2013-12-09 15:04:03','publish a trigger into the scheduler',NULL,'2013-12-09 15:10:12','Publish','Manual',NULL,65,33,112,113,65);
INSERT INTO `transition_definition` VALUES (64,2,NULL,NULL,'2013-12-09 16:22:59','unschedules the target trigger from the jobs',NULL,'2013-12-09 16:37:21','unschedule','Manual',NULL,65,34,113,114,65);
INSERT INTO `transition_definition` VALUES (65,0,NULL,NULL,'2013-12-09 16:46:42','after unschedule to reschedule a job/trigger into scheduler',NULL,'2013-12-09 16:46:42','republish','Manual',NULL,65,33,114,113,65);
INSERT INTO `transition_definition` VALUES (66,0,NULL,NULL,'2013-12-10 13:11:50','death spiril',NULL,'2013-12-10 13:11:50','recursive','Manual',NULL,65,33,113,113,65);
INSERT INTO `transition_definition` VALUES (67,0,NULL,NULL,'2013-12-10 13:21:03','settoPublsihbut do nothing',NULL,'2013-12-10 13:21:03','settoPublished','Manual',NULL,65,NULL,114,113,65);
INSERT INTO `transition_definition` VALUES (68,0,NULL,NULL,'2013-12-10 13:21:44','dummy do nohting but chagne state to unscheduled',NULL,'2013-12-10 13:21:44','setasUnscheduled','Manual',NULL,65,NULL,113,114,65);
INSERT INTO `transition_definition` VALUES (70,0,NULL,NULL,'2013-12-12 08:44:34','Activate',NULL,'2013-12-12 08:44:34','Activate','Manual',NULL,63,39,106,115,63);
INSERT INTO `transition_definition` VALUES (71,0,NULL,NULL,'2013-12-12 09:18:35','Activate',NULL,'2013-12-12 09:18:35','Activate','Manual',NULL,45,NULL,74,116,45);
INSERT INTO `transition_definition` VALUES (72,0,NULL,NULL,'2013-10-30 08:54:12','Back to Lead',NULL,'2013-10-30 08:54:12','Back to Lead','Manual',NULL,59,NULL,100,86,55);
INSERT INTO `transition_definition` VALUES (73,0,NULL,NULL,'2014-03-24 11:14:47','New to Unavaliable',NULL,'2014-03-24 11:14:47','New_Unavaliable','Manual',NULL,33,NULL,42,94,33);
INSERT INTO `transition_definition` VALUES (74,0,NULL,NULL,'2014-03-24 11:15:53','Available to Working',NULL,'2014-03-24 11:15:53','Available_Working','Manual',NULL,33,NULL,95,118,33);
INSERT INTO `transition_definition` VALUES (75,0,NULL,NULL,'2014-03-24 11:16:31','Working to Active',NULL,'2014-03-24 11:16:31','Working_Active','Manual',NULL,33,NULL,118,97,33);
INSERT INTO `transition_definition` VALUES (76,0,NULL,NULL,'2014-03-24 11:53:48','Unknown to Unqualified',NULL,'2014-03-24 11:53:48','Unknown_Unqualified','Manual',NULL,52,NULL,83,119,52);
INSERT INTO `transition_definition` VALUES (77,0,NULL,NULL,'2014-03-24 11:55:20','Unknown to Qualified',NULL,'2014-03-24 11:55:20','Unknown_Qualified','Manual',NULL,52,NULL,83,120,52);
INSERT INTO `transition_definition` VALUES (78,0,NULL,NULL,'2014-03-24 11:56:03','Lost to Qualified',NULL,'2014-03-24 11:56:03','Lost_Qualified','Manual',NULL,52,NULL,121,120,NULL);
INSERT INTO `transition_definition` VALUES (79,0,NULL,NULL,'2014-03-24 11:56:33','Qualified to Active',NULL,'2014-03-24 11:56:33','Qualified_Active','Manual',NULL,52,NULL,120,122,52);
INSERT INTO `transition_definition` VALUES (80,0,NULL,NULL,'2014-03-24 11:57:20','Active to Terminated',NULL,'2014-03-24 11:57:20','Active_Terminated','Manual',NULL,52,NULL,122,123,52);
INSERT INTO `transition_definition` VALUES (81,0,NULL,NULL,'2014-03-24 12:15:38','Survey to Draft',NULL,'2014-03-24 12:15:38','Survey_Draft','Manual',NULL,36,NULL,45,124,NULL);
INSERT INTO `transition_definition` VALUES (82,0,NULL,NULL,'2014-03-24 12:16:29','Draft_Archive',NULL,'2014-03-24 12:16:29','Draft_Archive','Manual',NULL,36,NULL,124,79,NULL);
INSERT INTO `transition_definition` VALUES (83,0,NULL,NULL,'2014-03-24 12:17:11','Draft_Proposed',NULL,'2014-03-24 12:17:11','Draft_Proposed','Manual',NULL,36,NULL,124,58,NULL);
INSERT INTO `transition_definition` VALUES (84,1,NULL,NULL,'2014-03-24 12:17:51','Proposed to Lost',NULL,'2014-03-26 13:17:42','Proposed_Lost','Manual',NULL,36,22,58,63,NULL);
INSERT INTO `transition_definition` VALUES (85,1,NULL,NULL,'2014-03-24 12:18:26','Proposed to Won',NULL,'2014-03-26 14:48:10','Proposed_Won','Manual',NULL,36,21,58,62,NULL);
INSERT INTO `transition_definition` VALUES (86,0,NULL,NULL,'2014-03-24 12:19:27','Proposed to Archive',NULL,'2014-03-24 12:19:27','Proposed_Archive','Manual',NULL,36,NULL,58,79,NULL);
INSERT INTO `transition_definition` VALUES (88,0,NULL,NULL,'2014-03-26 14:29:42',NULL,NULL,'2014-03-26 14:29:42','Lost_Proposed','Manual',NULL,36,NULL,63,58,NULL);
INSERT INTO `transition_definition` VALUES (89,0,NULL,NULL,'2014-03-26 14:48:54','Won to Proposed',NULL,'2014-03-26 14:48:54','Won_Proposed','Manual',NULL,36,NULL,62,58,NULL);
INSERT INTO `transition_definition` VALUES (90,0,NULL,NULL,'2014-03-26 17:04:53','Activation to Active',NULL,'2014-03-26 17:04:53','Activation_Active','Manual',NULL,43,NULL,59,61,NULL);
INSERT INTO `transition_definition` VALUES (91,0,NULL,NULL,'2014-03-26 17:05:21','Active to Suspended',NULL,'2014-03-26 17:05:21','Active_Suspended','Manual',NULL,43,NULL,61,66,NULL);
INSERT INTO `transition_definition` VALUES (92,1,NULL,NULL,'2014-03-26 17:06:10','Active to Terminated',NULL,'2014-03-27 10:43:29','Active_Terminated','Manual',NULL,43,36,61,72,NULL);
INSERT INTO `transition_definition` VALUES (93,0,NULL,NULL,'2014-03-26 17:06:56','Suspened to Active',NULL,'2014-03-26 17:06:56','Suspened_Active','Manual',NULL,43,NULL,66,61,NULL);
INSERT INTO `transition_definition` VALUES (94,0,NULL,NULL,'2014-03-27 11:01:56','Terminated to Active',NULL,'2014-03-27 11:01:56','Terminated_Active','Manual',NULL,43,NULL,72,61,NULL);
INSERT INTO `transition_definition` VALUES (95,0,NULL,NULL,'2014-04-22 12:54:52','Active to Archive',NULL,'2014-04-22 12:54:52','Active to Archive','Manual',NULL,67,NULL,127,NULL,NULL);
INSERT INTO `transition_definition` VALUES (97,0,NULL,NULL,'2014-04-22 12:54:52','Draft to Active',NULL,'2014-04-22 12:54:52','Draft to Active','Manual',NULL,67,37,125,127,NULL);
INSERT INTO `transition_definition` VALUES (99,0,NULL,NULL,'2014-04-22 12:54:52','Archive to Active',NULL,'2014-04-22 12:54:52','Archive to Active','Manual',NULL,67,NULL,NULL,127,NULL);
INSERT INTO `transition_definition` VALUES (151,0,NULL,NULL,'2014-08-15 15:12:35','No active ServiceDeliveryProfiles are tied to the contract - put it on hold.',NULL,'2014-08-15 15:12:35','Suspend Contract','Manual',NULL,69,NULL,139,133,69);
INSERT INTO `transition_definition` VALUES (153,0,NULL,NULL,'2014-08-15 15:12:35','Terminates the Contract.',NULL,'2014-08-15 15:12:35','Terminate Contract','Manual',NULL,69,NULL,143,133,69);
INSERT INTO `transition_definition` VALUES (155,1,NULL,NULL,'2014-08-15 15:12:35','The ServiceContract is activated by adding a live ServiceDeliveryProfile to it.',NULL,'2014-10-13 17:08:07','Activate Contract','Manual',NULL,69,43,139,143,69);
INSERT INTO `transition_definition` VALUES (157,0,NULL,NULL,'2014-08-15 15:12:36','Marks contract as modified, ends the current contract.',NULL,'2014-08-15 15:12:36','Mark as Modified','Manual',NULL,69,NULL,135,141,69);
INSERT INTO `transition_definition` VALUES (159,0,NULL,NULL,'2014-08-15 15:12:36','Marks contract as modified, ends the current contract.',NULL,'2014-08-15 15:12:36','Mark as Modified','Manual',NULL,69,NULL,143,141,69);
INSERT INTO `transition_definition` VALUES (161,0,NULL,NULL,'2014-08-15 15:12:36','Re-activate a ServiceContract in \"Suspended\" status.',NULL,'2014-08-15 15:12:36','Re-activate Contract','Manual',NULL,69,NULL,135,143,69);
INSERT INTO `transition_definition` VALUES (163,0,NULL,NULL,'2014-08-15 15:12:36','Terminate a ServiceContract (Wrong information, can\'t find Vendor to do the work, etc.)',NULL,'2014-08-15 15:12:36','Terminate Contract','Manual',NULL,69,NULL,135,133,69);
INSERT INTO `transition_definition` VALUES (165,0,NULL,NULL,'2014-08-15 15:12:36','Invalidate Contract',NULL,'2014-08-15 15:12:36','Invalidate Contract','Manual',NULL,69,NULL,139,137,69);
INSERT INTO `transition_definition` VALUES (167,0,NULL,NULL,'2014-08-15 15:12:36','Deactivates the ServiceContract (Only for testing)',NULL,'2014-08-15 15:12:36','Deactivate Contract (Test)','Manual',NULL,69,NULL,143,139,69);
/*!40000 ALTER TABLE `transition_definition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


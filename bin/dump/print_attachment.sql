
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
DROP TABLE IF EXISTS `print_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `print_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_entry_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenant_location_id` bigint(20) DEFAULT NULL,
  `wf_status` varchar(255) DEFAULT NULL,
  `work_flow_tracking_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `step_tracking_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1C1F7DF55A83AC16` (`work_flow_tracking_id`),
  KEY `FK1C1F7DF5C6CA088F` (`tenant_location_id`),
  KEY `FK1C1F7DF5A4832E12` (`file_entry_id`),
  KEY `FK1C1F7DF5AF0BA333` (`step_tracking_id`),
  CONSTRAINT `FK1C1F7DF55A83AC16` FOREIGN KEY (`work_flow_tracking_id`) REFERENCES `work_flow_tracking` (`id`),
  CONSTRAINT `FK1C1F7DF5A4832E12` FOREIGN KEY (`file_entry_id`) REFERENCES `file_entry` (`id`),
  CONSTRAINT `FK1C1F7DF5AF0BA333` FOREIGN KEY (`step_tracking_id`) REFERENCES `step_tracking` (`id`),
  CONSTRAINT `FK1C1F7DF5C6CA088F` FOREIGN KEY (`tenant_location_id`) REFERENCES `tenant_location_base` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `print_attachment` WRITE;
/*!40000 ALTER TABLE `print_attachment` DISABLE KEYS */;
INSERT INTO `print_attachment` VALUES (10,1,'This is a special chunk that the customer requests to always be on their corresondance.',78,'CustomerNotes',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (11,1,'Another customer specific document.',79,'CustomerSpecificDocument',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (12,1,'This is a sample to be used on the customer proposal.',80,'SampleCustomerDoc',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (13,1,'Proposal Specific Attachment to be used in the proposal printing.',81,'ProposalAttachment',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (15,1,'123',83,'123',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (16,1,'qweqwew',85,'wqwqeqwe',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (17,1,'This is a special document just for this proposal',86,'SpecialStuff',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (19,2,'Why System4',93,'Why System4',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (21,0,'for testing',NULL,'Propsal Attachment',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (23,1,'test',125,'test',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (25,1,'test',127,'test',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (27,1,'test',129,'test',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (29,1,'test',143,'test',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (31,1,NULL,163,'Porter Work Schedule',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (32,1,'A Sample Document',167,'SampleDoc',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (34,1,'test',169,'test',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (35,1,'Zappos',170,'Zappos',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (36,0,'Blue Ridge PDF',170,'Blue Ridge PDF',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (37,1,'test',171,'test',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (38,0,'werwer',171,'twewe',NULL,NULL,NULL,'DomainInstance',NULL);
INSERT INTO `print_attachment` VALUES (39,1,'AutoDealerBrochure',317,'AutoDealerBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (40,1,'ChurchBrochure',318,'ChurchBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (41,1,'DayCareBrochure',319,'DayCareBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (42,1,'FitnessBrochure',320,'FitnessBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (43,1,'CleaningBrochure',321,'CleaningBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (44,1,'HealthCareBrochure',322,'HealthCareBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (45,1,'MovieTheaterBrochure',323,'MovieTheaterBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (46,1,'MultiTenantBrochure',324,'MultiTenantBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (47,1,'RestarauntBrochure',325,'RestarauntBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (48,1,'RetailBrochure',326,'RetailBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (49,1,'SalonBrochure',327,'SalonBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (50,1,'SchoolBrochure',328,'SchoolBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (51,1,'VeterinaryBrochure',329,'VeterinaryBrochure',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (52,1,'test',371,'test',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (53,2,'My new attachment',435,'NewAttachment',2,NULL,NULL,NULL,NULL);
INSERT INTO `print_attachment` VALUES (55,1,'Yet another new attachment',437,'NewAttachmentAgain',NULL,NULL,NULL,'DomainInstance',NULL);
/*!40000 ALTER TABLE `print_attachment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



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
DROP TABLE IF EXISTS `print_text_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `print_text_definition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `default_text` longtext,
  `domain_meta_data_id` bigint(20) NOT NULL,
  `help_text` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenant_location_id` bigint(20) DEFAULT NULL,
  `wf_status` varchar(255) DEFAULT NULL,
  `work_flow_tracking_id` bigint(20) DEFAULT NULL,
  `step_tracking_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDEE646135A83AC16` (`work_flow_tracking_id`),
  KEY `FKDEE64613C6CA088F` (`tenant_location_id`),
  KEY `FKDEE6461340A25340` (`domain_meta_data_id`),
  KEY `FKDEE64613AF0BA333` (`step_tracking_id`),
  CONSTRAINT `FKDEE6461340A25340` FOREIGN KEY (`domain_meta_data_id`) REFERENCES `domain_meta_data` (`id`),
  CONSTRAINT `FKDEE646135A83AC16` FOREIGN KEY (`work_flow_tracking_id`) REFERENCES `work_flow_tracking` (`id`),
  CONSTRAINT `FKDEE64613AF0BA333` FOREIGN KEY (`step_tracking_id`) REFERENCES `step_tracking` (`id`),
  CONSTRAINT `FKDEE64613C6CA088F` FOREIGN KEY (`tenant_location_id`) REFERENCES `tenant_location_base` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `print_text_definition` WRITE;
/*!40000 ALTER TABLE `print_text_definition` DISABLE KEYS */;
INSERT INTO `print_text_definition` VALUES (6,1,'2013-02-07 13:38:44','Thank you for taking the time to meet with me to discuss your cleaning needs. &nbsp;I have enclosed a&nbsp;<br><div><div>service agreement for your review. &nbsp;Included with the service agreement is a work schedule that&nbsp;</div><div>details the nature and frequency of services that will be performed. &nbsp;When you select System4&nbsp;</div><div>you are partnering with a Franchise 500 award winning company with locations in markets across&nbsp;</div><div>the country. &nbsp;Below are some of the many benefits of using System4.&nbsp;</div></div><div><ul><li>Our local franchise owners have a “vested” interest in your complete satisfaction, as&nbsp;</li><li>it determines their success.&nbsp;</li><li>System4 franchise owners are Certified Custodial Technicians. Certified through&nbsp;</li><li>Cleaning Management Institute’s 15 hour custodial training and independent third-party&nbsp;</li><li>certification program.&nbsp;</li><li>Customer service manager assigned to your account to ensure your satisfaction.&nbsp;</li><li>Customer service program that includes a Communication Log Book, monthly&nbsp;</li><li>inspections and System4’s proprietary e-mail feedback system. &nbsp;</li><li>Text message notification allows franchise owners to be notified instantly of inspection&nbsp;</li><li>results both positive and negative which increases response time to customer needs.&nbsp;</li><li>Green Cleaning Technology utilizing Rubbermaid’s Microfiber Cleaning System.&nbsp;</li><li>Green seal chemical certified through our partnership with 3M the leading chemical&nbsp;</li><li>organization for development of a sustainable future.&nbsp;</li><li>No long-term contract is required. &nbsp;You have the ability to modify services at your&nbsp;</li><li>discretion.&nbsp;</li></ul></div><div><br></div><div>Thank you for your interest in System4. If you have any questions regarding the enclosed proposal you can reach me at the phone number or email address below. We look forward to providing your cleaning solution.</div><b></b>\r\n									\r\n									',105,'Customize as you like','Into Letter Text','2013-02-07 13:39:00','IntroLetter',NULL,NULL,NULL,NULL);
INSERT INTO `print_text_definition` VALUES (7,0,'2013-03-01 09:54:39','<b></b>\r\n									',105,NULL,'Initial Clean','2013-03-01 09:54:39','InitialClean',1,NULL,NULL,NULL);
INSERT INTO `print_text_definition` VALUES (8,0,'2013-07-23 10:34:53','This is the sample text for a customerLocation text chunk<b></b>',82,'LocationText','LocationText','2013-07-23 10:34:53','LocationText',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `print_text_definition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


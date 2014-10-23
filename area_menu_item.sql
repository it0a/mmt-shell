
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
DROP TABLE IF EXISTS `area_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_menu_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `area_meta_data_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `item_controller` varchar(255) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `item_row` int(11) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag_library` varchar(255) DEFAULT NULL,
  `item_action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8B5BE0C1E6E6FE0` (`area_meta_data_id`),
  CONSTRAINT `FK8B5BE0C1E6E6FE0` FOREIGN KEY (`area_meta_data_id`) REFERENCES `area_meta_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `area_menu_item` WRITE;
/*!40000 ALTER TABLE `area_menu_item` DISABLE KEYS */;
INSERT INTO `area_menu_item` VALUES (1,0,'',127,'A Display for Campaign access on the Leads Area Menu','utility',2,1,'Custom','Campaigns',NULL,'campaignViews');
INSERT INTO `area_menu_item` VALUES (2,0,'',127,'Current Views for the Given areaMetaData','utility',1,1,'Custom','Views','AreaMetaDataViews','areaMetaDataViews');
INSERT INTO `area_menu_item` VALUES (3,0,'',123,'Current Views for the Given areaMetaData','utility',2,1,'Custom','Views','AreaMetaDataViews','areaMetaDataViews');
INSERT INTO `area_menu_item` VALUES (4,0,'',123,'Activee Campaign Stats','utility',1,1,'Custom','Active Campaigns',NULL,'activeCampaignStats');
INSERT INTO `area_menu_item` VALUES (23,0,'',151,'Accounting Quick Functions','accounting',2,1,'Custom','Accounting Quick Functions',NULL,'accountingQuickFunctions');
INSERT INTO `area_menu_item` VALUES (25,0,'',151,'First of Month Line Items (pre-bill)','masterInvoice',1,2,'Custom','First of Month Line Items (pre-bill)',NULL,'retrieveAccountingBatchHistory');
INSERT INTO `area_menu_item` VALUES (29,0,'',151,'Accounting Stats','accounting',1,1,'Custom','Accounting Stats','','accountingStats');
INSERT INTO `area_menu_item` VALUES (32,0,'\0',151,'Receipts Summary','accounting',2,2,'Custom','Receipts Summary',NULL,'receiptsSummary');
INSERT INTO `area_menu_item` VALUES (33,0,'\0',151,'SimpleAccounting','accounting',1,3,'Custom','SimpleAccounting',NULL,'simpleAccounting');
/*!40000 ALTER TABLE `area_menu_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


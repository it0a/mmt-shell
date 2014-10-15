
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
DROP TABLE IF EXISTS `print_attachment_domain_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `print_attachment_domain_meta_data` (
  `print_attachment_domain_meta_data_id` bigint(20) DEFAULT NULL,
  `domain_meta_data_id` bigint(20) DEFAULT NULL,
  KEY `FK37A224F340A25340` (`domain_meta_data_id`),
  KEY `FK37A224F3F14FD128` (`print_attachment_domain_meta_data_id`),
  CONSTRAINT `FK37A224F340A25340` FOREIGN KEY (`domain_meta_data_id`) REFERENCES `domain_meta_data` (`id`),
  CONSTRAINT `FK37A224F3F14FD128` FOREIGN KEY (`print_attachment_domain_meta_data_id`) REFERENCES `print_attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `print_attachment_domain_meta_data` WRITE;
/*!40000 ALTER TABLE `print_attachment_domain_meta_data` DISABLE KEYS */;
INSERT INTO `print_attachment_domain_meta_data` VALUES (19,105);
INSERT INTO `print_attachment_domain_meta_data` VALUES (53,82);
/*!40000 ALTER TABLE `print_attachment_domain_meta_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


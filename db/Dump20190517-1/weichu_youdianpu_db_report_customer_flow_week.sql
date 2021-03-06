CREATE DATABASE  IF NOT EXISTS `weichu_youdianpu_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `weichu_youdianpu_db`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: weichu_youdianpu_db
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `report_customer_flow_week`
--

DROP TABLE IF EXISTS `report_customer_flow_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_customer_flow_week` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键(客流量)',
  `merchant_id` int(11) NOT NULL COMMENT '商家ID',
  `customer_flow` int(11) NOT NULL COMMENT '客流量值',
  `data_date` date NOT NULL COMMENT '数据时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录入库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`merchant_id`,`data_date`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='统计客流量周报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_customer_flow_week`
--

LOCK TABLES `report_customer_flow_week` WRITE;
/*!40000 ALTER TABLE `report_customer_flow_week` DISABLE KEYS */;
INSERT INTO `report_customer_flow_week` VALUES (1,1,88,'2018-12-02','2018-12-03 03:00:00'),(2,2,4,'2018-12-02','2018-12-03 03:00:00'),(4,1,77,'2018-12-09','2018-12-10 03:00:00'),(5,1,39,'2018-12-16','2018-12-17 03:00:00'),(6,1,33,'2018-12-23','2018-12-24 03:00:00'),(7,1,16,'2018-12-30','2018-12-31 03:00:00'),(8,1,2,'2019-01-06','2019-01-07 03:00:00'),(9,1,38,'2019-01-13','2019-01-14 03:00:00'),(10,1,38,'2019-01-20','2019-01-21 03:00:00'),(11,1,92,'2019-01-27','2019-01-28 03:00:00'),(12,1,7,'2019-02-03','2019-02-04 03:00:00'),(13,1,3,'2019-02-10','2019-02-11 03:00:00'),(14,1,77,'2019-02-17','2019-02-18 03:00:00'),(15,2,8,'2019-02-17','2019-02-18 03:00:00'),(17,1,24,'2019-02-24','2019-02-25 03:00:00'),(18,1,12,'2019-03-03','2019-03-04 03:00:00'),(19,1,72,'2019-03-10','2019-03-11 03:00:00'),(20,1,86,'2019-03-17','2019-03-18 03:00:00'),(21,2,42,'2019-03-17','2019-03-18 03:00:00'),(23,1,15,'2019-03-24','2019-03-25 03:00:00'),(24,3,1,'2019-03-24','2019-03-25 03:00:00'),(25,5,1,'2019-03-24','2019-03-25 03:00:00'),(26,6,3,'2019-03-24','2019-03-25 03:00:00'),(30,1,1,'2019-04-21','2019-04-22 03:00:00'),(31,1,1,'2019-04-28','2019-04-29 03:00:00'),(32,1,8,'2019-05-05','2019-05-06 03:00:00'),(33,1,2,'2019-05-12','2019-05-13 03:00:00');
/*!40000 ALTER TABLE `report_customer_flow_week` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-18  0:49:25

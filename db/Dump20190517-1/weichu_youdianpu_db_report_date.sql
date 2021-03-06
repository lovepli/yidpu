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
-- Table structure for table `report_date`
--

DROP TABLE IF EXISTS `report_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_date` (
  `date` date NOT NULL COMMENT '当天日期',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报表日期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_date`
--

LOCK TABLES `report_date` WRITE;
/*!40000 ALTER TABLE `report_date` DISABLE KEYS */;
INSERT INTO `report_date` VALUES ('2018-11-23'),('2018-11-24'),('2018-11-25'),('2018-11-26'),('2018-11-27'),('2018-11-28'),('2018-11-29'),('2018-11-30'),('2018-12-01'),('2018-12-02'),('2018-12-03'),('2018-12-04'),('2018-12-05'),('2018-12-06'),('2018-12-07'),('2018-12-08'),('2018-12-09'),('2018-12-10'),('2018-12-11'),('2018-12-12'),('2018-12-13'),('2018-12-14'),('2018-12-15'),('2018-12-16'),('2018-12-17'),('2018-12-18'),('2018-12-19'),('2018-12-20'),('2018-12-21'),('2018-12-22'),('2018-12-23'),('2018-12-24'),('2018-12-25'),('2018-12-26'),('2018-12-27'),('2018-12-28'),('2018-12-29'),('2018-12-30'),('2018-12-31'),('2019-01-01'),('2019-01-02'),('2019-01-03'),('2019-01-04'),('2019-01-05'),('2019-01-06'),('2019-01-07'),('2019-01-08'),('2019-01-09'),('2019-01-10'),('2019-01-11'),('2019-01-12'),('2019-01-13'),('2019-01-14'),('2019-01-15'),('2019-01-16'),('2019-01-17'),('2019-01-18'),('2019-01-19'),('2019-01-20'),('2019-01-21'),('2019-01-22'),('2019-01-23'),('2019-01-24'),('2019-01-25'),('2019-01-26'),('2019-01-27'),('2019-01-28'),('2019-01-29'),('2019-01-30'),('2019-01-31'),('2019-02-01'),('2019-02-02'),('2019-02-03'),('2019-02-04'),('2019-02-05'),('2019-02-06'),('2019-02-07'),('2019-02-08'),('2019-02-09'),('2019-02-10'),('2019-02-11'),('2019-02-12'),('2019-02-13'),('2019-02-14'),('2019-02-15'),('2019-02-16'),('2019-02-17'),('2019-02-18'),('2019-02-19'),('2019-02-20'),('2019-02-21'),('2019-02-22'),('2019-02-23'),('2019-02-24'),('2019-02-25'),('2019-02-26'),('2019-02-27'),('2019-02-28'),('2019-03-01'),('2019-03-02'),('2019-03-03'),('2019-03-04'),('2019-03-05'),('2019-03-06'),('2019-03-07'),('2019-03-08'),('2019-03-09'),('2019-03-10'),('2019-03-11'),('2019-03-12'),('2019-03-13'),('2019-03-14'),('2019-03-15'),('2019-03-16'),('2019-03-17'),('2019-03-18'),('2019-03-19'),('2019-03-20'),('2019-03-21'),('2019-03-22'),('2019-03-23'),('2019-03-24'),('2019-03-25'),('2019-03-26'),('2019-03-27'),('2019-03-28'),('2019-03-29'),('2019-03-30'),('2019-03-31'),('2019-04-01'),('2019-04-02'),('2019-04-03'),('2019-04-04'),('2019-04-05'),('2019-04-06'),('2019-04-07'),('2019-04-08'),('2019-04-09'),('2019-04-10'),('2019-04-11'),('2019-04-12'),('2019-04-13'),('2019-04-14'),('2019-04-15'),('2019-04-16'),('2019-04-17'),('2019-04-18'),('2019-04-19'),('2019-04-20'),('2019-04-21'),('2019-04-22'),('2019-04-23'),('2019-04-24'),('2019-04-25'),('2019-04-26'),('2019-04-27'),('2019-04-28'),('2019-04-29'),('2019-04-30'),('2019-05-01'),('2019-05-02'),('2019-05-03'),('2019-05-04'),('2019-05-05'),('2019-05-06'),('2019-05-07'),('2019-05-08'),('2019-05-09'),('2019-05-10'),('2019-05-11'),('2019-05-12'),('2019-05-13'),('2019-05-14'),('2019-05-15'),('2019-05-16');
/*!40000 ALTER TABLE `report_date` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-18  0:49:14

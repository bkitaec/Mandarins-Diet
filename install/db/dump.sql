-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sails_jwt_template
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1.1

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
-- Table structure for table `attempt`
--

DROP TABLE IF EXISTS `attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attempt` (
  `user` int(11) DEFAULT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempt`
--

LOCK TABLES `attempt` WRITE;
/*!40000 ALTER TABLE `attempt` DISABLE KEYS */;
INSERT INTO `attempt` VALUES (1,1,'127.0.0.1','63402',1,'2014-11-14 23:56:36','2014-11-14 23:56:36'),(1,1,'127.0.0.1','54260',2,'2015-09-13 18:31:03','2015-09-13 18:31:03'),(1,1,'127.0.0.1','54262',3,'2015-09-13 18:31:05','2015-09-13 18:31:05'),(1,1,'127.0.0.1','54758',4,'2015-09-13 20:25:30','2015-09-13 20:25:30'),(1,1,'127.0.0.1','54776',5,'2015-09-13 20:27:42','2015-09-13 20:27:42'),(1,1,'127.0.0.1','54850',6,'2015-09-13 20:34:08','2015-09-13 20:34:08'),(1,1,'127.0.0.1','54864',7,'2015-09-13 20:35:52','2015-09-13 20:35:52'),(1,1,'127.0.0.1','54886',8,'2015-09-13 20:39:07','2015-09-13 20:39:07'),(2,1,'::ffff:127.0.0.1','39778',9,'2016-07-07 09:01:31','2016-07-07 09:01:31'),(2,1,'::ffff:127.0.0.1','37764',10,'2016-07-07 09:03:52','2016-07-07 09:03:52'),(2,1,'::ffff:127.0.0.1','38030',11,'2016-07-07 09:33:06','2016-07-07 09:33:06'),(2,1,'::ffff:127.0.0.1','43846',12,'2016-07-07 09:33:45','2016-07-07 09:33:45'),(2,0,'::ffff:127.0.0.1','37024',13,'2016-07-07 10:17:16','2016-07-07 10:17:16'),(2,0,'::ffff:127.0.0.1','37024',14,'2016-07-07 10:17:25','2016-07-07 10:17:25'),(2,1,'::ffff:127.0.0.1','37024',15,'2016-07-07 10:17:29','2016-07-07 10:17:29'),(2,1,'::ffff:127.0.0.1','41080',16,'2016-07-07 11:12:34','2016-07-07 11:12:34'),(2,1,'::ffff:127.0.0.1','38240',17,'2016-07-08 14:56:29','2016-07-08 14:56:29'),(2,1,'::ffff:127.0.0.1','45544',18,'2016-07-11 15:20:46','2016-07-11 15:20:46'),(2,0,'::ffff:127.0.0.1','48904',19,'2016-07-11 15:43:48','2016-07-11 15:43:48'),(2,1,'::ffff:127.0.0.1','48904',20,'2016-07-11 15:43:53','2016-07-11 15:43:53'),(2,0,'::ffff:127.0.0.1','51620',21,'2016-07-12 10:45:00','2016-07-12 10:45:00'),(2,1,'::ffff:127.0.0.1','51620',22,'2016-07-12 10:45:04','2016-07-12 10:45:04'),(2,0,'::ffff:127.0.0.1','46572',23,'2016-07-12 11:57:12','2016-07-12 11:57:12'),(2,0,'::ffff:127.0.0.1','46790',24,'2016-07-12 12:00:53','2016-07-12 12:00:53'),(2,1,'::ffff:127.0.0.1','37862',25,'2016-07-12 12:03:23','2016-07-12 12:03:23'),(2,1,'::ffff:127.0.0.1','37862',26,'2016-07-12 12:03:59','2016-07-12 12:03:59'),(2,0,'::ffff:127.0.0.1','37862',27,'2016-07-12 12:04:16','2016-07-12 12:04:16'),(2,0,'::ffff:127.0.0.1','57460',28,'2016-07-12 12:09:34','2016-07-12 12:09:34'),(2,0,'::ffff:127.0.0.1','60188',29,'2016-07-12 12:13:35','2016-07-12 12:13:35'),(2,0,'::ffff:127.0.0.1','60188',30,'2016-07-12 12:14:27','2016-07-12 12:14:27'),(2,0,'::ffff:127.0.0.1','60188',31,'2016-07-12 12:15:24','2016-07-12 12:15:24'),(2,0,'::ffff:127.0.0.1','60188',32,'2016-07-12 12:16:36','2016-07-12 12:16:36'),(2,0,'::ffff:127.0.0.1','60188',33,'2016-07-12 12:16:47','2016-07-12 12:16:47'),(2,0,'::ffff:127.0.0.1','60188',34,'2016-07-12 12:17:35','2016-07-12 12:17:35'),(2,0,'::ffff:127.0.0.1','60188',35,'2016-07-12 12:17:41','2016-07-12 12:17:41'),(2,0,'::ffff:127.0.0.1','60188',36,'2016-07-12 12:17:48','2016-07-12 12:17:48'),(2,1,'::ffff:127.0.0.1','60188',37,'2016-07-12 12:17:54','2016-07-12 12:17:54'),(2,1,'::ffff:127.0.0.1','41758',38,'2016-07-12 12:47:37','2016-07-12 12:47:37'),(2,1,'::ffff:127.0.0.1','41758',39,'2016-07-12 12:48:38','2016-07-12 12:48:38'),(2,1,'::ffff:127.0.0.1','44854',40,'2016-07-12 12:55:21','2016-07-12 12:55:21'),(2,1,'::ffff:127.0.0.1','49708',41,'2016-07-12 13:10:40','2016-07-12 13:10:40'),(2,1,'::ffff:127.0.0.1','49708',42,'2016-07-12 13:12:34','2016-07-12 13:12:34'),(2,1,'::ffff:127.0.0.1','49708',43,'2016-07-12 13:13:47','2016-07-12 13:13:47'),(2,1,'::ffff:127.0.0.1','43470',44,'2016-07-12 13:24:27','2016-07-12 13:24:27'),(2,1,'::ffff:127.0.0.1','33834',45,'2016-07-12 13:48:52','2016-07-12 13:48:52'),(2,1,'::ffff:127.0.0.1','40728',46,'2016-07-12 14:00:43','2016-07-12 14:00:43'),(2,1,'::ffff:127.0.0.1','56764',47,'2016-07-12 14:02:48','2016-07-12 14:02:48'),(2,1,'::ffff:127.0.0.1','48954',48,'2016-07-12 14:05:26','2016-07-12 14:05:26'),(2,1,'::ffff:127.0.0.1','48954',49,'2016-07-12 14:06:57','2016-07-12 14:06:57'),(2,1,'::ffff:127.0.0.1','37666',50,'2016-07-12 14:07:39','2016-07-12 14:07:39'),(2,1,'::ffff:127.0.0.1','46042',51,'2016-07-12 14:34:12','2016-07-12 14:34:12'),(2,1,'::ffff:127.0.0.1','42890',52,'2016-07-12 14:37:27','2016-07-12 14:37:27'),(2,1,'::ffff:127.0.0.1','42890',53,'2016-07-12 14:38:37','2016-07-12 14:38:37'),(2,1,'::ffff:127.0.0.1','51004',54,'2016-07-12 14:42:10','2016-07-12 14:42:10'),(2,1,'::ffff:127.0.0.1','40484',55,'2016-07-12 14:44:27','2016-07-12 14:44:27'),(2,1,'::ffff:127.0.0.1','46378',56,'2016-07-13 11:28:33','2016-07-13 11:28:33'),(2,1,'::ffff:127.0.0.1','51708',57,'2016-07-13 11:32:46','2016-07-13 11:32:46'),(2,1,'::ffff:127.0.0.1','59548',58,'2016-07-13 11:33:48','2016-07-13 11:33:48'),(2,1,'::ffff:127.0.0.1','59548',59,'2016-07-13 11:34:47','2016-07-13 11:34:47'),(2,1,'::ffff:127.0.0.1','59548',60,'2016-07-13 11:36:38','2016-07-13 11:36:38'),(2,1,'::ffff:127.0.0.1','59548',61,'2016-07-13 11:37:56','2016-07-13 11:37:56'),(2,1,'::ffff:127.0.0.1','59548',62,'2016-07-13 11:38:58','2016-07-13 11:38:58'),(2,1,'::ffff:127.0.0.1','60116',63,'2016-07-13 11:41:12','2016-07-13 11:41:12'),(2,1,'::ffff:127.0.0.1','38076',64,'2016-07-13 11:42:00','2016-07-13 11:42:00'),(2,1,'::ffff:127.0.0.1','56818',65,'2016-07-13 11:44:25','2016-07-13 11:44:25'),(2,1,'::ffff:127.0.0.1','47214',66,'2016-07-13 11:47:03','2016-07-13 11:47:03'),(2,1,'::ffff:127.0.0.1','47216',67,'2016-07-13 11:47:26','2016-07-13 11:47:26'),(2,1,'::ffff:127.0.0.1','36608',68,'2016-07-13 11:49:19','2016-07-13 11:49:19'),(3,1,'::ffff:127.0.0.1','44974',69,'2016-07-13 11:50:23','2016-07-13 11:50:23'),(2,1,'::ffff:127.0.0.1','40950',70,'2016-07-13 16:49:12','2016-07-13 16:49:12');
/*!40000 ALTER TABLE `attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetToken` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,'abc5@gmail.com','$2a$10$zYilRRo4SCwSaRYkUeg8vuSguYTNNfjQ64/GLNfJmmBoPkP.0rfNu',NULL,1,'2014-11-14 21:07:11','2014-11-14 21:07:11'),(2,'kitaec@list.ru','$2a$10$xwPU79vfckP.IRCwCC9Bsu1ScqwpH.vnXltzhTPhOtIDXcYCJAXqq',NULL,2,'2016-07-07 09:00:05','2016-07-07 09:00:05'),(3,'kitaec01@list.ru','$2a$10$MWCOdqjRTRdNzFYk29FxTumYrHwz5mC6OfLlEp5TfF0JzNjvgQvaW',NULL,3,'2016-07-13 11:50:14','2016-07-13 11:50:14');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt`
--

DROP TABLE IF EXISTS `jwt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jwt` (
  `token` varchar(1024) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `revoked` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt`
--

LOCK TABLES `jwt` WRITE;
/*!40000 ALTER TABLE `jwt` DISABLE KEYS */;
INSERT INTO `jwt` VALUES ('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQxNjYwNDA1NTE3OCwibmJmIjoxNDE1OTk5MjU1MTc5LCJpYXQiOjE0MTU5OTkyNTUxNzksImp0aSI6IjQxOTM5NWIwLTZjNDItMTFlNC05MmQ5LTZmNjYwOWZlNjJkYiJ9.lP2PoTCH7pWX-O7xlwxEG1NmHu7jNxEKrRXBgpT_s10',1,0,1,'2014-11-14 21:07:35','2014-11-14 21:07:35'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQxNjYxNDIwODUzNSwibmJmIjoxNDE2MDA5NDA4NTM3LCJpYXQiOjE0MTYwMDk0MDg1MzcsImp0aSI6ImU1NzMxMDkwLTZjNTktMTFlNC04N2NjLWFkYjVmNDI5MmI4ZCJ9.aXv0_9VsqAfoCkFfyrRaPZPK-N_HTyrlX9FdwxW5UDI',1,0,2,'2014-11-14 23:56:48','2014-11-14 23:56:48'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3MDI2MzgwNiwibmJmIjoxNDQyMTY1NDYzODA4LCJpYXQiOjE0NDIxNjU0NjM4MDgsImp0aSI6IjM1NDdmMDAwLTVhM2QtMTFlNS05YWY2LWUzNTBmYjY3YmRkZSJ9.DHdGwKnz2zflAmpaaNJZe95aqYO65Z-27qVJgcEXeF0',1,0,3,'2015-09-13 18:31:03','2015-09-13 18:31:03'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3MDI2NTY1MCwibmJmIjoxNDQyMTY1NDY1NjUxLCJpYXQiOjE0NDIxNjU0NjU2NTEsImp0aSI6IjM2NjEyODMwLTVhM2QtMTFlNS05YWY2LWUzNTBmYjY3YmRkZSJ9.p9BEkd0nNLm_YeqLv9l8BrI2_j55tja8Gv2zjsd4VbE',1,0,4,'2015-09-13 18:31:05','2015-09-13 18:31:05'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzEzMDY4NCwibmJmIjoxNDQyMTcyMzMwNjg1LCJpYXQiOjE0NDIxNzIzMzA2ODUsImp0aSI6IjMyNDIzNmQwLTVhNGQtMTFlNS1hOGExLTMxZTRkNGQwYWFhMSJ9.AFAnEpFMUFx2KBlO1AXts0figHCDgemDvCfvRX3y07o',1,0,5,'2015-09-13 20:25:30','2015-09-13 20:25:30'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzE2MDAwNiwibmJmIjoxNDQyMTcyMzYwMDA3LCJpYXQiOjE0NDIxNzIzNjAwMDcsImp0aSI6IjQzYmM2NTcwLTVhNGQtMTFlNS1hOGExLTMxZTRkNGQwYWFhMSJ9.y8cWYEy1FfH5NM3mw0O-Ktry4ADQee6OIKP4pxS8Ru8',1,0,6,'2015-09-13 20:26:00','2015-09-13 20:26:00'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzI2MjMxNSwibmJmIjoxNDQyMTcyNDYyMzE2LCJpYXQiOjE0NDIxNzI0NjIzMTYsImp0aSI6IjgwYjc4MmMwLTVhNGQtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.sFcAQDihU6f43MjERzQqBjBy7Ki8X5qC63-sEcxGoIU',1,0,7,'2015-09-13 20:27:42','2015-09-13 20:27:42'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzM4NTY5NCwibmJmIjoxNDQyMTcyNTg1Njk0LCJpYXQiOjE0NDIxNzI1ODU2OTQsImp0aSI6ImNhNDE3ZmUwLTVhNGQtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.zbq0pexmTvfJrK8XID879mu7hVMUK1f6w3nKQpj_wAQ',1,0,8,'2015-09-13 20:29:45','2015-09-13 20:29:45'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzY0ODc1MywibmJmIjoxNDQyMTcyODQ4NzUzLCJpYXQiOjE0NDIxNzI4NDg3NTMsImp0aSI6IjY3MGQxZTEwLTVhNGUtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.hzptDBm5PuNihG6lJTiMUtkNQSp_5Zw2E3WCXPtO_Rw',1,0,9,'2015-09-13 20:34:08','2015-09-13 20:34:08'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzY2NTE1OCwibmJmIjoxNDQyMTcyODY1MTU4LCJpYXQiOjE0NDIxNzI4NjUxNTgsImp0aSI6IjcwZDQ1MjYwLTVhNGUtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.-GlRlnMM94KCAmPiW2PwDUqRxV5EeqQJJt2PYkLr2EE',1,0,10,'2015-09-13 20:34:25','2015-09-13 20:34:25'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzY4MTk2MSwibmJmIjoxNDQyMTcyODgxOTYxLCJpYXQiOjE0NDIxNzI4ODE5NjEsImp0aSI6IjdhZDg0MTkwLTVhNGUtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9._ZVoMXYIwJDRadHrpX7o_ZS8zPAR-VX68s8c0uv4MBY',1,0,11,'2015-09-13 20:34:41','2015-09-13 20:34:41'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzc1MjEzOCwibmJmIjoxNDQyMTcyOTUyMTM5LCJpYXQiOjE0NDIxNzI5NTIxMzksImp0aSI6ImE0YWM5MWIwLTVhNGUtMTFlNS1iOTM0LTg5ZmRhODdlN2U4MCJ9.0x9klzO7_AkWJB8Bgoenkc0HydldtNye5tL3kVaS7Ho',1,0,12,'2015-09-13 20:35:52','2015-09-13 20:35:52'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzc1NTM4MSwibmJmIjoxNDQyMTcyOTU1MzgxLCJpYXQiOjE0NDIxNzI5NTUzODEsImp0aSI6ImE2OWI0MjUwLTVhNGUtMTFlNS1iOTM0LTg5ZmRhODdlN2U4MCJ9.DQJUvL_yYnBgEcC_0rITtcZ0SWZjRFkmKnMTwSj2kG0',1,0,13,'2015-09-13 20:35:55','2015-09-13 20:35:55'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzk0NzY0NCwibmJmIjoxNDQyMTczMTQ3NjQ1LCJpYXQiOjE0NDIxNzMxNDc2NDUsImp0aSI6IjE5MzQ5MWUwLTVhNGYtMTFlNS04NGQ2LTM5YzgyZGM4YjFmNCJ9.kG0dfEVQ5BEa9dIFmNYRAXN1aNWOBWOmX-9rgCJ7E5M',1,0,14,'2015-09-13 20:39:07','2015-09-13 20:39:07'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzk1MDI1NywibmJmIjoxNDQyMTczMTUwMjU3LCJpYXQiOjE0NDIxNzMxNTAyNTcsImp0aSI6IjFhYzJmYTEwLTVhNGYtMTFlNS04NGQ2LTM5YzgyZGM4YjFmNCJ9.lru474nMDiSI7WaneaZI1A3qNG_vuzSJ7bhCOmE6LJ4',1,0,15,'2015-09-13 20:39:10','2015-09-13 20:39:10'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg0NTgwOTE1NDEsIm5iZiI6MTQ2Nzg1MzI5MTU0MiwiaWF0IjoxNDY3ODUzMjkxNTQyLCJqdGkiOiI1N2MwOWI2MC00M2RlLTExZTYtYTYwNi1hZmYxZjc0OWYxYmMifQ.rVLMsAcfOOIieBAaPyuioFiensZfR6CslMFytdLyK9A',2,0,16,'2016-07-07 09:01:31','2016-07-07 09:01:31'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg0NTgyMzI1OTYsIm5iZiI6MTQ2Nzg1MzQzMjU5OCwiaWF0IjoxNDY3ODUzNDMyNTk4LCJqdGkiOiJhYmQ0MGI2MC00M2RlLTExZTYtODZkNi1jZmFjYjc4M2Y1YzEifQ.gp5dza5KtvkKD9-Q63VGtr2r2rgvl9ZYKIfYiyTLDRQ',2,0,17,'2016-07-07 09:03:52','2016-07-07 09:03:52'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg0NTk5ODY3NDEsIm5iZiI6MTQ2Nzg1NTE4Njc0MywiaWF0IjoxNDY3ODU1MTg2NzQzLCJqdGkiOiJjMTYxNTQ3MC00M2UyLTExZTYtOGY2Yi0wYjA3N2M2OTA3NjIifQ.hfHa2S0I_QZlP3Vy6S6ECTGmEjm8Fh8b0KmkcDTPQak',2,0,18,'2016-07-07 09:33:06','2016-07-07 09:33:06'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg0NjAwMjUwMzIsIm5iZiI6MTQ2Nzg1NTIyNTAzMywiaWF0IjoxNDY3ODU1MjI1MDMzLCJqdGkiOiJkODM0MTJhMC00M2UyLTExZTYtYTUxNC01NTUyNzg3NWViZmEifQ.EIPjIpEncmJN3sGXXigh_40o7mlyjHmw5yEyNZm_9qk',2,0,19,'2016-07-07 09:33:45','2016-07-07 09:33:45'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg0NjI2NDk1ODEsIm5iZiI6MTQ2Nzg1Nzg0OTU4MiwiaWF0IjoxNDY3ODU3ODQ5NTgyLCJqdGkiOiJmNDhlNTBlMC00M2U4LTExZTYtODI0MS00MTM2MDIyNzBlMDYifQ.bJTeYbKRsZaDX5tpUYMNcxNuY8nMnr-ZOkeYFFNJ7Gs',2,0,20,'2016-07-07 10:17:29','2016-07-07 10:17:29'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg0NjU5NTQ0NjcsIm5iZiI6MTQ2Nzg2MTE1NDQ3MCwiaWF0IjoxNDY3ODYxMTU0NDcwLCJqdGkiOiJhNjZjNWI3MC00M2YwLTExZTYtODkxMC01ZGE1NzNhM2I4OWUifQ.6Pk1GeybDRq8T24GNZacX4nvUO-pXOiHIJv9Ul-5_Ic',2,0,21,'2016-07-07 11:12:34','2016-07-07 11:12:34'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg1NjU3ODkxNjgsIm5iZiI6MTQ2Nzk2MDk4OTE2OSwiaWF0IjoxNDY3OTYwOTg5MTY5LCJqdGkiOiIxODhhNTYxMC00NGQ5LTExZTYtODc5Mi02YjZjOTg0MzYyZDYifQ.6iaMEe9KutkFWgB-15WJQ4agFcxnt0fcYSe_HdloszQ',2,0,22,'2016-07-08 14:56:29','2016-07-08 14:56:29'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg4MjY0NDYzMTgsIm5iZiI6MTQ2ODIyMTY0NjMyMCwiaWF0IjoxNDY4MjIxNjQ2MzIwLCJqdGkiOiJmYzRmNTYxMC00NzM3LTExZTYtYmVmOS0zZDUzYzBjYjA4NjMifQ.QEO46rDILkUFY99yyzXUzxMTwe5lTTEbcl4ZOGoyBMM',2,0,23,'2016-07-11 15:20:46','2016-07-11 15:20:46'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg4Mjc4MzMzOTIsIm5iZiI6MTQ2ODIyMzAzMzM5NCwiaWF0IjoxNDY4MjIzMDMzMzk0LCJqdGkiOiIzNzEyMDgzMC00NzNiLTExZTYtOWNmNS1lNTVmOTFhNzQ1MjkifQ.p3L5Efqbz5MmT677ySWBrljUJhWuze1vp4QKPXRSZRE',2,0,24,'2016-07-11 15:43:53','2016-07-11 15:43:53'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg4OTYzMDQ2NTUsIm5iZiI6MTQ2ODI5MTUwNDY1NywiaWF0IjoxNDY4MjkxNTA0NjU3LCJqdGkiOiJhMzFmNzgxMC00N2RhLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.vq5wssLRUuoavNzZwd3sD1xE-zUsapkBTD35boqeUXs',2,0,25,'2016-07-12 10:45:04','2016-07-12 10:45:04'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDEwMDMyNjcsIm5iZiI6MTQ2ODI5NjIwMzI3MywiaWF0IjoxNDY4Mjk2MjAzMjczLCJqdGkiOiI5M2I3YWRiMC00N2U1LTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.lsPIGnCAPeEFqbbxyipIIBHBmrKEE0GwtMnFyTilx_E',2,0,26,'2016-07-12 12:03:23','2016-07-12 12:03:23'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDEwMzk5MDYsIm5iZiI6MTQ2ODI5NjIzOTkwNiwiaWF0IjoxNDY4Mjk2MjM5OTA2LCJqdGkiOiJhOThkNDczMC00N2U1LTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.-54vwpIIZJZHTUJAukMPq1X0p46hcMs5Ne2iwH8aWK0',2,0,27,'2016-07-12 12:03:59','2016-07-12 12:03:59'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDE4NzQyMTgsIm5iZiI6MTQ2ODI5NzA3NDIyMCwiaWF0IjoxNDY4Mjk3MDc0MjIwLCJqdGkiOiI5YWQ3NTZjMC00N2U3LTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.bOZ1G58OdFWfyMk1EOzN8_U3pyMaF428j0FkNWlm8aY',2,0,28,'2016-07-12 12:17:54','2016-07-12 12:17:54'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDM2NTc0MjgsIm5iZiI6MTQ2ODI5ODg1NzQzNSwiaWF0IjoxNDY4Mjk4ODU3NDM1LCJqdGkiOiJjMWI4NWFiMC00N2ViLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.KfXCrCNRq0sVsua06PzXOZIISCZVSIC7N_Tsq65OLrY',2,0,29,'2016-07-12 12:47:37','2016-07-12 12:47:37'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDM3MTg4MzAsIm5iZiI6MTQ2ODI5ODkxODgzMCwiaWF0IjoxNDY4Mjk4OTE4ODMwLCJqdGkiOiJlNjUwN2NlMC00N2ViLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.Yo0FIp6M2Bdpajy3g_SEc-xRrwUkqToLaabcZAzl2IU',2,0,30,'2016-07-12 12:48:38','2016-07-12 12:48:38'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDQxMjE4NDgsIm5iZiI6MTQ2ODI5OTMyMTg0OSwiaWF0IjoxNDY4Mjk5MzIxODQ5LCJqdGkiOiJkNjg4NGU5MC00N2VjLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.miJ3f6i-2LOJBvu0mdIBw5xGcotIhQ3CedSiRs92q5c',2,0,31,'2016-07-12 12:55:21','2016-07-12 12:55:21'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDUwNDA2NTAsIm5iZiI6MTQ2ODMwMDI0MDY1NCwiaWF0IjoxNDY4MzAwMjQwNjU0LCJqdGkiOiJmYTJlZjlmMC00N2VlLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.ZSQJC7RI3igDCkmXRz5acpCj6JqM3zWSW9VNdhdFcbI',2,0,32,'2016-07-12 13:10:40','2016-07-12 13:10:40'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDUxNTQ0MzcsIm5iZiI6MTQ2ODMwMDM1NDQzNywiaWF0IjoxNDY4MzAwMzU0NDM3LCJqdGkiOiIzZTAwYmI1MC00N2VmLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.pcTKP1b2E4GYCgINuNh9lEVPiCu0RwmJmspfs32VqGA',2,0,33,'2016-07-12 13:12:34','2016-07-12 13:12:34'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDUyMjc0MDksIm5iZiI6MTQ2ODMwMDQyNzQwOSwiaWF0IjoxNDY4MzAwNDI3NDA5LCJqdGkiOiI2OTdmNjAxMC00N2VmLTExZTYtYjg2OS02YjBkNWYyNDU2MTIifQ.vXNv7HdGT9tBubhTUSaYQZPclfjbzJUjCoQtXVE_0iw',2,0,34,'2016-07-12 13:13:47','2016-07-12 13:13:47'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDU4Njc3NDMsIm5iZiI6MTQ2ODMwMTA2Nzc0NSwiaWF0IjoxNDY4MzAxMDY3NzQ1LCJqdGkiOiJlNzJiMGMyMC00N2YwLTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.rQy836jB7DJmnuVsbUrBRKD6etM7vRMB8FAVBZrdYto',2,0,35,'2016-07-12 13:24:27','2016-07-12 13:24:27'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDczMzIwNDUsIm5iZiI6MTQ2ODMwMjUzMjA0NiwiaWF0IjoxNDY4MzAyNTMyMDQ2LCJqdGkiOiI0ZmY1N2VlMC00N2Y0LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.-ctCEfjxWc4XgD6g1ALitttTeCYttYrqMMkcu96iLkk',2,0,36,'2016-07-12 13:48:52','2016-07-12 13:48:52'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDgwNDMzNjQsIm5iZiI6MTQ2ODMwMzI0MzM2OCwiaWF0IjoxNDY4MzAzMjQzMzY4LCJqdGkiOiJmN2YwYzU5MC00N2Y1LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.wqkw-mkkjfus1N3bcEiIi_kE5QJgsbNju5wstuf2SGs',2,0,37,'2016-07-12 14:00:43','2016-07-12 14:00:43'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDgxNjg3NjcsIm5iZiI6MTQ2ODMwMzM2ODc5NiwiaWF0IjoxNDY4MzAzMzY4Nzk2LCJqdGkiOiI0MmI4MjRiMC00N2Y2LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.4bVK-I3V3euKYXQjlsu2HkZsPaiPTDcyn7a3hNdruPM',2,0,38,'2016-07-12 14:02:48','2016-07-12 14:02:49'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDgzMjY2MzEsIm5iZiI6MTQ2ODMwMzUyNjYzMSwiaWF0IjoxNDY4MzAzNTI2NjMxLCJqdGkiOiJhMGM3MWY3MC00N2Y2LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.Sh_rGn5M70ULdrdgHsKdHnZxhbk3Ni2cnY6tpZaygzA',2,0,39,'2016-07-12 14:05:26','2016-07-12 14:05:26'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDgzMzY2MzIsIm5iZiI6MTQ2ODMwMzUzNjYzMiwiaWF0IjoxNDY4MzAzNTM2NjMyLCJqdGkiOiJhNmJkMjc4MC00N2Y2LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.eY7biF7yHVEKZJaRFF9nkp2gQidpgeG5yZY8z5pZ1ig',2,0,40,'2016-07-12 14:05:36','2016-07-12 14:05:36'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDg0MTcwNDMsIm5iZiI6MTQ2ODMwMzYxNzA0MywiaWF0IjoxNDY4MzAzNjE3MDQzLCJqdGkiOiJkNmFhZTYzMC00N2Y2LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.KAAug224GFd7p9RD5CzUwsNbExcJawzC6_2sRP2VCUc',2,0,41,'2016-07-12 14:06:57','2016-07-12 14:06:57'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MDg0NTkxMDYsIm5iZiI6MTQ2ODMwMzY1OTEwNiwiaWF0IjoxNDY4MzAzNjU5MTA2LCJqdGkiOiJlZmJkMzQyMC00N2Y2LTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.KBZUXl0-_2TzifeDbC_PGmZ7gFsdK6-X_hJPVsALJ50',2,0,42,'2016-07-12 14:07:39','2016-07-12 14:07:39'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MTAwNTIyMTksIm5iZiI6MTQ2ODMwNTI1MjIyNSwiaWF0IjoxNDY4MzA1MjUyMjI1LCJqdGkiOiJhNTRmZGYxMC00N2ZhLTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.3m_-FzreBo7MllHijTaHDW42nQo5x8Ygdv7KXQSp4Yg',2,0,43,'2016-07-12 14:34:12','2016-07-12 14:34:12'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MTAyNDcxMTAsIm5iZiI6MTQ2ODMwNTQ0NzEyNywiaWF0IjoxNDY4MzA1NDQ3MTI3LCJqdGkiOiIxOTdiOGU3MC00N2ZiLTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.Ny31SwbokEUFSVPjW915IdpMn2ADrpakJ6PKxuAIEKY',2,0,44,'2016-07-12 14:37:27','2016-07-12 14:37:27'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MTAzMTc3MzAsIm5iZiI6MTQ2ODMwNTUxNzczMCwiaWF0IjoxNDY4MzA1NTE3NzMwLCJqdGkiOiI0MzkwZGYzMC00N2ZiLTExZTYtYWVhNC1lYmYxMjM3YmExMDMifQ.8xk6W60tt8KcBnF0yFHRhf4EMu8lKXiqrVJCafaBSSk',2,0,45,'2016-07-12 14:38:37','2016-07-12 14:38:38'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MTA1MzA3NzgsIm5iZiI6MTQ2ODMwNTczMDc3OSwiaWF0IjoxNDY4MzA1NzMwNzc5LCJqdGkiOiJjMjhkNmFiMC00N2ZiLTExZTYtYWNhMC0zM2VjYzQxODlkYzIifQ.VURutRbBq_MWszO-AGRwRfFze202ZMKLznXlzyAaZl4',2,0,46,'2016-07-12 14:42:10','2016-07-12 14:42:10'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MTA2Njc5ODUsIm5iZiI6MTQ2ODMwNTg2Nzk4NiwiaWF0IjoxNDY4MzA1ODY3OTg2LCJqdGkiOiIxNDU1OGIyMC00N2ZjLTExZTYtYWNhMC0zM2VjYzQxODlkYzIifQ.9wZ1G425asmFXq3sTw25rc9VMVW5szGlUJCpEaFY8_Q',2,0,47,'2016-07-12 14:44:27','2016-07-12 14:44:28'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5MTA2ODUwNjEsIm5iZiI6MTQ2ODMwNTg4NTA2MSwiaWF0IjoxNDY4MzA1ODg1MDYxLCJqdGkiOiIxZTgyZmI1MC00N2ZjLTExZTYtYWNhMC0zM2VjYzQxODlkYzIifQ.K2J4WShWQgTuI6E1T59g7_E20CodTRT0aasSEbvRxLs',2,0,48,'2016-07-12 14:44:45','2016-07-12 14:44:45'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODUzMTM0NTIsIm5iZiI6MTQ2ODM4MDUxMzQ1MiwiaWF0IjoxNDY4MzgwNTEzNDUyLCJqdGkiOiJlMDdmYmVjMC00OGE5LTExZTYtYWNhMC0zM2VjYzQxODlkYzIifQ.W9tX8-QvGLo-Ov9kZBAFXYcMDoIEN0xDjZPHQSEY_E8',2,0,49,'2016-07-13 11:28:33','2016-07-13 11:28:33'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODU1NjY4MTIsIm5iZiI6MTQ2ODM4MDc2NjgxNSwiaWF0IjoxNDY4MzgwNzY2ODE1LCJqdGkiOiI3Nzg0MDYwMC00OGFhLTExZTYtYWNhMC0zM2VjYzQxODlkYzIifQ.1hyCRhlSB_6KUMFxW6M8hDU2ucZZdAo_YBCZz_jJuYg',2,0,50,'2016-07-13 11:32:46','2016-07-13 11:32:46'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODU2MjgyODcsIm5iZiI6MTQ2ODM4MDgyODI5NiwiaWF0IjoxNDY4MzgwODI4Mjk2LCJqdGkiOiI5YzI5MjA4MC00OGFhLTExZTYtODVkYi1jMTk5ZGI3NDAzYWIifQ.iSuhA6Ro8HDyIwjWuxTzzY-V7RktcBEIyheBBfsw9dE',2,0,51,'2016-07-13 11:33:48','2016-07-13 11:33:48'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODU2ODc2MDgsIm5iZiI6MTQ2ODM4MDg4NzYwOCwiaWF0IjoxNDY4MzgwODg3NjA4LCJqdGkiOiJiZjgzNmI4MC00OGFhLTExZTYtODVkYi1jMTk5ZGI3NDAzYWIifQ.rL0LXky8UxDLkM_ZnRjR7AP2qWnE_EtOh_Nkqvz8mMM',2,0,52,'2016-07-13 11:34:47','2016-07-13 11:34:47'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODU3OTgzMzksIm5iZiI6MTQ2ODM4MDk5ODMzOSwiaWF0IjoxNDY4MzgwOTk4MzM5LCJqdGkiOiIwMTgzYTEzMC00OGFiLTExZTYtODVkYi1jMTk5ZGI3NDAzYWIifQ.4O2Ku_iThx2pQRwlJJD2z4fGSMFIkIgHMPKCDIrNA6s',2,0,53,'2016-07-13 11:36:38','2016-07-13 11:36:38'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODU4NzYxNzgsIm5iZiI6MTQ2ODM4MTA3NjE3OCwiaWF0IjoxNDY4MzgxMDc2MTc4LCJqdGkiOiIyZmU4ZWIyMC00OGFiLTExZTYtODVkYi1jMTk5ZGI3NDAzYWIifQ.Eey2ffNAdRf179JeEjWg2vizZSR1sQTqmlzneqR3RQU',2,0,54,'2016-07-13 11:37:56','2016-07-13 11:37:56'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODU5Mzg1MDYsIm5iZiI6MTQ2ODM4MTEzODUwNiwiaWF0IjoxNDY4MzgxMTM4NTA2LCJqdGkiOiI1NTBmNmFhMC00OGFiLTExZTYtODVkYi1jMTk5ZGI3NDAzYWIifQ.lShxEdLtmlBLNkPFM6nocWhIrlcj3bPA6RKssE2OyWM',2,0,55,'2016-07-13 11:38:58','2016-07-13 11:38:58'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODYwNzI1MDUsIm5iZiI6MTQ2ODM4MTI3MjUwNSwiaWF0IjoxNDY4MzgxMjcyNTA1LCJqdGkiOiJhNGVlMGE5MC00OGFiLTExZTYtODVkYi1jMTk5ZGI3NDAzYWIifQ.8wslKI_COuZEMBwdGWO4cZnmEx1mvDxC6oCUAuNEii0',2,0,56,'2016-07-13 11:41:12','2016-07-13 11:41:12'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODYxMjAwNTYsIm5iZiI6MTQ2ODM4MTMyMDA1NywiaWF0IjoxNDY4MzgxMzIwMDU3LCJqdGkiOiJjMTQ1ZTY5MC00OGFiLTExZTYtOTYxZS05MzE3NmYxNzBlMjgifQ.CNftIkV6qeS2uR17mblLGO-GRRm4ayqPYppO7L0Bhy0',2,0,57,'2016-07-13 11:42:00','2016-07-13 11:42:00'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODYyNjU5NjgsIm5iZiI6MTQ2ODM4MTQ2NTk2OCwiaWF0IjoxNDY4MzgxNDY1OTY4LCJqdGkiOiIxODNlMjcwMC00OGFjLTExZTYtOTYxZS05MzE3NmYxNzBlMjgifQ.cVMizpURcjvygMMRd5uO54Iazge8-_Q7uqcuhszMtBc',2,0,58,'2016-07-13 11:44:25','2016-07-13 11:44:25'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODY0MjMxMDIsIm5iZiI6MTQ2ODM4MTYyMzEwMiwiaWF0IjoxNDY4MzgxNjIzMTAyLCJqdGkiOiI3NWU2ZTVlMC00OGFjLTExZTYtOTYxZS05MzE3NmYxNzBlMjgifQ.-HkgVHO6K4fZCCkwz8qzNO_0LcTL2t45VEkAokbjnus',2,0,59,'2016-07-13 11:47:03','2016-07-13 11:47:03'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODY0NDY0NjcsIm5iZiI6MTQ2ODM4MTY0NjQ2OCwiaWF0IjoxNDY4MzgxNjQ2NDY4LCJqdGkiOiI4M2Q0NDQ0MC00OGFjLTExZTYtOTYxZS05MzE3NmYxNzBlMjgifQ.HUJtB5Z1Bw3IWc6DSNJqYHUIACRfG_QuKlQ9E81yqo4',2,0,60,'2016-07-13 11:47:26','2016-07-13 11:47:26'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODY1NTk2MDQsIm5iZiI6MTQ2ODM4MTc1OTYwNSwiaWF0IjoxNDY4MzgxNzU5NjA1LCJqdGkiOiJjNzQzYzE2MC00OGFjLTExZTYtYmNkZS0yYmJkYmU0ODhlYzEifQ._DoTpPjq0yOwlktRva7-2V1nzTgD8xvLWyF3Pkls3_E',2,0,61,'2016-07-13 11:49:19','2016-07-13 11:49:19'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIzfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0Njg5ODY2MjM1NzUsIm5iZiI6MTQ2ODM4MTgyMzU3NSwiaWF0IjoxNDY4MzgxODIzNTc1LCJqdGkiOiJlZDY0YTY3MC00OGFjLTExZTYtYmNkZS0yYmJkYmU0ODhlYzEifQ._igfoJ0Rwxc8sQXG46hDlii6x8qcZZvOZN4zmes32qk',3,0,62,'2016-07-13 11:50:23','2016-07-13 11:50:25'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJzYWlscy13YXRlcmxvY2stdG9rZW4tdGVtcGxhdGUiLCJleHAiOjE0NjkwMDQ1NTIyNTgsIm5iZiI6MTQ2ODM5OTc1MjI1OSwiaWF0IjoxNDY4Mzk5NzUyMjU5LCJqdGkiOiJhYmI4YjkzMC00OGQ2LTExZTYtYmNkZS0yYmJkYmU0ODhlYzEifQ.ZYSm7IkG-MhreCvRRJRkko2y4vCjTIPY9nhNePvt3lc',2,0,63,'2016-07-13 16:49:12','2016-07-13 16:49:12');
/*!40000 ALTER TABLE `jwt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `category_id` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lessons_lessons_category_idx` (`category_id`),
  CONSTRAINT `fk_lessons_lessons_category` FOREIGN KEY (`category_id`) REFERENCES `lessons_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,'ВВОДНЫЙ БЛОК.  Фонетика.','<p><br></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">ВВОДНЫЙ БЛОК:</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Фонетика китайского языка очень сильно отличается от&nbsp;фонетики в&nbsp;русском. Китайский язык СЛОГОВОЙ, и это значит, что каждый слог может выражать определенное значение, а может быть и полноценным словом.&nbsp;СЛОВО = СЛОГ или&nbsp;СЛОВО = несколько СЛОГОВБольшинство слов в стандартном кит.языке путунхуа (в простонародье \"мандарин\", именно его мы будем изучать, а не диалектные варианты) состоят из 1 или 2 слогов (\"ма-ма\", \"па-па\" и т.д).&nbsp;Каждый слог записывается иероглифом.СЛОГ &gt;ИЕРОГЛИФ&nbsp;Для чтения иероглифа существует система записи звуков \"пхинь инь\", записывающая звучание иероглифа буквами латинского алфавита.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Китайский язык очень четко СТРУКТУРИРОВАН: у каждого слова в предложении или звука в слоге - свое место! Число звуков, срставляюших слог может быть от 1 до 4. Т.е. в китайском слоге - максимум 4 звука, такой слог называется слогом ПОЛНОГО СОСТАВА, он состоит из&nbsp;начального согласного (инициаль)&nbsp; и&nbsp;вокалической части, сочетающей только гласные или гласные + конечные n или ng (финаль).&nbsp;СЛОГ 4 ЗВУКА = 1 СОГЛАСНЫЙ + 3 ГЛАСНЫХ или 2 ГЛАСНЫХ + n/ngОй-ой-ой подумалось каждому...инициаль, финаль, строгое место...как это все запомнить?! Рекомендую оставлять панику, а пытаться внмкнуть в СИСТЕМУ...это как бусенки, пока все не соберем, бус наи не одеть! Запомнить это все проще простого, в китайском языке 21 согласных (инициалей), и 6 гласных, которые&nbsp; образуюи вместе с конечными n/ng всего 36 вариантов (финалей). НУ неужели нам не по силам запомнить сначала 21, а потом и 36?&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Китайские звуки, хоть и записываются латиницей, отличаются от&nbsp;английских, или родных русских. Прежде чем учить возможные слоги (их тоже немного, всего 420!реально осилить за несколько дней) нужно запомнить, как эти звуки произносятся.&nbsp;Ниже приведу эти звуки и&nbsp;их аналоги на&nbsp;русском&nbsp;(но&nbsp;это лишь частичные соответсвия, подсказки на первое время!), лучше потом подписывать для себя слова не русскими звуками, а пхинь инем. Это принципиально!&nbsp; Читайте, и отдавайте себе отчет: \"ЭТО ПОХОЖЕ НА РУССКОЕ ...НО НЕ НА 100%\". Чтобы запоминание шло легче, рекомендую с первого дня занятий очень много слушать и&nbsp;повторять, записывать свой голос и прослушивать, похоже ли это на то, как говорят китайцы)))&nbsp;Подключайте визуальный канал&nbsp;— смотрите, как произносят звуки, слова китайцы в вашем окружении, следить за&nbsp;их&nbsp;губами, \"заглядывайте им в рот\"))))</p>',6,'2016-07-07 01:04:25','2016-07-14 00:32:24'),(2,'ГРАММАТИЧЕСКИЙ СТРОЙ И СТРУКТУРА ПРЕДЛОЖЕНИЙ В КИТАЙСКОМ ЯЗЫКЕ','<span style=\"\\&quot;font-weight:\" bold;=\"\" font-size:=\"\" large;\\\"=\"\">ГРАММАТИЧЕСКИЙ СТРОЙ И СТРУКТУРА ПРЕДЛОЖЕНИЙ В КИТАЙСКОМ ЯЗЫКЕ</span><div>Китайская грамматика разительно отличается от русской, в этот раз в пользу учеников)))&nbsp;</div><div>В ней нет изменения формы слова, а это значит нет у слов приставок, суффиксов, окончаний...и они не меняются по родам, по числам и временам! Но есть различные \\\"помогаторы\\\" - вспомогательные частицы, служебные слова, которые используются для выражения различных грамматических отношений. Так, к существительным, для выражения множественного числа, добавляется \\\"помогатор\\\" 们 men (иероглиф состоит из ключа человек (слева) и ключа дверь справа).&nbsp;</div><div>Т.е. формула проста:местоимение или существительное &nbsp; +&nbsp;们 men (оно читается 0 тоном) &nbsp;=&nbsp;&nbsp;МНОЖЕСТВЕННАЯ ФОРМА этого словаНапример:我 wo (3й тон) - Я &nbsp; = 我们 wo men - мы &nbsp; &nbsp; } +们&nbsp;你 ni (3й тон) - Ты &nbsp; = 你们 ni men - вы<p><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Или есть \\\"помогатор\\\" прошедшего времени 了 le,&nbsp; который добавляется к глаголу и образует форму прошедшего времени:&nbsp;买 mai (3й)&nbsp; - покупать, 买了mai le - купиЛ;&nbsp;吃&nbsp; chi (1й) - кушать, 吃了chi le - кушаЛ.</span><br></p><p>Или есть \\\"помогатор\\\" прошедшего времени 了 le,&nbsp; который добавляется к глаголу и образует форму прошедшего времени:&nbsp;买 mai (3й)&nbsp; - покупать, 买了mai le - купиЛ;&nbsp;吃&nbsp; chi (1й) - кушать, 吃了chi le - кушаЛ.</p><p>Эту частицу очень легко запомнить, проведя аналогию с русскими глаголами в прошедшем времени, читал, смотрел, бегал...у них есть \\\"Л\\\" на конце , также как китайский глагол в пр.времени имеет на конце 了le.</p><p>А есть еще \\\"помогатор\\\" вопроса - частица 吗，если ее поставить в конце любого предложения,&nbsp; она сделает из него вопрос!&nbsp;- 好 hao (3й тон) Хорошо.&nbsp;- 好吗？hao ma? (3й тон + нулевой тон, нейтральный) Хорошо?</p><p>Или помогатор 吧 ba - поставленный в конце фразы смягчает просьбу, побуждает к выполнению действия:&nbsp;- 走 zou (3й тон) идти&nbsp;- 走吧 zou ba! ПОШЛИ!</p><p>В китайском языке, опять же таки, по причине отсутствия изменений окончаний, суффиксов, приставок очень СТРОГИЙ ПОРЯДОК СЛОВ в предложении. Переворачивая русское \\\"Я люблю тебя\\\" - люблЮ тебЯ я, тебЯ люблЮ я...мы прекрасно прнимаем КТО КОГО любит по измененной форме слова ТЫ &gt; люблю кого? ТЕБЯ...давайте возьмем и переведем на \\\"неизменяющийся\\\" китайский:&nbsp;Я 我 wo (3й тон)Ты 你 ni (3й тон)Люблю 爱 ai (4й тон)</p><p>и начнем миксовать:&nbsp;我爱你 wo ai ni &gt;你爱我 ni ai wo &gt; 爱你我 ai ni wo</p><p>А теперь дословно: я любить ты, ты любить я, любить я ты. Кто кого любит??? Санта-Барбара, не иначе. Чтобы избавить нас от догадок, недоумений китайцы придумали хорошую вещь: дать каждому члену предложения фиксированное место!</p><p>Прежде чем их рассмотреть, давайте вспомним из русского языка&nbsp;<span style=\"\\&quot;line-height:\" 1.72222;=\"\" font-weight:=\"\" bold;\\\"=\"\">ОСНОВНЫЕ ЧЛЕНЫ&nbsp;</span><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\"><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ПРЕДЛОЖЕНИЯ</span></span></p><p><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">что такое подлежащее (условно П), сказуемое (С), дополнение (Д), определение (Опр.) и обстоятельство (Об)?[Sun]П - тот кто выполняет действие (местоимение или существительное): Я купила красивую книгу[Sun]С - само действие (глагол): я КУПИЛА красивую книгу[Sun]Д - то, на что направленно действие или тот на кого направленно: я купила красивую КНИГУ[Sun]Опр - опрелеляет КАКОЙ кто или что, описыааемый в предложении (я купила КРАСИВУЮ книгу)[Sun]Об - указывает при каких обстоятельствах происходит то или иное действие (обстоят.времени, места) - ВЧЕРА я купила красивую книгу</span></p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">СТРУКТУРА КИТАЙСКОГО ПРЕДЛОЖЕНИЯ:</span></p><p>Начнем с рассмотрения самых простых и коротких предложений на китайском языке:√БАЗОВАЯ СТРУКТУРА</p><p>П-С (Субъект + глагол)</p><p>На её основе вы можете уже строить предложение всего из двух слов, например:</p><p>Записи предложений этих выложу в уч.материалы к вечеру[Nuh-uh] пока просто просмотрите, попробуйте САМИ прочесть пхинь инь[Tongue]</p><p>√&nbsp; П-С-Д (Субъект+глагол+Объект)&nbsp; Кто? - Делает- Что?我-爱-你 wo3 ai4 ni3 (я люблю тебя)</p><p>Если переставить в ином порядке: 你爱我 ni ai wo получится ТЫ ЛЮБИШЬ МЕНЯ[Nuh-uh] Кстати, легко сделать из этого предложения вопрос, воспользовавшись вопросительной частицей 吗 ma, которую мы поставим в конце: 你爱我吗？ ni ai wo ma ? Ты меня любишь?</p><p>Ниже еще примеры предложений,&nbsp; построенных по этому типу, пробуем прочитать пхинь инь, записи выложу к вечеру, проверяем себя, это важно, только так можно выявить ПРОБЛЕМЫ, и узнать что нуждается в повторении</p><p>Структура П-С-Д может быть расширена за счет появления уточняющих деталей:&nbsp;[Shocked]КОГДА делает&nbsp;[Shocked]ГДЕ делает&nbsp;[Shocked]КАКОЙ этот кто-то или что-то[Shocked]КОМУ/для кого делает&nbsp;&nbsp;Ниже приведу типовые&nbsp;РАСШИРЕННЫЕ СТРУКТУРЫ:</p><p>П-Об.времени-С-Д(Субъект - время действия - глагол - объект)</p><p>Об.времени-П-С-Д&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;( Время действия - Субъект - глагол - объект)</p><p>Слова, обозначающие время, отвечающие на вопрос «когда?» явл.обстоятельствами времени в кит.предложении. Обстоятельство времени может занимать две позиции:1) в начале, сразу после субъекта2) в редких случаях перед ним</p><p>wo3&nbsp; jin1 tian1 gong1 zuo4.ni men mei 3 tian1 xi3zao3.ta1 xing1 qi1 er lai.</p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ПРАВИЛО&nbsp;</span></p><blockquote>Если в речи встречаются 2 слога, читающиеся 3м тоном, то первый из них меняет свой тон на второй:洗澡 xi3 zao3&nbsp; = xi2 zao3你好 ni3 hao3 = ni2hao3</blockquote><p>Это вполне оправданное явление, изменение тона в потоке речи в силу большего удобства произнесения. Третий тон он нисходящевосходящий, сложно делать голосом \\\"пируэты\\\", опускать высоту, поднимать, опять опускать-поднимать. Куда легче поднять и с этой высоты отпустить и снова приподнять, сейчас нарисую графически:</p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ОБСТОЯТЕЛЬСТВО МЕСТА&nbsp;</span></p><p>Перед словом, обозначающим место действия в китайском языке всегда ставится предлог 在&nbsp;zài. Вся же эта конструкция размещается обычно после обстоятельства времени (см. выше) и перед глаголом — ни в коем случае не после него:</p><p>Субъект +&nbsp;время+&nbsp;предлог 在&nbsp;место&nbsp;+&nbsp;глагол&nbsp;[+объект]</p><p>Это не все возможные струкиуры предложений, имеются еще, но не много))) На этих остановимся. Тренируем, проговариваем, прописываем. Со след.занятия - продолжим по структурам, разберем струкиуры с определениями. В последствии, урока через 2 мы будем оттачивать каждую изученную ранее, до послезавтра, \\\"пробуйте\\\" сегодняшние фразы, говорите их по делу и без[Tongue]пока-пока [Wave]</p><p></p><ol><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">wo3 zai4 shang4 hai3 gong1 zuo4.</span></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">ni3 men xing1 qi1 liu6 zai4 jia1 kan4 dian4 ying3.</span></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">ta1 yao1 jiu3 ba1 ling2 nian2 zai4 mei3guo2 chu1sheng1.</span><br></li></ol><p></p></div>',1,'2016-07-07 01:05:42','2016-07-13 06:59:29'),(3,'СТРУКТУРА КИТАЙСКОГО ПРЕДЛОЖЕНИЯ.  ЧАСТЬ 1','<p><span style=\"\\&quot;font-size:\" large;=\"\" font-weight:=\"\" bold;\\\"=\"\">СТРУКТУРА КИТАЙСКОГО ПРЕДЛОЖЕНИЯ.</span><br></p><p>Начнем с речевой разминки: произносим за мной слова приветствия&nbsp; 你好 ni2 hao3 и прощания再见 zai4 jian4</p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ОПРЕДЕЛЕНИЕ</span></p><p>Продолжая тему \\\"китайских схем\\\", рассмотрим предложения, содержащие описание предметов и объектов. Если объяснять в контексте членов предложения, то говорить мы сегодня будем об определении.</p><blockquote>Напомню，определение - это второстепенный член&nbsp;предложения (главные у нас подлежащее-сказуемое-дополнение), обозначающий признак, качество, свойство предмета.&nbsp;Отвечает на вопросы:&nbsp;какой? который? какая? какое? какие? чей? чья? чьё? чьи?</blockquote><p>Китайское определение обычно выражено прилагательным или причастием. Причастие - это как бы \\\"глагольное\\\" прилагательное, в его основе - действие: сидящий, стоящий, уставший, занятой. Но (!) отдельного класса ПРИЧАСТИЯ в кит.языке нет, это все разновидность прилагательного).Место определения - всегда перед этим предметом или обьектом, которые он описывает, т.е. перед определяемым словом.&nbsp;</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">&nbsp; &nbsp; Определение + определяемое слово</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ хорошие новости 好消息 hao3 xiao1xi</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ новая сумка 新包 xin1 bao1</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ большие глаза 大眼睛 da4yan3jing</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ черная машина 黑车 hei1 che1</span><br></li></ul><p></p><p>Промлушаем звукозапись и&nbsp;потренируемся произносить.</p><p>Как видите, во всех этих примерах - односложные прилагательные(один слог: hao3 - хороший , xin1 - новый, da4 - большой, hei1 - черный).Кстати, всегда рекомендую учить прилагательные в паре с его антонимом, например:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">好 hao3 - 不好 bu hao3&nbsp;хороший-плохой</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">新xin1 - 旧 jiu4 (о состоянии, не о возрасте)новый-старый</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">大 da4 - 小 xiao3боьшой-маленький</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">黑 hei1 - 白 bai2черный-белый</span><br></li></ul><p></p><p>Возвращаемся к вопросу прилагательных, состоящих из 1го слога и нескольких слогов. Схемы построения словосочетаний с односложными прилагательными и многосложными отличаются одной деталью:</p><p>Односложные + описываемый обьект или субъект НАПРЯМУЮ, БЕЗ \\\"ПОМОГАТОРОВ\\\"&nbsp;(служебных слов)</p><p>Многосложные + ПОМОГАТОР 的 de + описываемый обьект или субъект</p><p>НАПРИМЕР:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ 漂亮的姑娘 piao4 liang de gu1 niangкрасивая девушка&nbsp;</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ 漂亮的地方&nbsp;piao4 liang de di4 fangкрасивое место</span><br></li></ul><p></p><p>У приланательного 漂亮&nbsp; piao4 liang, есть синомим 好看&nbsp; hao3 kan4 (красивый), он представляет особый вид прилагательных, который мы сейчас рассмотрим.</p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ПРИЛАГАТЕЛЬНЫЕ СТРУКТУРНОГО ТИПА</span></p><p>\\\" 好看\\\" hao3 kan4.&nbsp;<span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Эти прилагательные состоят из собственно глагола и прилагательного.&nbsp;</span></p><p><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Например:</span></p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ 好看 hao kan (красиво + смотреть)красивый&nbsp;~ 好听 hao ting (красиво + слушать)приятный на слух, благозвучный, мелодичный (о песне, о имени )~ 好吃 hao chi (красиво + кушать)вкусный (о еде)~ 好喝 hao he (красиво + пить)вкусный (о напитках)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ 好看 hao3 kan4 (красиво + смотреть)красивый&nbsp;~ 好听 hao3 ting1 (красиво + слушать)приятный на слух, благозвучный, мелодичный (о песне, о имени )~ 好吃 hao3 chi1 (красиво + кушать)вкусный (о еде)~ 好喝 hao3 he1 (красиво + пить)вкусный (о напитках)</span><br></li></ul><p></p><p>Определения, выражающие притяжательность, отвечающие на вопрос \\\"чьи? чья? чье? чей\\\" строятся так:</p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">МЕСТОИМЕНИЕ/ СУЩЕСТВИТЕЛЬНОЕ </span>+ 的 de</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我 wo3 &gt; 我的 wo3 de</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我们 wo3men &gt; 我们的 wo3men de</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">你 ni3 &gt; 你的 ni3 de</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">你们 ni3 men &gt; 你们的 ni3 men de</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">他 ta1 &gt; 他的 ta1 de</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">她 ta1 &gt; 她 ta1 de</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">他们 ta1 men &gt; 他们的 ta1 men de</span><br></li></ul><p></p><blockquote>ПРАВИЛО: Ели существительное обозначает родственные связи (папа, мама), учителя，соседа, друга, то помогатор определения 的 может опускаться:~ 我爸爸- мой отец~ 我老师&nbsp;– мой учитель~ 我朋友&nbsp;– мой другvПостановка&nbsp;的&nbsp;также не будет считаться ошибкой, она будет подчеркивать принадлежность. Чей папа? - Мой的de</blockquote><p>wo3 ba4ba, wo3 lao3shi1, wo3 peng2you3</p><p>Отвлечемся на секунду, дадим мозгу маааленькую паузу, хочу рассказать вам про слова ОН и ОНА (местоимения).</p><p>Обратите внимание на разное НАПИСАНИЕ этих слов, при СОВЕРШЕННО одинаковом их произнесении. Разница на письме выраженна в неодинаковых левых частях знака: У \\\"он\\\" слева ключ \\\"человек\\\", у \\\"она\\\" - ключ \\\"женщина\\\".</p><p>Порядок начертания приведен ниже. Порядок начертания - это какая черта пишется после какой[Joyful]количество черт также указанны на картинке, сколько черт, во столько КАСАНИЙ и пишем (столько раз отрываем ручку)))</p><p>Давайте уже, последний абзац, по структуре...с определением понятно, а куда его ПОСТАВИТЬ в предложение?&nbsp; Ведь в кит.предложении - всегда фиксированный порядок слов.</p><p>Если включить изученное ОПРЕДЕЛЕНИЕ в основную структуру&nbsp; предложения (П-С-Д), то получим такие варианты расширенных структур:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p> П-С-Опр.-Д&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Опр.-П-С-Д</p><p>Определение может относиться и к тому КТО делает (какой этот \\\"кто-то\\\"?) и к дополнению (какое это \\\"что-то\\\"?)~Я купила новый сотовый телефон~Мой друг учит китайский язык~Я читаю учебник китайского языка</p><p>Не перевожу примеры, нельзя перегружать мозг, чтобы не испугать</p><p>каждую структуру мы будем отрабатывать в последствии. Эта инфа для полной картины. Всем удачного дня и продуктивной учебы</p>',1,'2016-07-07 01:06:12','2016-07-13 06:59:29'),(4,'СТРУКТУРА КИТАЙСКОГО ПРЕДЛОЖЕНИЯ.  ЧАСТЬ 2','<p><span style=\"\\&quot;font-weight:\" bold;=\"\" font-size:=\"\" large;\\\"=\"\">СТРУКТУРА КИТАЙСКОГО ПРЕДЛОЖЕНИЯ.</span></p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ВОПРОСИТЕЛЬНЫЕ СЛОВА.</span></p><p>Давайте подытожим, что мы имеем от предыдуших двух занятий по грамматическим структарам:</p><p>1. В кит.языке ПРЯМОЙ порядок слов, прямой значит определенную последовательность главных членов предложения:&nbsp;вначале ПОДЛЕЖАЩЕЕ, затем СКАЗУЕМОЕ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |КТО? + ДЕЙСТВИЕ</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я говорю - 我说 wǒ shuō</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я читаю/смотрю - 我看 wǒ kàn</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я слушаю - 我听 wǒ tīng</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я пишу - 我写 wǒ xiě</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я кушаю - 我吃 wǒ chī[fàn]</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я пью - 我喝 wǒ hē</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я покупаю - 我买 wǒ mǎi</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я люблю - 我爱 wǒ ài</span><br></li></ul><p></p><p>Потренируемся?</p><p>Другим характерным для кит.языка типом связи является глагольно-объектный:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>ДЕЛАТЬ - ЧТО?Возьмем теже глаголы и добавим к ним объекты действия :</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~говорить \\\"слова\\\" - 说话 shuō huà&nbsp;(слово \\\"говорить\\\" вообще, не что-то конкретное, а просто говорить)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~читать книгу - 看书 kàn shū</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~смотреть кино - 看 kàn diànyǐng</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~слушать песню&nbsp; - 听歌 tīng gē</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~слушать музыку - 听音乐 tīng yīnyuè</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~писать иероглифы -&nbsp; 写字 xiě zì</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~кушать \\\"еду\\\" -&nbsp; 吃饭 chī fàn</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~пить воду - 喝水 hē shuǐ</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~покупать одежду - 买 衣服 mǎi yīfu</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~любить маму - 爱妈妈&nbsp; ài māma</span></li></ul><p></p><p>ПРИМЕЧАНИЕ:&nbsp;</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">饭 fàn - вареный рис изначально, но со временем приобрело значение еды в целом</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">米饭 mǐfàn - рис&nbsp;(как готовое блюдо)</span><br></li></ul><p></p><p>Соединив обе части получим БАЗОВУЮ СТРУКТУРУ предложения, на которую потом можем \\\"нанизывать\\\" какие угодно детали:&nbsp;</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">КТО?&nbsp; + ДЕЛАЕТ + ЧТО?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (База! )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">КТО? + КОГДА? + ДЕЛАЕТ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + ЧТО?&nbsp;&nbsp; (База + деталь \\\"Когда?\\\")&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">КТО? + 在 zài ГДЕ?&nbsp;&nbsp; +ДЕЛАЕТ + ЧТО ?(База + деталь \\\"在 zai Где)</span><br></li></ul><p></p><p>Возьмем пример:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я ДЕЛАЮ ЧТО?- Я пишу иероглифы.&nbsp;我 写 字 wǒ xiě zì</span><br></li></ul><p></p><p>Давайте детализировать:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я КОГДА пишу иероглифы?&nbsp;- Я сегодня пишу иероглифы.&nbsp;我今天写字 wǒ jīntiān xiě zì</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я 在 ГДЕ пишу иероглифы?- Я 在 ДОМ пишу иероглифы.我在家写字 wǒ zài jiā xiě zì</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">Я КОГДА 在 ГДЕ пишу иероглифы?- Я СЕГОДНЯ 在 ДОМ пишу иероглифы&nbsp;我今天在家写字&nbsp;wǒ jīntiān zài jiā xiě zì</span><br></li></ul><p></p><p>И так с любой ситцацией, выделяете в ней того, КТО выполняет действие, само ДЕЙСТВИЕ, записываемое глаголом, и ЧТО (делают). Присоединяем в нужные места детальки, и вуа-ля, предложение готово!)))</p><p>Из частей:</p><p>\\\"Я люблю\\\"(我爱 wǒ ài) или \\\"Мне нравится\\\" (我喜欢 wǒ xǐhuan) + \\\"делать что\\\" =&nbsp; тоже получаются готовые предложения：[Drool]我喜欢说话&nbsp;wǒ xǐhuan shuō huà&nbsp;- мне нравится разговаривать</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我喜欢看书&nbsp;&nbsp;wǒ xǐhuan kàn shū- мне нравится читать книги</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我爱听音乐&nbsp;wǒ ài tīng yīnyuè- я люблю слушать музыку</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我爱吃肉&nbsp;wǒ ài chī ròu- я люблю кушать мясо</span><br></li></ul><p></p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">ВОПРОСИТЕЛЬНЫЕ СЛОВА</span></p><p>Как и в любом языке, в китайском есть вопросительные слова. Рассмотрим некоторык из них:&nbsp;</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">[Shocked]谁? shuí - кто?(Читаем с призвуком [э]: шу(э)й?)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">什么? shénme - что?</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">哪儿？nǎr - куда,&nbsp;с помогатором 在 получается вопрос \\\"где?\\\":</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">在哪儿？ zài nǎr - где</span><br></li></ul><p></p><p>Они могут быть как самостоятельными вопросами:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">谁呀？ shuí ya - Кто там? (ya - экспрессивная частица, эмоционально окрашивает вопрос)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">什么？ shénme - Чё?)))</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">在哪儿？ zài nǎr - Где?</span><br></li></ul><p></p><p>Так и уточнять что-либо в контексте события:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- КТО пишет иероглифы? 谁写字 shuí xiě zì？</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- Я пишу иероглифы&nbsp;我写字 wǒ xiě zì。</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- ЧТО ты пишешь?&nbsp;你写什么 nǐ xiě shénme？(дословно: ты пишешь ЧТО?)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- Я пишу иероглифы&nbsp;我写字 wǒ xiě zì。</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- ГДЕ ты пишешь иероглифы?&nbsp;&nbsp;你在哪儿写字&nbsp;nǐ zài nǎr xiě zì？</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- Я пишу иероглифы дома.我在家写字 wǒ zài jiā xiě zì。</span><br></li></ul><p></p><p>РАСПРОСТРАНЕННЫЕ&nbsp;в быту вопросы с этими вопросительными словами:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~你做什么？nǐ zuò shénmeЧто делаешь, чем занимаешься</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~你干什么？ nǐ gàn shénmeРазговорный вариант вопроса \\\"что делаешь?\\\"</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~你买什么？ nǐ mǎi shénmeЧто покупаешь？</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~你喝什么？nǐ hē shénmeЧто пьешь (будешь пить)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~你吃什么？nǐ chī shénmeЧто кушаешь (будешь кушать)</span><br></li></ul><p></p>',1,'2016-07-07 01:06:35','2016-07-13 06:59:29'),(5,'ВРЕМЕНА В КИТАЙСКОМ ЯЗЫКЕ. ЧАСТЬ 1','<p>ВРЕМЕНА В КИТАЙСКОМ ЯЗЫКЕ</p><p>Из бесед на предыдущем занятии, мы узнали, что китайский язык контекстуален. В некоторых случаях на время может указывать КОНТЕКСТ:</p><p>~你吃什么？nǐ chī shénme</p><p>В зависимости от язвковой ситуции может переводится \\\"Что кушаешь?\\\" или \\\"что будешь кушать\\\".</p><p>‌Настоящее простое может НИКАК не выделяться грамматически:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我说话 wǒ shuō huà - я говорю (слова)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我看书 wǒ kàn shū - я читаю (книгу)</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我看电影 wǒ kàn diànyǐng - я смотрю кино</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我唱歌 wǒ chàng gē - я пою песню</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我听音乐 wǒ tīng yīnyuè - я слушаю музыку</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我写字 wǒ xiě zì - я пишу иероглифы</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我吃饭 wǒ chī fàn - я кушаю</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我喝水 wǒ hē shuǐ - я пью воду</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我买衣服 wǒ mǎi yīfu - я покупаю одежду</span><br></li></ul><p></p><p>Отрицательная форма в настоящем времени&nbsp; образуется с помощью отрицательной частицы&nbsp;不 bù - \\\"не\\\". Ее \\\"родной\\\" тон - четвертый, но она может его менять в процессе речи на второй, в том случае, если после \\\"не\\\" идет слог или слово, читающиеся четвертым тоном:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不说话 wǒ bù shuō huà - я не говорю</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我不看书 wǒ bú kàn shū - я не читаю книгу&nbsp;</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我不看电影 wǒ bú kàn diànyǐng - я не смотрю кино</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我不唱歌 wǒ bú chàng gē - я не пою песню</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我听音乐 wǒ bù tīng yīnyuè - я не слушаю музыку</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不写字 wǒ bù xiě zì - я не пишу иероглифы</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不吃饭 wǒ bù chī fàn - я не кушаю</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不喝水 wǒ bù hē shuǐ - я не пью воду</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不买衣服 wǒ bù mǎi yīfu - я не покупаю одежду</span><br></li></ul><p></p><p>Отрицательная форма в настоящем времени&nbsp; образуется с помощью отрицательной частицы&nbsp;不 bù - \\\"не\\\". Ее \\\"родной\\\" тон - четвертый, но она может его менять в процессе речи на второй, в том случае, если после \\\"не\\\" идет слог или слово, читающиеся четвертым тоном:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不说话 wǒ bù shuō huà - я не говорю</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我不看书 wǒ bú kàn shū - я не читаю книгу&nbsp;</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我不看电影 wǒ bú kàn diànyǐng - я не смотрю кино</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">我不唱歌 wǒ bú chàng gē - я не пою песню</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我听音乐 wǒ bù tīng yīnyuè - я не слушаю музыку</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不写字 wǒ bù xiě zì - я не пишу иероглифы</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不吃饭 wǒ bù chī fàn - я не кушаю</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不喝水 wǒ bù hē shuǐ - я не пью воду</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我不买衣服 wǒ bù mǎi yīfu - я не покупаю одежду</span><br></li></ul><p></p><p>В китайском языке есть целый набор слов, выражающих ВРЕМЯ (сейчас, сегодня, завтра, скоро...) и \\\"помогаторов\\\" для трех групп времен. Трех, их не так много, как например, в английском. Разберем подробнее.</p><p><span style=\"\\&quot;font-size:\" large;=\"\" font-weight:=\"\" bold;\\\"=\"\">1. НАСТОЯЩЕЕ ВРЕМЯ</span></p><p>Слово 现在 xiànzài - сейчас - указывает на&nbsp;настоящее&nbsp;время. Все обозначения времени ставим после подлежащего, помним, да?~我现在忙 wǒ xiànzài máng - я сейчас занят.</p><p>Отметить настоящее время также можно при помощи 在&nbsp;zài, только это не изученный нами предлог местонахождения (zài ГДЕ), а сокращение от 现在&nbsp;xiànzài \\\"сейчас\\\":</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~你在做什么？ nǐ zài zuò shénme - ты сейчас что делаешь?</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~ 我在做饭 - wǒ zài zuò fàn&nbsp; - я сейчас готовлю еду.</span><br></li></ul><p></p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">НАСТОЯЩЕЕ ДЛИТЕЛЬНОЕ:&nbsp;</span></p><p>\\\"Я в данный момент прописываю иероглифы и делаю это какое-то время\\\".</p><p>Чтобы сказать о действии, которое длится некоторое&nbsp;время в настоящем, используется временная, рамочная конструкция:</p><p>在.......呢&nbsp; zài.......ne</p><p>~我在吃饭 呢 wǒ zài chī fàn ne - Я кушаю</p><p>Или можно&nbsp; использовать «正在...呢&nbsp;»&nbsp;</p><p>zhèngzài....ne, 正在 здесь: в настоящий момент, как раз сейчас:</p><p>~我正在写字呢 wǒ zhèngzài xiě zì ne - я сейчас пишу иероглифы.</p><p></p><p>А можно построить предложение по схеме:</p><p>正在 + глагол + 着+ что (дополнение)zhèngzài...zhe...</p><p>~我正在吃着饭 wǒ zhèngzài chī fàn</p><p>А можно построить предложение по схеме:</p><p>正在 + глагол + 着+ что (дополнение)zhèngzài...zhe...</p><p>~我正在吃着饭 wǒ zhèngzài chī zhe fàn</p><p>Вообще, есть еще варианты, но это все скорее для продвинутого уровня или филологов, в речи разговорной и вам лично достаточно&nbsp; пользоваться словом \\\"сейчас\\\" (现在 xiànzài) или конструкцией 在.......呢&nbsp; zài.......ne</p><p><span style=\"\\&quot;font-weight:\" bold;\\\"=\"\">2. ПРОШЕДШЕЕ ВРЕМЯ</span></p><p>Прошедшее время в китайском языке также может не оформляться никакими дополнительными частицами и \\\"узнаваться\\\" из контекста, а также на время могут указывать слова, которые выражают время: вчера, позавчера, на прошлой неделе и т.п.и подобные.&nbsp;</p><p>Кроме того, прошедшее время как я уже говорила может выражаться:</p><p>1) присоединением к глаголу суффикса 了 le</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我说了 wǒ shuō le -&nbsp; я говорила/ сказала&nbsp;</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我看了 wǒ kàn le - я читала/ смотрела</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我看了电影 wǒ kàn le diànyǐng - я смотрела кино</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我唱了歌 wǒ chàng le gē - я пела песню</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我吃了饭 wǒ chī le fàn - я кушала</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我喝了水 wǒ hē le shuǐ - я пила воду</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我买了衣服 wǒ mǎi le yīfu - я покупала/купила одежду</span><br></li></ul><p></p><p>Отрицание формируется с помощью частицы &nbsp;没 méi перед глаголом, при этом 了 убирается:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- 你说什么？nǐ shuō shénme Что ты говоришь?</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">- 我没说什么 wǒ méi shuō shénme -&nbsp; я ничего не сказала&nbsp;</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我没看电影 wǒ méi kàn diànyǐng - я не смотрела кино</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我没吃饭 wǒ méi chī&nbsp; fàn - я не кушала</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我没买衣服 wǒ méi mǎi yīfu - я не покупала/не купила одежду</span><br></li></ul><p></p><p>ПРОШЕДШЕЕ НЕОПРЕДЕЛЕННОЕ&nbsp;</p><p>(был факт, было такое дело, было разочек).Это время указывает на сам факт свершения этого действия, без указания \\\"когда конкретно\\\":&nbsp;</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">я в молодости ездила туда,&nbsp;</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">я пробовала это блюдо,</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">я смотрела это кино,</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">я говорила.</span><br></li></ul><p></p><p>Такая временная категория выражается суффиксом&nbsp;过&nbsp;guò，который ставится после глагола:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~他说过 tā shuō guò - он говорил</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我看过 wǒ kàn guò - я читала/ смотрела</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我去过 wǒ qù guò - я ездила/ ходила (в значении была там)</span><br></li></ul><p></p><p>Отрицание формируется с помощью отрицания 没 méi, но при этом сам суффикс 过&nbsp;guò после глагола сохраняется:</p><p></p><ul><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~他没说过 tā méi shuō guò - он не говорил</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我没看过 wǒ méi kàn guò - я не читала/ смотрела</span><br></li><li><span style=\"\\&quot;line-height:\" 1.72222;\\\"=\"\">~我没吃过 wǒ méi chī guò - я не пробовала (не ела это когда-либо)</span><br></li></ul><p></p><p>Будущее время рассмотрим на следующем занятии, а пока развлечемся счетом до 10, как и обещала</p>',1,'2016-07-07 01:06:54','2016-07-13 06:59:29'),(6,'ВРЕМЕНА В КИТАЙСКОМ ЯЗЫКЕ. ЧАСТЬ 2','<p>фывфвфвфвфывфывфывфы</p>',2,'2016-07-07 01:07:15','2016-07-14 00:30:39'),(7,'Hello','<pre style=\"background-color:#ffffff;color:#000000;font-family:\'DejaVu Sans Mono\';font-size:9.0pt;\">.<span style=\"color:#660e7a;font-weight:bold;\">listActions</span>([<span style=\"color:#008000;font-weight:bold;\">\'edit\'</span>, <span style=\"color:#008000;font-weight:bold;\">\'delete\'</span>]);<br></pre>',2,'2016-07-13 08:34:27','2016-07-14 00:30:39'),(8,'Hello 2','<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">ВВОДНЫЙ БЛОК:</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Фонетика китайского языка очень сильно отличается от&nbsp;фонетики в&nbsp;русском. Китайский язык СЛОГОВОЙ, и это значит, что каждый слог может выражать определенное значение, а может быть и полноценным словом.&nbsp;СЛОВО = СЛОГ или&nbsp;СЛОВО = несколько СЛОГОВБольшинство слов в стандартном кит.языке путунхуа (в простонародье \"мандарин\", именно его мы будем изучать, а не диалектные варианты) состоят из 1 или 2 слогов (\"ма-ма\", \"па-па\" и т.д).&nbsp;Каждый слог записывается иероглифом.СЛОГ &gt;ИЕРОГЛИФ&nbsp;Для чтения иероглифа существует система записи звуков \"пхинь инь\", записывающая звучание иероглифа буквами латинского алфавита.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Китайский язык очень четко СТРУКТУРИРОВАН: у каждого слова в предложении или звука в слоге - свое место! Число звуков, срставляюших слог может быть от 1 до 4. Т.е. в китайском слоге - максимум 4 звука, такой слог называется слогом ПОЛНОГО СОСТАВА, он состоит из&nbsp;начального согласного (инициаль)&nbsp; и&nbsp;вокалической части, сочетающей только гласные или гласные + конечные n или ng (финаль).&nbsp;СЛОГ 4 ЗВУКА = 1 СОГЛАСНЫЙ + 3 ГЛАСНЫХ или 2 ГЛАСНЫХ + n/ngОй-ой-ой подумалось каждому...инициаль, финаль, строгое место...как это все запомнить?! Рекомендую оставлять панику, а пытаться внмкнуть в СИСТЕМУ...это как бусенки, пока все не соберем, бус наи не одеть! Запомнить это все проще простого, в китайском языке 21 согласных (инициалей), и 6 гласных, которые&nbsp; образуюи вместе с конечными n/ng всего 36 вариантов (финалей). НУ неужели нам не по силам запомнить сначала 21, а потом и 36?&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(115, 135, 156); font-family: Gotham, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.123px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Китайские звуки, хоть и записываются латиницей, отличаются от&nbsp;английских, или родных русских. Прежде чем учить возможные слоги (их тоже немного, всего 420!реально осилить за несколько дней) нужно запомнить, как эти звуки произносятся.&nbsp;Ниже приведу эти звуки и&nbsp;их аналоги на&nbsp;русском&nbsp;(но&nbsp;это лишь частичные соответсвия, подсказки на первое время!), лучше потом подписывать для себя слова не русскими звуками, а пхинь инем. Это принципиально!&nbsp; Читайте, и отдавайте себе отчет: \"ЭТО ПОХОЖЕ НА РУССКОЕ ...НО НЕ НА 100%\". Чтобы запоминание шло легче, рекомендую с первого дня занятий очень много слушать и&nbsp;повторять, записывать свой голос и прослушивать, похоже ли это на то, как говорят китайцы)))&nbsp;Подключайте визуальный канал&nbsp;— смотрите, как произносят звуки, слова китайцы в вашем окружении, следить за&nbsp;их&nbsp;губами, \"заглядывайте им в рот\"))))</p>',6,'2016-07-14 00:04:09','2016-07-14 00:32:24');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons_category`
--

DROP TABLE IF EXISTS `lessons_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `lang` enum('ru','en','cn') DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons_category`
--

LOCK TABLES `lessons_category` WRITE;
/*!40000 ALTER TABLE `lessons_category` DISABLE KEYS */;
INSERT INTO `lessons_category` VALUES (1,'Основы китайского языка','ru',1,'2016-07-07 02:17:43','2016-07-14 00:25:52'),(2,'Средний уровень','ru',2,'2016-07-07 02:17:43','2016-07-14 00:30:39'),(6,'Высокий уровень','ru',3,'2016-07-07 02:17:43','2016-07-14 00:32:24');
/*!40000 ALTER TABLE `lessons_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `desc` text,
  `questions` varchar(1000) DEFAULT NULL,
  `category_id` int(16) unsigned NOT NULL,
  `order` int(16) DEFAULT '1',
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quiz_quiz_category1_idx` (`category_id`),
  CONSTRAINT `fk_quiz_quiz_category1` FOREIGN KEY (`category_id`) REFERENCES `quiz_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'Эзкамен #1','Эзкамен #1. Первые 1-4 урока.','1',2,1,1,'2016-07-14 05:40:57','2016-07-15 06:09:23'),(2,'Эзкамен #2','Эзкамен #1.  Уроки №5-8.',NULL,2,1,1,'2016-07-14 05:41:12','2016-07-14 05:42:20');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_answer`
--

DROP TABLE IF EXISTS `quiz_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer` text NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `order` int(11) DEFAULT '1',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_answer`
--

LOCK TABLES `quiz_answer` WRITE;
/*!40000 ALTER TABLE `quiz_answer` DISABLE KEYS */;
INSERT INTO `quiz_answer` VALUES (36,1,'ta',0,1,'2016-07-15 04:43:37','2016-07-15 05:00:51'),(37,1,'wo',1,1,'2016-07-15 04:43:37','2016-07-15 05:00:51'),(38,1,'ni',0,1,'2016-07-15 04:43:37','2016-07-15 05:00:51');
/*!40000 ALTER TABLE `quiz_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_category`
--

DROP TABLE IF EXISTS `quiz_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_category` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `desc` text,
  `published` tinyint(3) unsigned DEFAULT '1',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_category`
--

LOCK TABLES `quiz_category` WRITE;
/*!40000 ALTER TABLE `quiz_category` DISABLE KEYS */;
INSERT INTO `quiz_category` VALUES (2,'Основы китайского',NULL,1,'2016-07-14 04:18:18','2016-07-14 04:18:18');
/*!40000 ALTER TABLE `quiz_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question` (
  `id` int(11) unsigned NOT NULL,
  `question` varchar(1000) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `type` varchar(256) DEFAULT 'radio',
  `published` tinyint(3) unsigned DEFAULT '1',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question`
--

LOCK TABLES `quiz_question` WRITE;
/*!40000 ALTER TABLE `quiz_question` DISABLE KEYS */;
INSERT INTO `quiz_question` VALUES (1,'Как будет Я?','2,4','radio',1,'2016-07-14 06:26:11','2016-07-15 05:00:51');
/*!40000 ALTER TABLE `quiz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_questions_tags`
--

DROP TABLE IF EXISTS `quiz_questions_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_questions_tags` (
  `question_id` int(16) NOT NULL,
  `tag_id` int(16) NOT NULL,
  PRIMARY KEY (`question_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions_tags`
--

LOCK TABLES `quiz_questions_tags` WRITE;
/*!40000 ALTER TABLE `quiz_questions_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_questions_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_reports`
--

DROP TABLE IF EXISTS `quiz_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  `score` varchar(256) NOT NULL,
  `options` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_reports`
--

LOCK TABLES `quiz_reports` WRITE;
/*!40000 ALTER TABLE `quiz_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_tag`
--

DROP TABLE IF EXISTS `quiz_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_tag` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `published` tinyint(3) unsigned DEFAULT '1',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_tag`
--

LOCK TABLES `quiz_tag` WRITE;
/*!40000 ALTER TABLE `quiz_tag` DISABLE KEYS */;
INSERT INTO `quiz_tag` VALUES (2,'основы',NULL,'2016-07-14 06:11:24','2016-07-14 06:11:24'),(3,'простые',NULL,'2016-07-14 06:12:10','2016-07-14 06:12:10'),(4,'еда',NULL,'2016-07-14 06:12:31','2016-07-14 06:13:13'),(5,'покупки',1,'2016-07-14 06:13:24','2016-07-14 06:13:24');
/*!40000 ALTER TABLE `quiz_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resettoken`
--

DROP TABLE IF EXISTS `resettoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resettoken` (
  `token` longtext,
  `owner` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resettoken`
--

LOCK TABLES `resettoken` WRITE;
/*!40000 ALTER TABLE `resettoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `resettoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use`
--

DROP TABLE IF EXISTS `use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use` (
  `remoteAddress` varchar(255) DEFAULT NULL,
  `jsonWebToken` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use`
--

LOCK TABLES `use` WRITE;
/*!40000 ALTER TABLE `use` DISABLE KEYS */;
INSERT INTO `use` VALUES ('127.0.0.1',1,1,'2014-11-14 21:08:08','2014-11-14 21:08:08'),('127.0.0.1',1,2,'2014-11-14 21:10:41','2014-11-14 21:10:41'),('127.0.0.1',1,3,'2014-11-14 21:11:19','2014-11-14 21:11:19');
/*!40000 ALTER TABLE `use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `auth` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test5','yunjia','li','abc5@gmail.com',1,'normal',1,'2014-11-14 21:07:11','2014-11-14 21:07:11'),(2,'bkitaec',NULL,NULL,'kitaec@list.ru',1,'admin',2,'2016-07-07 09:00:05','2016-07-07 09:00:05'),(3,'denys',NULL,NULL,'kitaec01@list.ru',1,'normal',3,'2016-07-13 11:50:13','2016-07-13 11:50:15');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-15 14:17:53

-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: djland
-- ------------------------------------------------------
-- Server version	5.5.52-0+deb7u1

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
-- Table structure for table `adlog`
--

DROP TABLE IF EXISTS `adlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playsheet_id` int(11) DEFAULT NULL,
  `num` smallint(6) DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `name` text CHARACTER SET utf8,
  `played` tinyint(4) DEFAULT NULL,
  `sam_id` int(11) DEFAULT NULL,
  `time_block` int(11) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `edit_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `unixtime` (`id`,`time_block`)
) ENGINE=InnoDB AUTO_INCREMENT=465018 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adlog`
--

LOCK TABLES `adlog` WRITE;
/*!40000 ALTER TABLE `adlog` DISABLE KEYS */;
INSERT INTO `adlog` VALUES (464911,144031,1,'12:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464912,144031,2,'12:20 am','ad','Any Ad',1,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464913,144031,3,'12:20 am','psa','Any PSA',1,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464914,144031,4,'12:40 am','ad','Any Ad',1,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464915,144031,5,'12:40 am','promo','Any Promo',1,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464916,144031,6,'1:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464917,144031,7,'1:20 am','ad','Any Ad',NULL,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464918,144031,8,'1:20 am','psa','Any PSA',NULL,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464919,144031,9,'1:40 am','ad','Any Ad',NULL,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464920,144031,10,'1:40 am','promo','Any Promo',NULL,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464921,144031,11,'1:55 am','announcement','Please announce the upcoming program',NULL,NULL,1468738800,'2016-07-13 03:53:16','2016-07-13 03:53:16'),(464922,144032,1,'5:55 pm','announcement','Please announce the upcoming program',0,NULL,1477184421,'2016-10-23 08:09:08','2016-10-23 08:46:38'),(464923,144034,1,'11:55 pm','announcement','Please announce the upcoming program',1,NULL,1477119600,'2016-10-23 09:00:25','2016-10-23 09:03:03'),(464924,144035,1,'5:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1477483200,'2016-10-27 04:46:48','2016-10-27 04:46:48'),(464925,144035,2,'5:20 am','ad','Any Ad',NULL,NULL,1477483200,'2016-10-27 04:46:48','2016-10-27 04:46:48'),(464926,144035,3,'5:20 am','psa','Any PSA',NULL,NULL,1477483200,'2016-10-27 04:46:48','2016-10-27 04:46:48'),(464927,144035,4,'5:40 am','ad','Any Ad',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464928,144035,5,'5:40 am','promo','Any Promo',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464929,144035,6,'6:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464930,144035,7,'6:20 am','ad','Any Ad',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464931,144035,8,'6:20 am','psa','Any PSA',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464932,144035,9,'6:40 am','ad','Any Ad',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464933,144035,10,'6:40 am','promo','Any Promo',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464934,144035,11,'6:55 am','announcement','Please announce the upcoming program',NULL,NULL,1477483200,'2016-10-27 04:46:49','2016-10-27 04:46:49'),(464935,144036,1,'11:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477551600,'2016-10-28 06:20:17','2016-10-28 06:20:17'),(464936,NULL,1,'11:55 pm','announcement','Please announce the upcoming program',1,NULL,1477551600,'2016-10-28 06:25:44','2016-10-28 06:25:44'),(464937,144037,1,'11:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477465200,'2016-10-28 06:29:28','2016-10-28 06:29:28'),(464938,NULL,1,'11:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477465200,'2016-10-28 06:29:37','2016-10-28 06:29:37'),(464939,144038,1,'5:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1477612800,'2016-10-28 07:57:41','2016-10-28 07:57:41'),(464940,144038,2,'5:20 pm','ad','Any Ad',NULL,NULL,1477612800,'2016-10-28 07:57:41','2016-10-28 07:57:41'),(464941,144038,3,'5:20 pm','psa','Any PSA',1,NULL,1477612800,'2016-10-28 07:57:41','2016-10-28 07:57:41'),(464942,144038,4,'5:40 pm','ad','Any Ad',NULL,NULL,1477612800,'2016-10-28 07:57:41','2016-10-28 07:57:41'),(464943,144038,5,'5:40 pm','promo','Any Promo',NULL,NULL,1477612800,'2016-10-28 07:57:41','2016-10-28 07:57:41'),(464944,144038,6,'5:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477612800,'2016-10-28 07:57:41','2016-10-28 07:57:41'),(464945,NULL,1,'5:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1477612800,'2016-10-28 07:58:42','2016-10-28 07:58:42'),(464946,NULL,2,'5:20 pm','ad','Any Ad',NULL,NULL,1477612800,'2016-10-28 07:58:42','2016-10-28 07:58:42'),(464947,NULL,3,'5:20 pm','psa','Any PSA',1,NULL,1477612800,'2016-10-28 07:58:42','2016-10-28 07:58:42'),(464948,NULL,4,'5:40 pm','ad','Any Ad',NULL,NULL,1477612800,'2016-10-28 07:58:42','2016-10-28 07:58:42'),(464949,NULL,5,'5:40 pm','promo','Any Promo',NULL,NULL,1477612800,'2016-10-28 07:58:42','2016-10-28 07:58:42'),(464950,NULL,6,'5:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477612800,'2016-10-28 07:58:42','2016-10-28 07:58:42'),(464951,NULL,1,'5:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1477612800,'2016-10-28 08:02:29','2016-10-28 08:02:29'),(464952,NULL,2,'5:20 pm','ad','Any Ad',NULL,NULL,1477612800,'2016-10-28 08:02:29','2016-10-28 08:02:29'),(464953,NULL,3,'5:20 pm','psa','Any PSA',1,NULL,1477612800,'2016-10-28 08:02:29','2016-10-28 08:02:29'),(464954,NULL,4,'5:40 pm','ad','Any Ad',NULL,NULL,1477612800,'2016-10-28 08:02:29','2016-10-28 08:02:29'),(464955,NULL,5,'5:40 pm','promo','Any Promo',NULL,NULL,1477612800,'2016-10-28 08:02:29','2016-10-28 08:02:29'),(464956,NULL,6,'5:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477612800,'2016-10-28 08:02:29','2016-10-28 08:02:29'),(464957,144039,1,'12:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464958,144039,2,'12:20 am','ad','Any Ad',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464959,144039,3,'12:20 am','psa','Any PSA',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464960,144039,4,'12:40 am','ad','Any Ad',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464961,144039,5,'12:40 am','promo','Any Promo',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464962,144039,6,'1:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464963,144039,7,'1:20 am','ad','Any Ad',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464964,144039,8,'1:20 am','psa','Any PSA',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464965,144039,9,'1:40 am','ad','Any Ad',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464966,144039,10,'1:40 am','promo','Any Promo',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464967,144039,11,'2:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464968,144039,12,'2:20 am','ad','Any Ad',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464969,144039,13,'2:20 am','psa','Any PSA',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464970,144039,14,'2:40 am','ad','Any Ad',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464971,144039,15,'2:40 am','promo','Any Promo',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464972,144039,16,'2:55 am','announcement','Please announce the upcoming program',NULL,NULL,1477983600,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(464973,144040,1,'12:00 pm','announcement','Please mention your sponsor: N/A - N/A',0,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464974,144040,2,'12:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464975,144040,3,'12:20 pm','ad','Any Ad',0,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464976,144040,4,'12:20 pm','psa','Any PSA',0,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464977,144040,5,'12:40 pm','ad','Any Ad',0,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464978,144040,6,'12:40 pm','promo','Any Promo',0,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464979,144040,7,'1:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464980,144040,8,'1:20 pm','ad','Any Ad',NULL,NULL,1477940400,'2016-11-02 06:37:45','2016-11-02 06:37:45'),(464981,144040,9,'1:20 pm','psa','Any PSA',1,NULL,1477940400,'2016-11-02 06:37:46','2016-11-02 06:37:46'),(464982,144040,10,'1:40 pm','ad','Any Ad',0,NULL,1477940400,'2016-11-02 06:37:46','2016-11-02 06:37:46'),(464983,144040,11,'1:40 pm','promo','Any Promo',1,NULL,1477940400,'2016-11-02 06:37:46','2016-11-02 06:37:46'),(464984,144040,12,'1:55 pm','announcement','Please announce the upcoming program',NULL,NULL,1477940400,'2016-11-02 06:37:46','2016-11-02 06:37:46'),(464985,144040,13,'2:00 pm','announcement','Please mention your sponsor: N/A - N/A',NULL,NULL,1477940400,'2016-11-02 06:37:46','2016-11-02 06:37:46'),(464986,144041,1,'11:40 am','ad','Any Ad',NULL,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464987,144041,2,'11:40 am','promo','Any Promo',1,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464988,144041,3,'12:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464989,144041,4,'12:20 pm','ad','Any Ad',1,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464990,144041,5,'12:20 pm','psa','Any PSA',1,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464991,144041,6,'12:20 pm','promo','Any Promo',NULL,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464992,144041,7,'12:25 pm','announcement','Please announce the upcoming program',1,NULL,1480361400,'2016-11-25 07:55:44','2016-11-25 07:55:44'),(464993,144042,1,'5:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1480640400,'2016-11-25 10:04:12','2016-11-25 10:04:12'),(464994,144042,2,'5:20 pm','ad','Any Ad',1,NULL,1480640400,'2016-11-25 10:04:12','2016-11-25 10:04:12'),(464995,144042,3,'5:20 pm','psa','Any PSA',1,NULL,1480640400,'2016-11-25 10:04:12','2016-11-25 10:04:12'),(464996,144042,4,'5:40 pm','ad','Any Ad',1,NULL,1480640400,'2016-11-25 10:04:12','2016-11-25 10:04:12'),(464997,144042,5,'5:40 pm','promo','Any Promo',1,NULL,1480640400,'2016-11-25 10:04:12','2016-11-25 10:04:12'),(464998,144042,6,'5:55 pm','announcement','Please announce the upcoming program',1,NULL,1480640400,'2016-11-25 10:04:12','2016-11-25 10:04:12'),(464999,NULL,1,'5:00 pm','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',1,NULL,1480640400,'2016-11-25 10:04:15','2016-11-25 10:04:15'),(465000,NULL,2,'5:20 pm','ad','Any Ad',1,NULL,1480640400,'2016-11-25 10:04:15','2016-11-25 10:04:15'),(465001,NULL,3,'5:20 pm','psa','Any PSA',1,NULL,1480640400,'2016-11-25 10:04:15','2016-11-25 10:04:15'),(465002,NULL,4,'5:40 pm','ad','Any Ad',1,NULL,1480640400,'2016-11-25 10:04:15','2016-11-25 10:04:15'),(465003,NULL,5,'5:40 pm','promo','Any Promo',1,NULL,1480640400,'2016-11-25 10:04:15','2016-11-25 10:04:15'),(465004,NULL,6,'5:55 pm','announcement','Please announce the upcoming program',1,NULL,1480640400,'2016-11-25 10:04:15','2016-11-25 10:04:15'),(465005,144043,1,'5:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',0,NULL,1480683600,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(465006,144043,2,'5:20 am','ad','Any Ad',0,NULL,1480683600,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(465007,144043,3,'5:20 am','psa','Any PSA',0,NULL,1480683600,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(465008,144043,4,'5:40 am','ad','Any Ad',0,NULL,1480683600,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(465009,144043,5,'5:40 am','promo','Any Promo',NULL,NULL,1480683600,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(465010,144043,6,'5:55 am','announcement','Please announce the upcoming program',NULL,NULL,1480683600,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(465011,144044,1,'11:00 am','id','You are listening to CJSF Radio 90.1FM, broadcasting from unceded Coast Salish territory in Burnaby, BC',NULL,NULL,1481569200,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(465012,144044,2,'11:20 am','ad','Any Ad',NULL,NULL,1481569200,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(465013,144044,3,'11:20 am','psa','Any PSA',NULL,NULL,1481569200,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(465014,144044,4,'11:40 am','ad','Any Ad',NULL,NULL,1481569200,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(465015,144044,5,'11:40 am','promo','Any Promo',NULL,NULL,1481569200,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(465016,144044,6,'11:55 am','announcement','Please announce the upcoming program',NULL,NULL,1481569200,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(465017,144045,1,'9:55 am','announcement','Please announce the upcoming program',NULL,NULL,1482256800,'2016-12-22 03:59:11','2016-12-22 03:59:11');
/*!40000 ALTER TABLE `adlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djland_options`
--

DROP TABLE IF EXISTS `djland_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djland_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `djland_option` tinytext COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  `CREATED_AT` datetime NOT NULL,
  `UPDATED_AT` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djland_options`
--

LOCK TABLES `djland_options` WRITE;
/*!40000 ALTER TABLE `djland_options` DISABLE KEYS */;
INSERT INTO `djland_options` VALUES (3,'membership_cutoff','2015/2016','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `djland_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djs`
--

DROP TABLE IF EXISTS `djs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `day` text NOT NULL,
  `time` text NOT NULL,
  `dj` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djs`
--

LOCK TABLES `djs` WRITE;
/*!40000 ALTER TABLE `djs` DISABLE KEYS */;
/*!40000 ALTER TABLE `djs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `address` tinytext,
  `website` varchar(60) DEFAULT NULL,
  `phone` varchar(17) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `image_url` varchar(120) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,'',NULL,NULL,NULL,NULL,NULL,'2016-09-13 20:37:44','2016-09-14 00:37:44');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundrive_donors`
--

DROP TABLE IF EXISTS `fundrive_donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundrive_donors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donation_amount` varchar(10) DEFAULT NULL,
  `swag` varchar(1) DEFAULT NULL,
  `tax_receipt` varchar(1) DEFAULT NULL,
  `show_inspired` tinytext,
  `prize` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(4) DEFAULT NULL,
  `postalcode` varchar(6) DEFAULT NULL,
  `phonenumber` varchar(12) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `mail_yes` varchar(1) DEFAULT NULL,
  `postage_paid` varchar(30) DEFAULT NULL,
  `recv_updates_citr` varchar(1) DEFAULT NULL,
  `recv_updates_alumni` varchar(1) DEFAULT NULL,
  `donor_recognition_name` varchar(45) DEFAULT NULL,
  `notes` text,
  `paid` varchar(1) DEFAULT NULL,
  `prize_picked_up` varchar(1) DEFAULT NULL,
  `UPDATED_AT` timestamp NULL DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundrive_donors`
--

LOCK TABLES `fundrive_donors` WRITE;
/*!40000 ALTER TABLE `fundrive_donors` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundrive_donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_members` (
  `user_id` int(10) unsigned NOT NULL,
  `operator` varchar(1) DEFAULT '0',
  `administrator` varchar(1) DEFAULT '0',
  `staff` varchar(1) DEFAULT '0',
  `workstudy` varchar(1) DEFAULT '0',
  `volunteer_leader` varchar(1) DEFAULT '0',
  `volunteer` varchar(45) DEFAULT '0',
  `dj` varchar(1) DEFAULT '0',
  `member` varchar(1) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `userid_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
INSERT INTO `group_members` VALUES (1,'1','1','0','0','0','0','0','0'),(943,'0','0','0','0','0','0','1','0'),(944,'0','0','0','0','0','0','0','1'),(945,'0','0','0','0','0','1','0','0'),(946,'0','0','0','0','0','0','0','1'),(947,'0','0','0','0','0','0','1','0'),(948,'0','0','1','0','0','0','0','0'),(949,'0','0','1','0','0','0','0','0'),(950,'0','0','0','0','0','0','1','0'),(951,'0','0','1','0','0','0','0','0'),(952,'0','0','0','0','0','0','1','0'),(953,'0','0','0','0','0','0','0','1'),(954,'0','0','0','0','0','0','0','1'),(955,'0','0','1','0','0','0','0','0'),(956,'0','0','1','0','0','0','0','0'),(957,'0','0','0','0','0','0','0','1'),(958,'0','0','0','0','0','0','1','0'),(959,'0','0','0','0','0','0','0','1'),(960,'0','0','0','0','0','0','0','1'),(961,'0','0','0','0','0','0','0','1'),(962,'0','0','0','0','0','0','1','0'),(963,'0','0','0','0','0','0','1','0'),(964,'0','0','0','0','0','0','1','0'),(965,'0','0','0','0','0','0','1','0'),(966,'0','0','0','0','0','0','1','0'),(967,'0','0','0','0','0','0','1','0'),(968,'0','0','0','0','0','0','1','0'),(969,'0','0','1','0','0','0','0','0'),(970,'0','0','0','0','0','0','0','1'),(971,'0','0','0','0','0','0','0','1'),(972,'0','0','0','0','0','0','0','1'),(973,'0','0','0','0','0','0','0','1'),(974,'0','0','0','0','0','0','0','1'),(975,'0','0','0','0','0','0','0','1'),(976,'0','0','0','0','0','0','0','1'),(977,'0','0','0','0','0','0','0','1');
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_members_backup`
--

DROP TABLE IF EXISTS `group_members_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_members_backup` (
  `username` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `groupname` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members_backup`
--

LOCK TABLES `group_members_backup` WRITE;
/*!40000 ALTER TABLE `group_members_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_members_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `name` varchar(20) NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL DEFAULT '0',
  `resync_on_login` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hosts`
--

DROP TABLE IF EXISTS `hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosts`
--

LOCK TABLES `hosts` WRITE;
/*!40000 ALTER TABLE `hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `format_id` tinyint(4) unsigned NOT NULL DEFAULT '8',
  `catalog` tinytext,
  `crtc` int(8) DEFAULT NULL,
  `cancon` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `femcon` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `local` int(1) unsigned NOT NULL DEFAULT '0',
  `playlist` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `compilation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `digitized` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinytext,
  `artist` tinytext,
  `title` tinytext,
  `label` tinytext,
  `genre` tinytext,
  `added` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `text_desc` (`artist`,`title`,`label`,`genre`)
) ENGINE=MyISAM AUTO_INCREMENT=57532 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (57528,0,'84073',NULL,1,0,0,1,0,0,'cd-071','Friday aka Ricky Dred','shift','Urbnet','Hip Hop','2016-11-01','2016-11-01'),(57529,0,'dfa',NULL,1,0,0,0,0,0,'','dfa','dfa','dfa','dsfa','2016-11-01','2016-11-01'),(57530,0,'12321',NULL,0,0,0,0,0,0,'','','','','','2016-11-01','2016-11-01'),(57531,0,'12341',NULL,0,1,0,0,0,0,'231','213','231','3231','231','2016-11-17','2016-11-17');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_status`
--

DROP TABLE IF EXISTS `login_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_status` (
  `name` varchar(20) NOT NULL DEFAULT '0',
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_status`
--

LOCK TABLES `login_status` WRITE;
/*!40000 ALTER TABLE `login_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_resources`
--

DROP TABLE IF EXISTS `member_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_resources` (
  `index` int(10) NOT NULL AUTO_INCREMENT,
  `num` tinyint(4) DEFAULT NULL,
  `blurb` tinytext,
  `link` tinytext,
  `link_name` tinytext,
  `type` varchar(45) DEFAULT 'general',
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_resources`
--

LOCK TABLES `member_resources` WRITE;
/*!40000 ALTER TABLE `member_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_show`
--

DROP TABLE IF EXISTS `member_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_show` (
  `member_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_show`
--

LOCK TABLES `member_show` WRITE;
/*!40000 ALTER TABLE `member_show` DISABLE KEYS */;
INSERT INTO `member_show` VALUES (1,1,1),(1,448,996),(972,448,997),(1,452,1011),(967,453,1015),(974,450,1018),(973,495,1020);
/*!40000 ALTER TABLE `member_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lastname` varchar(90) NOT NULL,
  `firstname` varchar(90) NOT NULL,
  `canadian_citizen` varchar(1) NOT NULL COMMENT 'citizen, immigrant, visitor',
  `address` varchar(55) NOT NULL,
  `city` varchar(45) NOT NULL DEFAULT 'Vancouver',
  `province` varchar(4) NOT NULL DEFAULT 'BC',
  `postalcode` varchar(6) NOT NULL,
  `member_type` varchar(9) NOT NULL COMMENT 'student, community, alumni, lifetime',
  `is_new` varchar(1) NOT NULL DEFAULT '0',
  `alumni` varchar(1) NOT NULL DEFAULT '0',
  `since` varchar(9) NOT NULL DEFAULT '2014/2015',
  `faculty` varchar(22) DEFAULT NULL,
  `schoolyear` varchar(2) DEFAULT NULL,
  `student_no` varchar(8) DEFAULT NULL COMMENT 'Student Number',
  `integrate` varchar(1) NOT NULL DEFAULT '0',
  `has_show` varchar(1) NOT NULL DEFAULT '0',
  `show_name` varchar(100) DEFAULT NULL,
  `primary_phone` varchar(10) NOT NULL,
  `secondary_phone` varchar(10) DEFAULT NULL,
  `email` tinytext NOT NULL,
  `comments` tinytext,
  `about` text,
  `skills` text,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `exposure` text,
  `station_tour` varchar(1) DEFAULT '0',
  `technical_training` varchar(1) DEFAULT '0',
  `programming_training` varchar(1) DEFAULT '0',
  `production_training` varchar(1) DEFAULT '0',
  `spoken_word_training` varchar(1) DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `student_no_UNIQUE` (`student_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (1,'Almighty','Admin','0','464','Vancouver','BC','V','Community','0','0','2014/2015',NULL,NULL,NULL,'0','0','','778','','fei@djland.ca','','','','pending','','0','0','0','0','0','2016-11-08 23:37:41','2016-07-13 03:43:34'),(967,'Moussi','Fahim','1','2770 East 1','Vancouver','BC','v5m1a7','Community','1','0','2014/2015',NULL,NULL,NULL,'0','1','','4388850532','','fahim.moussi@gmail.com','','','','pending','','1','1','1','1','1','2016-11-08 23:50:35','2016-11-09 07:50:35'),(970,'Yousefbigloo','Katayoon','1','moop','Vancouver','BC','111111','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','','6044424657','7787823076','cjsfmusc@sfu.ca','','','','pending','','0','0','0','0','0','2016-11-24 00:46:33','2016-11-24 08:46:33'),(971,'Eriksson','Robin','0','1','Vancouver','BC','1','Student','1','0','2016/2017','','1','00000000','0','0','','6044423299','','robinsabird@gmail.com','','','','pending','','0','0','0','0','0','2016-11-24 00:48:15','2016-11-24 08:48:15'),(972,'Gradowski','Jacob','0','1','Vancouverouver','BC','1','Community','0','0','2009/2010',NULL,NULL,NULL,'0','1','The Arts Show','6049161962','','jacob_gradowski@hotmail.com','He is sooo good at hats yo','Wear\'s hats.','Good at wearing hats.\n','pending','someone\'s hat.','1','1','1','1','1','2016-11-24 23:04:50','2016-11-25 07:04:50'),(973,'Wentzloff','Jesse','0','2, 124 W 11th Avenue','Vancouver','BC','V5L1S6','Community','0','0','2007/2008',NULL,NULL,NULL,'0','1','The Vancouver Mixtape','6043476201','7787824423','jessewentzloff@gmail.com','','CJSF Public Affairs & Talk Coordinator','Interviews, Recording, Production, Research, you name it!','pending','','0','0','0','0','0','2016-12-07 23:12:36','2016-12-08 07:12:36'),(974,'Fantastic','Bimo','0','SFU Burnaby','Burnaby','BC','v0v1v0','Community','1','0','2016/2017',NULL,NULL,NULL,'0','0','','5149312175','','fahim.moussi+bimo@gmail.com','','','','pending','','0','0','0','0','0','2016-12-07 23:11:30','2016-12-08 07:11:30'),(977,'Koval','Alina','0','','','AB','','Staff','1','0','2016/2017','Arts','1','0','0','1','Jumbalaya','7788386405','','art.alinakoval@gmail.com','','','','pending','','0','0','0','0','0','2017-01-24 01:27:07','2017-01-24 01:27:07'),(978,'Nichols','Jodie','1','n/a','n/a','AB','n/a','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Jumbalaya','6043456986','','nilevalleygirl@hotmail.com','','','','pending','','0','0','0','0','0','2017-01-24 01:07:52','2017-01-24 01:07:52'),(989,'ow','me','','','','AB','','Community','1','0','2016/2017','Arts','1','','0','0','','3424234','','fahim.moussi+meow@gmail.com','','','','pending','','0','0','0','0','0','2017-01-24 01:30:36','2017-01-24 01:30:36'),(992,'meow','test','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','0','','342342342','','fahim.moussi+testing@gmail.com',NULL,'','','pending','','0','0','0','0','0','2017-01-25 19:54:33','2017-01-25 19:54:33'),(995,'mcfluff','sprinkles','','','','AB','','Community','0','0','2016/2017',NULL,NULL,NULL,'0','1','dfa','4564564654','','fahim.moussi+meowie@gmail.com',NULL,'','','pending','','0','0','0','0','0','2017-01-25 20:00:07','2017-01-25 20:00:07'),(996,'Al-Rainbows','Snuggles','','','','AB','','Student','1','0','2016/2017',NULL,'1','23103023','0','0','','342342123','','fahim.moussi+dfak@gmail.com',NULL,'','','pending','','0','0','0','0','0','2017-01-25 22:39:21','2017-01-25 22:39:21'),(997,'Gonzalez','Joaquin','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','VANCOUVER HISPANO','7788222099','','vancouverhispano@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:28:46','2017-01-26 22:28:46'),(998,'Aaron','Jon','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Rad Radio','7782231561','','Jonaaron85@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:28:31','2017-01-26 22:28:31'),(999,'Lacelle','Andrew','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Outlaw Jamboree ','7788925626','','andrewdlacelle@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:28:18','2017-01-26 22:28:18'),(1000,'Chan','Matt','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Straight No Chaser','6043066086','','matt.chanbros@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:27:57','2017-01-26 22:27:57'),(1001,'K','Chanel','','123 easy street','vancouver','AB','123456','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','DOPE HAUS','6044417154','','chanelklein604@gmail.com','','www.dopeha.us','videography and hosting','pending','email','0','0','0','0','0','2017-01-26 22:27:26','2017-01-26 22:27:26'),(1005,'Jaggernauth','Samuel','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Pirates of the Caribbean & West Indies Culture Shock','6047263542','','Jaggie_2@yahoo.com','','','','pending','','0','0','0','0','0','2017-01-26 22:27:06','2017-01-26 22:27:06'),(1006,'Harder','Elaine','','','','AB','','Student','1','0','2016/2017','','1','9190.16','0','1','The Arts Edge','6047079096','7789559606','egh@sfu.ca','','','','pending','','0','0','0','0','0','2017-01-26 22:26:19','2017-01-26 22:26:19'),(1007,'Yee','Chris','','','','AB','','Community','0','0','2016/2017',NULL,NULL,NULL,'0','0','','7782295376','','cmc.yee@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:24:31','2017-01-26 22:24:31'),(1008,'Esdale','Ian','','','','AB','','Student','1','0','2016/2017','','1','30124765','0','0','','7782462296','','iesdale@sfu.ca','','','','pending','','0','0','0','0','0','2017-01-26 22:23:52','2017-01-26 22:23:52'),(1009,'Mears','Rebecca','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Essencetial Conversations','6048668246','','gimbha@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:23:05','2017-01-26 22:23:05'),(1011,'Livan','Michael','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','The Metal Meltdown','6046822536','6047276376','michaellivan@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:22:51','2017-01-26 22:22:51'),(1012,'de Monoloq','Mark','','461 Elmer Street','New Westminster','BC','V3L 4M','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','The Observatory','6048421007','','markdemonoloq@gmail.com','','','','pending','','0','0','0','0','0','2017-01-26 22:22:35','2017-01-26 22:22:35'),(1013,'Montague','Mike','','','','AB','','Community','1','0','2016/2017',NULL,NULL,NULL,'0','0','Stuff','7782330947','','mmontagu@shaw.ca',NULL,'','','pending','','0','0','0','0','0','2017-01-27 00:01:12','2017-01-27 00:01:12'),(1014,'Scheck','Laura','','','','AB','','Community','0','0','2016/2017',NULL,NULL,NULL,'0','1','FemConquest','6047835981','','laurascheck14@gmail.com',NULL,'','','pending','','0','0','0','0','0','2017-01-27 01:00:56','2017-01-27 01:00:56'),(1015,'Dorantes','Antonio','','2722 Alice Lake Place','Coquitlam','BC','V3C5W8','Community','1','0','2016/2017',NULL,NULL,NULL,'0','1','Radio Alicia, The Metal Meltdown','6043149257','','srmisterio901@gmail.com',NULL,'','','pending','','0','0','0','0','0','2017-01-27 01:58:42','2017-01-27 01:58:42'),(1016,'Chilton','Ryan','','','','AB','','Student','0','0','2016/2017',NULL,'1','30121590','0','1','Symphony In The Morning','7787894260','','ryanjohnchilton@yahoo.ca',NULL,'','','pending','','0','0','0','0','0','2017-02-01 20:01:27','2017-02-01 20:01:27');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_backup`
--

DROP TABLE IF EXISTS `membership_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_backup` (
  `id` int(11) NOT NULL DEFAULT '0',
  `lastname` tinytext CHARACTER SET latin1,
  `firstname` tinytext CHARACTER SET latin1,
  `gender` tinytext CHARACTER SET latin1,
  `cdn` tinyint(1) DEFAULT NULL,
  `address` tinytext CHARACTER SET latin1,
  `city` tinytext CHARACTER SET latin1,
  `postal` tinytext CHARACTER SET latin1,
  `cell` tinytext CHARACTER SET latin1,
  `home` tinytext CHARACTER SET latin1,
  `work` tinytext CHARACTER SET latin1,
  `email` tinytext CHARACTER SET latin1,
  `status_id` int(11) NOT NULL DEFAULT '5',
  `joined` year(4) NOT NULL DEFAULT '0000',
  `last_paid` year(4) NOT NULL DEFAULT '0000',
  `comments` tinytext CHARACTER SET latin1,
  `show` tinytext CHARACTER SET latin1,
  `djs` tinyint(4) NOT NULL DEFAULT '0',
  `mobile` tinyint(4) NOT NULL DEFAULT '0',
  `newsdept` tinyint(4) NOT NULL DEFAULT '0',
  `sportsdept` tinyint(4) NOT NULL DEFAULT '0',
  `board` tinyint(4) NOT NULL DEFAULT '0',
  `discorder` tinyint(4) NOT NULL DEFAULT '0',
  `executive` tinyint(4) NOT NULL DEFAULT '0',
  `women` tinyint(4) NOT NULL DEFAULT '0',
  `fill_in` tinyint(4) NOT NULL DEFAULT '0',
  `dept` tinyint(4) NOT NULL DEFAULT '0',
  `int_music` tinyint(4) NOT NULL DEFAULT '0',
  `int_arts` tinyint(4) NOT NULL DEFAULT '0',
  `int_spoken` tinyint(4) NOT NULL DEFAULT '0',
  `int_magazine` tinyint(4) NOT NULL DEFAULT '0',
  `int_promotions` tinyint(4) NOT NULL DEFAULT '0',
  `int_livesound` tinyint(1) DEFAULT NULL,
  `int_design` tinyint(1) DEFAULT NULL,
  `int_web` tinyint(1) DEFAULT NULL,
  `int_progcom` tinyint(1) DEFAULT NULL,
  `int_adpsa` tinyint(1) DEFAULT NULL,
  `int_video` tinyint(1) DEFAULT NULL,
  `int_other` tinytext CHARACTER SET latin1,
  `added` date DEFAULT NULL,
  `modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_backup`
--

LOCK TABLES `membership_backup` WRITE;
/*!40000 ALTER TABLE `membership_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_status`
--

DROP TABLE IF EXISTS `membership_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_status`
--

LOCK TABLES `membership_status` WRITE;
/*!40000 ALTER TABLE `membership_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_years`
--

DROP TABLE IF EXISTS `membership_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_years` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) unsigned NOT NULL,
  `membership_year` varchar(9) NOT NULL,
  `paid` varchar(1) NOT NULL DEFAULT '0',
  `sports` varchar(1) DEFAULT '0',
  `news` varchar(1) DEFAULT '0',
  `arts` varchar(1) DEFAULT '0',
  `music` varchar(1) DEFAULT '0',
  `show_hosting` varchar(1) DEFAULT '0',
  `live_broadcast` varchar(1) DEFAULT '0',
  `tech` varchar(1) DEFAULT '0',
  `programming_committee` varchar(1) DEFAULT '0',
  `ads_psa` varchar(1) DEFAULT '0',
  `promotions_outreach` varchar(1) DEFAULT '0',
  `discorder` varchar(1) DEFAULT '0',
  `discorder_2` varchar(1) DEFAULT '0',
  `digital_library` varchar(1) DEFAULT '0',
  `photography` varchar(1) DEFAULT '0',
  `tabling` varchar(45) DEFAULT '0',
  `dj` varchar(1) DEFAULT '0',
  `other` varchar(45) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL,
  `womens_collective` varchar(16) DEFAULT '0',
  `indigenous_collective` varchar(16) DEFAULT '0',
  `accessibility_collective` varchar(16) DEFAULT '0',
  PRIMARY KEY (`id`,`member_id`,`membership_year`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `id` FOREIGN KEY (`member_id`) REFERENCES `membership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=915 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_years`
--

LOCK TABLES `membership_years` WRITE;
/*!40000 ALTER TABLE `membership_years` DISABLE KEYS */;
INSERT INTO `membership_years` VALUES (1,1,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0'),(882,967,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-11-09 07:24:21','2016-11-09 08:05:15','0','0','0'),(885,970,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-11-24 08:26:43','2016-12-08 08:07:20','0','0','0'),(886,971,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,'2016-11-24 08:42:51','2016-11-24 08:42:51','0','0','0'),(887,972,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-11-25 06:56:48','2016-11-25 09:31:07','0','0','0'),(888,973,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-12-03 05:44:13','2017-01-26 19:58:02','0','0','0'),(889,974,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-12-08 07:10:33','2016-12-08 10:57:53','0','0','0'),(892,977,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-12-22 04:36:59','2017-01-26 22:29:35','0','0','0'),(893,978,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2016-12-22 04:40:06','2017-01-24 01:07:52','0','0','0'),(895,989,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-24 01:29:46','2017-01-24 01:32:01','0','0','0'),(896,992,'2016/2017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-25 19:54:34','2017-01-25 19:54:34','0','0','0'),(897,995,'2016/2017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-25 20:00:07','2017-01-25 20:00:07','0','0','0'),(898,996,'2016/2017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-25 22:39:22','2017-01-25 22:39:22','0','0','0'),(899,997,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 00:40:59','2017-01-26 22:28:46','0','0','0'),(900,998,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 00:41:26','2017-01-26 22:28:31','0','0','0'),(901,999,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 00:50:22','2017-01-26 22:28:18','0','0','0'),(902,1000,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 00:53:12','2017-01-26 22:27:57','0','0','0'),(903,1001,'2016/2017','1','0','0','0','1','1','1','0','0','0','0','0','0','0','1','0','0','','2017-01-26 01:01:04','2017-01-26 22:27:26','0','0','0'),(904,1005,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 01:50:02','2017-01-26 22:27:06','0','0','0'),(905,1006,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 01:50:07','2017-01-26 22:26:19','0','0','0'),(906,1007,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 03:26:03','2017-01-26 22:24:31','0','0','0'),(907,1008,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 04:31:03','2017-01-26 22:23:52','0','0','0'),(908,1009,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 04:46:38','2017-01-26 22:23:05','0','0','0'),(909,1011,'2016/2017','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-26 17:20:17','2017-01-26 22:22:51','0','0','0'),(910,1012,'2016/2017','1','0','0','1','1','1','1','1','0','0','0','0','0','0','0','0','0','','2017-01-26 19:28:30','2017-01-26 22:22:35','0','0','0'),(911,1013,'2016/2017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-27 00:01:13','2017-01-27 00:01:13','0','0','0'),(912,1014,'2016/2017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-01-27 01:00:57','2017-01-27 01:00:57','0','0','0'),(913,1015,'2016/2017','0','1','0','0','1','1','1','1','0','0','0','0','0','1','0','0','0','','2017-01-27 01:52:58','2017-01-27 01:58:42','0','0','0'),(914,1016,'2016/2017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2017-02-01 20:01:27','2017-02-01 20:01:27','0','0','0');
/*!40000 ALTER TABLE `membership_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_years_backup`
--

DROP TABLE IF EXISTS `membership_years_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_years_backup` (
  `id` int(11) NOT NULL DEFAULT '0',
  `membership_id` int(11) NOT NULL DEFAULT '0',
  `paid_year` year(4) NOT NULL DEFAULT '0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_years_backup`
--

LOCK TABLES `membership_years_backup` WRITE;
/*!40000 ALTER TABLE `membership_years_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_years_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2015_08_02_013709_eloquent_ldap_setup_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playitems`
--

DROP TABLE IF EXISTS `playitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playitems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` int(10) unsigned DEFAULT NULL,
  `playsheet_id` bigint(20) unsigned DEFAULT NULL,
  `song_id` bigint(20) unsigned DEFAULT NULL,
  `format_id` tinyint(3) unsigned DEFAULT NULL,
  `is_playlist` tinyint(1) unsigned DEFAULT '0',
  `is_canadian` tinyint(1) unsigned DEFAULT '0',
  `is_yourown` tinyint(1) unsigned DEFAULT '0',
  `is_indy` tinyint(1) unsigned DEFAULT '0',
  `is_fem` tinyint(3) unsigned DEFAULT '0',
  `show_date` date DEFAULT NULL,
  `duration` tinytext,
  `is_theme` tinyint(3) unsigned DEFAULT NULL,
  `is_background` tinyint(3) unsigned DEFAULT NULL,
  `crtc_category` int(8) DEFAULT '20',
  `lang` tinytext,
  `is_part` int(1) NOT NULL DEFAULT '0',
  `is_inst` int(1) NOT NULL DEFAULT '0',
  `is_hit` int(1) NOT NULL DEFAULT '0',
  `insert_song_start_hour` tinyint(4) DEFAULT '0',
  `insert_song_start_minute` tinyint(4) DEFAULT '0',
  `insert_song_length_minute` tinyint(4) DEFAULT '0',
  `insert_song_length_second` tinyint(4) DEFAULT '0',
  `artist` varchar(80) DEFAULT NULL,
  `song` varchar(80) DEFAULT NULL,
  `album` varchar(80) DEFAULT NULL,
  `composer` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `playitem_playsheet_id_idx` (`playsheet_id`),
  KEY `playitem_show_id_idx` (`show_id`),
  CONSTRAINT `playitem_playsheet_id` FOREIGN KEY (`playsheet_id`) REFERENCES `playsheets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1829837 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playitems`
--

LOCK TABLES `playitems` WRITE;
/*!40000 ALTER TABLE `playitems` DISABLE KEYS */;
INSERT INTO `playitems` VALUES (1829777,1,144038,NULL,NULL,0,1,0,0,0,'2016-10-27',NULL,NULL,NULL,20,'English',0,1,0,0,0,0,0,'Innerske','Pigs','-',NULL),(1829778,1,144038,NULL,NULL,1,1,0,0,1,'2016-10-27',NULL,NULL,NULL,20,'English',0,1,0,0,0,0,0,'Hollow Twin','Bound By Blood','-',NULL),(1829779,1,144038,NULL,NULL,0,1,0,0,1,'2016-10-27',NULL,NULL,NULL,20,'English',0,1,0,0,0,0,0,'Jock Tears','Biggy Pop','Sassy Attitude',NULL),(1829780,1,144038,NULL,NULL,1,1,0,0,0,'2016-10-27',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'Tim The Mute','Welcome to the terrordome','Take my life, Please!',NULL),(1829781,1,144038,NULL,NULL,0,0,0,0,1,'2016-10-27',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'La Femme','Sur La Plage','Hypsoline',NULL),(1829782,1,144039,NULL,NULL,0,0,0,0,0,'2016-11-01',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,12,'Mac Demarco + Jacob Gradowski','ID 37 MAC De Marco','dfs',''),(1829783,1,144039,NULL,NULL,0,0,0,0,0,'2016-11-01',NULL,NULL,NULL,20,'English',0,0,0,0,0,118,56,'dfads','Outlaw Jamboree October 3','df',''),(1829784,1,144039,NULL,NULL,0,0,0,0,0,'2016-11-01',NULL,NULL,NULL,20,'English',0,0,0,0,5,0,22,'dfa','ID 41 Halloween Spooky (22s)','fdsaf',''),(1829808,448,144042,NULL,NULL,1,1,0,0,0,'2016-11-24',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'Daniel Terrence Robertson','House','Death',NULL),(1829809,448,144042,NULL,NULL,1,1,0,0,1,'2016-11-24',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'Fake Tears','The Party Ends','Nightshifting',NULL),(1829810,448,144042,NULL,NULL,1,1,0,0,0,'2016-11-24',NULL,NULL,NULL,20,'English',0,1,0,0,0,0,0,'Gal Gracen','Ma-Ha-Bone','BLUE HEARTS IN EXILE',NULL),(1829811,448,144042,NULL,NULL,1,1,0,0,1,'2016-11-24',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'New Pornographers, The','The Bleeding Heart Show','Twin Cinema',NULL),(1829812,448,144042,NULL,NULL,1,1,0,0,1,'2016-11-24',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'Shirley Gnome','Menage Au Twat','C*untry Music',NULL),(1829813,448,144042,NULL,NULL,1,0,0,0,0,'2016-11-24',NULL,NULL,NULL,20,'English',0,0,0,0,0,0,0,'Faith Healer','Cry','Quarter Life Crisis',NULL),(1829831,452,144045,NULL,NULL,0,0,0,0,0,'2016-12-20',NULL,NULL,NULL,20,'English',0,0,0,10,0,0,28,'','ID 46 British (28s)','a',''),(1829832,452,144045,NULL,NULL,0,0,0,0,0,'2016-12-20',NULL,NULL,NULL,20,'English',0,0,0,10,0,29,0,'Dec 20','Finished show December 12th','a',''),(1829833,452,144045,NULL,NULL,0,0,0,0,0,'2016-12-20',NULL,NULL,NULL,20,'English',0,0,0,10,29,0,51,'','Fri1230AM Full Spectrum House (50s)','a',''),(1829834,452,144045,NULL,NULL,0,0,0,0,0,'2016-12-20',NULL,NULL,NULL,20,'English',0,0,0,10,30,0,24,'','ID 03 Dan Mangan (24s)','a',''),(1829835,452,144045,NULL,NULL,0,0,0,0,0,'2016-12-20',NULL,NULL,NULL,20,'English',0,0,0,10,30,28,56,'Dec 20','MakingCon_161214_Ax','aa',''),(1829836,452,144045,NULL,NULL,0,0,0,0,0,'2016-12-20',NULL,NULL,NULL,20,'English',0,0,0,10,59,1,5,'','NastyJag POTC Show promo','a','');
/*!40000 ALTER TABLE `playitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playsheets`
--

DROP TABLE IF EXISTS `playsheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playsheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` int(10) unsigned DEFAULT NULL,
  `host` tinytext CHARACTER SET latin1,
  `host_id` int(10) unsigned DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `end` time DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` tinytext CHARACTER SET latin1,
  `edit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` tinytext CHARACTER SET latin1,
  `edit_name` tinytext CHARACTER SET latin1,
  `summary` mediumtext CHARACTER SET latin1,
  `spokenword_duration` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `unix_time` int(11) DEFAULT NULL,
  `star` tinyint(4) DEFAULT NULL,
  `crtc` int(11) DEFAULT NULL,
  `lang` text CHARACTER SET latin1,
  `type` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `show_name` tinytext CHARACTER SET latin1,
  `socan` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `recent` (`id`,`edit_date`,`status`),
  KEY `playsheet_show_id_idx` (`show_id`),
  CONSTRAINT `playsheet_show_id` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144046 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playsheets`
--

LOCK TABLES `playsheets` WRITE;
/*!40000 ALTER TABLE `playsheets` DISABLE KEYS */;
INSERT INTO `playsheets` VALUES (144038,448,'Jacob Gradowski, Jamie Cessford',NULL,'2016-10-27 17:00:00','2016-10-27 18:00:00',NULL,'2016-10-28 00:57:41','Admin','2016-10-28 08:36:30','Arts Show Oct 27th','Admin','It was hella sick',30,2,1477612800,NULL,20,'English','Live','The Arts Show',NULL),(144039,448,'Jacob Gradowski, Jamie Cessford',NULL,'2016-11-01 00:00:00','2016-11-01 03:00:00',NULL,'2016-11-01 22:51:30','Admin','2016-11-02 05:51:30','dfa','Admin','dfa',60,2,1477983600,NULL,20,'English','Live','The Arts Show',NULL),(144042,448,'Jacob Gradowski, Jamie Cessford',NULL,'2016-11-24 17:00:00','2016-11-24 18:00:00',NULL,'2016-11-25 02:04:12','Jgradowski','2016-11-25 10:04:15','yes','Jgradowski','yooooo',25,1,1480035600,NULL,20,'English','Live','The Arts Show',NULL),(144045,452,NULL,NULL,'2016-12-20 10:00:00','2016-12-20 13:00:00',NULL,'2016-12-21 19:59:11','Admin','2016-12-22 04:17:28',NULL,'Admin',NULL,NULL,1,1482256800,NULL,20,'English','Live','Jumbalaya',NULL);
/*!40000 ALTER TABLE `playsheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast_channels`
--

DROP TABLE IF EXISTS `podcast_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcast_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `subtitle` text,
  `summary` text,
  `author` text,
  `keywords` text,
  `owner_name` text,
  `owner_email` text,
  `episode_default_title` text,
  `episode_default_subtitle` text,
  `episode_default_author` text,
  `link` text,
  `image_url` text,
  `audio_url_prefix` text,
  `keep_n_episodes` int(4) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `xml` text,
  `slug` text,
  `edit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast_channels`
--

LOCK TABLES `podcast_channels` WRITE;
/*!40000 ALTER TABLE `podcast_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `podcast_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast_episodes`
--

DROP TABLE IF EXISTS `podcast_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcast_episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playsheet_id` bigint(20) unsigned NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `title` text,
  `subtitle` text,
  `summary` text,
  `date` datetime DEFAULT NULL,
  `iso_date` text,
  `url` text,
  `length` int(11) DEFAULT NULL,
  `author` text,
  `active` tinyint(1) DEFAULT '0',
  `duration` int(7) DEFAULT '0',
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_AT` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast_episodes`
--

LOCK TABLES `podcast_episodes` WRITE;
/*!40000 ALTER TABLE `podcast_episodes` DISABLE KEYS */;
INSERT INTO `podcast_episodes` VALUES (28272,144031,447,'afdadfadsfa','dfadf','dfadf','2016-07-10 00:00:00','Sun, 10 Jul 2016 00:00:00 -0700',NULL,NULL,NULL,1,7200,'2016-10-23 09:14:08','2016-07-13 03:53:16'),(28273,144032,1,'Yay','cool stuff','cool stuff','2016-10-22 10:06:21','Sat, 22 Oct 2016 10:06:21 -0700',NULL,NULL,'SOmeone',1,10419,'2016-10-23 08:46:37','2016-10-23 08:09:08'),(28274,144033,1,'dfa','dfasdf','dfasdf','2016-10-22 00:00:00','Sat, 22 Oct 2016 00:00:00 -0700',NULL,NULL,'SOmeone',1,10800,'2016-10-23 09:00:25','2016-10-23 09:00:25'),(28275,144034,1,'ewad','efadfa','efadfa','2016-10-22 00:00:00','Sat, 22 Oct 2016 00:00:00 -0700',NULL,NULL,'SOmeone',1,28800,'2016-10-23 09:03:07','2016-10-23 09:03:03'),(28276,144035,447,NULL,NULL,NULL,'2016-10-26 05:00:00','Wed, 26 Oct 2016 05:00:00 -0700',NULL,NULL,NULL,0,10800,'2016-10-27 04:46:48','2016-10-27 04:46:48'),(28277,144036,1,'testtt','teststr','teststr','2016-10-27 00:00:00','Thu, 27 Oct 2016 00:00:00 -0700',NULL,NULL,'SOmeone',1,54000,'2016-10-28 06:27:07','2016-10-28 06:20:16'),(28278,144037,1,'dfasdf','dfasdfa','dfasdfa','2016-10-26 00:00:00','Wed, 26 Oct 2016 00:00:00 -0700',NULL,NULL,'SOmeone',1,140400,'2016-10-28 06:29:36','2016-10-28 06:29:27'),(28279,144038,448,'Arts Show Oct 27th','It was hella sick','It was hella sick','2016-10-27 17:00:00','Thu, 27 Oct 2016 17:00:00 -0700',NULL,NULL,'Jacob Gradowski, Jamie Cessford',1,3600,'2016-10-28 08:36:31','2016-10-28 07:57:41'),(28280,144039,448,'dfa','dfa','dfa','2016-11-01 00:00:00','Tue, 1 Nov 2016 00:00:00 -0700',NULL,NULL,'Jacob Gradowski, Jamie Cessford',1,10800,'2016-11-02 05:51:30','2016-11-02 05:51:30'),(28281,144040,449,'Halloween 2016','Pre-recorded Halloween episode, all music with no commentary.','Pre-recorded Halloween episode, all music with no commentary.','2016-10-31 12:00:00','Mon, 31 Oct 2016 12:00:00 -0700',NULL,NULL,'Nick Lagasse',1,7200,'2017-01-31 23:00:47','2016-11-02 06:37:44'),(28282,144041,450,NULL,NULL,NULL,'2016-11-24 11:30:00','Thu, 24 Nov 2016 11:30:00 -0700',NULL,NULL,'Amy Goodman',1,5400,'2016-11-25 09:38:51','2016-11-25 07:55:44'),(28283,144042,448,'yes','yooooo','yooooo','2016-11-24 17:00:00','Thu, 24 Nov 2016 17:00:00 -0700',NULL,NULL,'Jacob Gradowski, Jamie Cessford',1,3600,'2016-11-25 11:26:02','2016-11-25 10:04:12'),(28284,144043,450,NULL,NULL,NULL,'2016-12-02 05:00:00','Fri, 2 Dec 2016 05:00:00 -0700',NULL,NULL,'Amy Goodman',0,284400,'2016-12-03 05:34:59','2016-12-03 05:34:59'),(28285,144044,450,NULL,NULL,NULL,'2016-12-12 11:00:00','Mon, 12 Dec 2016 11:00:00 -0700',NULL,NULL,'Amy Goodman',0,3600,'2016-12-13 12:35:47','2016-12-13 12:35:47'),(28286,144045,452,NULL,NULL,NULL,'2016-12-20 10:00:00','Tue, 20 Dec 2016 10:00:00 -0700',NULL,NULL,NULL,0,10800,'2016-12-22 04:17:28','2016-12-22 03:59:11');
/*!40000 ALTER TABLE `podcast_episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_times`
--

DROP TABLE IF EXISTS `show_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `show_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_id` int(10) NOT NULL,
  `start_day` int(3) NOT NULL,
  `start_time` time NOT NULL,
  `end_day` int(3) NOT NULL,
  `end_time` time NOT NULL,
  `alternating` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`show_id`,`start_day`,`start_time`,`end_day`,`end_time`,`alternating`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_times`
--

LOCK TABLES `show_times` WRITE;
/*!40000 ALTER TABLE `show_times` DISABLE KEYS */;
INSERT INTO `show_times` VALUES (2,448,0,'17:00:00',4,'20:00:00',1),(3,448,4,'17:00:00',4,'18:00:00',2),(4,449,1,'12:00:00',1,'14:00:00',0),(6,454,1,'07:00:00',1,'09:00:00',0),(7,455,1,'14:00:00',1,'15:00:00',0),(8,457,1,'20:00:00',1,'22:00:00',0),(9,458,1,'22:00:00',2,'00:00:00',0),(10,459,2,'15:00:00',2,'16:00:00',0),(11,460,2,'18:00:00',2,'20:00:00',0),(12,461,2,'20:00:00',2,'22:00:00',0),(13,462,3,'06:00:00',3,'08:00:00',0),(15,463,3,'08:00:00',3,'09:00:00',0),(16,464,1,'10:00:00',1,'11:00:00',0),(17,465,4,'07:00:00',4,'09:00:00',0),(18,466,4,'12:00:00',4,'13:00:00',0),(19,467,4,'18:00:00',4,'20:00:00',2),(20,468,4,'18:00:00',4,'20:00:00',1),(21,469,4,'21:00:00',4,'22:00:00',0),(22,470,4,'22:00:00',5,'00:00:00',0),(23,471,0,'08:00:00',0,'09:00:00',0),(24,472,3,'19:00:00',3,'21:00:00',0),(25,473,3,'21:00:00',4,'00:00:00',0),(26,474,5,'07:00:00',5,'09:00:00',0),(27,475,5,'14:00:00',5,'15:00:00',0),(28,476,5,'15:00:00',5,'16:00:00',0),(30,477,5,'18:00:00',4,'20:00:00',0),(31,478,5,'20:00:00',5,'22:00:00',0),(32,479,5,'22:00:00',6,'00:30:00',0),(33,480,6,'00:30:00',6,'05:00:00',0),(34,481,6,'10:00:00',5,'11:00:00',0),(35,482,6,'11:00:00',6,'12:00:00',0),(36,483,5,'12:00:00',5,'14:00:00',0),(37,484,6,'14:00:00',6,'16:00:00',0),(38,485,6,'16:00:00',6,'18:00:00',0),(39,486,6,'18:00:00',6,'19:00:00',0),(40,487,6,'21:00:00',6,'22:00:00',2),(41,488,6,'22:00:00',0,'00:00:00',0),(42,489,0,'00:00:00',0,'02:00:00',0),(43,490,0,'02:00:00',0,'05:00:00',0),(45,491,0,'10:00:00',0,'13:00:00',0),(46,492,0,'14:00:00',0,'16:00:00',0),(47,493,0,'16:00:00',0,'18:00:00',0),(48,494,0,'18:00:00',0,'20:00:00',0),(49,495,0,'20:00:00',0,'21:00:00',0),(50,496,0,'21:00:00',1,'00:00:00',0),(51,452,0,'13:00:00',0,'14:00:00',0),(52,452,1,'15:00:00',1,'16:00:00',0),(53,452,2,'12:00:00',2,'13:00:00',0),(54,452,2,'13:00:00',2,'14:00:00',0),(55,452,2,'14:00:00',2,'15:00:00',0),(56,452,3,'12:00:00',3,'13:00:00',0),(57,452,3,'13:00:00',3,'14:00:00',0),(58,452,3,'15:00:00',3,'16:00:00',0),(59,452,4,'13:00:00',4,'14:00:00',0),(60,452,4,'14:00:00',4,'15:00:00',0),(61,452,4,'15:00:00',4,'16:00:00',0),(62,452,5,'12:00:00',5,'13:00:00',0),(63,452,5,'13:00:00',5,'14:00:00',0),(64,452,6,'19:00:00',6,'20:00:00',0),(65,464,2,'10:00:00',2,'11:00:00',0),(66,464,4,'10:00:00',4,'11:00:00',0),(67,464,5,'10:00:00',5,'11:00:00',0),(68,497,2,'17:00:00',2,'18:00:00',0),(70,498,3,'10:00:00',3,'11:00:00',0),(71,499,4,'09:00:00',4,'10:00:00',0),(72,500,5,'17:00:00',5,'18:00:00',0),(73,501,6,'20:00:00',6,'21:00:00',1);
/*!40000 ALTER TABLE `show_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8,
  `host` tinytext COLLATE utf8_unicode_ci,
  `primary_genre_tags` text COLLATE utf8_unicode_ci,
  `secondary_genre_tags` text CHARACTER SET utf8,
  `weekday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '00:00:00',
  `pl_req` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cc_req` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `indy_req` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fem_req` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_show` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_name` tinytext CHARACTER SET utf8 NOT NULL,
  `edit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edit_name` tinytext CHARACTER SET utf8,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `crtc_default` int(8) NOT NULL DEFAULT '20',
  `lang_default` tinytext CHARACTER SET utf8,
  `website` tinytext CHARACTER SET utf8,
  `rss` tinytext CHARACTER SET utf8,
  `show_desc` text CHARACTER SET utf8,
  `notes` text CHARACTER SET utf8,
  `show_img` tinytext CHARACTER SET utf8,
  `sponsor_name` tinytext CHARACTER SET utf8,
  `sponsor_url` tinytext CHARACTER SET utf8,
  `showtype` varchar(45) CHARACTER SET utf8 DEFAULT 'Live',
  `explicit` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `alerts` text CHARACTER SET utf8,
  `podcast_xml` tinytext COLLATE utf8_unicode_ci,
  `podcast_slug` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `podcast_title` tinytext COLLATE utf8_unicode_ci,
  `podcast_subtitle` tinytext COLLATE utf8_unicode_ci,
  `podcast_summary` text COLLATE utf8_unicode_ci,
  `podcast_author` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (448,'The Arts Show','Jacob Gradowski, Jamie Cessford',NULL,NULL,0,'00:00:00','00:00:00',1,35,0,35,'0000-00-00 00:00:00','2016-10-27 23:42:22','Admin','2016-11-23 07:03:44','Admin',1,20,'English',NULL,NULL,'Da good \'ish!','he\'s da good \'ish',NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(449,'Wandering Rhythms','Nick Lagasse',NULL,NULL,0,'00:00:00','00:00:00',0,12,0,0,'0000-00-00 00:00:00','2016-11-01 22:54:04','Admin','2016-11-09 00:38:03','Admin',1,20,'English','www.wanderingrhythms.com',NULL,'Funky music from all 8 corners of the world',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(452,'Jumbalaya',NULL,NULL,NULL,0,'00:00:00','00:00:00',80,35,0,35,'0000-00-00 00:00:00','2016-11-24 23:18:06','robinsabird','2017-01-18 00:32:49','robinsabird',1,20,'English','',NULL,'Your unpredictable new music mix that\'s always delicious!',NULL,NULL,NULL,NULL,'Live','0','New Music',NULL,NULL,NULL,NULL,NULL,NULL),(454,'Outlaw Jamboree',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:38:27','robinsabird','2017-01-17 23:38:27','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(455,'Generic Alternative',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:39:31','robinsabird','2017-01-17 23:39:31','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(456,'Vancouver Hispana',NULL,NULL,NULL,0,'00:00:00','00:00:00',20,15,0,35,'0000-00-00 00:00:00','2017-01-17 15:40:27','robinsabird','2017-01-17 23:40:27','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(457,'The Metal Meltdown',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:43:17','robinsabird','2017-01-17 23:43:17','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(458,'The Undie Scene',NULL,NULL,NULL,0,'00:00:00','00:00:00',60,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:44:11','robinsabird','2017-01-17 23:44:11','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(459,'Golbang',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 15:45:34','robinsabird','2017-01-17 23:45:34','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(460,'The Downliner\'s Crypt',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:46:28','robinsabird','2017-01-18 19:00:53','robinsabird',1,20,'English',NULL,NULL,'',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(461,'Melodies in Mind',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:47:10','robinsabird','2017-01-17 23:47:10','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(462,'On the Tracks',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:48:08','robinsabird','2017-01-17 23:48:08','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(463,'Symphony in the Morning',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 15:49:04','robinsabird','2017-01-17 23:49:13','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(464,'Speak Up!',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-17 15:51:28','robinsabird','2017-01-18 18:59:41','robinsabird',1,20,'English',NULL,NULL,'',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(465,'Rockin\' Blues Show',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,15,25,35,'0000-00-00 00:00:00','2017-01-17 15:52:35','robinsabird','2017-01-17 23:52:35','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(466,'Hot Fried Chicken Show',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,15,25,35,'0000-00-00 00:00:00','2017-01-17 15:53:29','robinsabird','2017-01-18 21:15:26','robinsabird',1,30,'English',NULL,NULL,'',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(467,'Pot O\' Pie',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:55:37','robinsabird','2017-01-17 23:55:37','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(468,'The Arts Show: LP Edition',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:56:34','robinsabird','2017-01-18 21:11:34','robinsabird',1,20,'English',NULL,NULL,'',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(469,'Tana Radio',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 15:57:32','robinsabird','2017-01-17 23:57:32','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(470,'Rad Radio',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 15:58:17','robinsabird','2017-01-17 23:58:17','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(471,'The Jazz Spectrum',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,15,25,35,'0000-00-00 00:00:00','2017-01-17 16:00:45','robinsabird','2017-01-18 00:00:45','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(472,'Sons Lusitanos',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 16:01:57','robinsabird','2017-01-18 00:01:57','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(473,'Beyond That',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:02:33','robinsabird','2017-01-18 00:02:33','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(474,'Nasha Volna',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 16:03:28','robinsabird','2017-01-18 00:03:28','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(475,'FemConquest',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:04:16','robinsabird','2017-01-18 00:04:16','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(476,'Franco Delice',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 16:05:10','robinsabird','2017-01-18 00:05:10','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(477,'Snuff',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:05:58','robinsabird','2017-01-18 00:05:58','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(478,'Straight No Chaser',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:11:28','robinsabird','2017-01-18 00:11:28','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(479,'The Observatory',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:12:21','robinsabird','2017-01-18 00:12:21','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(480,'The Observatory Extended Mix',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-17 16:13:27','robinsabird','2017-01-18 00:13:27','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(481,'The Hit Parade',NULL,NULL,NULL,0,'00:00:00','00:00:00',60,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:14:25','robinsabird','2017-01-18 00:14:25','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(482,'Chetverta Khvilya',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 16:15:27','robinsabird','2017-01-18 00:15:27','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(483,'That Chinese Show',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,0,35,'0000-00-00 00:00:00','2017-01-17 16:16:19','robinsabird','2017-01-18 00:16:19','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(484,'African Connection',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:17:16','robinsabird','2017-01-18 00:17:16','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(485,'Pirates of the Caribbean',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:18:10','robinsabird','2017-01-18 00:18:10','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(486,'Arts Edge',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-17 16:19:33','robinsabird','2017-01-18 00:19:33','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(487,'Dope Haus',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:20:38','robinsabird','2017-01-18 00:20:38','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(488,'Ascension',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:21:25','robinsabird','2017-01-18 00:21:25','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(489,'Hip Hop Happens',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:22:18','robinsabird','2017-01-18 00:22:18','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(490,'More Hip Hop',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:22:59','robinsabird','2017-01-18 00:22:59','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(491,'The Gospel Lounge',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,25,35,'0000-00-00 00:00:00','2017-01-17 16:23:50','robinsabird','2017-01-18 00:23:50','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(492,'Il Sole Italiano',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,25,35,'0000-00-00 00:00:00','2017-01-17 16:24:56','robinsabird','2017-01-18 00:24:56','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(493,'Radio Alicia',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,15,25,35,'0000-00-00 00:00:00','2017-01-17 16:25:41','robinsabird','2017-01-18 00:25:41','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(494,'Yuca Stereo',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,15,25,35,'0000-00-00 00:00:00','2017-01-17 16:26:23','robinsabird','2017-01-18 00:26:23','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(495,'Vancouver Mixtape','Jesse Wentzloff,','Rock / Pop / Indie,Hip Hop / R&B / Soul,Electronic,Experimental',NULL,0,'00:00:00','00:00:00',60,35,25,35,'0000-00-00 00:00:00','2017-01-17 16:26:56','robinsabird','2017-01-18 00:26:56','Jessewentzloff',1,20,'English',NULL,NULL,'@Vanmixtape',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,'West Indies Culture Shock',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,15,25,35,'0000-00-00 00:00:00','2017-01-17 16:27:35','robinsabird','2017-01-18 00:27:35','robinsabird',1,30,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(497,'SFU Ideas & Issues',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-18 11:01:39','robinsabird','2017-01-18 19:01:39','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(498,'IntraVenus',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-18 11:03:29','robinsabird','2017-01-18 19:03:29','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499,'CJSF Sports Report',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-18 11:05:30','robinsabird','2017-01-18 19:05:30','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(500,'Essence-tial Conversations',NULL,NULL,NULL,0,'00:00:00','00:00:00',0,0,0,0,'0000-00-00 00:00:00','2017-01-18 11:43:54','robinsabird','2017-01-18 19:43:54','robinsabird',1,20,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(501,'AfroCentric',NULL,NULL,NULL,0,'00:00:00','00:00:00',40,35,25,35,'0000-00-00 00:00:00','2017-01-18 13:20:10','robinsabird','2017-01-18 21:25:12','robinsabird',1,20,'English',NULL,NULL,'',NULL,NULL,NULL,NULL,'Live','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socan`
--

DROP TABLE IF EXISTS `socan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socan` (
  `idSocan` int(10) unsigned NOT NULL,
  `socanStart` date DEFAULT NULL,
  `socanEnd` date DEFAULT NULL,
  PRIMARY KEY (`idSocan`),
  UNIQUE KEY `idSocan_UNIQUE` (`idSocan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table for socan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socan`
--

LOCK TABLES `socan` WRITE;
/*!40000 ALTER TABLE `socan` DISABLE KEYS */;
/*!40000 ALTER TABLE `socan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` int(10) NOT NULL,
  `social_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `social_url` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES (3,0,'Mixcloud Podcasts','www.mixcloud.com/wanderingrhythms'),(4,0,'Soundcloud Page','www.soundcloud.com/wanderingrhythms'),(5,449,'Facebook','facebook.com'),(8,495,'Twitter','https://twitter.com/vanmixtape'),(9,495,'Facebook','https://www.facebook.com/VancouverMixtape/');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artist` tinytext,
  `title` tinytext,
  `song` tinytext,
  `composer` tinytext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1434132 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_events`
--

DROP TABLE IF EXISTS `special_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(455) DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  `description` text,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `image` varchar(455) DEFAULT NULL,
  `url` varchar(455) DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_events`
--

LOCK TABLES `special_events` WRITE;
/*!40000 ALTER TABLE `special_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_format`
--

DROP TABLE IF EXISTS `types_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_format` (
  `id` int(11) DEFAULT '0',
  `name` tinytext,
  `sort` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_format`
--

LOCK TABLES `types_format` WRITE;
/*!40000 ALTER TABLE `types_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `types_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'enabled',
  `create_date` timestamp NULL DEFAULT NULL,
  `edit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edit_name` varchar(30) DEFAULT NULL,
  `login_fails` mediumint(9) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`member_id`),
  UNIQUE KEY `member_id_UNIQUE` (`member_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `membership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=978 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'Admin','$2y$10$THwLkgYUDxQ6bR469E07.uzgGEE8dnmv.7NmtVOLZsE.Jfv12Vgk6','enabled','2016-07-06 01:35:00','2016-11-25 07:11:11',NULL,0,NULL),(945,967,'fahim','$2y$10$mn9mTdUFxQOCHoyoQIFmrug0fav2EVFoYyEx9LbvhEepJBckAz4Dy','enabled','2016-11-09 07:24:21','2016-11-09 07:24:21',NULL,0,NULL),(948,970,'kyousefbigloo','$2y$10$mrWZcL7gDBq7xJCbSRCmo.OfIRU5shvqMyX2j6EaXTTUTP2t1zwV2','enabled','2016-11-24 08:26:43','2016-11-24 08:26:43',NULL,0,NULL),(949,971,'robinsabird','$2y$10$grybaZjBcqHq3b7lZz2E0.jCdHz87tqNNo27lzAfv7uGzoZnmytVy','enabled','2016-11-24 08:42:51','2016-11-24 08:42:51',NULL,0,NULL),(950,972,'Jgradowski','$2y$10$9Xn/OYJyufMUAbRiBRRwcudmGPpwOBOXnLKoreAuoyJW8g9SEASza','enabled','2016-11-25 06:56:48','2016-11-25 06:56:48',NULL,0,NULL),(951,973,'Jessewentzloff','$2y$10$cKBTVmnNjQ4G0pDPdqMK4uRfCW4SzrHxNG5Gci5nLvy7LILVNJAmy','enabled','2016-12-03 05:44:13','2017-01-26 19:58:02',NULL,0,NULL),(952,974,'bimo','$2y$10$T.7JezZ9EAAHLWo5M9gNz..NUZY/rbAvSUb4q6FevNREtNdsRU8/.','enabled','2016-12-08 07:10:33','2016-12-08 07:10:33',NULL,0,NULL),(955,977,'akoval','$2y$10$R7DfIva9W5TLuAX2REMb9OrmuvUWQlfKP4x1ATzyf9K4QLukKCWGa','enabled','2016-12-22 04:36:59','2016-12-22 04:36:59',NULL,0,NULL),(956,978,'CJSFJodie','$2y$10$19eA0yUt7uTAOnRQDDnzJuhwfUF8.cnIdhYMEC7BQ3h/ZVK3tsx46','enabled','2016-12-22 04:40:06','2016-12-22 04:40:06',NULL,0,NULL),(958,989,'meowmix','$2y$10$sajH.WcCC6uKsacbmFwW5OZrjyzs3ZLUJvF6e6TWd5LkeMBtcTrci','enabled','2017-01-24 01:29:46','2017-01-24 01:29:46',NULL,0,NULL),(959,992,'test3','$2y$10$WiAbVj7LGrAMSZS5r7PPzuXTPEJnUmf0vLMq.qbmy0j.UF8VmleVK','enabled','2017-01-25 19:54:33','2017-01-25 19:54:33',NULL,0,NULL),(960,995,'meow3','$2y$10$HdP0feYcDdWzR9uyYwUBleUcFkLXPjY2QWST3II3qWZ98.eyG.hhu','enabled','2017-01-25 20:00:07','2017-01-25 20:00:07',NULL,0,NULL),(961,996,'meow4','$2y$10$dvZmLya4ai2PAvm1KXyOxe/affnv3Dc9OVuh0aexuw8lsVcCUQd5q','enabled','2017-01-25 22:39:22','2017-01-25 22:39:22',NULL,0,NULL),(962,997,'quimetpayo','$2y$10$PR/F02RuUudL3M3MuNLuRumJyP56FXAuu5PjdLXyTLVqHqYZ6tVt.','enabled','2017-01-26 00:40:58','2017-01-26 00:40:58',NULL,0,NULL),(963,998,'JonnyBones','$2y$10$jxBI2AiL1jJoJ5oFVDB4heFf0ZextB3ee9Vst2YnAAiTTnSLZjRMa','enabled','2017-01-26 00:41:26','2017-01-26 00:41:26',NULL,0,NULL),(964,999,'Outlaw Jamboree','$2y$10$k9fLDlUP0Rf8wHkN3UxmretA3r3AIuJGtrV91VxyXAEBQ1h4frsz.','enabled','2017-01-26 00:50:22','2017-01-26 00:50:22',NULL,0,NULL),(965,1000,'matt.chanbros','$2y$10$mg8Vhg6.cg36N.P4gucJqOG9dGCfYU.VfsHdKA1i3YEvzISyMjWlK','enabled','2017-01-26 00:53:12','2017-01-26 00:53:12',NULL,0,NULL),(966,1001,'dopehaus','$2y$10$2DRlHA3.A3S4DB8iCdGCIu/bEAmA7iingietjS4IeHUkkjL/seMuS','enabled','2017-01-26 01:01:04','2017-01-26 01:01:04',NULL,0,NULL),(967,1005,'NastyJag','$2y$10$H7h0jGfse.B3Nz0fk61LPeWQPdjv5CgUM6eskhp4Ax0xr7oe1s.9a','enabled','2017-01-26 01:50:02','2017-01-26 01:50:02',NULL,0,NULL),(968,1006,'Annie Roach','$2y$10$V0RmfDq7T4BUhe.X.h.iYe7fIjYXMnUyyZaqnHKhEPU98BWPFb9cC','enabled','2017-01-26 01:50:07','2017-01-26 01:50:07',NULL,0,NULL),(969,1007,'cmcyee','$2y$10$26ASqpcdPsJBOd25mTkFceC2F5zS2ZamnhKAVz1OP9j/dgZsFhJKS','enabled','2017-01-26 03:26:03','2017-01-26 03:26:03',NULL,0,NULL),(970,1008,'Ian','$2y$10$nSwtFORTp998Rq0PGicP3OCoMBMI2S/u/rgcJxAplCr6otwlmVg/O','enabled','2017-01-26 04:31:03','2017-01-26 04:31:03',NULL,0,NULL),(971,1009,'gimbha','$2y$10$R9oeHWO.pg24RpkThPWGkOJVl8hapnnw6FMZhm0mH/oOv2lozua1K','enabled','2017-01-26 04:46:38','2017-01-26 04:46:38',NULL,0,NULL),(972,1011,'metalmeltdown','$2y$10$LimTfZI3xMcF.ghXroPCu.5JbNadYce5qARbmkNnzdbsqHtGdU8lC','enabled','2017-01-26 17:20:16','2017-01-26 17:20:16',NULL,0,NULL),(973,1012,'markdemonoloq','$2y$10$qiDFtHbsY0JSfgrf7FEp2Ot8Q0j1cEzaI0ns4S2Fhqb4dqxyd0zBq','enabled','2017-01-26 19:28:30','2017-01-26 19:28:30',NULL,0,NULL),(974,1013,'arcweld','$2y$10$ZK/msZAaSQEVV8S12znmUua11MmtIckeDI/5BGtkiV9Khzpv2LLSy','enabled','2017-01-27 00:01:13','2017-01-27 00:01:13',NULL,0,NULL),(975,1014,'lscheck','$2y$10$hpWQ9siIPl/Fffkn4FyfG.W1UILzjusIuix3W1iF9HCND0hZ4GaSe','enabled','2017-01-27 01:00:56','2017-01-27 01:00:56',NULL,0,NULL),(976,1015,'doranstein','$2y$10$3AW.utrBfbomlqFfad9/h.Oa2jKcaZrxrOR87HwjHTGvDA5JW8qG2','enabled','2017-01-27 01:52:58','2017-01-27 01:52:58',NULL,0,NULL),(977,1016,'rchilton','$2y$10$/cUR2U9C2OA32clB6/cSSe3RBJ4ARsqXZhxoD5b9kMkUidp1zNQmq','enabled','2017-02-01 20:01:27','2017-02-01 20:01:27',NULL,0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_backup`
--

DROP TABLE IF EXISTS `user_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_backup` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `password` char(100) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `status` char(20) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `create_name` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_name` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `login_fails` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_backup`
--

LOCK TABLES `user_backup` WRITE;
/*!40000 ALTER TABLE `user_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `year_rollover`
--

DROP TABLE IF EXISTS `year_rollover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `year_rollover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_year` varchar(16) NOT NULL DEFAULT '2014/2015',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year_rollover`
--

LOCK TABLES `year_rollover` WRITE;
/*!40000 ALTER TABLE `year_rollover` DISABLE KEYS */;
INSERT INTO `year_rollover` VALUES (1,'2016/2017');
/*!40000 ALTER TABLE `year_rollover` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02 12:14:09

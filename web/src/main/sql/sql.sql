CREATE DATABASE  IF NOT EXISTS `es` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `es`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: es
-- ------------------------------------------------------
-- Server version	5.5.34

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'根',0,'0/',NULL,1,1,NULL),(2,'浙江',1,'0/1/','icon-ok-sign',1,1,NULL),(3,'杭州',2,'0/1/2/',NULL,1,1,NULL),(12,'宁波',2,'0/1/2/',NULL,2,1,NULL),(16,'江苏',1,'0/1/','icon-ok-sign',1,1,NULL),(17,'苏州',16,'0/1/16/','ztree_leaf',1,1,NULL),(18,'南京',16,'0/1/16/','ztree_leaf',1,1,NULL),(20,'苏州',16,'0/1/16/',NULL,3,1,NULL),(21,'tttttt',16,'0/1/16/','ztree_leaf',4,1,NULL),(22,'rr',1,'0/1/','ztree_leaf',2,1,NULL),(23,'eee',22,'0/1/22/','ztree_leaf',1,0,NULL);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'tttt',1000,1),(2,'111',2000,1),(3,'住宅',3000,1),(4,'rrrr',4000,1),(5,'333',5000,1),(6,'333',6000,1),(7,'123',7000,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain_icon`
--

DROP TABLE IF EXISTS `maintain_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintain_icon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identity` varchar(100) DEFAULT NULL,
  `css_class` varchar(100) DEFAULT NULL,
  `img_src` varchar(200) DEFAULT NULL,
  `width` smallint(6) DEFAULT NULL,
  `height` smallint(6) DEFAULT NULL,
  `sprite_src` varchar(200) DEFAULT NULL,
  `left` smallint(6) DEFAULT NULL,
  `top` smallint(6) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_maintain_icon_identity` (`identity`)
) ENGINE=InnoDB AUTO_INCREMENT=1516 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain_icon`
--

LOCK TABLES `maintain_icon` WRITE;
/*!40000 ALTER TABLE `maintain_icon` DISABLE KEYS */;
INSERT INTO `maintain_icon` VALUES (1,'icon-adjust','icon-adjust',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(2,'icon-anchor','icon-anchor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(3,'icon-archive','icon-archive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(4,'icon-asterisk','icon-asterisk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(5,'icon-ban-circle','icon-ban-circle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(6,'icon-bar-chart','icon-bar-chart',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(7,'icon-barcode','icon-barcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(8,'icon-beaker','icon-beaker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(9,'icon-beer','icon-beer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(10,'icon-bell','icon-bell',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(11,'icon-bell-alt','icon-bell-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(12,'icon-bolt','icon-bolt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(13,'icon-book','icon-book',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(14,'icon-bookmark','icon-bookmark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(15,'icon-bookmark-empty','icon-bookmark-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(16,'icon-briefcase','icon-briefcase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(17,'icon-bug','icon-bug',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(18,'icon-building','icon-building',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(19,'icon-bullhorn','icon-bullhorn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(20,'icon-bullseye','icon-bullseye',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(21,'icon-calendar','icon-calendar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(22,'icon-calendar-empty','icon-calendar-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(23,'icon-camera','icon-camera',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(24,'icon-camera-retro','icon-camera-retro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(25,'icon-certificate','icon-certificate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(26,'icon-check','icon-check',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(27,'icon-check-empty','icon-check-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(28,'icon-check-minus','icon-check-minus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(29,'icon-check-sign','icon-check-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(30,'icon-circle','icon-circle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(31,'icon-circle-blank','icon-circle-blank',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(32,'icon-cloud','icon-cloud',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(33,'icon-cloud-download','icon-cloud-download',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(34,'icon-cloud-upload','icon-cloud-upload',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(35,'icon-code','icon-code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(36,'icon-code-fork','icon-code-fork',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(37,'icon-coffee','icon-coffee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(38,'icon-cog','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(39,'icon-cogs','icon-cogs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(40,'icon-collapse','icon-collapse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(41,'icon-collapse-alt','icon-collapse-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(42,'icon-collapse-top','icon-collapse-top',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(43,'icon-comment','icon-comment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(44,'icon-comment-alt','icon-comment-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(45,'icon-comments','icon-comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(46,'icon-comments-alt','icon-comments-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(47,'icon-compass','icon-compass',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(48,'icon-credit-card','icon-credit-card',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(49,'icon-crop','icon-crop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(50,'icon-dashboard','icon-dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(51,'icon-desktop','icon-desktop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(52,'icon-download','icon-download',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(53,'icon-download-alt','icon-download-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(54,'icon-edit','icon-edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(55,'icon-edit-sign','icon-edit-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(56,'icon-ellipsis-horizontal','icon-ellipsis-horizontal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(57,'icon-ellipsis-vertical','icon-ellipsis-vertical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(58,'icon-envelope','icon-envelope',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(59,'icon-envelope-alt','icon-envelope-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(60,'icon-eraser','icon-eraser',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(61,'icon-exchange','icon-exchange',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(62,'icon-exclamation','icon-exclamation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(63,'icon-exclamation-sign','icon-exclamation-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(64,'icon-expand','icon-expand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(65,'icon-expand-alt','icon-expand-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(66,'icon-external-link','icon-external-link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(67,'icon-external-link-sign','icon-external-link-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(68,'icon-eye-close','icon-eye-close',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(69,'icon-eye-open','icon-eye-open',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(70,'icon-facetime-video','icon-facetime-video',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(71,'icon-female','icon-female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(72,'icon-fighter-jet','icon-fighter-jet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(73,'icon-film','icon-film',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(74,'icon-filter','icon-filter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(75,'icon-fire','icon-fire',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(76,'icon-fire-extinguisher','icon-fire-extinguisher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(77,'icon-flag','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(78,'icon-flag-alt','icon-flag-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(79,'icon-flag-checkered','icon-flag-checkered',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(80,'icon-folder-close','icon-folder-close',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(81,'icon-folder-close-alt','icon-folder-close-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(82,'icon-folder-open','icon-folder-open',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(83,'icon-folder-open-alt','icon-folder-open-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(84,'icon-food','icon-food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(85,'icon-frown','icon-frown',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(86,'icon-gamepad','icon-gamepad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(87,'icon-gift','icon-gift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(88,'icon-glass','icon-glass',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(89,'icon-globe','icon-globe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(90,'icon-group','icon-group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(91,'icon-hdd','icon-hdd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(92,'icon-headphones','icon-headphones',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(93,'icon-heart','icon-heart',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(94,'icon-heart-empty','icon-heart-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(95,'icon-home','icon-home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(96,'icon-inbox','icon-inbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(97,'icon-info','icon-info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(98,'icon-info-sign','icon-info-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(99,'icon-key','icon-key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(100,'icon-keyboard','icon-keyboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(101,'icon-laptop','icon-laptop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(102,'icon-leaf','icon-leaf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(103,'icon-legal','icon-legal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(104,'icon-lemon','icon-lemon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(105,'icon-level-down','icon-level-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(106,'icon-level-up','icon-level-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(107,'icon-lightbulb','icon-lightbulb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(108,'icon-location-arrow','icon-location-arrow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(109,'icon-lock','icon-lock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(110,'icon-magic','icon-magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(111,'icon-magnet','icon-magnet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(112,'icon-mail-forward','icon-mail-forward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(113,'icon-mail-reply','icon-mail-reply',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(114,'icon-mail-reply-all','icon-mail-reply-all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(115,'icon-male','icon-male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(116,'icon-map-marker','icon-map-marker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(117,'icon-meh','icon-meh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(118,'icon-microphone','icon-microphone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(119,'icon-microphone-off','icon-microphone-off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(120,'icon-minus','icon-minus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(121,'icon-minus-sign','icon-minus-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(122,'icon-minus-sign-alt','icon-minus-sign-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(123,'icon-mobile-phone','icon-mobile-phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(124,'icon-money','icon-money',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(125,'icon-moon','icon-moon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(126,'icon-move','icon-move',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(127,'icon-music','icon-music',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(128,'icon-off','icon-off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(129,'icon-ok','icon-ok',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(130,'icon-ok-circle','icon-ok-circle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(131,'icon-ok-sign','icon-ok-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(132,'icon-pencil','icon-pencil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(133,'icon-phone','icon-phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(134,'icon-phone-sign','icon-phone-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(135,'icon-picture','icon-picture',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(136,'icon-plane','icon-plane',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(137,'icon-plus','icon-plus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(138,'icon-plus-sign','icon-plus-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(139,'icon-plus-sign-alt','icon-plus-sign-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(140,'icon-power-off','icon-power-off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(141,'icon-print','icon-print',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(142,'icon-pushpin','icon-pushpin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(143,'icon-puzzle-piece','icon-puzzle-piece',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(144,'icon-qrcode','icon-qrcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(145,'icon-question','icon-question',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(146,'icon-question-sign','icon-question-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(147,'icon-quote-left','icon-quote-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(148,'icon-quote-right','icon-quote-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(149,'icon-random','icon-random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(150,'icon-refresh','icon-refresh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(151,'icon-remove','icon-remove',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(152,'icon-remove-circle','icon-remove-circle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(153,'icon-remove-sign','icon-remove-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(154,'icon-reorder','icon-reorder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(155,'icon-reply','icon-reply',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(156,'icon-reply-all','icon-reply-all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(157,'icon-resize-horizontal','icon-resize-horizontal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(158,'icon-resize-vertical','icon-resize-vertical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(159,'icon-retweet','icon-retweet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(160,'icon-road','icon-road',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(161,'icon-rocket','icon-rocket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(162,'icon-rss','icon-rss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(163,'icon-rss-sign','icon-rss-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(164,'icon-screenshot','icon-screenshot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(165,'icon-search','icon-search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(166,'icon-share','icon-share',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(167,'icon-share-alt','icon-share-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(168,'icon-share-sign','icon-share-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(169,'icon-shield','icon-shield',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(170,'icon-shopping-cart','icon-shopping-cart',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(171,'icon-sign-blank','icon-sign-blank',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(172,'icon-signal','icon-signal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(173,'icon-signin','icon-signin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(174,'icon-signout','icon-signout',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(175,'icon-sitemap','icon-sitemap',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(176,'icon-smile','icon-smile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(177,'icon-sort','icon-sort',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(178,'icon-sort-by-alphabet','icon-sort-by-alphabet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(179,'icon-sort-by-alphabet-alt','icon-sort-by-alphabet-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(180,'icon-sort-by-attributes','icon-sort-by-attributes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(181,'icon-sort-by-attributes-alt','icon-sort-by-attributes-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(182,'icon-sort-by-order','icon-sort-by-order',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(183,'icon-sort-by-order-alt','icon-sort-by-order-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(184,'icon-sort-down','icon-sort-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(185,'icon-sort-up','icon-sort-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(186,'icon-spinner','icon-spinner',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(187,'icon-star','icon-star',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(188,'icon-star-empty','icon-star-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(189,'icon-star-half','icon-star-half',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(190,'icon-star-half-empty','icon-star-half-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(191,'icon-star-half-full','icon-star-half-full',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(192,'icon-subscript','icon-subscript',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(193,'icon-suitcase','icon-suitcase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(194,'icon-sun','icon-sun',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(195,'icon-superscript','icon-superscript',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(196,'icon-tablet','icon-tablet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(197,'icon-tag','icon-tag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(198,'icon-tags','icon-tags',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(199,'icon-tasks','icon-tasks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(200,'icon-terminal','icon-terminal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(201,'icon-thumbs-down','icon-thumbs-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(202,'icon-thumbs-down-alt','icon-thumbs-down-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(203,'icon-thumbs-up','icon-thumbs-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(204,'icon-thumbs-up-alt','icon-thumbs-up-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(205,'icon-ticket','icon-ticket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(206,'icon-time','icon-time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(207,'icon-tint','icon-tint',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(208,'icon-trash','icon-trash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(209,'icon-trophy','icon-trophy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(210,'icon-truck','icon-truck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(211,'icon-umbrella','icon-umbrella',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(212,'icon-unchecked','icon-unchecked',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(213,'icon-unlock','icon-unlock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(214,'icon-unlock-alt','icon-unlock-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(215,'icon-upload','icon-upload',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(216,'icon-upload-alt','icon-upload-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(217,'icon-user','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(218,'icon-volume-down','icon-volume-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(219,'icon-volume-off','icon-volume-off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(220,'icon-volume-up','icon-volume-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(221,'icon-warning-sign','icon-warning-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(222,'icon-wrench','icon-wrench',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(223,'icon-zoom-in','icon-zoom-in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(224,'icon-zoom-out','icon-zoom-out',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(225,'icon-bitcoin','icon-bitcoin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(226,'icon-btc','icon-btc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(227,'icon-cny','icon-cny',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(228,'icon-dollar','icon-dollar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(229,'icon-eur','icon-eur',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(230,'icon-euro','icon-euro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(231,'icon-gbp','icon-gbp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(232,'icon-inr','icon-inr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(233,'icon-jpy','icon-jpy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(234,'icon-krw','icon-krw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(235,'icon-renminbi','icon-renminbi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(236,'icon-rupee','icon-rupee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(237,'icon-usd','icon-usd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(238,'icon-won','icon-won',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(239,'icon-yen','icon-yen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(240,'icon-align-center','icon-align-center',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(241,'icon-align-justify','icon-align-justify',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(242,'icon-align-left','icon-align-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(243,'icon-align-right','icon-align-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(244,'icon-bold','icon-bold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(245,'icon-columns','icon-columns',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(246,'icon-copy','icon-copy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(247,'icon-cut','icon-cut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(249,'icon-file','icon-file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(250,'icon-file-alt','icon-file-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(251,'icon-file-text','icon-file-text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(252,'icon-file-text-alt','icon-file-text-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(253,'icon-font','icon-font',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(254,'icon-indent-left','icon-indent-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(255,'icon-indent-right','icon-indent-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(256,'icon-italic','icon-italic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(257,'icon-link','icon-link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(258,'icon-list','icon-list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(259,'icon-list-alt','icon-list-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(260,'icon-list-ol','icon-list-ol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(261,'icon-list-ul','icon-list-ul',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(262,'icon-paper-clip','icon-paper-clip',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(263,'icon-paperclip','icon-paperclip',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(264,'icon-paste','icon-paste',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(265,'icon-repeat','icon-repeat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(266,'icon-rotate-left','icon-rotate-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(267,'icon-rotate-right','icon-rotate-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(268,'icon-save','icon-save',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(269,'icon-strikethrough','icon-strikethrough',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(270,'icon-table','icon-table',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(271,'icon-text-height','icon-text-height',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(272,'icon-text-width','icon-text-width',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(273,'icon-th','icon-th',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(274,'icon-th-large','icon-th-large',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(275,'icon-th-list','icon-th-list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(276,'icon-underline','icon-underline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(277,'icon-undo','icon-undo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(278,'icon-unlink','icon-unlink',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(279,'icon-angle-down','icon-angle-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(280,'icon-angle-left','icon-angle-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(281,'icon-angle-right','icon-angle-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(282,'icon-angle-up','icon-angle-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(283,'icon-arrow-down','icon-arrow-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(284,'icon-arrow-left','icon-arrow-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(285,'icon-arrow-right','icon-arrow-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(286,'icon-arrow-up','icon-arrow-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(287,'icon-caret-down','icon-caret-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(288,'icon-caret-left','icon-caret-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(289,'icon-caret-right','icon-caret-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(290,'icon-caret-up','icon-caret-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(291,'icon-chevron-down','icon-chevron-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(292,'icon-chevron-left','icon-chevron-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(293,'icon-chevron-right','icon-chevron-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(294,'icon-chevron-sign-down','icon-chevron-sign-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(295,'icon-chevron-sign-left','icon-chevron-sign-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(296,'icon-chevron-sign-right','icon-chevron-sign-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(297,'icon-chevron-sign-up','icon-chevron-sign-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(298,'icon-chevron-up','icon-chevron-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(299,'icon-circle-arrow-down','icon-circle-arrow-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(300,'icon-circle-arrow-left','icon-circle-arrow-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(301,'icon-circle-arrow-right','icon-circle-arrow-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(302,'icon-circle-arrow-up','icon-circle-arrow-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(303,'icon-double-angle-down','icon-double-angle-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(304,'icon-double-angle-left','icon-double-angle-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(305,'icon-double-angle-right','icon-double-angle-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(306,'icon-double-angle-up','icon-double-angle-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(307,'icon-hand-down','icon-hand-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(308,'icon-hand-left','icon-hand-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(309,'icon-hand-right','icon-hand-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(310,'icon-hand-up','icon-hand-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(311,'icon-long-arrow-down','icon-long-arrow-down',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(312,'icon-long-arrow-left','icon-long-arrow-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(313,'icon-long-arrow-right','icon-long-arrow-right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(314,'icon-long-arrow-up','icon-long-arrow-up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(315,'icon-backward','icon-backward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(316,'icon-eject','icon-eject',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(317,'icon-fast-backward','icon-fast-backward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(318,'icon-fast-forward','icon-fast-forward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(319,'icon-forward','icon-forward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(320,'icon-fullscreen','icon-fullscreen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(321,'icon-pause','icon-pause',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(322,'icon-play','icon-play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(323,'icon-play-circle','icon-play-circle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(324,'icon-play-sign','icon-play-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(325,'icon-resize-full','icon-resize-full',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(326,'icon-resize-small','icon-resize-small',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(327,'icon-step-backward','icon-step-backward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(328,'icon-step-forward','icon-step-forward',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(329,'icon-stop','icon-stop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(330,'icon-youtube-play','icon-youtube-play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(331,'icon-adn','icon-adn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(332,'icon-android','icon-android',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(333,'icon-apple','icon-apple',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(334,'icon-bitbucket','icon-bitbucket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(335,'icon-bitbucket-sign','icon-bitbucket-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(338,'icon-css3','icon-css3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(339,'icon-dribble','icon-dribble',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(340,'icon-dropbox','icon-dropbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(341,'icon-facebook','icon-facebook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(342,'icon-facebook-sign','icon-facebook-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(343,'icon-flickr','icon-flickr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(344,'icon-foursquare','icon-foursquare',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(345,'icon-github','icon-github',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(346,'icon-github-alt','icon-github-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(347,'icon-github-sign','icon-github-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(348,'icon-gittip','icon-gittip',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(349,'icon-google-plus','icon-google-plus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(350,'icon-google-plus-sign','icon-google-plus-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(351,'icon-html5','icon-html5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(352,'icon-instagram','icon-instagram',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(353,'icon-linkedin','icon-linkedin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(354,'icon-linkedin-sign','icon-linkedin-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(355,'icon-linux','icon-linux',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(356,'icon-maxcdn','icon-maxcdn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(357,'icon-pinterest','icon-pinterest',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(358,'icon-pinterest-sign','icon-pinterest-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(359,'icon-renren','icon-renren',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(360,'icon-skype','icon-skype',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(361,'icon-stackexchange','icon-stackexchange',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(362,'icon-trello','icon-trello',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(363,'icon-tumblr','icon-tumblr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(364,'icon-tumblr-sign','icon-tumblr-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(365,'icon-twitter','icon-twitter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(366,'icon-twitter-sign','icon-twitter-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(367,'icon-vk','icon-vk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(368,'icon-weibo','icon-weibo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(369,'icon-windows','icon-windows',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(370,'icon-xing','icon-xing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(371,'icon-xing-sign','icon-xing-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(372,'icon-youtube','icon-youtube',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(374,'icon-youtube-sign','icon-youtube-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(375,'icon-ambulance','icon-ambulance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(376,'icon-h-sign','icon-h-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(377,'icon-hospital','icon-hospital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(378,'icon-medkit','icon-medkit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(380,'icon-stethoscope','icon-stethoscope',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(381,'icon-user-md','icon-user-md',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'css_class',NULL),(1001,'ztree_root_close',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/1_close.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1002,'ztree_root_open',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/1_open.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1003,'ztree_edit',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/2.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1004,'ztree_star',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/3.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1005,'ztree_calendar',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/4.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1006,'ztree_heart',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/5.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1007,'ztree_save',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/6.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1008,'ztree_msg',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/7.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1009,'ztree_report',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/8.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1010,'ztree_setting',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/9.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1011,'ztree_file',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/file.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1012,'ztree_folder',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/folder.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1013,'ztree_branch',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/branch.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1014,'ztree_leaf',NULL,'static/comp/zTree/css/zTreeStyle/img/diy/leaf.png',16,16,NULL,NULL,NULL,NULL,'upload_file',NULL),(1500,'ztree_folder_open',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',110,0,NULL,'css_sprite',NULL),(1501,'ztree_folder_close',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',110,17,NULL,'css_sprite',NULL),(1502,'ztree_file2',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',110,32,NULL,'css_sprite',NULL),(1503,'ztree_edit2',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',110,48,NULL,'css_sprite',NULL),(1504,'ztree_delete',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',110,64,NULL,'css_sprite',NULL),(1505,'ztree_arrow',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',110,80,NULL,'css_sprite',NULL),(1506,'ztree_plus',NULL,NULL,13,13,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',79,75,NULL,'css_sprite',NULL),(1507,'ztree_minus',NULL,NULL,13,13,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',98,75,NULL,'css_sprite',NULL),(1508,'ztree_add',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',144,0,NULL,'css_sprite',NULL),(1509,'ztree_cicle_arrow_left1',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',144,15,NULL,'css_sprite',NULL),(1510,'ztree_cicle_arrow_right1',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',144,32,NULL,'css_sprite',NULL),(1511,'ztree_cicle_arrow_left2',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',144,48,NULL,'css_sprite',NULL),(1512,'ztree_cicle_arrow_right2',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',144,64,NULL,'css_sprite',NULL),(1513,'ztree_cicle_arrow',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',127,48,NULL,'css_sprite',NULL),(1514,'ztree_star_light',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',127,64,NULL,'css_sprite',NULL),(1515,'ztree_star_dark',NULL,NULL,16,16,'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png',127,80,NULL,'css_sprite',NULL);
/*!40000 ALTER TABLE `maintain_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain_map`
--

DROP TABLE IF EXISTS `maintain_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintain_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `map_key` varchar(200) DEFAULT NULL,
  `map_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_maintain_map_key` (`map_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain_map`
--

LOCK TABLES `maintain_map` WRITE;
/*!40000 ALTER TABLE `maintain_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintain_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain_notification_data`
--

DROP TABLE IF EXISTS `maintain_notification_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintain_notification_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `system` varchar(50) DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_read` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_maintain_notification_data_user_id_read` (`user_id`,`is_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain_notification_data`
--

LOCK TABLES `maintain_notification_data` WRITE;
/*!40000 ALTER TABLE `maintain_notification_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintain_notification_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain_notification_template`
--

DROP TABLE IF EXISTS `maintain_notification_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintain_notification_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `system` varchar(50) DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `template` varchar(2000) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_maintain_notification_template_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain_notification_template`
--

LOCK TABLES `maintain_notification_template` WRITE;
/*!40000 ALTER TABLE `maintain_notification_template` DISABLE KEYS */;
INSERT INTO `maintain_notification_template` VALUES (1,'excelInitDataSuccess','excel','初始化Excel数据完成','初始化Excel数据已完成，耗时{seconds}秒钟，可以尝试导入/导出操作啦！',0),(2,'excelImportSuccess','excel','导入Excel成功','导入Excel成功，耗时{seconds}秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>',0),(3,'excelImportError','excel','导入Excel失败','导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：{error}',0),(4,'excelExportSuccess','excel','导出Excel成功','导出Excel成功，耗时{seconds}秒钟，<a href=\"{ctx}{url}\" target=\"_blank\">点击下载</a>（注意：导出的文件只保留3天，请尽快下载，过期将删除）',0),(5,'excelExportError','excel','导出Excel失败','导出Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：{error}',0);
/*!40000 ALTER TABLE `maintain_notification_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain_task_definition`
--

DROP TABLE IF EXISTS `maintain_task_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintain_task_definition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `cron` varchar(200) DEFAULT NULL,
  `bean_class` varchar(200) DEFAULT NULL,
  `bean_name` varchar(200) DEFAULT NULL,
  `method_name` varchar(200) DEFAULT NULL,
  `is_start` tinyint(1) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain_task_definition`
--

LOCK TABLES `maintain_task_definition` WRITE;
/*!40000 ALTER TABLE `maintain_task_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintain_task_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_calendar`
--

DROP TABLE IF EXISTS `personal_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_calendar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `background_color` varchar(100) DEFAULT NULL,
  `text_color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `office_calendar_user_id_start_date` (`user_id`,`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_calendar`
--

LOCK TABLES `personal_calendar` WRITE;
/*!40000 ALTER TABLE `personal_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_message`
--

DROP TABLE IF EXISTS `personal_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender_id` bigint(20) DEFAULT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `send_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) DEFAULT NULL,
  `sender_state` varchar(20) DEFAULT NULL,
  `sender_state_change_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `receiver_state` varchar(20) DEFAULT NULL,
  `receiver_state_change_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(20) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_replied` tinyint(1) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_personal_message_sender_id_sender_state` (`sender_id`,`sender_state`),
  KEY `idx_personal_message_receiver_id_receiver_state` (`receiver_id`,`receiver_state`,`is_read`),
  KEY `idx_personal_sender_state_change_date` (`sender_state_change_date`),
  KEY `idx_personal_receiver_state_change_date` (`receiver_state_change_date`),
  KEY `idx_personal_parent_id` (`parent_id`),
  KEY `idx_personal_parent_ids` (`parent_ids`),
  KEY `idx_personal_message_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_message`
--

LOCK TABLES `personal_message` WRITE;
/*!40000 ALTER TABLE `personal_message` DISABLE KEYS */;
INSERT INTO `personal_message` VALUES (1,1,NULL,'2014-10-04 14:38:52','vvvvvvvvvvvvvvvvvv','draft_box','2014-10-04 14:38:52',NULL,'2014-10-04 14:38:52','user_message',0,0,NULL,''),(2,11,1,'2014-10-05 05:01:24','你好我们是','out_box','2014-10-05 05:01:24','store_box','2014-10-05 05:02:31','user_message',1,0,NULL,''),(3,1,11,'2014-10-05 05:03:10','sadasdas','out_box','2014-10-05 05:03:10','in_box','2014-10-05 05:03:10','user_message',1,0,NULL,'');
/*!40000 ALTER TABLE `personal_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_message_content`
--

DROP TABLE IF EXISTS `personal_message_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_message_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_personal_message_content_message_id` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_message_content`
--

LOCK TABLES `personal_message_content` WRITE;
/*!40000 ALTER TABLE `personal_message_content` DISABLE KEYS */;
INSERT INTO `personal_message_content` VALUES (1,1,'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv'),(2,2,'利益东阿苏大嫂达到'),(3,3,'asdasddddddd');
/*!40000 ALTER TABLE `personal_message_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `beginDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `endDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_show` tinyint(1) DEFAULT NULL,
  `zcbh` varchar(100) NOT NULL,
  `xmms` longtext,
  `address` varchar(200) DEFAULT NULL,
  `tree_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zcbh_UNIQUE` (`zcbh`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,3,'绿城设计院','2014-11-03 14:32:18','2014-11-27 14:32:18',1,'2322112121','','洒洒地',NULL,NULL),(5,3,'特斯图 ','2014-11-04 14:51:56','2014-11-05 14:51:56',1,'223333','22','222',NULL,NULL),(6,3,'特色体育馆','2014-11-09 15:10:52','2014-11-28 15:10:52',1,'f23323232','','2232321',NULL,1),(7,6,'444',NULL,NULL,1,'444','44','444',NULL,1),(8,6,'33',NULL,NULL,1,'33','','33',17,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_child`
--

DROP TABLE IF EXISTS `showcase_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_child` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `beginTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_child`
--

LOCK TABLES `showcase_child` WRITE;
/*!40000 ALTER TABLE `showcase_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_editor`
--

DROP TABLE IF EXISTS `showcase_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_editor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_editor`
--

LOCK TABLES `showcase_editor` WRITE;
/*!40000 ALTER TABLE `showcase_editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_excel_data`
--

DROP TABLE IF EXISTS `showcase_excel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_excel_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_excel_data`
--

LOCK TABLES `showcase_excel_data` WRITE;
/*!40000 ALTER TABLE `showcase_excel_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_excel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_moveable`
--

DROP TABLE IF EXISTS `showcase_moveable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_moveable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `is_show` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_showcase_moveable_weight` (`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_moveable`
--

LOCK TABLES `showcase_moveable` WRITE;
/*!40000 ALTER TABLE `showcase_moveable` DISABLE KEYS */;
INSERT INTO `showcase_moveable` VALUES (1,'xxxxx',1000,1);
/*!40000 ALTER TABLE `showcase_moveable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_parent`
--

DROP TABLE IF EXISTS `showcase_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_parent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `beginDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_parent`
--

LOCK TABLES `showcase_parent` WRITE;
/*!40000 ALTER TABLE `showcase_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_sample`
--

DROP TABLE IF EXISTS `showcase_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_sample` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `birthday` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sex` varchar(50) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_showcase_sample_name` (`name`),
  KEY `idx_showcase_sample_birthday` (`birthday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_sample`
--

LOCK TABLES `showcase_sample` WRITE;
/*!40000 ALTER TABLE `showcase_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_status_audit`
--

DROP TABLE IF EXISTS `showcase_status_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_status_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_status_audit`
--

LOCK TABLES `showcase_status_audit` WRITE;
/*!40000 ALTER TABLE `showcase_status_audit` DISABLE KEYS */;
INSERT INTO `showcase_status_audit` VALUES (1,'hh','success','nnnnn');
/*!40000 ALTER TABLE `showcase_status_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_status_show`
--

DROP TABLE IF EXISTS `showcase_status_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_status_show` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_status_show`
--

LOCK TABLES `showcase_status_show` WRITE;
/*!40000 ALTER TABLE `showcase_status_show` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_status_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_tree`
--

DROP TABLE IF EXISTS `showcase_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_tree` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_showcase_tree_parentId` (`parent_id`),
  KEY `idx_showcase_tree_parentIds_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_tree`
--

LOCK TABLES `showcase_tree` WRITE;
/*!40000 ALTER TABLE `showcase_tree` DISABLE KEYS */;
INSERT INTO `showcase_tree` VALUES (1,'根',0,'0/',NULL,1,1),(2,'节点1',1,'0/1/',NULL,1,1),(3,'叶子11',2,'0/1/2/',NULL,1,1),(4,'叶子12',2,'0/1/2/',NULL,2,1),(5,'节点2',1,'0/1/',NULL,2,1),(6,'叶子21',5,'0/1/5/',NULL,1,1),(7,'节点3',1,'0/1/',NULL,3,1),(8,'叶子31',7,'0/1/7/',NULL,2,1),(9,'叶子32',7,'0/1/7/',NULL,1,1),(10,'节点31',7,'0/1/7/',NULL,3,1),(11,'叶子311',10,'0/1/7/10/',NULL,1,1),(12,'特',1,'0/1/','ztree_leaf',4,1);
/*!40000 ALTER TABLE `showcase_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase_upload`
--

DROP TABLE IF EXISTS `showcase_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase_upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `src` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase_upload`
--

LOCK TABLES `showcase_upload` WRITE;
/*!40000 ALTER TABLE `showcase_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `showcase_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subproduct`
--

DROP TABLE IF EXISTS `subproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subproduct` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subproduct`
--

LOCK TABLES `subproduct` WRITE;
/*!40000 ALTER TABLE `subproduct` DISABLE KEYS */;
INSERT INTO `subproduct` VALUES (1,NULL,6,NULL,'方法'),(2,NULL,6,1,'方法'),(3,NULL,6,1,'浮浮沉沉vvbbgd&nbsp;'),(4,NULL,8,1,'ffffffffffffffffffffffffffffffffffffffffffffffffff');
/*!40000 ALTER TABLE `subproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_auth`
--

DROP TABLE IF EXISTS `sys_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `role_ids` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auth_organization` (`organization_id`),
  KEY `idx_sys_auth_job` (`job_id`),
  KEY `idx_sys_auth_user` (`user_id`),
  KEY `idx_sys_auth_group` (`group_id`),
  KEY `idx_sys_auth_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_auth`
--

LOCK TABLES `sys_auth` WRITE;
/*!40000 ALTER TABLE `sys_auth` DISABLE KEYS */;
INSERT INTO `sys_auth` VALUES (1,0,0,1,0,'1','user'),(2,0,0,2,0,'2','user'),(3,0,0,3,0,'3','user'),(4,0,0,4,0,'4','user'),(5,0,0,5,0,'5','user'),(6,0,0,6,0,'6','user'),(7,0,0,7,0,'7','user'),(8,0,0,8,0,'8','user'),(9,0,0,9,0,'9','user'),(10,0,0,10,0,'10','user');
/*!40000 ALTER TABLE `sys_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_group`
--

DROP TABLE IF EXISTS `sys_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  `default_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_group_type` (`type`),
  KEY `idx_sys_group_show` (`is_show`),
  KEY `idx_sys_group_default_group` (`default_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_group`
--

LOCK TABLES `sys_group` WRITE;
/*!40000 ALTER TABLE `sys_group` DISABLE KEYS */;
INSERT INTO `sys_group` VALUES (1,'3434','organization',0,0),(2,'test','organization',1,0),(3,'ttt','organization',0,0),(4,'ggggg','user',1,1);
/*!40000 ALTER TABLE `sys_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_group_relation`
--

DROP TABLE IF EXISTS `sys_group_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_group_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `start_user_id` bigint(20) DEFAULT NULL,
  `end_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_group_relation_group` (`group_id`),
  KEY `idx_sys_group_relation_organization` (`organization_id`),
  KEY `idx_sys_group_relation_user` (`user_id`),
  KEY `idx_sys_group_relation_start_user_id` (`start_user_id`),
  KEY `idx_sys_group_relation_end_user_id` (`end_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_group_relation`
--

LOCK TABLES `sys_group_relation` WRITE;
/*!40000 ALTER TABLE `sys_group_relation` DISABLE KEYS */;
INSERT INTO `sys_group_relation` VALUES (1,3,2,NULL,NULL,NULL),(2,3,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_group_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_job_nam` (`name`),
  KEY `idx_sys_job_parent_id` (`parent_id`),
  KEY `idx_sys_job_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'职务',0,'0/',NULL,1,1),(2,'新节点',1,'0/1/',NULL,1,0),(3,'新节点',2,'0/1/2/',NULL,1,0),(4,'暖通设计师',1,'0/1/','ztree_leaf',2,1),(5,'电子设计师',1,'0/1/','ztree_leaf',3,1);
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_organization`
--

DROP TABLE IF EXISTS `sys_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_name` (`name`),
  KEY `idx_sys_organization_type` (`type`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_organization`
--

LOCK TABLES `sys_organization` WRITE;
/*!40000 ALTER TABLE `sys_organization` DISABLE KEYS */;
INSERT INTO `sys_organization` VALUES (1,'组织机构',NULL,0,'0/',NULL,1,1),(2,'绿城设计院','branch_office',1,'0/1/','ztree_leaf',1,1),(3,'佳华设计院','branch_office',1,'0/1/','ztree_leaf',2,1);
/*!40000 ALTER TABLE `sys_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permission`
--

DROP TABLE IF EXISTS `sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_permission_name` (`name`),
  KEY `idx_sys_permission_permission` (`permission`),
  KEY `idx_sys_permission_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` VALUES (1,'所有','*','所有数据操作的权限',1),(2,'新增','create','新增数据操作的权限',1),(3,'修改','update','修改数据操作的权限',1),(4,'删除','delete','删除数据操作的权限',1),(5,'查看','view','查看数据操作的权限',1),(6,'审核','audit','审核数据操作的权限',1);
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_resource`
--

DROP TABLE IF EXISTS `sys_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `identity` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_name` (`name`),
  KEY `idx_sys_resource_identity` (`identity`),
  KEY `idx_sys_resource_user` (`url`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_resource`
--

LOCK TABLES `sys_resource` WRITE;
/*!40000 ALTER TABLE `sys_resource` DISABLE KEYS */;
INSERT INTO `sys_resource` VALUES (1,'资源','','',0,'0/',NULL,1,1),(2,'业务管理','bussiness','',1,'0/1/',NULL,1,1),(3,'示例列表','sample','/bussiness/sample',2,'0/1/2/',NULL,1,0),(4,'逻辑删除列表','deleted','/bussiness/deleted',2,'0/1/2/',NULL,2,0),(5,'可移动列表','move','/bussiness/move',2,'0/1/2/',NULL,3,0),(6,'文件上传列表','upload','/bussiness/upload',2,'0/1/2/',NULL,4,0),(7,'区域管理','area','/bussiness/tree',2,'0/1/2/',NULL,5,1),(8,'编辑器列表','editor','/bussiness/editor',2,'0/1/2/',NULL,6,0),(9,'父子表（小数据量）','parentchild','/bussiness/parentchild/parent',2,'0/1/2/',NULL,7,0),(10,'项目管理','','',2,'0/1/2/',NULL,8,1),(11,'类别列表','productCategory','/bussiness/product/category',10,'0/1/2/10/',NULL,1,1),(12,'产品列表','product','/bussiness/product/product',10,'0/1/2/10/',NULL,2,1),(13,'状态管理','','',2,'0/1/2/',NULL,9,0),(14,'审核状态列表','statusAudit','/showcase/status/audit',13,'0/1/2/13/',NULL,1,0),(15,'显示状态列表','statusShow','/showcase/status/show',13,'0/1/2/13/',NULL,2,0),(16,'系统管理','sys','',1,'0/1/',NULL,2,1),(17,'用户管理','','',16,'0/1/16/',NULL,1,1),(18,'用户列表','user','/admin/sys/user/main',17,'0/1/16/17/',NULL,1,1),(19,'在线用户列表','userOnline','/admin/sys/user/online',17,'0/1/16/17/',NULL,2,1),(20,'状态变更历史列表','userStatusHistory','/admin/sys/user/statusHistory',17,'0/1/16/17/',NULL,3,1),(21,'用户最后在线历史列表','userLastOnline','/admin/sys/user/lastOnline',17,'0/1/16/17/',NULL,4,1),(22,'组织机构管理','','',16,'0/1/16/',NULL,2,1),(23,'组织机构列表','organization','/admin/sys/organization/organization',22,'0/1/16/22/',NULL,1,1),(24,'工作职务列表','job','/admin/sys/organization/job',22,'0/1/16/22/',NULL,2,1),(25,'资源列表','resource','/admin/sys/resource',16,'0/1/16/',NULL,4,1),(26,'权限管理','','',16,'0/1/16/',NULL,5,1),(27,'权限列表','permission','/admin/sys/permission/permission',26,'0/1/16/26/',NULL,1,1),(28,'授权权限给角色','role','/admin/sys/permission/role',26,'0/1/16/26/',NULL,2,1),(29,'分组列表','group','/admin/sys/group',16,'0/1/16/',NULL,3,1),(30,'授权角色给实体','auth','/admin/sys/auth',26,'0/1/16/26/',NULL,3,1),(31,'个人中心','','',1,'0/1/',NULL,4,1),(32,'我的消息','','/admin/personal/message',31,'0/1/31/',NULL,1,1),(33,'开发维护','maintain','',1,'0/1/',NULL,5,1),(34,'图标管理','icon','/admin/maintain/icon',33,'0/1/33/',NULL,2,1),(35,'键值对','keyvalue','/admin/maintain/keyvalue',33,'0/1/33/',NULL,3,1),(37,'静态资源版本控制','staticResource','/admin/maintain/staticResource',33,'0/1/33/',NULL,4,1),(38,'在线编辑','onlineEditor','/admin/maintain/editor',33,'0/1/33/',NULL,5,1),(39,'系统监控','monitor','',1,'0/1/',NULL,6,1),(40,'在线用户列表','userOnline','/admin/sys/user/online',39,'0/1/39/',NULL,1,1),(41,'数据库监控','db','/admin/monitor/druid/index.html',39,'0/1/39/',NULL,2,1),(42,'hibernate监控','hibernate','/admin/monitor/hibernate',39,'0/1/39/',NULL,3,1),(43,'执行SQL/JPA QL','ql','/admin/monitor/db/sql',39,'0/1/39/',NULL,4,1),(44,'ehcache监控','ehcache','/admin/monitor/ehcache',39,'0/1/39/',NULL,5,1),(45,'jvm监控','jvm','/admin/monitor/jvm',39,'0/1/39/',NULL,6,1),(46,'Excel导入/导出','excel','/showcase/excel',2,'0/1/2/',NULL,10,1),(47,'我的通知','','/admin/personal/notification',31,'0/1/31/',NULL,2,1),(48,'通知模板','notificationTemplate','/admin/maintain/notification/template',33,'0/1/33/',NULL,1,1),(49,'任务调度','dynamicTask','/admin/maintain/dynamicTask',33,'0/1/33/',NULL,6,1);
/*!40000 ALTER TABLE `sys_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_name` (`name`),
  KEY `idx_sys_role_role` (`role`),
  KEY `idx_sys_role_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin','拥有所有权限',1),(2,'示例管理员','example_admin','拥有示例管理的所有权限',1),(3,'系统管理员','sys_admin','拥有系统管理的所有权限',1),(4,'维护管理员','conf_admin','拥有维护管理的所有权限',1),(5,'新增管理员','create_admin','拥有新增/查看管理的所有权限',1),(6,'修改管理员','update_admin','拥有修改/查看管理的所有权限',1),(7,'删除管理员','delete_admin','拥有删除/查看管理的所有权限',1),(8,'查看管理员','view_admin','拥有查看管理的所有权限',1),(9,'审核管理员','audit_admin','拥有审核管理的所有权限',1),(10,'监控管理员','audit_admin','拥有审核管理的所有权限',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_resource_permission`
--

DROP TABLE IF EXISTS `sys_role_resource_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_resource_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `permission_ids` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_role_resource_permission` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_resource_permission`
--

LOCK TABLES `sys_role_resource_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_resource_permission` DISABLE KEYS */;
INSERT INTO `sys_role_resource_permission` VALUES (1,1,2,'1'),(2,1,16,'1'),(3,1,33,'1'),(4,1,39,'1'),(5,2,2,'1'),(6,3,16,'1'),(7,4,33,'1'),(8,5,2,'2,5'),(9,5,16,'2,5'),(10,5,33,'2,5'),(11,5,39,'2,5'),(12,6,2,'3,5'),(13,6,16,'3,5'),(14,6,33,'3,5'),(15,6,39,'3,5'),(16,7,2,'4,5'),(17,7,16,'4,5'),(18,7,33,'4,5'),(19,7,39,'4,5'),(20,8,2,'5'),(21,8,16,'5'),(22,8,33,'5'),(23,8,39,'5'),(24,9,7,'5,6'),(25,9,14,'5,6'),(26,9,15,'5,6'),(27,10,39,'1');
/*!40000 ALTER TABLE `sys_role_resource_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_username` (`username`),
  UNIQUE KEY `unique_sys_user_email` (`email`),
  UNIQUE KEY `unique_sys_user_mobile_phone_number` (`mobile_phone_number`),
  KEY `idx_sys_user_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','admin@sishuok.com','13412345671','ec21fa1738f39d5312c6df46002d403d','yDd1956wn1','2014-10-03 14:02:48','normal',0,1),(2,'showcase','showcase@sishuok.com','13412345672','5f915c55c6d43da136a42e3ebabbecfc','hSSixwNQwt','2014-10-03 14:02:48','normal',0,1),(3,'sys','sys@sishuok.com','13412345673','a10b3c7af051a81fe2506318f982ce28','MANHOoCpnb','2014-10-03 14:02:48','normal',0,1),(4,'maintain','maintain@sishuok.com','13412345674','594813c5eb02b210dacc1a36c2482fc1','iY71e4dtoa','2014-10-03 14:02:48','normal',0,1),(5,'create','create@sishuok.com','13412345675','a6d5988a698dec63c6eea71994dd7be0','iruPxupgfb','2014-10-03 14:02:48','normal',0,1),(6,'update','update@sishuok.com','13412345676','fffa26ac5c47ec1bf9a37d9823816074','2WQx5LmvlV','2014-10-03 14:02:48','normal',0,1),(7,'delete','delete@sishuok.com','13412345677','4c472bf1d56f440d2953803ab4eea8d4','E8KSvr1C7d','2014-10-03 14:02:48','normal',0,1),(8,'view','view@sishuok.com','13412345678','c919215efcef4064858bf02f8776c00d','XFJZQOXWZW','2014-10-03 14:02:48','normal',0,1),(9,'audit','audit@sishuok.com','13412345679','15d8f7b8da8045d24c71a92a142ffad7','BI2XbXMUr7','2014-10-03 14:02:48','normal',0,1),(10,'monitor','monitor@sishuok.com','1341234580','e1549e68ad21fe888ae36ec4965116cd','iY71e4d123','2014-10-03 14:02:48','normal',0,1),(11,'liyidong','liyidongaini2000@163.com','13968188692','6abe7d8fcc3851392c4a4faafdf67991','528zpTcO3S','2014-10-05 04:56:50','normal',0,0),(12,'sjl','liyidongaini2021@163.com','13968584732','61bf5f042084b596e6fd227dc4a2e90d','ZHuDx5srTH','2014-11-24 05:09:42','normal',0,0);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_last_online`
--

DROP TABLE IF EXISTS `sys_user_last_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_last_online` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `system_host` varchar(100) DEFAULT NULL,
  `last_login_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_stop_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_count` bigint(20) DEFAULT NULL,
  `total_online_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_last_online_sys_user_id` (`user_id`),
  KEY `idx_sys_user_last_online_username` (`username`),
  KEY `idx_sys_user_last_online_host` (`host`),
  KEY `idx_sys_user_last_online_system_host` (`system_host`),
  KEY `idx_sys_user_last_online_last_login_timestamp` (`last_login_timestamp`),
  KEY `idx_sys_user_last_online_last_stop_timestamp` (`last_stop_timestamp`),
  KEY `idx_sys_user_last_online_user_agent` (`user_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_last_online`
--

LOCK TABLES `sys_user_last_online` WRITE;
/*!40000 ALTER TABLE `sys_user_last_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_last_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_online` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT '0',
  `username` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `system_host` varchar(100) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `start_timestsamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeout` bigint(20) DEFAULT NULL,
  `session` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_sys_user_online_sys_user_id` (`user_id`),
  KEY `idx_sys_user_online_username` (`username`),
  KEY `idx_sys_user_online_host` (`host`),
  KEY `idx_sys_user_online_system_host` (`system_host`),
  KEY `idx_sys_user_online_start_timestsamp` (`start_timestsamp`),
  KEY `idx_sys_user_online_last_access_time` (`last_access_time`),
  KEY `idx_sys_user_online_user_agent` (`user_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('5bec106b-e3c4-4b9e-8757-1f2743cba120',1,'admin','127.0.0.1','127.0.0.1:8080','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36','on_line','2015-03-18 14:27:30','2015-03-18 14:43:42',1800000,'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002435626563313036622d653363342d346239652d383735372d3166323734336362613132307372000e6a6176612e7574696c2e44617465686a81014b597419030000787077080000014c2d483a24787371007e000777080000014c2d570ebd78771300000000001b774000093132372e302e302e31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001740008757365726e616d6574000561646d696e74004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000171007e001078780077010171007e0016787400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e000978787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e6574000e3132372e302e302e313a3830383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34302e302e323231342e313135205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000171007e001077020f0071007e002471007e002171007e001e71007e001078'),('6e22a32d-cc32-4b9b-b996-25b65804b67c',1,'admin','127.0.0.1','127.0.0.1:8080','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36','on_line','2015-03-18 14:26:17','2015-03-18 14:26:24',1800000,'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002436653232613332642d636333322d346239622d623939362d3235623635383034623637637372000e6a6176612e7574696c2e44617465686a81014b597419030000787077080000014c2d471c61787371007e000777080000014c2d47380578771300000000001b774000093132372e302e302e31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001740008757365726e616d6574000561646d696e74004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000171007e001078780077010171007e0016787400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e000978787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e6574000e3132372e302e302e313a3830383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34302e302e323231342e313135205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000171007e001077020f0071007e002471007e002171007e001e71007e001078'),('d7a76e0e-d896-4d6c-bbf0-4067306caaf5',12,'sjl','127.0.0.1','127.0.0.1:8080','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36','on_line','2015-03-18 14:27:13','2015-03-18 14:27:16',1800000,'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002464376137366530652d643839362d346436632d626266302d3430363733303663616166357372000e6a6176612e7574696c2e44617465686a81014b597419030000787077080000014c2d47f778787371007e000777080000014c2d4802cb78771300000000001b774000093132372e302e302e31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001740008757365726e616d65740003736a6c74004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000171007e001078780077010171007e0016787400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e000978787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e6574000e3132372e302e302e313a3830383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34302e302e323231342e313135205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000c71007e001077020f0071007e002471007e002171007e001e71007e001078');
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_organization_job`
--

DROP TABLE IF EXISTS `sys_user_organization_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_organization_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_organization_job` (`user_id`,`organization_id`,`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_organization_job`
--

LOCK TABLES `sys_user_organization_job` WRITE;
/*!40000 ALTER TABLE `sys_user_organization_job` DISABLE KEYS */;
INSERT INTO `sys_user_organization_job` VALUES (1,11,1,1);
/*!40000 ALTER TABLE `sys_user_organization_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_status_history`
--

DROP TABLE IF EXISTS `sys_user_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_status_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `op_user_id` bigint(20) DEFAULT NULL,
  `op_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_sys_user_block_history_user_id_block_date` (`user_id`,`op_date`),
  KEY `idx_sys_user_block_history_op_user_id_op_date` (`op_user_id`,`op_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_status_history`
--

LOCK TABLES `sys_user_status_history` WRITE;
/*!40000 ALTER TABLE `sys_user_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_status_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-27 20:10:08

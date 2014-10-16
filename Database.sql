CREATE DATABASE  IF NOT EXISTS `ucp_auth` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `ucp_auth`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: ucp_auth
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,21,NULL,NULL,'2014-10-14 12:24:40','2014-10-14 12:24:40','2014-10-14 00:00:00','2014-10-19 00:00:00','Event 1',NULL),(2,21,NULL,NULL,'2014-10-14 12:25:50','2014-10-14 12:25:50','2014-10-04 00:00:00','2014-10-05 00:00:00','Event 2',NULL),(3,21,NULL,NULL,'2014-10-14 12:26:06','2014-10-14 12:26:06','2014-10-20 00:00:00','2014-10-20 00:00:00','Event 3',NULL),(4,21,NULL,NULL,'2014-10-14 12:26:24','2014-10-14 12:26:24','2014-10-02 00:00:00','2014-10-03 00:00:00','Event 4',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formations`
--

DROP TABLE IF EXISTS `formations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_formations_on_site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formations`
--

LOCK TABLES `formations` WRITE;
/*!40000 ALTER TABLE `formations` DISABLE KEYS */;
INSERT INTO `formations` VALUES (1,'Licence professionnelle développement web',NULL,'2014-09-28 15:20:04','2014-09-28 15:20:04');
/*!40000 ALTER TABLE `formations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_groups_on_user_id` (`user_id`),
  KEY `index_groups_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,14,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(2,15,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(3,16,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(4,17,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(5,18,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(6,19,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(7,20,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(8,21,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(9,22,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(10,23,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(11,24,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(12,25,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(13,26,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(14,27,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(15,28,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(16,29,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(17,30,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(18,31,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(19,32,21,'2014-09-28 17:22:23','2014-09-28 17:22:23'),(20,33,21,'2014-09-28 17:22:23','2014-09-28 17:22:23');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_information_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,NULL,'013112322',14,'2014-09-28 15:09:08','2014-09-28 15:09:08',NULL,NULL,NULL);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_date` datetime DEFAULT NULL,
  `formation_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotions_on_formation_id` (`formation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (21,'2014-09-01 00:00:00',1,'2014-09-28 16:02:26','2014-09-28 16:02:26');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_name` (`name`),
  KEY `index_roles_on_name_and_resource_type_and_resource_id` (`name`,`resource_type`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',NULL,NULL,'2014-09-25 12:46:33','2014-09-25 12:46:33'),(2,'student',NULL,NULL,'2014-09-28 14:53:20','2014-09-28 14:53:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle_rooms`
--

DROP TABLE IF EXISTS `salle_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_salle_rooms_on_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle_rooms`
--

LOCK TABLES `salle_rooms` WRITE;
/*!40000 ALTER TABLE `salle_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `salle_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140922140006'),('20140922164604'),('20140922170018'),('20140922170412'),('20140922170524'),('20140922171706'),('20140923074231'),('20140923081245'),('20140923122049'),('20140923122918'),('20140924141444'),('20140925102707'),('20140926055000'),('20140928155609'),('20140928155827'),('20141001063242'),('20141001064424'),('20141011125115'),('20141011125545');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_signs`
--

DROP TABLE IF EXISTS `session_signs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_signs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `timesheet_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_signs`
--

LOCK TABLES `session_signs` WRITE;
/*!40000 ALTER TABLE `session_signs` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_signs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `adress` text COLLATE utf8_unicode_ci,
  `geo` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheets`
--

DROP TABLE IF EXISTS `timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `timehseet_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_timesheets_on_user_id` (`user_id`),
  KEY `index_timesheets_on_event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheets`
--

LOCK TABLES `timesheets` WRITE;
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ine_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_type` (`type`),
  KEY `index_users_on_authentication_token` (`authentication_token`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'rouksana.ashraf@gmail.com','Rouksana','ashraf','Student',NULL,NULL,'$2a$10$FGsvg2jWc8G3JkbH3W6C3.hMN6M0wekT95.i1gDG2XamkHpvdMRrS',NULL,NULL,NULL,7,'2014-10-16 07:41:03','2014-10-16 07:27:34','127.0.0.1','127.0.0.1','2014-09-28 14:58:28','2014-10-16 07:41:03','B9UxdxQj2cxVM4yegeE9'),(15,'louis.audeon@gmail.com','Louis','audeon','Student',NULL,NULL,'$2a$10$.1rLltIJtYtxeitOulVhweXRb6tLBAeu0uFUH7X1KDBppYZ.1CXAG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:28','2014-09-28 14:58:28','KQbgPC4_TLJE5x6s__Hh'),(16,'pierre.barbarin@gmail.com','Pierre','barbarin','Student',NULL,NULL,'$2a$10$NgwIyq6EQn7MKmEULYBJIeyZsM80NJyPNrY1SpVtYSbmenLQH90KS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:28','2014-09-28 14:58:28','iyU4oAJc6gh_htkwXcRv'),(17,'arthur.battut@gmail.com','Arthur','battut','Student',NULL,NULL,'$2a$10$8fb/GUdLygMPoprDD.kFCenIDgknryYuePCL.jU/.GnMalSRpFLsG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:28','2014-09-28 14:58:28','YzHxyfBhuyGq1myyY_NR'),(18,'alain.cajuste@gmail.com','Alain','cajuste','Student',NULL,NULL,'$2a$10$RrMFlzgvjw78dfa0OfhnKugcnMm3mRHoj/8c2nbHp40sGgwCKxNES',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:28','2014-09-28 14:58:28','r5PxesJaRkxgyaDyT8rm'),(19,'ivan.daum@gmail.com','Ivan','daum','Student',NULL,NULL,'$2a$10$Q8EsyOkjxyP4QfTgeKQ.Tu6OnkOAlUqoqvOfvZsY5kOa6NxF.PD2K',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:28','2014-09-28 14:58:28','JFDuw-uxxJMwAWo913Su'),(20,'romain.desajardin@gmail.com','Romain','de sa jardin','Student',NULL,NULL,'$2a$10$EtlZjP/R.S5zzKGFKJyAwOXhTGBGKTFrnTqKpjC.Q.aNl.BozJPc.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:28','2014-09-28 14:58:28','AhX8TAS_rzwEsUKjzxjd'),(21,'sami.errighi@gmail.com','Sami','errighi','Student',NULL,NULL,'$2a$10$g/A2sly7LahWllr9hDSKBegsx.VkKXi95Rjr.DU1au5PjbRIniB3i',NULL,NULL,NULL,18,'2014-09-29 08:35:33','2014-09-29 08:34:54','127.0.0.1','127.0.0.1','2014-09-28 14:58:29','2014-09-29 08:35:33','ycinkfVT-LbybYWsPHuS'),(22,'benjamin.gammaire@gmail.com','Benjamin','gammaire','Student',NULL,NULL,'$2a$10$/CL4o1ANkcN5iUgznr233OjfoCY75zbUdTPk.iPBqvFoeWHiYR5UG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','KejwJbESGUhZZpwwzQAK'),(23,'antoine.grelard@gmail.com','Antoine','grelard','Student',NULL,NULL,'$2a$10$uddY8EPABNNWcBW7jIanwOpolvyv02jaUs5e1A0uilkvfP28ZisIu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','zr6T7mdhvKHKZ-ZtqDg6'),(24,'irfann.karmjy@gmail.com','Irfann','karmjy','Student',NULL,NULL,'$2a$10$kuUiyYJ1i55PKXRvcMCHVOhPUUs.lIxI7nnzwlIUetziE4JEqRdP.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','9fETy__xqvsHe2MdNRif'),(25,'nicolas.kervoern@gmail.com','Nicolas','kervoern','Student',NULL,NULL,'$2a$10$m6l/JKS1/ukOnjjGlGS.huAkNHXQyFVWDpxMfBEnZmHyhmOL/jyJS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','4Yo6P2-1fpDshqMxyAdK'),(26,'julien.kosinski@gmail.com','Julien','kosinski','Student',NULL,NULL,'$2a$10$ApCwJvO8liDjIpD/lGvo4uPkOvYDF5i0bJcqrjcd5dEBPWukeTs9O',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','51f_xp2noy8-fKzyv7JY'),(27,'samantha.lemener@gmail.com','Samantha','le mener','Student',NULL,NULL,'$2a$10$lJqKOrxRWMa72cnV.yNCdefHK62k2dLkMbKdkblrYuS33XTHWKzIi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','8TzyoNz1jR8PDTUZEBZo'),(28,'tony.lucas@gmail.com','Tony','lucas','Student',NULL,NULL,'$2a$10$vl7u4R1.HXKvZfXAZiKYF.0EL0X0u3G3oT235610aAf1tBxTyeia6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','xyP6yAKMqeyT98N4uimp'),(29,'thomas.maurer@gmail.com','Thomas','maurer','Student',NULL,NULL,'$2a$10$9lykHgMV3lEv2ndjrIojAOq4GffQKBetHmgiZ7GAnzb4HdbnEg4nK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','sWXxDBxyVxgZnU_X7o-W'),(30,'lois.menssier@gmail.com','Lois','menssier','Student',NULL,NULL,'$2a$10$BP22bynINDgYclGTUAIZ7.aBuFPLghI9rvJOD5b9uTEojJzOYhWKq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','fLezkU1zEuAn-2KxpqPx'),(31,'benois.paquier@gmail.com','Benois','paquier','Student',NULL,NULL,'$2a$10$NICF4Y7XvfEh7XTAceu3.OIS0MU7wlsQatsmfTUH.Mwo2T8RIeAzu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','AYbvRT5rZ55wApxzyvSJ'),(32,'anne.vialle@gmail.com','Anne','vialle','Student',NULL,NULL,'$2a$10$8.r0feigj1.bLFT85VdeXu3Dh4bR5Q6FN4lJE/h7bbf41NuAu8L8u',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','uTmVt-VonVEozXbe734K'),(33,'walid.yahia-cherif@gmail.com','Walid','yahia-cherif','Student',NULL,NULL,'$2a$10$cYlGswMNwYAjlUxfwLzyu.b7xgLgHUxY.UK1QFa5EHjN9jS3XcupS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-09-28 14:58:29','2014-09-28 14:58:29','51ADhBSnHZbp-wzSPdgw');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_users_roles_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (14,2),(14,2),(15,2),(15,2),(16,2),(16,2),(17,2),(17,2),(18,2),(18,2),(19,2),(19,2),(20,2),(20,2),(21,2),(21,2),(22,2),(22,2),(23,2),(23,2),(24,2),(24,2),(25,2),(25,2),(26,2),(26,2),(27,2),(27,2),(28,2),(28,2),(29,2),(29,2),(30,2),(30,2),(31,2),(31,2),(32,2),(32,2),(33,2),(33,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-16 10:43:15

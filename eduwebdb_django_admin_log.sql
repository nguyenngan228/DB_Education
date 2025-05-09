-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: eduwebdb
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_courses_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-05 05:58:33.125271','1','Design',1,'[{\"added\": {}}]',6,1),(2,'2024-08-05 05:58:41.785779','2','IT & Software',1,'[{\"added\": {}}]',6,1),(3,'2024-08-05 06:05:52.775971','2','teacher1',1,'[{\"added\": {}}]',7,1),(4,'2024-08-05 06:06:20.343958','1','Teacher object (1)',1,'[{\"added\": {}}]',9,1),(5,'2024-08-05 06:08:11.688965','1','Bulit web with C#',1,'[{\"added\": {}}]',10,1),(6,'2024-08-05 09:10:01.475485','2','Design for beginner',1,'[{\"added\": {}}, {\"added\": {\"name\": \"tag\", \"object\": \"Tag object (1)\"}}, {\"added\": {\"name\": \"learning\", \"object\": \"Learning object (1)\"}}]',10,1),(7,'2024-08-05 15:06:51.371568','3','Marketing',1,'[{\"added\": {}}]',6,1),(8,'2024-08-05 15:07:34.390876','3','Online Ad',1,'[{\"added\": {}}, {\"added\": {\"name\": \"tag\", \"object\": \"Tag object (2)\"}}]',10,1),(9,'2024-08-05 15:08:33.472643','1','Lesson object (1)',1,'[{\"added\": {}}]',14,1),(10,'2024-09-21 04:53:47.964750','125','ndmn',1,'[{\"added\": {}}]',7,1),(11,'2024-09-21 04:55:18.384107','125','ndmn',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',7,1),(12,'2024-10-11 00:18:14.278133','40','Independent',1,'[{\"added\": {}}]',10,1),(13,'2024-10-11 00:18:54.717168','55','Chapter 1',1,'[{\"added\": {}}]',21,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:23

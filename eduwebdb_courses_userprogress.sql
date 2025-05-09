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
-- Table structure for table `courses_userprogress`
--

DROP TABLE IF EXISTS `courses_userprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_userprogress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_completed` tinyint(1) NOT NULL,
  `student_id` bigint NOT NULL,
  `chapter_id` bigint DEFAULT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_userprogress_student_id_chapter_id_95adcb0d_uniq` (`student_id`,`chapter_id`),
  KEY `courses_userprogress_chapter_id_3d2277a5_fk_courses_chapter_id` (`chapter_id`),
  CONSTRAINT `courses_userprogress_chapter_id_3d2277a5_fk_courses_chapter_id` FOREIGN KEY (`chapter_id`) REFERENCES `courses_chapter` (`id`),
  CONSTRAINT `courses_userprogress_student_id_86b5d683_fk_courses_student_id` FOREIGN KEY (`student_id`) REFERENCES `courses_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_userprogress`
--

LOCK TABLES `courses_userprogress` WRITE;
/*!40000 ALTER TABLE `courses_userprogress` DISABLE KEYS */;
INSERT INTO `courses_userprogress` VALUES (2,0,10,15,'2024-08-14','2024-08-14'),(3,0,10,16,'2024-08-14','2024-08-14'),(4,0,10,17,'2024-08-14','2024-08-14'),(5,0,10,18,'2024-08-14','2024-08-18'),(6,0,10,11,'2024-08-14','2024-08-14'),(7,0,10,12,'2024-08-14','2024-08-14'),(8,0,10,13,'2024-08-14','2024-08-14'),(9,1,10,10,'2024-08-14','2025-05-08'),(10,1,10,1,'2024-08-17','2024-08-18'),(11,1,8,20,'2024-08-18','2024-08-27'),(12,1,10,2,'2024-08-18','2024-08-18'),(13,1,10,3,'2024-08-18','2024-08-18'),(14,1,10,4,'2024-08-18','2024-08-18'),(15,1,10,5,'2024-08-18','2024-08-18'),(16,1,10,6,'2024-08-18','2024-08-18'),(17,1,10,7,'2024-08-18','2024-08-18'),(18,1,10,8,'2024-08-18','2024-08-18'),(19,1,10,9,'2024-08-18','2024-08-18'),(20,1,10,21,'2024-08-18','2024-08-18'),(21,1,10,22,'2024-08-18','2024-08-18'),(22,1,10,20,'2024-08-19','2024-08-19'),(23,1,8,19,'2024-08-26','2024-08-26'),(24,1,8,10,'2024-08-27','2024-08-27'),(25,1,8,11,'2024-08-27','2024-08-27'),(26,1,8,12,'2024-08-27','2024-08-27'),(27,1,8,13,'2024-08-27','2024-08-27'),(28,1,8,1,'2024-08-27','2024-08-27'),(29,1,8,2,'2024-09-08','2024-09-08'),(30,1,8,3,'2024-09-14','2024-09-14'),(31,1,8,4,'2024-09-14','2024-09-14'),(32,1,8,5,'2024-09-14','2024-09-14'),(33,1,8,6,'2024-09-14','2024-09-14'),(34,1,8,7,'2024-09-14','2024-09-14'),(35,1,8,8,'2024-09-14','2024-09-14'),(36,1,8,9,'2024-09-14','2024-09-14'),(37,1,8,41,'2024-10-06','2024-10-06'),(38,1,8,47,'2024-10-11','2024-10-11'),(39,1,8,42,'2025-03-23','2025-03-23'),(40,1,4,10,'2025-04-26','2025-04-26'),(41,1,4,47,'2025-04-26','2025-04-26'),(42,1,3,47,'2025-04-26','2025-04-26'),(43,1,3,50,'2025-04-26','2025-04-26'),(44,1,4,50,'2025-04-26','2025-04-26'),(45,0,8,56,'2025-05-05','2025-05-05'),(46,1,8,57,'2025-05-05','2025-05-05');
/*!40000 ALTER TABLE `courses_userprogress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:22

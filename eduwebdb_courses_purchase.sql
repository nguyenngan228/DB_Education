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
-- Table structure for table `courses_purchase`
--

DROP TABLE IF EXISTS `courses_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_purchase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `course_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_purchase_student_id_course_id_ece547dd_uniq` (`student_id`,`course_id`),
  KEY `courses_purchase_course_id_b0fb136b_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_purchase_course_id_b0fb136b_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `courses_purchase_student_id_b2565d3b_fk_courses_student_id` FOREIGN KEY (`student_id`) REFERENCES `courses_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_purchase`
--

LOCK TABLES `courses_purchase` WRITE;
/*!40000 ALTER TABLE `courses_purchase` DISABLE KEYS */;
INSERT INTO `courses_purchase` VALUES (1,'2024-08-14','2024-08-14',15,10),(2,'2024-08-17','2024-08-17',4,10),(3,'2024-08-17','2024-08-17',10,10),(4,'2024-08-17','2024-08-17',11,10),(5,'2024-08-17','2024-08-17',11,8),(6,'2024-08-17','2024-08-17',23,8),(7,'2024-08-17','2024-08-17',4,8),(8,'2024-08-17','2024-08-17',4,9),(9,'2024-08-27','2024-08-27',5,8),(10,'2024-08-28','2024-08-28',23,10),(11,'2024-08-28','2024-08-28',5,10),(12,'2024-09-08','2024-09-08',33,8),(13,'2024-09-08','2024-09-08',35,8),(14,'2024-09-08','2024-09-08',1,8),(15,'2024-09-17','2024-09-17',1,9),(16,'2024-09-17','2024-09-17',33,9),(17,'2024-09-17','2024-09-17',1,10),(18,'2024-09-17','2024-09-17',33,10),(19,'2024-09-17','2024-09-17',1,5),(20,'2024-09-17','2024-09-17',1,7),(21,'2024-09-17','2024-09-17',4,7),(22,'2024-09-17','2024-09-17',2,10),(23,'2024-09-17','2024-09-17',3,10),(24,'2024-10-06','2024-10-06',2,8),(25,'2024-10-06','2024-10-06',6,8),(26,'2024-10-06','2024-10-06',37,8),(27,'2024-10-10','2024-10-10',11,4),(28,'2024-10-11','2024-10-11',3,8),(29,'2024-10-11','2024-10-11',12,8),(30,'2024-10-11','2024-10-11',7,8),(31,'2024-10-11','2024-10-11',1,25),(32,'2024-10-11','2024-10-11',6,6),(33,'2024-10-11','2024-10-11',1,2),(34,'2024-10-11','2024-10-11',1,3),(35,'2025-04-10','2025-04-10',9,8),(36,'2025-04-11','2025-04-11',36,8),(37,'2025-04-12','2025-04-12',7,10),(38,'2025-04-12','2025-04-12',2,1),(39,'2025-04-12','2025-04-12',3,1),(40,'2025-04-12','2025-04-12',4,1),(41,'2025-04-12','2025-04-12',1,1),(42,'2025-04-12','2025-04-12',2,2),(43,'2025-04-26','2025-04-26',5,4),(44,'2025-04-26','2025-04-26',2,3),(45,'2025-04-26','2025-04-26',2,4),(46,'2025-05-05','2025-05-05',42,8);
/*!40000 ALTER TABLE `courses_purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:25

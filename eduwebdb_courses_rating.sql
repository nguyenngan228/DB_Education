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
-- Table structure for table `courses_rating`
--

DROP TABLE IF EXISTS `courses_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `rate` int NOT NULL,
  `course_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_rating_student_id_course_id_511b8f19_uniq` (`student_id`,`course_id`),
  KEY `courses_rating_course_id_6073e0bb_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_rating_course_id_6073e0bb_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `courses_rating_student_id_95bf188a_fk_courses_student_id` FOREIGN KEY (`student_id`) REFERENCES `courses_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_rating`
--

LOCK TABLES `courses_rating` WRITE;
/*!40000 ALTER TABLE `courses_rating` DISABLE KEYS */;
INSERT INTO `courses_rating` VALUES (9,'2024-08-28','2024-10-06',5,4,8),(12,'2024-08-28','2024-08-28',3,5,8),(13,'2024-08-28','2025-04-02',4,1,8),(14,'2024-08-28','2024-08-28',5,11,10),(15,'2024-08-28','2024-08-28',2,4,10),(16,'2024-08-28','2024-08-28',4,4,9),(17,'2024-08-28','2024-08-28',5,23,8),(21,'2024-08-28','2024-08-28',5,10,10),(22,'2024-08-28','2024-08-28',3,5,10);
/*!40000 ALTER TABLE `courses_rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:21

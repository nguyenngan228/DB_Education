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
-- Table structure for table `courses_studentexam`
--

DROP TABLE IF EXISTS `courses_studentexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_studentexam` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` double DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_date` datetime(6) DEFAULT NULL,
  `exam_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_studentexam_student_id_exam_id_eee501b6_uniq` (`student_id`,`exam_id`),
  KEY `courses_studentexam_exam_id_5cade188_fk_courses_exam_id` (`exam_id`),
  CONSTRAINT `courses_studentexam_exam_id_5cade188_fk_courses_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `courses_exam` (`id`),
  CONSTRAINT `courses_studentexam_student_id_d7877c8a_fk_courses_student_id` FOREIGN KEY (`student_id`) REFERENCES `courses_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_studentexam`
--

LOCK TABLES `courses_studentexam` WRITE;
/*!40000 ALTER TABLE `courses_studentexam` DISABLE KEYS */;
INSERT INTO `courses_studentexam` VALUES (1,0,'Completed','2025-03-24 16:33:52.352309',1,8),(2,0,'Completed','2025-04-07 16:03:57.738395',2,8),(3,3.33,'Completed','2025-04-02 17:22:03.314881',3,8),(4,10,'Completed','2025-04-07 14:54:59.491069',1,2);
/*!40000 ALTER TABLE `courses_studentexam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:20

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
-- Table structure for table `courses_studentanswer`
--

DROP TABLE IF EXISTS `courses_studentanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_studentanswer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_correct` tinyint(1) NOT NULL,
  `question_id` bigint NOT NULL,
  `selected_answer_id` bigint NOT NULL,
  `student_exam_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_studentanswe_question_id_6cfb7b82_fk_courses_q` (`question_id`),
  KEY `courses_studentanswe_selected_answer_id_5d22de18_fk_courses_a` (`selected_answer_id`),
  KEY `courses_studentanswe_student_exam_id_347122ee_fk_courses_s` (`student_exam_id`),
  CONSTRAINT `courses_studentanswe_question_id_6cfb7b82_fk_courses_q` FOREIGN KEY (`question_id`) REFERENCES `courses_question` (`id`),
  CONSTRAINT `courses_studentanswe_selected_answer_id_5d22de18_fk_courses_a` FOREIGN KEY (`selected_answer_id`) REFERENCES `courses_answer` (`id`),
  CONSTRAINT `courses_studentanswe_student_exam_id_347122ee_fk_courses_s` FOREIGN KEY (`student_exam_id`) REFERENCES `courses_studentexam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_studentanswer`
--

LOCK TABLES `courses_studentanswer` WRITE;
/*!40000 ALTER TABLE `courses_studentanswer` DISABLE KEYS */;
INSERT INTO `courses_studentanswer` VALUES (14,1,5,13,3),(18,1,1,2,4),(19,0,2,5,2);
/*!40000 ALTER TABLE `courses_studentanswer` ENABLE KEYS */;
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

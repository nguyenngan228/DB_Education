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
-- Table structure for table `courses_quizquestion`
--

DROP TABLE IF EXISTS `courses_quizquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_quizquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` double NOT NULL,
  `chapter_id` bigint NOT NULL,
  `correct_answer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_quizquestion_chapter_id_e53b8775_fk_courses_chapter_id` (`chapter_id`),
  KEY `courses_quizquestion_correct_answer_id_5c3b1896_fk_courses_q` (`correct_answer_id`),
  CONSTRAINT `courses_quizquestion_chapter_id_e53b8775_fk_courses_chapter_id` FOREIGN KEY (`chapter_id`) REFERENCES `courses_chapter` (`id`),
  CONSTRAINT `courses_quizquestion_correct_answer_id_5c3b1896_fk_courses_q` FOREIGN KEY (`correct_answer_id`) REFERENCES `courses_quizanswer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_quizquestion`
--

LOCK TABLES `courses_quizquestion` WRITE;
/*!40000 ALTER TABLE `courses_quizquestion` DISABLE KEYS */;
INSERT INTO `courses_quizquestion` VALUES (1,'2 + 2 = ?',20,1,2),(3,'Who is prettiest?',4.166014,38,7),(4,'Who is prettiest?',0,38,10),(5,'Water makes up what percent of the human body?',8.327988,21,13);
/*!40000 ALTER TABLE `courses_quizquestion` ENABLE KEYS */;
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

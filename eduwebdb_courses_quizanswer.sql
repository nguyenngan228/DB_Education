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
-- Table structure for table `courses_quizanswer`
--

DROP TABLE IF EXISTS `courses_quizanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_quizanswer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_quizanswer_question_id_f204eaaf_fk_courses_q` (`question_id`),
  CONSTRAINT `courses_quizanswer_question_id_f204eaaf_fk_courses_q` FOREIGN KEY (`question_id`) REFERENCES `courses_quizquestion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_quizanswer`
--

LOCK TABLES `courses_quizanswer` WRITE;
/*!40000 ALTER TABLE `courses_quizanswer` DISABLE KEYS */;
INSERT INTO `courses_quizanswer` VALUES (1,'1',1,0),(2,'4',1,1),(3,'3',1,0),(4,'5',1,1),(5,'Ngan',3,0),(6,'Thanh Ngan',3,0),(7,'Nguyen Dang Thanh Ngan',3,1),(8,'Ngan',4,0),(9,'Thanh Ngan',4,0),(10,'Nguyen Dang Thanh Ngan',4,1),(11,'Ngan Ngan',4,0),(12,'50%',5,0),(13,'66%',5,1),(14,'70%',5,0),(15,'80%',5,0);
/*!40000 ALTER TABLE `courses_quizanswer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:24

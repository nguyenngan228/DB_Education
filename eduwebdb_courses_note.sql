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
-- Table structure for table `courses_note`
--

DROP TABLE IF EXISTS `courses_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_note` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `timestamp` double NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_note_chapter_id_9f74f10f_fk_courses_chapter_id` (`chapter_id`),
  KEY `courses_note_student_id_394a4fde_fk_courses_student_id` (`student_id`),
  CONSTRAINT `courses_note_chapter_id_9f74f10f_fk_courses_chapter_id` FOREIGN KEY (`chapter_id`) REFERENCES `courses_chapter` (`id`),
  CONSTRAINT `courses_note_student_id_394a4fde_fk_courses_student_id` FOREIGN KEY (`student_id`) REFERENCES `courses_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_note`
--

LOCK TABLES `courses_note` WRITE;
/*!40000 ALTER TABLE `courses_note` DISABLE KEYS */;
INSERT INTO `courses_note` VALUES (1,'2024-08-29','2024-08-29',20,'note',15,10),(2,'2024-08-29','2024-08-29',20,'note',11,10),(3,'2024-08-29','2024-08-29',20,'note note note',20,8),(4,'2024-08-29','2024-08-29',30,'note',20,8),(5,'2024-08-29','2024-08-29',58.58905,'test note',20,8),(6,'2024-08-29','2024-08-29',13.756313,'note',19,8),(7,'2024-08-29','2024-08-29',23.479229,'eee',19,8),(8,'2024-08-29','2024-08-29',32.110646,'rr',19,8),(9,'2024-08-29','2024-08-29',35.550786,'noted',19,8),(10,'2024-09-08','2024-09-08',19.26629,'test note',19,8),(11,'2024-09-12','2024-09-12',3.452111,'note test 12/9',10,8),(12,'2024-09-14','2024-09-14',0,'note ne he',4,8),(13,'2024-09-14','2024-09-14',6.923581,'hehe',9,8),(14,'2024-10-06','2024-10-06',2.812373,'Primary part',41,8),(15,'2024-10-10','2024-10-10',4.718788,'Key primary                              ',1,10),(16,'2024-10-11','2024-10-11',32.455611,'Add note',1,8),(17,'2025-04-26','2025-04-26',12.951076,'this is important',50,3),(18,'2025-05-05','2025-05-05',0,'abc',57,8),(19,'2025-05-05','2025-05-05',18.666869,'abc',56,8),(20,'2025-05-09','2025-05-09',24.2330450705719,'take note',1,8);
/*!40000 ALTER TABLE `courses_note` ENABLE KEYS */;
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

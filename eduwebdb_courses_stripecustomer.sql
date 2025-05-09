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
-- Table structure for table `courses_stripecustomer`
--

DROP TABLE IF EXISTS `courses_stripecustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_stripecustomer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stripeCustomerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripeCustomerId` (`stripeCustomerId`),
  KEY `courses_stripecustomer_student_id_35c82d2c_fk_courses_student_id` (`student_id`),
  CONSTRAINT `courses_stripecustomer_student_id_35c82d2c_fk_courses_student_id` FOREIGN KEY (`student_id`) REFERENCES `courses_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_stripecustomer`
--

LOCK TABLES `courses_stripecustomer` WRITE;
/*!40000 ALTER TABLE `courses_stripecustomer` DISABLE KEYS */;
INSERT INTO `courses_stripecustomer` VALUES (1,'cus_Qg43Gejx9xGBF8','2024-08-17','2024-08-17',10),(2,'cus_QgB5bGVgMfEfdo','2024-08-17','2024-08-17',8),(3,'cus_QgBQ6un7HEG3zh','2024-08-17','2024-08-17',9),(4,'cus_Qrab4pXPxtOOjS','2024-09-17','2024-09-17',5),(5,'cus_QrajO2f43cfbM7','2024-09-17','2024-09-17',7),(6,'cus_R0PuFzNaI2e28k','2024-10-10','2024-10-10',4),(7,'cus_R0X82cfciduvSw','2024-10-11','2024-10-11',25),(8,'cus_R0XExjOXpvYZWl','2024-10-11','2024-10-11',6),(9,'cus_R0XhKWya2fEP0j','2024-10-11','2024-10-11',2),(10,'cus_R0XvZOYkEdyhLF','2024-10-11','2024-10-11',3),(11,'cus_S7J6cPswQMsUbf','2025-04-12','2025-04-12',1);
/*!40000 ALTER TABLE `courses_stripecustomer` ENABLE KEYS */;
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

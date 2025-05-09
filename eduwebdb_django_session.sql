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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1gtf1c5zhyz7tg79kxsxhe5v9xc7omqr','.eJxVjEEOwiAQRe_C2hAGGKQu3XsGMsAgVUOT0q6Md7dNutDtf-_9twi0LjWsnecwZnERIE6_W6T05LaD_KB2n2Sa2jKPUe6KPGiXtynz63q4fweVet1qHKy3HB0VcAM7AjyjgmhMKRELAymnGNAYYNDe2c0zTuuYfU4KDYnPF9ArN1s:1saoZj:BcTVJXOwgjHyBi6X7V902eCWxabuzn98kK75Wy9EADQ','2024-08-19 03:39:59.287880'),('3tcjsoroqpbj9y028gprpioy7xubry2b','.eJxVjEEOwiAQRe_C2hAGGKQu3XsGMsAgVUOT0q6Md7dNutDtf-_9twi0LjWsnecwZnERIE6_W6T05LaD_KB2n2Sa2jKPUe6KPGiXtynz63q4fweVet1qHKy3HB0VcAM7AjyjgmhMKRELAymnGNAYYNDe2c0zTuuYfU4KDYnPF9ArN1s:1suYia:smh0SQ8QDe61e30A3nV3qgxe1y3U2QBgoynh_T1oj_Q','2024-10-12 14:46:44.193053'),('ald284y5ntuuawvbgdibpdpmrw2fr00f','.eJxVjEEOwiAQRe_C2hAGGKQu3XsGMsAgVUOT0q6Md7dNutDtf-_9twi0LjWsnecwZnERIE6_W6T05LaD_KB2n2Sa2jKPUe6KPGiXtynz63q4fweVet1qHKy3HB0VcAM7AjyjgmhMKRELAymnGNAYYNDe2c0zTuuYfU4KDYnPF9ArN1s:1soQZr:n2IKzl1WnnwtRJcTwGVKNKJIuHs_aBk4ccD7XDkQwEE','2024-09-25 16:52:23.662712'),('etbaoxzdg0wp2zn8ekuhhpi1b2gnyyb1','.eJxVjEEOwiAQRe_C2hAGGKQu3XsGMsAgVUOT0q6Md7dNutDtf-_9twi0LjWsnecwZnERIE6_W6T05LaD_KB2n2Sa2jKPUe6KPGiXtynz63q4fweVet1qHKy3HB0VcAM7AjyjgmhMKRELAymnGNAYYNDe2c0zTuuYfU4KDYnPF9ArN1s:1tsPBH:hJ7toD16aSJZUAse4AYBXbgBUL-eYi2OrqR9JYqm1yo','2025-03-26 16:43:43.181424'),('zs1upnzxp8537auq51h9lg83p4h72nir','.eJxVjEEOwiAQRe_C2hAGGKQu3XsGMsAgVUOT0q6Md7dNutDtf-_9twi0LjWsnecwZnERIE6_W6T05LaD_KB2n2Sa2jKPUe6KPGiXtynz63q4fweVet1qHKy3HB0VcAM7AjyjgmhMKRELAymnGNAYYNDe2c0zTuuYfU4KDYnPF9ArN1s:1sj0Vf:pv0GoJmqxvFvNN00SSTooNiLuBnLs2N0Px7OSTCYg10','2024-09-10 18:01:39.099867');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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

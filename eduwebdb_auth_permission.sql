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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add student',8,'add_student'),(30,'Can change student',8,'change_student'),(31,'Can delete student',8,'delete_student'),(32,'Can view student',8,'view_student'),(33,'Can add teacher',9,'add_teacher'),(34,'Can change teacher',9,'change_teacher'),(35,'Can delete teacher',9,'delete_teacher'),(36,'Can view teacher',9,'view_teacher'),(37,'Can add course',10,'add_course'),(38,'Can change course',10,'change_course'),(39,'Can delete course',10,'delete_course'),(40,'Can view course',10,'view_course'),(41,'Can add prerequistite',11,'add_prerequistite'),(42,'Can change prerequistite',11,'change_prerequistite'),(43,'Can delete prerequistite',11,'delete_prerequistite'),(44,'Can view prerequistite',11,'view_prerequistite'),(45,'Can add learning',12,'add_learning'),(46,'Can change learning',12,'change_learning'),(47,'Can delete learning',12,'delete_learning'),(48,'Can view learning',12,'view_learning'),(49,'Can add tag',13,'add_tag'),(50,'Can change tag',13,'change_tag'),(51,'Can delete tag',13,'delete_tag'),(52,'Can view tag',13,'view_tag'),(53,'Can add lesson',14,'add_lesson'),(54,'Can change lesson',14,'change_lesson'),(55,'Can delete lesson',14,'delete_lesson'),(56,'Can view lesson',14,'view_lesson'),(57,'Can add application',15,'add_application'),(58,'Can change application',15,'change_application'),(59,'Can delete application',15,'delete_application'),(60,'Can view application',15,'view_application'),(61,'Can add access token',16,'add_accesstoken'),(62,'Can change access token',16,'change_accesstoken'),(63,'Can delete access token',16,'delete_accesstoken'),(64,'Can view access token',16,'view_accesstoken'),(65,'Can add grant',17,'add_grant'),(66,'Can change grant',17,'change_grant'),(67,'Can delete grant',17,'delete_grant'),(68,'Can view grant',17,'view_grant'),(69,'Can add refresh token',18,'add_refreshtoken'),(70,'Can change refresh token',18,'change_refreshtoken'),(71,'Can delete refresh token',18,'delete_refreshtoken'),(72,'Can view refresh token',18,'view_refreshtoken'),(73,'Can add id token',19,'add_idtoken'),(74,'Can change id token',19,'change_idtoken'),(75,'Can delete id token',19,'delete_idtoken'),(76,'Can view id token',19,'view_idtoken'),(77,'Can add user progress',20,'add_userprogress'),(78,'Can change user progress',20,'change_userprogress'),(79,'Can delete user progress',20,'delete_userprogress'),(80,'Can view user progress',20,'view_userprogress'),(81,'Can add chapter',21,'add_chapter'),(82,'Can change chapter',21,'change_chapter'),(83,'Can delete chapter',21,'delete_chapter'),(84,'Can view chapter',21,'view_chapter'),(85,'Can add mux data',22,'add_muxdata'),(86,'Can change mux data',22,'change_muxdata'),(87,'Can delete mux data',22,'delete_muxdata'),(88,'Can view mux data',22,'view_muxdata'),(89,'Can add purchase',23,'add_purchase'),(90,'Can change purchase',23,'change_purchase'),(91,'Can delete purchase',23,'delete_purchase'),(92,'Can view purchase',23,'view_purchase'),(93,'Can add stripe customer',24,'add_stripecustomer'),(94,'Can change stripe customer',24,'change_stripecustomer'),(95,'Can delete stripe customer',24,'delete_stripecustomer'),(96,'Can view stripe customer',24,'view_stripecustomer'),(97,'Can add comment',25,'add_comment'),(98,'Can change comment',25,'change_comment'),(99,'Can delete comment',25,'delete_comment'),(100,'Can view comment',25,'view_comment'),(101,'Can add rating',26,'add_rating'),(102,'Can change rating',26,'change_rating'),(103,'Can delete rating',26,'delete_rating'),(104,'Can view rating',26,'view_rating'),(105,'Can add note',27,'add_note'),(106,'Can change note',27,'change_note'),(107,'Can delete note',27,'delete_note'),(108,'Can view note',27,'view_note'),(109,'Can add quiz question',28,'add_quizquestion'),(110,'Can change quiz question',28,'change_quizquestion'),(111,'Can delete quiz question',28,'delete_quizquestion'),(112,'Can view quiz question',28,'view_quizquestion'),(113,'Can add quiz answer',29,'add_quizanswer'),(114,'Can change quiz answer',29,'change_quizanswer'),(115,'Can delete quiz answer',29,'delete_quizanswer'),(116,'Can view quiz answer',29,'view_quizanswer'),(117,'Can add link counter',30,'add_linkcounter'),(118,'Can change link counter',30,'change_linkcounter'),(119,'Can delete link counter',30,'delete_linkcounter'),(120,'Can view link counter',30,'view_linkcounter'),(121,'Can add exam',31,'add_exam'),(122,'Can change exam',31,'change_exam'),(123,'Can delete exam',31,'delete_exam'),(124,'Can view exam',31,'view_exam'),(125,'Can add answer',32,'add_answer'),(126,'Can change answer',32,'change_answer'),(127,'Can delete answer',32,'delete_answer'),(128,'Can view answer',32,'view_answer'),(129,'Can add student_ exam',33,'add_student_exam'),(130,'Can change student_ exam',33,'change_student_exam'),(131,'Can delete student_ exam',33,'delete_student_exam'),(132,'Can view student_ exam',33,'view_student_exam'),(133,'Can add question',34,'add_question'),(134,'Can change question',34,'change_question'),(135,'Can delete question',34,'delete_question'),(136,'Can view question',34,'view_question'),(137,'Can add student exam',35,'add_studentexam'),(138,'Can change student exam',35,'change_studentexam'),(139,'Can delete student exam',35,'delete_studentexam'),(140,'Can view student exam',35,'view_studentexam'),(141,'Can add student answer',36,'add_studentanswer'),(142,'Can change student answer',36,'change_studentanswer'),(143,'Can delete student answer',36,'delete_studentanswer'),(144,'Can view student answer',36,'view_studentanswer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:01:26

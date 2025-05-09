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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-05 03:35:40.628699'),(2,'contenttypes','0002_remove_content_type_name','2024-08-05 03:35:40.795882'),(3,'auth','0001_initial','2024-08-05 03:35:41.220512'),(4,'auth','0002_alter_permission_name_max_length','2024-08-05 03:35:41.310332'),(5,'auth','0003_alter_user_email_max_length','2024-08-05 03:35:41.320403'),(6,'auth','0004_alter_user_username_opts','2024-08-05 03:35:41.330601'),(7,'auth','0005_alter_user_last_login_null','2024-08-05 03:35:41.340789'),(8,'auth','0006_require_contenttypes_0002','2024-08-05 03:35:41.345385'),(9,'auth','0007_alter_validators_add_error_messages','2024-08-05 03:35:41.357261'),(10,'auth','0008_alter_user_username_max_length','2024-08-05 03:35:41.368179'),(11,'auth','0009_alter_user_last_name_max_length','2024-08-05 03:35:41.378446'),(12,'auth','0010_alter_group_name_max_length','2024-08-05 03:35:41.405902'),(13,'auth','0011_update_proxy_permissions','2024-08-05 03:35:41.421239'),(14,'auth','0012_alter_user_first_name_max_length','2024-08-05 03:35:41.433497'),(15,'courses','0001_initial','2024-08-05 03:35:42.351595'),(16,'admin','0001_initial','2024-08-05 03:35:42.555239'),(17,'admin','0002_logentry_remove_auto_add','2024-08-05 03:35:42.568973'),(18,'admin','0003_logentry_add_action_flag_choices','2024-08-05 03:35:42.587366'),(19,'sessions','0001_initial','2024-08-05 03:35:42.641251'),(20,'courses','0002_remove_category_description_category_sub_title_and_more','2024-08-05 05:56:10.869232'),(21,'courses','0003_remove_category_sub_title','2024-08-05 05:58:08.646934'),(22,'courses','0004_learning_prerequistite_tag','2024-08-05 06:23:20.665634'),(23,'courses','0005_remove_course_resource_alter_course_thumbnail_and_more','2024-08-05 15:05:23.891740'),(24,'oauth2_provider','0001_initial','2024-08-06 03:52:32.776082'),(25,'oauth2_provider','0002_auto_20190406_1805','2024-08-06 03:52:32.879247'),(26,'oauth2_provider','0003_auto_20201211_1314','2024-08-06 03:52:32.986474'),(27,'oauth2_provider','0004_auto_20200902_2022','2024-08-06 03:52:33.644171'),(28,'oauth2_provider','0005_auto_20211222_2352','2024-08-06 03:52:33.756287'),(29,'oauth2_provider','0006_alter_application_client_secret','2024-08-06 03:52:33.840772'),(30,'oauth2_provider','0007_application_post_logout_redirect_uris','2024-08-06 03:52:34.015438'),(31,'oauth2_provider','0008_alter_accesstoken_token','2024-08-06 03:52:34.036461'),(32,'oauth2_provider','0009_add_hash_client_secret','2024-08-06 03:52:34.143303'),(33,'oauth2_provider','0010_application_allowed_origins','2024-08-06 03:52:34.268289'),(34,'courses','0006_remove_course_active_remove_course_length_and_more','2024-08-06 05:57:51.180819'),(35,'courses','0007_remove_prerequistite_course_remove_tag_course_and_more','2024-08-09 09:31:45.701871'),(36,'courses','0008_alter_chapter_description_alter_chapter_title_and_more','2024-08-12 06:24:11.163304'),(37,'courses','0009_userprogress_chapter_userprogress_create_date_and_more','2024-08-12 10:57:35.154778'),(38,'courses','0010_alter_chapter_course_alter_purchase_unique_together_and_more','2024-08-14 07:37:52.809855'),(39,'courses','0011_alter_chapter_position_and_more','2024-08-27 15:01:09.513538'),(40,'courses','0012_alter_comment_unique_together_and_more','2024-08-28 13:35:58.035988'),(41,'courses','0013_note','2024-08-29 03:48:44.360191'),(42,'courses','0014_quizanswer_quizquestion_quizanswer_question','2024-08-29 16:42:21.616248'),(43,'courses','0015_quizanswer_is_correct','2024-08-29 17:38:46.879008'),(44,'courses','0016_user_activate_token_alter_user_is_active','2024-09-01 14:39:55.419458'),(45,'courses','0017_alter_user_activate_token','2024-09-02 04:48:39.365648'),(46,'verify_email','0001_initial','2024-09-02 18:04:05.083102'),(47,'courses','0018_remove_student_interesting_cate_student_rec_cate','2024-09-25 16:10:29.363658'),(48,'courses','0019_remove_student_rec_cate_student_interesting_cate','2024-09-25 16:13:14.730073'),(49,'courses','0020_alter_student_interesting_cate','2024-09-25 16:14:21.748873'),(50,'courses','0021_remove_student_interesting_cate','2024-09-25 16:15:29.514226'),(51,'courses','0018_remove_student_interesting_cate_and_more','2024-09-25 16:17:18.313191'),(52,'courses','0019_alter_student_interesting_cate','2024-09-25 16:20:39.253495'),(53,'courses','0020_remove_student_interesting_cate','2024-09-25 16:20:39.347742'),(54,'courses','0018_remove_student_interesting_cate','2024-09-25 16:27:44.764072'),(55,'courses','0019_student_rec_cate','2024-09-25 16:28:35.925626'),(56,'courses','0020_remove_student_rec_cate','2024-09-25 16:33:07.179570'),(57,'courses','0021_student_interesting_cate','2024-09-25 16:36:05.841284'),(58,'courses','0022_alter_chapter_title_alter_course_title','2024-10-10 17:10:12.157304'),(59,'courses','0023_alter_user_is_active','2025-03-13 02:52:19.227391'),(60,'courses','0024_exam_answer_student_exam','2025-03-13 02:52:19.761114'),(61,'courses','0025_rename_answer_exam_answer_content_and_more','2025-03-16 14:04:36.515050'),(62,'courses','0026_exam_course','2025-03-16 14:57:13.299959'),(63,'courses','0027_studentanswer','2025-03-16 15:35:50.487261'),(64,'courses','0028_alter_chapter_video','2025-05-02 15:03:49.393762');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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

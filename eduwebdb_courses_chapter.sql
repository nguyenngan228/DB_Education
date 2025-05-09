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
-- Table structure for table `courses_chapter`
--

DROP TABLE IF EXISTS `courses_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_chapter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int unsigned NOT NULL,
  `is_free` tinyint(1) NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_chapter_course_id_24d15099_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_chapter_course_id_24d15099_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `courses_chapter_position_088c1ae9_check` CHECK ((`position` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_chapter`
--

LOCK TABLES `courses_chapter` WRITE;
/*!40000 ALTER TABLE `courses_chapter` DISABLE KEYS */;
INSERT INTO `courses_chapter` VALUES (1,'Introduction to Health Care\n\n','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=z7x1aaZ03xU&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=1',1,0,4),(2,'Human Body Structure and Basic Functions','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=_GBFiSbGOCo&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=2',2,0,4),(3,'Nutrition and Healthy Lifestyle','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=x4-VUJvT9bw&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=3',3,0,4),(4,'Disease Prevention and Vaccination','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=lgWY-gjEYW0&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=4',4,1,4),(5,'Mental Health and Stress Management','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=8kTP1aAUPQA&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=5',5,1,4),(6,'Elderly and Disability Care','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=6X9kpEUTm-o&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=6',6,1,4),(7,'Common Illnesses and Basic Treatment','1','2024-08-09','2024-08-09','https://www.youtube.com/watch?v=iKpsMeJmC2A&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=7',7,1,4),(8,'Basic First Aid and Emergency Response','1','2024-08-10','2024-08-10','https://www.youtube.com/watch?v=O3HQs5HyaMc&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=8',8,1,4),(9,'Community Health Care','1','2024-08-10','2024-08-10','https://www.youtube.com/watch?v=_8J5j29lmVU&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=9',9,1,4),(10,'Beginners Guide to Graphic Design | 45 Episode FREE Series','1','2024-08-10','2024-08-10','https://www.youtube.com/watch?v=WONZVnlam6U&list=PLYfCBK8IplO4E2sXtdKMVpKJZRBEoMvpn&index=1',1,1,5),(11,'What is Graphic Design? Ep1/45 [Beginners Guide to Graphic Design]','1','2024-08-10','2024-08-10','https://www.youtube.com/watch?v=dFSia1LZI4Y&list=PLYfCBK8IplO4E2sXtdKMVpKJZRBEoMvpn&index=2',2,1,5),(12,'‘Line’ Visual element of Graphic Design / Design theory Ep2/45 [Beginners guide to Graphic Design]','1','2024-08-10','2024-08-10','https://www.youtube.com/watch?v=F0PTse89XIE&list=PLYfCBK8IplO4E2sXtdKMVpKJZRBEoMvpn&index=3',3,1,5),(13,'‘Colour’ Visual element of Graphic Design / Design theory Ep3/45 [Beginners guide to Graphic Design]','1','2024-08-10','2024-08-10','https://www.youtube.com/watch?v=byDNMLTuOqI&list=PLYfCBK8IplO4E2sXtdKMVpKJZRBEoMvpn&index=4',4,1,5),(15,'Time Management FULL online course - 1-17 - Intro','2','2024-08-11','2024-08-12','https://www.youtube.com/watch?v=lPGvrkiqisA&list=PLbzY0hV_ebw2kao7Wi_Vb96IhoJOSH1mE',1,1,15),(16,'Measure how you use your time 2-17','1','2024-08-11','2024-08-11','https://www.youtube.com/watch?v=xecta8VnYHc&list=PLbzY0hV_ebw2kao7Wi_Vb96IhoJOSH1mE&index=2',2,1,15),(17,'Running a time log 3-17','1','2024-08-11','2024-08-12','https://www.youtube.com/watch?v=c7_qCVNkOMU&list=PLbzY0hV_ebw2kao7Wi_Vb96IhoJOSH1mE&index=3',3,1,15),(18,'Tom\'s Time log 4-17','1','2024-08-11','2024-08-11','https://www.youtube.com/watch?v=flj5q-_70x8&list=PLbzY0hV_ebw2kao7Wi_Vb96IhoJOSH1mE&index=4',4,1,15),(19,'PM','aa','2024-08-12','2024-08-12','https://www.youtube.com/watch?v=4oDLMs11Exs',1,1,23),(20,'Filmmaker vs Videographer vs Cinematographer','aaaaa','2024-08-18','2024-08-18','https://www.youtube.com/watch?v=MfqDKRUErC8',1,1,11),(21,'Changing Your Eating Habits: A Step-wise Approach','aaaaa','2024-08-18','2024-08-18','https://www.youtube.com/watch?v=EU0juPjGCJs&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=10',10,0,4),(22,'Eat Food. Not Too Much. Mostly Plants. -Michael Pollan Explains His Mantra','aasvbg','2024-08-18','2024-08-18','https://www.youtube.com/watch?v=PiPVT_0iVk0&list=PLuhZ6_ONjgIlbbMrZsOrEDZQv750nx6VU&index=11',11,0,4),(25,'Flutter Tutorial for Beginners #1 - Intro & Setup','Introduction','2024-08-22','2024-08-22','https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=1',1,1,33),(26,'Flutter Tutorial for Beginners #2 - Flutter Overview','Season 1','2024-08-22','2024-08-22','https://www.youtube.com/watch?v=bKueYVtV0eA&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=2',1,1,33),(27,'New Flutter Masterclass Course!','Season 2','2024-08-22','2024-08-22','https://www.youtube.com/watch?v=LtlsX_lCfK4&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=3',2,0,33),(28,'Flutter Tutorial for Beginners #3 - Dart Primer','Season 2','2024-08-22','2024-08-22','https://www.youtube.com/watch?v=FLQ-Vhw1NYQ&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=4',3,0,33),(29,'Ruby Tutorial For Beginners - Getting Started With Ruby','Season 1','2024-08-22','2024-08-22','https://www.youtube.com/watch?v=ml5sNqftiK4&list=PLS1QulWo1RIbNBXZAeVbkkHEj9zsEbXQK&index=1',1,0,32),(30,'Ruby Tutorial For Beginners - How to use Conditions and Operators in Ruby','Season 1','2024-08-22','2024-08-22','https://www.youtube.com/watch?v=aKmN_i8Cy28&list=PLS1QulWo1RIbNBXZAeVbkkHEj9zsEbXQK&index=2',2,0,32),(32,'The secrets of learning a new language | Lýdia Machová | TED','Introduction edit','2024-08-22','2024-08-24','https://www.youtube.com/watch?v=o_XVt5rdpFY',1,1,34),(33,'Build Web App With Ruby On Rails | ROR Tutorial','This chapter abt introduction','2024-08-24','2024-08-24','https://www.youtube.com/watch?v=F-eI4MXnyPA&list=PLR8BLHNyVZDVkZHDbm2mSL4RMISIBuBqs&index=3',1,1,35),(34,'Music Production For Beginners (Step By Step Masterclass)','Introduction','2024-08-27','2024-08-27','https://www.youtube.com/watch?v=Hi72cCOPUQU',1,0,9),(36,'AWS In 5 Minutes | What Is AWS? | AWS Tutorial For Beginners | AWS Training | Simplilearn','This chapter is about introduction','2024-08-27','2024-08-27','https://www.youtube.com/watch?v=3XFODda6YXo',1,1,29),(37,'I tried 50 AWS Cloud Courses... Here are Top 5','This chapter is next step','2024-08-27','2024-08-27','https://www.youtube.com/watch?v=zsjSONTtu74',2,0,29),(38,'Manual Software Testing Training Part-1','Description','2024-08-30','2024-10-11','https://www.youtube.com/watch?v=oOvURgHcd4w&list=PLUDwpEzHYYLseflPNg0bUKfLmAbO2JnE9',1,1,36),(41,'Yoga introduction','Introduction to yoga','2024-09-08','2024-09-08','https://www.youtube.com/playlist?list=PLui6Eyny-UzzWwB4h9y7jAzLbeuCUczAl',1,1,1),(42,'Basic base','Instructions on basic yoga postures','2024-09-08','2024-09-08','https://www.youtube.com/watch?v=AB3Y-4a3ZrU&list=PLui6Eyny-UzzWwB4h9y7jAzLbeuCUczAl&index=2',2,0,1),(43,'First step for beginner','Description','2024-10-06','2024-10-06','https://www.youtube.com/watch?v=gQojMIhELvM&list=PLoYCgNOIyGAB_8_iq1cL8MVeun7cB6eNc&index=1',1,1,6),(44,'Introduction for C','Introduction','2024-10-06','2024-10-06','https://www.youtube.com/watch?v=rQoqCP7LX60&list=PLxgZQoSe9cg1drBnejUaDD9GEJBGQ5hMt&index=1',1,1,37),(45,'C basic','Description','2024-10-06','2024-10-06','https://www.youtube.com/watch?v=7PSfRdeY5qE&list=PLxgZQoSe9cg1drBnejUaDD9GEJBGQ5hMt&index=2',2,0,37),(47,'Learn CSS Border Animations in 6 Minutes','Description chapter 1','2024-10-11','2024-10-11','https://www.youtube.com/watch?v=ezP4kbOvs_E',1,1,2),(50,'C basic for beginner','Description chapter 2','2024-10-11','2024-10-11','https://www.youtube.com/watch?v=9PuLMkcY18Q',2,0,2),(52,'Manual Software Testing Training Part-2','Description chapter 2','2024-10-11','2024-10-11','https://www.youtube.com/watch?v=5_gi2-SZZWM&list=PLUDwpEzHYYLseflPNg0bUKfLmAbO2JnE9&index=2',2,0,36),(53,'Reddit Clone with Ruby on Rails 7 - Full Course','Description chapter 2','2024-10-11','2024-10-11','https://www.youtube.com/watch?v=Fb_EaLkuYbk',2,0,35),(54,'The ULTIMATE Music Theory Crash Course (in under 25 minutes)','Description chapter 1','2024-10-11','2024-10-11','http://youtube.com/watch?v=vjIv4Gbmnj8&t=37s',1,1,39),(55,'Independent Courses','This is chapter 1','2024-10-11','2024-10-11','https://www.youtube.com/watch?v=a3m62KU4ixw',1,1,40),(56,'Youtube part 1','ABC123','2025-05-02','2025-05-02','https://www.youtube.com/watch?v=fWjsdhR3z3c&t=34sv=xBu6VMleNA0',1,1,42),(57,'Youtube part 2','ABC1234','2025-05-02','2025-05-02','https://www.youtube.com/watch?v=v6sTjHZbVD0',2,0,42),(58,'Introduction to PHP Programming for Beginners | 2023 | Learn PHP Full Course for Beginners','Welcome to my new PHP course for beginners! In this introduction to PHP programming for beginners video, I will go over what PHP is and what you will learn in this course. ','2025-05-09','2025-05-09','https://www.youtube.com/watch?v=m52ljs78S24&list=PL0eyrZgxdwhwwQQZA79OzYwl5ewA7HQih',1,1,43),(59,' 2 | How to Install a Local Server for PHP | 2023 | Learn PHP Full Course for Beginners','Running a server is required in order to program PHP, since PHP is a server side programming language. The server I will show you how to install is called XAMPP.','2025-05-09','2025-05-09','https://www.youtube.com/watch?v=GRqw0pBwewY&list=PL0eyrZgxdwhwwQQZA79OzYwl5ewA7HQih&index=2',2,0,43),(60,' 3 | Learn About PHP Syntax for Beginners | 2023 | Learn PHP Full Course for Beginners',' About PHP Syntax, and how we write PHP code to avoid syntax errors','2025-05-09','2025-05-09','https://www.youtube.com/watch?v=7YCFg9gyMjE&list=PL0eyrZgxdwhwwQQZA79OzYwl5ewA7HQih&index=3',3,0,43);
/*!40000 ALTER TABLE `courses_chapter` ENABLE KEYS */;
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

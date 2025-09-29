-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: sdoin
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS contents;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE contents (
  id int NOT NULL AUTO_INCREMENT,
  `page` varchar(50) DEFAULT NULL,
  `key` varchar(500) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (id),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES contents WRITE;
/*!40000 ALTER TABLE contents DISABLE KEYS */;
INSERT INTO contents VALUES (1,'home','homepage_vid','Happy 127th Anniversary Department of Education! Mabuhay! '),(2,'home','homepage_intro','This is the homepage for the Schools Division of Ilocos Norte. Learn more about our programs and initiatives.'),(3,'about','about_sdoin','122 years of delivering quality education in Ilocos Norte. Upholding the values of service, excellence, and heritage. hello'),(4,'about','about_mantra','The Schools Division of Ilocos Norte’s mantra ‘Ragsak ken Rag-o mi ti Napudno nga Agserbi’ serves as the fuel that will help us achieve the ultimate destination which is the INheritED (inherit education). We are not changing anything. We are only changing our approach. A change of mind and a change of heart will create a spark. Because of our consciousness that education is the best ‘pamana’ that we can hand over to the next generation, we need to carry ‘joy in our hearts’ and ‘delight in our spirits’ as we fulfill this mission.'),(5,'about','about_vision','We dream of Filipinos who passionately love their country and whose values and competencies enable them to realize their full potential and contribute meaningfully to building the nation.<br>As a learner-centered public institution, the Department of Education continuously improves itself to better serve its stakeholders.'),(6,'about','about_mission','To protect and promote the right of every Filipino to quality, equitable culture-based, and complete basic education where:<br>Students learn in a child-friendly, gender-sensitive, safe and motivating environment.<br>Teachers facilitate learning and constantly nurture every learner.<br>Administrators and staff, as stewards of the Institution, ensure an enabling and supportive environment for effective learning to happen.<br>Family, community, and other stakeholders are actively engaged and share responsibility for development of life-long learners.'),(7,'about','about_core_values','Maka-Tao<br>Maka-Diyos<br>Makakalikasan<br>Makabansa'),(72,'programs','programs_title','Flagship Programs'),(73,'programs','toured_desc1','Transforming learning spaces, empowering teachers, and engaging communities.'),(74,'programs','toured_desc2','Purpose: Prepare learners for life’s various facets.'),(75,'programs','toured_focus1','Clean, obstruction-free learning spaces'),(76,'programs','toured_focus2','Professional development for teachers'),(77,'programs','toured_focus3','Community engagement for better school environments'),(78,'programs','toured_focus4','Impact stories: Photo/video testimonials of teachers and students'),(79,'programs','inherited_desc1','Education as the greatest inheritance focusing on literacy, wellness, safety, and inclusivity.'),(80,'programs','inherited_desc2','Purpose: Advocate that education is the best legacy for Ilocano learners.'),(81,'programs','inherited_focus1','Safe learning environment'),(82,'programs','inherited_focus2','Literacy and numeracy enhancement'),(83,'programs','inherited_focus3','Sports and wellness programs'),(84,'programs','inherited_focus4','Career guidance and immersion'),(85,'programs','inherited_focus5','Environmental education'),(86,'programs','inherited_focus6','Asynchronous learning for exclusivity '),(87,'programs','inherited_focus7','Student/parent voices: Testimonials, short success stories');
/*!40000 ALTER TABLE contents ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS gallery;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE gallery (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  filename varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  category enum('programs','initiatives','events','sports') COLLATE utf8mb4_unicode_ci NOT NULL,
  theme varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  filetype varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  filesize int NOT NULL,
  uploaded_at timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_category (category),
  KEY idx_uploaded_at (uploaded_at),
  KEY idx_title (title),
  KEY idx_theme (theme)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES gallery WRITE;
/*!40000 ALTER TABLE gallery DISABLE KEYS */;
INSERT INTO gallery VALUES (1,'test','test','d7ff45b6d8a1fd73.png','sports',NULL,'image/png',2091007,'2025-07-08 05:33:17','2025-07-08 05:33:17'),(2,'test 2','testing 2','f725bcedac908b23.jpg','events',NULL,'image/jpeg',844672,'2025-07-08 06:34:58','2025-07-08 06:34:58'),(3,'test 3','testing 3','365437b16a50b182.jpg','programs',NULL,'image/jpeg',336396,'2025-07-08 07:57:44','2025-07-08 07:57:44'),(4,'test 4','testing 4','ea87f5e422bee0c6.jpg','initiatives','literacy-numeracy','image/jpeg',461047,'2025-07-08 07:58:08','2025-07-22 04:46:12'),(9,'sdas','sadasd','4ced279d41d56670.jpg','initiatives','environment-sustainability','image/jpeg',645679,'2025-07-22 04:43:03','2025-07-22 04:45:59'),(10,'testingitn','111','c1ae79e33744e881.jpg','initiatives','environment-sustainability','image/jpeg',380157,'2025-07-22 04:55:10','2025-07-22 04:55:10'),(11,'Key-Initiative','2025-2026 Poster','9a899d2b2a75cba6.jpg','initiatives','initiativeposter','image/jpeg',463832,'2025-07-22 04:56:25','2025-07-22 04:56:25'),(12,'sport test','testtings','ed5437f0453afd88.png','initiatives','sports-wellness','image/png',1724821,'2025-07-22 05:04:25','2025-07-22 05:04:25');
/*!40000 ALTER TABLE gallery ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS resources;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE resources (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  `description` text,
  filename varchar(255) NOT NULL,
  category varchar(100) DEFAULT NULL,
  filetype varchar(500) DEFAULT NULL,
  filesize int DEFAULT NULL,
  uploaded_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES resources WRITE;
/*!40000 ALTER TABLE resources DISABLE KEYS */;
INSERT INTO resources VALUES (16,'Advocacy Flyers','Test 1','93794be3774ae1aa.docx','advocacy','application/vnd.openxmlformats-officedocument.wordprocessingml.document',14791,'2025-07-11 14:52:07','2025-07-11 14:52:07'),(17,'Toolkits','test 2','7896d6a916d66736.docx','tools','application/vnd.openxmlformats-officedocument.wordprocessingml.document',14791,'2025-07-11 14:52:40','2025-07-11 14:52:40'),(18,'Teacher Guide','test 3','ca7f48068e3aaacf.docx','guides','application/vnd.openxmlformats-officedocument.wordprocessingml.document',14791,'2025-07-11 14:53:14','2025-07-11 14:53:14'),(19,'Parent Guied','Test 4','2b813045f4ddfe59.docx','guides','application/vnd.openxmlformats-officedocument.wordprocessingml.document',14791,'2025-07-11 14:53:47','2025-07-11 14:53:47'),(20,'Policy Documents','Test 5','e697cc7fb79e806d.docx','policy','application/vnd.openxmlformats-officedocument.wordprocessingml.document',14791,'2025-07-11 14:54:27','2025-07-11 14:54:27'),(21,'Reports','test 7','7d529f392cded8f2.docx','reports','application/vnd.openxmlformats-officedocument.wordprocessingml.document',14791,'2025-07-11 14:54:56','2025-07-14 20:08:08');
/*!40000 ALTER TABLE resources ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS users;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES users WRITE;
/*!40000 ALTER TABLE users DISABLE KEYS */;
INSERT INTO users VALUES (1,'admin','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9');
/*!40000 ALTER TABLE users ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-05 13:08:11

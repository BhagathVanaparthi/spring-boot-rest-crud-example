-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: shopneedy
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (15,'vegetable','Vegetable','2021-08-17 20:46:49.643000'),(16,'fruit','Fruit','2021-08-17 20:46:49.721000'),(17,'fruitJuice','Fruit Juice','2021-08-17 20:46:49.737000'),(18,'dried','Dried','2021-08-17 20:46:49.768000');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (226);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(100) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(755) DEFAULT NULL,
  `status` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_quantity` int NOT NULL,
  `unit_price` double NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (20,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',1,'Cauliflower',100,19,'2021-08-17 23:44:17.446000',15),(21,'Well shaped, smooth skinned fruit that is free of bruises. Brownish freckled areas do not affect flavour.',1,'Apple',100,5,'2021-08-18 00:31:17.499000',16),(23,'The banana is one of the most popular fruits in the world despite the limited climates that it can grow in. These sweet tropical fruits are often used in desserts, blended into smoothies and enjoyed alone.',1,'Banana',100,2,'2021-08-18 00:34:38.474000',16),(24,'These small dark druplets are enjoyed alone, in desserts or in compotes placed atop steaks or other red meats. Blackberries grow all over the world in the wild so next time you are on a hike, look out for these tasty snacks!',1,'Blackberry',100,9.99,'2021-08-18 00:35:20.850000',16),(25,'Though often associated with berries, these sweet red fruits are classified as drupes. Fresh cherries can be cooked with red meats, used as a garnish for desserts and of course, eaten as a fresh snack. ',1,'Cherry',50,6.99,'2021-08-18 03:10:19.620000',16),(26,'Test Description',1,'Testing',100,9.99,'2021-08-25 23:37:02.549000',16);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` double NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES (3,'Dell-Laptop',1,65000),(4,'Mobile',4,60000),(5,'Speakers',1,16000),(6,'Desktop',3,36000),(7,'HeadSet',3,3000),(8,'PowerBank',2,5000),(26,NULL,0,0),(10,'LED-TV',1,75000),(27,NULL,0,0),(28,NULL,0,0),(29,NULL,0,0),(30,NULL,0,0),(31,NULL,0,0),(32,NULL,0,0),(33,NULL,0,0),(34,NULL,0,0),(35,NULL,0,0),(36,NULL,0,0),(37,NULL,0,0),(38,NULL,0,0),(39,NULL,0,0),(40,NULL,0,0),(41,NULL,0,0),(42,NULL,0,0),(43,NULL,0,0),(44,NULL,0,0),(45,NULL,0,0),(46,NULL,0,0),(47,NULL,0,0),(48,NULL,0,0),(49,NULL,0,0),(50,NULL,0,0),(51,NULL,0,0),(52,NULL,0,0),(53,NULL,0,0),(54,NULL,0,0),(55,NULL,0,0),(56,NULL,0,0),(57,NULL,0,0),(58,NULL,0,0),(59,NULL,0,0),(60,NULL,0,0),(61,NULL,0,0),(62,NULL,0,0),(63,NULL,0,0),(64,NULL,0,0),(65,NULL,0,0),(66,NULL,0,0),(67,NULL,0,0),(68,NULL,0,0),(69,NULL,0,0),(70,NULL,0,0),(71,NULL,0,0),(72,NULL,0,0),(73,NULL,0,0),(74,NULL,0,0),(75,NULL,0,0),(76,NULL,0,0),(77,NULL,0,0),(78,NULL,0,0),(79,NULL,0,0),(80,NULL,0,0),(81,NULL,0,0),(82,NULL,0,0),(83,NULL,0,0),(84,NULL,0,0),(85,NULL,0,0),(86,NULL,0,0),(87,NULL,0,0),(88,NULL,0,0),(89,NULL,0,0),(90,NULL,0,0),(91,NULL,0,0),(92,NULL,0,0),(93,NULL,0,0),(94,NULL,0,0),(95,NULL,0,0),(96,NULL,0,0),(97,NULL,0,0),(98,NULL,0,0),(99,NULL,0,0),(100,NULL,0,0),(101,NULL,0,0),(102,NULL,0,0),(103,NULL,0,0),(104,NULL,0,0),(105,NULL,0,0),(106,NULL,0,0),(107,NULL,0,0),(108,NULL,0,0),(109,NULL,0,0),(110,NULL,0,0),(111,NULL,0,0),(112,NULL,0,0),(113,NULL,0,0),(114,NULL,0,0),(115,NULL,0,0),(116,NULL,0,0),(117,NULL,0,0),(118,NULL,0,0),(119,NULL,0,0),(120,NULL,0,0),(121,NULL,0,0),(122,NULL,0,0),(123,NULL,0,0),(124,NULL,0,0),(125,NULL,0,0),(126,NULL,0,0),(127,NULL,0,0),(128,NULL,0,0),(129,NULL,0,0),(130,NULL,0,0),(131,NULL,0,0),(132,NULL,0,0),(133,NULL,0,0),(134,NULL,0,0),(135,NULL,0,0),(136,NULL,0,0),(137,NULL,0,0),(138,NULL,0,0),(139,NULL,0,0),(140,NULL,0,0),(141,NULL,0,0),(142,NULL,0,0),(143,NULL,0,0),(144,NULL,0,0),(145,NULL,0,0),(146,NULL,0,0),(147,NULL,0,0),(148,NULL,0,0),(149,NULL,0,0),(150,NULL,0,0),(151,NULL,0,0),(152,NULL,0,0),(153,NULL,0,0),(154,NULL,0,0),(155,NULL,0,0),(156,NULL,0,0),(157,NULL,0,0),(158,NULL,0,0),(159,NULL,0,0),(160,NULL,0,0),(161,NULL,0,0),(162,NULL,0,0),(163,NULL,0,0),(164,NULL,0,0),(165,NULL,0,0),(166,NULL,0,0),(167,NULL,0,0),(168,NULL,0,0),(169,NULL,0,0),(170,NULL,0,0),(171,NULL,0,0),(172,NULL,0,0),(173,NULL,0,0),(174,NULL,0,0),(175,NULL,0,0),(176,NULL,0,0),(177,NULL,0,0),(178,NULL,0,0),(179,NULL,0,0),(180,NULL,0,0),(181,NULL,0,0),(182,NULL,0,0),(183,NULL,0,0),(184,NULL,0,0),(185,NULL,0,0),(186,NULL,0,0),(187,NULL,0,0),(188,NULL,0,0),(189,NULL,0,0),(190,NULL,0,0),(191,NULL,0,0),(192,NULL,0,0),(193,NULL,0,0),(194,NULL,0,0),(195,NULL,0,0),(196,NULL,0,0),(197,NULL,0,0),(198,NULL,0,0),(199,NULL,0,0),(200,NULL,0,0),(201,NULL,0,0),(202,NULL,0,0),(203,NULL,0,0),(204,NULL,0,0),(205,NULL,0,0),(206,NULL,0,0),(207,NULL,0,0),(208,NULL,0,0),(209,NULL,0,0),(210,NULL,0,0),(211,NULL,0,0),(212,NULL,0,0),(213,NULL,0,0),(214,NULL,0,0),(215,NULL,0,0),(216,NULL,0,0),(217,NULL,0,0),(218,NULL,0,0),(219,NULL,0,0),(220,NULL,0,0),(221,NULL,0,0),(222,NULL,0,0),(223,NULL,0,0),(224,NULL,0,0),(225,NULL,0,0);
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(145) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  KEY `user_user_role_fk_idx` (`user_id`),
  KEY `role_user_role_fk_idx` (`role_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_user_role_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `user_user_role_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint DEFAULT '1',
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08 19:44:55

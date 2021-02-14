-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: fit_service_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `phone_code` int unsigned DEFAULT NULL,
  `phone_number` int unsigned DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Новосибирск',111,3635955,'2021-02-06 00:00:00','2021-02-13 10:25:12'),(2,'Красноярск',391,2050160,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(3,'Иркутск',3952,799688,'2021-02-12 10:28:35','2021-02-12 10:28:35'),(4,'Хабаровск',4212,906000,'2021-02-12 14:28:42','2021-02-12 14:28:42'),(6,'Кемерово',3842,457566,'2021-02-12 15:09:18','2021-02-12 15:09:18');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `men`
--

DROP TABLE IF EXISTS `men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `men` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men`
--

LOCK TABLES `men` WRITE;
/*!40000 ALTER TABLE `men` DISABLE KEYS */;
/*!40000 ALTER TABLE `men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `street` text NOT NULL,
  `number_street` int DEFAULT NULL,
  `literal` varchar(10) DEFAULT NULL,
  `office` text,
  `city_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (2,'Первая станция','Петухова',150,'А','',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(3,'Вторая станция','Планировочная',16,'а','корпус 2',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(4,'Третья станция','Красных Зорь',1,'а','',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(5,'Четвертая станция','Военная',NULL,'','4/1',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(6,'Пятая станция','Мира',67,'','',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(7,'Шестая станция','Варшавская',13,'а','(ОбьГЭС)',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(8,'Седьмая станция','Гаранина',15,'','к.1',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(9,'Восьмая станция','Гранитная',40,'',' Одоевского (КСМ)',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(10,'Девятая станция','Дуси Ковальчук',1,'','к.8',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(11,'Десятая станция','Залесского',NULL,'','23/2',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(12,'Одинадцатая станция','Войкова',124,'','/Кропоткина',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(13,'Двенадцатая станция','Н-Данченко',73,'а','',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(14,'Тринадцатая станция','Петухова',2,'','',1,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(15,'Четырнадцатая станция','Солнечная',12,'А','стр.2',2,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(16,'Пятнадцатая станция','Телевизорная',1,'','стр.17',2,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(17,'Шестнадцатая станция','Калинина',88,'М','',2,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(18,'Семнадцатая станция','Глинки',NULL,'','2/1',2,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(19,'Восемнадцатая станция','Новая',13,'','стр.3',2,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(20,'Девятнадцатая станция','60 лет Октября',90,'а','',2,'2021-02-06 00:00:00','2021-02-06 00:00:00'),(21,'Двадцатая станция','Караульная',41,'','',2,'2021-02-06 00:00:00','2021-02-13 12:12:32');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Vadim','Lachkov','vadim_lachkov@mail.ru','$2a$12$j4/rqNgthKN6bzVVoY.QIebY7YjK6Iwo12oXQ.65OUi.n24CCeInK','2021-02-12 11:59:45','2021-02-12 11:59:45'),(2,'Антон','Лачков','vadim_lachkov@mail.ru','$2a$12$xf8QA0W4zn5xRfAzkbpPReCqDqz/Xw5q.pwBn9BNbahoFUKhmg9py','2021-02-12 12:01:13','2021-02-12 12:01:13'),(3,'Антон','Лачков','vadim_lachkov@mail.ru','$2a$12$HKa2W9yMaGMt1nzi.crgyezR/nN5ZzP5iYA8oBuJlckyGbmpg/mJW','2021-02-12 12:20:25','2021-02-12 12:20:25'),(4,'Антон','Лачков','vadim_lachkov@mail.ru','$2a$12$ew.2ltxb4HZl6pEUV.Y4BOr2EzWFgTC/t58oqQ.8TaxHbtHrGs0vq','2021-02-12 12:20:26','2021-02-12 12:20:26'),(5,'Антон','Лачков','vadim_lachkov@mail.ru','$2a$12$TZclDRn.NZ.wuw6w4cdF4.4/6lHUtLwJCsrqgyaZzBgH9ioWcxv6q','2021-02-12 12:20:28','2021-02-12 12:20:28'),(6,'Антон','Лачков','vadim_lachkov@mail.ru','$2a$12$B1IYUzemy2A5/sbFQx4TJeZHP8A4nXlqTzFIZT.ZIoQkP/kTJK30O','2021-02-12 12:20:29','2021-02-12 12:20:29'),(7,'Антон','Лачков','vadim_lachkov@mail.ru','$2a$12$964K3j8MVlQ95c9UW2VDgu8usWe6NQ4fO7ojIl.SfBdR8JW3c5I1O','2021-02-12 12:20:30','2021-02-12 12:20:30'),(8,'Zero','One','mail','$2a$12$hAyPFp/MoX29oQ0tsjBQWevCvkSMytSMPH8XCAM9MqMjLXSklk0Au','2021-02-12 12:28:38','2021-02-12 12:28:38'),(9,'Zero','One','mail','$2a$12$vR4z3aWrZYxEvLZFNYWol.DTS53uMYIGaZvCM/yG1HO8KE1JZaFCG','2021-02-12 12:29:23','2021-02-12 12:29:23'),(10,'Zero','One','mail','$2a$12$gXNY0BKEsPWPJB0Lu/tcOeuAg8GRMq5SbpoRRsNeOtxTYr3dZRSP.','2021-02-12 12:30:07','2021-02-12 12:30:07'),(11,'Zero','One','mail','$2a$12$iuCt5qR7YZZzuPhhn0tq3elk2IYxtIFJyIWvzVL.BMMyy7TxEbPIW','2021-02-12 12:30:43','2021-02-12 12:30:43'),(12,'Zero','One','mail','$2a$12$6Qhrzl8PUz2Pk6saA5/6VuSJGbhFpdVaz2V5X2L2kGOzlI6qVgCVi','2021-02-12 13:56:57','2021-02-12 13:56:57'),(13,'Галина','Лачкова','galina-lachkova@mail.ru','$2a$12$NntcW0rA4lyx6LHwYV9GPO/xMqcyHNweU6JBaW/pF8f1JGc8zX1Hi','2021-02-12 17:02:26','2021-02-12 17:02:26'),(14,'Галина','Лачкова','galina-lachkova@mail.ru','$2a$12$gyXAmEc9GWEg3jNBOvAJFuZ1f5NJsaiBjgOb/WQc6K1olvY0Tazki','2021-02-13 02:20:07','2021-02-13 02:20:07');
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

-- Dump completed on 2021-02-15  2:09:28

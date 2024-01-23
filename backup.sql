-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `COMPANY`
--

DROP TABLE IF EXISTS `COMPANY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPANY` (
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY`
--

LOCK TABLES `COMPANY` WRITE;
/*!40000 ALTER TABLE `COMPANY` DISABLE KEYS */;
INSERT INTO `COMPANY` VALUES ('A-1 Pictures','1414 pear st','3452002020'),('MAPPA','123 apple rd','3432001919'),('Studio Ghibli','123 st','2125746421');
/*!40000 ALTER TABLE `COMPANY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DIRECTOR`
--

DROP TABLE IF EXISTS `DIRECTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DIRECTOR` (
  `name` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  `p_origin` varchar(255) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `c_name` (`c_name`),
  CONSTRAINT `director_ibfk_1` FOREIGN KEY (`c_name`) REFERENCES `COMPANY` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIRECTOR`
--

LOCK TABLES `DIRECTOR` WRITE;
/*!40000 ALTER TABLE `DIRECTOR` DISABLE KEYS */;
INSERT INTO `DIRECTOR` VALUES ('Dentsu',36,'Tokyo','MAPPA'),('Dwango',42,'Kyoto','Studio Ghibli'),('Genco',40,'Kyoto','A-1 Pictures'),('Kodansha',25,'Kyoto','MAPPA'),('Nichion',28,'Kyoto','Studio Ghibli'),('Nippon',32,'Hiroshima','Studio Ghibli'),('Shinji',55,'Tokyo','A-1 Pictures'),('Toho',38,'Tokyo','Studio Ghibli'),('Tokuma',30,'Tokyo','Studio Ghibli'),('Toshiya',32,'Tokyo','A-1 Pictures'),('Yasuhiro',60,'Tokyo','A-1 Pictures');
/*!40000 ALTER TABLE `DIRECTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTIFIER`
--

DROP TABLE IF EXISTS `IDENTIFIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTIFIER` (
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTIFIER`
--

LOCK TABLES `IDENTIFIER` WRITE;
/*!40000 ALTER TABLE `IDENTIFIER` DISABLE KEYS */;
INSERT INTO `IDENTIFIER` VALUES ('Action'),('Adventure'),('Comedy'),('Drama'),('Fantasy'),('Gore'),('Mecha'),('Military'),('Music'),('Mystery'),('Mythology'),('Romance'),('School'),('Sci-Fi'),('Super Power'),('Survival');
/*!40000 ALTER TABLE `IDENTIFIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `M_BOUGHT`
--

DROP TABLE IF EXISTS `M_BOUGHT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_BOUGHT` (
  `m_isbn` char(13) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `m_cost` float DEFAULT NULL,
  KEY `m_isbn` (`m_isbn`),
  KEY `username` (`username`),
  CONSTRAINT `m_bought_ibfk_1` FOREIGN KEY (`m_isbn`) REFERENCES `MOVIE` (`isbn`),
  CONSTRAINT `m_bought_ibfk_2` FOREIGN KEY (`username`) REFERENCES `USER` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_BOUGHT`
--

LOCK TABLES `M_BOUGHT` WRITE;
/*!40000 ALTER TABLE `M_BOUGHT` DISABLE KEYS */;
INSERT INTO `M_BOUGHT` VALUES ('1838719520','User1',7.99),('1838719520','User3',7.99),('1838719520','User5',7.99),('1838719520','User7',7.99),('1838719520','User9',7.99),('1838719520','User11',7.99),('1838719520','User13',7.99),('1838719520','User15',7.99),('1838719520','User17',7.99),('1838719520','User19',7.99),('1237684726','User1',7.99),('1237684726','User3',7.99),('1237684726','User5',7.99),('1237684726','User7',7.99),('1237684726','User9',7.99),('1237684726','User11',7.99),('1237684726','User13',7.99),('1237684726','User15',7.99),('1237684726','User17',7.99),('1237684726','User19',7.99),('9833212531','User2',7.99),('9833212531','User4',7.99),('9833212531','User6',7.99),('9833212531','User8',7.99),('9833212531','User10',7.99),('9833212531','User12',7.99),('9833212531','User14',7.99),('9833212531','User16',7.99),('9833212531','User18',7.99),('9833212531','User20',7.99),('3833672531','User2',7.99),('3833672531','User4',7.99),('3833672531','User6',7.99),('3833672531','User8',7.99),('3833672531','User10',7.99),('3833672531','User12',7.99),('3833672531','User14',7.99),('3833672531','User16',7.99),('3833672531','User18',7.99),('3833672531','User20',7.99),('6833552881','User2',7.99),('6833552881','User4',7.99),('6833552881','User6',7.99),('6833552881','User8',7.99),('6833552881','User10',7.99),('6833552881','User12',7.99),('6833552881','User14',7.99),('6833552881','User16',7.99),('6833552881','User18',7.99),('6833552881','User20',7.99),('7133672631','User2',7.99),('7133672631','User4',7.99),('7133672631','User6',7.99),('7133672631','User8',7.99),('7133672631','User10',7.99),('7133672631','User12',7.99),('7133672631','User14',7.99),('7133672631','User16',7.99),('7133672631','User18',7.99),('7133672631','User20',7.99);
/*!40000 ALTER TABLE `M_BOUGHT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `M_RENT`
--

DROP TABLE IF EXISTS `M_RENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_RENT` (
  `m_isbn` char(13) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `due` date DEFAULT NULL,
  `m_rcost` float DEFAULT NULL,
  KEY `m_isbn` (`m_isbn`),
  KEY `username` (`username`),
  CONSTRAINT `m_rent_ibfk_1` FOREIGN KEY (`m_isbn`) REFERENCES `MOVIE` (`isbn`),
  CONSTRAINT `m_rent_ibfk_2` FOREIGN KEY (`username`) REFERENCES `USER` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_RENT`
--

LOCK TABLES `M_RENT` WRITE;
/*!40000 ALTER TABLE `M_RENT` DISABLE KEYS */;
INSERT INTO `M_RENT` VALUES ('1838719520','User1','2023-02-01',6.99),('1237684726','User2','2023-09-23',6.99),('9833212531','User5','2023-07-23',6.99),('3833672531','User6','2023-09-13',6.99),('6833552881','User7','2023-11-01',6.99),('1838719520','User9','2023-12-23',6.99),('1237684726','User10','2023-02-23',6.99),('9833212531','User13','2023-07-23',6.99),('3833672531','User14','2023-09-23',6.99),('6833552881','User15','2023-11-23',6.99),('1838719520','User17','2023-12-23',6.99),('3833672531','User19','2023-09-02',6.99);
/*!40000 ALTER TABLE `M_RENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `M_TAGGEDAS`
--

DROP TABLE IF EXISTS `M_TAGGEDAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_TAGGEDAS` (
  `i_tag` varchar(255) DEFAULT NULL,
  `m_isbn` char(13) DEFAULT NULL,
  KEY `i_tag` (`i_tag`),
  KEY `m_isbn` (`m_isbn`),
  CONSTRAINT `m_taggedas_ibfk_1` FOREIGN KEY (`i_tag`) REFERENCES `IDENTIFIER` (`tag`),
  CONSTRAINT `m_taggedas_ibfk_2` FOREIGN KEY (`m_isbn`) REFERENCES `MOVIE` (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_TAGGEDAS`
--

LOCK TABLES `M_TAGGEDAS` WRITE;
/*!40000 ALTER TABLE `M_TAGGEDAS` DISABLE KEYS */;
INSERT INTO `M_TAGGEDAS` VALUES ('Mythology','1838719520'),('Adventure','1237684726'),('Drama','9833212531'),('Drama','3833672531'),('Fantasy','6833552881'),('Drama','7133672631'),('Adventure','5533674831'),('Adventure','2333884833'),('Drama','7933774831'),('Adventure','1933788231'),('School','9833768222'),('Adventure','7722748237'),('Fantasy','9923748235'),('Music','7926648241'),('Adventure','7978648243');
/*!40000 ALTER TABLE `M_TAGGEDAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MOVIE`
--

DROP TABLE IF EXISTS `MOVIE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVIE` (
  `name` varchar(255) DEFAULT NULL,
  `isbn` char(13) NOT NULL,
  `year` char(4) DEFAULT NULL,
  `length` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  KEY `d_name` (`d_name`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`d_name`) REFERENCES `DIRECTOR` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOVIE`
--

LOCK TABLES `MOVIE` WRITE;
/*!40000 ALTER TABLE `MOVIE` DISABLE KEYS */;
INSERT INTO `MOVIE` VALUES ('Princess Mononoke',' 1237652416','1997',120,8.67,'Tokuma'),('Ponyo',' 7833212416','2008',120,7.92,'Toho'),('Howl\'s Moving Castle','1237684726','2004',120,8.66,'Tokuma'),('Spirited Away','1838719520','2001',120,8.78,'Toho'),('Tales from Earthsea','1933788231','2006',120,6.84,'Toho'),('Only Yesterday','2299648258','1991',120,7.43,'Tokuma'),('Kiki Delivery Service','2333884833','1989',120,8.22,'Nichion'),('The Cat Returns','3299248257','2002',120,7.72,'Dwango'),('Grave of the Fireflies','3833672531','1988',120,8.51,'Nippon'),('Castle in the Sky','5533674831','1986',120,8.26,'Tokuma'),('The Secret World of Arrietty','6833552881','2010',120,7.89,'Nippon'),('The Wind Rise','7133672631','2013',120,8.11,'Nichion'),('Ronia the Robber’s Daughter','7722748237','2015',120,7.07,'Dwango'),('On your Mark','7926648241','1995',120,7.46,'Nippon'),('When Marnie was There','7933774831','2014',120,8.05,'Dentsu'),('My Neighbor Totoro','7978648243','1988',120,8.25,'Nichion'),('From Up on Poppy','7999648253','2011',120,7.79,'Nippon'),('Whisper of the Heart','9833212531','1995',120,8.22,'Tokuma'),('The Ocean Waves','9833768222','1993',120,6.54,'Nippon'),('Iblard Jikan','9923748235','2007',120,6.88,'Dwango');
/*!40000 ALTER TABLE `MOVIE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_BOUGHT`
--

DROP TABLE IF EXISTS `S_BOUGHT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `S_BOUGHT` (
  `s_isbn` char(13) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `s_cost` float DEFAULT NULL,
  KEY `s_isbn` (`s_isbn`),
  KEY `username` (`username`),
  CONSTRAINT `s_bought_ibfk_1` FOREIGN KEY (`s_isbn`) REFERENCES `SERIES` (`isbn`),
  CONSTRAINT `s_bought_ibfk_2` FOREIGN KEY (`username`) REFERENCES `USER` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_BOUGHT`
--

LOCK TABLES `S_BOUGHT` WRITE;
/*!40000 ALTER TABLE `S_BOUGHT` DISABLE KEYS */;
INSERT INTO `S_BOUGHT` VALUES ('1234567890130','User2',1.99),('1234567890130','User4',1.99),('1234567890130','User6',1.99),('1234567890130','User8',1.99),('1234567890130','User10',1.99),('1234567890130','User12',1.99),('1234567890130','User14',1.99),('1234567890130','User16',1.99),('1234567890130','User18',1.99),('1234567890130','User20',1.99),('1234567890129','User2',1.99),('1234567890129','User4',1.99),('1234567890129','User6',1.99),('1234567890129','User8',1.99),('1234567890129','User10',1.99),('1234567890129','User12',1.99),('1234567890129','User14',1.99),('1234567890129','User16',1.99),('1234567890129','User18',1.99),('1234567890129','User20',1.99),('1234567890128','User2',1.99),('1234567890128','User4',1.99),('1234567890128','User6',1.99),('1234567890128','User8',1.99),('1234567890128','User10',1.99),('1234567890128','User12',1.99),('1234567890128','User14',1.99),('1234567890128','User16',1.99),('1234567890128','User18',1.99),('1234567890128','User20',1.99),('1234567890128','User2',1.99),('1234567890128','User4',1.99),('1234567890128','User6',1.99),('1234567890128','User8',1.99),('1234567890128','User10',1.99),('1234567890128','User12',1.99),('1234567890128','User14',1.99),('1234567890128','User16',1.99),('1234567890128','User18',1.99),('1234567890128','User20',1.99),('1234567890127','User2',1.99),('1234567890127','User4',1.99),('1234567890127','User6',1.99),('1234567890127','User8',1.99),('1234567890127','User10',1.99),('1234567890127','User12',1.99),('1234567890127','User14',1.99),('1234567890127','User16',1.99),('1234567890127','User18',1.99),('1234567890127','User20',1.99),('1234567890126','User1',1.99),('1234567890126','User3',1.99),('1234567890126','User5',1.99),('1234567890126','User7',1.99),('1234567890126','User9',1.99),('1234567890126','User11',1.99),('1234567890126','User13',1.99),('1234567890126','User15',1.99),('1234567890126','User17',1.99),('1234567890126','User19',1.99),('1234567890125','User1',1.99),('1234567890125','User3',1.99),('1234567890125','User5',1.99),('1234567890125','User7',1.99),('1234567890125','User9',1.99),('1234567890125','User11',1.99),('1234567890125','User13',1.99),('1234567890125','User15',1.99),('1234567890125','User17',1.99),('1234567890125','User19',1.99),('1234567890124','User1',1.99),('1234567890124','User3',1.99),('1234567890124','User5',1.99),('1234567890124','User7',1.99),('1234567890124','User9',1.99),('1234567890124','User11',1.99),('1234567890124','User13',1.99),('1234567890124','User15',1.99),('1234567890124','User17',1.99),('1234567890124','User19',1.99),('1234567890123','User1',1.99),('1234567890123','User3',1.99),('1234567890123','User5',1.99),('1234567890123','User7',1.99),('1234567890123','User9',1.99),('1234567890123','User11',1.99),('1234567890123','User13',1.99),('1234567890123','User15',1.99),('1234567890123','User17',1.99),('1234567890123','User19',1.99),('1234567890123','User1',1.99),('1234567890123','User3',1.99),('1234567890123','User5',1.99),('1234567890123','User7',1.99),('1234567890123','User9',1.99),('1234567890123','User11',1.99),('1234567890123','User13',1.99),('1234567890123','User15',1.99),('1234567890123','User17',1.99),('1234567890123','User19',1.99),('1234567890123','User1',1.99),('1234567890123','User3',1.99),('1234567890123','User5',1.99),('1234567890123','User7',1.99),('1234567890123','User9',1.99),('1234567890123','User11',1.99),('1234567890123','User13',1.99),('1234567890123','User15',1.99),('1234567890123','User17',1.99),('1234567890123','User19',1.99),('1234567890123','User19',1.99),('1234567890123','User19',1.99),('1234567890123','User5',1.99);
/*!40000 ALTER TABLE `S_BOUGHT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_RENT`
--

DROP TABLE IF EXISTS `S_RENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `S_RENT` (
  `s_isbn` char(13) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `due` date DEFAULT NULL,
  `s_rcost` float DEFAULT NULL,
  KEY `s_isbn` (`s_isbn`),
  KEY `username` (`username`),
  CONSTRAINT `s_rent_ibfk_1` FOREIGN KEY (`s_isbn`) REFERENCES `SERIES` (`isbn`),
  CONSTRAINT `s_rent_ibfk_2` FOREIGN KEY (`username`) REFERENCES `USER` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_RENT`
--

LOCK TABLES `S_RENT` WRITE;
/*!40000 ALTER TABLE `S_RENT` DISABLE KEYS */;
INSERT INTO `S_RENT` VALUES ('1234567890125','User1','2023-11-20',0.99),('1234567890123','User3','2023-10-20',0.99),('1234567890126','User4','2023-12-20',0.99),('1234567890125','User10','2023-11-23',0.99),('1234567890123','User11','2023-09-02',0.99),('1234567890124','User12','2023-10-23',0.99),('1234567890125','User13','2023-11-23',0.99),('1234567890130','User14','2023-03-08',0.99),('1234567890123','User15','2023-09-14',0.99),('1234567890124','User16','2023-11-23',0.99),('1234567890127','User17','2023-01-23',0.99),('1234567890128','User18','2023-08-23',0.99),('1234567890126','User19','2023-06-23',0.99),('1234567890129','User20','2023-09-23',0.99);
/*!40000 ALTER TABLE `S_RENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_TAGGEDAS`
--

DROP TABLE IF EXISTS `S_TAGGEDAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `S_TAGGEDAS` (
  `i_tag` varchar(255) DEFAULT NULL,
  `s_isbn` char(13) DEFAULT NULL,
  KEY `i_tag` (`i_tag`),
  KEY `s_isbn` (`s_isbn`),
  CONSTRAINT `s_taggedas_ibfk_1` FOREIGN KEY (`i_tag`) REFERENCES `IDENTIFIER` (`tag`),
  CONSTRAINT `s_taggedas_ibfk_2` FOREIGN KEY (`s_isbn`) REFERENCES `SERIES` (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_TAGGEDAS`
--

LOCK TABLES `S_TAGGEDAS` WRITE;
/*!40000 ALTER TABLE `S_TAGGEDAS` DISABLE KEYS */;
INSERT INTO `S_TAGGEDAS` VALUES ('Drama','1234567890144'),('School','1234567890144'),('Action','1234567890124'),('Gore','1234567890124'),('Military','1234567890124'),('Survival','1234567890124'),('School','1234567890123'),('Action','1234567890123'),('Super Power','1234567890123'),('Action','1234567890143'),('Super Power','1234567890143'),('Mystery','1234567890143'),('Military','1234567890142'),('Drama','1234567890142'),('Sci-Fi','1234567890142'),('Comedy','1234567890141'),('Fantasy','1234567890141'),('Comedy','1234567890138'),('Drama','1234567890138'),('Comedy','1234567890137'),('Romance','1234567890137'),('School','1234567890137'),('Action','1234567890136'),('Drama','1234567890136'),('Fantasy','1234567890136'),('Comedy','1234567890135'),('Romance','1234567890135'),('Military','1234567890134'),('Drama','1234567890134'),('Comedy','1234567890133'),('School','1234567890133'),('Romance','1234567890133'),('Romance','1234567890127'),('Fantasy','1234567890127'),('Action','1234567890127'),('Comedy','1234567890130'),('Romance','1234567890130'),('School','1234567890130'),('Gore','1234567890129'),('Drama','1234567890129'),('Romance','1234567890129'),('Romance','1234567890128'),('Drama','1234567890128'),('School','1234567890128'),('Action','1234567890126'),('Fantasy','1234567890126'),('Fantasy','1234567890125'),('Action','1234567890125');
/*!40000 ALTER TABLE `S_TAGGEDAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERIES`
--

DROP TABLE IF EXISTS `SERIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERIES` (
  `name` varchar(255) DEFAULT NULL,
  `isbn` char(13) NOT NULL,
  `year` char(4) DEFAULT NULL,
  `seasons` int DEFAULT NULL,
  `episodes` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  KEY `d_name` (`d_name`),
  CONSTRAINT `series_ibfk_1` FOREIGN KEY (`d_name`) REFERENCES `DIRECTOR` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERIES`
--

LOCK TABLES `SERIES` WRITE;
/*!40000 ALTER TABLE `SERIES` DISABLE KEYS */;
INSERT INTO `SERIES` VALUES ('Boku no Hero Academia','1234567890123','2016',6,78,7.9,'Dentsu'),('Shingeki no Kyojin','1234567890124','2013',1,25,8.53,'Dentsu'),('Noragami','1234567890125','2014',2,24,7.95,'Kodansha'),('Fairy Tail','1234567890126','2009',1,175,7.57,'Kodansha'),('Sword Art Online','1234567890127','2012',2,25,7.2,'Genco'),('Toradora!','1234567890128','2008',3,51,8.08,'Genco'),('Elfen Lied','1234567890129','2004',3,39,7.48,'Genco'),('Prison School','1234567890130','2015',3,18,7.61,'Genco'),('Black Butler','1234567890132','2008',3,33,7.67,'Toshiya'),('Love is War','1234567890133','2022',1,13,9.06,'Toshiya'),('Eighty-Six','1234567890134','2021',1,11,8.26,'Toshiya'),('Blend-S','1234567890135','2017',3,36,7.28,'Toshiya'),('Tokyo Revengers','1234567890136','2021',1,24,8.01,'Shinji'),('Don\'t Toy with Me, Miss Nagatoro','1234567890137','2021',2,36,7.31,'Shinji'),('Beck','1234567890138','2004',2,26,8.29,'Shinji'),('Witch Craft Works','1234567890139','2014',1,12,7,'Shinji'),('Code: Breaker','1234567890140','2012',8,100,6.72,'Yasuhiro'),('The Slime Diaries','1234567890141','2012',5,57,7.59,'Yasuhiro'),('Memories','1234567890142','1995',1,3,7.71,'Yasuhiro'),('GetBackers','1234567890143','2002',3,49,7.58,'Yasuhiro'),('Skip to Loafer','1234567890144','2023',1,12,8.2,'Yasuhiro');
/*!40000 ALTER TABLE `SERIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `u_name` varchar(255) NOT NULL,
  `psswrd` varchar(255) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cardinfo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES ('User1','Password1@','3472282213','user1@gmail.com','111222333445','1231 st, NY'),('User10','Password10@','3472282222','user10@gmail.com','111222333413','1239 st, NY'),('User11','Password11@','3472282223','user11@gmail.com','111222333414','1240 st, NY'),('User12','Password12@','3472282224','user12@gmail.com','111222333415','1241 st, NY'),('User13','Password13@','3472282225','user13@gmail.com','111222333416','1242 st, NY'),('User14','Password14@','3472282226','user14@gmail.com','111222333417','1243 st, NY'),('User15','Password15@','3472282227','user15@gmail.com','111222333418','1244 st, NY'),('User16','Password16@','3472282228','user16@gmail.com','111222333419','145 st, NY'),('User17','Password17@','3472282229','user17@gmail.com','111222333420','1246 st, NY'),('User18','Password18@','3472282230','user18@gmail.com','111222333421','1247 st, NY'),('User19','Password19@','3472282231','user19@gmail.com','111222333422','1248 st, NY'),('User2','Password2@','3472282214','user2@gmail.com','111222333444','1230 st, NY'),('User20','Password20@','3472282232','user20@gmail.com','111222333423','1249 st, NY'),('User21','Password21@','3472282233','user21@gmail.com','111222333424','1250 st, NY'),('User3','Password3@','3472282215','user3@gmail.com','111222333446','1232 st, NY'),('User4','Password4@','3472282216','user4@gmail.com','111222333447','1233 st, NY'),('User5','Password5@','3472282217','user5@gmail.com','111222333448','1234 st, NY'),('User6','Password6@','3472282218','user6@gmail.com','111222333449','1235 st, NY'),('User7','Password7@','3472282219','user7@gmail.com','111222333410','1236 st, NY'),('User8','Password8@','3472282220','user8@gmail.com','111222333411','1237 st, NY'),('User9','Password9@','3472282221','user9@gmail.com','111222333412','1238 st, NY');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23 14:39:47

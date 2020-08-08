-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: boost
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `info` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `story` text,
  `keywords` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'a','G',29,'골프를 좋아함','2020-07-03','2020-07-20','강남','골프 그룹','골프치다가 만남','강남 가나다라 마바사'),(2,'a','여자',NULL,'kl;','2020-08-06','2020-08-20','kl;k','kl;k;','kl;kl;',NULL),(3,'a','여자',90,'ㅝㅏ','2020-08-07','2020-09-05','ㅜㅏㅓㅜ','ㅝㅏ','ㅝㅏ',NULL),(4,'a','여자',90,'ㅝㅏ','2020-08-07','2020-09-05','ㅜㅏㅓㅜ','ㅝㅏ','ㅝㅏ',NULL),(5,'a','남자',908,'ㅏ;ㅣ','2020-07-27','2020-07-31','ㅑㅐㅔㅔ','ㅑㅔㅐ','ㅑㅐㅑㅔㅐ',NULL),(6,'a','남자',908,'ㅏ;ㅣ','2020-07-27','2020-07-31','ㅑㅐㅔㅔ','ㅑㅔㅐ','ㅑㅐㅑㅔㅐ',NULL),(7,'a','여자',890,'ㅓㅣㅏㅓ','2020-08-07','2020-08-14','ㅓㅣㅏㅓㅏ','ㅓㅏㅣㅓ','ㅓㅏㅣ',NULL),(8,'a','여자',890,'ㅏ;ㅣ','2020-08-06','2020-08-28','ㅏㅣ;ㅏ;','ㅏ;ㅣㅏ','ㅏㅣ;ㅏ',NULL),(9,'a','남자',29,'착하고 좋은 사람','2020-08-20','2020-08-28','서울 신촌','스터디 그룹','스터디 그룹을 같이한 사람을 찾습니다. ㅜㅜ','스터디 그룹을 같이한 사람을 찾습니다. ㅜㅜ 착하고 좋은 사람 29 남자 2020-08-20 2020-08-28 서울 신촌 스터디 그룹');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `pw` char(60) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('a','123','kwon','M',12);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-08 11:21:16

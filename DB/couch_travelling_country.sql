CREATE DATABASE  IF NOT EXISTS `couch_travelling` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `couch_travelling`;
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: couch_travelling
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description` TEXT NOT NULL,
  `Capital` varchar(255) NOT NULL,
  `Flag` varchar(255) NOT NULL,
  `Population` int(11) NOT NULL,
  `idCurrency` int(11) NOT NULL,
  `idLanguage` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_idCurrency` (`idCurrency`),
  KEY `fk_country_idLanguage` (`idLanguage`),
  CONSTRAINT `fk_country_idCurrency` FOREIGN KEY (`idCurrency`) REFERENCES `currency` (`id`),
  CONSTRAINT `fk_country_idLanguage` FOREIGN KEY (`idLanguage`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'France','Paris','https://img.freepik.com/vecteurs-libre/fond-drapeau-francais_1107-478.jpg?size=338&ext=jpg',69861344,1,1),(2,'Etats-Unis','Washington','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuFqZX4CtIUkhEEH10oExCBa45LzZRAN3Q88OLMvUoVsZf4Q7r&usqp=CAU',333516432,2,2),(3,'Brésil','Rio','https://www.decors-du-monde.com/2579-large_default/drapeau-bresil-tissu-60-x-90-cm.jpg',206977000,3,3),(4,'Australie','Canberra','https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg',25464116,4,2),(5,'Russie','Moscou','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/langfr-225px-Flag_of_Russia.svg.png',146584604,5,5),(6,'Chine','Pékin','https://chine.in/images/2019/fd7680574eb0957e5dfa6b6493b5ff0c.jpg',1444000000,6,6),(7,'Nouvelle Zélande','Wellington','https://upload.wikimedia.org/wikipedia/commons/3/3e/Flag_of_New_Zealand.svg',4926551,7,2),(8,'Grèce','Athène','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/langfr-225px-Flag_of_Greece.svg.png',10793526,1,7),(9,'Egypte','Le Caire','https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/langfr-225px-Flag_of_Egypt.svg.png',90416900,8,8),(10,'Afrique du sud','Pretoria','https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/langfr-225px-Flag_of_South_Africa.svg.png',54956900,9,2),(11,'Japon','Tokyo','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png',124856424,10,9),(12,'Inde','New Dehli','https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_India.svg/langfr-225px-Flag_of_India.svg.png',1386249417,11,10);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 22:56:46

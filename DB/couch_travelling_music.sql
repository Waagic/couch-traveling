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
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `Artist` varchar(255) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `idCountry` int(11) DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`id`),
  KEY `fk_music_idCountry` (`idCountry`),
  CONSTRAINT `fk_music_idCountry` FOREIGN KEY (`idCountry`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'Hymne National','',1,'https://youtu.be/221UWotqwdo'),(2,'Hymne National','',3,'https://www.youtube.com/watch?v=KxSsfWZV6iQ'),(3,'Hymne National','',4,'https://www.youtube.com/watch?v=FKI3HXKgTfk'),(4,'Hymne National','',5,'https://www.youtube.com/watch?v=EDWV6gYB0FM'),(5,'Hymne National','',6,'https://www.youtube.com/watch?v=ulK5Vx56YIk'),(6,'Hymne National','',7,'https://www.youtube.com/watch?v=Fa9l5HgfUD8'),(7,'Hymne National','',8,'https://www.youtube.com/watch?v=wskOKGgCCcU'),(8,'Hymne National','',9,'https://www.youtube.com/watch?v=6jBf4LMI3mc'),(9,'Hymne National','',10,'https://www.youtube.com/watch?v=GeG7V-xLNkw'),(10,'Hymne National','',11,'https://www.youtube.com/watch?v=kRyV_Ii0tl0'),(11,'hymne National','',12,'https://www.youtube.com/watch?v=OESExifDeCw'),(12,'hymne National','',2,'https://www.youtube.com/watch?v=c9UzA1uFudI'),(13,'Born in USA','Bruce Springsteen',2,'https://www.youtube.com/watch?v=lZD4ezDbbu4'),(14,'San Francisco','Scott Mc Kenzie',2,'https://www.youtube.com/watch?v=kZcyRLtwUVY'),(15,'Essa Moça Tá Diferente','Chico Buarque',3,'https://www.youtube.com/watch?v=mLk4EH9FWwI'),(16,'Mas que nada','Jorge Ben Jor',3,'https://www.youtube.com/watch?v=oCM_VWzSiMo'),(17,'Edith Piaf','La vie en rose ',1,'https://www.youtube.com/watch?v=rzeLynj1GYM'),(18,'Johnny Halliday','Gabrielle',1,'https://www.youtube.com/watch?v=eZWigBKC1i8'),(19,'Musique Aborigène Australienne','',4,'https://www.youtube.com/watch?v=tZCystFh7Uk'),(20,'INXS','Suicide Blonde',4,'https://www.youtube.com/watch?v=Ma4TOv2f_WY'),(21,'Choeurs de l\'Armée Rouge','',5,'https://www.youtube.com/watch?v=diN-p25HYPs'),(22,'Drugaja',' Real`nost',5,'https://www.youtube.com/watch?v=K_KAh233KZY&list=LLf5TW7xqn8m09TLJO429SdQ&index=56'),(23,'Shuo Ai','Ni Lyrics',6,'https://www.youtube.com/watch?v=tjRJyvEianM'),(24,'Huang Fang Gu Niang ','',7,'https://www.youtube.com/watch?v=E5bdXNtUenQ'),(25,'Lorde ','Green Light',8,'https://www.youtube.com/watch?v=dMK_npDG12Q#action=share'),(26,'The Black Seeds','One By One',8,'https://www.youtube.com/watch?v=xWfO7xENqMM#action=share'),(27,'Sirtaki','',9,'https://www.youtube.com/watch?v=sNKKEwmC7wc'),(28,'Rebetiko','',9,'https://www.youtube.com/watch?v=Zys417qCS_M'),(29,'Fathy Salama','Nahawand',10,'https://www.youtube.com/watch?v=p4g4Q8MTwEM#action=share'),(30,'RADIO MAGANEEN','',10,'https://www.youtube.com/watch?v=hvp50vpduMI#action=share'),(31,'Etsuko Chida ',' koto',11,'https://www.youtube.com/watch?v=JeArU4FQHSE'),(32,'Musique Traditionnelle ','',11,'https://www.youtube.com/watch?v=gAOuz2oq9IU'),(33,'Chanson indienne','Mdholivokke',12,'https://www.youtube.com/watch?v=HdvW8O7XjUI'),(34,'Dhanush',' Anirudh',NULL,'https://www.youtube.com/watch?v=YR12Z8f1Dh8#action=share');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 13:20:55

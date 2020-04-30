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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish` varchar(255) NOT NULL,
  `idCountry` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_food_idCountry` (`idCountry`),
  CONSTRAINT `fk_food_idCountry` FOREIGN KEY (`idCountry`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Coq au vin',1,'https://lh3.googleusercontent.com/proxy/-Vhw_MxiDjWcJ81BHycyOcXU8LhsJf2GzOhLBpw83vpSE_VSAyhdyjRUxnqY5m1Fh2dY2UKuMXf3diihnU4Rd7K81TqaU-2NUsWrOi5oTyNIP9OJvytbKjWmUnog'),(2,'Cassoulet',1,'https://cache.marieclaire.fr/data/photo/w800_c17/cuisine/3z/cassoulet_aux_cochonnailles.jpg'),(3,'Le Burger',2,'https://www.enviedebienmanger.fr/sites/default/files/styles/bandeau_recette/public/compresed_images/burger_0_0.jpg?itok=prAdI5YP'),(4,'Les Buffalo wings',2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTvihlY4yJLys9d8ESPuc7uzatjXVYHpPkhMeInVnfEVDc5rZAD&usqp=CAU'),(5,'Feijoad',3,'https://blog.viventura.fr/hs-fs/hubfs/Imported_Blog_Media/feijoada-plat-national-bresil-1.jpg?width=600&name=feijoada-plat-national-bresil-1.jpg'),(6,'vatapa',3,'https://blog.viventura.fr/hs-fs/hubfs/Imported_Blog_Media/accompagnement-vatapa-bresil-1.jpg?width=600&name=accompagnement-vatapa-bresil-1.jpg'),(7,'Barramundi',4,'https://media-cdn.tripadvisor.com/media/photo-s/0d/54/ba/2f/plat.jpg'),(8,'Les Lamingtons',4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQaiYHzD9TGYRdyeguTiJ_gaedwQ6_rOrNXjK2g7Qp6c66PgeBV&usqp=CAU'),(9,'Stroganov',5,'https://www.voyage.fr/sites/default/files/inline-images/Stroganov.jpg'),(10,'Golubtsy',5,'https://www.voyage.fr/sites/default/files/inline-images/03-golubtsy.jpg'),(11,'Whitebait',7,'https://www.tourdumonde.fr/wordpress/wp-content/uploads/url16-600x450.jpg'),(12,'Les Jiaozis',6,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Jiaozi_of_garlic_chives_and_shrimp_by_Adonis_Chen.jpg/800px-Jiaozi_of_garlic_chives_and_shrimp_by_Adonis_Chen.jpg'),(13,'Meat Pie',7,'https://www.tourdumonde.fr/wordpress/wp-content/uploads/Vegan_Meat_Pie_01_Pengo-600x339.jpg'),(14,'Les tong shui',6,'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Redbeansoupdessert.jpg/800px-Redbeansoupdessert.jpg'),(15,'Tzatziki',8,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Tzatziki_IMGP1480.jpg/800px-Tzatziki_IMGP1480.jpg'),(16,'Moussaka',8,'https://www.flickr.com/photos/stone-soup/24602038989'),(17,'Homos',9,'https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2020.2F04.2F03.2Fce1fc54f-b533-4698-9f7e-20194a699052.2Ejpeg/1200x1200/quality/80/crop-from/center/tout-savoir-sur-le-houmous-de-ses-origines-o'),(18,'Kofta',9,'https://lh3.googleusercontent.com/proxy/Q2VqzVr1ZetpJUSyHXNGz7vW1Y17vhEYyrbBFPwwclA6wgwWMMu8uRhbw3_XRiq8Y5w8DfRH-8fHZrJ9Ku10zsjn1NgPf0SpAnOx0__b9Eq-KWj9znOZ9mQTVfdBmwbqM5ofIBJ3mZlJQVsCQC_CeOUDE4qFsaD8H6bjfZ8lnA'),(19,'Le Pudding',10,'https://cache.marieclaire.fr/data/photo/w1000_c17/cuisine/4h/christmaspudding.jpg'),(20,'Le Haggis',10,'https://images.anaca3.com/wp-content/uploads/2018/06/vertus-et-calories-du-haggis-702x336.jpg'),(21,'Yakitori',11,'http://media.topito.com/wp-content/uploads/2015/09/4857347360_17352012b4_z.jpg'),(22,'Susho',11,'http://media.topito.com/wp-content/uploads/2015/09/15512355499_6823722bf6_z.jpg'),(23,'L\'aloo Gobi',12,'https://img.over-blog-kiwi.com/1020x765/0/93/52/26/20170209/ob_65220b_aloo-gobi-4.JPG'),(24,'Le poulet Tandoori',12,'https://www.atelierdeschefs.com/media/recette-e26186-tandoori-de-filet-de-poulet.jpg');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
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

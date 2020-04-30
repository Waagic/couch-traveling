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
  `Capital` varchar(255) NOT NULL,
  `Flag` varchar(255) NOT NULL,
  `Population` int(11) NOT NULL,
  `idCurrency` int(11) NOT NULL,
  `idLanguage` int(11) NOT NULL,
  `long` float DEFAULT NULL,
  `description` text,
  `lat` float DEFAULT NULL,
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
INSERT INTO `country` VALUES (1,'France','Paris','https://img.freepik.com/vecteurs-libre/fond-drapeau-francais_1107-478.jpg?size=338&ext=jpg',69861344,1,1,48.8534,'La France, pays de l\'Europe occidentale, compte des villes médiévales, des villages alpins et des plages. Paris, sa capitale, est célèbre pour ses maisons de mode, ses musées d\'art classique, dont celui du Louvre, et ses monuments comme la Tour Eiffel. Le pays est également réputé pour ses vins et sa cuisine raffinée. Les peintures rupestres des grottes de Lascaux, le théâtre romain de Lyon et l\'immense château de Versailles témoignent de sa riche histoire.',2.3488),(2,'Etats-Unis','Washington','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuFqZX4CtIUkhEEH10oExCBa45LzZRAN3Q88OLMvUoVsZf4Q7r&usqp=CAU',333516432,2,2,38.8985,'Les États-Unis sont un pays constitué de 50 états et couvrant une vaste portion de l\'Amérique du Nord, avec l\'Alaska au nord-ouest et Hawaï étendant la présence du pays dans l\'océan Pacifique. Les principales villes de la côte atlantique sont New York, centre international financier et culturel, et Washington, la capitale. Dans la région du Midwest, la métropole de Chicago est connue pour son architecture influente et sur la côte ouest, le quartier d\'Hollywood à Los Angeles est célèbre pour ses studios de cinéma.',-77.0365),(3,'Brésil','Rio','https://www.decors-du-monde.com/2579-large_default/drapeau-bresil-tissu-60-x-90-cm.jpg',206977000,3,3,-22.905,'Le Brésil, vaste pays d\'Amérique du Sud, s\'étend du bassin amazonien au nord à des vignobles et aux chutes d\'Iguaçu au sud. La ville de Rio de Janeiro, caractérisée par sa statue du Christ Rédempteur de 38 mètres de haut située au sommet du Corcovado, est réputée pour ses plages très fréquentées de Copacabana et d\'Ipanema, ainsi que pour son énorme carnaval animé, avec défilés de chars, costumes flamboyants, et musique et danse samba.',-43.2252),(4,'Australie','Canberra','https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg',25464116,4,2,-35.2809,'L\'Australie est un pays et continent entouré par les océans Indien et Pacifique. Ses principales villes, Sydney, Brisbane, Melbourne, Perth et Adélaïde, sont bâties sur la côte. La capitale, Canberra, est quant à elle située à l\'intérieur des terres. Le pays est connu pour l\'opéra de Sydney, la Grande Barrière de corail, ses grandes étendues sauvages et désertiques appelées l\'Outback, et ses espèces animales uniques comme le kangourou et l\'ornithorynque.',149.13),(5,'Russie','Moscou','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/langfr-225px-Flag_of_Russia.svg.png',146584604,5,5,55.7558,'La Russie, la plus grande nation au monde, est frontalière de pays européens et asiatiques, ainsi que des océans Pacifique et Arctique. Ses paysages varient de la toundra aux plages subtropicales en passant par la forêt. Le pays est célèbre pour les compagnies de danse classique du Bolchoï à Moscou et du Mariinsky à Saint-Pétersbourg. Fondée par le tsar russe Pierre le Grand, la ville de Saint-Pétersbourg compte un palais d\'hiver baroque, qui abrite désormais une partie des collections du musée de l\'Ermitage.',37.6173),(6,'Chine','Pékin','https://chine.in/images/2019/fd7680574eb0957e5dfa6b6493b5ff0c.jpg',1444000000,6,6,39.9042,'La Chine est un pays très peuplé d’Asie de l’est. Son territoire immense présente des paysages variés : prairies, déserts, montagnes, lacs, rivières et plus de 14 000 km de littoral. Pékin, la capitale à l’architecture moderne, conserve également des sites historiques, comme le palais de la Cité interdite et la place Tian Anmen. Shanghaï est l\'un des plus grands centres financiers mondiaux et comporte de nombreux gratte-ciels. L’emblématique Grande Muraille de Chine partage le nord du pays d’est en ouest.',116.407),(7,'Nouvelle Zélande','Wellington','https://upload.wikimedia.org/wikipedia/commons/3/3e/Flag_of_New_Zealand.svg',4926551,7,2,4926550,'La Nouvelle-Zélande est un pays situé au sud-ouest de l\'océan Pacifique et composé de 2 îles principales abritant toutes deux des volcans et des glaciers. Le vaste musée national Te Papa Tongarewa se trouve sur l\'île du Nord, à Wellington, la capitale. Le mont Victoria ainsi que le Fiordland et les Southern Lakes de l\'île du Sud ont servi de décor aux célèbres films de la saga \"Le Seigneur des anneaux\" de Peter Jackson.',-41.2864),(8,'Grèce','Athène','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/langfr-225px-Flag_of_Greece.svg.png',10793526,1,7,10793500,'La Grèce est un pays du sud-est de l\'Europe, composé de milliers d\'îles parsemant les mers Égée et Ionienne. Influente pendant l\'Antiquité, elle est souvent surnommée le berceau de la civilisation occidentale. Athènes, sa capitale, regroupe de nombreux sites d\'intérêt, notamment l\'Acropole, datant du Ve siècle avant JC, où se trouve le Parthénon. La Grèce est également connue pour ses plages, des étendues de sable noir de Santorin aux complexes animés de Mykonos.',37.9839),(9,'Egypte','Le Caire','https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/langfr-225px-Flag_of_Egypt.svg.png',90416900,8,8,30.0444,'L\'Égypte est un pont entre l\'Afrique du Nord-Est et le Moyen-Orient et son histoire remonte à l\'époque des pharaons. Des monuments millénaires bordent les berges de la fertile vallée du Nil',31.2357),(10,'Afrique du sud','Pretoria','https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/langfr-225px-Flag_of_South_Africa.svg.png',54956900,9,2,-25.7461,'L\'Afrique du Sud est un pays situé à l\'\'extrémité australe du continent africain et composé de différents écosystèmes. À l\'\'intérieur des terres, le parc national Kruger abrite du gros gibier et propose des safaris. Le Cap occidental offre des plages, des vignobles luxuriants autour de Stellenbosch et Paarl, des falaises rocheuses au cap de Bonne-Espérance, des forêts et des lagons le long de la Garden Route, ainsi que la ville du Cap, située au pied de la montagne de la Table au sommet plat.\n',28.188),(11,'Japon','Tokyo','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png',124856424,10,9,35.709,'Le Japon est un pays insulaire situé dans l\'océan Pacifique. Il comporte des villes denses',139.732),(12,'Inde','New Dehli','https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_India.svg/langfr-225px-Flag_of_India.svg.png',1386249417,11,10,28.6139,'L\'Inde offre un paysage varié, des pics de l\'\'Himalaya au littoral de l\'\'océan Indien. Son histoire remonte à 5 millénaires. Au nord se trouvent des sites datant de l\'\'empire moghol tels que le Fort rouge et l\'\'imposante mosquée Jama Masjid, à Delhi, ainsi que l\'\'emblématique mausolée du Taj Mahal, à Agra. Les pèlerins viennent faire leurs ablutions dans les eaux du Gange, à Bénarès. Rishikesh est la capitale du yoga, mais aussi le point de départ des randonnées vers l\'Himalaya.',77.209);
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

-- Dump completed on 2020-04-30 12:01:13

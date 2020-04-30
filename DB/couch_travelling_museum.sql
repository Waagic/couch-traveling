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
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `idCountry` int(11) NOT NULL,
  `video` text,
  `lati` varchar(255) DEFAULT NULL,
  `cam1` varchar(255) DEFAULT NULL,
  `cam2` varchar(255) DEFAULT NULL,
  `cam3` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `longi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_museum_idCountry` (`idCountry`),
  CONSTRAINT `fk_museum_idCountry` FOREIGN KEY (`idCountry`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1,'Le musée d’Orsay','Le musée d’Orsay est un musée national inauguré en 1986, situé dans le 7e arrondissement de Paris le long de la rive gauche de la Seine. Il est installé dans l’ancienne gare d\'Orsay, construite par Victor Laloux de 1898 à 1900 et réaménagée en musée sur décision du Président de la République Valéry Giscard d\'Estaing.','https://www.musee-orsay.fr/',1,'https://www.youtube.com/embed/PArCzayWAjg','48.860175','1511477795','1581969002','1228218512','musee-dorsay.jpg','2.326615'),(2,'Le musée américain d\'histoire naturelle','Le musée américain d\'histoire naturelle (dont le nom officiel en anglais est American Museum of Natural History) est le principal musée d\'histoire naturelle de la ville de New York, aux États-Unis, et aussi l\'un des plus grands musées de la ville. Il est situé sur l\'île de Manhattan dans le quartier de l\'Upper West Side, au croisement de la 81e rue et Central Park West, face à Central Park.','https://www.amnh.org/',2,'https://www.youtube.com/embed/5QRPyNDZ8MA','40.780747','1483960655','1352126160','1483960550','American-Museum.jpg','-73.972636'),(3,'Le musée national de Rio','Le musée national de l\'université fédérale de Rio de Janeiro (en portugais : Museu Nacional da Universidade Federal do Rio de Janeiro1) ou juste musée national, anciennement musée national de Rio de Janeiro, parfois nommé musée d\'histoire naturelle.','http://www.museunacional.ufrj.br/',3,'https://www.youtube.com/embed/CPmtqHLFEVc','-23.561640','1580415336','1575123268','1249392511','8729c82cde4d399727259455864255b6.jpg','-46.656257'),(4,'Le Museum of Contemporary Art','Le Museum of Contemporary Art, aussi connu sous l\'acronyme MCA, est un musée australien situé à Sydney, qui se consacre exclusivement à l\'exposition et la collection d\'art contemporain, à la fois de toute l\'Australie et du monde entier.','https://www.mca.com.au/',4,'https://www.youtube.com/embed/UuW-81cb8Ko','-33.859945','1503353468','1179853135','1380813015','MCA_Architecture-116_Pieter_Naessens.jpg','151.208740'),(5,'Le Musée russe d\'État','Le Musée russe d\'État, anciennement le Musée russe de Sa Majesté impériale Alexandre III, situé sur la place des Arts à Saint-Pétersbourg , est le plus grand dépositaire d\' art russe au monde. C\'est également l\'un des plus grands musées du pays avec une superficie totale de 30 hectares.','http://en.rusmuseum.ru/',5,'https://www.youtube.com/embed/49YeFsx1rIw','59.937818','1495633357','1268401697','1311081537','state-russian-museum-in-st-petersburg.jpg','30.331910'),(6,'Le musée de Shanghai','Le musée de Shanghai est un musée d\'art chinois ancien situé à Puxi sur la Place du Peuple dans le district de Huangpu à Shanghai, Chine. L\'entrée y est gratuite. Il est situé en face de la Mairie de Shanghai.','http://www.shanghaimuseum.net',6,'https://www.youtube.com/embed/HSH5SVVx3wA','31.227344','1567484660','1585488387','1585488739','Shanghai.jpg','121.477627'),(7,'Le musée Te Papa Tongarewa','Le musée de la Nouvelle-Zélande Te Papa Tongarewa est le musée national de la Nouvelle-Zélande situé à Wellington.\nIl est communément dénommé Te Papa ou « Te Papa Tongarewa » traduit par « le lieu des trésors de cette terre ».','https://www.tepapa.govt.nz/',7,'https://www.youtube.com/embed/CoDa4-83Bb0','-41.290255','1349899235','1180715444','1349899237','1200px-Museum_of_New_Zealand_Te_Papa_Tongarewa.jpg','174.782701'),(8,'Le musée de l\'Acropole d\'Athènes','Le musée de l\'Acropole d\'Athènes est un des principaux musées archéologiques d\'Athènes en Grèce. Il dépend du ministère grec de la Culture (premier Éphorat des antiquités préhistoriques et classiques). Le président de son conseil d\'administration est Dimitrios Pandermalis.','https://www.namuseum.gr/en/',8,'https://www.youtube.com/embed/g-rdv6xdUeE','37.967663','1514869904','1587484462','1448710542','athens-museums-1280.jpg','23.728944'),(9,'Le musée égyptien du Caire','Le musée égyptien du Caire est l’un des plus grands musées entièrement consacré à l’Antiquité égyptienne. Il a reçu plus de cent millions de visiteurs au xxe siècle.','http://gem.gov.eg/',9,'https://www.youtube.com/embed/EdCReWs6-wI','30.043708','1220422386','1576525886','1491387551','Egyptian-Museum-768x430.jpg','31.224274'),(10,'Le Musée de l\'apartheid','Le Musée de l\'apartheid, situé à Johannesburg en Afrique du Sud, est un complexe muséal consacré à l\'histoire de l\'Afrique du Sud au xxe siècle et plus spécialement axé sur l\'apartheid, depuis ses débuts en 1948, son développement, et son abolition en 1994.','https://www.apartheidmuseum.org/',10,'https://www.youtube.com/embed/nzizOshJxmM','-26.237765','1523408955','1499155860','1523408955','tour-apartheid-museum.jpg','28.007588'),(11,'Le musée d\'Edo-Tokyo','Le musée d\'Edo-Tokyo (Edo Tokyo Hakubutsukan?) établi en 1993 est consacré à l\'histoire de la ville de Tokyo. Les principaux éléments des expositions permanentes sont la réplique grandeur nature du Nihonbashi, pont qui servait traditionnellement de point de départ de toutes les routes du Japon en sortant d\'Edo ; le théâtre Nakamuraza ; des modèles réduits de la ville et de bâtiments des ères Edo, Meiji et Showa.','https://www.edo-tokyo-museum.or.jp/en/',11,'https://www.youtube.com/embed/PLIKll5OjPQ','35.696893','1525295653','1586320341','1345863028','3070_01.jpg','139.797354');
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
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

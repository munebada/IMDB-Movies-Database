CREATE DATABASE  IF NOT EXISTS `imdb_movies` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `imdb_movies`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: imdb_movies
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `Actors`
--

DROP TABLE IF EXISTS `Actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actors` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_first_name` varchar(45) DEFAULT NULL,
  `actor_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actors`
--

LOCK TABLES `Actors` WRITE;
/*!40000 ALTER TABLE `Actors` DISABLE KEYS */;
INSERT INTO `Actors` VALUES (1,'Tom','Hanks'),(2,'Robin','Williams'),(3,'Walter','Matthau'),(4,'Whitney','Houston'),(5,'Steve','Martin'),(6,'Al','Pacino'),(7,'Harrison','Ford'),(8,'Jonathan','Thomas'),(9,'Powers','Boothe'),(10,'Pierce','Brosnan'),(11,'Michael','Douglas'),(12,'Leslie','Nielsen'),(13,'Kevin','Bacon'),(14,'Anthony','Hopkins'),(15,'Greena','Davis'),(16,'Sharon','Stone'),(17,'Tim ','Roth'),(18,'Jim','Carrey'),(19,'Jennifer','Lopez'),(20,'Wesley','Snipes'),(21,'Gene','Hackman'),(22,'Sigourney','Weaver'),(23,'Sylvester','Stallone'),(24,'Mary','Steenburgen'),(25,'Nicholas','Cage'),(26,'Laurence','Fishburne'),(27,'Christina','Ricci'),(28,'Jonathan','Bush'),(29,'Ron','Perlman'),(30,'Bruce','Willis');
/*!40000 ALTER TABLE `Actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Budget`
--

DROP TABLE IF EXISTS `Budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Budget` (
  `budget_id` int(11) NOT NULL AUTO_INCREMENT,
  `total_cost` int(11) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Budget`
--

LOCK TABLES `Budget` WRITE;
/*!40000 ALTER TABLE `Budget` DISABLE KEYS */;
INSERT INTO `Budget` VALUES (1,44000000,13000000),(2,30,373554033),(3,25000000,70000000),(4,35000000,64000000),(5,31000000,11300000),(6,65000000,404515480),(7,0,23000000),(8,15000000,10000000),(9,15,67052156),(10,98000000,10000000),(11,58000000,87000000),(12,30000000,76),(13,62000000,107900000),(14,60000000,67436818),(15,60000000,355000000),(16,4000000,4257000),(17,30250000,115000000),(18,20000000,32000000),(19,30000000,212400000),(20,52000000,116100000),(21,4000000,49800000),(22,0,30900000),(23,11000000,2844000),(24,18000000,1700000),(25,16000000,135000000),(26,0,168800000),(27,5270000,1000000),(28,50000000,30000000),(29,12000000,37500000),(30,68000000,77200000);
/*!40000 ALTER TABLE `Budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `director_first_name` varchar(45) DEFAULT NULL,
  `director_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES (1,1,'John ','Lasseter'),(2,2,'Jake ','Kasdan'),(3,3,'Howard','Deutch'),(4,4,'Forest ','Whitaker'),(5,5,'Charles','Shyer'),(6,6,'Michael','Mann'),(7,7,'Sydney','Pollack '),(8,8,'Peter ','Hewitt'),(9,9,'Peter ','Hyams'),(10,10,'Martin ','Campbell'),(11,11,'Rob','Reiner'),(12,12,'Mel','Brooks'),(13,13,'Simon','Wells '),(14,14,'Oliver ','Stone'),(15,15,'Renny','Harlin '),(16,16,'Martin ','Scorsese'),(17,17,'Ang','Lee'),(18,18,'Quentin','Tarantino'),(19,19,'Tom','Shadyac'),(20,20,'Joseph','Ruben'),(21,21,'Barry','Sonenfeld'),(22,22,'Jon','Amiel'),(23,23,'Richard','Donner'),(24,24,'Victor','Salva'),(25,25,'Mike','Figgis'),(26,26,'Oliver ','Parker'),(27,27,'Leslie','Glatter'),(28,28,'Adrian ','Shergold'),(29,29,'Marc','Caro'),(30,30,'Terry ','Gilliam');
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Drama'),(2,'Horror'),(3,'Action'),(4,'Romantic Comedy'),(5,'Adventure'),(6,'Fantasy'),(7,'Romance'),(8,'Thriller'),(9,'Western'),(10,'Science Fiction'),(11,'Mystery'),(12,'Animation'),(13,'Crime'),(14,'Comedy'),(15,'Family'),(16,'History'),(17,'Alternative'),(18,'Tragedy');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Language`
--

DROP TABLE IF EXISTS `Language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Language` (
  `language` varchar(45) DEFAULT NULL,
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Language`
--

LOCK TABLES `Language` WRITE;
/*!40000 ALTER TABLE `Language` DISABLE KEYS */;
INSERT INTO `Language` VALUES ('English',1),('French',2),('Spanish',3),('Chinese',4);
/*!40000 ALTER TABLE `Language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `release_date` datetime DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `budget_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `production_id` int(11) DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `genre_id_idx` (`genre_id`),
  KEY `budget_id_idx` (`budget_id`),
  CONSTRAINT `fk_budget_id_one` FOREIGN KEY (`budget_id`) REFERENCES `Budget` (`budget_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_genre_id_one` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'1995-10-30 00:00:00',12,2,1,1,1,1,'Toy Story',1),(2,'1995-12-15 00:00:00',5,6,2,2,6,2,'Jumanji',1),(3,'1995-12-22 00:00:00',7,3,3,3,5,3,'Grumpier Old Men',1),(4,'1995-12-22 00:00:00',14,9,4,4,3,4,'Waiting to Exhale',1),(5,'1995-02-10 00:00:00',14,12,5,5,4,5,'Father of the Bride Part II',1),(6,'1995-12-15 00:00:00',3,14,6,6,10,6,'Heat',1),(7,'1995-12-15 00:00:00',14,11,7,7,5,7,'Sabrina',1),(8,'1995-12-22 00:00:00',14,7,8,8,7,8,'Tom and Huck',1),(9,'1995-12-22 00:00:00',3,4,9,9,8,9,'Sudden Death',1),(10,'1995-11-16 00:00:00',5,15,10,10,9,10,'GoldenEye',1),(11,'1995-11-17 00:00:00',14,13,11,11,8,11,'The American President',1),(12,'1995-12-22 00:00:00',14,8,12,12,10,12,'Dracula: Dead and Loving It',1),(13,'1995-12-22 00:00:00',15,5,13,13,8,13,'Balto',1),(14,'1995-12-22 00:00:00',16,1,14,14,11,14,'Nixon',1),(15,'1995-12-22 00:00:00',3,10,15,15,2,15,'Cutthroat Island',1),(16,'1995-11-22 00:00:00',1,20,16,16,8,16,'Casino',1),(17,'1995-12-13 00:00:00',7,25,17,17,6,17,'Sense and Sensibility',1),(18,'1995-12-09 00:00:00',14,16,18,18,12,18,'Four Rooms',1),(19,'1995-11-10 00:00:00',14,19,19,19,13,19,'Ace Ventura: When Nature Calls',1),(20,'1995-11-21 00:00:00',14,30,20,20,6,20,'Money Train',1),(21,'1995-10-20 00:00:00',14,17,21,21,14,21,'Get Shorty',1),(22,'1995-10-27 00:00:00',17,18,22,22,15,22,'Copycat',1),(23,'1995-10-06 00:00:00',3,28,23,23,16,23,'Assassins',1),(24,'1995-10-27 00:00:00',1,22,24,24,11,24,'Powder',1),(25,'1995-10-27 00:00:00',7,21,25,25,18,25,'Leaving Las Vegas',1),(26,'1995-12-15 00:00:00',18,23,26,26,19,26,'Othello',1),(27,'1995-10-20 00:00:00',7,29,27,27,20,27,'Now and Then',1),(28,'1995-09-27 00:00:00',7,27,28,28,21,28,'Persuasion',1),(29,'1995-05-16 00:00:00',5,24,29,29,22,29,'La Cité des Enfants Perdus',2),(30,'1995-12-29 00:00:00',10,26,30,30,8,30,'Twelve Monkeys',1);
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_Actors`
--

DROP TABLE IF EXISTS `Movies_Actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_Actors` (
  `movie_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL,
  KEY `fk_actor_id_idx` (`actor_id`),
  KEY `fk_movie_id_idx` (`movie_id`),
  CONSTRAINT `fk_actor_id_two` FOREIGN KEY (`actor_id`) REFERENCES `Actors` (`actor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_id_two` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_Actors`
--

LOCK TABLES `Movies_Actors` WRITE;
/*!40000 ALTER TABLE `Movies_Actors` DISABLE KEYS */;
INSERT INTO `Movies_Actors` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
/*!40000 ALTER TABLE `Movies_Actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_Directors`
--

DROP TABLE IF EXISTS `Movies_Directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_Directors` (
  `director_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  KEY `fk_movie_id_idx` (`movie_id`),
  KEY `fk_director_id_idx` (`director_id`),
  CONSTRAINT `fk_director_id_three` FOREIGN KEY (`director_id`) REFERENCES `Director` (`director_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_id_three` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_Directors`
--

LOCK TABLES `Movies_Directors` WRITE;
/*!40000 ALTER TABLE `Movies_Directors` DISABLE KEYS */;
INSERT INTO `Movies_Directors` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
/*!40000 ALTER TABLE `Movies_Directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_Languages`
--

DROP TABLE IF EXISTS `Movies_Languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_Languages` (
  `language_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  KEY `fk_language_id_idx` (`language_id`),
  KEY `fk_movie_id_idx` (`movie_id`),
  CONSTRAINT `fk_language_id_four` FOREIGN KEY (`language_id`) REFERENCES `Language` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_id_four` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_Languages`
--

LOCK TABLES `Movies_Languages` WRITE;
/*!40000 ALTER TABLE `Movies_Languages` DISABLE KEYS */;
INSERT INTO `Movies_Languages` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(2,29),(1,30);
/*!40000 ALTER TABLE `Movies_Languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_Production`
--

DROP TABLE IF EXISTS `Movies_Production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_Production` (
  `production_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  KEY `fk_production_id_idx` (`production_id`),
  KEY `fk_movie_id_idx` (`movie_id`),
  CONSTRAINT `fk_movie_id_five` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_production_id_five` FOREIGN KEY (`production_id`) REFERENCES `Production` (`production_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_Production`
--

LOCK TABLES `Movies_Production` WRITE;
/*!40000 ALTER TABLE `Movies_Production` DISABLE KEYS */;
INSERT INTO `Movies_Production` VALUES (1,1),(6,2),(5,3),(3,4),(4,5),(10,6),(5,7),(7,8),(8,9),(9,10),(8,11),(10,12),(8,13),(11,14),(2,15),(8,16),(6,17),(12,18),(13,19),(6,20),(17,21),(5,22),(5,23),(11,24),(18,25),(19,26),(20,27),(21,28),(22,29),(8,30);
/*!40000 ALTER TABLE `Movies_Production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Production`
--

DROP TABLE IF EXISTS `Production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Production` (
  `production_company` varchar(45) DEFAULT NULL,
  `production_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`production_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Production`
--

LOCK TABLES `Production` WRITE;
/*!40000 ALTER TABLE `Production` DISABLE KEYS */;
INSERT INTO `Production` VALUES ('Pixar',1),('Carolco Pictures',2),('20th Century Fox',3),('Touchstone Pictures',4),('Warner Bros',5),('Columbia Pictures ',6),('Walt Disney Pictures ',7),('Universial Pictures ',8),('Eon Productions ',9),('Gaumont ',10),('Hollywood Pictures ',11),('A Band Apart',12),('Morgan Creek Entertainment Group',13),('Epix',14),('Regency Enterprises',15),('The Roundabout Theatre Company',16),('Jersey Films',17),('Lumiere Pictures',18),('Castlerock Entertainment',19),('New Line Cinema',20),('BBC',21),('France 3',22);
/*!40000 ALTER TABLE `Production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ratings`
--

DROP TABLE IF EXISTS `Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `num_ratings` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `movie_id_idx` (`movie_id`),
  CONSTRAINT `fk_movie_id_six` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ratings`
--

LOCK TABLES `Ratings` WRITE;
/*!40000 ALTER TABLE `Ratings` DISABLE KEYS */;
INSERT INTO `Ratings` VALUES (1,1,8.3,786624),(2,2,7,267892),(3,3,6.6,22385),(4,4,5.8,8669),(5,5,6,31227),(6,6,8.2,521418),(7,7,6.3,33844),(8,8,5.6,8996),(9,9,5.7,29787),(10,10,7.2,222361),(11,11,6.8,48129),(12,12,5.9,35615),(13,13,7.1,36286),(14,14,7.1,26932),(15,15,5.6,24035),(16,16,8.2,411938),(17,17,7.7,91677),(18,18,7.5,106480),(19,19,6.8,90212),(20,20,5.6,36331),(21,21,6.9,70913),(22,22,6.6,49699),(23,23,6.3,72430),(24,24,6.6,26992),(25,25,7.5,106480),(26,26,6.9,8534),(27,27,6.8,24139),(28,28,7.5,12760),(29,29,7.6,61448),(30,30,8,537705);
/*!40000 ALTER TABLE `Ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `avg_ratings`
--

DROP TABLE IF EXISTS `avg_ratings`;
/*!50001 DROP VIEW IF EXISTS `avg_ratings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `avg_ratings` AS SELECT 
 1 AS `Average_genre_ratings`,
 1 AS `genre_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `copy_cost`
--

DROP TABLE IF EXISTS `copy_cost`;
/*!50001 DROP VIEW IF EXISTS `copy_cost`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `copy_cost` AS SELECT 
 1 AS `Movies`,
 1 AS `Sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `copy_director`
--

DROP TABLE IF EXISTS `copy_director`;
/*!50001 DROP VIEW IF EXISTS `copy_director`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `copy_director` AS SELECT 
 1 AS `director_name`,
 1 AS `movie_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_budget`
--

DROP TABLE IF EXISTS `high_budget`;
/*!50001 DROP VIEW IF EXISTS `high_budget`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `high_budget` AS SELECT 
 1 AS `Movie name`,
 1 AS `Release date`,
 1 AS `Budget`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `popular_production`
--

DROP TABLE IF EXISTS `popular_production`;
/*!50001 DROP VIEW IF EXISTS `popular_production`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `popular_production` AS SELECT 
 1 AS `production_company`,
 1 AS `Number_of_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewcompany`
--

DROP TABLE IF EXISTS `viewcompany`;
/*!50001 DROP VIEW IF EXISTS `viewcompany`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewcompany` AS SELECT 
 1 AS `movie_name`,
 1 AS `release_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'imdb_movies'
--

--
-- Final view structure for view `avg_ratings`
--

/*!50001 DROP VIEW IF EXISTS `avg_ratings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_ratings` AS select format(avg(`r`.`imdb_rating`),2) AS `Average_genre_ratings`,`g`.`genre_name` AS `genre_name` from ((`genre` `g` join `movies` `m` on((`g`.`genre_id` = `m`.`genre_id`))) join `ratings` `r` on((`m`.`rating_id` = `r`.`rating_id`))) group by `g`.`genre_name` order by `Average_genre_ratings` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `copy_cost`
--

/*!50001 DROP VIEW IF EXISTS `copy_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `copy_cost` AS select `m`.`movie_name` AS `Movies`,`b`.`sales` AS `Sales` from (`movies` `m` join `budget` `b` on((`m`.`budget_id` = `b`.`budget_id`))) where (`b`.`sales` >= 5000000) order by `b`.`sales` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `copy_director`
--

/*!50001 DROP VIEW IF EXISTS `copy_director`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `copy_director` AS select concat(`director`.`director_first_name`,' ',`director`.`director_last_name`) AS `director_name`,`movies`.`movie_name` AS `movie_name` from ((`director` join `movies` on((`director`.`movie_id` = `movies`.`movie_id`))) join `genre` on((`movies`.`genre_id` = `genre`.`genre_id`))) where (`genre`.`genre_name` = 'Comedy') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_budget`
--

/*!50001 DROP VIEW IF EXISTS `high_budget`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_budget` AS select `movies`.`movie_name` AS `Movie name`,`movies`.`release_date` AS `Release date`,format(`budget`.`total_cost`,2) AS `Budget` from (`movies` join `budget` on((`movies`.`budget_id` = `budget`.`budget_id`))) where (`budget`.`total_cost` > (select avg(`budget`.`total_cost`) from `budget`)) order by `movies`.`release_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popular_production`
--

/*!50001 DROP VIEW IF EXISTS `popular_production`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular_production` AS select `p`.`production_company` AS `production_company`,count(0) AS `Number_of_Count` from ((`production` `p` join `movies_production` `mp` on((`p`.`production_id` = `mp`.`production_id`))) join `movies` `m` on((`mp`.`movie_id` = `m`.`movie_id`))) group by `p`.`production_company` order by `Number_of_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewcompany`
--

/*!50001 DROP VIEW IF EXISTS `viewcompany`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewcompany` AS select `movies`.`movie_name` AS `movie_name`,`movies`.`release_date` AS `release_date` from `movies` where `movies`.`production_id` in (select `production`.`production_id` from `production` where (`production`.`production_company` = 'Warner Bros')) order by `movies`.`movie_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-10 14:11:57

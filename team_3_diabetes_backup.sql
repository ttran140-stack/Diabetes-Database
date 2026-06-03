CREATE DATABASE IF NOT EXISTS diabetes_new_database;
USE diabetes_new_database;

-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: diabetes_new_database
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis` (
  `diagnosis_id` int unsigned NOT NULL AUTO_INCREMENT,
  `diagnosis_name` varchar(45) NOT NULL,
  PRIMARY KEY (`diagnosis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES (1,'type1_diabetes'),(2,'type2_diabetes'),(3,'prediabetes'),(4,'steroid_induced_diabetes'),(5,'mody'),(6,'gestational_diabetes'),(7,'cfrd');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genetics`
--

DROP TABLE IF EXISTS `genetics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genetics` (
  `genetics_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'this is genetics look up table\ngenetic id 1 is "genetic markers"\ngenetic id 2 is "family history"\ngenetic id 3 is " ethinicty"\ngenetic id 4 is "genetic testing"\n\ntest values are in the target_genetics table',
  `genetic_category` varchar(20) NOT NULL,
  PRIMARY KEY (`genetics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genetics`
--

LOCK TABLES `genetics` WRITE;
/*!40000 ALTER TABLE `genetics` DISABLE KEYS */;
INSERT INTO `genetics` VALUES (1,'genetic_markers'),(2,'family_history'),(3,'ethnicity'),(4,'genetic_testing');
/*!40000 ALTER TABLE `genetics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifestyle`
--

DROP TABLE IF EXISTS `lifestyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifestyle` (
  `lifestyle_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'this is the lifestyle lookup table\nlifestyle id 1 is alcohol consumption\nlifestyle id 2 is dietary habits \nlifestyle id 3 is smoking status\nlifestyle id 4 is phyiscal activity\nlifestyle id 5 is socioeconomic factors\n',
  `lifestyle_category` varchar(20) NOT NULL,
  PRIMARY KEY (`lifestyle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifestyle`
--

LOCK TABLES `lifestyle` WRITE;
/*!40000 ALTER TABLE `lifestyle` DISABLE KEYS */;
INSERT INTO `lifestyle` VALUES (1,'alcohol_consumption'),(2,'dietary_habits'),(3,'smoking_status'),(4,'physical_activity');
/*!40000 ALTER TABLE `lifestyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `medical_history_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'this is the medical history lookup\nmedical history 1 is steriod use history\nmedical history 2 is cystic fibrosis \nmedical history 3 is previous gest. diabetes\nmedical history 4 is pcos history\nmedical history 5 is pregnacy history\nmedical history 6 is birth weight\nmedical history 7 is insulin levels\nmedical history id 8 is blood pressure\nmedical history id 9 is bmi\nmedical history id 10 is waist cir.\nmedical history id 11 is cholest. level\nmedical history id 12 is glucose level\nmedical history id 13  is glucose tolorence \nmedical history id 14 is autobodies \nmedical history id 15 is nuerological assessments',
  `medical_history_category` varchar(50) NOT NULL,
  PRIMARY KEY (`medical_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES (1,'steroid_use_history'),(2,'cystic_fibrosis'),(3,'previous_gest_diabetes'),(4,'pcos_history'),(5,'insulin_levels'),(6,'blood_pressure'),(7,'waist_circumference'),(8,'cholest_levels'),(9,'glucose_levels'),(10,'glucose_tolerance'),(11,'autoantibodies');
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organ_functions`
--

DROP TABLE IF EXISTS `organ_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organ_functions` (
  `organ_functions_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'This is the organ functions lookup table\norgan functions id 1 is urine test\norgan functions id 2 is liver functions \norgan functions id 3 is digestive enzymes \norgan functions id 4 pancreatic health\norgan functions id 5 pulmonary function\n',
  `organ_functions_category` varchar(20) NOT NULL,
  PRIMARY KEY (`organ_functions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organ_functions`
--

LOCK TABLES `organ_functions` WRITE;
/*!40000 ALTER TABLE `organ_functions` DISABLE KEYS */;
INSERT INTO `organ_functions` VALUES (1,'urine_test'),(2,'liver_functions'),(3,'digestive_enzymes'),(4,'pancreatic_health'),(5,'pulmonary_function');
/*!40000 ALTER TABLE `organ_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_genetics`
--

DROP TABLE IF EXISTS `target_genetics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_genetics` (
  `genetics_id` int unsigned NOT NULL,
  `target_id` int unsigned NOT NULL,
  `genetic_value` varchar(20) NOT NULL,
  PRIMARY KEY (`genetics_id`,`target_id`),
  KEY `fk_genetics_one(look up table)_has_targets_targets1_idx` (`target_id`),
  KEY `fk_genetics_one(look up table)_has_targets_genetics_one(loo_idx` (`genetics_id`),
  CONSTRAINT `fk_genetics_one(look up table)_has_targets_genetics_one(look 1` FOREIGN KEY (`genetics_id`) REFERENCES `genetics` (`genetics_id`),
  CONSTRAINT `fk_genetics_one(look up table)_has_targets_targets1` FOREIGN KEY (`target_id`) REFERENCES `targets` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_genetics`
--

LOCK TABLES `target_genetics` WRITE;
/*!40000 ALTER TABLE `target_genetics` DISABLE KEYS */;
INSERT INTO `target_genetics` VALUES (1,1,'Positive'),(1,2,'Positive'),(1,3,'Negative'),(1,4,'Negative'),(1,5,'Positive'),(1,6,'Positive'),(1,7,'Positive'),(1,8,'Negative'),(1,9,'Positive'),(1,10,'Positive'),(1,11,'Negative'),(1,12,'Negative'),(1,13,'Positive'),(1,14,'Negative'),(1,15,'Positive'),(1,16,'Negative'),(1,17,'Positive'),(1,18,'Negative'),(1,19,'Positive'),(1,20,'Negative'),(1,21,'Negative'),(1,22,'Positive'),(1,23,'Negative'),(1,24,'Negative'),(1,25,'Positive'),(1,26,'Positive'),(1,27,'Negative'),(1,28,'Negative'),(1,29,'Negative'),(1,30,'Positive'),(1,31,'Negative'),(1,32,'Negative'),(1,33,'Positive'),(1,34,'Positive'),(1,35,'Positive'),(1,36,'Positive'),(1,37,'Negative'),(1,38,'Positive'),(1,39,'Positive'),(1,40,'Negative'),(1,41,'Positive'),(1,42,'Negative'),(1,43,'Negative'),(1,44,'Negative'),(1,45,'Negative'),(1,46,'Negative'),(1,47,'Negative'),(1,48,'Positive'),(1,49,'Negative'),(1,50,'Positive'),(1,51,'Negative'),(1,52,'Negative'),(1,53,'Positive'),(1,54,'Positive'),(1,55,'Negative'),(1,56,'Negative'),(1,57,'Negative'),(1,58,'Positive'),(1,59,'Negative'),(1,60,'Negative'),(1,61,'Positive'),(1,62,'Positive'),(1,63,'Positive'),(1,64,'Positive'),(1,65,'Positive'),(1,66,'Negative'),(1,67,'Negative'),(1,68,'Positive'),(1,69,'Positive'),(1,70,'Positive'),(1,71,'Positive'),(1,72,'Positive'),(1,73,'Negative'),(1,74,'Positive'),(1,75,'Negative'),(1,76,'Negative'),(1,77,'Negative'),(1,78,'Positive'),(1,79,'Negative'),(1,80,'Negative'),(1,81,'Negative'),(1,82,'Positive'),(1,83,'Positive'),(1,84,'Positive'),(1,85,'Negative'),(1,86,'Positive'),(1,87,'Positive'),(1,88,'Negative'),(1,89,'Negative'),(1,90,'Negative'),(1,91,'Positive'),(1,92,'Negative'),(1,93,'Positive'),(1,94,'Positive'),(1,95,'Negative'),(1,96,'Negative'),(1,97,'Positive'),(1,98,'Positive'),(1,99,'Negative'),(1,100,'Negative'),(2,1,'No'),(2,2,'Yes'),(2,3,'No'),(2,4,'No'),(2,5,'No'),(2,6,'No'),(2,7,'Yes'),(2,8,'Yes'),(2,9,'Yes'),(2,10,'No'),(2,11,'Yes'),(2,12,'Yes'),(2,13,'No'),(2,14,'Yes'),(2,15,'No'),(2,16,'Yes'),(2,17,'Yes'),(2,18,'Yes'),(2,19,'Yes'),(2,20,'Yes'),(2,21,'No'),(2,22,'No'),(2,23,'Yes'),(2,24,'No'),(2,25,'Yes'),(2,26,'No'),(2,27,'Yes'),(2,28,'No'),(2,29,'No'),(2,30,'Yes'),(2,31,'No'),(2,32,'No'),(2,33,'Yes'),(2,34,'No'),(2,35,'Yes'),(2,36,'Yes'),(2,37,'Yes'),(2,38,'No'),(2,39,'No'),(2,40,'No'),(2,41,'No'),(2,42,'No'),(2,43,'Yes'),(2,44,'Yes'),(2,45,'No'),(2,46,'Yes'),(2,47,'No'),(2,48,'Yes'),(2,49,'Yes'),(2,50,'Yes'),(2,51,'Yes'),(2,52,'No'),(2,53,'No'),(2,54,'No'),(2,55,'Yes'),(2,56,'No'),(2,57,'No'),(2,58,'Yes'),(2,59,'Yes'),(2,60,'No'),(2,61,'Yes'),(2,62,'Yes'),(2,63,'No'),(2,64,'No'),(2,65,'Yes'),(2,66,'Yes'),(2,67,'Yes'),(2,68,'Yes'),(2,69,'Yes'),(2,70,'No'),(2,71,'No'),(2,72,'No'),(2,73,'Yes'),(2,74,'No'),(2,75,'Yes'),(2,76,'No'),(2,77,'Yes'),(2,78,'Yes'),(2,79,'No'),(2,80,'Yes'),(2,81,'Yes'),(2,82,'No'),(2,83,'Yes'),(2,84,'Yes'),(2,85,'No'),(2,86,'No'),(2,87,'Yes'),(2,88,'No'),(2,89,'No'),(2,90,'No'),(2,91,'Yes'),(2,92,'No'),(2,93,'Yes'),(2,94,'Yes'),(2,95,'No'),(2,96,'No'),(2,97,'No'),(2,98,'No'),(2,99,'No'),(2,100,'Yes'),(3,1,'Low Risk'),(3,2,'Low Risk'),(3,3,'Low Risk'),(3,4,'High Risk'),(3,5,'High Risk'),(3,6,'Low Risk'),(3,7,'High Risk'),(3,8,'High Risk'),(3,9,'High Risk'),(3,10,'Low Risk'),(3,11,'High Risk'),(3,12,'Low Risk'),(3,13,'Low Risk'),(3,14,'Low Risk'),(3,15,'High Risk'),(3,16,'High Risk'),(3,17,'Low Risk'),(3,18,'Low Risk'),(3,19,'High Risk'),(3,20,'High Risk'),(3,21,'High Risk'),(3,22,'High Risk'),(3,23,'Low Risk'),(3,24,'Low Risk'),(3,25,'Low Risk'),(3,26,'High Risk'),(3,27,'High Risk'),(3,28,'Low Risk'),(3,29,'Low Risk'),(3,30,'Low Risk'),(3,31,'High Risk'),(3,32,'Low Risk'),(3,33,'Low Risk'),(3,34,'Low Risk'),(3,35,'High Risk'),(3,36,'Low Risk'),(3,37,'High Risk'),(3,38,'High Risk'),(3,39,'Low Risk'),(3,40,'High Risk'),(3,41,'High Risk'),(3,42,'Low Risk'),(3,43,'Low Risk'),(3,44,'Low Risk'),(3,45,'Low Risk'),(3,46,'Low Risk'),(3,47,'High Risk'),(3,48,'Low Risk'),(3,49,'Low Risk'),(3,50,'High Risk'),(3,51,'High Risk'),(3,52,'Low Risk'),(3,53,'High Risk'),(3,54,'Low Risk'),(3,55,'Low Risk'),(3,56,'Low Risk'),(3,57,'Low Risk'),(3,58,'High Risk'),(3,59,'High Risk'),(3,60,'Low Risk'),(3,61,'High Risk'),(3,62,'High Risk'),(3,63,'High Risk'),(3,64,'High Risk'),(3,65,'High Risk'),(3,66,'High Risk'),(3,67,'High Risk'),(3,68,'High Risk'),(3,69,'High Risk'),(3,70,'Low Risk'),(3,71,'High Risk'),(3,72,'Low Risk'),(3,73,'Low Risk'),(3,74,'High Risk'),(3,75,'Low Risk'),(3,76,'High Risk'),(3,77,'High Risk'),(3,78,'High Risk'),(3,79,'Low Risk'),(3,80,'High Risk'),(3,81,'Low Risk'),(3,82,'Low Risk'),(3,83,'High Risk'),(3,84,'High Risk'),(3,85,'Low Risk'),(3,86,'Low Risk'),(3,87,'High Risk'),(3,88,'Low Risk'),(3,89,'High Risk'),(3,90,'Low Risk'),(3,91,'High Risk'),(3,92,'High Risk'),(3,93,'High Risk'),(3,94,'High Risk'),(3,95,'High Risk'),(3,96,'Low Risk'),(3,97,'Low Risk'),(3,98,'Low Risk'),(3,99,'High Risk'),(3,100,'Low Risk'),(4,1,'Positive'),(4,2,'Negative'),(4,3,'Positive'),(4,4,'Negative'),(4,5,'Negative'),(4,6,'Positive'),(4,7,'Negative'),(4,8,'Positive'),(4,9,'Negative'),(4,10,'Negative'),(4,11,'Negative'),(4,12,'Negative'),(4,13,'Negative'),(4,14,'Positive'),(4,15,'Negative'),(4,16,'Negative'),(4,17,'Positive'),(4,18,'Positive'),(4,19,'Positive'),(4,20,'Positive'),(4,21,'Positive'),(4,22,'Positive'),(4,23,'Positive'),(4,24,'Negative'),(4,25,'Positive'),(4,26,'Negative'),(4,27,'Negative'),(4,28,'Positive'),(4,29,'Negative'),(4,30,'Positive'),(4,31,'Positive'),(4,32,'Positive'),(4,33,'Positive'),(4,34,'Negative'),(4,35,'Positive'),(4,36,'Positive'),(4,37,'Positive'),(4,38,'Positive'),(4,39,'Positive'),(4,40,'Positive'),(4,41,'Negative'),(4,42,'Positive'),(4,43,'Negative'),(4,44,'Positive'),(4,45,'Negative'),(4,46,'Positive'),(4,47,'Negative'),(4,48,'Positive'),(4,49,'Negative'),(4,50,'Positive'),(4,51,'Positive'),(4,52,'Positive'),(4,53,'Negative'),(4,54,'Negative'),(4,55,'Negative'),(4,56,'Positive'),(4,57,'Positive'),(4,58,'Positive'),(4,59,'Positive'),(4,60,'Positive'),(4,61,'Negative'),(4,62,'Positive'),(4,63,'Positive'),(4,64,'Negative'),(4,65,'Positive'),(4,66,'Positive'),(4,67,'Positive'),(4,68,'Positive'),(4,69,'Positive'),(4,70,'Negative'),(4,71,'Positive'),(4,72,'Negative'),(4,73,'Positive'),(4,74,'Positive'),(4,75,'Positive'),(4,76,'Positive'),(4,77,'Negative'),(4,78,'Positive'),(4,79,'Negative'),(4,80,'Negative'),(4,81,'Positive'),(4,82,'Negative'),(4,83,'Negative'),(4,84,'Positive'),(4,85,'Negative'),(4,86,'Positive'),(4,87,'Positive'),(4,88,'Negative'),(4,89,'Positive'),(4,90,'Positive'),(4,91,'Positive'),(4,92,'Positive'),(4,93,'Positive'),(4,94,'Negative'),(4,95,'Negative'),(4,96,'Negative'),(4,97,'Positive'),(4,98,'Positive'),(4,99,'Positive'),(4,100,'Positive');
/*!40000 ALTER TABLE `target_genetics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_lifestyles`
--

DROP TABLE IF EXISTS `target_lifestyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_lifestyles` (
  `lifestyle_id` int unsigned NOT NULL,
  `target_id` int unsigned NOT NULL,
  `lifestyle_value` varchar(20) NOT NULL,
  PRIMARY KEY (`lifestyle_id`,`target_id`),
  KEY `fk_lifestyles_has_targets_targets1_idx` (`target_id`),
  KEY `fk_lifestyles_has_targets_lifestyles1_idx` (`lifestyle_id`),
  CONSTRAINT `fk_lifestyles_has_targets_lifestyles1` FOREIGN KEY (`lifestyle_id`) REFERENCES `lifestyle` (`lifestyle_id`),
  CONSTRAINT `fk_lifestyles_has_targets_targets1` FOREIGN KEY (`target_id`) REFERENCES `targets` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_lifestyles`
--

LOCK TABLES `target_lifestyles` WRITE;
/*!40000 ALTER TABLE `target_lifestyles` DISABLE KEYS */;
INSERT INTO `target_lifestyles` VALUES (1,1,'High'),(1,2,'High'),(1,3,'Moderate'),(1,4,'Low'),(1,5,'Moderate'),(1,6,'Moderate'),(1,7,'Low'),(1,8,'High'),(1,9,'High'),(1,10,'Low'),(1,11,'Moderate'),(1,12,'Moderate'),(1,13,'Low'),(1,14,'Low'),(1,15,'Moderate'),(1,16,'Moderate'),(1,17,'High'),(1,18,'Low'),(1,19,'High'),(1,20,'Moderate'),(1,21,'Moderate'),(1,22,'Low'),(1,23,'Moderate'),(1,24,'Moderate'),(1,25,'High'),(1,26,'Low'),(1,27,'Moderate'),(1,28,'High'),(1,29,'Low'),(1,30,'Moderate'),(1,31,'Moderate'),(1,32,'High'),(1,33,'High'),(1,34,'Moderate'),(1,35,'High'),(1,36,'High'),(1,37,'High'),(1,38,'Low'),(1,39,'Moderate'),(1,40,'Moderate'),(1,41,'Moderate'),(1,42,'Moderate'),(1,43,'High'),(1,44,'Moderate'),(1,45,'High'),(1,46,'Moderate'),(1,47,'Low'),(1,48,'Low'),(1,49,'High'),(1,50,'Moderate'),(1,51,'Moderate'),(1,52,'Low'),(1,53,'Moderate'),(1,54,'High'),(1,55,'High'),(1,56,'Low'),(1,57,'Low'),(1,58,'Moderate'),(1,59,'Low'),(1,60,'Low'),(1,61,'High'),(1,62,'Low'),(1,63,'Low'),(1,64,'High'),(1,65,'High'),(1,66,'Low'),(1,67,'Moderate'),(1,68,'High'),(1,69,'Low'),(1,70,'Moderate'),(1,71,'High'),(1,72,'Low'),(1,73,'Low'),(1,74,'Moderate'),(1,75,'High'),(1,76,'Moderate'),(1,77,'Moderate'),(1,78,'Low'),(1,79,'Low'),(1,80,'High'),(1,81,'Moderate'),(1,82,'Low'),(1,83,'Low'),(1,84,'Moderate'),(1,85,'Moderate'),(1,86,'Moderate'),(1,87,'High'),(1,88,'Low'),(1,89,'High'),(1,90,'Low'),(1,91,'High'),(1,92,'High'),(1,93,'Low'),(1,94,'Low'),(1,95,'Moderate'),(1,96,'Low'),(1,97,'Moderate'),(1,98,'Low'),(1,99,'Moderate'),(1,100,'High'),(2,1,'Healthy'),(2,2,'Unhealthy'),(2,3,'Unhealthy'),(2,4,'Healthy'),(2,5,'Unhealthy'),(2,6,'Healthy'),(2,7,'Unhealthy'),(2,8,'Unhealthy'),(2,9,'Healthy'),(2,10,'Healthy'),(2,11,'Unhealthy'),(2,12,'Unhealthy'),(2,13,'Healthy'),(2,14,'Healthy'),(2,15,'Healthy'),(2,16,'Healthy'),(2,17,'Unhealthy'),(2,18,'Healthy'),(2,19,'Unhealthy'),(2,20,'Healthy'),(2,21,'Healthy'),(2,22,'Healthy'),(2,23,'Healthy'),(2,24,'Healthy'),(2,25,'Healthy'),(2,26,'Healthy'),(2,27,'Unhealthy'),(2,28,'Unhealthy'),(2,29,'Unhealthy'),(2,30,'Unhealthy'),(2,31,'Healthy'),(2,32,'Healthy'),(2,33,'Unhealthy'),(2,34,'Healthy'),(2,35,'Unhealthy'),(2,36,'Unhealthy'),(2,37,'Unhealthy'),(2,38,'Healthy'),(2,39,'Healthy'),(2,40,'Unhealthy'),(2,41,'Unhealthy'),(2,42,'Unhealthy'),(2,43,'Healthy'),(2,44,'Healthy'),(2,45,'Healthy'),(2,46,'Healthy'),(2,47,'Unhealthy'),(2,48,'Unhealthy'),(2,49,'Unhealthy'),(2,50,'Healthy'),(2,51,'Healthy'),(2,52,'Healthy'),(2,53,'Unhealthy'),(2,54,'Healthy'),(2,55,'Healthy'),(2,56,'Unhealthy'),(2,57,'Unhealthy'),(2,58,'Healthy'),(2,59,'Unhealthy'),(2,60,'Healthy'),(2,61,'Unhealthy'),(2,62,'Healthy'),(2,63,'Unhealthy'),(2,64,'Healthy'),(2,65,'Healthy'),(2,66,'Healthy'),(2,67,'Healthy'),(2,68,'Unhealthy'),(2,69,'Healthy'),(2,70,'Healthy'),(2,71,'Unhealthy'),(2,72,'Unhealthy'),(2,73,'Healthy'),(2,74,'Unhealthy'),(2,75,'Healthy'),(2,76,'Healthy'),(2,77,'Healthy'),(2,78,'Unhealthy'),(2,79,'Unhealthy'),(2,80,'Unhealthy'),(2,81,'Healthy'),(2,82,'Healthy'),(2,83,'Healthy'),(2,84,'Healthy'),(2,85,'Unhealthy'),(2,86,'Healthy'),(2,87,'Unhealthy'),(2,88,'Healthy'),(2,89,'Healthy'),(2,90,'Healthy'),(2,91,'Healthy'),(2,92,'Unhealthy'),(2,93,'Unhealthy'),(2,94,'Unhealthy'),(2,95,'Healthy'),(2,96,'Healthy'),(2,97,'Healthy'),(2,98,'Healthy'),(2,99,'Healthy'),(2,100,'Unhealthy'),(3,1,'Smoker'),(3,2,'Smoker'),(3,3,'Smoker'),(3,4,'Non-Smoker'),(3,5,'Smoker'),(3,6,'Smoker'),(3,7,'Non-Smoker'),(3,8,'Non-Smoker'),(3,9,'Non-Smoker'),(3,10,'Smoker'),(3,11,'Smoker'),(3,12,'Smoker'),(3,13,'Non-Smoker'),(3,14,'Non-Smoker'),(3,15,'Non-Smoker'),(3,16,'Non-Smoker'),(3,17,'Non-Smoker'),(3,18,'Smoker'),(3,19,'Non-Smoker'),(3,20,'Non-Smoker'),(3,21,'Smoker'),(3,22,'Non-Smoker'),(3,23,'Non-Smoker'),(3,24,'Non-Smoker'),(3,25,'Smoker'),(3,26,'Non-Smoker'),(3,27,'Smoker'),(3,28,'Non-Smoker'),(3,29,'Smoker'),(3,30,'Non-Smoker'),(3,31,'Non-Smoker'),(3,32,'Non-Smoker'),(3,33,'Smoker'),(3,34,'Smoker'),(3,35,'Smoker'),(3,36,'Smoker'),(3,37,'Non-Smoker'),(3,38,'Smoker'),(3,39,'Smoker'),(3,40,'Non-Smoker'),(3,41,'Non-Smoker'),(3,42,'Smoker'),(3,43,'Smoker'),(3,44,'Smoker'),(3,45,'Smoker'),(3,46,'Non-Smoker'),(3,47,'Smoker'),(3,48,'Smoker'),(3,49,'Non-Smoker'),(3,50,'Non-Smoker'),(3,51,'Non-Smoker'),(3,52,'Smoker'),(3,53,'Non-Smoker'),(3,54,'Smoker'),(3,55,'Smoker'),(3,56,'Smoker'),(3,57,'Smoker'),(3,58,'Smoker'),(3,59,'Non-Smoker'),(3,60,'Smoker'),(3,61,'Smoker'),(3,62,'Smoker'),(3,63,'Smoker'),(3,64,'Smoker'),(3,65,'Non-Smoker'),(3,66,'Non-Smoker'),(3,67,'Smoker'),(3,68,'Smoker'),(3,69,'Smoker'),(3,70,'Non-Smoker'),(3,71,'Smoker'),(3,72,'Non-Smoker'),(3,73,'Smoker'),(3,74,'Non-Smoker'),(3,75,'Smoker'),(3,76,'Smoker'),(3,77,'Smoker'),(3,78,'Smoker'),(3,79,'Smoker'),(3,80,'Non-Smoker'),(3,81,'Non-Smoker'),(3,82,'Smoker'),(3,83,'Smoker'),(3,84,'Smoker'),(3,85,'Non-Smoker'),(3,86,'Non-Smoker'),(3,87,'Non-Smoker'),(3,88,'Smoker'),(3,89,'Smoker'),(3,90,'Non-Smoker'),(3,91,'Non-Smoker'),(3,92,'Smoker'),(3,93,'Smoker'),(3,94,'Smoker'),(3,95,'Non-Smoker'),(3,96,'Smoker'),(3,97,'Smoker'),(3,98,'Non-Smoker'),(3,99,'Smoker'),(3,100,'Smoker'),(4,1,'High'),(4,2,'High'),(4,3,'Low'),(4,4,'Moderate'),(4,5,'Low'),(4,6,'Low'),(4,7,'Low'),(4,8,'Low'),(4,9,'Low'),(4,10,'Moderate'),(4,11,'High'),(4,12,'Moderate'),(4,13,'Moderate'),(4,14,'High'),(4,15,'Moderate'),(4,16,'High'),(4,17,'High'),(4,18,'Low'),(4,19,'Low'),(4,20,'High'),(4,21,'Moderate'),(4,22,'Moderate'),(4,23,'Low'),(4,24,'High'),(4,25,'High'),(4,26,'High'),(4,27,'Low'),(4,28,'High'),(4,29,'Low'),(4,30,'High'),(4,31,'Low'),(4,32,'High'),(4,33,'High'),(4,34,'High'),(4,35,'Low'),(4,36,'Moderate'),(4,37,'Moderate'),(4,38,'High'),(4,39,'Low'),(4,40,'High'),(4,41,'Low'),(4,42,'Moderate'),(4,43,'High'),(4,44,'Low'),(4,45,'Low'),(4,46,'Moderate'),(4,47,'Moderate'),(4,48,'Moderate'),(4,49,'High'),(4,50,'High'),(4,51,'Moderate'),(4,52,'High'),(4,53,'High'),(4,54,'High'),(4,55,'Moderate'),(4,56,'High'),(4,57,'Low'),(4,58,'High'),(4,59,'High'),(4,60,'High'),(4,61,'High'),(4,62,'Low'),(4,63,'High'),(4,64,'Moderate'),(4,65,'Moderate'),(4,66,'Low'),(4,67,'High'),(4,68,'Low'),(4,69,'High'),(4,70,'High'),(4,71,'Low'),(4,72,'Moderate'),(4,73,'Moderate'),(4,74,'High'),(4,75,'Moderate'),(4,76,'Moderate'),(4,77,'Moderate'),(4,78,'Moderate'),(4,79,'High'),(4,80,'High'),(4,81,'Moderate'),(4,82,'High'),(4,83,'High'),(4,84,'Low'),(4,85,'High'),(4,86,'Moderate'),(4,87,'High'),(4,88,'High'),(4,89,'High'),(4,90,'Low'),(4,91,'High'),(4,92,'Moderate'),(4,93,'Moderate'),(4,94,'Moderate'),(4,95,'Moderate'),(4,96,'Moderate'),(4,97,'Moderate'),(4,98,'Moderate'),(4,99,'Low'),(4,100,'Moderate');
/*!40000 ALTER TABLE `target_lifestyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_medical_history`
--

DROP TABLE IF EXISTS `target_medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_medical_history` (
  `medical_history_id` int unsigned NOT NULL,
  `target_id` int unsigned NOT NULL,
  `medical_history_value` varchar(20) NOT NULL,
  PRIMARY KEY (`medical_history_id`,`target_id`),
  KEY `fk_medical_history_one_has_targets_targets1_idx` (`target_id`),
  KEY `fk_medical_history_one_has_targets_medical_history_one1_idx` (`medical_history_id`),
  CONSTRAINT `fk_medical_history_one_has_targets_medical_history_one1` FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`medical_history_id`),
  CONSTRAINT `fk_medical_history_one_has_targets_targets1` FOREIGN KEY (`target_id`) REFERENCES `targets` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_medical_history`
--

LOCK TABLES `target_medical_history` WRITE;
/*!40000 ALTER TABLE `target_medical_history` DISABLE KEYS */;
INSERT INTO `target_medical_history` VALUES (1,1,'No'),(1,2,'No'),(1,3,'No'),(1,4,'Yes'),(1,5,'No'),(1,6,'Yes'),(1,7,'Yes'),(1,8,'No'),(1,9,'Yes'),(1,10,'No'),(1,11,'Yes'),(1,12,'Yes'),(1,13,'Yes'),(1,14,'No'),(1,15,'No'),(1,16,'Yes'),(1,17,'No'),(1,18,'No'),(1,19,'No'),(1,20,'No'),(1,21,'No'),(1,22,'Yes'),(1,23,'No'),(1,24,'Yes'),(1,25,'No'),(1,26,'No'),(1,27,'No'),(1,28,'Yes'),(1,29,'No'),(1,30,'No'),(1,31,'No'),(1,32,'Yes'),(1,33,'Yes'),(1,34,'Yes'),(1,35,'No'),(1,36,'Yes'),(1,37,'Yes'),(1,38,'Yes'),(1,39,'Yes'),(1,40,'No'),(1,41,'No'),(1,42,'Yes'),(1,43,'Yes'),(1,44,'No'),(1,45,'Yes'),(1,46,'Yes'),(1,47,'No'),(1,48,'Yes'),(1,49,'Yes'),(1,50,'No'),(1,51,'No'),(1,52,'No'),(1,53,'No'),(1,54,'Yes'),(1,55,'Yes'),(1,56,'Yes'),(1,57,'Yes'),(1,58,'Yes'),(1,59,'Yes'),(1,60,'Yes'),(1,61,'Yes'),(1,62,'Yes'),(1,63,'Yes'),(1,64,'Yes'),(1,65,'No'),(1,66,'No'),(1,67,'Yes'),(1,68,'No'),(1,69,'Yes'),(1,70,'Yes'),(1,71,'Yes'),(1,72,'No'),(1,73,'Yes'),(1,74,'No'),(1,75,'No'),(1,76,'Yes'),(1,77,'Yes'),(1,78,'Yes'),(1,79,'No'),(1,80,'No'),(1,81,'No'),(1,82,'No'),(1,83,'Yes'),(1,84,'No'),(1,85,'No'),(1,86,'Yes'),(1,87,'No'),(1,88,'No'),(1,89,'Yes'),(1,90,'Yes'),(1,91,'No'),(1,92,'No'),(1,93,'No'),(1,94,'No'),(1,95,'No'),(1,96,'Yes'),(1,97,'Yes'),(1,98,'No'),(1,99,'Yes'),(1,100,'Yes'),(2,1,'No'),(2,2,'Yes'),(2,3,'Yes'),(2,4,'Yes'),(2,5,'No'),(2,6,'Yes'),(2,7,'No'),(2,8,'Yes'),(2,9,'No'),(2,10,'No'),(2,11,'No'),(2,12,'Yes'),(2,13,'Yes'),(2,14,'No'),(2,15,'No'),(2,16,'No'),(2,17,'Yes'),(2,18,'Yes'),(2,19,'No'),(2,20,'Yes'),(2,21,'Yes'),(2,22,'Yes'),(2,23,'No'),(2,24,'Yes'),(2,25,'Yes'),(2,26,'Yes'),(2,27,'Yes'),(2,28,'Yes'),(2,29,'No'),(2,30,'Yes'),(2,31,'Yes'),(2,32,'Yes'),(2,33,'No'),(2,34,'Yes'),(2,35,'Yes'),(2,36,'No'),(2,37,'Yes'),(2,38,'Yes'),(2,39,'No'),(2,40,'Yes'),(2,41,'Yes'),(2,42,'Yes'),(2,43,'Yes'),(2,44,'No'),(2,45,'No'),(2,46,'Yes'),(2,47,'Yes'),(2,48,'No'),(2,49,'No'),(2,50,'No'),(2,51,'No'),(2,52,'No'),(2,53,'Yes'),(2,54,'Yes'),(2,55,'No'),(2,56,'No'),(2,57,'Yes'),(2,58,'Yes'),(2,59,'No'),(2,60,'Yes'),(2,61,'No'),(2,62,'Yes'),(2,63,'No'),(2,64,'No'),(2,65,'No'),(2,66,'No'),(2,67,'No'),(2,68,'Yes'),(2,69,'No'),(2,70,'No'),(2,71,'No'),(2,72,'No'),(2,73,'Yes'),(2,74,'Yes'),(2,75,'Yes'),(2,76,'Yes'),(2,77,'No'),(2,78,'No'),(2,79,'No'),(2,80,'No'),(2,81,'Yes'),(2,82,'Yes'),(2,83,'Yes'),(2,84,'Yes'),(2,85,'Yes'),(2,86,'Yes'),(2,87,'No'),(2,88,'Yes'),(2,89,'No'),(2,90,'Yes'),(2,91,'No'),(2,92,'Yes'),(2,93,'Yes'),(2,94,'No'),(2,95,'No'),(2,96,'Yes'),(2,97,'Yes'),(2,98,'No'),(2,99,'Yes'),(2,100,'No'),(3,1,'No'),(3,2,'No'),(3,3,'Yes'),(3,4,'Yes'),(3,5,'No'),(3,6,'No'),(3,7,'No'),(3,8,'No'),(3,9,'Yes'),(3,10,'No'),(3,11,'Yes'),(3,12,'No'),(3,13,'No'),(3,14,'Yes'),(3,15,'Yes'),(3,16,'Yes'),(3,17,'No'),(3,18,'Yes'),(3,19,'No'),(3,20,'Yes'),(3,21,'Yes'),(3,22,'Yes'),(3,23,'No'),(3,24,'No'),(3,25,'No'),(3,26,'Yes'),(3,27,'No'),(3,28,'No'),(3,29,'Yes'),(3,30,'Yes'),(3,31,'No'),(3,32,'Yes'),(3,33,'No'),(3,34,'Yes'),(3,35,'No'),(3,36,'Yes'),(3,37,'Yes'),(3,38,'No'),(3,39,'No'),(3,40,'Yes'),(3,41,'Yes'),(3,42,'No'),(3,43,'Yes'),(3,44,'No'),(3,45,'No'),(3,46,'Yes'),(3,47,'No'),(3,48,'Yes'),(3,49,'No'),(3,50,'No'),(3,51,'No'),(3,52,'Yes'),(3,53,'No'),(3,54,'No'),(3,55,'No'),(3,56,'Yes'),(3,57,'No'),(3,58,'Yes'),(3,59,'No'),(3,60,'No'),(3,61,'No'),(3,62,'Yes'),(3,63,'Yes'),(3,64,'No'),(3,65,'No'),(3,66,'Yes'),(3,67,'Yes'),(3,68,'No'),(3,69,'Yes'),(3,70,'Yes'),(3,71,'No'),(3,72,'Yes'),(3,73,'Yes'),(3,74,'Yes'),(3,75,'No'),(3,76,'Yes'),(3,77,'No'),(3,78,'No'),(3,79,'No'),(3,80,'Yes'),(3,81,'No'),(3,82,'Yes'),(3,83,'No'),(3,84,'Yes'),(3,85,'No'),(3,86,'Yes'),(3,87,'Yes'),(3,88,'Yes'),(3,89,'Yes'),(3,90,'Yes'),(3,91,'Yes'),(3,92,'No'),(3,93,'Yes'),(3,94,'Yes'),(3,95,'Yes'),(3,96,'Yes'),(3,97,'Yes'),(3,98,'Yes'),(3,99,'Yes'),(3,100,'Yes'),(4,1,'No'),(4,2,'Yes'),(4,3,'No'),(4,4,'No'),(4,5,'Yes'),(4,6,'No'),(4,7,'No'),(4,8,'Yes'),(4,9,'No'),(4,10,'No'),(4,11,'Yes'),(4,12,'Yes'),(4,13,'No'),(4,14,'No'),(4,15,'No'),(4,16,'No'),(4,17,'No'),(4,18,'No'),(4,19,'No'),(4,20,'No'),(4,21,'No'),(4,22,'Yes'),(4,23,'Yes'),(4,24,'No'),(4,25,'No'),(4,26,'No'),(4,27,'Yes'),(4,28,'Yes'),(4,29,'No'),(4,30,'No'),(4,31,'No'),(4,32,'No'),(4,33,'Yes'),(4,34,'No'),(4,35,'No'),(4,36,'No'),(4,37,'Yes'),(4,38,'Yes'),(4,39,'Yes'),(4,40,'Yes'),(4,41,'Yes'),(4,42,'No'),(4,43,'Yes'),(4,44,'Yes'),(4,45,'No'),(4,46,'Yes'),(4,47,'Yes'),(4,48,'Yes'),(4,49,'Yes'),(4,50,'Yes'),(4,51,'No'),(4,52,'No'),(4,53,'No'),(4,54,'No'),(4,55,'Yes'),(4,56,'Yes'),(4,57,'No'),(4,58,'No'),(4,59,'No'),(4,60,'Yes'),(4,61,'No'),(4,62,'No'),(4,63,'No'),(4,64,'No'),(4,65,'Yes'),(4,66,'Yes'),(4,67,'Yes'),(4,68,'Yes'),(4,69,'Yes'),(4,70,'No'),(4,71,'No'),(4,72,'No'),(4,73,'No'),(4,74,'No'),(4,75,'No'),(4,76,'No'),(4,77,'Yes'),(4,78,'Yes'),(4,79,'Yes'),(4,80,'Yes'),(4,81,'Yes'),(4,82,'Yes'),(4,83,'Yes'),(4,84,'No'),(4,85,'Yes'),(4,86,'No'),(4,87,'Yes'),(4,88,'Yes'),(4,89,'No'),(4,90,'Yes'),(4,91,'No'),(4,92,'No'),(4,93,'Yes'),(4,94,'No'),(4,95,'Yes'),(4,96,'No'),(4,97,'No'),(4,98,'Yes'),(4,99,'No'),(4,100,'No'),(5,1,'40'),(5,2,'27'),(5,3,'8'),(5,4,'29'),(5,5,'8'),(5,6,'22'),(5,7,'38'),(5,8,'19'),(5,9,'10'),(5,10,'42'),(5,11,'24'),(5,12,'20'),(5,13,'15'),(5,14,'44'),(5,15,'20'),(5,16,'18'),(5,17,'6'),(5,18,'28'),(5,19,'44'),(5,20,'15'),(5,21,'11'),(5,22,'13'),(5,23,'24'),(5,24,'28'),(5,25,'16'),(5,26,'16'),(5,27,'5'),(5,28,'19'),(5,29,'27'),(5,30,'22'),(5,31,'17'),(5,32,'26'),(5,33,'20'),(5,34,'34'),(5,35,'15'),(5,36,'12'),(5,37,'11'),(5,38,'20'),(5,39,'22'),(5,40,'15'),(5,41,'23'),(5,42,'22'),(5,43,'22'),(5,44,'26'),(5,45,'11'),(5,46,'30'),(5,47,'23'),(5,48,'42'),(5,49,'10'),(5,50,'26'),(5,51,'16'),(5,52,'13'),(5,53,'11'),(5,54,'18'),(5,55,'20'),(5,56,'15'),(5,57,'13'),(5,58,'27'),(5,59,'10'),(5,60,'11'),(5,61,'16'),(5,62,'20'),(5,63,'15'),(5,64,'21'),(5,65,'17'),(5,66,'33'),(5,67,'27'),(5,68,'27'),(5,69,'11'),(5,70,'42'),(5,71,'7'),(5,72,'29'),(5,73,'14'),(5,74,'13'),(5,75,'12'),(5,76,'15'),(5,77,'7'),(5,78,'12'),(5,79,'30'),(5,80,'41'),(5,81,'26'),(5,82,'19'),(5,83,'24'),(5,84,'6'),(5,85,'24'),(5,86,'28'),(5,87,'47'),(5,88,'18'),(5,89,'16'),(5,90,'12'),(5,91,'43'),(5,92,'27'),(5,93,'10'),(5,94,'15'),(5,95,'25'),(5,96,'21'),(5,97,'12'),(5,98,'15'),(5,99,'26'),(5,100,'13'),(6,1,'124'),(6,2,'121'),(6,3,'100'),(6,4,'115'),(6,5,'91'),(6,6,'128'),(6,7,'128'),(6,8,'102'),(6,9,'123'),(6,10,'121'),(6,11,'125'),(6,12,'90'),(6,13,'148'),(6,14,'122'),(6,15,'122'),(6,16,'103'),(6,17,'95'),(6,18,'102'),(6,19,'125'),(6,20,'112'),(6,21,'135'),(6,22,'102'),(6,23,'100'),(6,24,'121'),(6,25,'106'),(6,26,'101'),(6,27,'102'),(6,28,'111'),(6,29,'92'),(6,30,'115'),(6,31,'125'),(6,32,'109'),(6,33,'137'),(6,34,'146'),(6,35,'114'),(6,36,'92'),(6,37,'104'),(6,38,'102'),(6,39,'128'),(6,40,'103'),(6,41,'104'),(6,42,'109'),(6,43,'123'),(6,44,'121'),(6,45,'121'),(6,46,'93'),(6,47,'109'),(6,48,'143'),(6,49,'91'),(6,50,'114'),(6,51,'118'),(6,52,'125'),(6,53,'94'),(6,54,'106'),(6,55,'123'),(6,56,'108'),(6,57,'109'),(6,58,'116'),(6,59,'96'),(6,60,'107'),(6,61,'109'),(6,62,'129'),(6,63,'112'),(6,64,'110'),(6,65,'95'),(6,66,'101'),(6,67,'112'),(6,68,'90'),(6,69,'126'),(6,70,'130'),(6,71,'113'),(6,72,'107'),(6,73,'106'),(6,74,'119'),(6,75,'117'),(6,76,'113'),(6,77,'94'),(6,78,'116'),(6,79,'122'),(6,80,'128'),(6,81,'125'),(6,82,'99'),(6,83,'108'),(6,84,'90'),(6,85,'114'),(6,86,'104'),(6,87,'137'),(6,88,'97'),(6,89,'103'),(6,90,'100'),(6,91,'144'),(6,92,'110'),(6,93,'113'),(6,94,'113'),(6,95,'95'),(6,96,'118'),(6,97,'125'),(6,98,'125'),(6,99,'100'),(6,100,'102'),(7,1,'50'),(7,2,'36'),(7,3,'29'),(7,4,'43'),(7,5,'33'),(7,6,'32'),(7,7,'41'),(7,8,'30'),(7,9,'30'),(7,10,'43'),(7,11,'28'),(7,12,'35'),(7,13,'47'),(7,14,'46'),(7,15,'46'),(7,16,'34'),(7,17,'33'),(7,18,'40'),(7,19,'36'),(7,20,'34'),(7,21,'49'),(7,22,'33'),(7,23,'38'),(7,24,'36'),(7,25,'29'),(7,26,'41'),(7,27,'30'),(7,28,'47'),(7,29,'29'),(7,30,'36'),(7,31,'38'),(7,32,'40'),(7,33,'48'),(7,34,'48'),(7,35,'31'),(7,36,'33'),(7,37,'30'),(7,38,'35'),(7,39,'31'),(7,40,'30'),(7,41,'33'),(7,42,'39'),(7,43,'31'),(7,44,'37'),(7,45,'40'),(7,46,'32'),(7,47,'29'),(7,48,'52'),(7,49,'32'),(7,50,'38'),(7,51,'32'),(7,52,'39'),(7,53,'31'),(7,54,'28'),(7,55,'36'),(7,56,'29'),(7,57,'30'),(7,58,'30'),(7,59,'34'),(7,60,'35'),(7,61,'35'),(7,62,'34'),(7,63,'33'),(7,64,'34'),(7,65,'30'),(7,66,'33'),(7,67,'33'),(7,68,'35'),(7,69,'34'),(7,70,'52'),(7,71,'28'),(7,72,'29'),(7,73,'31'),(7,74,'28'),(7,75,'32'),(7,76,'32'),(7,77,'32'),(7,78,'34'),(7,79,'51'),(7,80,'51'),(7,81,'42'),(7,82,'32'),(7,83,'33'),(7,84,'32'),(7,85,'31'),(7,86,'30'),(7,87,'47'),(7,88,'30'),(7,89,'31'),(7,90,'29'),(7,91,'46'),(7,92,'32'),(7,93,'33'),(7,94,'28'),(7,95,'31'),(7,96,'33'),(7,97,'41'),(7,98,'33'),(7,99,'39'),(7,100,'32'),(8,1,'201'),(8,2,'185'),(8,3,'151'),(8,4,'237'),(8,5,'195'),(8,6,'191'),(8,7,'260'),(8,8,'165'),(8,9,'179'),(8,10,'289'),(8,11,'157'),(8,12,'170'),(8,13,'277'),(8,14,'239'),(8,15,'252'),(8,16,'216'),(8,17,'159'),(8,18,'201'),(8,19,'221'),(8,20,'232'),(8,21,'292'),(8,22,'198'),(8,23,'234'),(8,24,'232'),(8,25,'153'),(8,26,'197'),(8,27,'176'),(8,28,'264'),(8,29,'160'),(8,30,'201'),(8,31,'223'),(8,32,'201'),(8,33,'222'),(8,34,'294'),(8,35,'178'),(8,36,'180'),(8,37,'162'),(8,38,'152'),(8,39,'198'),(8,40,'168'),(8,41,'152'),(8,42,'218'),(8,43,'210'),(8,44,'197'),(8,45,'219'),(8,46,'189'),(8,47,'181'),(8,48,'268'),(8,49,'192'),(8,50,'231'),(8,51,'206'),(8,52,'180'),(8,53,'192'),(8,54,'193'),(8,55,'209'),(8,56,'180'),(8,57,'150'),(8,58,'164'),(8,59,'179'),(8,60,'183'),(8,61,'158'),(8,62,'223'),(8,63,'191'),(8,64,'203'),(8,65,'157'),(8,66,'174'),(8,67,'156'),(8,68,'176'),(8,69,'225'),(8,70,'297'),(8,71,'198'),(8,72,'188'),(8,73,'215'),(8,74,'158'),(8,75,'237'),(8,76,'164'),(8,77,'160'),(8,78,'187'),(8,79,'209'),(8,80,'242'),(8,81,'222'),(8,82,'197'),(8,83,'163'),(8,84,'190'),(8,85,'150'),(8,86,'153'),(8,87,'269'),(8,88,'157'),(8,89,'181'),(8,90,'182'),(8,91,'225'),(8,92,'175'),(8,93,'199'),(8,94,'164'),(8,95,'194'),(8,96,'193'),(8,97,'219'),(8,98,'180'),(8,99,'180'),(8,100,'173'),(9,1,'168'),(9,2,'105'),(9,3,'121'),(9,4,'186'),(9,5,'114'),(9,6,'113'),(9,7,'200'),(9,8,'126'),(9,9,'93'),(9,10,'167'),(9,11,'170'),(9,12,'146'),(9,13,'156'),(9,14,'137'),(9,15,'198'),(9,16,'129'),(9,17,'132'),(9,18,'132'),(9,19,'181'),(9,20,'106'),(9,21,'166'),(9,22,'103'),(9,23,'133'),(9,24,'115'),(9,25,'106'),(9,26,'127'),(9,27,'111'),(9,28,'150'),(9,29,'129'),(9,30,'112'),(9,31,'120'),(9,32,'114'),(9,33,'221'),(9,34,'240'),(9,35,'105'),(9,36,'129'),(9,37,'113'),(9,38,'154'),(9,39,'97'),(9,40,'148'),(9,41,'93'),(9,42,'163'),(9,43,'160'),(9,44,'168'),(9,45,'115'),(9,46,'130'),(9,47,'96'),(9,48,'244'),(9,49,'100'),(9,50,'102'),(9,51,'159'),(9,52,'118'),(9,53,'118'),(9,54,'115'),(9,55,'115'),(9,56,'128'),(9,57,'105'),(9,58,'104'),(9,59,'84'),(9,60,'121'),(9,61,'132'),(9,62,'124'),(9,63,'104'),(9,64,'92'),(9,65,'113'),(9,66,'121'),(9,67,'125'),(9,68,'120'),(9,69,'94'),(9,70,'203'),(9,71,'107'),(9,72,'105'),(9,73,'135'),(9,74,'140'),(9,75,'113'),(9,76,'127'),(9,77,'122'),(9,78,'114'),(9,79,'184'),(9,80,'223'),(9,81,'174'),(9,82,'122'),(9,83,'112'),(9,84,'127'),(9,85,'106'),(9,86,'129'),(9,87,'189'),(9,88,'106'),(9,89,'100'),(9,90,'124'),(9,91,'131'),(9,92,'83'),(9,93,'96'),(9,94,'155'),(9,95,'109'),(9,96,'118'),(9,97,'95'),(9,98,'113'),(9,99,'116'),(9,100,'101'),(10,1,'Normal'),(10,2,'Abnormal'),(10,3,'Abnormal'),(10,4,'Normal'),(10,5,'Abnormal'),(10,6,'Normal'),(10,7,'Abnormal'),(10,8,'Abnormal'),(10,9,'Normal'),(10,10,'Normal'),(10,11,'Normal'),(10,12,'Normal'),(10,13,'Normal'),(10,14,'Normal'),(10,15,'Abnormal'),(10,16,'Abnormal'),(10,17,'Abnormal'),(10,18,'Abnormal'),(10,19,'Normal'),(10,20,'Abnormal'),(10,21,'Normal'),(10,22,'Normal'),(10,23,'Normal'),(10,24,'Normal'),(10,25,'Abnormal'),(10,26,'Normal'),(10,27,'Abnormal'),(10,28,'Normal'),(10,29,'Normal'),(10,30,'Normal'),(10,31,'Abnormal'),(10,32,'Abnormal'),(10,33,'Abnormal'),(10,34,'Abnormal'),(10,35,'Abnormal'),(10,36,'Normal'),(10,37,'Normal'),(10,38,'Abnormal'),(10,39,'Abnormal'),(10,40,'Abnormal'),(10,41,'Abnormal'),(10,42,'Normal'),(10,43,'Abnormal'),(10,44,'Normal'),(10,45,'Abnormal'),(10,46,'Normal'),(10,47,'Abnormal'),(10,48,'Normal'),(10,49,'Abnormal'),(10,50,'Abnormal'),(10,51,'Normal'),(10,52,'Abnormal'),(10,53,'Normal'),(10,54,'Abnormal'),(10,55,'Normal'),(10,56,'Normal'),(10,57,'Normal'),(10,58,'Abnormal'),(10,59,'Normal'),(10,60,'Abnormal'),(10,61,'Normal'),(10,62,'Normal'),(10,63,'Abnormal'),(10,64,'Normal'),(10,65,'Abnormal'),(10,66,'Abnormal'),(10,67,'Abnormal'),(10,68,'Normal'),(10,69,'Abnormal'),(10,70,'Abnormal'),(10,71,'Abnormal'),(10,72,'Abnormal'),(10,73,'Normal'),(10,74,'Abnormal'),(10,75,'Abnormal'),(10,76,'Normal'),(10,77,'Normal'),(10,78,'Abnormal'),(10,79,'Normal'),(10,80,'Normal'),(10,81,'Abnormal'),(10,82,'Normal'),(10,83,'Normal'),(10,84,'Normal'),(10,85,'Normal'),(10,86,'Normal'),(10,87,'Normal'),(10,88,'Abnormal'),(10,89,'Normal'),(10,90,'Normal'),(10,91,'Normal'),(10,92,'Abnormal'),(10,93,'Normal'),(10,94,'Normal'),(10,95,'Normal'),(10,96,'Abnormal'),(10,97,'Abnormal'),(10,98,'Normal'),(10,99,'Abnormal'),(10,100,'Abnormal'),(11,1,'Negative'),(11,2,'Positive'),(11,3,'Positive'),(11,4,'Negative'),(11,5,'Negative'),(11,6,'Negative'),(11,7,'Negative'),(11,8,'Positive'),(11,9,'Negative'),(11,10,'Negative'),(11,11,'Negative'),(11,12,'Negative'),(11,13,'Negative'),(11,14,'Negative'),(11,15,'Positive'),(11,16,'Positive'),(11,17,'Negative'),(11,18,'Positive'),(11,19,'Positive'),(11,20,'Negative'),(11,21,'Negative'),(11,22,'Positive'),(11,23,'Positive'),(11,24,'Positive'),(11,25,'Negative'),(11,26,'Positive'),(11,27,'Negative'),(11,28,'Positive'),(11,29,'Negative'),(11,30,'Positive'),(11,31,'Positive'),(11,32,'Negative'),(11,33,'Negative'),(11,34,'Negative'),(11,35,'Positive'),(11,36,'Negative'),(11,37,'Positive'),(11,38,'Negative'),(11,39,'Positive'),(11,40,'Positive'),(11,41,'Negative'),(11,42,'Negative'),(11,43,'Positive'),(11,44,'Positive'),(11,45,'Positive'),(11,46,'Positive'),(11,47,'Negative'),(11,48,'Negative'),(11,49,'Positive'),(11,50,'Negative'),(11,51,'Positive'),(11,52,'Positive'),(11,53,'Positive'),(11,54,'Positive'),(11,55,'Positive'),(11,56,'Negative'),(11,57,'Negative'),(11,58,'Negative'),(11,59,'Negative'),(11,60,'Positive'),(11,61,'Positive'),(11,62,'Negative'),(11,63,'Negative'),(11,64,'Positive'),(11,65,'Positive'),(11,66,'Positive'),(11,67,'Negative'),(11,68,'Positive'),(11,69,'Negative'),(11,70,'Positive'),(11,71,'Negative'),(11,72,'Positive'),(11,73,'Positive'),(11,74,'Positive'),(11,75,'Negative'),(11,76,'Positive'),(11,77,'Positive'),(11,78,'Positive'),(11,79,'Negative'),(11,80,'Negative'),(11,81,'Positive'),(11,82,'Positive'),(11,83,'Positive'),(11,84,'Positive'),(11,85,'Positive'),(11,86,'Positive'),(11,87,'Negative'),(11,88,'Positive'),(11,89,'Negative'),(11,90,'Positive'),(11,91,'Positive'),(11,92,'Negative'),(11,93,'Positive'),(11,94,'Positive'),(11,95,'Negative'),(11,96,'Negative'),(11,97,'Negative'),(11,98,'Positive'),(11,99,'Positive'),(11,100,'Negative');
/*!40000 ALTER TABLE `target_medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_organ_functions`
--

DROP TABLE IF EXISTS `target_organ_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_organ_functions` (
  `organ_functions_id` int unsigned NOT NULL,
  `target_id` int unsigned NOT NULL,
  `organ_functions_value` varchar(20) NOT NULL,
  PRIMARY KEY (`organ_functions_id`,`target_id`),
  KEY `fk_organ_functions_has_targets_targets1_idx` (`target_id`),
  KEY `fk_organ_functions_has_targets_organ_functions1_idx` (`organ_functions_id`),
  CONSTRAINT `fk_organ_functions_has_targets_organ_functions1` FOREIGN KEY (`organ_functions_id`) REFERENCES `organ_functions` (`organ_functions_id`),
  CONSTRAINT `fk_organ_functions_has_targets_targets1` FOREIGN KEY (`target_id`) REFERENCES `targets` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_organ_functions`
--

LOCK TABLES `target_organ_functions` WRITE;
/*!40000 ALTER TABLE `target_organ_functions` DISABLE KEYS */;
INSERT INTO `target_organ_functions` VALUES (1,1,'Ketones Present'),(1,2,'Ketones Present'),(1,3,'Ketones Present'),(1,4,'Ketones Present'),(1,5,'Ketones Present'),(1,6,'Normal'),(1,7,'Normal'),(1,8,'Ketones Present'),(1,9,'Ketones Present'),(1,10,'Protein Present'),(1,11,'Ketones Present'),(1,12,'Normal'),(1,13,'Protein Present'),(1,14,'Protein Present'),(1,15,'Glucose Present'),(1,16,'Normal'),(1,17,'Ketones Present'),(1,18,'Ketones Present'),(1,19,'Protein Present'),(1,20,'Normal'),(1,21,'Protein Present'),(1,22,'Ketones Present'),(1,23,'Normal'),(1,24,'Ketones Present'),(1,25,'Ketones Present'),(1,26,'Ketones Present'),(1,27,'Normal'),(1,28,'Glucose Present'),(1,29,'Glucose Present'),(1,30,'Normal'),(1,31,'Ketones Present'),(1,32,'Ketones Present'),(1,33,'Glucose Present'),(1,34,'Glucose Present'),(1,35,'Ketones Present'),(1,36,'Protein Present'),(1,37,'Glucose Present'),(1,38,'Glucose Present'),(1,39,'Normal'),(1,40,'Protein Present'),(1,41,'Ketones Present'),(1,42,'Ketones Present'),(1,43,'Protein Present'),(1,44,'Glucose Present'),(1,45,'Glucose Present'),(1,46,'Protein Present'),(1,47,'Normal'),(1,48,'Protein Present'),(1,49,'Ketones Present'),(1,50,'Normal'),(1,51,'Protein Present'),(1,52,'Protein Present'),(1,53,'Protein Present'),(1,54,'Ketones Present'),(1,55,'Normal'),(1,56,'Protein Present'),(1,57,'Protein Present'),(1,58,'Ketones Present'),(1,59,'Protein Present'),(1,60,'Glucose Present'),(1,61,'Protein Present'),(1,62,'Normal'),(1,63,'Ketones Present'),(1,64,'Normal'),(1,65,'Normal'),(1,66,'Glucose Present'),(1,67,'Normal'),(1,68,'Protein Present'),(1,69,'Ketones Present'),(1,70,'Ketones Present'),(1,71,'Glucose Present'),(1,72,'Glucose Present'),(1,73,'Protein Present'),(1,74,'Protein Present'),(1,75,'Protein Present'),(1,76,'Glucose Present'),(1,77,'Normal'),(1,78,'Protein Present'),(1,79,'Normal'),(1,80,'Ketones Present'),(1,81,'Normal'),(1,82,'Normal'),(1,83,'Ketones Present'),(1,84,'Ketones Present'),(1,85,'Glucose Present'),(1,86,'Glucose Present'),(1,87,'Normal'),(1,88,'Normal'),(1,89,'Protein Present'),(1,90,'Protein Present'),(1,91,'Glucose Present'),(1,92,'Protein Present'),(1,93,'Normal'),(1,94,'Ketones Present'),(1,95,'Protein Present'),(1,96,'Glucose Present'),(1,97,'Normal'),(1,98,'Glucose Present'),(1,99,'Normal'),(1,100,'Normal'),(2,1,'Normal'),(2,2,'Abnormal'),(2,3,'Abnormal'),(2,4,'Abnormal'),(2,5,'Abnormal'),(2,6,'Abnormal'),(2,7,'Normal'),(2,8,'Abnormal'),(2,9,'Normal'),(2,10,'Abnormal'),(2,11,'Abnormal'),(2,12,'Abnormal'),(2,13,'Normal'),(2,14,'Normal'),(2,15,'Abnormal'),(2,16,'Abnormal'),(2,17,'Abnormal'),(2,18,'Abnormal'),(2,19,'Normal'),(2,20,'Normal'),(2,21,'Normal'),(2,22,'Normal'),(2,23,'Normal'),(2,24,'Normal'),(2,25,'Normal'),(2,26,'Abnormal'),(2,27,'Abnormal'),(2,28,'Normal'),(2,29,'Normal'),(2,30,'Normal'),(2,31,'Normal'),(2,32,'Abnormal'),(2,33,'Normal'),(2,34,'Abnormal'),(2,35,'Abnormal'),(2,36,'Normal'),(2,37,'Normal'),(2,38,'Abnormal'),(2,39,'Normal'),(2,40,'Abnormal'),(2,41,'Normal'),(2,42,'Abnormal'),(2,43,'Normal'),(2,44,'Normal'),(2,45,'Abnormal'),(2,46,'Abnormal'),(2,47,'Abnormal'),(2,48,'Normal'),(2,49,'Abnormal'),(2,50,'Abnormal'),(2,51,'Normal'),(2,52,'Abnormal'),(2,53,'Normal'),(2,54,'Abnormal'),(2,55,'Abnormal'),(2,56,'Normal'),(2,57,'Abnormal'),(2,58,'Normal'),(2,59,'Normal'),(2,60,'Normal'),(2,61,'Abnormal'),(2,62,'Normal'),(2,63,'Abnormal'),(2,64,'Normal'),(2,65,'Abnormal'),(2,66,'Normal'),(2,67,'Abnormal'),(2,68,'Abnormal'),(2,69,'Abnormal'),(2,70,'Abnormal'),(2,71,'Abnormal'),(2,72,'Normal'),(2,73,'Normal'),(2,74,'Normal'),(2,75,'Abnormal'),(2,76,'Abnormal'),(2,77,'Abnormal'),(2,78,'Normal'),(2,79,'Abnormal'),(2,80,'Normal'),(2,81,'Normal'),(2,82,'Abnormal'),(2,83,'Abnormal'),(2,84,'Normal'),(2,85,'Normal'),(2,86,'Normal'),(2,87,'Normal'),(2,88,'Abnormal'),(2,89,'Normal'),(2,90,'Abnormal'),(2,91,'Abnormal'),(2,92,'Abnormal'),(2,93,'Normal'),(2,94,'Normal'),(2,95,'Abnormal'),(2,96,'Normal'),(2,97,'Normal'),(2,98,'Normal'),(2,99,'Abnormal'),(2,100,'Normal'),(3,1,'56'),(3,2,'55'),(3,3,'60'),(3,4,'96'),(3,5,'60'),(3,6,'76'),(3,7,'53'),(3,8,'44'),(3,9,'51'),(3,10,'68'),(3,11,'42'),(3,12,'43'),(3,13,'49'),(3,14,'59'),(3,15,'49'),(3,16,'59'),(3,17,'68'),(3,18,'56'),(3,19,'83'),(3,20,'63'),(3,21,'71'),(3,22,'63'),(3,23,'49'),(3,24,'49'),(3,25,'44'),(3,26,'38'),(3,27,'43'),(3,28,'88'),(3,29,'75'),(3,30,'40'),(3,31,'40'),(3,32,'67'),(3,33,'42'),(3,34,'34'),(3,35,'55'),(3,36,'49'),(3,37,'51'),(3,38,'55'),(3,39,'43'),(3,40,'50'),(3,41,'55'),(3,42,'38'),(3,43,'65'),(3,44,'32'),(3,45,'44'),(3,46,'59'),(3,47,'37'),(3,48,'67'),(3,49,'44'),(3,50,'59'),(3,51,'34'),(3,52,'79'),(3,53,'46'),(3,54,'47'),(3,55,'60'),(3,56,'45'),(3,57,'41'),(3,58,'35'),(3,59,'35'),(3,60,'62'),(3,61,'34'),(3,62,'70'),(3,63,'62'),(3,64,'68'),(3,65,'67'),(3,66,'75'),(3,67,'55'),(3,68,'65'),(3,69,'71'),(3,70,'50'),(3,71,'30'),(3,72,'76'),(3,73,'53'),(3,74,'61'),(3,75,'41'),(3,76,'37'),(3,77,'43'),(3,78,'57'),(3,79,'38'),(3,80,'35'),(3,81,'30'),(3,82,'60'),(3,83,'35'),(3,84,'53'),(3,85,'54'),(3,86,'43'),(3,87,'96'),(3,88,'40'),(3,89,'53'),(3,90,'65'),(3,91,'38'),(3,92,'45'),(3,93,'61'),(3,94,'70'),(3,95,'64'),(3,96,'56'),(3,97,'45'),(3,98,'43'),(3,99,'59'),(3,100,'57'),(4,1,'36'),(4,2,'56'),(4,3,'49'),(4,4,'62'),(4,5,'67'),(4,6,'63'),(4,7,'75'),(4,8,'41'),(4,9,'76'),(4,10,'42'),(4,11,'49'),(4,12,'30'),(4,13,'52'),(4,14,'66'),(4,15,'65'),(4,16,'59'),(4,17,'46'),(4,18,'78'),(4,19,'49'),(4,20,'78'),(4,21,'56'),(4,22,'30'),(4,23,'71'),(4,24,'72'),(4,25,'31'),(4,26,'34'),(4,27,'55'),(4,28,'55'),(4,29,'51'),(4,30,'43'),(4,31,'79'),(4,32,'60'),(4,33,'49'),(4,34,'78'),(4,35,'46'),(4,36,'38'),(4,37,'48'),(4,38,'30'),(4,39,'74'),(4,40,'32'),(4,41,'60'),(4,42,'50'),(4,43,'60'),(4,44,'46'),(4,45,'77'),(4,46,'45'),(4,47,'61'),(4,48,'27'),(4,49,'65'),(4,50,'77'),(4,51,'45'),(4,52,'74'),(4,53,'34'),(4,54,'64'),(4,55,'46'),(4,56,'73'),(4,57,'66'),(4,58,'70'),(4,59,'59'),(4,60,'64'),(4,61,'75'),(4,62,'77'),(4,63,'53'),(4,64,'30'),(4,65,'56'),(4,66,'31'),(4,67,'54'),(4,68,'72'),(4,69,'44'),(4,70,'52'),(4,71,'34'),(4,72,'38'),(4,73,'55'),(4,74,'52'),(4,75,'42'),(4,76,'31'),(4,77,'31'),(4,78,'37'),(4,79,'22'),(4,80,'74'),(4,81,'41'),(4,82,'67'),(4,83,'46'),(4,84,'46'),(4,85,'71'),(4,86,'32'),(4,87,'22'),(4,88,'43'),(4,89,'39'),(4,90,'77'),(4,91,'27'),(4,92,'54'),(4,93,'67'),(4,94,'49'),(4,95,'68'),(4,96,'39'),(4,97,'47'),(4,98,'61'),(4,99,'49'),(4,100,'68'),(5,1,'76'),(5,2,'80'),(5,3,'89'),(5,4,'64'),(5,5,'75'),(5,6,'73'),(5,7,'60'),(5,8,'71'),(5,9,'77'),(5,10,'72'),(5,11,'86'),(5,12,'70'),(5,13,'69'),(5,14,'66'),(5,15,'71'),(5,16,'74'),(5,17,'84'),(5,18,'80'),(5,19,'73'),(5,20,'82'),(5,21,'63'),(5,22,'71'),(5,23,'76'),(5,24,'75'),(5,25,'78'),(5,26,'70'),(5,27,'86'),(5,28,'79'),(5,29,'89'),(5,30,'79'),(5,31,'81'),(5,32,'83'),(5,33,'62'),(5,34,'63'),(5,35,'83'),(5,36,'73'),(5,37,'87'),(5,38,'74'),(5,39,'72'),(5,40,'82'),(5,41,'74'),(5,42,'61'),(5,43,'66'),(5,44,'77'),(5,45,'81'),(5,46,'59'),(5,47,'86'),(5,48,'65'),(5,49,'70'),(5,50,'81'),(5,51,'85'),(5,52,'76'),(5,53,'81'),(5,54,'70'),(5,55,'89'),(5,56,'77'),(5,57,'83'),(5,58,'87'),(5,59,'87'),(5,60,'76'),(5,61,'78'),(5,62,'88'),(5,63,'89'),(5,64,'88'),(5,65,'55'),(5,66,'54'),(5,67,'82'),(5,68,'88'),(5,69,'70'),(5,70,'79'),(5,71,'72'),(5,72,'69'),(5,73,'86'),(5,74,'78'),(5,75,'83'),(5,76,'85'),(5,77,'84'),(5,78,'70'),(5,79,'72'),(5,80,'64'),(5,81,'76'),(5,82,'51'),(5,83,'70'),(5,84,'80'),(5,85,'79'),(5,86,'70'),(5,87,'70'),(5,88,'73'),(5,89,'81'),(5,90,'81'),(5,91,'62'),(5,92,'73'),(5,93,'87'),(5,94,'84'),(5,95,'86'),(5,96,'84'),(5,97,'75'),(5,98,'72'),(5,99,'85'),(5,100,'84');
/*!40000 ALTER TABLE `target_organ_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targets` (
  `target_id` int unsigned NOT NULL AUTO_INCREMENT,
  `diagnosis_id` int unsigned NOT NULL,
  `age` int NOT NULL,
  `early_symptoms` varchar(45) NOT NULL,
  PRIMARY KEY (`target_id`),
  KEY `fk_targets_Diagnosis1_idx` (`diagnosis_id`),
  CONSTRAINT `fk_targets_Diagnosis1` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`diagnosis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (1,4,44,'No'),(2,3,36,'Yes'),(3,1,7,'No'),(4,2,30,'No'),(5,1,29,'No'),(6,3,59,'No'),(7,4,53,'No'),(8,1,16,'No'),(9,6,35,'Yes'),(10,4,44,'No'),(11,7,29,'No'),(12,7,34,'No'),(13,2,51,'Yes'),(14,4,51,'Yes'),(15,2,56,'Yes'),(16,6,37,'No'),(17,1,22,'No'),(18,6,34,'Yes'),(19,2,70,'No'),(20,6,33,'Yes'),(21,2,62,'Yes'),(22,1,28,'Yes'),(23,6,30,'No'),(24,3,35,'Yes'),(25,1,12,'No'),(26,6,38,'No'),(27,1,19,'Yes'),(28,2,67,'No'),(29,7,34,'No'),(30,3,39,'Yes'),(31,3,46,'No'),(32,6,39,'Yes'),(33,4,33,'Yes'),(34,4,51,'No'),(35,6,32,'Yes'),(36,1,28,'Yes'),(37,1,5,'Yes'),(38,7,22,'Yes'),(39,6,28,'No'),(40,1,28,'No'),(41,5,26,'No'),(42,7,21,'Yes'),(43,7,28,'No'),(44,7,18,'Yes'),(45,6,31,'No'),(46,7,18,'Yes'),(47,5,18,'Yes'),(48,4,60,'No'),(49,1,7,'Yes'),(50,3,36,'Yes'),(51,7,19,'No'),(52,3,35,'Yes'),(53,5,23,'Yes'),(54,5,18,'Yes'),(55,3,33,'Yes'),(56,1,13,'Yes'),(57,1,19,'Yes'),(58,6,36,'No'),(59,5,18,'Yes'),(60,6,26,'Yes'),(61,5,23,'No'),(62,3,42,'No'),(63,5,22,'No'),(64,6,22,'Yes'),(65,7,17,'Yes'),(66,7,18,'Yes'),(67,7,24,'Yes'),(68,5,28,'Yes'),(69,6,36,'No'),(70,4,40,'No'),(71,1,25,'No'),(72,7,10,'No'),(73,6,36,'Yes'),(74,1,13,'No'),(75,3,49,'Yes'),(76,1,24,'Yes'),(77,1,26,'No'),(78,5,21,'No'),(79,4,53,'No'),(80,4,33,'Yes'),(81,4,42,'Yes'),(82,7,14,'Yes'),(83,6,21,'No'),(84,1,9,'No'),(85,5,28,'No'),(86,5,14,'Yes'),(87,2,42,'No'),(88,1,6,'No'),(89,1,7,'Yes'),(90,1,18,'Yes'),(91,4,36,'No'),(92,5,17,'Yes'),(93,6,25,'Yes'),(94,7,27,'Yes'),(95,5,24,'No'),(96,6,35,'Yes'),(97,6,28,'No'),(98,3,44,'No'),(99,6,33,'No'),(100,6,36,'Yes');
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

-- Views

-- View 1: Targets with diagnosis and genetic markers
CREATE VIEW view_targets_genetic_markers AS
SELECT t.target_id, t.age, t.early_symptoms, d.diagnosis_name, 
       g.genetic_category, tg.genetic_value
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
JOIN target_genetics tg ON t.target_id = tg.target_id
JOIN genetics g ON tg.genetics_id = g.genetics_id
WHERE tg.genetics_id = 1;

-- View 2: Count of targets per diagnosis with average age
CREATE VIEW view_diagnosis_stats AS
SELECT d.diagnosis_name, COUNT(t.target_id) AS target_count, 
       AVG(t.age) AS avg_age
FROM diagnosis d
JOIN targets t ON d.diagnosis_id = t.diagnosis_id
GROUP BY d.diagnosis_name
HAVING AVG(t.age) > 25;

-- View 3: Targets with early symptoms and high risk ethnicity
CREATE VIEW view_symptomatic_high_risk AS
SELECT t.target_id, t.age, d.diagnosis_name, tg.genetic_value AS ethnicity_risk
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
JOIN target_genetics tg ON t.target_id = tg.target_id
WHERE tg.genetics_id = 3 
AND tg.genetic_value = 'High Risk' 
AND t.early_symptoms = 'Yes';

-- View 4: Count of positive genetic testing results per diagnosis
CREATE VIEW view_positive_genetic_testing AS
SELECT d.diagnosis_name, COUNT(t.target_id) AS positive_test_count
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
JOIN target_genetics tg ON t.target_id = tg.target_id
WHERE tg.genetics_id = 4 AND tg.genetic_value = 'Positive'
GROUP BY d.diagnosis_name;

-- View 5: Targets older than the average age of their diagnosis group
CREATE VIEW view_older_than_avg AS
SELECT t.target_id, t.age, d.diagnosis_name
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
WHERE t.age > (
    SELECT AVG(t2.age)
    FROM targets t2
    WHERE t2.diagnosis_id = t.diagnosis_id
);

-- View 6: Count of targets per lifestyle category and diagnosis
CREATE VIEW view_lifestyle_by_diagnosis AS
SELECT l.lifestyle_category, d.diagnosis_name, COUNT(t.target_id) AS target_count
FROM targets t
JOIN target_lifestyles tl ON t.target_id = tl.target_id
JOIN lifestyle l ON tl.lifestyle_id = l.lifestyle_id
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
GROUP BY l.lifestyle_category, d.diagnosis_name;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-11 22:24:33

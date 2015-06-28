-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: mysql.server    Database: Voldedore$sm
-- ------------------------------------------------------
-- Server version	5.1.73-log

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
-- Current Database: `Voldedore$sm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Voldedore$sm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `Voldedore$sm`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_4403dfc4c9e31451_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_4403dfc4c9e31451_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_1d9a8df6679345a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_200d63067b47d04f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add boat type',7,'add_boattype'),(20,'Can change boat type',7,'change_boattype'),(21,'Can delete boat type',7,'delete_boattype'),(22,'Can add boat',8,'add_boat'),(23,'Can change boat',8,'change_boat'),(24,'Can delete boat',8,'delete_boat'),(25,'Can add load balance',9,'add_loadbalance'),(26,'Can change load balance',9,'change_loadbalance'),(27,'Can delete load balance',9,'delete_loadbalance');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_5a2dff98c6e85a48_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_5a2dff98c6e85a48_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_7ea98cf244d44a52_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_66a760f6b91f7f94_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_66a760f6b91f7f94_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_11d1ab288f87753f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_3a5ebc7567e00b32_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_4743c44ac508226b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_4743c44ac508226b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_3a5ebc7567e00b32_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76ed9e5e7f5ab8f9_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'incomeCalc','boat'),(7,'incomeCalc','boattype'),(9,'incomeCalc','loadbalance'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-06-20 16:53:48'),(2,'auth','0001_initial','2015-06-20 16:54:17'),(3,'admin','0001_initial','2015-06-20 16:54:22'),(4,'contenttypes','0002_remove_content_type_name','2015-06-20 16:54:23'),(5,'auth','0002_alter_permission_name_max_length','2015-06-20 16:54:23'),(6,'auth','0003_alter_user_email_max_length','2015-06-20 16:54:23'),(7,'auth','0004_alter_user_username_opts','2015-06-20 16:54:23'),(8,'auth','0005_alter_user_last_login_null','2015-06-20 16:54:23'),(9,'auth','0006_require_contenttypes_0002','2015-06-20 16:54:23'),(10,'incomeCalc','0001_initial','2015-06-20 16:54:33'),(11,'incomeCalc','0002_auto_20150620_1650','2015-06-20 16:54:34'),(12,'sessions','0001_initial','2015-06-20 16:54:39'),(13,'incomeCalc','0003_loadbalance','2015-06-23 15:46:53');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomeCalc_boat`
--

DROP TABLE IF EXISTS `incomeCalc_boat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incomeCalc_boat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Type_id` int(11) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Crew` int(11) NOT NULL,
  `Fuel` int(11) NOT NULL,
  `Size` int(11) NOT NULL,
  `Speed` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `incomeCalc_boat_6fcad39f` (`Type_id`),
  CONSTRAINT `incomeCalc_bo_Type_id_52af2e3a11de41e4_fk_incomeCalc_boattype_id` FOREIGN KEY (`Type_id`) REFERENCES `incomeCalc_boattype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomeCalc_boat`
--

LOCK TABLES `incomeCalc_boat` WRITE;
/*!40000 ALTER TABLE `incomeCalc_boat` DISABLE KEYS */;
INSERT INTO `incomeCalc_boat` VALUES (1,'SM-01-SMF',1,2500000,13,250,200,8),(2,'SM-02-SMF',1,2200000,16,450,200,8),(3,'SM-03-SMF',1,8217500,11,294,500,9),(4,'NEW Vessel 500',1,118252500,11,5454,500,42),(5,'SM-04-SMF',1,13927900,11,523,645,9),(6,'NEW Vessel 645',1,119857975,11,5463,645,42),(7,'SM-05-SMF',1,101207950,12,4981,790,35),(8,'NEW Vessel 790',1,121633100,12,5472,790,42),(9,'SM-06-SMF',1,12657650,12,324,935,8),(10,'NEW Vessel 935',1,123577875,12,5482,935,42),(11,'NEW Vessel 1080',1,125692300,12,5491,1080,41),(12,'NEW Vessel 1225',1,127976375,12,5500,1225,41),(13,'ME-01-FEE',1,21924650,12,525,1370,12),(14,'NEW Vessel 1370',1,130430100,12,5509,1370,41),(15,'NEW Vessel 1515',1,133053475,12,5519,1515,40),(16,'NEW Vessel 1660',1,135846500,13,5528,1660,40),(17,'NEW Vessel 1805',1,138809175,13,5537,1805,40),(18,'NEW Vessel 1950',1,141941500,13,5546,1950,39),(19,'ME-02-FEE',1,33355750,13,622,1950,6),(20,'ME-03-FEE',1,56455750,13,1817,1950,13),(21,'LA-01-FEX',1,89162650,13,3364,2095,22),(22,'NEW Vessel 2095',1,145243475,13,5556,2095,39),(23,'LA-02-FEX',1,38439200,13,585,2240,13),(24,'NEW Vessel 2240',1,148715100,13,5565,2240,39),(25,'NEW Vessel 2385',1,152356375,14,5574,2385,39),(26,'NEW Vessel 2530',1,156167300,14,5583,2530,38),(27,'NEW Vessel 2675',1,160147875,14,5593,2675,38),(28,'NEW Vessel 2820',1,164298100,14,5602,2820,38),(29,'NEW Vessel 2965',1,168617975,14,5611,2965,37),(30,'NEW Vessel 3110',1,173107500,15,5621,3110,37),(31,'NEW Vessel 3255',1,177766675,15,5630,3255,37),(32,'NEW Vessel 3400',1,182595500,15,5639,3400,36),(33,'NEW Vessel 3545',1,187593975,15,5648,3545,36),(34,'NEW Vessel 3690',1,192762100,15,5658,3690,36),(35,'NEW Vessel 3835',1,198099875,16,5667,3835,36),(36,'NEW Vessel 3980',1,203607300,16,5676,3980,35),(37,'NEW Vessel 4125',1,209284375,16,5685,4125,35),(38,'NEW Vessel 4270',1,215131100,16,5695,4270,35),(39,'New Vessel 4415',1,221147475,16,5704,4415,34),(40,'EL-01-PNX',1,111945450,16,1021,4415,3),(41,'EL-02-PNX',1,130645450,16,1989,4415,8),(42,'NEW Vessel 4560',1,227333500,16,5713,4560,34),(43,'NEW Vessel 4705',1,233689175,17,5722,4705,34),(44,'NEW Vessel 4850',1,240214500,17,5732,4850,33),(45,'NEW Vessel 4995',1,246909475,17,5741,4995,33),(46,'NEW Vessel 5140',1,253774100,17,5750,5140,33),(47,'NEW Vessel 5285',1,260808375,17,5760,5285,33),(48,'NEW Vessel 5430',1,268012300,18,5769,5430,32),(49,'NEW Vessel 5575',1,275385875,18,5778,5575,32),(50,'NEW Vessel 5720',1,282929100,18,5787,5720,32),(51,'NEW Vessel 5865',1,290641975,18,5797,5865,31),(52,'NEW Vessel 6010',1,298524500,18,5806,6010,31),(53,'NEW Vessel 6155',1,306576675,19,5815,6155,31),(54,'NEW Vessel 6300',1,314798500,19,5824,6300,30),(55,'NEW Vessel 6445',1,323189975,19,5834,6445,30),(56,'NEW Vessel 6590',1,331751100,19,5843,6590,30),(57,'NEW Vessel 6735',1,340481875,19,5852,6735,30),(58,'NEW Vessel 6880',1,349382300,19,5861,6880,29),(59,'NEW Vessel 7025',1,358452375,20,5871,7025,29),(60,'NEW Vessel 7170',1,367692100,20,5880,7170,29),(61,'NEW Vessel 7315',1,377101475,20,5889,7315,28),(62,'NEW Vessel 7460',1,386680500,20,5898,7460,28),(63,'HU-01-PPX',1,280735500,20,1243,7605,3),(64,'NEW Vessel 7605',1,396429175,20,5908,7605,28),(65,'NEW Vessel 7750',1,406347500,21,5917,7750,27),(66,'NEW Vessel 7895',1,416435475,21,5926,7895,27),(67,'FOB Vessel 8000',1,0,20,6000,8000,25),(68,'NEW Vessel 8040',1,426693100,21,5936,8040,27),(69,'NEW Vessel 8185',1,437120375,21,5945,8185,27),(70,'NEW Vessel 8330',1,447717300,21,5954,8330,26),(71,'NEW Vessel 8475',1,458483875,22,5963,8475,26),(72,'NEW Vessel 8620',1,469420100,22,5973,8620,26),(73,'HU-02-PPX',1,462571700,22,6502,8765,23),(74,'NEW Vessel 8765',1,480525975,22,5982,8765,25),(75,'NEW Vessel 8910',1,491801500,22,5991,8910,25),(76,'NEW Vessel 9055',1,503246675,22,6000,9055,25),(77,'NEW Vessel 9200',1,514861500,23,6010,9200,24),(78,'NEW Vessel 9345',1,526645975,23,6019,9345,24),(79,'NEW Vessel 9490',1,538600100,23,6028,9490,24),(80,'NEW Vessel 9635',1,550723875,23,6037,9635,24),(81,'NEW Vessel 9780',1,563017300,23,6047,9780,22),(82,'NEW Vessel 9925',1,575480375,23,6056,9925,22),(83,'HU-03-PPX',1,483903150,24,2267,10070,4),(84,'NEW Vessel 10070',1,588113100,24,6065,10070,22),(85,'NEW Vessel 10215',1,600915475,24,6074,10215,21),(86,'NEW Vessel 10360',1,613887500,24,6084,10360,21),(87,'NEW Vessel 10505',1,627029175,24,6093,10505,21),(88,'EH-01-NPX',1,618550250,24,6633,10650,19),(89,'NEW Vessel 10650',1,640340500,24,6102,10650,20),(90,'NEW Vessel 10795',1,653821475,25,6112,10795,20),(91,'NEW Vessel 10940',1,667472100,25,6121,10940,20),(92,'NEW Vessel 11085',1,681292375,25,6130,11085,20),(93,'NEW Vessel 11230',1,695282300,25,6139,11230,19),(94,'NEW Vessel 11375',1,709441875,25,6149,11375,19),(95,'EH-02-NPX',1,844180650,28,2348,11380,4),(96,'NEW Vessel 11520',1,723771100,26,6158,11520,19),(97,'EH-03-NPX',1,701214200,22,6020,11665,14),(98,'NEW Vessel 11665',1,738269975,26,6167,11665,18),(99,'NEW Vessel 11810',1,752938500,26,6176,11810,18),(100,'NEW Vessel 11955',1,767776675,26,6186,11955,18),(101,'NEW Vessel 12100',1,782784500,26,6195,12100,17),(102,'NEW Vessel 12245',1,797961975,26,6204,12245,17),(103,'NEW Vessel 12390',1,813309100,27,6213,12390,17),(104,'NEW Vessel 12535',1,828825875,27,6223,12535,17),(105,'NEW Vessel 12680',1,844512300,27,6232,12680,16),(106,'NEW Vessel 12825',1,860368375,27,6241,12825,16),(107,'EH-04-NPX',1,773982650,27,2867,12970,5),(108,'NEW Vessel 12970',1,876394100,27,6250,12970,16),(109,'NEW Vessel 13115',1,892589475,28,6260,13115,15),(110,'NEW Vessel 13260',1,908954500,28,6269,13260,15),(111,'NEW Vessel 13405',1,925489175,28,6278,13405,15),(112,'NEW Vessel 13550',1,942193500,28,6288,13550,14),(113,'EH-05-NPX',1,822180650,28,1210,13695,2),(114,'NEW Vessel 13695',1,959067475,28,6297,13695,14),(115,'EH-06-NPX',1,896129200,29,4180,13840,3),(116,'NEW Vessel 13840',1,976111100,29,6306,13840,14),(117,'EH-07-NPX-1',1,934629200,29,6171,13900,10),(118,'NEW Vessel 13985',1,993324375,29,6315,13985,14),(119,'EH-07-NPX-2',1,974718900,29,6350,14100,10),(120,'NEW Vessel 14130',1,1010707300,29,6325,14130,13),(121,'NEW Vessel 14275',1,1028259875,29,6334,14275,13),(122,'NEW Vessel 14420',1,1045982100,29,6343,14420,13),(123,'NEW Vessel 14565',1,1063873975,30,6352,14565,12),(124,'NEW Vessel 14710',1,1081935500,30,6362,14710,12),(125,'NEW Vessel 14855',1,1100166675,30,6371,14855,12),(126,'ULCV Vessel 20000',1,0,35,7500,20000,30),(127,'NEW OIL 800',2,112547350,11,3229,800,43),(128,'OI-01-GPT 800',2,114395000,11,3578,800,41),(129,'OI-02-GPT 800',2,5495000,11,197,800,11),(130,'NEW OIL 2400',2,114142350,11,3305,2400,43),(131,'OI-03-GPT 2400',2,6620000,11,281,2400,10),(132,'NEW OIL 4000',2,115917350,11,3382,4000,43),(133,'NEW OIL 5600',2,117872350,11,3459,5600,42),(134,'NEW OIL 7200',2,120007350,11,3535,7200,42),(135,'NEW OIL 8800',2,122322350,12,3612,8800,42),(136,'NEW OIL 10400',2,124817350,12,3689,10400,42),(137,'NEW OIL 12000',2,127492350,12,3765,12000,41),(138,'OI-04-GPT 12000',2,53450000,12,1908,12000,18),(139,'NEW OIL 13600',2,130347350,12,3842,13600,41),(140,'NEW OIL 15200',2,133382350,12,3919,15200,41),(141,'NEW OIL 16800',2,136597350,13,3995,16800,40),(142,'NEW OIL 18400',2,139992350,13,4072,18400,40),(143,'NEW OIL 20000',2,143567350,13,4149,20000,40),(144,'NEW OIL 21600',2,147322350,13,4225,21600,39),(145,'NEW OIL 23200',2,151257350,13,4302,23200,39),(146,'NEW OIL 24800',2,155372350,14,4379,24800,39),(147,'NEW OIL 26400',2,159667350,14,4455,26400,39),(148,'NEW OIL 28000',2,164142350,14,4532,28000,38),(149,'NEW OIL 29600',2,168797350,14,4609,29600,38),(150,'NEW OIL 31200',2,173632350,14,4685,31200,38),(151,'NEW OIL 32800',2,178647350,15,4762,32800,37),(152,'NEW OIL 34400',2,183842350,15,4839,34400,37),(153,'OI-01-MRT 34400',2,99920000,15,2972,34400,13),(154,'NEW OIL 36000',2,189217350,15,4915,36000,37),(155,'NEW OIL 37600',2,195872425,15,5024,37600,36),(156,'NEW OIL 39200',2,201607425,15,5100,39200,36),(157,'NEW OIL 40800',2,207522425,16,5177,40800,36),(158,'NEW OIL 42400',2,213617425,16,5254,42400,35),(159,'NEW OIL 44000',2,219892425,16,5330,44000,35),(160,'NEW OIL 45600',2,226347425,16,5407,45600,35),(161,'NEW OIL 47200',2,232982425,16,5484,47200,35),(162,'NEW OIL 48800',2,239797425,17,5560,48800,34),(163,'OI-01-LR1 48800',2,157145000,17,3927,48800,12),(164,'NEW OIL 50400',2,246792425,17,5637,50400,34),(165,'NEW OIL 52000',2,253967425,17,5714,52000,34),(166,'NEW OIL 53600',2,261322425,17,5790,53600,33),(167,'NEW OIL 55200',2,268857425,17,5867,55200,33),(168,'NEW OIL 56800',2,276572425,18,5944,56800,33),(169,'NEW OIL 58400',2,284467425,18,6020,58400,32),(170,'NEW OIL 60000',2,292542425,18,6097,60000,32),(171,'FOB Oil',2,0,0,0,60000,0),(172,'NEW OIL 61600',2,300797425,18,6174,61600,32),(173,'NEW OIL 63200',2,309232425,18,6250,63200,32),(174,'NEW OIL 64800',2,317847425,19,6327,64800,31),(175,'NEW OIL 66400',2,326642425,19,6404,66400,31),(176,'NEW OIL 68000',2,335617425,19,6480,68000,31),(177,'NEW OIL 69600',2,345872500,19,6588,69600,30),(178,'NEW OIL 71200',2,355207500,19,6665,71200,30),(179,'NEW OIL 72800',2,364722500,20,6742,72800,30),(180,'NEW OIL 74400',2,374417500,20,6818,74400,29),(181,'NEW OIL 76000',2,384292500,20,6895,76000,29),(182,'NEW OIL 77600',2,394347500,20,6972,77600,29),(183,'NEW OIL 79200',2,404582500,20,7048,79200,29),(184,'NEW OIL 80800',2,414997500,21,7125,80800,28),(185,'NEW OIL 82400',2,425592500,21,7202,82400,28),(186,'NEW OIL 84000',2,436367500,21,7278,84000,28),(187,'NEW OIL 85600',2,447322500,21,7355,85600,27),(188,'NEW OIL 87200',2,458457500,21,7432,87200,27),(189,'NEW OIL 88800',2,469772500,22,7508,88800,27),(190,'NEW OIL 90400',2,481267500,22,7585,90400,26),(191,'NEW OIL 92000',2,492942500,22,7662,92000,26),(192,'NEW OIL 93600',2,504797500,22,7738,93600,26),(193,'NEW OIL 95200',2,516832500,22,7815,95200,25),(194,'NEW OIL 96800',2,529047500,23,7892,96800,25),(195,'OI-02-LR2 96800',2,435595000,23,6563,96800,3),(196,'NEW OIL 98400',2,541442500,23,7968,98400,25),(197,'NEW OIL 100000',2,554017500,23,8045,100000,25),(198,'NEW OIL 101600',2,566772500,23,8122,101600,24),(199,'OI-03-LR3 101600',2,536810000,23,8828,101600,22),(200,'NEW OIL 103200',2,579707500,23,8198,103200,24),(201,'NEW OIL 104800',2,592822500,24,8275,104800,24),(202,'NEW OIL 106400',2,606117500,24,8352,106400,24),(203,'NEW OIL 108000',2,619592500,24,8428,108000,22),(204,'NEW OIL 109600',2,633247500,24,8505,109600,22),(205,'NEW OIL 111200',2,647082500,24,8582,111200,21),(206,'NEW OIL 112800',2,661097500,25,8658,112800,21),(207,'NEW OIL 114400',2,675292500,25,8735,114400,21),(208,'NEW OIL 116000',2,689667500,25,8812,116000,21),(209,'NEW OIL 117600',2,704222500,25,8888,117600,20),(210,'NEW OIL 119200',2,718957500,25,8965,119200,20),(211,'NEW OIL 120800',2,733872500,26,9042,120800,20),(212,'NEW OIL 122400',2,748967500,26,9118,122400,19),(213,'NEW OIL 124000',2,764242500,26,9195,124000,19),(214,'NEW OIL 125600',2,779697500,26,9272,125600,19),(215,'NEW OIL 127200',2,795332500,26,9348,127200,18),(216,'NEW OIL 128800',2,811147500,27,9425,128800,18),(217,'NEW OIL 130400',2,827142500,27,9502,130400,18),(218,'NEW OIL 132000',2,843317500,27,9578,132000,18),(219,'NEW OIL 133600',2,859672500,27,9655,133600,17),(220,'NEW OIL 135200',2,876207500,27,9732,135200,17),(221,'NEW OIL 136800',2,892922500,28,9808,136800,17),(222,'NEW OIL 138400',2,909817500,28,9885,138400,16),(223,'NEW OIL 140000',2,926892500,28,9962,140000,16),(224,'NEW OIL 141600',2,944147500,28,10038,141600,16),(225,'NEW OIL 143200',2,961582500,28,10115,143200,15),(226,'NEW OIL 144800',2,979197500,29,10192,144800,15),(227,'NEW OIL 146400',2,996992500,29,10268,146400,15),(228,'NEW OIL 148000',2,1014967500,29,10345,148000,14),(229,'NEW OIL 149600',2,1033122500,29,10422,149600,14),(230,'NEW OIL 151200',2,1051457500,29,10498,151200,14),(231,'NEW OIL 152800',2,1069972500,30,10575,152800,14),(232,'NEW OIL 154400',2,1088667500,30,10652,154400,13),(233,'NEW OIL 156000',2,1107542500,30,10728,156000,13),(234,'NEW OIL 157600',2,1126597500,30,10805,157600,13),(235,'NEW OIL 159200',2,1145832500,30,10882,159200,12),(236,'Supertanker 200000',2,0,0,0,200000,0);
/*!40000 ALTER TABLE `incomeCalc_boat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomeCalc_boattype`
--

DROP TABLE IF EXISTS `incomeCalc_boattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incomeCalc_boattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomeCalc_boattype`
--

LOCK TABLES `incomeCalc_boattype` WRITE;
/*!40000 ALTER TABLE `incomeCalc_boattype` DISABLE KEYS */;
INSERT INTO `incomeCalc_boattype` VALUES (1,'Cargo ships'),(2,'Oil tankers');
/*!40000 ALTER TABLE `incomeCalc_boattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomeCalc_loadbalance`
--

DROP TABLE IF EXISTS `incomeCalc_loadbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incomeCalc_loadbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loadBalance` varchar(4) NOT NULL,
  `oilConsum` varchar(4) NOT NULL,
  `cargoConsum` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomeCalc_loadbalance`
--

LOCK TABLES `incomeCalc_loadbalance` WRITE;
/*!40000 ALTER TABLE `incomeCalc_loadbalance` DISABLE KEYS */;
INSERT INTO `incomeCalc_loadbalance` VALUES (1,'35%','32%','31%'),(2,'36%','33%','32%'),(3,'37%','34%','33%'),(4,'38%','35%','34%'),(5,'39%','36%','35%'),(6,'40%','37%','36%'),(7,'41%','38%','37%'),(8,'42%','39%','38%'),(9,'43%','39%','39%'),(10,'44%','40%','40%'),(11,'45%','41%','40%'),(12,'46%','42%','41%'),(13,'47%','43%','42%'),(14,'48%','44%','43%'),(15,'49%','45%','44%'),(16,'50%','46%','45%'),(17,'51%','47%','46%'),(18,'52%','48%','47%'),(19,'53%','49%','48%'),(20,'54%','50%','49%'),(21,'55%','51%','50%'),(22,'56%','52%','50%'),(23,'57%','53%','51%'),(24,'58%','53%','52%'),(25,'59%','54%','53%'),(26,'60%','55%','54%'),(27,'61%','56%','55%'),(28,'62%','57%','56%'),(29,'63%','58%','57%'),(30,'64%','59%','58%'),(31,'65%','60%','59%'),(32,'66%','61%','60%'),(33,'67%','62%','60%'),(34,'68%','63%','61%'),(35,'69%','64%','62%'),(36,'70%','70%','63%'),(37,'71%','80%','64%'),(38,'72%','81%','65%'),(39,'73%','82%','66%'),(40,'74%','83%','67%'),(41,'75%','84%','75%'),(42,'76%','85%','82%'),(43,'77%','87%','83%'),(44,'78%','88%','85%'),(45,'79%','89%','86%'),(46,'80%','90%','87%'),(47,'81%','91%','88%'),(48,'82%','92%','89%'),(49,'83%','93%','90%'),(50,'84%','94%','91%'),(51,'85%','96%','92%'),(52,'86%','97%','93%'),(53,'87%','98%','94%'),(54,'88%','99%','95%'),(55,'89%','100%','97%'),(56,'90%','101%','98%'),(57,'91%','102%','99%'),(58,'92%','103%','100%'),(59,'93%','105%','101%'),(60,'94%','106%','102%'),(61,'95%','107%','103%'),(62,'96%','108%','104%'),(63,'97%','109%','105%'),(64,'98%','110%','106%'),(65,'99%','111%','107%'),(66,'100%','112%','109%'),(67,'101%','114%','110%'),(68,'102%','115%','111%'),(69,'103%','116%','112%'),(70,'104%','117%','113%'),(71,'105%','118%','114%'),(72,'106%','119%','115%'),(73,'107%','120%','116%'),(74,'108%','122%','117%'),(75,'109%','123%','118%'),(76,'110%','124%','119%'),(77,'111%','125%','120%'),(78,'112%','126%','122%'),(79,'113%','127%','123%'),(80,'114%','128%','124%'),(81,'115%','129%','125%');
/*!40000 ALTER TABLE `incomeCalc_loadbalance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-28 17:31:09

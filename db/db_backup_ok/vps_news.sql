
-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: vps_news
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'masteruser');
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64);
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add main',7,'add_main'),(26,'Can change main',7,'change_main'),(27,'Can delete main',7,'delete_main'),(28,'Can view main',7,'view_main'),(29,'Can add news',8,'add_news'),(30,'Can change news',8,'change_news'),(31,'Can delete news',8,'delete_news'),(32,'Can view news',8,'view_news'),(33,'Can add Bảng Thể Loại',9,'add_cat'),(34,'Can change Bảng Thể Loại',9,'change_cat'),(35,'Can delete Bảng Thể Loại',9,'delete_cat'),(36,'Can view Bảng Thể Loại',9,'view_cat'),(37,'Can add sub cat',10,'add_subcat'),(38,'Can change sub cat',10,'change_subcat'),(39,'Can delete sub cat',10,'delete_subcat'),(40,'Can view sub cat',10,'view_subcat'),(41,'Can add contact form',11,'add_contactform'),(42,'Can change contact form',11,'change_contactform'),(43,'Can delete contact form',11,'delete_contactform'),(44,'Can view contact form',11,'view_contactform'),(45,'Can add trending',12,'add_trending'),(46,'Can change trending',12,'change_trending'),(47,'Can delete trending',12,'delete_trending'),(48,'Can view trending',12,'view_trending'),(49,'Can add manager',13,'add_manager'),(50,'Can change manager',13,'change_manager'),(51,'Can delete manager',13,'delete_manager'),(52,'Can view manager',13,'view_manager'),(53,'Can add newsletter',14,'add_newsletter'),(54,'Can change newsletter',14,'change_newsletter'),(55,'Can delete newsletter',14,'delete_newsletter'),(56,'Can view newsletter',14,'view_newsletter'),(57,'Can add comment',15,'add_comment'),(58,'Can change comment',15,'change_comment'),(59,'Can delete comment',15,'delete_comment'),(60,'Can view comment',15,'view_comment'),(61,'Can add black list',16,'add_blacklist'),(62,'Can change black list',16,'change_blacklist'),(63,'Can delete black list',16,'delete_blacklist'),(64,'Can view black list',16,'view_blacklist');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$McLIcry9xOXn$LYUfvadY5wIK0EigSLIepsaVKTfIR+owTmfmEwpgmH8=','2020-10-17 08:59:57.213539',1,'dinhchung93','','','dinhvanchung.hy@gmail.com',1,1,'2020-10-16 18:45:36.000000');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1);
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_blacklist`
--

DROP TABLE IF EXISTS `blacklist_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_blacklist`
--

LOCK TABLES `blacklist_blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_cat`
--

DROP TABLE IF EXISTS `cat_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_cat_name_2247699c_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_cat`
--

LOCK TABLES `cat_cat` WRITE;
/*!40000 ALTER TABLE `cat_cat` DISABLE KEYS */;
INSERT INTO `cat_cat` VALUES (1,'Tài Chính',1),(2,'Doanh Nghiệp',1),(3,'Bất động sản',1),(4,'Hàng hóa',1),(5,'Công nghệ',1),(6,'Chứng Khoán',1),(7,'Quốc tế',1);
/*!40000 ALTER TABLE `cat_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cm` longtext NOT NULL,
  `news_id` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactform_contactform`
--

DROP TABLE IF EXISTS `contactform_contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactform_contactform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `txt` longtext NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactform_contactform`
--

LOCK TABLES `contactform_contactform` WRITE;
/*!40000 ALTER TABLE `contactform_contactform` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactform_contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-10-16 19:10:52.646852','1','masteruser',1,'[{\"added\": {}}]',3,1),(2,'2020-10-16 19:11:06.108072','1','dinhchung93',2,'[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\"]}}]',4,1),(3,'2020-10-16 20:46:33.159015','2','Ông Vương Đình Huệ tái cử Bí thư Hà Nội',3,'',8,1),(4,'2020-10-17 04:14:59.790291','2','Doanh Nghiệp',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(5,'2020-10-17 04:15:04.592400','1','Tài Chính',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(6,'2020-10-17 04:17:06.193227','5','Nước Ngoài',3,'',10,1),(7,'2020-10-17 04:17:10.494723','4','Trong Nước',3,'',10,1),(8,'2020-10-17 04:17:30.215466','3','Trái Phiếu',2,'[]',10,1),(9,'2020-10-17 06:44:59.511100','6','Chứng Khoán',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(10,'2020-10-17 06:45:08.915462','2','Doanh Nghiệp',2,'[]',9,1),(11,'2020-10-17 06:45:16.073207','5','Công nghệ',2,'[{\"changed\": {\"fields\": [\"Th\\u1ec3 Lo\\u1ea1i\", \"\\u0110\\u1ebfm\"]}}]',9,1),(12,'2020-10-17 06:45:47.733628','6','Chứng Khoán',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(13,'2020-10-17 06:46:20.038551','5','Công nghệ',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(14,'2020-10-17 06:46:37.175809','1','Tài Chính',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(15,'2020-10-17 06:46:45.470982','5','Công nghệ',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(16,'2020-10-17 06:46:59.269846','3','Bất động sản',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(17,'2020-10-17 06:47:06.034244','4','Hàng hóa',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(18,'2020-10-17 06:48:49.960612','3','Bất động sản',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(19,'2020-10-17 06:48:56.172037','6','Chứng Khoán',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(20,'2020-10-17 06:49:02.325459','5','Công nghệ',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(21,'2020-10-17 06:49:09.798992','4','Hàng hóa',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(22,'2020-10-17 06:49:15.652232','1','Tài Chính',2,'[{\"changed\": {\"fields\": [\"\\u0110\\u1ebfm\"]}}]',9,1),(23,'2020-10-17 07:09:16.970384','7','Quốc tế',1,'[{\"added\": {}}]',9,1),(24,'2020-10-17 07:28:57.073566','1','Chứng Khoán',3,'',10,1),(25,'2020-10-17 07:29:00.082600','2','Cổ Phiếu',3,'',10,1),(26,'2020-10-17 07:29:02.434416','3','Trái Phiếu',3,'',10,1),(27,'2020-10-17 07:29:04.709058','6','Kết quả kinh doanh',3,'',10,1),(28,'2020-10-17 07:29:07.161309','7','Chuyện thương trường',3,'',10,1),(29,'2020-10-17 07:32:43.615310','9','Trái Phiếu',2,'[{\"changed\": {\"fields\": [\"Catname\"]}}]',10,1),(30,'2020-10-17 07:32:50.545067','10','Phái sinh',2,'[{\"changed\": {\"fields\": [\"Catname\"]}}]',10,1),(31,'2020-10-17 07:33:00.319877','11','Quỹ đầu tư',2,'[{\"changed\": {\"fields\": [\"Catname\"]}}]',10,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(16,'blacklist','blacklist'),(9,'cat','cat'),(15,'comment','comment'),(11,'contactform','contactform'),(5,'contenttypes','contenttype'),(7,'main','main'),(13,'manager','manager'),(8,'news','news'),(14,'newsletter','newsletter'),(6,'sessions','session'),(10,'subcat','subcat'),(12,'trending','trending');
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
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-10-16 18:44:22.897357'),(2,'auth','0001_initial','2020-10-16 18:44:23.063415'),(3,'admin','0001_initial','2020-10-16 18:44:23.450044'),(4,'admin','0002_logentry_remove_auto_add','2020-10-16 18:44:23.551937'),(5,'admin','0003_logentry_add_action_flag_choices','2020-10-16 18:44:23.573724'),(6,'contenttypes','0002_remove_content_type_name','2020-10-16 18:44:23.663920'),(7,'auth','0002_alter_permission_name_max_length','2020-10-16 18:44:23.711958'),(8,'auth','0003_alter_user_email_max_length','2020-10-16 18:44:23.768969'),(9,'auth','0004_alter_user_username_opts','2020-10-16 18:44:23.791940'),(10,'auth','0005_alter_user_last_login_null','2020-10-16 18:44:23.887565'),(11,'auth','0006_require_contenttypes_0002','2020-10-16 18:44:23.896652'),(12,'auth','0007_alter_validators_add_error_messages','2020-10-16 18:44:23.916174'),(13,'auth','0008_alter_user_username_max_length','2020-10-16 18:44:24.058598'),(14,'auth','0009_alter_user_last_name_max_length','2020-10-16 18:44:24.223502'),(15,'auth','0010_alter_group_name_max_length','2020-10-16 18:44:24.371815'),(16,'auth','0011_update_proxy_permissions','2020-10-16 18:44:24.398436'),(17,'blacklist','0001_initial','2020-10-16 18:44:24.469412'),(18,'cat','0001_initial','2020-10-16 18:44:24.535958'),(19,'cat','0002_auto_20201016_1516','2020-10-16 18:44:24.592581'),(20,'cat','0003_auto_20201016_1517','2020-10-16 18:44:24.604910'),(21,'cat','0004_auto_20201016_1518','2020-10-16 18:44:24.748856'),(22,'comment','0001_initial','2020-10-16 18:44:24.820877'),(23,'comment','0002_comment_status','2020-10-16 18:44:24.932228'),(24,'comment','0003_auto_20201016_1520','2020-10-16 18:44:25.185405'),(25,'contactform','0001_initial','2020-10-16 18:44:25.243634'),(26,'contactform','0002_auto_20200216_0050','2020-10-16 18:44:25.427689'),(27,'contactform','0003_auto_20201016_1519','2020-10-16 18:44:25.697374'),(28,'main','0001_initial','2020-10-16 18:44:25.765841'),(29,'main','0002_main_about','2020-10-16 18:44:25.862186'),(30,'main','0003_auto_20200202_1348','2020-10-16 18:44:25.876404'),(31,'main','0004_auto_20200202_1429','2020-10-16 18:44:26.180823'),(32,'main','0005_main_set_name','2020-10-16 18:44:26.285312'),(33,'main','0006_auto_20200202_1439','2020-10-16 18:44:26.488741'),(34,'main','0007_auto_20200202_1941','2020-10-16 18:44:26.871633'),(35,'main','0008_main_abouttxt','2020-10-16 18:44:26.976364'),(36,'main','0009_auto_20201016_1519','2020-10-16 18:44:27.904464'),(37,'manager','0001_initial','2020-10-16 18:44:27.971700'),(38,'manager','0002_manager_email','2020-10-16 18:44:28.075085'),(39,'manager','0003_auto_20200227_1525','2020-10-16 18:44:28.089556'),(40,'manager','0004_manager_ip','2020-10-16 18:44:28.192639'),(41,'manager','0005_manager_country','2020-10-16 18:44:28.291258'),(42,'manager','0006_auto_20201016_1518','2020-10-16 18:44:28.425697'),(43,'news','0001_initial','2020-10-16 18:44:28.501503'),(44,'news','0002_auto_20200202_1853','2020-10-16 18:44:28.816224'),(45,'news','0003_auto_20200202_1941','2020-10-16 18:44:29.106390'),(46,'news','0004_news_tag','2020-10-16 18:44:29.221034'),(47,'news','0005_news_act','2020-10-16 18:44:29.328333'),(48,'news','0006_news_rand','2020-10-16 18:44:29.441648'),(49,'news','0007_auto_20201016_1517','2020-10-16 18:44:29.533860'),(50,'newsletter','0001_initial','2020-10-16 18:44:29.599154'),(51,'sessions','0001_initial','2020-10-16 18:44:29.664361'),(52,'subcat','0001_initial','2020-10-16 18:44:29.773774'),(53,'subcat','0002_auto_20201016_1520','2020-10-16 18:44:30.026797'),(54,'trending','0001_initial','2020-10-16 18:44:30.087429'),(55,'trending','0002_auto_20201016_1505','2020-10-16 18:44:30.119236'),(56,'trending','0003_auto_20201016_1512','2020-10-16 18:44:30.252322'),(57,'trending','0004_auto_20201016_1517','2020-10-16 18:44:30.280955'),(58,'news','0008_auto_20201017_0342','2020-10-16 20:42:47.423500');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('arj73lhri2oyr2z8j032fsy4zovof2m7','Y2MyMzEyNmZiZTYyYWM3ZGI4ZTJkOTY2ZjQzMTI2MWM0YmRmM2IzZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Y2NiNjI1NjJhZTcwZjU2ZDQ4NTkxY2RmNzdiOGQyODU3ZGVmZGRmIn0=','2020-10-31 08:59:57.221016');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_main`
--

DROP TABLE IF EXISTS `main_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `yt` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `tell` varchar(255) NOT NULL,
  `picname` longtext NOT NULL,
  `picname2` longtext NOT NULL,
  `picurl` longtext NOT NULL,
  `picurl2` longtext NOT NULL,
  `abouttxt` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_main`
--

LOCK TABLES `main_main` WRITE;
/*!40000 ALTER TABLE `main_main` DISABLE KEYS */;
INSERT INTO `main_main` VALUES (1,'Daily News For You','<p>Daily News For You</p>\r\n','https://www.facebook.com/profile.php?id=100004470430552','https://twitter.com/?lang=vi','#','-','#','0985281439','Daily News For You Header_0uXM1x4.png','Daily News For You Footer_lDlt6vf.png','/media/Daily%20News%20For%20You%20Header_0uXM1x4.png','/media/Daily%20News%20For%20You%20Footer_lDlt6vf.png','<p>Daily News For You</p>\r\n');
/*!40000 ALTER TABLE `main_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_manager`
--

DROP TABLE IF EXISTS `manager_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `utxt` longtext NOT NULL,
  `email` longtext NOT NULL,
  `ip` longtext NOT NULL,
  `country` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_manager`
--

LOCK TABLES `manager_manager` WRITE;
/*!40000 ALTER TABLE `manager_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_txt` longtext NOT NULL,
  `body_txt` longtext NOT NULL,
  `date` varchar(12) NOT NULL,
  `picname` longtext NOT NULL,
  `writer` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `show` int(11) NOT NULL,
  `ocatid` int(11) NOT NULL,
  `picurl` longtext NOT NULL,
  `time` varchar(12) NOT NULL,
  `tag` longtext NOT NULL,
  `act` int(11) NOT NULL,
  `rand` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
INSERT INTO `news_news` VALUES (3,'Những \"\"điểm nóng\"\" nổi bật trên 3/4 chặng đường chứng khoán Việt 2020','<p>Đ&agrave; rơi thảm thiết của thị trường chứng kho&aacute;n trong những th&aacute;ng đầu năm, sự hồi phục ấn tượng c&ugrave;ng kỳ vọng từ d&ograve;ng tiền mới l&agrave; những dấu ấn nổi bật trong 9 th&aacute;ng vừa qua...</p>\r\n','<p>Hơn 3/4 chặng đường của năm 2020 đ&atilde; qua, thị trường chứng kho&aacute;n Việt Nam đ&atilde; phải trải qua rất nhiều những biến động mạnh.Đầu ti&ecirc;n l&agrave; việc thị trường gặp phải sự hoảng loạn với nhiều phi&ecirc;n b&aacute;n th&aacute;o của nh&agrave; đầu tư do ảnh hưởng từ dịch bệnh Covid-19. VN-Index chỉ trong v&ograve;ng hơn 2 th&aacute;ng từ phi&ecirc;n 22/1 đến 30/3 đ&atilde; giảm đến 329,2 điểm (33,2%) từ 991,46 điểm xuống chỉ c&ograve;n 662,26 điểm. Nhiều phi&ecirc;n giao dịch ở thời điểm đ&oacute;, nh&agrave; đầu tư phải chứng kiến c&aacute;c cổ phiếu vốn h&oacute;a lớn nằm s&agrave;n la liệt.Tiếp theo l&agrave; việc thị trường hồi phục ấn tượng do Việt Nam kiểm so&aacute;t tốt dịch bệnh c&ugrave;ng với việc d&ograve;ng tiền mới từ c&aacute;c nh&agrave; đầu tư F0 ồ ạt chảy v&agrave;o đ&atilde; gi&uacute;p chỉ số ch&iacute;nh VN-Index giảm kh&ocirc;ng qu&aacute; s&acirc;u so với đầu năm trong khi HNX-Index v&agrave; UPCoM thậm ch&iacute; c&ograve;n c&oacute; sự tăng trưởng vượt bậc. Trong thời gian thị trường lập đ&aacute;y v&agrave;o th&aacute;ng 3, nh&agrave; đầu tư trong nước n&oacute;i chung v&agrave; c&aacute; nh&acirc;n trong nước n&oacute;i ri&ecirc;ng đ&atilde; đua nhau đi mở t&agrave;i khoản chứng kho&aacute;n v&agrave; đ&acirc;y cũng l&agrave; động lực ch&iacute;nh gi&uacute;p thị trường đi l&ecirc;n trong bối cảnh số lượng t&agrave;i khoản mở mới của nh&agrave; đầu tư nước ngo&agrave;i sụt giảm mạnh. Trong 4 th&aacute;ng 3, 4, 5 v&agrave; 6, số lượng t&agrave;i khoản nh&agrave; đầu tư trong nước mở mới đều duy tr&igrave; ở tr&ecirc;n mức 30.000 đơn vị.D&ugrave; thị trường trải qua rất nhiều biến cố nhưng vẫn c&oacute; rất nhiều cổ phiếu dường như kh&ocirc;ng bị ảnh hưởng nhiều thậm ch&iacute; c&ograve;n đi l&ecirc;n ấn tượng như GAB, DGW, OGC, DBC, SHB, DNM, MLS&hellip; Trong khi đ&oacute;, rất nhiều cổ phiếu kh&ocirc;ng thể vực dậy được l&agrave; li&ecirc;n tục đi xuống như trường hợp của ROS, LMH, DTL&hellip; Điểm xấu nhất của thị trường c&oacute; lẽ l&agrave; việc d&ograve;ng vốn ngoại li&ecirc;n tục r&uacute;t r&ograve;ng từ đầu năm đến nay v&agrave; chưa c&oacute; dấu hiệu dừng lại. T&iacute;nh đến hết qu&yacute; 3/2020, khối ngoại b&aacute;n r&ograve;ng khoảng 5.700 tỷ đồng bao gồm cổ phiếu v&agrave; chứng chỉ quỹ ETF trong đ&oacute;, tập trung b&aacute;n mạnh c&aacute;c cổ phiếu blue-chip như VIC, HPG, VJC, VRE, BID, VCB&hellip;Dưới đ&acirc;y l&agrave; những dấu ấn nổi bật của thị trường chứng kho&aacute;n từ đầu năm t&iacute;nh đến cuối phi&ecirc;n giao dịch ng&agrave;y 9/10. Chốt phi&ecirc;n ng&agrave;y 9/10, VN-Index giảm 4,4% so với đầu năm 2020Trong khi đ&oacute;, HNX-Index tăng 32,9%Số t&agrave;i khoản giao dịch chứng kho&aacute;n mở mới của nh&agrave; đầu tư trong nước trong v&ograve;ng 1 năm qua, đặc biệt tăng mạnh từ th&aacute;ng 3/2020Số t&agrave;i khoản giao dịch chứng kho&aacute;n mở mới của nh&agrave; đầu tư nước ngo&agrave;iNhiều cổ phiếu penny lọt top 10 cổ phiếu tăng gi&aacute; mạnh nhất s&agrave;n HoSE từ đầu năm10 cổ phiếu tăng gi&aacute; mạnh nhất s&agrave;n HNX từ đầu năm10 cổ phiếu giảm gi&aacute; mạnh nhất s&agrave;n HoSE từ đầu năm, giảm mạnh nhất l&agrave; ROS. M&atilde; chứng kho&aacute;n gi&aacute; cao ngất ngưởng ng&agrave;y n&agrave;o giờ thị gi&aacute; chỉ như cốc tr&agrave; đ&aacute; với hơn 2.000 đồng/cổ phiếu10 cổ phiếu giảm gi&aacute; mạnh nhất s&agrave;n HNX từ đầu nămNh&oacute;m cổ phiếu ng&acirc;n h&agrave;ng hầu hết đều ăn n&ecirc;n l&agrave;m ra trong giai đoạn vừa quaDiễn biến giao dịch khối ngoại s&agrave;n HoSE năm 2020 theo th&aacute;ng. Đơn vị: Tỷ đồng.Khối ngoại li&ecirc;n tục r&uacute;t r&ograve;ng tr&ecirc;n HNX trong 9 th&aacute;ng qua. Đơn vị: Tỷ đồng10 cổ phiếu được khối ngoại s&agrave;n HoSE mua r&ograve;ng mạnh nhất từ đầu năm với VHM l&agrave; điểm nhấn. Đơn vị: Tỷ đồng.10 cổ phiếu được khối ngoại s&agrave;n HNX mua r&ograve;ng mạnh nhất từ đầu năm, đứng đầu l&agrave; VCS. Đơn vị: Tỷ đồng.10 cổ phiếu bị khối ngoại s&agrave;n HoSE b&aacute;n r&ograve;ng mạnh nhất. Đơn vị: Tỷ đồng.10 cổ phiếu bị khối ngoại s&agrave;n HNX b&aacute;n r&ograve;ng mạnh nhất. Đơn vị: Tỷ đồng.</p>\r\n','2020/10/17','taichinh02.jpg','dinhchung93',6,'Cổ Phiếu',14,6,'/media/taichinh02.jpg','3:48','VIC, HPG, VJC, VRE, BID, VCB',1,'202010172983'),(5,'CEO Lưu Trung Thái đăng ký mua 1 triệu cổ phiếu MBB','<p>&Ocirc;ng Lưu Trung Th&aacute;i đăng k&yacute; mua th&ocirc;ng qua khớp lệnh tr&ecirc;n s&agrave;n, giao dịch dự kiến từ ng&agrave;y 21/10 đến 19/11. Nếu giao dịch th&agrave;nh c&ocirc;ng, số lượng cổ phiếu &ocirc;ng Lưu Trung Th&aacute;i&nbsp;nắm giữ sẽ tăng l&ecirc;n hơn 2,5 triệu cổ phiếu.</p>\r\n','<p>Ph&oacute; chủ tịch ki&ecirc;m Tổng gi&aacute;m đốc MB Lưu Trung Th&aacute;i vừa đăng k&yacute; mua 1 triệu cổ phiếu MBB - m&atilde; đang c&oacute; mức tăng khi&ecirc;m tốn hơn một số cổ phiếu ng&acirc;n h&agrave;ng kh&aacute;c.</p>\r\n\r\n<p>&Ocirc;ng Lưu Trung Th&aacute;i đang sở hữu hơn 1,5 triệu cổ phiếu MBB. Nếu giao dịch th&agrave;nh c&ocirc;ng, số lượng cổ phiếu &ocirc;ng nắm giữ sẽ tăng l&ecirc;n hơn 2,5 triệu cổ phiếu. Theo th&ocirc;ng b&aacute;o từ Ng&acirc;n h&agrave;ng Qu&acirc;n đội (MB), &ocirc;ng Lưu Trung Th&aacute;i đăng k&yacute; mua th&ocirc;ng qua khớp lệnh tr&ecirc;n s&agrave;n. Giao dịch dự kiến từ ng&agrave;y 21/10-19/11.</p>\r\n\r\n<p>Chốt phi&ecirc;n giao dịch 16/10, gi&aacute; cổ phiếu MBB đứng ở mức 17.850 đồng một cổ phiếu, tăng hơn 50% so với hồi cuối th&aacute;ng 3. Tuy nhi&ecirc;n, mức n&agrave;y tăng hơn 17% so với c&aacute;ch đ&acirc;y một th&aacute;ng &ndash; kh&aacute; khi&ecirc;m tốn so với mức tăng h&agrave;ng chục phần trăm của nhiều m&atilde; ng&acirc;n h&agrave;ng kh&aacute;c như ACB, CTG, VIB, LPB... Ước t&iacute;nh với mức gi&aacute; n&agrave;y, CEO MB sẽ phải bỏ ra gần 18 tỷ đồng để mua v&agrave;o số cổ phiếu n&agrave;y.</p>\r\n\r\n<p>C&ugrave;ng ng&agrave;y 16/10, MB cũng vừa c&ocirc;ng bố b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh qu&yacute; III với lợi nhuận trước thuế hợp nhất trong 9 th&aacute;ng tăng gần 7% l&ecirc;n 8.100 tỷ đồng. Tăng trưởng t&iacute;n dụng trong 9 th&aacute;ng gần 12% (ri&ecirc;ng cho vay kh&aacute;ch h&agrave;ng tăng gần 7%) trong khi huy động vốn giảm 1%, chủ yếu do sụt giảm lượng tiền gửi của c&aacute;c tổ chức kinh tế.</p>\r\n','2020/10/17','cophieu01.jpeg','dinhchung93',6,'Cổ Phiếu',12,6,'/media/cophieu01.jpeg','10:18','mã cổ phiếu ACB, cổ phiếu',1,'202010179605'),(6,'CMX, HBC, PET, PGC, THI, BWE, TCM, GEG, VSC, SGB: Thông tin giao dịch cổ phiếu','<p>Th&agrave;nh vi&ecirc;n HĐQT Nguyễn Thanh Phong đăng k&yacute; mua 1 triệu cổ phiếu BWE. &Ocirc;ng Ph&ugrave;ng Tuấn H&agrave; đ&atilde; mua gần 3 triệu cổ phiếu PET.&nbsp;</p>\r\n','<p><strong>CTCP Camimex Group (CMX):</strong> Th&agrave;nh vi&ecirc;n HĐQT ki&ecirc;m Tổng gi&aacute;m đốc Huỳnh Văn Tấn đăng k&yacute; b&aacute;n thỏa thuận 105.353 cổ phiếu v&agrave;o ng&agrave;y 13/10. Sau giao dịch, &ocirc;ng Tấn dự kiến nắm giữ 953.530 cổ phiếu, tương đương 3,1% vốn.</p>\r\n\r\n<p><strong>Tập đo&agrave;n X&acirc;y dựng H&ograve;a B&igrave;nh (HBC): </strong>Cố vấn cao cấp L&ecirc; Viết Hưng đ&atilde; b&aacute;n thỏa thuận 900.000 cổ phiếu, giảm lượng nắm giữ c&ograve;n gần 2,6 triệu cổ phiếu, tương đương 1,1% vốn.</p>\r\n\r\n<p><strong>Tổng CTCP Dịch vụ Tổng hợp Dầu kh&iacute; (PET): </strong>&Ocirc;ng Ph&ugrave;ng Tuấn H&agrave; đ&atilde; mua hơn 2 triệu cổ phiếu, n&acirc;ng lượng nắm giữ l&ecirc;n 4,5 triệu đơn vị, tương đương 5,3% vốn. Thời gian thực hiện giao dịch l&agrave;m thay đổi tỷ lệ sở hữu v&agrave; trở th&agrave;nh cổ đ&ocirc;ng lớn từ 31/8 đến 14/9.</p>\r\n\r\n<p>&Ocirc;ng H&agrave; mua tiếp 974.000 cổ phiếu, n&acirc;ng lượng nắm giữ l&ecirc;n 5,5 triệu đơn vị. &nbsp;Thời gian thực hiện giao dịch l&agrave;m thay đổi tỷ lệ sở hữu từ ng&agrave;y 14/9 đến 21/9.</p>\r\n\r\n<p><strong>Tổng c&ocirc;ng ty Gas Petrolimex (PGC): </strong>MB Capital đăng k&yacute; b&aacute;n 1 triệu cổ phiếu, giảm lượng nắm giữ c&ograve;n 4,1 triệu cổ phiếu, tương đương 6,7% vốn. Giao dịch dự kiến thực hiện qua phương thức thỏa thuận v&agrave; khớp lệnh, từ ng&agrave;y 20/10 đến 18/11. &Ocirc;ng Phan Phương Anh, Chủ tịch HĐQT ki&ecirc;m Tổng gi&aacute;m đốc MB Capital l&agrave; Th&agrave;nh vi&ecirc;n HĐQT Tổng c&ocirc;ng ty Gas Petrolimex.</p>\r\n\r\n<p>Từ ng&agrave;y 14/9 đến 13/10, MB Capital đ&atilde; b&aacute;n 330.480 cổ phiếu trong 1 triệu đơn vị đăng k&yacute; do chưa đạt mức gi&aacute; kỳ vọng. MB Capital nắm giữ lượng nắm giữ l&agrave; 5,1 triệu cổ phiếu, tương đương 8,4% vốn.</p>\r\n\r\n<p><strong>CTCP Thiết bị điện Gelex (THI):</strong> C&ocirc;ng ty mẹ l&agrave; Thiết bị điện (Gelex) đ&atilde; mua thỏa thuận 2,5 triệu cổ phiếu trong số 3 triệu đơn vị do chưa t&igrave;m được đối t&aacute;c ph&ugrave; hợp. Thời gian thực hiện giao dịch v&agrave;o 14/9, 17/9 v&agrave; 9/10. Gelex hiện sở hữu 39,5 triệu cổ phiếu, tương đương 89,7% vốn THI.</p>\r\n\r\n<p><strong>CTCP Nước &ndash; M&ocirc;i trường B&igrave;nh Dương (BWE):</strong> Th&agrave;nh vi&ecirc;n HĐQT Nguyễn Thanh Phong đăng k&yacute; mua 1 triệu cổ phiếu từ ng&agrave;y 20/10 đến 18/11. Sau đ&oacute;, &ocirc;ng Phong dự kiến n&acirc;ng lượng nắm giữ l&ecirc;n 3 triệu cổ phiếu.</p>\r\n\r\n<p>Từ ng&agrave;y 16/9 đến 15/10, &ocirc;ng Phong đ&atilde; mua 510.000 cổ phiếu trong 1,51 triệu đơn vị. Qua đ&oacute;, vị cổ đ&ocirc;ng sở hữu 2 triệu cổ phiếu BWE.</p>\r\n\r\n<p><strong>CTCP Dệt may &ndash; Đầu tư &ndash; Thương mại Th&agrave;nh C&ocirc;ng (TCM):</strong> &Ocirc;ng Nguyễn Văn Nghĩa đ&atilde; mua 492.000 cổ phiếu, n&acirc;ng lượng nắm giữ l&ecirc;n 5,2 triệu đơn vị, tương đương 8,4% vốn. Ng&agrave;y giao dịch l&agrave;m thay đổi tỷ lệ sở hữu vượt 1% l&agrave; 13/10.</p>\r\n\r\n<p><strong>CTCP Điện Gia Lai (GEG): </strong>CTCP Xuất nhập khẩu Bến Tre đ&atilde; chuyển nhượng 39,3 quyền mua, tương đương 9,8 triệu cổ phiếu với thời gian giao dịch l&agrave;m thay đổi tỷ lệ sở hữu l&agrave; 8/10. Xuất nhập khẩu Bến Tre đang sở hữu 42,4 triệu cổ phiếu, tương đương 15,6% vốn.</p>\r\n\r\n<p><strong>CTCP Container Việt Nam (VSC):</strong> CTCP Đầu tư Sao &Aacute; D.C đăng k&yacute; mua 650.000 cổ phiếu qua phương thức thỏa thuận, từ ng&agrave;y 20/10 đến 19/11. Sau giao dịch, c&ocirc;ng ty nắm giữ 4,75 triệu cổ phiếu, tương đương 8,6% vốn. &Ocirc;ng Trần Tiến Dũng, Chủ tịch HĐQT CTCP Đầu tư Sao &Aacute; D.C l&agrave; Th&agrave;nh vi&ecirc;n HĐQT Viconship.</p>\r\n\r\n<p><strong>Saigonbank (SGB):</strong> Ph&oacute; Tổng gi&aacute;m đốc Phạm Ho&agrave;ng Hồng Thịnh đăng k&yacute; b&aacute;n to&agrave;n bộ 106.795 cổ phiếu qua phương thức khớp lệnh v&agrave; thỏa thuận, từ ng&agrave;y 15/10 đến 12/11.</p>\r\n\r\n<p><strong>CTCP Thực phẩm L&acirc;m Đồng (VDL): </strong>Từ ng&agrave;y 15/9 đến 9/10, b&agrave; Trần Ngọc Huệ, em của Th&agrave;nh vi&ecirc;n Ban kiểm so&aacute;t Trần Việt Thắng đ&atilde; b&aacute;n 159.900 cổ phiếu trong số 191.400 đơn vị đăng k&yacute;. B&agrave; Huệ giảm lượng nắm giữ c&ograve;n 31.500 đơn vị, tương đương 0,2% vốn.</p>\r\n\r\n<p>C&ugrave;ng thời gian, &ocirc;ng Thắng đ&atilde; mua 233.300 cổ phiếu trong 300.000 đơn vị đăng k&yacute;, n&acirc;ng lượng nắm giữ l&ecirc;n 233.983 cổ phiếu, tương đương 1,6% vốn.</p>\r\n\r\n<p><strong>CTCP Chế biến Thủy sản Xuất khẩu Minh Hải (JOS):</strong> Chủ tịch HĐQT Nguyễn Tấn Dương đ&atilde; mua 1,3 triệu cổ phiếu v&agrave;o ng&agrave;y 9/10. &Ocirc;ng Dương hiện c&oacute; 6,5 triệu cổ phiếu, tương đương 43,3% vốn.</p>\r\n\r\n<p>C&ugrave;ng ng&agrave;y, Ph&oacute; Chủ tịch HĐQT ki&ecirc;m Gi&aacute;m đốc Nguyễn Ph&uacute; Dũng đ&atilde; mua 703.000 cổ phiếu, n&acirc;ng lượng nắm giữ l&ecirc;n 2,8 triệu đơn vị, tương đương 18,6% vốn.</p>\r\n\r\n<p><strong>CTCP Ph&aacute;t triển C&ocirc;ng vi&ecirc;n c&acirc;y xanh v&agrave; Đ&ocirc; thị Vũng T&agrave;u (UPC): </strong>Tổng gi&aacute;m đốc L&ecirc; Huy Hữu Hiệp đ&atilde; mua 199.454 cổ phiếu trong số 240.000 đơn vị, từ ng&agrave;y 14/9 đến 9/10. &Ocirc;ng Hiệp hiện c&oacute; 862.432 cổ phiếu, tương đương 25,4% vốn.</p>\r\n\r\n<p><strong>CTCP Dược phẩm H&agrave; Nội (DHN): </strong>B&agrave; Đỗ Thị Nga đ&atilde; mua 314.545 cổ phiếu, n&acirc;ng lượng nắm giữ l&ecirc;n 557.839 cổ phiếu, tương đương 8,9% vốn. Ng&agrave;y trở th&agrave;nh cổ đ&ocirc;ng lớn l&agrave; 14/10.</p>\r\n','2020/10/17','cophieu02.png','dinhchung93',6,'Phái Sinh',9,6,'/media/cophieu02.png','10:22','cổ phiếu, ',1,'202010175314'),(7,'Giá vàng hôm nay 17/10: Giá trầm lắng, nhà đầu tư chờ thời','<p>Gi&aacute; v&agrave;ng thế giới tăng nhẹ khi c&aacute;c thị trường chứng kho&aacute;n tiếp tục yếu đi v&agrave; t&igrave;nh h&igrave;nh dịch bệnh Covid-19 căng thẳng ở ch&acirc;u &Acirc;u.</p>\r\n','<p><strong>Gi&aacute; v&agrave;ng trong nước</strong></p>\r\n\r\n<p>Mở cửa thị trường trong nước 17/10, gi&aacute; v&agrave;ng miếng trong nước được Tập Đo&agrave;n V&agrave;ng bạc đ&aacute; qu&yacute; Doji ni&ecirc;m yết ở mức: 55,7 triệu đồng/lượng (mua v&agrave;o) v&agrave; 56,2 triệu đồng/lượng (b&aacute;n ra), giảm 150 ngh&igrave;n ở chiều b&aacute;n ra so với ng&agrave;y h&ocirc;m qua.</p>\r\n\r\n<p>C&ocirc;ng ty v&agrave;ng bạc đ&aacute; qu&yacute; S&agrave;i G&ograve;n ni&ecirc;m yết gi&aacute; v&agrave;ng SJC ở mức 55,82 triệu đồng/lượng (mua v&agrave;o) v&agrave; 56,27 triệu đồng/lượng (b&aacute;n ra) tại H&agrave; Nội. Gi&aacute; v&agrave;ng SJC tại TP.HCM, chiều b&aacute;n ra l&agrave; 56,25 triệu đồng/lượng.</p>\r\n\r\n<p><img alt=\"kết quả kinh doanh\" src=\"https://vnn-imgs-f.vgcloud.vn/2020/10/17/09/img-3139.jpg\" style=\"height:300px; margin:10px; width:326px\" /></p>\r\n\r\n<p>Trong khi đ&oacute;, gi&aacute; v&agrave;ng thế giới ở thời điểm s&aacute;ng nay ni&ecirc;m yết ở mức 1.899,7 USD/ounce ở chiều mua v&agrave;o, b&aacute;n ra ở mức 1.920,2 USD/ounce.</p>\r\n\r\n<p>Mở cửa s&aacute;ng 16/10, gi&aacute; v&agrave;ng miếng trong nước được Tập Đo&agrave;n V&agrave;ng bạc đ&aacute; qu&yacute; Doji ni&ecirc;m yết cho khu vực H&agrave; Nội ở mức: 55,85 triệu đồng/lượng (mua v&agrave;o) v&agrave; 56,25 triệu đồng/lượng (b&aacute;n ra), tăng 100 ngh&igrave;n đồng ở chiều mua v&agrave;o nhưng kh&ocirc;ng đổi ở chiều b&aacute;n ra so với cuối phi&ecirc;n liền trước.</p>\r\n\r\n<p>C&ocirc;ng ty v&agrave;ng bạc đ&aacute; qu&yacute; S&agrave;i G&ograve;n ni&ecirc;m yết gi&aacute; v&agrave;ng SJC &aacute;p dụng cho khu vực H&agrave; Nội ở mức 55,85 triệu đồng/lượng (mua v&agrave;o) v&agrave; 56,32 triệu đồng/lượng (b&aacute;n ra), tăng 150 ngh&igrave;n đồng ở chiều mua v&agrave;o v&agrave; tăng 100 ngh&igrave;n đồng b&aacute;n ra so với cuối phi&ecirc;n giao dịch 15/10.</p>\r\n\r\n<p><strong>Gi&aacute; v&agrave;ng thế giới</strong></p>\r\n\r\n<p>Tr&ecirc;n thị trường v&agrave;ng thế giới, gi&aacute; v&agrave;ng giao ngay tăng 8,4 USD l&ecirc;n 1.909,6 USD/ounce. Gi&aacute; v&agrave;ng tương lai giao th&aacute;ng 11 tr&ecirc;n s&agrave;n Comex New York tăng 4,6 USD l&ecirc;n 1.909,5 USD/ounce.</p>\r\n\r\n<p>Đồng USD tăng gi&aacute;, g&acirc;y trở ngại lớn đối với v&agrave;ng. Th&ecirc;m v&agrave;o đ&oacute;, tiến tr&igrave;nh đạt được thỏa thuận về g&oacute;i k&iacute;ch th&iacute;ch&nbsp;<a href=\"https://vietnamnet.vn/vn/kinh-doanh/\">kinh tế</a> mới của Mỹ đứng ph&oacute; với những ảnh hưởng ti&ecirc;u cực của đại dịch tiếp tục đ&igrave;nh trệ cũng khiến kim loại qu&yacute; n&agrave;y chịu &aacute;p lực giảm gi&aacute;.</p>\r\n\r\n<p>Giới đầu tư nản l&ograve;ng trước sự thiếu tiến triển trong c&aacute;c cuộc đ&agrave;m ph&aacute;n giữa Chủ tịch Hạ viện Nancy Pelosi v&agrave; Bộ trưởng T&agrave;i ch&iacute;nh Steven Mnuchin về g&oacute;i k&iacute;ch th&iacute;ch kinh tế bổ sung.</p>\r\n\r\n<p>Tổng thống Mỹ Donald Trump ng&agrave;y 15/10 cho biết &ocirc;ng sẵn s&agrave;ng n&acirc;ng mức đề xuất về g&oacute;i cứu trợ với đảng D&acirc;n chủ l&ecirc;n 1.800 tỷ USD song &yacute; tưởng n&agrave;y kh&ocirc;ng nhận được sự đồng t&igrave;nh của Thượng viện Mỹ.</p>\r\n\r\n<p>Về dữ liệu kinh tế, Bộ Lao động Mỹ b&aacute;o c&aacute;o, số đơn xin hưởng trợ cấp thất nghiệp tại nước n&agrave;y trong tuần qua đ&atilde; tăng đột biến l&ecirc;n 898.000 người, th&ecirc;m 53.000 người so với con số trong tuần trước.</p>\r\n\r\n<p>Mức tăng tr&ecirc;n đ&atilde; n&acirc;ng số người thất nghiệp l&ecirc;n tương đương mức cuối th&aacute;ng 8, v&agrave; cao hơn so với tuần tệ nhất trong giai đoạn khủng hoảng t&agrave;i ch&iacute;nh to&agrave;n cầu 2008 - 2010.</p>\r\n\r\n<p>Tại ch&acirc;u &Acirc;u, l&agrave;n s&oacute;ng dịch bệnh thứ hai diễn biến ti&ecirc;u cực khiến Ph&aacute;p v&agrave; Anh buộc phải &aacute;p đặt c&aacute;c lệnh gi&atilde;n c&aacute;ch x&atilde; hội mới, bao gồm ban bố t&igrave;nh trạng khẩn cấp v&agrave; giới nghi&ecirc;m h&agrave;ng đ&ecirc;m ở c&aacute;c th&agrave;nh phố tr&ecirc;n khắp đất nước.</p>\r\n\r\n<p><strong>Dự b&aacute;o gi&aacute; v&agrave;ng</strong></p>\r\n\r\n<p>V&agrave;ng, vốn được xem l&agrave; k&ecirc;nh đầu tư an to&agrave;n trong thời kỳ lạm ph&aacute;t v&agrave; đồng tiền mất gi&aacute;, đ&atilde; tăng 25% trong năm nay trong bối cảnh ch&iacute;nh phủ c&aacute;c nước tr&ecirc;n thế giới triển khai nhiều biện ph&aacute;p k&iacute;ch th&iacute;ch chưa từng c&oacute; nhằm giảm bớt t&aacute;c động của đại dịch l&ecirc;n nền kinh tế.</p>\r\n\r\n<p>Edward Meir, nh&agrave; ph&acirc;n t&iacute;ch thuộc ED&amp;F Man Capital Markets, nhận định hy vọng mới về g&oacute;i k&iacute;ch th&iacute;ch kinh tế đ&atilde; th&uacute;c đẩy gi&aacute; v&agrave;ng v&agrave; gi&uacute;p thị trường bỏ qua đ&agrave; tăng của đồng USD. B&ecirc;n cạnh đ&oacute;, v&agrave;ng c&ograve;n nhận được hỗ trợ trước số liệu mới về thị trường việc l&agrave;m Mỹ.</p>\r\n\r\n<p>Chuy&ecirc;n gia Jeffrey Sica, thuộc Sica Wealth Management, cho rằng thống k&ecirc; về việc l&agrave;m cho thấy Mỹ vẫn phải đối mặt với nhiều kh&oacute; khăn v&agrave; ch&iacute;nh phủ nhiều khả năng sẽ phải can thiệp với những chương tr&igrave;nh nới lỏng tiền tệ hơn.</p>\r\n','2020/10/17','gia-vang-hom-nay-12-4-tin-hieu-tang-gia-360x240.jpg','dinhchung93',2,'Chuyện thương trường',7,2,'/media/gia-vang-hom-nay-12-4-tin-hieu-tang-gia-360x240.jpg','10:32','giá vàng , thị trường',1,'202010173889'),(8,'Tín dụng đen\' trực tuyến với những chiêu trò mới','<p>Trong khi &ldquo;t&iacute;n dụng đen&rdquo; theo h&igrave;nh thức cho vay trực tiếp đang c&agrave;n qu&eacute;t nhiều v&ugrave;ng qu&ecirc; th&igrave; thời gian gần đ&acirc;y, với sự ph&aacute;t triển của c&ocirc;ng nghệ đ&atilde; nở rộ loại h&igrave;nh t&iacute;n dụng đen mới - cho vay trực tuyến, qua mạng internet.</p>\r\n','<p>Thủ tục vay đơn giản, giải ng&acirc;n nhanh ch&oacute;ng đ&atilde; khiến cho con nợ &ldquo;sập bẫy t&iacute;n dụng đen&rdquo; với l&atilde;i suất l&ecirc;n tới cả ngh&igrave;n phần trăm một năm v&agrave; g&acirc;y ra nhiều hệ lụy to lớn... Trước thực trạng đ&oacute;, c&aacute;c cơ quan chức năng của Bộ C&ocirc;ng an đ&atilde; l&ecirc;n tiếng cảnh b&aacute;o người d&acirc;n về những thủ đoạn cho vay l&atilde;i tr&ecirc;n mạng nhằm ngăn chặn những chi&ecirc;u tr&ograve; mới của tội phạm.</p>\r\n\r\n<p><strong>Nhiều người d&iacute;nh &ldquo;bẫy&rdquo;</strong></p>\r\n\r\n<p>Hoạt động&nbsp;<a href=\"https://vietnamnet.vn/cho-vay-nang-lai-tag11725.html\">cho vay trực tuyến</a>&nbsp;khi c&aacute;c đối tượng trong đ&oacute; c&oacute; cả người nước ngo&agrave;i sử dụng c&aacute;c website, ứng dụng điện thoại di động (App) để tiếp cận, quảng c&aacute;o cho vay t&agrave;i ch&iacute;nh đến người d&acirc;n với thủ tục đơn giản, người vay tiền cần cung cấp ảnh, CMND/CCCD hoặc giấy ph&eacute;p l&aacute;i xe v&agrave; sổ hộ khẩu với số t&agrave;i khoản ng&acirc;n h&agrave;ng.&nbsp;</p>\r\n\r\n<p>Số tiền vay c&oacute; thể từ v&agrave;i triệu đến h&agrave;ng trăm triệu đồng, tiền vay sẽ được chuyển v&agrave;o t&agrave;i khoản ng&acirc;n h&agrave;ng của người vay. C&aacute;c đối tượng quy định biến tướng về l&atilde;i suất bằng c&aacute;ch thu c&aacute;c khoản ph&iacute; dịch vụ, nếu cộng cả tiền l&atilde;i suất v&agrave; ph&iacute; c&oacute; thể l&ecirc;n đến 1.400%/năm.</p>\r\n\r\n<p>C&oacute; thể thấy chưa bao giờ việc vay tiền lại dễ như hiện nay. Chỉ cần gọi v&agrave;o số điện thoại từ c&aacute;c trang quảng c&aacute;o hoặc tờ rơi của c&aacute;c &ldquo;doanh nghiệp t&agrave;i ch&iacute;nh&rdquo;, rất nhanh, bạn sẽ được c&aacute;c &ldquo;tư vấn vi&ecirc;n&rdquo; ch&agrave;o đ&oacute;n bằng những hứa hẹn hấp dẫn v&agrave; hướng dẫn rất nhiệt t&igrave;nh c&aacute;c thủ tục để vay tiền.&nbsp;</p>\r\n\r\n<p>V&agrave; khi bạn đ&atilde; ho&agrave;n tất c&aacute;c thủ tục đ&oacute;, chỉ gồm những việc đơn giản như: Đưa ra giấy tờ nh&agrave; đất, chứng minh thư, sổ hộ khẩu, đăng k&yacute; xe m&aacute;y, bằng l&aacute;i xe, thậm ch&iacute; chỉ cần thẻ sinh vi&ecirc;n, thẻ học sinh, hay đến cả&hellip; thẻ thư viện, b&ecirc;n cho vay tiền cũng chấp nhận.</p>\r\n\r\n<p>Kh&ocirc;ng những vậy, qu&aacute; tr&igrave;nh ho&agrave;n tất c&aacute;c thủ tục cho vay cũng hết sức ch&oacute;ng v&aacute;nh. Chỉ cần khoảng 30 ph&uacute;t l&agrave; người vay c&oacute; thể đ&atilde; được nhận tiền. C&ograve;n l&atilde;i suất vay? Thoạt nghe qua cũng thấy dễ chấp nhận, bởi l&atilde;i suất bao giờ cũng thấp hơn 20%, nghĩa l&agrave; dưới mức cho ph&eacute;p của Luật T&iacute;n dụng.&nbsp;</p>\r\n\r\n<p>Thậm ch&iacute; c&oacute; nhiều &ldquo;doanh nghiệp&rdquo; quả quyết rằng, việc l&agrave;m của họ chỉ xuất ph&aacute;t từ &yacute; tưởng muốn gi&uacute;p đỡ mọi người, đặc biệt l&agrave; gi&uacute;p đỡ những học sinh, sinh vi&ecirc;n trong học tập hoặc muốn khởi nghiệp. Do đ&oacute; l&atilde;i suất chỉ v&agrave;o khoảng v&agrave;i phần trăm, thậm ch&iacute; kh&ocirc;ng l&atilde;i suất&hellip;&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, khi mọi việc k&yacute; t&aacute; đ&atilde; xong xu&ocirc;i, đến l&uacute;c giao nhận tiền th&igrave; mới xuất hiện h&agrave;ng loạt những chi ph&iacute; &ldquo;ph&aacute;t sinh&rdquo; được đưa ra khiến mức &ldquo;l&atilde;i suất thấp&rdquo; kể cả mức &ldquo;kh&ocirc;ng l&atilde;i suất&rdquo; kia cao vọt l&ecirc;n ngất ngưởng khiến người vay khiếp v&iacute;a, nhưng tất cả trở th&agrave;nh &ldquo;sự đ&atilde; rồi&rdquo;&hellip;</p>\r\n\r\n<p>Tr&ecirc;n thực tế, đ&atilde; c&oacute; rất nhiều trường hợp người vay tiền sa bẫy &ldquo;t&iacute;n dụng đen&rdquo;, rồi l&atilde;i cũ đẻ l&atilde;i mới, c&oacute; khi đ&atilde; trả gấp mấy lần số tiền đ&atilde; vay m&agrave; vẫn kh&ocirc;ng hết nợ. Bị c&aacute;c nh&oacute;m x&atilde; hội đen truy bức, đe dọa, khủng bố... Trường hợp của người nh&agrave; anh CH ở quận 3, TP HCM l&agrave; một v&iacute; dụ điển h&igrave;nh.&nbsp;</p>\r\n\r\n<p>C&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, anh C.H nhận được cuộc điện thoại của một c&ocirc;ng ty t&agrave;i ch&iacute;nh chuyển lời đ&ograve;i nợ đến một người th&acirc;n của anh. Hỏi ra mới biết, h&oacute;a ra người th&acirc;n của anh C.H trong l&uacute;c gặp kh&oacute; khăn t&agrave;i ch&iacute;nh v&agrave; ngại &ldquo;mở lời&rdquo; với người nh&agrave; n&ecirc;n đ&atilde; v&agrave;o mạng x&atilde; hội, click chuột v&agrave;o trang web cho vay tiền để vay 7 triệu đồng trong thời gian 7 ng&agrave;y. Tuy nhi&ecirc;n, số tiền người n&agrave;y thực nhận chỉ c&oacute; 4,3 triệu đồng, c&ograve;n lại l&agrave; trả ph&iacute; dịch vụ v&agrave; l&atilde;i vay.&nbsp;</p>\r\n\r\n<p>Qua 7 ng&agrave;y, người vay chưa trả được số tiền tr&ecirc;n th&igrave; lập tức bị phạt tiền 400.000/ng&agrave;y v&agrave; chỉ trong một tuần, số tiền nợ đ&atilde; l&ecirc;n đến hơn 10 triệu đồng. Để tất to&aacute;n khoản vay v&agrave; l&atilde;i n&agrave;y, người n&agrave;y tiếp tục vay 20 triệu đồng ở những app cho vay kh&aacute;c, nhưng thực tế cũng bị &aacute;p dụng ph&iacute;, l&atilde;i vay như tr&ecirc;n. D&ugrave; vay 20 triệu, nhưng chỉ nhận được hơn 10 triệu đồng.&nbsp;</p>\r\n\r\n<p>Khi khoản nợ ng&agrave;y c&agrave;ng lớn, khi kh&ocirc;ng trả đ&uacute;ng hạn, c&aacute;c đối tượng n&agrave;y li&ecirc;n tục điện thoại, nhắn tin cho cả gia đ&igrave;nh, người th&acirc;n v&agrave; bạn b&egrave; của người vay tiền nhằm g&acirc;y &aacute;p lực trả nợ... &ldquo;Họ to&agrave;n canh v&agrave;o giờ giữa trưa hoặc buổi tối để gọi điện khiến người nh&agrave; rất căng thẳng v&agrave; kh&oacute; chịu&rdquo; - anh C.H chia sẻ.</p>\r\n\r\n<p><strong>Nhiều app cho vay bất hợp ph&aacute;p</strong></p>\r\n\r\n<p>Trước thực trạng &ldquo;t&iacute;n dụng đen&rdquo; tr&ecirc;n mạng nở rộ, thời gian qua c&aacute;c cơ quan chức năng đ&atilde; tổ chức triển khai nhiều đợt truy qu&eacute;t, khởi tố, xử l&yacute; nghi&ecirc;m minh nhiều băng nh&oacute;m &ldquo;t&iacute;n dụng đen&rdquo;.&nbsp;</p>\r\n\r\n<p>Cụ thể, ng&agrave;y 17/9/2019, C&ocirc;ng an TP HCM đ&atilde; triệt ph&aacute; đường d&acirc;y cho vay nặng l&atilde;i do người nước ngo&agrave;i cầm đầu gồm 6 người Trung Quốc, 3 người Việt Nam, c&aacute;c đối tượng lập 2 c&ocirc;ng ty đang hoạt động cho vay t&iacute;n chấp do một người Việt Nam v&agrave; một người Trung Quốc cầm đầu, c&ugrave;ng 30 nh&acirc;n vi&ecirc;n l&agrave;m việc. Sau khi tạo ứng dụng do người Trung Quốc lập, c&aacute;c nh&acirc;n vi&ecirc;n th&ocirc;ng qua mạng x&atilde; hội quảng c&aacute;o về h&igrave;nh thức cho vay tiền qua ứng dụng n&agrave;y tr&ecirc;n điện thoại di động.&nbsp;</p>\r\n\r\n<p>Kh&aacute;ch c&oacute; nhu cầu vay phải cung cấp th&ocirc;ng tin, số t&agrave;i khoản ng&acirc;n h&agrave;ng, số điện thoại người th&acirc;n. C&ocirc;ng ty sẽ thẩm định, nếu đủ điều kiện sẽ giải ng&acirc;n v&agrave; chuyển tiền v&agrave;o số t&agrave;i khoản. Số tiền c&ocirc;ng ty cho vay khoảng 1,2-4 triệu đồng trong 6 ng&agrave;y (l&atilde;i suất mỗi ng&agrave;y l&agrave; 4%, tương đương 1.460%/năm).</p>\r\n\r\n<p>Mới đ&acirc;y nhất, th&aacute;ng 4-2020, C&ocirc;ng an TP HCM cũng đ&atilde; triệt ph&aacute; một đường d&acirc;y cho vay nặng l&atilde;i qua app với l&atilde;i suất 1.095%/năm, với hơn 60.000 nạn nh&acirc;n đ&atilde; bị &ldquo;sập bẫy&rdquo;. Kh&ocirc;ng cần n&oacute;i th&igrave; ai cũng biết, h&agrave;ng ngh&igrave;n &ldquo;con nợ&rdquo; của c&aacute;c app t&iacute;n dụng đen hầu hết l&agrave; những người ngh&egrave;o, đ&atilde; phải l&acirc;m v&agrave;o cảnh nợ nần chồng chất, hết đường &ldquo;gỡ&rdquo;.</p>\r\n\r\n<p>Theo lực lượng chức năng, một trong những đặc điểm chung dễ nhận thấy của hoạt động &ldquo; t&iacute;n dụng đen&rdquo; trực tuyến l&agrave; vay tiền trực tuyến qua c&aacute;c app cho vay. C&aacute;c app cho vay trực tuyến n&agrave;y thời gian gần đ&acirc;y &ldquo;nở rộ&rdquo; tr&ecirc;n mạng, được quảng c&aacute;o đầy rẫy tr&ecirc;n Internet, c&aacute;c trang mạng x&atilde; hội như Facebook, Youtube&hellip; để người c&oacute; nhu cầu vay tiền tự li&ecirc;n lạc.&nbsp;</p>\r\n\r\n<p>Chỉ cần g&otilde; c&aacute;c cụm từ &ldquo;vay tiền online&rdquo;, &ldquo;vay tiền nhanh&rdquo;&hellip; trang t&igrave;m kiếm Google sẽ cho ra h&agrave;ng triệu kết quả kh&aacute;c nhau về c&aacute;c app cho vay hiện nay. C&aacute;c ứng dụng n&agrave;y y&ecirc;u cầu người vay tiền tạo 1 t&agrave;i khoản bằng c&aacute;ch cung cấp c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n (h&igrave;nh ảnh, số CMND, h&igrave;nh CMND, số t&agrave;i khoản ng&acirc;n h&agrave;ng&hellip;) v&agrave; đồng &yacute; c&aacute;c điều khoản tr&ecirc;n hợp đồng điện tử do ứng dụng soạn sẵn; trong đ&oacute; c&oacute; điều khoản buộc người vay đồng &yacute; cho ứng dụng truy cập danh bạ tr&ecirc;n điện thoại di động.&nbsp;</p>\r\n\r\n<p>Nếu người vay thỏa m&atilde;n đầy đủ điều kiện vay tiền th&igrave; hệ thống t&agrave;i khoản của c&ocirc;ng ty sẽ tự động chuyển tiền v&agrave;o t&agrave;i khoản c&aacute; nh&acirc;n của người vay. C&aacute;ch thức vay nhanh gọn nhưng chi ph&iacute; l&agrave;m thủ tục dịch vụ rất cao; đặc biệt l&atilde;i suất rất cao khi qu&aacute; thời hạn tất to&aacute;n trả nợ gốc lẫn l&atilde;i k&egrave;m theo l&agrave; h&igrave;nh thức đ&ograve;i nợ rất &ldquo;khủng bố&rdquo;.</p>\r\n\r\n<p>Mặc d&ugrave; phổ biến l&agrave; vậy, nhưng theo th&ocirc;ng tin từ Ng&acirc;n h&agrave;ng Nh&agrave; nước, cả nước hiện chỉ c&oacute; 39 c&ocirc;ng ty cho vay ngang h&agrave;ng (P2P lending) được cấp ph&eacute;p hoạt động.&nbsp;</p>\r\n\r\n<p>Trong khi đ&oacute;, qua r&agrave; so&aacute;t của lực lượng C&ocirc;ng an c&aacute;c địa phương cho thấy, hiện cả nước c&oacute; hơn 100 c&ocirc;ng ty hoạt động P2P Lending, tập trung chủ yếu ở H&agrave; Nội v&agrave; TP HCM, thu h&uacute;t tiền của c&aacute;c nh&agrave; đầu tư, sau đ&oacute; kết nối cho c&aacute;c doanh nghiệp nhỏ, c&aacute; nh&acirc;n vay tiền n&oacute;ng, vay tiền nhanh. Điều n&agrave;y cho thấy c&oacute; nhiều app cho vay đang hoạt động bất hợp ph&aacute;p tr&ecirc;n thị trường hiện .</p>\r\n\r\n<p>Trước những hiện tượng tr&ecirc;n, vừa qua Bộ C&ocirc;ng an đ&atilde; l&ecirc;n tiếng cảnh b&aacute;o người d&acirc;n về những thủ đoạn cho vay l&atilde;i tr&ecirc;n mạng. Theo Bộ C&ocirc;ng an, c&aacute;c đối tượng d&ugrave;ng thủ đoạn cho vay qua c&aacute;c ứng dụng tr&ecirc;n mạng Internet với l&atilde;i suất 4,4%/ng&agrave;y, tương đương 30,8%/tuần, 132%/th&aacute;ng v&agrave; 1.600%/năm; tất cả c&aacute;c giao dịch của người vay v&agrave; người cho vay tiền đều được thực hiện th&ocirc;ng qua mạng Internet v&agrave; điện thoại di động.&nbsp;</p>\r\n\r\n<p>Khi người vay kh&ocirc;ng trả nợ đ&uacute;ng hạn sẽ bị c&aacute;c đối tượng gọi điện, nhắn qua mạng g&acirc;y sức &eacute;p, thậm ch&iacute; đe dọa đến t&iacute;nh mạng, buộc người vay tiền phải trả hết c&aacute;c khoản l&atilde;i v&agrave; gốc, với l&atilde;i suất rất cao.</p>\r\n\r\n<p>Bộ C&ocirc;ng an nhấn mạnh, b&ecirc;n cạnh việc cần b&aacute;o ngay cho cơ quan chức năng, trước hết, những người c&oacute; nhu cầu vay tiền cần thận trọng, c&acirc;n nhắc kỹ khi giao dịch. Nếu thật sự cần thiết th&igrave; phải lựa chọn đơn vị cung cấp dịch vụ, thể hiện đầy đủ th&ocirc;ng tin như: t&ecirc;n c&ocirc;ng ty, c&oacute; m&atilde; số doanh nghiệp, địa chỉ, điện thoại đầy đủ, cụ thể. Ngo&agrave;i ra phải xem x&eacute;t thật kỹ c&aacute;c điều khoản để tr&aacute;nh bị sa bẫy&nbsp;<a href=\"https://vietnamnet.vn/tin-dung-den-tag57971.html\">t&iacute;n dụng đen</a>.<img alt=\"crying\" src=\"http://127.0.0.1:8000/static/ckeditor/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /><img alt=\"crying\" src=\"http://127.0.0.1:8000/static/ckeditor/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /></p>\r\n\r\n<p><em>Ng&agrave;y 25/4/2019, Thủ tướng Ch&iacute;nh phủ ban h&agrave;nh Chỉ thị số 12/CT-TTg về việc tăng cường ph&ograve;ng ngừa, đấu tranh với tội phạm v&agrave; vi phạm ph&aacute;p luật li&ecirc;n quan đến hoạt động &ldquo;t&iacute;n dụng đen&rdquo;.&nbsp;</em></p>\r\n\r\n<p><em>L&agrave; lực lượng n&ograve;ng cốt trong đấu tranh ph&ograve;ng chống tội phạm, c&ugrave;ng với việc phối hợp với Ng&acirc;n h&agrave;ng Nh&agrave; nước v&agrave; c&aacute;c bộ, ng&agrave;nh li&ecirc;n quan, c&aacute;c tổ chức ch&iacute;nh trị x&atilde; hội tuy&ecirc;n truyền để người d&acirc;n hiểu r&otilde; bản chất của t&iacute;n dụng đen, ho&agrave;n thiệc c&aacute;c văn bản quy phạm ph&aacute;p luật trong việc xử l&yacute; t&iacute;n dụng đen, Bộ C&ocirc;ng an đ&atilde; chỉ đạo C&ocirc;ng an c&aacute;c cấp tiến h&agrave;nh c&aacute;c biện ph&aacute;p nhằm n&acirc;ng cao hiệu quả c&ocirc;ng t&aacute;c quản l&yacute; nh&agrave; nước về ANTT. Tăng cường c&ocirc;ng t&aacute;c quản l&yacute; nh&acirc;n khẩu, hộ khẩu, quản l&yacute; lưu tr&uacute;.&nbsp;</em></p>\r\n\r\n<p><em>Siết chặt việc cấp, đổi giấy chứng nhận đủ điều kiện về ANTT đối với c&aacute;c cơ sở cầm đồ. Y&ecirc;u cầu c&aacute;c chủ cơ sở cầm đồ, cơ sở hoạt động kinh doanh c&oacute; điều kiện về ANTT k&yacute; cam kết kh&ocirc;ng tiếp tay hoặc tham gia hoạt động &ldquo;t&iacute;n dụng đen&rdquo;. Đẩy mạnh phong tr&agrave;o to&agrave;n d&acirc;n bảo vệ an ninh Tổ quốc, phong tr&agrave;o tố gi&aacute;c tội phạm li&ecirc;n quan đến &ldquo;t&iacute;n dụng đen.&nbsp;</em></p>\r\n\r\n<p><em>Tăng cường quản l&yacute; c&aacute;c đối tượng c&oacute; tiền &aacute;n, tiền sự, đối tượng hoạt động lưu động, đối tượng lưu manh, c&ocirc;n đồ, đối tượng nghiện ma t&uacute;y tr&ecirc;n địa b&agrave;n để kịp thời ph&aacute;t hiện c&aacute;c h&agrave;nh vi, biểu hiện hoạt động cho vay l&atilde;i nặng, đ&ograve;i nợ thu&ecirc; tr&ecirc;n địa b&agrave;n. Tổ chức c&aacute;c đợt cao điểm tấn c&ocirc;ng trấn &aacute;p tội phạm.<br />\r\nĐiều 468 Luật t&iacute;n dụng quy định về l&atilde;i suất như sau: L&atilde;i suất vay do c&aacute;c b&ecirc;n thỏa thuận. Trường hợp c&aacute;c b&ecirc;n c&oacute; thỏa thuận về l&atilde;i suất th&igrave; l&atilde;i suất theo thỏa thuận kh&ocirc;ng được vượt qu&aacute; 20%/năm của khoản tiền vay. Trường hợp l&atilde;i suất theo thỏa thuận vượt qu&aacute; l&atilde;i suất giới hạn được quy định tại khoản n&agrave;y th&igrave; mức l&atilde;i suất vượt qu&aacute; kh&ocirc;ng c&oacute; hiệu lực. Như vậy bất kỳ hoạt động cho vay n&agrave;o m&agrave; vượt qu&aacute; quy định tr&ecirc;n th&igrave; đều l&agrave; vi phạm Luật m&agrave; bị xử l&yacute; theo ph&aacute;p luật.</em></p>\r\n','2020/10/17','vay-tien-140x93.jpg','dinhchung93',2,'Chuyện thương trường',16,2,'/media/vay-tien-140x93.jpg','10:45','vay tiền , tín dụng đen',1,'202010171004'),(9,'Huy động kỷ lục gần 1 tỷ USD trái phiếu doanh nghiệp trong 1 ngày','<p>Khoảng 83.800 tỷ đồng đ&atilde; đổ v&agrave;o tr&aacute;i phiếu ri&ecirc;ng lẻ trong th&aacute;ng 8, chiếm gần 28% gi&aacute; trị huy động từ đầu năm đến nay. Xu&acirc;n Thiện Group, Đầu tư Quang Thuận, Sovico Holdings... l&agrave; c&aacute;c đơn vị t&iacute;ch cực ph&aacute;t h&agrave;nh tr&aacute;i phiếu trong th&aacute;ng 8.</p>\r\n','<p>Thống k&ecirc; của <em>Người Đồng H&agrave;nh</em> theo c&ocirc;ng bố t&iacute;nh đến 2/10, khoảng 83.800 tỷ đồng đ&atilde; đổ v&agrave;o thị trường tr&aacute;i phiếu ri&ecirc;ng lẻ trong th&aacute;ng 8, chiếm gần 28% gi&aacute; trị huy động từ đầu năm đến nay. Trong đ&oacute;, 65.760 tỷ đồng tr&aacute;i phiếu được ph&aacute;t h&agrave;nh v&agrave;o 10 ng&agrave;y cuối th&aacute;ng 8, ri&ecirc;ng ng&agrave;y 31/8 l&agrave; 22.400 tỷ đồng (gần 1 tỷ USD). Đ&acirc;y l&agrave; kỷ lục về khối lượng ph&aacute;t h&agrave;nh tr&aacute;i phiếu doanh nghiệp t&iacute;nh theo th&aacute;ng v&agrave; theo ng&agrave;y.</p>\r\n\r\n<p>Đ&acirc;y c&oacute; thể chưa phải l&agrave; con số tổng cuối c&ugrave;ng. Theo quy định tại Nghị định số 163/2018/NĐ-CP, chậm nhất 5 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y kết th&uacute;c đợt ph&aacute;t h&agrave;nh tr&aacute;i phiếu, tổ chức ph&aacute;t h&agrave;nh phải c&ocirc;ng bố th&ocirc;ng tin về kết quả ph&aacute;t h&agrave;nh cho nh&agrave; đầu tư sở hữu tr&aacute;i phiếu v&agrave; gửi nội dung c&ocirc;ng bố th&ocirc;ng tin đến Sở giao dịch chứng kho&aacute;n (ở đ&acirc;y l&agrave; HNX). Tuy nhi&ecirc;n, việc c&ocirc;ng bố th&ocirc;ng tin về kết quả ph&aacute;t h&agrave;nh của c&aacute;c doanh nghiệp c&ograve;n tương đối chậm trễ, c&oacute;&nbsp;trường hợp chậm đến 5 th&aacute;ng.</p>\r\n\r\n<p><input alt=\"\" src=\"https://i.ndh.vn/2020/10/07/trai-phieu12-9906-1602035933.png\" style=\"margin: 10px; width: 630px; height: 358px;\" type=\"image\" /></p>\r\n\r\n<p>Diễn biến n&agrave;y kh&aacute; dễ hiểu khi Nghị định 81/2020/NĐ-CP sửa đổi, bổ sung Nghị định 163/2018/NĐ-CP quy định về ph&aacute;t h&agrave;nh tr&aacute;i phiếu doanh nghiệp c&oacute; hiệu lực từ 1/9 đưa ra c&aacute;c y&ecirc;u cầu cao hơn đối với tổ chức ph&aacute;t h&agrave;nh khi thực hiện ph&aacute;t h&agrave;nh ri&ecirc;ng lẻ.</p>\r\n\r\n<p>Cụ thể, quy định dự nợ ph&aacute;t h&agrave;nh tr&aacute;i phiếu ri&ecirc;ng lẻ tại thời điểm ph&aacute;t h&agrave;nh (bao gồm cả khối lượng dự kiến ph&aacute;t h&agrave;nh) kh&ocirc;ng vượt qu&aacute; 5 lần vốn chủ sở hữu tại qu&yacute; gần nhất. C&aacute;c đợt ph&aacute;t h&agrave;nh phải c&aacute;ch nhau tối thiểu 6 th&aacute;ng, mỗi đợt phải ho&agrave;n th&agrave;nh trong v&ograve;ng 90 ng&agrave;y kể từ ng&agrave;y c&ocirc;ng bố th&ocirc;ng tin; bắt buộc phải c&oacute; hợp đồng tư vấn với tổ chức tư vấn (c&ocirc;ng ty chứng kho&aacute;n, tổ chức t&iacute;n dụng v&agrave; định chế t&agrave;i ch&iacute;nh kh&aacute;c); bổ sung y&ecirc;u cầu BCTC kiểm to&aacute;n trong hồ sơ ph&aacute;t h&agrave;nh phải c&oacute; &yacute; kiến chấp nhận to&agrave;n phần, nếu ngoại trừ phải c&oacute; giải th&iacute;ch hợp l&yacute; v&agrave; x&aacute;c nhận của kiểm to&aacute;n.</p>\r\n\r\n<p>Trong th&aacute;ng 8, nh&oacute;m doanh nghiệp li&ecirc;n quan tới Xu&acirc;n Thiện Group v&agrave; &ocirc;ng Nguyễn Văn Thiện đứng đầu khối lượng huy động với hơn 10.000 tỷ đồng tr&aacute;i phiếu. T&iacute;nh tổng từ đầu năm đến nay, nh&oacute;m đ&atilde; vay 12.170 tỷ đồng tr&aacute;i phiếu. L&atilde;i suất c&aacute;c l&ocirc; tr&aacute;i phiếu huy động th&aacute;ng 8 kh&ocirc;ng được c&ocirc;ng bố, trong khi c&aacute;c l&ocirc; trước đ&oacute; l&agrave; 10,5%/năm, kỳ hạn trải d&agrave;i từ 1 đến 12 năm.&nbsp;</p>\r\n\r\n<p>Xu&acirc;n Thiện Group l&agrave; chủ đầu tư cụm dự &aacute;n Điện mặt trời Xu&acirc;n Thiện - Ea S&uacute;p, huyện Ea S&uacute;p, tỉnh Đắk Lắk với tổng mức đầu tư hơn 50.000 tỷ đồng.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Đầu tư Quang Thuận &ndash; doanh nghiệp li&ecirc;n quan đến Vạn Thịnh Ph&aacute;t, Saigon Glory &ndash; c&ocirc;ng ty con 100% vốn Bitexco, Sovico Holdings v&agrave; Ph&uacute; Long, Vingroup th&ocirc;ng qua VinSmart v&agrave; Vinpearl, Masan Group v&agrave; Novaland cũng huy động h&agrave;ng ngh&igrave;n tỷ đồng tr&aacute;i phiếu.</p>\r\n\r\n<p>Đối với nh&oacute;m ng&acirc;n h&agrave;ng, 9 đơn vị ph&aacute;t h&agrave;nh tr&aacute;i phiếu ri&ecirc;ng lẻ trong th&aacute;ng 8 với tổng gi&aacute; trị th&agrave;nh c&ocirc;ng hơn 13.360 tỷ đồng. Ri&ecirc;ng BIDV v&agrave; VietinBank c&oacute; kỳ hạn tr&ecirc;n 5 năm để bổ sung vốn cấp 2, c&aacute;c đơn vị c&ograve;n lại chủ yếu kỳ hạn 3 năm.&nbsp;</p>\r\n','2020/10/17','tientraiphieu-1602035923_600x400.jpg','dinhchung93',6,'Trái Phiếu',36,6,'/media/tientraiphieu-1602035923_600x400.jpg','10:54','trái phiếu riêng lẻ, Vingroup phát hành trái phiếu',1,'202010178737'),(10,'VinSmart huy động 3.000 tỷ đồng trái phiếu','<p>Trong năm 2020, c&aacute;c đơn vị th&agrave;nh vi&ecirc;n của Vingroup l&agrave; một trong những nh&agrave; ph&aacute;t h&agrave;nh ch&iacute;nh tr&ecirc;n thị trường tr&aacute;i phiếu. Đến hết th&aacute;ng 3/2020, VinSmart đ&atilde; ra mắt thị trường 12 mẫu điện thoại v&agrave; 5 mẫu ti vi th&ocirc;ng minh.</p>\r\n\r\n<p>&nbsp;</p>\r\n','<p>Điểm lại, trung tuần th&aacute;ng 6/2020, VinSmart đ&atilde; b&aacute;n to&agrave;n bộ 42,2 triệu cổ phiếu Vinhomes (VHM ), tương đương 1,3% vốn chỉ sau 1 th&aacute;ng mua v&agrave;o.&nbsp;Phi&ecirc;n giao dịch 15/6 cũng chứng kiến giao dịch thỏa thuận 201 triệu cổ phiếu Vinhomes với gi&aacute; 75.000 đồng/cp, tương ứng gi&aacute; trị khoảng 15.100 tỷ đồng.&nbsp;</p>\r\n\r\n<p>Tạm t&iacute;nh nếu VinSmart mua to&agrave;n bộ lượng cổ phiếu n&oacute;i tr&ecirc;n theo gi&aacute; thỏa thuận phi&ecirc;n ng&agrave;y 28/5 l&agrave; 70.000 đồng/cp, thương vụ c&oacute; lời khoảng 210 tỷ đồng.</p>\r\n\r\n<p>Trong năm 2020, c&aacute;c đơn vị th&agrave;nh vi&ecirc;n của Vingroup l&agrave; một trong những nh&agrave; ph&aacute;t h&agrave;nh ch&iacute;nh tr&ecirc;n thị trường tr&aacute;i phiếu. VinHomes v&agrave; c&ocirc;ng ty con Th&agrave;nh phố Xanh đ&atilde; ph&aacute;t h&agrave;nh lần lượt 12.000 tỷ v&agrave; 2.000 tỷ tr&aacute;i phiếu; Vincom Retail ph&aacute;t h&agrave;nh 1.050 tỷ đồng. V&agrave;o cuối năm 2019, VinFast cũng ph&aacute;t h&agrave;nh th&agrave;nh c&ocirc;ng 10.000 tỷ tr&aacute;i phiếu.</p>\r\n\r\n<p>Về VinSmart, đ&acirc;y l&agrave; c&ocirc;ng ty sản xuất v&agrave; ph&acirc;n phối c&aacute;c thiết bị viễn th&ocirc;ng trực thuộc tập đo&agrave;n Vingroup do Phạm Nhật Vượng th&agrave;nh lập ng&agrave;y 12/6/2018. VinSmart sử dụng bản quyền sở hữu tr&iacute; tuệ từ BQ, một c&ocirc;ng ty sản xuất thiết bị truyền th&ocirc;ng th&agrave;nh lập năm 2010 tại T&acirc;y Ban Nha. VinSmart g&acirc;y nhiều ch&uacute; &yacute; với tốc độ thần tốc, chỉ sau 6 th&aacute;ng th&agrave;nh lập đ&atilde; cho ra đời sản phẩm đầu ti&ecirc;n. Trong đ&oacute;, thương hiệu chọn khởi nghiệp từ ph&acirc;n kh&uacute;c phổ th&ocirc;ng v&agrave; tầm trung, hiện cũng l&agrave; ph&acirc;n kh&uacute;c c&oacute; quy m&ocirc; lớn nhất ng&agrave;nh hiện nay.</p>\r\n\r\n<p>T&iacute;nh đến hết th&aacute;ng 3/2020, VinSmart đ&atilde; ra mắt thị trường 12 mẫu điện thoại v&agrave; 5 mẫu ti vi th&ocirc;ng minh. Theo kế hoạch năm nay, VinSmart sẽ ra mắt một số mẫu điện thoại th&ocirc;ng minh trong đ&oacute; c&oacute; c&aacute;c mẫu điện thoại 5G đầu ti&ecirc;n mang thương hiệu Việt, c&aacute;c mẫu TV sử dụng c&ocirc;ng nghệ Oled.</p>\r\n\r\n<p>CTCP Nghi&ecirc;n cứu v&agrave; sản xuất VinSmart (VinSmart) vừa c&ocirc;ng bố phương &aacute;n huy động tr&aacute;i phiếu với gi&aacute; trị tổng cộng 950 tỷ, th&ocirc;ng qua 10 đợt ph&aacute;t h&agrave;nh ri&ecirc;ng lẻ, thời gian thực hiện v&agrave; ho&agrave;n tất chỉ trong 1 ng&agrave;y duy nhất nhằm ng&agrave;y 20/8/2020. Số tr&aacute;i phiếu n&agrave;y đều c&oacute; kỳ hạn 36 th&aacute;ng (3 năm). Mức l&atilde;i suất v&agrave; danh t&iacute;nh tr&aacute;i chủ kh&ocirc;ng được tiết lộ.</p>\r\n\r\n<p>Với sự huy động nhanh ch&oacute;ng l&ocirc; tr&aacute;i phiếu tr&ecirc;n, VinSmart tiếp tục l&ecirc;n kế hoạch ch&agrave;o b&aacute;n tiếp h&agrave;ng chục l&ocirc; tr&aacute;i phiếu với tổng gi&aacute; trị hơn 2.000 tỷ đồng, dự kiến cũng ngay trong th&aacute;ng 8/2020. Với d&ograve;ng vốn 3.000 tỷ đồng tr&aacute;i phiếu, c&ugrave;ng lượng tiền thu hồi tư việc tho&aacute;i vốn Vinhomes kỳ vọng hỗ trợ VinSmart thực hiện những tham vọng lớn thời gian tới.</p>\r\n\r\n<p>V&agrave;o khoảng th&aacute;ng 5/2020, Vsmart trở th&agrave;nh thương hiệu thứ 2 của tập đo&agrave;n Vingroup bắt tay hợp t&aacute;c với Pininfarina. Trong khu&ocirc;n khổ thỏa thuận, 2 b&ecirc;n sẽ c&ugrave;ng x&acirc;y dựng ng&ocirc;n ngữ thiết kế đặc trưng cho c&aacute;c d&ograve;ng smartphone thế hệ mới của VinSmart. H&igrave;nh thức th&acirc;n vỏ, c&aacute;ch thức hiển thị cũng như ng&ocirc;n ngữ vận h&agrave;nh của điện thoại Vsmart đều sẽ được &quot;c&aacute;ch mạng h&oacute;a&quot; th&ocirc;ng qua thỏa thuận n&agrave;y.</p>\r\n\r\n<p>Sau hơn 1 năm tr&igrave;nh l&agrave;ng, Vsmart đang l&agrave; thương hiệu điện thoại thứ 3 ở Việt Nam sau Samsung v&agrave; Apple với thị phần 16,7%. C&aacute;c sản phẩm của VinSmart chiếm lĩnh chủ yếu ở ph&acirc;n kh&uacute;c smartphone phổ th&ocirc;ng c&oacute; gi&aacute; từ 2 triệu trở lại, với thị phần theo tuần c&oacute; l&uacute;c l&ecirc;n tới 75-77%. Tuy nhi&ecirc;n, việc hợp t&aacute;c với Pininfarina cho thấy tham vọng tho&aacute;t khỏi c&aacute;i b&oacute;ng smartphone phổ th&ocirc;ng thương hiệu điện thoại Việt.</p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở thị trường nội địa, VinSmart đặt tham vọng lấn s&acirc;n quốc tế với thị trường trọng điểm l&agrave; Mỹ. Theo người đứng đầu, thị trường Mỹ cũng l&agrave; ph&eacute;p thử để đ&aacute;nh gi&aacute; hiệu quả bởi đ&acirc;y l&agrave; một trong những thị trường kh&oacute; nhất, nếu th&agrave;nh c&ocirc;ng ở Mỹ th&igrave; việc chinh phục c&aacute;c thị trường kh&aacute;c sẽ dễ d&agrave;ng hơn.&nbsp;</p>\r\n\r\n<p>Nh&agrave; m&aacute;y sản xuất VinSmart được x&acirc;y dựng ngay trong Tổ hợp sản xuất &ocirc;t&ocirc; VinFast ở Khu Kinh tế Đ&igrave;nh Vũ - C&aacute;t Hải (Hải Ph&ograve;ng) theo ti&ecirc;u chuẩn quốc tế, c&ocirc;ng suất 5 triệu sản phẩm/năm. Th&aacute;ng 11/2019, C&ocirc;ng ty đ&atilde; kh&aacute;nh th&agrave;nh giai đoạn 1 của Tổ hợp Nh&agrave; m&aacute;y sản xuất thiết bị điện tử tại Khu c&ocirc;ng nghệ cao H&ograve;a Lạc (H&agrave; Nội) c&oacute; tổng c&ocirc;ng suất 125 triệu thiết bị/năm.</p>\r\n','2020/10/17','photo159927639440315992763946831838032014-1599361777_360x240.jpg','dinhchung93',6,'Trái Phiếu',7,6,'/media/photo159927639440315992763946831838032014-1599361777_360x240.jpg','11:0','Vsmart, công ty sản xuất ,tập đoàn Vingroup ,Phạm Nhật Vượng,trái phiếu',1,'202010171514');
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_newsletter`
--

DROP TABLE IF EXISTS `newsletter_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` varchar(70) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_newsletter`
--

LOCK TABLES `newsletter_newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcat_subcat`
--

DROP TABLE IF EXISTS `subcat_subcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcat_subcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcat_subcat`
--

LOCK TABLES `subcat_subcat` WRITE;
/*!40000 ALTER TABLE `subcat_subcat` DISABLE KEYS */;
INSERT INTO `subcat_subcat` VALUES (8,'Cổ Phiếu','Chứng Khoán',6),(9,'Trái Phiếu','Chứng khoán',6),(10,'Phái sinh','Chứng khoán',6),(11,'Quỹ đầu tư','Chứng khoán',6),(12,'Ngân hàng','Tài Chính',1),(13,'Tiền tệ','Tài Chính',1),(14,'Bảo hiểm','Tài Chính',1),(15,'Thuế','Tài Chính',1),(16,'Kết quả kinh doanh','Doanh Nghiệp',2),(17,'Chuyện thương trường','Doanh Nghiệp',2),(18,'Quy hoạch','Bất động sản',3),(19,'Dự án','Bất động sản',3),(20,'Hạ tầng','Bất động sản',3),(21,'Kiến trúc','Bất động sản',3);
/*!40000 ALTER TABLE `subcat_subcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trending_trending`
--

DROP TABLE IF EXISTS `trending_trending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trending_trending` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trending_trending`
--

LOCK TABLES `trending_trending` WRITE;
/*!40000 ALTER TABLE `trending_trending` DISABLE KEYS */;
INSERT INTO `trending_trending` VALUES (1,'Giá vàng hôm nay 17/10: Giá trầm lắng, nhà đầu tư chờ thời'),(2,'Tín dụng đen\' trực tuyến với những chiêu trò mới'),(3,'Huy động kỷ lục gần 1 tỷ USD trái phiếu doanh nghiệp trong 1 ngày');
/*!40000 ALTER TABLE `trending_trending` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17 17:20:39

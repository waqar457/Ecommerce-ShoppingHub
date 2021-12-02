CREATE DATABASE  IF NOT EXISTS `shoppinghub` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shoppinghub`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: shoppinghub
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add customer',7,'add_customer'),(26,'Can change customer',7,'change_customer'),(27,'Can delete customer',7,'delete_customer'),(28,'Can view customer',7,'view_customer'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add order placed',9,'add_orderplaced'),(34,'Can change order placed',9,'change_orderplaced'),(35,'Can delete order placed',9,'delete_orderplaced'),(36,'Can view order placed',9,'view_orderplaced'),(37,'Can add cart',10,'add_cart'),(38,'Can change cart',10,'change_cart'),(39,'Can delete cart',10,'delete_cart'),(40,'Can view cart',10,'view_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$GA26WzLc2LQ7puoAL6Z9Ek$ExyM/qL67v6vH3fLAKRKkSU8X5iD/VsT3k5cRbgm+r0=','2021-12-01 13:29:02.329567',1,'admin','','','',1,1,'2021-11-17 20:33:44.885020'),(2,'pbkdf2_sha256$260000$oZUrnFHJyNkwTGcQ5UYv5Y$fgQKvPUN5mscikvYnYgI+ggcIuWnXnZlv6818qIvCDA=','2021-12-01 14:33:48.338789',0,'waqar95','','','waqarkhan@gmail.com',0,1,'2021-11-19 20:36:20.776579'),(3,'pbkdf2_sha256$260000$gJPjpMq3vJlOMtdYJTwgkP$Aqdu6U0tlf+sX+DprZTnu2k1I1vRewmOgnm7iNw4dsA=','2021-11-24 05:57:59.581438',0,'sonam','','','sonam@gmail.com',0,1,'2021-11-20 08:22:11.843206');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_product_id_508e72da_fk_product_id` (`product_id`),
  KEY `cart_user_id_1361a739_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cart_product_id_508e72da_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `cart_user_id_1361a739_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cart_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (40,2,42,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `locality` varchar(200) NOT NULL,
  `city` varchar(70) NOT NULL,
  `zipcode` int NOT NULL,
  `state` varchar(70) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_user_id_fde49d68_fk_auth_user_id` (`user_id`),
  CONSTRAINT `customer_user_id_fde49d68_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'waqar khan','Hajuri Dhargha','Thane',400604,'Maharashtra',2),(2,'waqar khan','Ragunath Nagar','Thane',400604,'Maharashtra',2),(3,'Sonam Yadav','Ghodhbandar','Thane',400601,'Maharashtra',3),(4,'Sonam Yadav','Balkum','Thane',400601,'Maharashtra',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-18 14:17:10.550040','1','1',1,'[{\"added\": {}}]',8,1),(2,'2021-11-18 14:28:17.946429','1','1',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(3,'2021-11-18 14:29:20.048197','1','1',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(4,'2021-11-18 14:29:49.083108','1','1',2,'[]',8,1),(5,'2021-11-18 18:55:16.081745','2','2',1,'[{\"added\": {}}]',8,1),(6,'2021-11-18 18:56:07.359699','3','3',1,'[{\"added\": {}}]',8,1),(7,'2021-11-18 18:56:36.908093','2','2',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(8,'2021-11-18 18:57:46.121071','4','4',1,'[{\"added\": {}}]',8,1),(9,'2021-11-18 18:58:23.406814','5','5',1,'[{\"added\": {}}]',8,1),(10,'2021-11-18 18:59:19.735583','6','6',1,'[{\"added\": {}}]',8,1),(11,'2021-11-18 19:01:27.028185','7','7',1,'[{\"added\": {}}]',8,1),(12,'2021-11-18 19:02:41.976777','8','8',1,'[{\"added\": {}}]',8,1),(13,'2021-11-18 19:03:34.821551','9','9',1,'[{\"added\": {}}]',8,1),(14,'2021-11-18 19:04:28.896619','10','10',1,'[{\"added\": {}}]',8,1),(15,'2021-11-18 19:04:40.024258','8','8',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(16,'2021-11-18 19:05:40.343896','11','11',1,'[{\"added\": {}}]',8,1),(17,'2021-11-18 19:06:58.806179','12','12',1,'[{\"added\": {}}]',8,1),(18,'2021-11-18 19:07:22.410340','12','12',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(19,'2021-11-18 19:07:34.008600','12','12',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(20,'2021-11-18 19:08:16.891758','13','13',1,'[{\"added\": {}}]',8,1),(21,'2021-11-18 19:08:40.624468','13','13',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(22,'2021-11-18 19:08:52.116424','12','12',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(23,'2021-11-18 19:11:47.942246','14','14',1,'[{\"added\": {}}]',8,1),(24,'2021-11-18 19:12:24.335674','15','15',1,'[{\"added\": {}}]',8,1),(25,'2021-11-18 19:13:16.298187','16','16',1,'[{\"added\": {}}]',8,1),(26,'2021-11-18 19:14:02.015967','17','17',1,'[{\"added\": {}}]',8,1),(27,'2021-11-18 19:14:58.616560','18','18',1,'[{\"added\": {}}]',8,1),(28,'2021-11-18 19:15:58.976476','19','19',1,'[{\"added\": {}}]',8,1),(29,'2021-11-18 19:16:40.391773','20','20',1,'[{\"added\": {}}]',8,1),(30,'2021-11-21 13:42:54.983143','1','1',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(31,'2021-11-21 13:45:15.886952','14','14',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(32,'2021-11-21 13:46:51.653097','1','1',2,'[{\"changed\": {\"fields\": [\"Selling price\"]}}]',8,1),(33,'2021-11-21 13:47:19.416607','2','2',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(34,'2021-11-21 13:47:36.226513','3','3',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(35,'2021-11-21 13:47:54.507242','4','4',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(36,'2021-11-21 13:48:59.182674','5','5',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(37,'2021-11-21 13:49:24.129005','6','6',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(38,'2021-11-21 13:49:49.515617','7','7',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(39,'2021-11-21 13:50:06.956662','8','8',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(40,'2021-11-21 13:50:18.559902','9','9',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(41,'2021-11-21 13:50:27.940190','10','10',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(42,'2021-11-21 13:50:47.373858','11','11',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(43,'2021-11-21 13:51:00.218669','12','12',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(44,'2021-11-21 13:51:28.917285','13','13',2,'[{\"changed\": {\"fields\": [\"Selling price\", \"Discounted price\"]}}]',8,1),(45,'2021-11-21 13:52:09.489852','15','15',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(46,'2021-11-21 13:52:29.426799','16','16',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(47,'2021-11-21 13:52:45.816179','17','17',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(48,'2021-11-21 13:53:24.790170','18','18',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(49,'2021-11-21 13:53:35.327287','19','19',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(50,'2021-11-21 13:53:48.097678','20','20',2,'[{\"changed\": {\"fields\": [\"Discounted price\"]}}]',8,1),(51,'2021-11-21 20:17:48.614743','5','5',3,'',10,1),(52,'2021-11-22 20:27:27.855581','2','2',3,'',10,1),(53,'2021-11-23 08:52:21.269535','1','1',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',9,1),(54,'2021-11-24 07:19:23.949639','1','1',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\"]}}]',8,1),(55,'2021-11-24 07:24:25.362304','2','2',2,'[{\"changed\": {\"fields\": [\"Title\", \"Discounted price\", \"Description\", \"Product type\"]}}]',8,1),(56,'2021-11-24 07:25:09.324134','3','3',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\"]}}]',8,1),(57,'2021-11-24 07:28:56.751188','4','4',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Product image\"]}}]',8,1),(58,'2021-11-24 07:35:38.328406','5','5',2,'[{\"changed\": {\"fields\": [\"Title\", \"Product type\", \"Brand\"]}}]',8,1),(59,'2021-11-24 07:36:22.604826','5','5',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(60,'2021-11-24 07:36:58.415795','5','5',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(61,'2021-11-24 07:41:02.181166','6','6',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Product image\"]}}]',8,1),(62,'2021-11-24 07:46:16.584186','7','7',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(63,'2021-11-24 07:49:49.783926','8','8',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(64,'2021-11-24 07:52:13.821339','9','9',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(65,'2021-11-24 07:59:24.024036','10','10',2,'[{\"changed\": {\"fields\": [\"Title\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(66,'2021-11-24 08:05:26.214789','11','11',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Product type\", \"Brand\", \"Product image\"]}}]',8,1),(67,'2021-11-24 08:08:50.173355','12','12',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(68,'2021-11-24 08:11:46.731124','13','13',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(69,'2021-11-24 08:13:18.161812','14','14',2,'[{\"changed\": {\"fields\": [\"Product type\", \"Category\", \"Product image\"]}}]',8,1),(70,'2021-11-24 08:14:39.741433','14','14',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Product type\", \"Brand\"]}}]',8,1),(71,'2021-11-24 08:19:56.340805','15','15',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(72,'2021-11-24 08:24:02.487952','16','16',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(73,'2021-11-24 08:24:02.893717','16','16',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(74,'2021-11-24 08:26:52.253869','17','17',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(75,'2021-11-24 08:29:35.595681','18','18',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(76,'2021-11-24 08:33:21.380698','19','19',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\", \"Product image\"]}}]',8,1),(77,'2021-11-24 08:36:39.804729','20','20',2,'[{\"changed\": {\"fields\": [\"Title\", \"Selling price\", \"Discounted price\", \"Description\", \"Product type\", \"Brand\", \"Category\"]}}]',8,1),(78,'2021-11-24 08:37:02.640696','20','20',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(79,'2021-11-24 08:41:09.755775','21','21',1,'[{\"added\": {}}]',8,1),(80,'2021-11-24 08:41:31.390857','11','11',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(81,'2021-11-24 08:46:16.840591','22','22',1,'[{\"added\": {}}]',8,1),(82,'2021-11-24 08:46:52.468375','22','22',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(83,'2021-11-24 08:50:49.298135','23','23',1,'[{\"added\": {}}]',8,1),(84,'2021-11-24 08:52:18.474551','24','24',1,'[{\"added\": {}}]',8,1),(85,'2021-11-24 08:56:07.775134','25','25',1,'[{\"added\": {}}]',8,1),(86,'2021-11-24 08:58:38.188038','26','26',1,'[{\"added\": {}}]',8,1),(87,'2021-11-24 09:01:14.917520','27','27',1,'[{\"added\": {}}]',8,1),(88,'2021-11-24 09:04:57.868976','28','28',1,'[{\"added\": {}}]',8,1),(89,'2021-11-24 09:08:31.389067','20','20',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(90,'2021-11-24 09:10:24.659570','29','29',1,'[{\"added\": {}}]',8,1),(91,'2021-11-24 09:13:06.958814','30','30',1,'[{\"added\": {}}]',8,1),(92,'2021-11-24 09:14:12.496372','31','31',1,'[{\"added\": {}}]',8,1),(93,'2021-11-24 11:24:32.549972','32','32',1,'[{\"added\": {}}]',8,1),(94,'2021-11-24 11:25:57.608000','33','33',1,'[{\"added\": {}}]',8,1),(95,'2021-11-24 11:27:27.345829','34','34',1,'[{\"added\": {}}]',8,1),(96,'2021-11-24 11:29:00.842380','35','35',1,'[{\"added\": {}}]',8,1),(97,'2021-11-24 11:30:10.761655','22','22',2,'[{\"changed\": {\"fields\": [\"Description\", \"Product image\"]}}]',8,1),(98,'2021-11-24 11:33:02.943733','36','36',1,'[{\"added\": {}}]',8,1),(99,'2021-11-24 11:35:29.639752','37','37',1,'[{\"added\": {}}]',8,1),(100,'2021-11-24 11:36:22.831811','38','38',1,'[{\"added\": {}}]',8,1),(101,'2021-11-24 11:38:15.677102','39','39',1,'[{\"added\": {}}]',8,1),(102,'2021-11-24 11:38:27.523696','38','38',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(103,'2021-11-24 11:38:35.061930','39','39',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(104,'2021-11-24 11:39:25.367381','27','27',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(105,'2021-11-24 12:05:59.150824','40','40',1,'[{\"added\": {}}]',8,1),(106,'2021-11-24 12:08:10.484581','41','41',1,'[{\"added\": {}}]',8,1),(107,'2021-11-24 12:08:25.353735','41','41',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(108,'2021-11-24 12:09:24.887299','42','42',1,'[{\"added\": {}}]',8,1),(109,'2021-11-24 12:11:23.178383','43','43',1,'[{\"added\": {}}]',8,1),(110,'2021-11-24 12:14:36.999801','44','44',1,'[{\"added\": {}}]',8,1),(111,'2021-11-24 12:18:30.757804','41','41',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(112,'2021-11-24 12:18:41.607665','43','43',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(113,'2021-11-24 12:20:58.502094','45','45',1,'[{\"added\": {}}]',8,1),(114,'2021-11-24 12:24:01.276348','46','46',1,'[{\"added\": {}}]',8,1),(115,'2021-11-24 12:25:41.109659','47','47',1,'[{\"added\": {}}]',8,1),(116,'2021-11-24 12:29:03.748946','48','48',1,'[{\"added\": {}}]',8,1),(117,'2021-11-24 12:30:16.913440','49','49',1,'[{\"added\": {}}]',8,1),(118,'2021-11-24 12:31:22.448358','50','50',1,'[{\"added\": {}}]',8,1),(119,'2021-11-24 12:33:23.909749','51','51',1,'[{\"added\": {}}]',8,1),(120,'2021-11-24 12:34:43.686122','52','52',1,'[{\"added\": {}}]',8,1),(121,'2021-11-24 12:36:24.409999','53','53',1,'[{\"added\": {}}]',8,1),(122,'2021-11-24 12:37:30.923471','54','54',1,'[{\"added\": {}}]',8,1),(123,'2021-11-24 12:38:21.588146','55','55',1,'[{\"added\": {}}]',8,1),(124,'2021-11-24 12:46:34.560535','56','56',1,'[{\"added\": {}}]',8,1),(125,'2021-11-24 12:48:06.909853','57','57',1,'[{\"added\": {}}]',8,1),(126,'2021-11-24 12:49:40.397401','58','58',1,'[{\"added\": {}}]',8,1),(127,'2021-11-24 13:02:11.922239','59','59',1,'[{\"added\": {}}]',8,1),(128,'2021-11-24 13:06:06.467219','60','60',1,'[{\"added\": {}}]',8,1),(129,'2021-11-24 13:08:47.899027','61','61',1,'[{\"added\": {}}]',8,1),(130,'2021-11-24 13:10:44.826575','62','62',1,'[{\"added\": {}}]',8,1),(131,'2021-11-24 13:10:56.022005','61','61',2,'[{\"changed\": {\"fields\": [\"Product type\"]}}]',8,1),(132,'2021-11-24 13:12:32.562565','63','63',1,'[{\"added\": {}}]',8,1),(133,'2021-11-24 13:15:58.552179','64','64',1,'[{\"added\": {}}]',8,1),(134,'2021-11-24 13:17:40.196860','65','65',1,'[{\"added\": {}}]',8,1),(135,'2021-11-24 13:19:10.942780','66','66',1,'[{\"added\": {}}]',8,1),(136,'2021-11-24 13:21:01.829851','67','67',1,'[{\"added\": {}}]',8,1),(137,'2021-11-24 13:22:12.681325','68','68',1,'[{\"added\": {}}]',8,1),(138,'2021-11-24 13:23:57.413671','69','69',1,'[{\"added\": {}}]',8,1),(139,'2021-11-24 13:25:00.063927','70','70',1,'[{\"added\": {}}]',8,1),(140,'2021-11-24 13:27:10.814907','71','71',1,'[{\"added\": {}}]',8,1),(141,'2021-11-24 13:28:15.304170','72','72',1,'[{\"added\": {}}]',8,1),(142,'2021-11-24 13:29:52.636887','73','73',1,'[{\"added\": {}}]',8,1),(143,'2021-11-24 13:31:36.158654','74','74',1,'[{\"added\": {}}]',8,1),(144,'2021-11-24 13:32:41.213437','75','75',1,'[{\"added\": {}}]',8,1),(145,'2021-11-24 13:33:55.365095','76','76',1,'[{\"added\": {}}]',8,1),(146,'2021-11-24 13:34:47.949618','77','77',1,'[{\"added\": {}}]',8,1),(147,'2021-11-24 13:35:56.888144','78','78',1,'[{\"added\": {}}]',8,1),(148,'2021-11-24 13:37:46.226189','79','79',1,'[{\"added\": {}}]',8,1),(149,'2021-11-24 13:39:31.205943','80','80',1,'[{\"added\": {}}]',8,1),(150,'2021-11-24 13:40:31.565642','81','81',1,'[{\"added\": {}}]',8,1),(151,'2021-11-24 13:41:38.586128','82','82',1,'[{\"added\": {}}]',8,1),(152,'2021-11-24 13:43:17.686673','83','83',1,'[{\"added\": {}}]',8,1),(153,'2021-11-24 13:45:22.463248','84','84',1,'[{\"added\": {}}]',8,1),(154,'2021-11-24 13:46:16.862571','85','85',1,'[{\"added\": {}}]',8,1),(155,'2021-11-24 13:47:08.611268','86','86',1,'[{\"added\": {}}]',8,1),(156,'2021-11-24 13:48:53.746055','87','87',1,'[{\"added\": {}}]',8,1),(157,'2021-11-24 13:49:53.691701','88','88',1,'[{\"added\": {}}]',8,1),(158,'2021-11-24 13:50:55.659129','89','89',1,'[{\"added\": {}}]',8,1),(159,'2021-11-24 13:52:23.901866','90','90',1,'[{\"added\": {}}]',8,1),(160,'2021-11-24 13:53:34.371084','91','91',1,'[{\"added\": {}}]',8,1),(161,'2021-11-24 13:54:40.580420','92','92',1,'[{\"added\": {}}]',8,1),(162,'2021-11-24 13:56:08.737645','93','93',1,'[{\"added\": {}}]',8,1),(163,'2021-11-24 13:57:20.956301','94','94',1,'[{\"added\": {}}]',8,1),(164,'2021-11-24 13:58:17.899775','95','95',1,'[{\"added\": {}}]',8,1),(165,'2021-11-24 14:01:29.904716','96','96',1,'[{\"added\": {}}]',8,1),(166,'2021-11-24 14:06:08.637876','97','97',1,'[{\"added\": {}}]',8,1),(167,'2021-11-24 14:07:23.339063','98','98',1,'[{\"added\": {}}]',8,1),(168,'2021-11-24 14:15:32.975953','99','99',1,'[{\"added\": {}}]',8,1),(169,'2021-11-24 14:18:19.750651','100','100',1,'[{\"added\": {}}]',8,1),(170,'2021-11-24 14:20:16.414068','101','101',1,'[{\"added\": {}}]',8,1),(171,'2021-11-24 14:24:20.562146','102','102',1,'[{\"added\": {}}]',8,1),(172,'2021-11-24 14:31:35.457347','103','103',1,'[{\"added\": {}}]',8,1),(173,'2021-11-24 14:33:02.344362','104','104',1,'[{\"added\": {}}]',8,1),(174,'2021-11-24 14:34:59.654132','105','105',1,'[{\"added\": {}}]',8,1),(175,'2021-11-24 14:36:16.842801','106','106',1,'[{\"added\": {}}]',8,1),(176,'2021-11-24 14:42:02.450500','107','107',1,'[{\"added\": {}}]',8,1),(177,'2021-11-24 14:43:20.633424','108','108',1,'[{\"added\": {}}]',8,1),(178,'2021-11-24 14:45:05.673625','109','109',1,'[{\"added\": {}}]',8,1),(179,'2021-11-24 14:45:06.295383','110','110',1,'[{\"added\": {}}]',8,1),(180,'2021-11-24 14:45:34.686726','110','110',3,'',8,1),(181,'2021-11-24 14:48:05.084799','111','111',1,'[{\"added\": {}}]',8,1),(182,'2021-11-24 14:49:49.888519','112','112',1,'[{\"added\": {}}]',8,1),(183,'2021-11-24 14:51:36.050088','113','113',1,'[{\"added\": {}}]',8,1),(184,'2021-11-24 14:54:10.358562','114','114',1,'[{\"added\": {}}]',8,1),(185,'2021-11-24 14:56:03.321814','115','115',1,'[{\"added\": {}}]',8,1),(186,'2021-11-24 14:57:24.761882','116','116',1,'[{\"added\": {}}]',8,1),(187,'2021-11-24 14:59:11.311050','117','117',1,'[{\"added\": {}}]',8,1),(188,'2021-11-24 15:01:09.659818','118','118',1,'[{\"added\": {}}]',8,1),(189,'2021-11-24 15:02:19.652088','119','119',1,'[{\"added\": {}}]',8,1),(190,'2021-11-24 15:02:58.869876','101','101',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(191,'2021-11-24 15:03:18.680247','106','106',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(192,'2021-11-24 15:03:31.048272','104','104',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(193,'2021-11-24 15:03:44.708609','105','105',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(194,'2021-11-24 15:04:00.727861','102','102',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(195,'2021-11-24 18:37:18.184636','8','8',3,'',9,1),(196,'2021-11-24 18:37:19.022536','7','7',3,'',9,1),(197,'2021-11-24 18:37:19.447491','6','6',3,'',9,1),(198,'2021-11-24 18:37:19.997522','5','5',3,'',9,1),(199,'2021-11-24 18:37:20.220563','4','4',3,'',9,1),(200,'2021-11-24 18:37:20.928509','3','3',3,'',9,1),(201,'2021-11-24 18:37:21.054186','2','2',3,'',9,1),(202,'2021-11-24 18:37:21.294544','1','1',3,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app','cart'),(7,'app','customer'),(9,'app','orderplaced'),(8,'app','product'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-17 20:27:39.061773'),(2,'auth','0001_initial','2021-11-17 20:28:46.212337'),(3,'admin','0001_initial','2021-11-17 20:29:05.543737'),(4,'admin','0002_logentry_remove_auto_add','2021-11-17 20:29:05.941511'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-17 20:29:06.319293'),(6,'app','0001_initial','2021-11-17 20:29:49.950959'),(7,'contenttypes','0002_remove_content_type_name','2021-11-17 20:30:14.396797'),(8,'auth','0002_alter_permission_name_max_length','2021-11-17 20:30:25.092868'),(9,'auth','0003_alter_user_email_max_length','2021-11-17 20:30:27.225348'),(10,'auth','0004_alter_user_username_opts','2021-11-17 20:30:27.834680'),(11,'auth','0005_alter_user_last_login_null','2021-11-17 20:30:36.081615'),(12,'auth','0006_require_contenttypes_0002','2021-11-17 20:30:36.394092'),(13,'auth','0007_alter_validators_add_error_messages','2021-11-17 20:30:36.677254'),(14,'auth','0008_alter_user_username_max_length','2021-11-17 20:30:44.904549'),(15,'auth','0009_alter_user_last_name_max_length','2021-11-17 20:30:53.932971'),(16,'auth','0010_alter_group_name_max_length','2021-11-17 20:30:55.661977'),(17,'auth','0011_update_proxy_permissions','2021-11-17 20:30:56.112720'),(18,'auth','0012_alter_user_first_name_max_length','2021-11-17 20:31:06.417566'),(19,'sessions','0001_initial','2021-11-17 20:31:09.558950'),(20,'app','0002_alter_orderplaced_status','2021-11-23 07:20:00.618526'),(21,'app','0003_product_product_type','2021-11-24 07:05:43.139698');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bbd42acyxcee8vgtbrlpfygxlm1o29oa','.eJxVjEEOwiAQRe_C2hBAmIJL9z0DGYZBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXERWpx-t4T04LaDfMd2myXNbV2mJHdFHrTLcc78vB7u30HFXr81eATFyvhiyAYKgzNMGbJhFwKQJ-uhnJ1O2kOyBXjQ7HMqEIxDV5R4fwDZajfH:1msPfS:2hs75APJkvlUUS0FNSOGBK_FUrui8FbMjIF-eKtBA3I','2021-12-15 13:29:02.819884'),('r593viojr0y1lmr53b3z6sgda2e86jr5','.eJxVjDsOwjAQBe_iGlle_0NJzxmstXeDA8iR4qRC3B0ipYD2zcx7iYTbWtPWeUkTibMAcfrdMpYHtx3QHdttlmVu6zJluSvyoF1eZ-Ln5XD_Dir2-q0NFqeAIliNQBwtRfIQ4sgBvVWD14XRG-tNcKx9dogh5jC6AGpgY8T7A9R2N0g:1mpFgX:6-6kuCWYasV5lpY8A8fUTfiWPxV33hZPkAhBg5Dcj7k','2021-12-06 20:13:05.939676');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderplaced`
--

DROP TABLE IF EXISTS `orderplaced`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderplaced` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderplaced_customer_id_baec12e1_fk_customer_id` (`customer_id`),
  KEY `orderplaced_product_id_2a22b469_fk_product_id` (`product_id`),
  KEY `orderplaced_user_id_c17cc74c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `orderplaced_customer_id_baec12e1_fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `orderplaced_product_id_2a22b469_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `orderplaced_user_id_c17cc74c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `orderplaced_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderplaced`
--

LOCK TABLES `orderplaced` WRITE;
/*!40000 ALTER TABLE `orderplaced` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderplaced` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `selling_price` double NOT NULL,
  `discounted_price` double NOT NULL,
  `description` longtext NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(3) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'slim fit jeans for men black',900,650,'This pair of slim tapered jeans are designed with a solid surface, button fly closure, belt loops, insert and patch pockets.','Flying Machine','BW','productimg/mj1.jpg','J'),(2,'Men Blue Skinny Fit Jeans',999,599,'Men Blue Stone Wash Jackson Skinny Fit Jeans','Flying Machine','BW','productimg/mj2.jpg','J'),(3,'Men Blue Stone Wash Jackson Skinny Fit Jeans',1150,950,'Men Blue Stone Wash Jackson Skinny Fit Jeans','Spyker','BW','productimg/mj3.jpg','J'),(4,'Raymond pant men\'s',2999,1699,'Raymond Men Poly-Viscose Unstitched Pant Fabric.','Raymond','BW','productimg/mp1.jpg','P'),(5,'Pant Skinny Fit Flat-Front Men\'s',15999,1299,'Redefine Your Style Statement With Trendy Apparel','John Players','BW','productimg/mp2.jpg','P'),(6,'Printed Skinny Fit Flat-Front Pant',999,450,'This is Good Fabric printed pant','Highlander','BW','productimg/mp3.jpg','P'),(7,'Textured Slim Fit Flat-Front Trousers',2899,1199,'This is best Regular Fit Men Brown Pure Cotton Trousers','John Players','BW','productimg/mtr1.jpg','T'),(8,'Raymond Formal Trouser',3450,2399,'Raymond Slim Fit Dark Blue Trouser','Raymond','BW','productimg/mtr2.jpg','T'),(9,'Roadster for men Trouser',1550,600,'Men Grey Slim Fit Pure Cotton Trouser','Roadster','BW','productimg/mtr3.jpg','T'),(10,'Teamspirit trackpant for men',650,250,'Track Pants with Contrast Taping','Teamspirit','BW','productimg/mtrac1.jpg','TP'),(11,'Highlander Trackpant',950,799,'Highlander combination of color','Highlander','BW','productimg/mtrac2.jpg','TP'),(12,'one8 x PUMA',1399,999,'Black Bottom Wear Puma One8 Men\'s Track Pants','Puma','BW','productimg/mtrac3.jpg','TP'),(13,'Dark Blue Jeans',1250,450,'Mid-Rise Skinny Dark Blue  Jeans','Highlander','BW','productimg/mj4_7HxrMOb.jpg','J'),(14,'Printed Skinny Pant',12500,10999,'Printed Skinny Fit Flat-Front Pant for men','Highlander','BW','productimg/mp4.jpg','P'),(15,'Flying Machine Trousers',1200,799,'Flying Machine Men Olive Green Slim Fit Solid Regular Trousers','Flying Machine','BW','productimg/mtr4.jpg','T'),(16,'Highlander',599,199,'Highlander grey regular fit track pant','Highlander','BW','productimg/mtrac4_F1B4pMn.jpg','TP'),(17,'Highlander jeans',899,460,'Highlander slim dark blue jeans','Highlander','BW','productimg/mj5_YFjadg2.jpg','J'),(18,'Spyker jeans',22999,1199,'Spyker jeans regular fit','Spyker','BW','productimg/mj6_6H7o8DL.jpg','J'),(19,'Raymond Pant\'s',2498,1299,'Raymond grey best fit pants','Raymond','BW','productimg/mp6.jpg','P'),(20,'Mens Business Casual pant',1500,599,'Men\'s grey formal Business Casual Dress','John Players','BW','productimg/mp8.jpg','P'),(21,'Roadster men\'s trouser',1350,799,'Roadster Black Cotton Men\'s Trouser','Roadster','BW','productimg/mtr5.jpg','T'),(22,'John Players  Trouser',1899,899,'John Players brown  Trouser','John Players','BW','productimg/mtr10.jpg','T'),(23,'Printed Men Track Pants',1399,799,'Teamspirit Printed Men black Track Pants','Teamspirit','BW','productimg/mtrac5.jpg','TP'),(24,'Printed Track Pants',999,699,'Printed Men Multicolor Track Pants','Highlander','BW','productimg/mtrac6.jpg','TP'),(25,'Regular fit jeans',1050,750,'Flying Machine regular fit black jeans','Flying Machine','BW','productimg/mj7.jpg','J'),(26,'Blue Light Jeans',2599,1500,'Slim Straight Light Wash Temp Control Hyper Stretch Jeans','Spyker','BW','productimg/mj8.jpg','J'),(27,'Roadster light black jeans',2599,1050,'Slim Straight Black Temp Control Hyper Stretch Jeans','Roadster','BW','productimg/mj9.jpg','J'),(28,'Roadster jeans',1799,799,'Design Slim jeans for Men','Roadster','BW','productimg/mj10.jpg','J'),(29,'Raymond Pant',2999,1899,'Raymond Men\'s Dark Blue fit Pant','Raymond','BW','productimg/mp5.jpg','P'),(30,'Formal pant',899,350,'Formal  pants wear business not 100% cotton','Highlander','BW','productimg/mp9.jpg','P'),(31,'Formal Pant',1200,550,'This is best range price formal jeans','Highlander','BW','productimg/mp10.jpg','P'),(32,'Flying Machine green trouser',1499,599,'Full Length Slim Fit Trousers','Flying Machine','BW','productimg/mtr6_Na644lJ.jpg','T'),(33,'Roadster Dark grey trouser',1799,799,'Full Length Slim Fit Dark grey Trousers','Roadster','BW','productimg/mtr7.jpg','T'),(34,'Flying Machine Trouser',1250,650,'Men Light Green Flat Front Solid Cotton Stretch Casual Trousers','Flying Machine','BW','productimg/mtr8.jpg','T'),(35,'Roadster Trouser',1899,950,'Dark Grey Trouser slim fit','Roadster','BW','productimg/mtr9.jpg','T'),(36,'Teamspirit trackpant',1250,450,'Teamspirit multicolor trackpant','Teamspirit','BW','productimg/mtrac6_r6wcHy1.jpg','TP'),(37,'Teamspirit Olive Green',699,350,'Track Pants with Contrast Taping','Teamspirit','BW','productimg/mtrac7.jpg','TP'),(38,'Highlander',499,250,'Highlander regular slim fit trackpant','Highlander','BW','productimg/mtrac8.jpg','TP'),(39,'Highlander multicolor trackpant',750,550,'Highlander multicolor track pant','Highlander','BW','productimg/mtrac9.jpg','TP'),(40,'Teamspirit Black tshirt',550,350,'Slim Fit Crew-Neck T-shirt Black T-shirt','Teamspirit','TW','productimg/mt1_CVoUuzt.jpg','TS'),(41,'John Players',1299,517,'Cotton Coral Casual Classic Shirt pink color','John Players','TW','productimg/ms1.jpg','S'),(42,'Highlander Grey T-shirt',599,250,'Highlander Slim fit Grey T-shirt','Highlander','TW','productimg/mt2_DU0K48g.jpg','TS'),(43,'Roadster Printed Shirt',1299,599,'Printed Dark Blue Causal Shirt','Roadster','TW','productimg/ms2.jpg','S'),(44,'Teamspirit tshirt',399,199,'Teamspirit  Printed Dark Blue T-shirt','Teamspirit','TW','productimg/mt3_h2r5gXp.jpg','TS'),(45,'Teamspirit Tshirt',550,350,'Teamspirit blue & yellow slim fit T-shirt','Teamspirit','TW','productimg/mt4_HoOYu49.jpg','TS'),(46,'Roadster Shirt',599,399,'Roadster checks white & Black Shirt','Roadster','TW','productimg/ms3.jpg','S'),(47,'John Players Formal Shirt',1599,799,'Men Maroon Slim Fit Solid Formal Shirt','John Players','TW','productimg/ms4.jpg','S'),(48,'Roadster Tshirt',1799,899,'Roadster Green  T-shirt Full Selves','Roadster','TW','productimg/mt5_SYPxPb2.jpg','TS'),(49,'Roadster T-shirt',450,199,'Roadster Black & White T-shirt','Roadster','TW','productimg/mt6_yKZXhjh.jpg','TS'),(50,'Roadster printed T-shirt',350,180,'Roadster printed Slim Fit T-shirt','Roadster','TW','productimg/mt7_xep2dEc.jpg','TS'),(51,'Roadster Shirt',699,399,'Roadster Multicolor Shirt','Roadster','TW','productimg/ms5.jpg','S'),(52,'Roadster Dotted shirt',899,499,'Roadster Dotted shirt white & Black','Roadster','TW','productimg/ms6.jpg','S'),(53,'Roadster cheeks shirt',1050,599,'Roadster cheeks shirt  Blue & Black','Roadster','TW','productimg/ms7.jpg','S'),(54,'Teamspirit printed T-shirt',450,150,'Teamspirit printed T-shirt Blue','Teamspirit','TW','productimg/mt8.jpg','TS'),(55,'Teamspirit T-shirt',299,180,'Teamspirit  printed T-shirt Blue','Teamspirit','TW','productimg/mt9.jpg','TS'),(56,'Roadster Checked Shirt',1599,899,'Men\'s Checked Casual Shirt Navy Color','Roadster','TW','productimg/ms8.jpg','S'),(57,'John Players Casual Shirt',2250,1250,'Men\'s Blue Solid Slim Fit Casual Shirt','John Players','TW','productimg/ms9.jpg','S'),(58,'Roadster',2999,1550,'Slim Fit Shirt with Flap Pockets Olive Green','Roadster','TW','productimg/ms10.jpg','S'),(59,'REDMI 8A Dual',8499,7499,'REDMI 8A Dual (Sea Blue, 32 GB)  (2 GB RAM)','Redmi','M','productimg/redmi-8a-dual_fsmD72J.jpg','E'),(60,'OPPO A12',10999,9999,'OPPO A12 (Flowing Silver, 32 GB)  (3 GB RAM)','Oppo','M','productimg/oppo-a12.jpg','E'),(61,'realme 8',17999,16999,'realme 8 (Cyber Silver, 128 GB)  (6 GB RAM)','Realme','M','productimg/realme-8-6gb-ram-128.jpg','E'),(62,'SAMSUNG Galaxy A22 5G',22499,19499,'SAMSUNG Galaxy A22 5G (Gray, 128 GB)  (6 GB RAM)','Samsung','M','productimg/samsung-galaxy-a22.jpg','E'),(63,'vivo V20',24999,22999,'vivo V20 (Sunset Melody, 128 GB)  (8 GB RAM)','Vivo','M','productimg/vivo-v20.jpg','E'),(64,'Redmi 9',10749,9940,'Redmi 9 (Sporty Orange, 64 GB)  (4 GB RAM)','Redmi','M','productimg/redmi-9_vSb5hGc.jpg','E'),(65,'Redmi 9A',7499,6499,'Redmi 9A (Midnight Black, 32 GB)  (2 GB RAM)','Redmi','M','productimg/redmi-9a_QjfOKJj.jpg','E'),(66,'OPPO A15S',12499,9999,'OPPO A15S (Fancy White, 64 GB)  (4 GB RAM)','Oppo','M','productimg/oppo-a15s.jpg','E'),(67,'OPPO A16',12499,11999,'OPPO A16 (Royal Gold, 64 GB)  (4 GB RAM)','Oppo','M','productimg/oppo-a16.jpg','E'),(68,'realme 8i',15999,14999,'realme 8i (Space Purple, 64 GB)  (4 GB RAM)','Realme','M','productimg/realme-8i.jpg','E'),(69,'realme 8s 5G',20999,17999,'realme 8s 5G (Universe Purple, 128 GB)  (6 GB RAM)','Realme','M','productimg/realme-8s-5g.jpg','E'),(70,'SAMSUNG Galaxy F12',12999,11499,'SAMSUNG Galaxy F12 (Celestial Black, 64 GB)  (4 GB RAM)','Samsung','M','productimg/samsung-galaxy-f12.jpg','E'),(71,'SAMSUNG Galaxy F22',14999,12999,'SAMSUNG Galaxy F22 (Denim Blue, 64 GB)  (4 GB RAM)','Samsung','M','productimg/samsung-galaxy-f22.jpg','E'),(72,'vivo V21 5G',32999,26999,'vivo V21 5G (Neon Spark, 128 GB)  (8 GB RAM)','Vivo','M','productimg/vivo-v21-5g.jpg','E'),(73,'vivo X60',43999,34999,'vivo X60 (Shimmer Blue, 128 GB)  (8 GB RAM)','Vivo','M','productimg/vivo-x60.jpg','E'),(74,'REDMI 9 Activ',11999,9999,'REDMI 9 Activ (Carbon Black, 128 GB)  (6 GB RAM)','Redmi','M','productimg/redmi-9-activ_wJ2ccgN.jpg','E'),(75,'REDMI 9 Power',13999,11499,'REDMI 9 Power (Mighty Black, 64 GB)  (4 GB RAM)','Redmi','M','productimg/redmi-9-power_NnH7iLw.jpg','E'),(76,'OPPO A33',13999,10499,'OPPO A33 (Moonlight Black, 32 GB)  (3 GB RAM)','Oppo','M','productimg/oppo-a33-2020.jpg','E'),(77,'OPPO A53',15990,13990,'OPPO A53 (Mint Cream, 64 GB)  (4 GB RAM)','Oppo','M','productimg/oppo-a54.jpg','E'),(78,'realme 8s 5G',17999,16999,'realme 8s 5G (Universe Purple, 128 GB)  (6 GB RAM)','Realme','M','productimg/realme-8s-5g_VNctT51.jpg','E'),(79,'realme C11',9999,8499,'realme C11 2021 (Cool Blue, 64 GB)  (4 GB RAM)','Realme','M','productimg/realme-c11-2021-4gb.jpg','E'),(80,'SAMSUNG Galaxy F62',29999,24999,'SAMSUNG Galaxy F62 (Laser Grey, 128 GB)  (6 GB RAM)','Samsung','M','productimg/samsung-galaxy-f62.jpg','E'),(81,'SAMSUNG Galaxy M12',12999,11499,'SAMSUNG Galaxy M12 (Black, 64 GB)  (4 GB RAM)','Samsung','M','productimg/samsung-galaxy-m12.jpg','E'),(82,'vivo X70 Pro plus',84999,79990,'vivo X70 Pro+ (Enigma Black, 256 GB)  (12 GB RAM)','Vivo','M','productimg/vivo-x70-pro-plus-5g.jpg','E'),(83,'vivo Y3s',11999,8499,'vivo Y3s (Pearl white, 32 GB)  (2 GB RAM)','Vivo','M','productimg/vivo-y3s-2021.jpg','E'),(84,'REDMI 10 Prime',14990,12999,'REDMI 10 Prime (Astral White, 64 GB)  (4 GB RAM)','Redmi','M','productimg/redmi-10-prim_p3Sm5gm.jpg','E'),(85,'REDMI Note 9',14990,11499,'REDMI Note 9 (Shadow Black, 64 GB)  (4 GB RAM)','Redmi','M','productimg/redmi-note-9_PEutVV1.jpg','E'),(86,'REDMI Note 10S',15990,13999,'REDMI Note 10S (Frost White, 64 GB)  (6 GB RAM)','Redmi','M','productimg/Redmi-Note-10S.jpg','E'),(87,'OPPO Reno6 Pro 5G',45999,42990,'OPPO Reno6 Pro 5G (Majestic Gold, 256 GB)  (12 GB RAM)','Oppo','M','productimg/oppo-reno-6-pro-5g-d.jpg','E'),(88,'OPPO Reno4 Pro',37990,34990,'OPPO Reno4 Pro (Silky White, 128 GB)  (8 GB RAM)','Oppo','M','productimg/oppo-reno-4-pro.jpg','E'),(89,'OPPO A74 5G',18400,16400,'OPPO A74 5G BLACK (Fluid Black, 128 GB)  (6 GB RAM)','Oppo','M','productimg/oppo-a74-5g.jpg','E'),(90,'realme Narzo 50A',12999,11499,'realme Narzo 50A (Oxygen Blue, 64 GB)  (4 GB RAM)','Realme','M','productimg/realme-narzo-50a.jpg','E'),(91,'realme Narzo 30',14999,13499,'realme Narzo 30 (Racing Blue, 64 GB)  (4 GB RAM)','Realme','M','productimg/realme-narzo-30.jpg','E'),(92,'realme GT Master Edition',29990,27999,'realme GT Master Edition (Voyager Grey, 128 GB)  (8 GB RAM)','Realme','M','productimg/realme-gt-master-edi.jpg','E'),(93,'SAMSUNG Galaxy S21',83999,54990,'SAMSUNG Galaxy S21 (Phantom Gray, 128 GB)  (8 GB RAM)','Samsung','M','productimg/samsung-galaxy-s21.jpg','E'),(94,'SAMSUNG Galaxy M52 5G',27999,24990,'SAMSUNG Galaxy M52 5G (Icy Blue, 128 GB)  (6 GB RAM)','Samsung','M','productimg/samsung-galaxy-m52-5.jpg','E'),(95,'SAMSUNG Galaxy M32',18150,15999,'SAMSUNG Galaxy M32 (Light Blue, 128 GB)  (6 GB RAM)','Samsung','M','productimg/samsung-galaxy-m32.jpg','E'),(96,'vivo Y53s',22990,19490,'vivo Y53s (Fantastic Rainbow, 128 GB)  (8 GB RAM)','Vivo','M','productimg/vivo-y53s.jpg','E'),(97,'vivo Y33s',21990,18990,'vivo Y33s (Mirror Black, 128 GB)  (8 GB RAM)','Vivo','M','productimg/vivo-y33s.jpg','E'),(98,'vivo Y20T',19490,15490,'vivo Y20T (Purist Blue, 64 GB)  (6 GB RAM)','Vivo','M','productimg/vivo-y20t.jpg','E'),(99,'DELL Inspiron Core i5 11th Gen',86199,63598,'DELL Inspiron Core i5 11th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10/2 GB Graphics) Inspiron 3511 Thin and Light Laptop  (15.6 inch, Carbon, 1.85 kg, With MS Office)','Dell','L','productimg/1.jpg','E'),(100,'ASUS ZenBook Pro 15 Core i7 8th Gen',175190,176590,'ASUS ZenBook Pro 15 Core i7 8th Gen - (16 GB/1 TB SSD/Windows 10 Home/4 GB Graphics) UX580GE-E2014T Laptop  (15.6 inch, Deep Dive Blue, 1.88 kg)','Asus','L','productimg/1_OHpNHsh.jpg','E'),(101,'HP Pavilion Ryzen 5 Hexa Core 5600H',70172,60999,'HP Pavilion Ryzen 5 Hexa Core 5600H - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 15-ec2004AX Gaming Laptop  (15.6 inch, Shadow Black, 1.98 kg)','HP','L','productimg/hp1.jpeg','E'),(102,'Lenovo IdeaPad 3',79890,58990,'Lenovo IdeaPad 3 15ITL6 82H8014BIN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win10 Home)','Lenovo','L','productimg/lenovo1.jpg','E'),(103,'ASUS Core i5 11th Gen',67990,59990,'ASUS Core i5 11th Gen - (8 GB/512 GB SSD/Windows 10 Home) X515EA-EJ317TS Thin and Light Laptop  (15.6 inch, Transparent Silver, 1.80 kg, With MS Office)','Asus','L','productimg/asus2.jpeg','E'),(104,'ASUS TUF Core i5 10th Gen',82990,69990,'ASUS TUF Core i5 10th Gen - (8 GB/1 TB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650 Ti/144 Hz) FX506LI-HN270T Gaming Laptop  (15.6 inch, Black Plastic, 2.30 Kg)','Asus','L','productimg/asus3.jpeg','E'),(105,'DELL Vostro Ryzen 5 Hexa Core 5500U',61060,55499,'DELL Vostro Ryzen 5 Hexa Core 5500U - (8 GB/512 GB SSD/Windows 10) Vostro 5415 Thin and Light Laptop  (14 inch, Titan Grey, 1.5 Kg, With MS Office)','Dell','L','productimg/dell2.jpeg','E'),(106,'DELL Inspiron Ryzen 5 Quad Core 3450U',59211,44844,'DELL Inspiron Ryzen 5 Quad Core 3450U - (8 GB/256 GB SSD/Windows 10) Inspiron 3515 Thin and Light Laptop  (15.6 inch, Carbon, 1.85 kg, With MS Office)','Dell','L','productimg/dell3.jpeg','E'),(107,'Victus by HP Ryzen 5 5600H',76050,64990,'Victus by HP Ryzen 5 5600H 16.1-inch(40.9 cm) FHD Gaming Laptop (8GB RAM/512GB SSD/4GB GTX 1650 Graphics/B&O Audio/Flicker Free Display/Windows 10/MS Office/2.48 Kg), 16-e0075AX','HP','L','productimg/hp2.jpg','E'),(108,'HP Pavilion Ryzen 5 Hexa Core',68990,54990,'HP Pavilion Ryzen 5 Hexa Core 5500U - (8 GB/512 GB SSD/Windows 10 Home) 14-ec0035AU Thin and Light Laptop  (14 inch, Natural Silver, 1.41 Kg, With MS Office)','HP','L','productimg/hp3.jpg','E'),(109,'Lenovo Ideapad Slim 3i (2021) Core i5 11th Gen',88990,58990,'Lenovo Ideapad Slim 3i (2021) Core i5 11th Gen - (8 GB/512 GB SSD/Windows 10 Home) 15ITL05 Thin and Light Laptop  (15.6 inch, Arctic Grey, With MS Office)','Lenovo','L','productimg/lenovo2.jpeg','E'),(111,'Lenovo IdeaPad 3 Celeron Dual Core',35590,29990,'Lenovo IdeaPad 3 Celeron Dual Core - (4 GB/256 GB SSD/Windows 10 Home) 15IGL05 Thin and Light Laptop  (15.6 Inch, Platinum Grey, 1.7 kg, With MS Office)','Lenovo','L','productimg/lenovo3.jpeg','E'),(112,'ASUS VivoBook S Series Core i5 8th Gen',68990,52990,'ASUS VivoBook S Series Core i5 8th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home) S430FA-EB156T Thin and Light Laptop  (14 inch, Red, Starry Grey, 1.40 kg)','Asus','L','productimg/asus4.jpeg','E'),(113,'ASUS Vivobook 15 Core i5 11th Gen',69990,54990,'ASUS Vivobook 15 Core i5 11th Gen - (8 GB/512 GB SSD/Windows 10 Home) X515EA-BQ522TS Laptop  (15.6 inch, Transparent Silver, 1.75 kg, With MS Office)','Asus','L','productimg/asus-5.jpeg','E'),(114,'DELL Vostro Core i5 11th Gen',80204,56504,'DELL Vostro Core i5 11th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10) Vostro 3400 Thin and Light Laptop  (14 inch, Accent Black, 1.58 Kg, With MS Office)','Dell','L','productimg/dell4.jpeg','E'),(115,'DELL Inspiron Ryzen 3 Dual Core 3250U',52437,37777,'DELL Inspiron Ryzen 3 Dual Core 3250U - (8 GB/256 GB SSD/Windows 10) Inspiron 3515 Thin and Light Laptop  (15.6 inch, Carbon, 1.85 kg, With MS Office)','Dell','L','productimg/dell5.jpeg','E'),(116,'HP Core i5 11th Gen',59542,56690,'HP Core i5 11th Gen - (8 GB + 32 GB Optane/512 GB SSD/Windows 10 Home) 15s-FQ2071TU Thin and Light Laptop  (15.6 inch, Jet Black, 1.69 kg, With MS Office)','HP','L','productimg/hp4.jpg','E'),(117,'HP Core i3 11th Gen',50196,44970,'HP Core i3 11th Gen - (8 GB/512 GB SSD/Windows 11 Home) 15s-du3564TU Thin and Light Laptop  (15.6 inch, Natural Silver, 1.75 kg, With MS Office)','HP','L','productimg/hp5.jpg','E'),(118,'Lenovo IdeaPad 1 Celeron Dual Core 4th Gen',41890,28990,'Lenovo IdeaPad 1 Celeron Dual Core 4th Gen - (4 GB/256 GB SSD/Windows 10 Home) 11IGL05 Thin and Light Laptop  (11.6 inch, Platinum Grey, 1.2 kg, With MS Office)','Lenovo','L','productimg/lenovo4.jpeg','E'),(119,'Lenovo Legion 5 Ryzen 7 Octa Core 5800H',181890,124999,'Lenovo Legion 5 Ryzen 7 Octa Core 5800H - (16 GB/2 TB SSD/Windows 11 Home/6 GB Graphics/NVIDIA GeForce RTX NVIDIA GeForce RTX3060 6GB GDDR6/165 Hz) 16ACH6H Gaming Laptop  (16 inches, Storm Grey, 2.45 kg, With MS Office)','Lenovo','L','productimg/lenovo5.jpeg','E');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shoppinghub'
--

--
-- Dumping routines for database 'shoppinghub'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 13:48:52

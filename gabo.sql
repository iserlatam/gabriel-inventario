/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: gabriel_inventario
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES
(1,'Sellos','sellos automaticos y de madera','https://casafuji.mx/wp-content/uploads/2021/04/TSSH00XX_Sello-Personalizado_1-1.jpg','2025-02-03 07:03:33','2025-02-24 20:44:12'),
(2,'Almohadillas','Almohadillas con tinta y sin tinta','https://m.media-amazon.com/images/I/41XRY1yB75L._AC_UF894,1000_QL80_.jpg','2025-02-24 20:41:38','2025-02-24 20:45:40'),
(3,'Avisos','Señaleticas de diferentes dimensiones','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3iyMemcWWTVbA8mWvZwDIdxVflDnqSuSZEA&s','2025-02-24 20:43:43','2025-02-24 20:46:48');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES
(1,'shinny','2025-02-03 07:07:52','2025-02-03 18:18:53'),
(2,'trodat','2025-02-03 07:07:56','2025-02-03 07:07:56'),
(3,'sellos la fe','2025-02-03 18:17:17','2025-02-03 18:17:17'),
(4,'trodat','2025-02-03 18:18:22','2025-02-03 18:18:22'),
(5,'TRAXX','2025-02-24 20:09:32','2025-02-24 20:09:32');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2025_02_03_064934_create_categorias_table',2),
(6,'2025_02_03_064935_create_productos_table',2),
(7,'2025_02_03_064936_create_fabricantes_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio_maq_noiva` int(11) DEFAULT NULL,
  `precio_maq_iva` int(11) DEFAULT NULL,
  `precio_maqsello_noiva` int(11) DEFAULT NULL,
  `precio_maqsello_iva` int(11) DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `dimensiones` varchar(255) DEFAULT NULL,
  `unid_dimension` varchar(255) DEFAULT 'mm',
  `fabricante_id` bigint(20) unsigned DEFAULT NULL,
  `categoria_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES
(1,'S841',NULL,14000,16660,38000,45220,'https://www.sellosytintas.com/wp-content/uploads/2020/02/sello-s-841.jpg','1',NULL,'mm',1,1,'2025-02-03 07:33:15','2025-02-03 19:50:02'),
(2,'S842',NULL,14000,16660,38000,45220,NULL,'1',NULL,'mm',1,1,'2025-02-24 19:45:41','2025-02-24 19:45:41'),
(3,'5843',NULL,16500,19700,45000,53600,NULL,'1',NULL,'mm',1,1,'2025-02-24 19:57:00','2025-02-24 19:57:00'),
(4,'S844',NULL,19000,22610,49999,59499,NULL,'1',NULL,'mm',1,1,'2025-02-24 19:57:56','2025-02-24 19:57:56'),
(5,'S845',NULL,21999,26200,54999,65450,NULL,'1',NULL,'mm',1,1,'2025-02-24 20:00:56','2025-02-24 20:00:56'),
(6,'S538',NULL,31000,36888,69999,83300,NULL,'1','38*38','mm',1,1,'2025-02-24 20:03:30','2025-02-24 20:03:30'),
(7,'S542',NULL,35000,41650,75000,89250,NULL,'1','42*42','mm',1,1,'2025-02-24 20:04:44','2025-02-24 20:04:44'),
(8,'S542D',NULL,38000,45219,80000,95200,NULL,'1','42*42','mm',1,1,'2025-02-24 20:06:53','2025-02-24 20:06:53'),
(9,'9011',NULL,14500,17225,40000,47600,NULL,'1',NULL,'mm',5,1,'2025-02-24 20:12:23','2025-02-24 20:12:23'),
(10,'9012',NULL,16000,19040,45000,53600,NULL,'1',NULL,'mm',5,1,'2025-02-24 20:13:46','2025-02-24 20:13:46'),
(11,'NUMERADO N-B10 GRANDE',NULL,150000,178150,230,274,NULL,'1',NULL,'mm',3,1,'2025-02-24 20:20:59','2025-02-24 20:20:59'),
(12,'NUMERADOR 210',NULL,32000,38100,55000,65,NULL,'1',NULL,'mm',1,1,'2025-02-24 20:21:54','2025-02-24 21:34:37'),
(13,'LOTE VENCE S-310B',NULL,32,38,65,77,NULL,'1',NULL,'mm',1,1,'2025-02-24 20:22:44','2025-02-24 20:22:44'),
(14,'FECHADOR S-400',NULL,33,39,70,83,NULL,'1',NULL,'mm',1,1,'2025-02-24 20:23:17','2025-02-24 20:23:17'),
(15,'SELLO SECO REDONDO',NULL,80000,95200,180000,214200,NULL,'1','42','mm',3,1,'2025-02-24 20:24:17','2025-02-24 20:24:17'),
(16,'SELLO SECO REDONDO',NULL,85000,101500,185000,220150,NULL,'1','50','mm',3,1,'2025-02-24 20:25:11','2025-02-24 20:25:11'),
(17,'SELLO SECO RECTA',NULL,85000,101500,185000,220150,NULL,'1','50*25','mm',3,1,'2025-02-24 20:26:38','2025-02-24 20:26:38'),
(18,'SELLO SECO ESCRITORIO',NULL,100000,119000,200000,238000,NULL,'1',NULL,'mm',3,1,'2025-02-24 20:27:29','2025-02-24 20:27:29'),
(19,'S-722',NULL,16000,19040,35000,41650,NULL,'1',NULL,'mm',1,1,'2025-02-24 20:28:52','2025-02-24 20:28:52'),
(20,'S-723',NULL,18000,21420,40000,47600,NULL,'1',NULL,'mm',1,1,'2025-02-24 20:31:09','2025-02-24 20:31:09'),
(21,'9511',NULL,16000,19040,35000,41650,NULL,'1',NULL,'mm',2,1,'2025-02-24 20:32:27','2025-02-24 20:32:27'),
(22,'9512',NULL,18000,21420,40000,47600,NULL,'1',NULL,'mm',2,1,'2025-02-24 20:35:50','2025-02-24 20:35:50'),
(23,'SELLO IMPRENTILLA REF. 11',NULL,35000,41650,50000,59500,NULL,'1',NULL,'mm',3,1,'2025-02-24 20:37:18','2025-02-24 21:30:46'),
(24,'SELLO FOLIADOR 6 DIGITOS',NULL,130000,154700,149997,178500,NULL,'1',NULL,'mm',3,1,'2025-02-24 20:38:17','2025-02-24 20:38:17'),
(25,'NUMERADOR 12 DIGITOS',NULL,25000,29750,35000,41650,NULL,'1',NULL,'mm',3,1,'2025-02-24 20:39:34','2025-02-24 20:39:34'),
(26,'NUMERADOR 10 DIGITOS',NULL,20000,23800,30000,35700,NULL,'1',NULL,'mm',3,1,'2025-02-24 20:40:18','2025-02-24 20:40:18'),
(27,'TINTA NEGRA, ROJA, AZUL,',NULL,15000,17850,35000,41650,NULL,'1',NULL,'mm',1,2,'2025-02-24 20:52:36','2025-02-24 20:52:36'),
(28,'TINTA INDELEBLE LAFE',NULL,20000,23800,35000,41650,NULL,'1',NULL,'mm',3,2,'2025-02-24 20:53:39','2025-02-24 21:08:51'),
(29,'TINTA ECONOMICA',NULL,10000,11900,15000,17850,NULL,'1',NULL,'mm',3,NULL,'2025-02-24 20:54:57','2025-02-24 20:54:57'),
(30,'TINTA INDELEBLE ',NULL,130000,154700,160000,190400,NULL,'1','500','ml',3,2,'2025-02-24 20:58:17','2025-02-24 21:05:31'),
(31,'S-311',NULL,13000,15470,18000,21420,NULL,'1',NULL,'mm',3,2,'2025-02-24 21:10:19','2025-02-24 21:10:19'),
(32,'ALMOHADILLA REP. S 1823-7 LOTE',NULL,15000,17850,20000,23800,NULL,'1',NULL,'mm',3,2,'2025-02-24 21:12:32','2025-02-24 21:12:32'),
(33,'ALMOHADILLA REP. 822',NULL,14000,16650,20000,23800,NULL,'1',NULL,'mm',3,2,'2025-02-24 21:13:34','2025-02-24 21:13:34'),
(34,'ALMOHADILLA REP. 823',NULL,15000,17850,20000,23800,NULL,'1',NULL,'mm',3,2,'2025-02-24 21:14:14','2025-02-24 21:14:14'),
(35,'ALMOHADILLA No. 2 CON TINTA',NULL,12000,14480,18000,21420,NULL,'1',NULL,'mm',3,2,'2025-02-24 21:15:05','2025-02-24 21:15:05'),
(36,'ALMOHADILLA No. 2 SIN TINTA',NULL,12000,14480,15000,17850,NULL,'1',NULL,'mm',3,2,'2025-02-24 21:15:47','2025-02-24 21:15:47'),
(37,'ALMOHADILLAS ',NULL,25000,29750,35000,41650,NULL,'1','11*11','mm',3,2,'2025-02-24 21:17:21','2025-02-24 21:17:21'),
(38,'ALMOHADILLAS ',NULL,40000,47600,50000,59500,NULL,'1','15*15','mm',3,2,'2025-02-24 21:18:19','2025-02-24 21:18:19'),
(39,'ALMOHADILLAS ',NULL,50000,59500,60000,71400,NULL,'1','20*20','mm',3,2,'2025-02-24 21:19:07','2025-02-24 21:29:01'),
(40,'CAUCHO DE SELLOS ',NULL,50000,59500,NULL,NULL,NULL,'1','20*30','mm',3,1,'2025-02-24 21:20:49','2025-02-24 21:20:49'),
(41,'MADERAS ',NULL,3500,NULL,NULL,NULL,NULL,'1','1*1','mm',3,1,'2025-02-24 21:21:44','2025-02-24 21:27:23'),
(42,'MADERAS',NULL,3500,NULL,NULL,NULL,NULL,'1','2*2','mm',3,1,'2025-02-24 21:22:20','2025-02-24 21:22:20'),
(43,'MADERAS',NULL,4000,NULL,NULL,NULL,NULL,'1','3*3','mm',3,1,'2025-02-24 21:22:44','2025-02-24 21:22:44'),
(44,'MADERAS',NULL,4000,NULL,NULL,NULL,NULL,'1','4*4','mm',3,1,'2025-02-24 21:23:11','2025-02-24 21:23:11'),
(45,'MADERAS',NULL,5000,NULL,NULL,NULL,NULL,'1','5*5','mm',3,2,'2025-02-24 21:23:30','2025-02-24 21:26:58'),
(46,'MADERAS',NULL,7000,NULL,NULL,NULL,NULL,'1','7*7','mm',3,1,'2025-02-24 21:23:52','2025-02-24 21:26:29'),
(47,'MADERAS',NULL,12000,NULL,NULL,NULL,NULL,'1','10*10','mm',3,1,'2025-02-24 21:24:14','2025-02-24 21:24:14'),
(48,'SEÑALETICAS',NULL,7000,NULL,NULL,NULL,NULL,'1','20*15','mm',3,3,'2025-02-24 21:24:53','2025-02-24 21:24:53'),
(49,'SEÑALETICAS',NULL,15000,NULL,NULL,NULL,NULL,'1','20*20','mm',3,3,'2025-02-24 21:25:14','2025-02-24 21:28:00'),
(50,'SEÑALETICAS',NULL,20000,NULL,NULL,NULL,NULL,'1','20*28','mm',3,3,'2025-02-24 21:25:43','2025-02-24 21:25:43');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'admin','admin@email.com',NULL,'$2y$12$kuJP7vghA839rzS1DZqLm.xXJ6mxOL/reneB7QrriNi.MIRBBePu6','wxRHkOm9Odfn4cWDCeSGIRm5QxWIjtxbyVX4Fp6DqjEsZlLbumOkLTJjlcKE','2025-02-03 11:38:06','2025-02-03 11:38:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-24 16:51:32

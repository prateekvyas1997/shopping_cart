-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: test_cart_new
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.21.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `total` float DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_carts_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (3,'First Cart ','2022-05-02 04:52:41.080386','2022-05-02 05:16:52.788843',155000,'511687700001627'),(4,'Second Cart','2022-05-02 05:18:00.454474','2022-05-02 05:34:19.618545',61499,'511687700006099'),(5,'Third Cart','2022-05-02 05:29:29.345905','2022-05-02 05:42:14.568822',328000,'511687700012465'),(6,'Fourth Cart','2022-05-02 05:42:33.809403','2022-05-02 05:49:43.656917',192000,'511687700012448'),(7,'Fifth Cart','2022-05-02 05:46:02.691731','2022-05-02 05:48:05.635394',400000,'511687700007260');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `cart_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_items_on_cart_id` (`cart_id`),
  CONSTRAINT `fk_rails_0e339eeac9` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (8,'Samsung Galaxy A73, 8GB RAM, Smart Phone LTE, 256 GB, Awsome Gray',5,'https://t.infibeam.com/img/othe/0441617/33/e4/sma736galaxya735gawesomegrayfront.jpg.649dbc33e4.999x200x200.jpg',20000,3,'2022-05-02 04:57:58.868738','2022-05-02 05:16:52.769061'),(9,'Huawei P50 Pocket, 4G, 512GB Smartphone LTE, Gold',1,'https://t.infibeam.com/img/othe/0441617/1e/a7/huaweip50pocketuaepricejumbo1.jpg.8c0cc61ea7.999x590x412.jpg',10000,3,'2022-05-02 04:59:59.556508','2022-05-02 04:59:59.556508'),(10,'Vivo V23E, 8GB, 128GB, Smart Phone 5G, Moonlight Shadow',3,'https://t.infibeam.com/img/othe/0441617/f7/e7/v23eblack.jpg.34859bf7e7.999x590x412.jpg',15000,3,'2022-05-02 05:02:20.097513','2022-05-02 05:02:20.097513'),(11,'Apple AirPods (3rd generation)',2,'https://t.infibeam.com/img/othe/0441617/12/f9/3.1.jpg.9b457b12f9.999x590x412.jpg',9000,4,'2022-05-02 05:19:31.586148','2022-05-02 05:19:31.586148'),(12,'Horizon Forbidden West Ps5',1,'https://t.infibeam.com/img/othe/0441617/c2/7f/ps5hfwstepkshtftrgbae211222.jpg.605895c27f.999x590x412.jpg',4500,4,'2022-05-02 05:22:25.068993','2022-05-02 05:22:25.068993'),(13,'URAGE GUARDIAN 300 Gaming Chair 3D Armrests, Black / Blue',2,'https://t.infibeam.com/img/othe/0441617/d9/d2/666.2.jpg.46fd41d9d2.999x590x412.png',12000,4,'2022-05-02 05:24:42.210588','2022-05-02 05:24:42.210588'),(14,'Sony PS4 Dualshock 4 V2 Controller, Black',2,'https://t.infibeam.com/img/othe/0441617/56/38/sgcjul.13.1.jpg.d709db5638.999x590x412.jpg',3000,4,'2022-05-02 05:25:38.530905','2022-05-02 05:25:38.530905'),(15,'God of War for PS4',1,'https://t.infibeam.com/img/othe/0441617/0c/6c/gownmcfront.jpg.d7a50e0c6c.999x590x412.jpg',999,4,'2022-05-02 05:27:08.943155','2022-05-02 05:27:08.943155'),(16,'Sony PlayStation 5 DualSense Wireless Controller',2,'https://t.infibeam.com/img/othe/0441617/c7/15/5.1.jpg.3ff1d1c715.999x590x412.jpg',4000,4,'2022-05-02 05:28:24.479856','2022-05-02 05:28:24.479856'),(17,'Sony PlayStation Pulse 3D Wireless Headset for PS5, White',1,'https://t.infibeam.com/img/othe/0441617/46/91/3.1.jpg.de85364691.999x590x412.jpg',7000,5,'2022-05-02 05:30:48.765427','2022-05-02 05:30:48.765427'),(18,'Samsung 24 CF390 Curved LED Monitor',11,'https://t.infibeam.com/img/othe/0441617/0c/f2/samsungmonitorledcurved27c27f390fhevgahdmiaudiovesacastleit180414castleit6.jpg.07b8c40cf2.999x590x412.jpg',17000,5,'2022-05-02 05:32:14.206607','2022-05-02 05:32:14.206607'),(19,'Philips NPX442 NeoPix Easy 2+ Home Projector',6,'https://t.infibeam.com/img/othe/0441617/a4/21/1.1.jpg.bb84d5a421.999x800x800.jpg',15000,5,'2022-05-02 05:39:30.027570','2022-05-02 05:39:30.027570'),(20,'Amazon Echo Dot 3rd Generation, Charcoal',4,'https://t.infibeam.com/img/othe/0441617/76/ea/11.1.jpg.8ec40176ea.999x590x412.jpg',2000,5,'2022-05-02 05:41:35.195468','2022-05-02 05:41:35.195468'),(21,'Philips Hue Lightstrip Plus V4 APR 2m Base Kit',6,'https://t.infibeam.com/img/othe/0441617/24/53/lightstripstarterkit.jpg.9138882453.999x590x412.jpg',6000,5,'2022-05-02 05:41:35.238363','2022-05-02 05:41:35.238363'),(22,'Canon EOS 90D DSLR Camera with 18-135mm Lens',2,'https://t.infibeam.com/img/othe/0441617/f1/66/2.1.jpg.a0942ef166.999x590x412.jpg',60000,6,'2022-05-02 05:44:16.833210','2022-05-02 05:44:16.833210'),(23,'Canon EF 50mm f/1.8 STM Lens',4,'https://t.infibeam.com/img/othe/0441617/e1/7e/12.1.jpg.3665cee17e.999x590x412.jpg',18000,6,'2022-05-02 05:45:22.911116','2022-05-02 05:45:22.911116'),(24,'HP 15-EC2047NE, AMD Ryzen 7 - 5800H, 16 GB RAM, 1 TB HDD & 256 GB SDD, DED RTX 3050 4 GB Graphics, 15.6 Inch FHD IPS Laptop, Black',5,'https://t.infibeam.com/img/othe/0441617/eb/f7/duskers15shadowblackghostwhitenthdcamnonoddnonfprfreedoscoresetfrontright.jpg.c183e4ebf7.999x590x412.jpg',80000,7,'2022-05-02 05:47:46.986596','2022-05-02 05:47:46.986596');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 15:54:42
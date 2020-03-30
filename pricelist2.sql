-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: pricelists2
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.16.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(6) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'IDW950','2020-03-27 23:16:36'),(2,'IDW990','2020-03-27 23:16:36'),(3,'IDF990','2020-03-27 23:16:36'),(4,'IDF995','2020-03-27 23:16:36'),(5,'IBW000','2020-03-27 23:16:36'),(6,'BW000K','2020-03-27 23:16:36'),(7,'IWL990','2020-03-27 23:16:36'),(8,'ICS990','2020-03-27 23:16:36');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Biaya belum termasuk PPN','2020-03-29 14:48:04'),(2,'Penawaran berlaku 30 (tiga puluh) hari sejak tanggal penawaran','2020-03-29 14:48:04'),(3,'Penawaran berlaku 14 (empat belas) hari sejak tanggal penawaran','2020-03-29 14:48:04'),(4,'Penawaran berlaku 7 (tujuh) hari sejak tanggal penawaran','2020-03-29 14:48:04'),(5,'Penawaran berlaku 3 (tiga) hari sejak tanggal penawaran','2020-03-29 14:48:05'),(6,'Waktu penyerahan (delivery time) 4-8 minggu setelah PO diterima PadiNET','2020-03-29 14:48:05'),(7,'Waktu penyerahan (delivery time) 2-3 hari kerja setelah PO diterima PadiNET','2020-03-29 14:48:05'),(8,'Waktu penyerahan (delivery time) 3-5 hari kerja setelah PO diterima PadiNET','2020-03-29 14:48:05'),(9,'Waktu penyerahan (delivery time) 1-2 minggu setelah PO diterima PadiNET','2020-03-29 14:48:05'),(10,'Waktu penyerahan (delivery time) 2-4 minggu setelah PO diterima PadiNET','2020-03-29 14:48:05'),(11,'Biaya bisa berubah berdasar hasil survey di lapangan','2020-03-29 14:48:05'),(12,'Biaya belum termasuk segala perijinan gedung atau kawasan (apabila ada), segala biaya perijinan yang muncul akan ditagihkan ke pelanggan','2020-03-29 14:48:05'),(13,'FREE MRTG','2020-03-29 14:48:05'),(14,'Technical support 24/7 (on call)','2020-03-29 14:48:05'),(15,'FREE 1 IP Public','2020-03-29 14:48:05'),(16,'FREE 5 IP Public','2020-03-29 14:48:05'),(17,'SLA 95%','2020-03-29 14:48:05'),(18,'SLA 99%','2020-03-29 14:48:05'),(19,'SLA 99,5%','2020-03-29 14:48:05'),(20,'Weekdays troubleshoot','2020-03-29 14:48:05'),(21,'Weekdays + Weekend troubleshoot','2020-03-29 14:48:05'),(22,'Kontrak kerjasama minimal 1 (satu) tahun','2020-03-29 14:48:05'),(23,'Kontrak kerjasama minimal 2 (dua) tahun','2020-03-29 14:48:06'),(24,'Kontrak kerjasama minimal 3 (tiga) tahun','2020-03-29 14:48:06'),(25,'Jaminan perangkat mengikuti syarat dan ketentuan yang diberlakukan oleh vendor/toko','2020-03-29 14:48:06'),(26,'Jaminan perangkat 3 (tiga) bulan sejak tanggal serah terima perangkat','2020-03-29 14:48:06'),(27,'Jaminan perangkat 1 (satu) tahun sejak tanggal serah terima perangkat (hanya perbaikan)','2020-03-29 14:48:06'),(28,'Jaminan perangkat 1 (satu) tahun sejak tanggal serah terima perangkat (perbaikan sampai dengan pengantian)','2020-03-29 14:48:06');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(6) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `price` decimal(14,2) DEFAULT NULL,
  `discount` decimal(14,2) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'IDW950','IDW950K002','Dedicated Wireless 95 Kapasitas 2','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali',1000000.00,900000.00,'Mbps'),(2,'IDW950','IDW950K005','Dedicated Wireless 95 Kapasitas 5','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',1500000.00,1350000.00,'Mbps'),(3,'IDW950','IDW950K010','Dedicated Wireless 95 Kapasitas 10','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',2500000.00,2250000.00,'Mbps'),(4,'IDW950','IDW950K015','Dedicated Wireless 95 Kapasitas 15','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',3500000.00,3150000.00,'Mbps'),(5,'IDW950','IDW950K020','Dedicated Wireless 95 Kapasitas 20','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',4500000.00,4050000.00,'Mbps'),(6,'IDW950','IDW950K025','Dedicated Wireless 95 Kapasitas 25','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',5500000.00,4950000.00,'Mbps'),(7,'IDW950','IDW950K030','Dedicated Wireless 95 Kapasitas 30','Internet Dedicated Wireless SLA 95%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',6500000.00,5850000.00,'Mbps'),(8,'IDW990','IDW990K002','Dedicated Wireless 99 Kapasitas 2','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 1 IP Public, Surabaya, Malang, Bali',1500000.00,1350000.00,'Mbps'),(9,'IDW990','IDW990K005','Dedicated Wireless 99 Kapasitas 5','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Surabaya, Malang, Bali, Jakarta',2500000.00,2250000.00,'Mbps'),(10,'IDW990','IDW990K010','Dedicated Wireless 99 Kapasitas 10','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Surabaya, Malang, Bali, Jakarta',3500000.00,3150000.00,'Mbps'),(11,'IDW990','IDW990K015','Dedicated Wireless 99 Kapasitas 15','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Surabaya, Malang, Bali, Jakarta',4500000.00,4050000.00,'Mbps'),(12,'IDW990','IDW990K020','Dedicated Wireless 99 Kapasitas 20','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Surabaya, Malang, Bali, Jakarta',5500000.00,4950000.00,'Mbps'),(13,'IDW990','IDW990K025','Dedicated Wireless 99 Kapasitas 25','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Surabaya, Malang, Bali, Jakarta',6500000.00,5850000.00,'Mbps'),(14,'IDW990','IDW990K030','Dedicated Wireless 99 Kapasitas 30','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Surabaya, Malang, Bali, Jakarta',7500000.00,6750000.00,'Mbps'),(15,'IDF990','IDF990K005','Dedicated FO Lite Kapasitas 5','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',3500000.00,3150000.00,'Mbps'),(16,'IDF990','IDF990K010','Dedicated FO Lite Kapasitas 10','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',4500000.00,4050000.00,'Mbps'),(17,'IDF990','IDF990K015','Dedicated FO Lite Kapasitas 15','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',5500000.00,4950000.00,'Mbps'),(18,'IDF990','IDF990K020','Dedicated FO Lite Kapasitas 20','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',6500000.00,5850000.00,'Mbps'),(19,'IDF990','IDF990K025','Dedicated FO Lite Kapasitas 25','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',7500000.00,6750000.00,'Mbps'),(20,'IDF990','IDF990K030','Dedicated FO Lite Kapasitas 30','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',8500000.00,7650000.00,'Mbps'),(21,'IDF990','IDF990K050','Dedicated FO Lite Kapasitas 50','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',10000000.00,9000000.00,'Mbps'),(22,'IDF990','IDF990K100','Dedicated FO Lite Kapasitas 100','Internet Deditaced FO SLA 99%, Weekdays support, 1 IP Public, Surabaya, Malang, Bali, Jakarta',17000000.00,15300000.00,'Mbps'),(23,'IDF995','IDF995K005','Dedicated FO Kapasitas 5','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',4500000.00,4050000.00,'Mbps'),(24,'IDF995','IDF995K010','Dedicated FO Kapasitas 10','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',5000000.00,4500000.00,'Mbps'),(25,'IDF995','IDF995K015','Dedicated FO Kapasitas 15','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',6000000.00,5400000.00,'Mbps'),(26,'IDF995','IDF995K020','Dedicated FO Kapasitas 20','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',7000000.00,6300000.00,'Mbps'),(27,'IDF995','IDF995K025','Dedicated FO Kapasitas 25','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',8000000.00,7200000.00,'Mbps'),(28,'IDF995','IDF995K030','Dedicated FO Kapasitas 30','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',10000000.00,9000000.00,'Mbps'),(29,'IDF995','IDF995K050','Dedicated FO Kapasitas 50','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',12000000.00,10800000.00,'Mbps'),(30,'IDF995','IDF995K100','Dedicated FO Kapasitas 100','Internet Deditaced FO SLA 99,5%, Weekdays + Weekend support, VAS package, 5 IP Public, Surabaya, Malang, Bali, Jakarta',20000000.00,18000000.00,'Mbps'),(31,'IBW000','IBW000K003','Broadband Wireless Kapasitas up to 3','Internet Sharing Wireless non SLA, Weekdays support, 1 IP Public, Surabaya, Malang, Bali',500000.00,500000.00,'Mbps'),(32,'IBW000','IBW000K005','Broadband Wireless Kapasitas up to 5','Internet Sharing Wireless non SLA, Weekdays support, 1 IP Public, Surabaya, Malang, Bali',750000.00,750000.00,'Mbps'),(33,'IBW000','IBW000K008','Broadband Wireless Kapasitas up to 8','Internet Sharing Wireless non SLA, Weekdays support, 1 IP Public, Surabaya, Malang, Bali',1000000.00,1000000.00,'Mbps'),(34,'IBW000','IBW000K010','Broadband Wireless Kapasitas up to 10','Internet Sharing Wireless non SLA, Weekdays support, 1 IP Public, Surabaya, Malang, Bali',1250000.00,1250000.00,'Mbps'),(35,'BW000K','BW000K050','Broadband Wireless Kapasitas up to 50','Internet Sharing Wireless non SLA, Weekdays support, 1 Ip Public, Lokasi Gedung Sucofindo, MRA',1750000.00,1500000.00,'Mbps'),(36,'IWL990','IWL990K002','Dedicated Wireless Localloop Kapasitas 2 ','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',750000.00,675000.00,'Mbps'),(37,'IWL990','IWL990K005','Dedicated Wireless Localloop Kapasitas 5','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',1000000.00,900000.00,'Mbps'),(38,'IWL990','IWL990K010','Dedicated Wireless Localloop Kapasitas 10','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',1500000.00,1350000.00,'Mbps'),(39,'IWL990','IWL990K015','Dedicated Wireless Localloop Kapasitas 15','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',2000000.00,1800000.00,'Mbps'),(40,'IWL990','IWL990K020','Dedicated Wireless Localloop Kapasitas 20','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',2500000.00,2250000.00,'Mbps'),(41,'IWL990','IWL990K025','Dedicated Wireless Localloop Kapasitas 25','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',3000000.00,2700000.00,'Mbps'),(42,'IWL990','IWL990K030','Dedicated Wireless Localloop Kapasitas 30','Localloop Dedicated Wireless SLA 99%, Weekdays + Weekend support, biaya per titik, Surabaya, Malang, Bali',3500000.00,3150000.00,'Mbps'),(43,'ICS990','ICS990K02U','Colocation Standard 2U','Colocation Server Rackmount Space 2U, IX Up to 1Mb, IIX Up to 100Mb, 1 IP Public, Lokasi IDC D3',2000000.00,1500000.00,'U'),(44,'ICS990','ICS990K04U','Colocation Standard 4U','Colocation Server Rackmount Space 4U, IX Up to 1Mb, IIX Up to 100Mb, 1 IP Public, Lokasi IDC D3',3000000.00,2500000.00,'U'),(45,'ICS990','ICS990K05R','Colocation Standard 1/2R','Colocation Server Rackmount Space 1/2 Rack, IX Up to 1Mb, IIX Up to 100Mb, 1 IP Public, Power Supply 220VAC 6A, Lokasi IDC D3',7000000.00,6500000.00,'Rack'),(46,'ICS990','ICS990K10R','Colocation Standard 1R','Colocation Server Rackmount Space 1 Rack, IX Up to 1Mb, IIX Up to 100Mb, 1 IP Public, Power Supply 220VAC 12A, Lokasi IDC D3',12000000.00,11000000.00,'Rack'),(47,'IDW990','IDW990K002P12','12Mo Dedicated Wireless 99 Kapasitas 2 ','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 1 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',1050000.00,1050000.00,' Mbps '),(48,'IDW990','IDW990K005P12','12Mo Dedicated Wireless 99 Kapasitas 5','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',1750000.00,1750000.00,' Mbps '),(49,'IDW990','IDW990K010P12','12Mo Dedicated Wireless 99 Kapasitas 10','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',2450000.00,2450000.00,' Mbps '),(50,'IDW990','IDW990K015P12','12Mo Dedicated Wireless 99 Kapasitas 15','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',3150000.00,3150000.00,' Mbps '),(51,'IDW990','IDW990K020P12','12Mo Dedicated Wireless 99 Kapasitas 20','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',3850000.00,3850000.00,' Mbps '),(52,'IDW990','IDW990K025P12','12Mo Dedicated Wireless 99 Kapasitas 25','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',4550000.00,4550000.00,' Mbps '),(53,'IDW990','IDW990K030P12','12Mo Dedicated Wireless 99 Kapasitas 30','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 1 tahun, Surabaya, Malang, Bali, Jakarta',5250000.00,5250000.00,' Mbps '),(54,'IDW990','IDW990K002P06','6Mo Dedicated Wireless 99 Kapasitas 2 ','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 1 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',1125000.00,1125000.00,' Mbps '),(55,'IDW990','IDW990K005P06','6Mo Dedicated Wireless 99 Kapasitas 5','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',1875000.00,1875000.00,' Mbps '),(56,'IDW990','IDW990K010P06','6Mo Dedicated Wireless 99 Kapasitas 10','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',2625000.00,2625000.00,' Mbps '),(57,'IDW990','IDW990K015P06','6Mo Dedicated Wireless 99 Kapasitas 15','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',3375000.00,3375000.00,' Mbps '),(58,'IDW990','IDW990K030P06','6Mo Dedicated Wireless 99 Kapasitas 20','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',4125000.00,4125000.00,' Mbps '),(59,'IDW990','IDW990K025P06','6Mo Dedicated Wireless 99 Kapasitas 25','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',4875000.00,4875000.00,' Mbps '),(60,'IDW990','IDW990K030P06','6Mo Dedicated Wireless 99 Kapasitas 30','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 6 bulan, Surabaya, Malang, Bali, Jakarta',5625000.00,5625000.00,' Mbps '),(61,'IDW990','IDW990K002P03','3Mo Dedicated Wireless 99 Kapasitas 2','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 1 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',1200000.00,1200000.00,' Mbps '),(62,'IDW990','IDW990K005P03','3Mo Dedicated Wireless 99 Kapasitas 5','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',2000000.00,2000000.00,' Mbps '),(63,'IDW990','IDW990K010P03','3Mo Dedicated Wireless 99 Kapasitas 10','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',2800000.00,2800000.00,' Mbps '),(64,'IDW990','IDW990K015P03','3Mo Dedicated Wireless 99 Kapasitas 15','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',3600000.00,3600000.00,' Mbps '),(65,'IDW990','IDW990K020P03','3Mo Dedicated Wireless 99 Kapasitas 20','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',4400000.00,4400000.00,' Mbps '),(66,'IDW990','IDW990K025P03','3Mo Dedicated Wireless 99 Kapasitas 25','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',5200000.00,5200000.00,' Mbps '),(67,'IDW990','IDW990K030P03','3Mo Dedicated Wireless 99 Kapasitas 30','Internet Dedicated Wireless SLA 99%, Weekdays + Weekend support, VAS Package 5 IP Public, Prepaid 3 bulan, Surabaya, Malang, Bali, Jakarta',6000000.00,6000000.00,' Mbps ');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_categories`
--

DROP TABLE IF EXISTS `raw_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_categories` (
  `category_id` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_categories`
--

LOCK TABLES `raw_categories` WRITE;
/*!40000 ALTER TABLE `raw_categories` DISABLE KEYS */;
INSERT INTO `raw_categories` VALUES ('IDW950'),('IDW950'),('IDW950'),('IDW950'),('IDW950'),('IDW950'),('IDW950'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDF990'),('IDF990'),('IDF990'),('IDF990'),('IDF990'),('IDF990'),('IDF990'),('IDF990'),('IDF995'),('IDF995'),('IDF995'),('IDF995'),('IDF995'),('IDF995'),('IDF995'),('IDF995'),('IBW000'),('IBW000'),('IBW000'),('IBW000'),('BW000K'),('IWL990'),('IWL990'),('IWL990'),('IWL990'),('IWL990'),('IWL990'),('IWL990'),('ICS990'),('ICS990'),('ICS990'),('ICS990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990'),('IDW990');
/*!40000 ALTER TABLE `raw_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-30  9:09:55

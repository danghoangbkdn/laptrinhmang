CREATE DATABASE  IF NOT EXISTS `quanlypb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quanlypb`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlypb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad` (
  `MaAD` int NOT NULL,
  `TaiKhoan` varchar(45) NOT NULL,
  `MatKhau` varchar(45) NOT NULL,
  PRIMARY KEY (`MaAD`),
  UNIQUE KEY `TaiKhoan_UNIQUE` (`TaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,'chimanh','12345');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL,
  `TenNV` varchar(45) NOT NULL,
  `SDT` varchar(45) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` text NOT NULL,
  `MaPB` int NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `fk_NhanVien_PhongBan_idx` (`MaPB`),
  CONSTRAINT `fk_NhanVien_PhongBan` FOREIGN KEY (`MaPB`) REFERENCES `phongban` (`MaPB`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Chí Mạnh','0983971677','1998-03-11','Liên Chiểu Đà Nẵng',2),
							  (2,'Văn Tèo','0985148888','2000-01-01','KTX BKDN Đà Nẵng',1);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongban`
--

DROP TABLE IF EXISTS `phongban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongban` (
  `MaPB` int NOT NULL,
  `TenPB` varchar(255) NOT NULL,
  PRIMARY KEY (`MaPB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongban`
--

LOCK TABLES `phongban` WRITE;
/*!40000 ALTER TABLE `phongban` DISABLE KEYS */;
INSERT INTO `phongban` VALUES (1,'Phòng TC'),(2,'Phòng TT');
/*!40000 ALTER TABLE `phongban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'quanlypb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-16 11:37:59

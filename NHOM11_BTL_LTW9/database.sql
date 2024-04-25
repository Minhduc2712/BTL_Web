-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ltweb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCustomer` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `priceBuy` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCustomer` (`idCustomer`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `user` (`id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (10,1,17,1,682500),(17,7,4,1,180000),(18,7,6,1,185000);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` char(50) NOT NULL,
  `idCateP` char(50) NOT NULL,
  `name` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idCateP` (`idCateP`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`idCateP`) REFERENCES `categoryparent` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('PK1','CP2','Mắt kính',1),('PK2','CP2','Vớ',1),('T1','CP1','Túi Cỡ Nhỏ',0),('T2','CP1','Túi Cỡ Trung',1),('T3','CP1','Túi Cỡ Lớn',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryparent`
--

DROP TABLE IF EXISTS `categoryparent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryparent` (
  `id` char(50) NOT NULL,
  `nameP` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryparent`
--

LOCK TABLES `categoryparent` WRITE;
/*!40000 ALTER TABLE `categoryparent` DISABLE KEYS */;
INSERT INTO `categoryparent` VALUES ('CP1','Túi'),('CP2','Phụ Kiện');
/*!40000 ALTER TABLE `categoryparent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subject` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `mess` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'hang@gmail.com','Mai','','Giao hàng tới đây');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordershop`
--

DROP TABLE IF EXISTS `ordershop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordershop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `datebuy` date NOT NULL,
  `timebuy` time NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `payment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `totalMoney` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`),
  CONSTRAINT `ordershop_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordershop`
--

LOCK TABLES `ordershop` WRITE;
/*!40000 ALTER TABLE `ordershop` DISABLE KEYS */;
INSERT INTO `ordershop` VALUES (1,4,'2022-05-12','20:44:32','0985753941','Ba Đình','chuyển qua ngân hàng','',998580),(2,4,'2022-05-12','20:45:25','0985753941','Ba Đình','chuyển qua ngân hàng','',805000),(3,7,'2022-05-12','20:46:01','0978965324','Hai Bà Trưng','thanh toán khi giao hàng','',1435140);
/*!40000 ALTER TABLE `ordershop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordershopdetail`
--

DROP TABLE IF EXISTS `ordershopdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordershopdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL,
  `idOrderShop` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProduct` (`idProduct`),
  KEY `idOrderShop` (`idOrderShop`),
  CONSTRAINT `ordershopdetail_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  CONSTRAINT `ordershopdetail_ibfk_2` FOREIGN KEY (`idOrderShop`) REFERENCES `ordershop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordershopdetail`
--

LOCK TABLES `ordershopdetail` WRITE;
/*!40000 ALTER TABLE `ordershopdetail` DISABLE KEYS */;
INSERT INTO `ordershopdetail` VALUES (1,34,1,1),(2,21,1,1),(3,22,1,1),(4,8,2,1),(5,6,2,3),(6,8,3,1),(7,32,3,4),(8,23,3,1);
/*!40000 ALTER TABLE `ordershopdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` double NOT NULL,
  `idCate` char(50) NOT NULL,
  `image_link` varchar(200) NOT NULL,
  `image_list` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `amount_left` int(11) NOT NULL,
  `amount_sold` int(11) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idCate` (`idCate`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idCate`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Túi Xách Nhỏ Khoá Xoay Puzzle',120000,'T1','assets/img/tui/tuiconho/tuiconho1.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',0,201,0,1),(2,'Túi Xách Nhỏ Cut Out Và Khoá Trang Trí',150000,'T1','assets/img/tui/tuiconho/tuiconho2.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',251,201,2,1),(3,'Túi Xách Nhỏ Khoá Trang Trí',250000,'T1','assets/img/tui/tuiconho/tuiconho3.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',0,21,0,1),(4,'Túi Xách Nhỏ Thân Xếp Cạnh Khoá Trang Trí',180000,'T1','assets/img/tui/tuiconho/tuiconho4.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2022-01-01',0,100,0,1),(5,'Túi Xách Nhỏ Nắp Cắt Hoạ Tiết Puzzle',285000,'T1','assets/img/tui/tuiconho/tuiconho5.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-04',90,63,0,1),(6,'Túi Xách Nhỏ Hai Mặt Phối Khoá Xoay Puzzle',185000,'T1','assets/img/tui/tuiconho/tuiconho6.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',257,173,0,1),(7,'Túi Xách Nhỏ Nắp Gập Dập Nổi 3d',300000,'T1','assets/img/tui/tuiconho/tuiconho7.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',490,180,0,1),(8,'Túi Xách Nhỏ Trang Trí Khóa Kim Loại',250000,'T1','assets/img/tui/tuiconho/tuiconho8.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',88,21,0,1),(9,'Túi Xách Nhỏ Cắt Lazer Charm Trang Trí',120000,'T1','assets/img/tui/tuiconho/tuiconho9.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',256,170,0,1),(10,'Túi Xách Nhỏ Double-Handle Satchel',320000,'T1','assets/img/tui/tuiconho/tuiconho10.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2021-12-01',210,180,0,1),(11,'Túi Xách Trung Cut Out Và Khoá Trang Trí',320000,'T2','assets/img/tui/tuicovua/tuicovua1.png','img/tui/tui.png','Túi xách thời trang cỡ nhỏ','2022-05-10',210,180,4,1),(12,'Túi Xách Trung Khoá Trang Trí',320000,'T2','assets/img/tui/tuicovua/tuicovua2.png','img/tui/tui.png','Túi xách thời trang cỡ vừa','2022-05-01',230,80,5,1),(13,'Túi Xách Trung Tối Giản',430000,'T2','assets/img/tui/tuicovua/tuicovua3.png','img/tui/tui.png','Túi xách thời trang cỡ vừa','2021-09-01',190,87,0,1),(14,'Túi Xách Trung Cắt Lazer Charm Trang Trí',350000,'T2','assets/img/tui/tuicovua/tuicovua4.png','img/tui/tui.png','Túi xách thời trang cỡ vừa','2021-06-10',58,12,7,1),(15,'Túi Xách Trung Pretty Encyclopedist',475000,'T2','assets/img/tui/tuicovua/tuicovua5.png','img/tui/tui.png','Túi xách thời trang cỡ vừa','2022-05-01',90,15,4,1),(16,'Túi Xách Trung Balance',643000,'T2','assets/img/tui/tuicovua/tuicovua6.png','img/tui/tui.png','Túi xách thời trang cỡ vừa','2022-07-04',350,76,0,1),(17,'Túi Xách Lớn Essentials-In-One',750000,'T3','assets/img/tui/tuicolon/tuicolon1.png','img/tui/tui.png','Túi xách thời trang cỡ lớn','2022-03-01',410,10,9,1),(18,'Túi Xách Lớn Everyday Carry-All',230000,'T3','assets/img/tui/tuicolon/tuicolon2.png','img/tui/tui.png','Túi xách thời trang cỡ lớn','2022-03-07',201,150,4,1),(19,'Túi Xách Lớn Trapeze Phối Hai Chất Liệu',430000,'T3','assets/img/tui/tuicolon/tuicolon3.png','img/tui/tui.png','Túi xách thời trang cỡ lớn','2022-03-12',75,5,0,1),(20,'Mắt kính vuông kim loại phôi viền nhựa',446000,'PK1','assets/img/phukien/matkinh/kinh1.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',75,5,0,1),(21,'Mắt kính vuông kim loại nhấn góc',450000,'PK1','assets/img/phukien/matkinh/kinh2.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',74,6,2,1),(22,'Mắt kính avator kim loại1',486000,'PK1','assets/img/phukien/matkinh/kinh3.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',74,6,1,1),(23,'mắt kính vuông kim loại1',486000,'PK1','assets/img/phukien/matkinh/kinh4.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',74,6,1,1),(24,'Mắt kính Avator kim loại2',446000,'PK1','assets/img/phukien/matkinh/kinh5.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',75,5,0,1),(25,'Mắt kính phối viền kim loại',486000,'PK1','assets/img/phukien/matkinh/kinh6.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',75,5,0,1),(26,'Mắt kính vuông cách điệu',446000,'PK1','assets/img/phukien/matkinh/kinh7.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',75,5,0,1),(27,'Mắt kính vuông gọng trang trí sọc',446000,'PK1','assets/img/phukien/matkinh/kinh8.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-04-12',75,5,1,1),(28,'Mắt kính vuông gọng nhựac',486000,'PK1','assets/img/phukien/matkinh/kinh9.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',75,5,1,1),(29,'Mắt kính vuông kim loại phối nhựa',446000,'PK1','assets/img/phukien/matkinh/kinh10.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-04-12',75,5,1,1),(30,'Mắt kính vuống kim loại trang trí viền',486000,'PK1','assets/img/phukien/matkinh/kinh11.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-05-12',75,5,0,1),(31,'Vớ cổ cao bộ 2 đôi kiểu trơn',68000,'PK2','assets/img/phukien/vo/vo1.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-05-12',75,5,1,1),(32,'Vớ cổ cao bộ 3 đôi kiểu trơn',176000,'PK2','assets/img/phukien/vo/vo2.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-02-12',71,9,0,1),(33,'Vớ cổ cao bộ 3 đôi kiểu trơn 1',68000,'PK2','assets/img/phukien/vo/vo3.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-05-12',75,5,0,1),(34,'vớ cổ thấp bộ 2 đôi kiểu mèo và sương cá',78000,'PK2','assets/img/phukien/vo/vo4.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',74,6,2,1),(35,'vớ cổ thấp bộ 2 đôi kiểu ong và hoa',68000,'PK2','assets/img/phukien/vo/vo5.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-05-12',75,5,1,1),(36,'vớ cổ cao bộ 3 đôi kiểu trơn sọc',78000,'PK2','assets/img/phukien/vo/vo6.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-03-12',75,5,0,1),(37,'vớ lười bộ 2 đôi kiểu tron',68000,'PK2','assets/img/phukien/vo/vo7.png','','Mắt kính hợp thời trang phục vụ đầy đủ nhu cầu','2022-01-12',75,5,1,1),(38,'Túi xách nhỏ đáy cong trang trí xà cừ',780000,'T1','assets/img/tuiconho10.png','assets/img/tui/tui.png','hôm nay trời đẹp ghê','2022-05-10',852,0,0,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `isadmin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyen Hang','hang@gmail.com','12345678','0984561230','Hà Đông',1),(2,'Ngô Nam','nam@gmail.com','11111111','0984567413','Thanh Xuân',1),(3,'Đỗ Hà','ha@gmail.com','22222222','0985267964','Nam Từ Liêm',1),(4,'Đặng Thoa','thoa@gmail.com','aaaaaaaa','0985753941','Ba Đình',0),(5,'Nguyễn Mến','men@gmail.com','bbbbbbbb','0987432165','Hoàng Mai',0),(6,'Ngô Dũng','dung@gmail.com','cccccccc','0941258964','Tây Hồ',0),(7,'Đỗ Mai','mai@gmail.com','dddddddd','0978965324','Hai Bà Trưng',0),(8,'Nguyễn Tiến','tien@gmail.com','tttttttt','0965498732','Đống Đa',0),(9,'Đặng Hoa','hoa@gmail.com','pppppppp','0936924587','Hoàn Kiếm',0),(10,'Đỗ Như','nhu@gmail.com','98765432','0935798416','Cầu Giấy',0),(11,'Nguyễn Phong','phong@gmail.com','yyyyyyyy','096547812','Hoàng Mai',0),(12,'Hạnh','alo@gmail.com','1234','0963258748','Đống Đa',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 22:37:27

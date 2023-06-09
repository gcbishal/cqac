-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cqac
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `care`
--

DROP TABLE IF EXISTS `care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care` (
  `CareID` int NOT NULL AUTO_INCREMENT,
  `ContractStartDate` date NOT NULL,
  `ContractEndDate` date NOT NULL,
  `TypeOfCare` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ResidentId` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  PRIMARY KEY (`CareID`),
  KEY `IX_CARE_ResidentId` (`ResidentId`),
  KEY `IX_CARE_RoomID` (`RoomID`),
  CONSTRAINT `FK_CARE_RESIDENT_ResidentId` FOREIGN KEY (`ResidentId`) REFERENCES `resident` (`ResidentId`),
  CONSTRAINT `FK_CARE_ROOM_RoomID` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `care`
--

LOCK TABLES `care` WRITE;
/*!40000 ALTER TABLE `care` DISABLE KEYS */;
INSERT INTO `care` VALUES (1,'2023-05-16','2023-06-15','Daily',1,1),(2,'2023-05-17','2023-06-16','Weekly',2,2),(3,'2023-05-18','2023-06-17','Daily',3,3),(4,'2023-05-19','2023-06-18','Monthly',4,4),(5,'2023-05-20','2023-06-19','Daily',5,5),(6,'2023-05-21','2023-06-20','Weekly',6,6),(7,'2023-05-22','2023-06-21','Daily',7,7),(8,'2023-05-23','2023-06-22','Monthly',8,8),(9,'2023-05-24','2023-06-23','Daily',9,9),(10,'2023-05-25','2023-06-24','Weekly',10,10),(11,'2023-05-26','2023-06-25','Daily',1,11),(12,'2023-05-27','2023-06-26','Monthly',2,12),(13,'2023-05-28','2023-06-27','Daily',3,13),(14,'2023-05-29','2023-06-28','Weekly',4,14),(15,'2023-05-30','2023-06-29','Daily',5,15),(16,'2023-05-31','2023-06-30','Monthly',6,16),(17,'2023-06-01','2023-07-01','Daily',7,17),(18,'2023-06-02','2023-07-02','Weekly',8,18),(19,'2023-06-03','2023-07-03','Daily',9,19),(20,'2023-06-04','2023-07-04','Monthly',10,20);
/*!40000 ALTER TABLE `care` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 19:51:27

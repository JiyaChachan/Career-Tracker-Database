DROP SCHEMA IF EXISTS `trackerdb` ;
CREATE SCHEMA  IF NOT EXISTS `trackerdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trackerdb`;
-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: trackerdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `application_date` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `position_id` int NOT NULL,
  `job_board_id` int NOT NULL,
  `status_type_id` int NOT NULL,
  PRIMARY KEY (`application_id`),
  KEY `fk_application_system_user1_idx` (`user_id`),
  KEY `fk_application_position1_idx` (`position_id`),
  KEY `fk_application_job_board1_idx` (`job_board_id`),
  KEY `fk_application_status_type1_idx` (`status_type_id`),
  CONSTRAINT `fk_application_job_board1` FOREIGN KEY (`job_board_id`) REFERENCES `job_board` (`job_board_id`),
  CONSTRAINT `fk_application_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  CONSTRAINT `fk_application_status_type1` FOREIGN KEY (`status_type_id`) REFERENCES `status_type` (`status_type_id`),
  CONSTRAINT `fk_application_system_user1` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'2024-07-30 14:18:33',1,1,4,1),(2,'2024-10-30 09:32:40',1,2,2,1),(3,'2024-12-05 16:33:13',1,3,3,2),(4,'2024-11-14 16:20:11',2,5,4,2),(5,'2025-01-05 12:15:01',2,5,4,4),(6,'2025-01-15 13:01:10',3,6,2,2),(7,'2025-01-18 10:00:00',3,7,4,1),(8,'2025-01-20 09:00:00',4,8,1,2),(9,'2025-01-21 11:30:00',4,9,2,1),(10,'2025-01-22 14:00:00',5,10,3,4),(11,'2025-01-23 15:45:00',2,11,4,1),(12,'2025-01-25 08:30:00',1,12,5,2),(13,'2025-01-26 10:00:00',2,13,1,3),(14,'2025-01-27 13:00:00',3,14,2,5),(15,'2025-01-28 16:15:00',5,15,4,1),(16,'2025-01-29 12:00:00',4,16,3,2),(17,'2025-01-30 10:30:00',1,17,5,1),(18,'2025-01-31 14:45:00',5,18,4,4),(19,'2025-02-01 09:00:00',3,19,2,2),(20,'2025-02-02 10:30:00',4,20,1,1),(21,'2025-02-03 11:00:00',1,7,4,1),(22,'2025-02-04 13:00:00',2,9,3,4),(23,'2025-02-05 14:45:00',5,13,5,3),(24,'2025-02-06 15:15:00',1,8,2,2),(25,'2025-02-07 16:10:00',3,11,4,1),(26,'2025-02-08 17:20:00',4,14,1,2),(27,'2025-02-09 10:30:00',2,16,4,4);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `industry` varchar(45) NOT NULL,
  `headquarter` varchar(45) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Google','Tech','Mountain View','https://www.google.com/about/careers/applications/'),(2,'Meta','Tech','Menlo Park','https://www.metacareers.com/login/a'),(3,'Apple','Tech','Cupertino','https://www.apple.com/careers/us/'),(4,'Amazon','Tech','Seattle','https://www.amazon.jobs'),(5,'Microsoft','Tech','Redmond','https://careers.microsoft.com'),(6,'Goldman Sachs','Finance','New York','https://www.goldmansachs.com/careers'),(7,'Deloitte','Consulting','New York','https://www.deloitte.com/global/en/careers.html'),(8,'Tesla','Automotive','Palo Alto','https://www.tesla.com/careers'),(9,'Airbnb','Hospitality Tech','San Francisco','https://careers.airbnb.com'),(10,'Stripe','Fintech','San Francisco','https://stripe.com/jobs');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `email_address_UNIQUE` (`email_address`),
  KEY `fk_contact_company1_idx` (`company_id`),
  CONSTRAINT `fk_contact_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'James Smith','james.smith@gmail.com','4479021298',1),(2,'Kelly Johnson','kelly.johnson24@gmail.com','2121786152',2),(3,'Brent Miller','brentmiller123@gmail.com','3151280039',2),(4,'Lisa Wang','lisa.wang@amazon.com','2065550102',4),(5,'Raj Patel','raj.patel@microsoft.com','4255550189',5),(6,'Sophia Reyes','sophia.reyes@stripe.com','6285550177',10);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL,
  `filetype` varchar(45) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `upload_date` datetime DEFAULT NULL,
  `application_id` int NOT NULL,
  PRIMARY KEY (`document_id`),
  KEY `fk_document_application1_idx` (`application_id`),
  CONSTRAINT `fk_document_application1` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,'Resume','pdf','/uploads/applications/1/1_Resume_jul2024.pdf','2024-07-30 14:10:30',1),(2,'Cover Letter','docx','/uploads/applications/1/2_Cover_Letter_jul2024.docx','2024-07-30 14:12:33',1),(3,'Resume','pdf','/uploads/applications/2/3_Resume_sept2024.pdf','2024-10-30 09:25:15',2),(4,'Resume','pdf','/uploads/applications/3/4_Resume_nov2024.pdf','2024-12-05 16:20:10',3),(5,'Cover Letter','pdf','/uploads/applications/3/5_Cover_Letter._nov2024pdf','2024-12-05 16:24:11',3),(6,'Resume','pdf','/uploads/applications/4/6_Resume.pdf','2024-11-14 16:10:12',4),(7,'Resume','pdf','/uploads/applications/5/7_Resume.pdf','2025-01-05 12:10:00',5),(8,'Cover Letter','pdf','/uploads/applications/6/8_Cover_Letter_jan2025.pdf','2025-01-15 13:00:00',6),(9,'Resume','pdf','/uploads/applications/8/9_Resume_jan2025.pdf','2025-01-20 09:00:00',8),(10,'Resume','pdf','/uploads/applications/10/10_Resume.pdf','2025-01-22 14:00:00',10),(11,'Resume','docx','/uploads/applications/12/11_Resume.docx','2025-01-25 08:30:00',12),(12,'Cover Letter','pdf','/uploads/applications/12/12_Cover_Letter.pdf','2025-01-25 08:35:00',12),(13,'Resume','pdf','/uploads/applications/13/13_Resume_feb2025.pdf','2025-01-26 10:00:00',13),(14,'Cover Letter','pdf','/uploads/applications/13/14_Cover_Letter_feb2025.pdf','2025-01-26 10:05:00',13),(15,'Resume','pdf','/uploads/applications/14/15_Resume_feb2025.pdf','2025-01-27 13:00:00',14),(16,'Resume','pdf','/uploads/applications/16/16_Resume_feb2025.pdf','2025-01-29 12:00:00',16),(17,'Resume','pdf','/uploads/applications/17/17_Resume_feb2025.pdf','2025-01-30 10:30:00',17),(18,'Cover Letter','docx','/uploads/applications/17/18_Cover_Letter_feb2025.docx','2025-01-30 10:35:00',17);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `interview_id` int NOT NULL AUTO_INCREMENT,
  `interview_date` datetime DEFAULT NULL,
  `application_id` int NOT NULL,
  `interview_type_id` int NOT NULL,
  `outcome_id` int NOT NULL,
  PRIMARY KEY (`interview_id`),
  KEY `fk_interview_application_idx` (`application_id`),
  KEY `fk_interview_interview_type1_idx` (`interview_type_id`),
  KEY `fk_interview_interview_outcome1_idx` (`outcome_id`),
  CONSTRAINT `fk_interview_application` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`),
  CONSTRAINT `fk_interview_interview_outcome1` FOREIGN KEY (`outcome_id`) REFERENCES `interview_outcome` (`outcome_id`),
  CONSTRAINT `fk_interview_interview_type1` FOREIGN KEY (`interview_type_id`) REFERENCES `interview_type` (`interview_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES (1,'2025-05-30 16:00:00',3,3,5),(2,'2024-11-24 16:00:00',4,5,1),(3,'2025-01-25 12:00:00',5,2,4),(4,'2025-01-15 13:30:00',6,3,1),(5,'2025-01-23 11:30:00',8,5,1),(6,'2025-01-28 10:00:00',12,3,1),(7,'2025-02-01 14:00:00',16,4,2),(8,'2025-02-04 10:30:00',19,2,5),(9,'2025-02-07 16:00:00',23,1,3),(10,'2025-02-09 14:30:00',24,5,1),(11,'2025-02-11 11:00:00',26,3,5),(12,'2025-03-05 14:00:00',23,5,1);
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_outcome`
--

DROP TABLE IF EXISTS `interview_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_outcome` (
  `outcome_id` int NOT NULL AUTO_INCREMENT,
  `outcome_name` varchar(50) NOT NULL,
  PRIMARY KEY (`outcome_id`),
  UNIQUE KEY `outcome_name` (`outcome_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_outcome`
--

LOCK TABLES `interview_outcome` WRITE;
/*!40000 ALTER TABLE `interview_outcome` DISABLE KEYS */;
INSERT INTO `interview_outcome` VALUES (1,'Completed'),(2,'Passed'),(3,'Pending'),(4,'Rejected'),(5,'Scheduled');
/*!40000 ALTER TABLE `interview_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_type`
--

DROP TABLE IF EXISTS `interview_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_type` (
  `interview_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`interview_type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_type`
--

LOCK TABLES `interview_type` WRITE;
/*!40000 ALTER TABLE `interview_type` DISABLE KEYS */;
INSERT INTO `interview_type` VALUES (1,'HR'),(2,'On-site'),(3,'Phone'),(4,'Technical'),(5,'Video');
/*!40000 ALTER TABLE `interview_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_board`
--

DROP TABLE IF EXISTS `job_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_board` (
  `job_board_id` int NOT NULL AUTO_INCREMENT,
  `board_name` varchar(50) NOT NULL,
  PRIMARY KEY (`job_board_id`),
  UNIQUE KEY `board_name` (`board_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_board`
--

LOCK TABLES `job_board` WRITE;
/*!40000 ALTER TABLE `job_board` DISABLE KEYS */;
INSERT INTO `job_board` VALUES (1,'Company Site'),(2,'Handshake'),(3,'Indeed'),(4,'LinkedIn'),(5,'Referral');
/*!40000 ALTER TABLE `job_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `note_id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `date_created` datetime DEFAULT NULL,
  `application_id` int NOT NULL,
  PRIMARY KEY (`note_id`),
  KEY `fk_note_application1_idx` (`application_id`),
  CONSTRAINT `fk_note_application1` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'Follow up with recruiter after interview','2024-08-06 09:30:00',1),(2,'Company prefers candidates with Python experience','2024-10-31 12:00:00',2),(3,'Asked about relocation preference','2024-12-06 16:00:00',3),(4,'Upcoming team-fit interview next week','2024-11-15 10:15:00',4),(5,'Received feedback and tips for future applications','2025-01-11 14:45:00',5),(6,'Reached final round, waiting on decision','2025-01-15 17:00:00',6),(7,'Recruiter asked for updated resume','2025-01-21 08:45:00',8),(8,'Manager shared take-home assignment','2025-01-28 09:30:00',12),(9,'HR emailed with salary range expectations','2025-02-02 11:15:00',16),(10,'Followed up after offer was extended','2025-02-11 15:00:00',23);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `company_id` int NOT NULL,
  `sponsorship_id` int NOT NULL,
  `position_type_id` int NOT NULL,
  PRIMARY KEY (`position_id`),
  KEY `fk_position_company1_idx` (`company_id`),
  KEY `fk_position_visa_sponsorship_type1_idx` (`sponsorship_id`),
  KEY `fk_position_position_type1_idx` (`position_type_id`),
  CONSTRAINT `fk_position_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `fk_position_position_type1` FOREIGN KEY (`position_type_id`) REFERENCES `position_type` (`position_type_id`),
  CONSTRAINT `fk_position_visa_sponsorship_type1` FOREIGN KEY (`sponsorship_id`) REFERENCES `visa_sponsorship_type` (`sponsorship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Data Analyst','Analytics','Seattle',70000.00,1,3,2),(2,'Data Engineer','Engineering','Remote',80000.00,1,1,2),(3,'IT Intern','IT','Hybrid',20000.00,2,1,3),(4,'Business Analyst','Business','New York City',30000.00,2,3,1),(5,'Software Developer','Technology','Cupertino',85000.00,3,1,2),(6,'Product Manager','Product','Remote',90000.00,3,3,2),(7,'Cloud Engineer','Cloud','Seattle',115000.00,4,3,2),(8,'Data Analyst Intern','Analytics','Remote',22000.00,4,1,3),(9,'Software Engineer','Engineering','Redmond',105000.00,5,3,2),(10,'UX Designer','Design','Remote',95000.00,5,1,2),(11,'Financial Analyst','Finance','New York City',90000.00,6,1,2),(12,'Risk Intern','Risk Management','New York City',25000.00,6,1,3),(13,'Business Consultant','Consulting','Chicago',85000.00,7,3,2),(14,'Technology Analyst','Technology','Remote',78000.00,7,1,2),(15,'Mechanical Engineer','Engineering','Palo Alto',95000.00,8,3,2),(16,'Product Design Intern','Design','Hybrid',20000.00,8,1,3),(17,'Data Scientist','Data Science','San Francisco',120000.00,9,1,2),(18,'Operations Analyst','Operations','San Francisco',85000.00,9,3,2),(19,'Backend Developer','Engineering','Remote',110000.00,10,3,2),(20,'Payments Intern','Finance','Remote',24000.00,10,1,3);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_type`
--

DROP TABLE IF EXISTS `position_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_type` (
  `position_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`position_type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_type`
--

LOCK TABLES `position_type` WRITE;
/*!40000 ALTER TABLE `position_type` DISABLE KEYS */;
INSERT INTO `position_type` VALUES (1,'Co-op'),(2,'Full-Time'),(3,'Internship');
/*!40000 ALTER TABLE `position_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_type`
--

DROP TABLE IF EXISTS `status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_type` (
  `status_type_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_type_id`),
  UNIQUE KEY `status_name` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_type`
--

LOCK TABLES `status_type` WRITE;
/*!40000 ALTER TABLE `status_type` DISABLE KEYS */;
INSERT INTO `status_type` VALUES (1,'Applied'),(2,'Interviewing'),(3,'Offer Extended'),(4,'Rejected'),(5,'Withdrawn');
/*!40000 ALTER TABLE `status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_address_UNIQUE` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` VALUES (1,'jakemiller','jakemiller@gmail.com','Jake','Miller'),(2,'ellielalves','ellie.elves@gmail.com','Ellie','Elves'),(3,'willbyers','willbyers@gmail.com','Will','Byers'),(4,'nancydrew','nancy.drew@gmail.com','Nancy','Drew'),(5,'lukesky','luke.sky@gmail.com','Luke','Skywalker');
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visa_sponsorship_type`
--

DROP TABLE IF EXISTS `visa_sponsorship_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visa_sponsorship_type` (
  `sponsorship_id` int NOT NULL AUTO_INCREMENT,
  `sponsorship_status` varchar(10) NOT NULL,
  PRIMARY KEY (`sponsorship_id`),
  UNIQUE KEY `sponsorship_status` (`sponsorship_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visa_sponsorship_type`
--

LOCK TABLES `visa_sponsorship_type` WRITE;
/*!40000 ALTER TABLE `visa_sponsorship_type` DISABLE KEYS */;
INSERT INTO `visa_sponsorship_type` VALUES (1,'No'),(2,'Unknow'),(3,'Yes');
/*!40000 ALTER TABLE `visa_sponsorship_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-05 21:01:44

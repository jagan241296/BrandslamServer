-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: brandslam
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `app_id` int(10) NOT NULL,
  `name` varchar(60) DEFAULT 'user',
  `feedback` varchar(200) DEFAULT NULL,
  KEY `app_id` (`app_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `user_registration` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (104,'Jaggu','Hello jaggy... Good job'),(104,'Jaggu','Hello jaggy... Good job and nice '),(104,'Gghj','Hffg'),(104,'Gzbz','Nznz'),(104,'Tinku','Thanku'),(104,'Up','Hello update'),(104,'Gsbsb','Hshs'),(107,'Aravind ','Hii nice app'),(107,'Bikku','Awesome app'),(109,'Jerry','Thank you sir'),(109,'Aruna test','This is a sample test feedback given to server for app improvements '),(111,'Awesome. App','Tester');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_list`
--

DROP TABLE IF EXISTS `guest_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_list` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL DEFAULT 'Confirmed HR Professionals',
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_list`
--

LOCK TABLES `guest_list` WRITE;
/*!40000 ALTER TABLE `guest_list` DISABLE KEYS */;
INSERT INTO `guest_list` VALUES (1,'HR Professionals','Elston Pimenta','Head-HR','Cybage Software Pvt. Ltd.'),(2,'HR Professionals','Vaishali Vaid','Vice President, Head','KPIT Technologies'),(4,'HR Professionals','ManikRao Patil','Vice President - Corporate Human Resources','Atlas Copco (India) Ltd.'),(5,'HR Professionals','Ajit Thakur','Head - HR, Admin & EHS','Hyundai Construction Equipment India Pvt. Ltd.'),(6,'HR Professionals','Jennifer Fernandes','Country HR Director','Faurecia India'),(7,'HR Professionals','Sunil Godse','General Manager-HR','Sandvik Asia Pvt. Ltd.'),(8,'HR Professionals','Ravendra Mishra','President-Human Capital','Garware-Wall Ropes Ltd.'),(9,'HR Professionals','Dinesh Gupta','Contracting Delivery Lead-HR','Accenture India'),(10,'HR Professionals','Dr.S.V. Bhave','Senior Vice President: HR, IR & Admin','Bharat Forge Ltd.'),(11,'HR Professionals','Sandeep Datta','Head HR & Admin','SG Analytics'),(12,'HR Professionals','Vinod Bidwaik','Director-HR','DSM India Pvt. Ltd.'),(13,'HR Professionals','Sunita Ghorpade','Vice President-HR','Indus Software Technologies Pvt. Ltd.'),(14,'HR Professionals','Nitin Nikam','Sr. OD Consultant','Actualise Business Solutions, Pune'),(15,'HR Professionals','Rahul Deokar','Head-HR','Confluxsys'),(16,'HR Professionals','Samir Kukade','Director-HR','Lear Automotive India Pvt. Ltd.'),(17,'HR Professionals','Suhas Kadlaskar','Director-HR & Corporate Affairs','Daimler(Mercedes-Benz India Pvt. Ltd.)'),(18,'HR Professionals','Reza Ahmed Shaikh','Vice President-Operations & HR','Dynamic Logistics'),(19,'HR Professionals','Tarkesh Gupta','Head- HR & Admin','Fresenius Kabi India Pvt. Ltd.'),(20,'HR Professionals','Vikramjeet Singh','Chief Human Resource Officer','Bajaj Allianz General Insurance Co. Ltd.'),(21,'HR Professionals','Kalpesh Vyas','HR Business Partner','Adient India Pvt. Ltd.'),(22,'HR Professionals','Soumi Alphons','Head- HR','SAS Research & Development, India'),(23,'HR Professionals','Ravi Sinha','Vice  President & Head - CHRM & C','Kirloskar Brothers Ltd.'),(24,'HR Professionals','Jitendra More','Asst. Vice President (HR & IR)','Finolex Cables Ltd'),(25,'HR Professionals','Mr.Vivek Kumar','Global Chief Human Resources Officer','Suzlon Group'),(26,'HR Professionals','Ms. Rohini Wagh','Director - Human Resources','Nitor Infotech Pvt Ltd'),(27,'HR Professionals','Mr.Milind Mutalik',' Vice President - HR','DESAI BROTHERS LIMITED - FOOD DIVISION - MOTHERS RECIPE'),(28,'HR Professionals','Mr. ShrikantMirajkar','ShrikantMirajkar','MindaStoneridge'),(29,'HR Professionals','Mr.Vaibhav Deshmukh','Corporate Manager HR','Venky\'s India Ltd.'),(30,'HR Professionals','Mr. SUNIL KODE','HEAD HR','WILO MATHER AND PLATT PUMPS PVT. LTD.'),(31,'HR Professionals','Ms.Ashwini Shivram','Head - Human Resource & CSR','Electronica Finance Limited'),(32,'HR Professionals','Ms.Anagha Wankar','Head - Human Resources','Magna Steyr'),(33,'HR Professionals','Ms.Anjali Byce',' Director Human Resources','SKF India Ltd.'),(34,'HR Professionals','Dr Subhashish Mitra','Director - HR','Ocwen Financial Solutions Pvt Ltd'),(35,'HR Professionals','Mr.Aniruddha Khekale','Group Director - HR','Emerson Process Management India'),(36,'Guest of Honors','Dr C M Dwivedi','Group Chief Human Resource Officer','Fazlani Group of Companies'),(37,'Guest of Honors','Dr Sanjay Muthal','Former Executive Director','RGF Management Search'),(38,'Keynote Speakers','Mr.Ned Mody','Managing Director','Berkadia Commercial Mortgage LLC'),(39,'Keynote Speakers','Dr Arun Arora','Executive Chairman','Edvance Group'),(40,'Keynote Speakers','Dr. Harish S. Mehta','Chairman & Managing Director','Onward Technologies Limited.'),(41,'Keynote Speakers','Mr.Anand Pejawar','President - Operations IT & International Business','SBI Life Insurance Co Ltd'),(42,'Keynote Speakers','Mr.R Sudarshan','Senior Director, Marketing Channels & Alliances, Asia, Pacific & Japan','Dell EMC'),(43,'Keynote Speakers','Mr.Shashi Sinha','Chief Executive Officer','Laqshya Media group'),(44,'Keynote Speakers','Mr.Arun Arora','Chief Communications Officer (Cairn Oil & Gas)','Vedanta Limited.'),(45,'Keynote Speakers','Mr.K V Sridhar Pops','Founder & Chief Creative Officer','Hyper Collective'),(46,'Keynote Speakers','Dr Alok Bharadwaj','Managing Director-India & Emerging Markets','CreoVate Transformations & Consulting Private Ltd'),(47,'Keynote Speakers','Mr.Bijoe George','Head-Brand Strategy Advertising & Digital Marketing-Cisco India & SAARC','Cisco'),(48,'BIG Data Experts','Ms. Ujjyaini Mitra','Head Analytics, Avp Strategy','Viacom18 Media Pvt Ltd'),(49,'BIG Data Experts','Mr.Kaushik Ghate','Sr.Vice President and Head - Marketing Analytics','HDFC Bank'),(50,'BIG Data Experts','Mr. Ganapathy V','Business Lead Senior Director','PHILIPS Data Science & AI Group '),(51,'BIG Data Experts','Mr.Sameer Dixit','Head Big Data & Analytics','Persistent Systems'),(52,'BIG Data Experts','Mr.Sandeep Bhagat','Associate Partner, Practice Leader Big Data & Analytics','IBM'),(53,'BIG Data Experts','Mr.Venkata R Sudhakar Polavarapu','Director - Big Data Services','Kogentix Inc'),(54,'CIO\'s','Mr.Selestin K Thomas','Global IT Director','McFadyen Solutions'),(55,'CIO\'s','Mr.Kaushik Mamania','VP - Engineering','UFO Moviez India Ltd'),(56,'CIO\'s','Mr.M Senthil Kumar','Chief Information Security Officer','Rane Group of Companies'),(57,'CIO\'s','Mr.Piyus Kanti','CEO & CIO','Cloudstrats Technologies'),(58,'CIO\'s','Mr.Jaganathan T','EVP - IT & Compliance','AGS Health'),(59,'CIO\'s','Mr.Sanjay Gharde','Head - IT','Jindal SAW Limited'),(60,'CIO\'s','Mr.Jitendra Singh','CIO','JK Cement Ltd'),(61,'CIO\'s','Mr.NandkishorDhomne','VP-IT & CIO','Manipal Group'),(62,'CIO\'s','Mr.Badar Afaq','Head IT','Antara Senior Living Limited'),(63,'CIO\'s','Mr.GyanPandey','CIO','Aurobindo Pharma'),(64,'CIO\'s','Mr.Venkateswaran A','CIO','FIS Global'),(65,'CIO\'s','Mr.Anand Mangalam','General Manager-IT','Special Steel India);\n'),(66,'CIO\'s','Mr.Prosenjit Sengupta','CIO','Volkswagen Group India'),(67,'CIO\'s','Mr.Sanjay Mehta','Director','CORE Media'),(68,'CFO\'s','Mr.Manas Datta','Group Chief Financial Officer','Wockhardt Limited'),(69,'CFO\'s','Mr.Agam Bhushan Gulati','Finance Director','BBDO India Pvt. Ltd.'),(70,'CFO\'s','Mr.Dheeraj Rastogi','Head-Finance','Dnata International Pvt. Ltd'),(71,'CFO\'s','Mr.A.R.Mundra','Executive Director Finance','Bombay Rayon Fashions Limited'),(72,'CFO\'s','Mr.C.M.Gaonkar','Chief Financial Officer','D-Link India Ltd.'),(73,'CFO\'s','Mr.Clement Pinto','Finance Head','Godrej Industries Limited'),(74,'CFO\'s','Mr.Vinay kshirsagar','CFO','Indian Registrar of shipping'),(75,'CFO\'s','Mr.Manoj Tulsian','CFO & Whole-time Director','JMC Projects (India) Ltd'),(76,'CFO\'s','Mr.Prajakti Kotwal','Chief Finance Officer','Brink\'s India Pvt. Ltd.'),(77,'CFO\'s','Mr.Mitesh Mittal','CFO & Director IT','Otis Elevator India'),(78,'CFO\'s','Mr.Ramkrishna Prabhu','Director-Finance and Corporate Affairs','Rolta India Limited'),(79,'CFO\'s','Mr.Rajeev Gupta','Finance Director','Jardine Lloyd Thompson India'),(80,'CFO\'s','Mr.Chandramowli Srinivasan','Finance Director','SKF India Limited'),(81,'CFO\'s','Mr.Vinod Kumar','Chief Financial Officer & CHRO','Kirloskar Oil Engines Ltd'),(82,'CFO\'s','Mr.Rakesh Mehrotra','CFO','KRBL Limited'),(83,'CFO\'s','Mr.Nitin Parekh','Chief Financial Officer','Zydus Cadila'),(84,'CFO\'s','Mr.Sunil Nalavadi','Chief Financial Officer','VRL Logistics Limited'),(85,'CFO\'s','Mr.Jagannathan Chakravarthi','Chief Financial Officer','Mindtree Limited'),(86,'CFO\'s','Mr.Vikas Chadha','Director & CFO','Berggruen Hotels Pvt. Ltd.'),(87,'CFO\'s','Mr. Leon Verdes','Chief Financial Officer','Schreiber Foods'),(88,'CFO\'s','Mr.Sushil Agarwal','Group CFO','Aditya Birla Group'),(89,'CFO\'s','Mr.Swapan Mukherjee','Chief Financial Officer','Gera Developments Pvt Ltd'),(90,'CFO\'s','Mr.Arun Kabra','CFO','Times of India Group'),(91,'CFO\'s','Ms.Sneha Oberoi','CFO','Wockhardt Hospitals Ltd);\n'),(92,'Marketing Professionals/ Brands','Mr.Rana Kapoor','Founder,Managing Director and CEO','Yes Bank'),(93,'Marketing Professionals/ Brands','Dr.Tanaya Mishra','Managing Director Human Resources','Accenture'),(94,'Marketing Professionals/ Brands','Mr.Anuj Puri','Chairman','Anarock Property Consultants Pvt Ltd'),(95,'Marketing Professionals/ Brands','Mr.Rohit Sakunia','Consultant','Sociowash'),(96,'Marketing Professionals/ Brands','Mr.Amlan Pati','Marketing,Planning & Strategy Manager-Smart Phones','Panasonic India Pvt Ltd'),(97,'Marketing Professionals/ Brands','Mr.Kumar Ganesan','Executive Director','Kaleido Communications Pvt. Ltd.'),(98,'Marketing Professionals/ Brands','Mr.Mukul Singh','Head Marketing','Reliance Jewels'),(99,'Marketing Professionals/ Brands','Mr.Jignesh Maniar','Founder','Onads Communication'),(100,'Marketing Professionals/ Brands','Mr.Sandeep Verma','President-Marketing and Sales','Bajaj Corp Ltd'),(101,'Marketing Professionals/ Brands','Mr.Calvin Printer','VP & Head of Corporate Communications & Branding','Dr.Reddy\'s Laboratories Ltd.'),(102,'Marketing Professionals/ Brands','Mr.Sujan Roy','Head-Marketing,Regional Manager-South Asia','Tata Motors Ltd.'),(103,'Marketing Professionals/ Brands','Mr.V K Sharma','Vice President-Marketing & Sales','Unichem Labs Limited'),(104,'Marketing Professionals/ Brands','Mr.Savio Crasto','AVP-Marketing','TATA Asset Management Ltd'),(105,'Marketing Professionals/ Brands','Ms.Reshma Hajite','Director','Excellence Shelters Pvt. Ltd.'),(106,'Marketing Professionals/ Brands','Ms.Sowmya Iyer','Founder','Dvio Digital Pvt. Ltd.'),(107,'Marketing Professionals/ Brands','Mr.Surendra Bairagi','Chief Marketing Officer','IBN Technologies Ltd.'),(108,'Marketing Professionals/ Brands','Mr.Vishal Joshi','General Manager - Marketing','ESDS Software Solution Pvt. Ltd.);\n'),(109,'Marketing Professionals/ Brands','Ms.Esthel DCosta','Founder and CEO','Think Geek Media'),(110,'Marketing Professionals/ Brands','Mr.Reuben Ray','CEO and Founder','PexiScore.com'),(111,'Marketing Professionals/ Brands','Mr.Ajay Vyshampayan','Head Customer Acquisition & Engagement','Ishanya Mall'),(112,'Marketing Professionals/ Brands','Mr.Mukesh Kumar','Sr. Vice President','Infiniti Mall'),(113,'Marketing Professionals/ Brands','Mr.Ajay Malhotra','General Manager','Seasons Mall'),(114,'Marketing Professionals/ Brands','Ms.Rima Pradhan','VP Marketing','Viviana Mall'),(115,'Marketing Professionals/ Brands','Mr.Satyen Shivananda Poojary','VP Product & Content Strategy','Powerdrift Studios Pvt. Ltd.'),(116,'Marketing Professionals/ Brands','Ms.Shweta Chitrode','Founder & Editor-in-Chief','Stylewhack'),(117,'Marketing Professionals/ Brands','Mr.Kiran Bhat','Chairperson & MD','Xebec Communications Pvt Ltd.'),(118,'Marketing Professionals/ Brands','Ms.Sonali Brahma','Brand Strategist and Creative Advisor','santrawale.com'),(119,'Marketing Professionals/ Brands','Ms.Aakriti Singh','Marketing Content Specialist','eNyota Learning Pvt. Ltd.'),(120,'Marketing Professionals/ Brands','Mr.Kunal Lagwankar','CEO & Co-founder','AdSparx'),(121,'Marketing Professionals/ Brands','Mr.Vivek P Dhumale','Director & COO','e-Whiz Solutions Pvt. Ltd'),(122,'Marketing Professionals/ Brands','Mr.Akshit Gupta','Founder','FundTonic Service Pvt. Ltd.'),(123,'Marketing Professionals/ Brands','Mr.Savio Crasto','Assistant Vice President - Marketing','Tata Asset Management Ltd.'),(124,'Marketing Professionals/ Brands','Ms.Dimple Jain','Corporate Communication','Wanbury'),(125,'Marketing Professionals/ Brands','Mr.Amit Bhardwaj','Assistant Manager','OM Logistics Ltd.'),(126,'Marketing Professionals/ Brands','Mr.Ranju K Mohan','President','McNROE Consumer Products Ltd.'),(127,'Marketing Professionals/ Brands','Ms.Taruna Mahajan','Head Marketing & Communication','Drive India Enterprises Solutions Ltd'),(128,'Logistics companies','Fleetguard Filters Pvt Ltd','Honourable Guest','Fleetguard Filters Pvt Ltd'),(129,'Logistics companies',' Eagle Burgmann India Pvt Ltd','Honourable Guest',' Eagle Burgmann India Pvt Ltd'),(130,'Logistics companies','Trident Services Pvt Ltd','Honourable Guest','Trident Services Pvt Ltd'),(131,'Logistics companies','Imeco Machines Pvt Ltd','Honourable Guest','Imeco Machines Pvt Ltd'),(132,'Logistics companies','Tranter India Pvt Ltd','Honourable Guest','Tranter India Pvt Ltd');
/*!40000 ALTER TABLE `guest_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `app_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT 'Anonymous',
  `date` varchar(20) DEFAULT 'DD/MM/YYYY',
  `testimonial` varchar(200) DEFAULT NULL,
  KEY `app_id` (`app_id`),
  CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `user_registration` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (104,'Jagannath','14/09/17 22:10:17','Nzhjsf'),(104,'Jagannath','14/09/17 22:11:18','Hzhs'),(104,'Jagannath','14/09/17 22:11:55','Rc'),(107,'Aravind ','15/09/17 20:35:52','It\'s a very good event that was organized '),(107,'Aravind ','15/09/17 20:51:50','Awesome...... Event and superb app'),(107,'Aravind ','15/09/17 20:52:27','It\'s soooo cool event kammiiii'),(107,'Aravind ','15/09/17 20:53:24','Ohh yeah'),(107,'Aravind ','15/09/17 20:53:36','Ha ha hahhhh'),(107,'Aravind ','15/09/17 20:54:09','Nanmanuuuuu'),(108,'subbu','15/09/17 21:00:34','this is beed'),(107,'Aravind ','15/09/17 21:00:51','It\'s working'),(107,'Aravind ','15/09/17 22:03:26','He hd'),(109,'Aruna','16/09/17 22:55:33','Hello all and thank you for inviting me to this lovely event'),(116,'sandeep','18/09/17 11:43:24','this day was the best'),(112,'Tester2','18/09/17 20:35:58','Hey');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_registration` (
  `app_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gate_id` int(10) DEFAULT '0',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
INSERT INTO `user_registration` VALUES (100,'sdsa','sdf','sdfsdf',0),(101,'sdsa','sdf','sdfsdaf',0),(102,'sdsa','sdf','sdfsdsdfsaf',0),(103,'sdddsa','sdddf','sdfsdsdfssdaf',0),(104,'Jagannath','7507079634','Jagan241296@gmail.com',0),(105,'Jagannath','7507079634','Jagan241296@gmail.com',0),(106,'Jagannath','7507079634','Jagan241296@gmail.com',0),(107,'Aravind ','9762724900','Jagan1296@gmail.com ',0),(108,'subbu','7709582168','pvds24@gmail.com',0),(109,'Aruna','7709582168','Arunak@gmail.com',0),(110,'Aruna','7709582168','Arunakameswari@gmail.com',0),(111,'Tester','7507079635','Jagan241296@gmail.com',983692),(112,'Tester2','7804958632','Ja241296@gmail.com ',586776),(113,'sandeep','5656565657','sandh@gmsk.com',283701),(114,'sandeep','5656565657','sandh@gmsk.com',994862),(115,'sandeep','5656565657','sandh@gmsk.com',234134),(116,'sandeep','1234567890','sjskks@gmail.com',659807);
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18 17:59:21

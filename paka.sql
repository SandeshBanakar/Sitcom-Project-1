/*
SQLyog Community v9.32 GA
MySQL - 5.1.61-community : Database - paka
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`paka` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `paka`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `pkid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pkid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`pkid`,`name`,`password`) values (1,'admin','admin');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `plid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(350) DEFAULT NULL,
  `userdetails` varchar(200) DEFAULT NULL,
  `tid` varchar(200) DEFAULT NULL,
  `required_id` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `ddate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`plid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`plid`,`uid`,`userdetails`,`tid`,`required_id`,`amount`,`ddate`) values (1,NULL,'yuoojnn',NULL,'678','653773','56778'),(2,NULL,'yutree',NULL,'678','65389','5677900898');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `ppid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `DOB` varchar(250) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `upassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`ppid`,`fname`,`email`,`DOB`,`address`,`phone_number`,`upassword`) values (5,'ABCD','abcd@gmail.com','01/02/2022','mysore','687389390','123'),(35,'Sandesh','banakar@yahoo.com','1998-11-09','Metagalli, Mysore, Karnataka - 570016','7204430985','sandesh123'),(36,'Sujatha','sujatha@indiapost.gov.in','1967-06-01','Bogadi, Mysore - 570026','8217266700','sujatha'),(37,'Vikas Shankar','vicky@ias.com','1993-01-01','Chamundeshwari Railway Layout, Metagalli, Mysore - 570016','9988334499','enoenoahaaaa');

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `pmid` int(11) NOT NULL AUTO_INCREMENT,
  `tdate` varchar(200) DEFAULT NULL,
  `ticket` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `available` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pmid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `ticket` */

insert  into `ticket`(`pmid`,`tdate`,`ticket`,`price`,`available`) values (15,'2022-03-07','100','80','100'),(16,'2022-03-09','15','500','20'),(17,'2022-03-18','45','1000','42'),(18,'2022-03-21','120','155','123'),(19,'2022-03-22','45','650','40'),(26,'2022-06-16','78','45','78'),(27,'2022-07-08','87','122','82'),(28,'2022-07-12','82','100','82'),(29,'2022-07-23','215','135','205'),(32,'2022-07-25','4','789','36'),(33,'2022-07-28','300','800','294'),(34,'2022-08-10','50','650','43'),(35,'2022-08-11','50','450','25'),(36,'2022-08-16','10','80','0'),(37,'2022-08-17','10','45','11'),(38,'2022-08-19','100','50','85');

/*Table structure for table `ticketbooking` */

DROP TABLE IF EXISTS `ticketbooking`;

CREATE TABLE `ticketbooking` (
  `prid` int(11) NOT NULL AUTO_INCREMENT,
  `mdate` varchar(200) DEFAULT NULL,
  `bookticket` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`prid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `ticketbooking` */

insert  into `ticketbooking`(`prid`,`mdate`,`bookticket`,`price`) values (1,'2022-02-05','2','70'),(2,'2022-02-05','1','35'),(3,'2022-02-04','2','40'),(4,'2022-02-05','4','140'),(5,'2022-02-04','6','120'),(6,'2022-02-05','8','280'),(7,'2022-02-05','8','280'),(8,'2022-02-07','34','1360'),(9,'2022-02-07','56','2240'),(11,'2022-02-10','55','1375'),(12,'2022-02-10','55','1375'),(13,'2022-02-10','50','1250'),(14,'2022-02-11','30','1500'),(15,'2022-02-18','2','240'),(16,'2022-04-08','12','900'),(17,'2022-04-13','10','1250'),(18,'2022-07-08','5','610'),(19,'2022-07-23','10','1250'),(20,'2022-07-25','20','15780'),(21,'2022-07-28','6','4800'),(22,'2022-08-16','9','720'),(23,'2022-08-19','10','500'),(24,'2022-08-19','5','250');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `fpassword` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

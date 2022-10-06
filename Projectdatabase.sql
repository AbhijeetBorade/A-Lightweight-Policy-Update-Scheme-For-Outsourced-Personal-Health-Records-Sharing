/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.4.21-MariaDB : Database - phr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`phr` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `phr`;

/*Table structure for table `connectdata` */

DROP TABLE IF EXISTS `connectdata`;

CREATE TABLE `connectdata` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `PatientName` varchar(100) DEFAULT NULL,
  `PatientAge` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `connectdata` */

insert  into `connectdata`(`Id`,`PatientName`,`PatientAge`,`Type`,`status`) values (1,'mouli','45','Pulmonary','accept'),(2,'mouli','45','Pulmonary','accept'),(3,'kumar','58','Pulmonary','accept'),(4,'narayana','59','Pulmonary','pending');

/*Table structure for table `docreg` */

DROP TABLE IF EXISTS `docreg`;

CREATE TABLE `docreg` (
  `slno` int(100) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Age` varchar(100) DEFAULT NULL,
  `Number` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  UNIQUE KEY `slno` (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `docreg` */

insert  into `docreg`(`slno`,`Name`,`Department`,`Age`,`Number`,`Email`,`Password`,`status`) values (1,'Balaram','Pulmonary','28','4587256987','balarampanigrahy42@gmail.com','1234','accepted');

/*Table structure for table `patient_reg` */

DROP TABLE IF EXISTS `patient_reg`;

CREATE TABLE `patient_reg` (
  `ID` int(200) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Age` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `patient_reg` */

insert  into `patient_reg`(`ID`,`Name`,`Age`,`Email`,`Password`) values (1,'mouli','45','mouli@gmail.com','1234'),(2,'kumar','58','kumar@gmail.com','1234'),(3,'narayana','59','narayana@gmail.com','1234');

/*Table structure for table `patientreq` */

DROP TABLE IF EXISTS `patientreq`;

CREATE TABLE `patientreq` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Age` varchar(100) DEFAULT NULL,
  `symptoms` varchar(100) DEFAULT NULL,
  `AppointmentDate` varchar(100) DEFAULT NULL,
  `Time` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `patientreq` */

insert  into `patientreq`(`Id`,`Name`,`Type`,`Age`,`symptoms`,`AppointmentDate`,`Time`,`Status`) values (1,'mouli','Pulmonary','45','Brain hemorrhage  ','03/23/2022','16:38','accepted'),(2,'kumar','Pulmonary','58','Brain tumor ','03/28/2022','18:20','accepted'),(3,'narayana','Pulmonary','59','hemorrhage  ','03/29/2022','06:30','accepted');

/*Table structure for table `reports` */

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(200) DEFAULT NULL,
  `FileData` longblob DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `Key1` varchar(100) DEFAULT NULL,
  `Patientid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `reports` */

insert  into `reports`(`Id`,`FileName`,`FileData`,`PatientEmail`,`Status`,`Key1`,`Patientid`) values (1,'Medical Report.txt','åo.‡‹é)ﬁO,ÓOπ¢eF4∫â»ê\"~ÚÙUë\Z∞˝¿}â9í•¥Nì°4ìl™íÁu&FŸv[:Ã—@¥','mouli@gmail.com','accepted',NULL,'PID3171');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

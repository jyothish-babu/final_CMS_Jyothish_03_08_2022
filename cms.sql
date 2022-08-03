/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `add_employee` */

DROP TABLE IF EXISTS `add_employee`;

CREATE TABLE `add_employee` (
  `emid` int(11) NOT NULL AUTO_INCREMENT,
  `emname` varchar(45) NOT NULL,
  `emaddress` varchar(100) NOT NULL,
  `emphone` varchar(10) NOT NULL,
  PRIMARY KEY (`emid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `add_employee` */

insert  into `add_employee`(`emid`,`emname`,`emaddress`,`emphone`) values 
(1,'fgvfgf','wrtrwtr','5624364589');

/*Table structure for table `addemployee` */

DROP TABLE IF EXISTS `addemployee`;

CREATE TABLE `addemployee` (
  `emid` int(11) NOT NULL AUTO_INCREMENT,
  `emname` varchar(45) NOT NULL,
  `emaddress` varchar(100) NOT NULL,
  `emdesignation` varchar(40) NOT NULL,
  `emdepartment` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emphone` varchar(10) NOT NULL,
  `ememail` varchar(60) NOT NULL,
  `empassword` varchar(60) NOT NULL,
  PRIMARY KEY (`emid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `addemployee` */

insert  into `addemployee`(`emid`,`emname`,`emaddress`,`emdesignation`,`emdepartment`,`gender`,`emphone`,`ememail`,`empassword`) values 
(16,'Test','testtest','Principal','Course','Male','8562359853','test@gmail.com','Test123@'),
(17,'arun','pala','Principal','CSE','Male','9946205296','felix@gmail.com','employee123'),
(18,'felix','sddd','Principal','CSE','Male','9946205296','felix1@gmail.com','felix123'),
(19,'ks','kseven','Principal','CSE','Male','9946205296','ks@gmail.com','employee3'),
(20,'subin','aSA','Principal','CSE','Male','9946205296','felix123@gmail.com','EMPLOYEE4'),
(21,'jyothish','ASD','Principal','CSE','Male','9946205296','admin@gmail.com','EMPLOYEE5');

/*Table structure for table `addemployeetest` */

DROP TABLE IF EXISTS `addemployeetest`;

CREATE TABLE `addemployeetest` (
  `emid` int(11) NOT NULL AUTO_INCREMENT,
  `emname` varchar(45) NOT NULL,
  `emaddress` varchar(100) NOT NULL,
  `emdesignation` varchar(40) NOT NULL,
  `emdepartment` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emphone` varchar(10) NOT NULL,
  `ememail` varchar(60) NOT NULL,
  `empassword` varchar(60) NOT NULL,
  PRIMARY KEY (`emid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `addemployeetest` */

insert  into `addemployeetest`(`emid`,`emname`,`emaddress`,`emdesignation`,`emdepartment`,`gender`,`emphone`,`ememail`,`empassword`) values 
(6,'Testjhjhg','rfcrf','kjhjkhn','Course','Male','5624364589','jyothishbabu94@gmail.com','jyothish');

/*Table structure for table `addemployeetest2` */

DROP TABLE IF EXISTS `addemployeetest2`;

CREATE TABLE `addemployeetest2` (
  `emid` int(11) NOT NULL AUTO_INCREMENT,
  `emname` varchar(45) NOT NULL,
  `emaddress` varchar(100) NOT NULL,
  `emdesignation` varchar(40) NOT NULL,
  `emdepartment` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emphone` varchar(10) NOT NULL,
  `ememail` varchar(60) NOT NULL,
  `empassword` varchar(60) NOT NULL,
  PRIMARY KEY (`emid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `addemployeetest2` */

insert  into `addemployeetest2`(`emid`,`emname`,`emaddress`,`emdesignation`,`emdepartment`,`gender`,`emphone`,`ememail`,`empassword`) values 
(2,'xxx','sdsd','Principal','Course','Male','5624364589','sree@gmail.com','jyothish'),
(3,'yyyyzzzyyzzyy','eeewwe','Principal','Course','Male','5624364589','sree@gmail.com','jyothish'),
(5,'aaaac','zsz','Principal','Course','Male','5624364589','sree@gmail.com','jyothish');

/*Table structure for table `addstudent` */

DROP TABLE IF EXISTS `addstudent`;

CREATE TABLE `addstudent` (
  `id` int(11) NOT NULL,
  `stname` varchar(255) DEFAULT NULL,
  `staddress` varchar(255) DEFAULT NULL,
  `stdepartment` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `stphone` varchar(255) DEFAULT NULL,
  `stemail` varchar(255) DEFAULT NULL,
  `stpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `addstudent` */

insert  into `addstudent`(`id`,`stname`,`staddress`,`stdepartment`,`gender`,`stphone`,`stemail`,`stpassword`) values 
(2,'manu','sd','CSE','Male','9966558844','subin@gmail.com','student1'),
(1,'TestTest','SSFGDH','Course','Male','8524362455','karthika@gmail.com','TestTest123@');

/*Table structure for table `addstudenttest` */

DROP TABLE IF EXISTS `addstudenttest`;

CREATE TABLE `addstudenttest` (
  `id` int(11) NOT NULL,
  `stname` varchar(255) DEFAULT NULL,
  `staddress` varchar(255) DEFAULT NULL,
  `stdepartment` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `stphone` varchar(255) DEFAULT NULL,
  `stemail` varchar(255) DEFAULT NULL,
  `stpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `addstudenttest` */

insert  into `addstudenttest`(`id`,`stname`,`staddress`,`stdepartment`,`gender`,`stphone`,`stemail`,`stpassword`) values 
(1,'bbbbb','bfebz','Course','Male','9966558844','hvbcj@gmail.com','jyothish'),
(15,'cccc','sdsd','Course','Male','9966558844','sgfdh@gmail','jyothish'),
(20,'eee','rfd','Course','Male','9966558844','hvbcj@gmail.com','jyothish'),
(19,'ddd','wdd','Course','Male','9966558844','hvbcj@gmail.com','jyothish'),
(18,'cccc','sdsd','Course','Male','9966558844','sgfdh@gmail','jyothish'),
(16,'cccc','sdsd','Course','Male','9966558844','sgfdh@gmail','jyothish'),
(17,'ccccddd','dfd','Course','Male','9966558844','sgfdh@gmail','jyothish');

/*Table structure for table `adduser` */

DROP TABLE IF EXISTS `adduser`;

CREATE TABLE `adduser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `customer_info` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `adduser` */

insert  into `adduser`(`id`,`name`,`customer_info`,`city`) values 
(1,'Manu','Mary@javatpoint.com','pala');

/*Table structure for table `ans100` */

DROP TABLE IF EXISTS `ans100`;

CREATE TABLE `ans100` (
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ans100` */

insert  into `ans100`(`qid`,`type`,`answer`) values 
(1,0,'Java is a programming language'),
(1,1,'Java is a platform'),
(2,0,'Servlet is an Interface'),
(2,1,'Servlet is an API');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `ID` int(11) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Customer_info` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  KEY `par_ind` (`Customer_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`ID`,`Customer_id`,`Customer_info`,`Type`) values 
(NULL,2,'Mary@javatpoint.com','email'),
(NULL,2,'Mary@javatpoint.com','email'),
(NULL,2,'212-212-212','work'),
(NULL,3,'John@javatpoint.com','email'),
(NULL,3,'313-313-313','home');

/*Table structure for table `contactp` */

DROP TABLE IF EXISTS `contactp`;

CREATE TABLE `contactp` (
  `id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `info` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  KEY `person_id` (`person_id`),
  CONSTRAINT `contactp_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contactp` */

insert  into `contactp`(`id`,`person_id`,`info`,`type`) values 
(NULL,1,'john@javatpoint.com','email'),
(NULL,1,'121-121-121','work'),
(NULL,2,'manu@javatpoint.com','email'),
(NULL,2,'212-212-212','work'),
(NULL,3,'vinu@javatpoint.com','email'),
(NULL,3,'313-313-313','home');

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `info` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  KEY `person_id` (`person_id`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contacts` */

insert  into `contacts`(`id`,`person_id`,`info`,`type`) values 
(NULL,1,'john@javatpoint.com','email'),
(NULL,1,'121-121-121','work'),
(NULL,2,'manu@javatpoint.com','email'),
(NULL,2,'212-212-212','work'),
(NULL,3,'vinu@javatpoint.com','email'),
(NULL,3,'313-313-313','home');

/*Table structure for table `contemp122` */

DROP TABLE IF EXISTS `contemp122`;

CREATE TABLE `contemp122` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pay_per_hour` float DEFAULT NULL,
  `contract_duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `contemp122` */

insert  into `contemp122`(`id`,`name`,`pay_per_hour`,`contract_duration`) values 
(3,'Arjun Kumar',1000,'15 hours');

/*Table structure for table `contemp123` */

DROP TABLE IF EXISTS `contemp123`;

CREATE TABLE `contemp123` (
  `eid` int(11) NOT NULL,
  `pay_per_hour` float DEFAULT NULL,
  `contract_duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `contemp123` */

insert  into `contemp123`(`eid`,`pay_per_hour`,`contract_duration`) values 
(3,1000,'15 hours');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`city`) values 
(2,'Manu','Pala'),
(3,'Rahul','Kochi'),
(4,'Akhil','kottayam'),
(5,'Manu','Pala'),
(6,'Rahul','Kochi');

/*Table structure for table `em` */

DROP TABLE IF EXISTS `em`;

CREATE TABLE `em` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `em` */

/*Table structure for table `emp111` */

DROP TABLE IF EXISTS `emp111`;

CREATE TABLE `emp111` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `pay_per_hour` float DEFAULT NULL,
  `contract_duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `emp111` */

insert  into `emp111`(`id`,`type`,`name`,`salary`,`bonus`,`pay_per_hour`,`contract_duration`) values 
(1,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(2,'reg_emp111','Vivek Kumar',50000,5,NULL,NULL),
(3,'con_emp111','Arjun Kumar',NULL,NULL,1000,'15 hours');

/*Table structure for table `emp121` */

DROP TABLE IF EXISTS `emp121`;

CREATE TABLE `emp121` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `pay_per_hour` float DEFAULT NULL,
  `contract_duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `emp121` */

insert  into `emp121`(`id`,`type`,`name`,`salary`,`bonus`,`pay_per_hour`,`contract_duration`) values 
(1,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(2,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(3,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours'),
(4,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(5,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(6,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours'),
(7,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(8,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(9,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours'),
(10,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(11,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(12,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours'),
(13,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(14,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(15,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours'),
(16,'emp','Gaurav Chawla',NULL,NULL,NULL,NULL),
(17,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(18,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours'),
(19,'emp1','Gaurav Chawla',NULL,NULL,NULL,NULL),
(20,'reg_emp','Vivek Kumar',50000,5,NULL,NULL),
(21,'con_emp','Arjun Kumar',NULL,NULL,1000,'15 hours');

/*Table structure for table `emp122` */

DROP TABLE IF EXISTS `emp122`;

CREATE TABLE `emp122` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `emp122` */

insert  into `emp122`(`id`,`name`) values 
(1,'Gaurav Chawla');

/*Table structure for table `emp123` */

DROP TABLE IF EXISTS `emp123`;

CREATE TABLE `emp123` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `emp123` */

insert  into `emp123`(`id`,`name`) values 
(1,'Gaurav Chawla'),
(2,'Vivek Kumar'),
(3,'Arjun Kumar');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

/*Table structure for table `employee_prepared` */

DROP TABLE IF EXISTS `employee_prepared`;

CREATE TABLE `employee_prepared` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

/*Data for the table `employee_prepared` */

insert  into `employee_prepared`(`id`,`name`,`salary`) values 
(108,'Amit',35000);

/*Table structure for table `employee_table` */

DROP TABLE IF EXISTS `employee_table`;

CREATE TABLE `employee_table` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `employee_table` */

insert  into `employee_table`(`id`,`firstName`,`lastName`) values 
(1,'Gaurav','Chawla');

/*Table structure for table `new` */

DROP TABLE IF EXISTS `new`;

CREATE TABLE `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `info` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `new` */

insert  into `new`(`id`,`name`,`info`,`country`) values 
(1,'0','121-121-121','india'),
(2,'0','121-121-121','india'),
(3,'0','john@javatpoint.com','india'),
(4,'0','vinu@javatpoint.com','india'),
(5,'0','john@javatpoint.com','uk'),
(6,'john','john@javatpoint.com','uk');

/*Table structure for table `new2` */

DROP TABLE IF EXISTS `new2`;

CREATE TABLE `new2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` int(11) NOT NULL,
  `info` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `new2` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `person` */

insert  into `person`(`id`,`name`,`city`) values 
(1,'john','pala'),
(2,'manu','kochi'),
(3,'vinu','delhi');

/*Table structure for table `q100` */

DROP TABLE IF EXISTS `q100`;

CREATE TABLE `q100` (
  `id` int(11) NOT NULL,
  `qname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `q100` */

insert  into `q100`(`id`,`qname`) values 
(1,'What is Java?'),
(2,'What is Servlet?');

/*Table structure for table `regemp122` */

DROP TABLE IF EXISTS `regemp122`;

CREATE TABLE `regemp122` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `regemp122` */

insert  into `regemp122`(`id`,`name`,`salary`,`bonus`) values 
(2,'Vivek Kumar',50000,5);

/*Table structure for table `regemp123` */

DROP TABLE IF EXISTS `regemp123`;

CREATE TABLE `regemp123` (
  `eid` int(11) NOT NULL,
  `salary` float DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `regemp123` */

insert  into `regemp123`(`eid`,`salary`,`bonus`) values 
(2,50000,5);

/*Table structure for table `t1` */

DROP TABLE IF EXISTS `t1`;

CREATE TABLE `t1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `t1` */

insert  into `t1`(`id`,`name`,`city`) values 
(1,'arun','pala'),
(2,'amal','kottayam');

/*Table structure for table `t2` */

DROP TABLE IF EXISTS `t2`;

CREATE TABLE `t2` (
  `id` int(11) DEFAULT NULL,
  `t1_id` int(11) DEFAULT NULL,
  `dept` varchar(30) NOT NULL,
  KEY `t1_id` (`t1_id`),
  CONSTRAINT `t2_ibfk_1` FOREIGN KEY (`t1_id`) REFERENCES `t1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t2` */

insert  into `t2`(`id`,`t1_id`,`dept`) values 
(NULL,1,'cse'),
(NULL,1,'eee'),
(NULL,2,'ce'),
(NULL,2,'it');

/*Table structure for table `telious` */

DROP TABLE IF EXISTS `telious`;

CREATE TABLE `telious` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `course` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `telious` */

insert  into `telious`(`id`,`name`,`age`,`gender`,`course`) values 
(2,'xxx',4,'Male','CE'),
(3,'yyy',6,'Female','CSE'),
(4,'ddd',8,'male','CS');

/*Table structure for table `user_table` */

DROP TABLE IF EXISTS `user_table`;

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_table` */

insert  into `user_table`(`id`,`name`,`password`,`email`) values 
(1,'jyothish','fghghjhj','jyothishbabu94@gmail.com'),
(2,'hghghj','gfghfghf','subin125vk@gmail.com'),
(3,'abc','asdsd','jyothishbabu94@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

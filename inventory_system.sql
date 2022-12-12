/*
SQLyog Ultimate v9.62 
MySQL - 5.5.5-10.4.25-MariaDB : Database - inventory_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventory_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `inventory_system`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`description`) values (1,'supply','school supplies'),(2,'sports equipment','equipment for sports');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `employees` */

insert  into `employees`(`id`,`employee_id`,`name`,`college`,`address`,`position`) values (4,45628,'kitt','bscpe','calceta','doggiestyle'),(5,45630,'brendon','BSCS','candijay','missionary'),(9,45629,'ian','BSCPE','cogon','gwapokaayo');

/*Table structure for table `supplies` */

DROP TABLE IF EXISTS `supplies`;

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `borrowed_quantity` int(11) NOT NULL,
  `transdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `supplies` */

insert  into `supplies`(`id`,`name`,`description`,`quantity`,`category`,`borrowed_quantity`,`transdate`) values (1,'chair','standard chair',5,'sports equipment',5,'2022-11-23 14:44:01'),(2,'mouse','keyboard mouse',2,'supply',0,'2022-11-23 14:46:53');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `supply_id` int(11) NOT NULL,
  `date_released` datetime NOT NULL,
  `date_returned` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`barcode`,`quantity`,`borrower_id`,`supply_id`,`date_released`,`date_returned`) values (1,'1000001',1,9984,1,'2022-11-23 09:15:32',NULL),(6,'1000002',1,9984,2,'2022-11-23 10:29:28','2022-11-23 12:49:43'),(8,'1000003',1,9984,2,'2022-11-23 10:46:01','2022-11-23 12:49:27'),(9,'1000004',1,9984,2,'2022-11-23 14:46:25','2022-11-23 14:46:53');

/*Table structure for table `trial` */

DROP TABLE IF EXISTS `trial`;

CREATE TABLE `trial` (
  `date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `trial` */

insert  into `trial`(`date`,`name`) values ('2022-11-01','localhost:3307, inventory_system,root,password'),(NULL,'*49FE1FE5156DAA0EDB9C6852159BEE897422AFAE'),(NULL,'f9e6b9994483c49e0a187f64d318a459a79cc1bc');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privilege` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`privilege`,`employee_id`) values (1,'admin','admin','admin',9983),(4,'user','user','employee',45628),(5,'mor','mor','employee',9984);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

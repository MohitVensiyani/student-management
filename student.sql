/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.27 : Database - feesportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`feesportal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `feesportal`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `attendance` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `attendance` */

insert  into `attendance`(`attendance_id`,`class_name`,`subject_name`,`date`,`student_name`,`attendance`) values 
(5,'BBA','Accounting','2021-12-07','Roma Patil','Present'),
(6,'BBA','Accounting','2021-12-07','Somesh Patel','Present'),
(7,'BBA','Accounting','2021-12-07','Raj Sharma','Present'),
(8,'BBA','Accounting','2021-12-07','KVUV MokkQ','Present'),
(9,'BBA','Accounting','2021-12-15','Roma Patil','Present'),
(10,'BBA','Accounting','2021-12-15','Somesh Patel','Absent'),
(11,'BBA','Accounting','2021-12-15','Raj Sharma','Leave with excuse'),
(12,'BBA','Accounting','2021-12-15','KVUV MokkQ','Present'),
(13,'BBA','Accounting','2021-12-08','Roma Patil','Present'),
(14,'BBA','Accounting','2021-12-08','Somesh Patel','Present'),
(15,'BBA','Accounting','2021-12-08','Raj Sharma','Absent'),
(16,'BBA','Accounting','2021-12-08','KVUV MokkQ','Leave with excuse');

/*Table structure for table `course_fees_master` */

DROP TABLE IF EXISTS `course_fees_master`;

CREATE TABLE `course_fees_master` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) DEFAULT NULL,
  `prospectus_fees` int DEFAULT NULL,
  `registration_fees` int DEFAULT NULL,
  `tution_fees` int DEFAULT NULL,
  `library_fees` int DEFAULT NULL,
  `university_enr_fees` int DEFAULT NULL,
  `university_exam_fees` int DEFAULT NULL,
  `college_exam_fees` int DEFAULT NULL,
  `id_card_fees` int DEFAULT NULL,
  `eligibility_fees` int DEFAULT NULL,
  `clearance_fees` int DEFAULT NULL,
  `extra_curricular_activity` int DEFAULT NULL,
  `uniform_fees` int DEFAULT NULL,
  `study_tour_fees` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `course_fees_master` */

insert  into `course_fees_master`(`course_id`,`course_name`,`prospectus_fees`,`registration_fees`,`tution_fees`,`library_fees`,`university_enr_fees`,`university_exam_fees`,`college_exam_fees`,`id_card_fees`,`eligibility_fees`,`clearance_fees`,`extra_curricular_activity`,`uniform_fees`,`study_tour_fees`,`total`) values 
(1,'BBA',2000,6000,20000,500,500,200,200,100,100,1000,500,2000,2000,35100),
(2,'MBA',1000,6000,20000,500,500,200,200,100,100,1000,500,2000,1500,33600);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `empId` int NOT NULL AUTO_INCREMENT,
  `empName` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `acc_no` varchar(100) DEFAULT NULL,
  `ifsc` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`empId`,`empName`,`role`,`salary`,`bank`,`acc_no`,`ifsc`,`branch`) values 
(1,'Mohit Vensiyani','Analyst','40000','HDFC','12345678909','HDFC01190','CA Road'),
(2,'Harsh ','Application Development Assosiate','30000',NULL,NULL,NULL,NULL),
(3,'Bhavik','Database Assosiate','30000',NULL,NULL,NULL,NULL),
(4,'Ram TJ','Database Assosiate','40000','HDFC','12345678909','HDFC01190','CA Road');

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `equiry_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `lead_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`equiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `enquiry` */

insert  into `enquiry`(`equiry_id`,`student_name`,`dob`,`school`,`grade`,`parent_name`,`email`,`phone_no`,`status`,`date`,`lead_type`) values 
(6,'Rohan','2002-12-31','TSNS','BBA','Ruhan','mohit30vensiyani@gmail.com','9960229900','pending','2021-12-15','online');

/*Table structure for table `expense` */

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `expense_date` varchar(100) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `expense` */

insert  into `expense`(`expense_id`,`expense_name`,`description`,`expense_date`,`amount`) values 
(1,'A4 paper','Wall Compound Remaining Payment','2021-09-14',80000),
(7,'A4 paper','Wall Compound Remaining Payment','2021-09-14',80000),
(9,'Rajesh Contractor','Wall Compound Remaining Payment','2021-09-14',80000),
(10,'Vaibhav Contractor','Wall Compound Remaining Payment','2021-10-02',10000);

/*Table structure for table `hall_ticket` */

DROP TABLE IF EXISTS `hall_ticket`;

CREATE TABLE `hall_ticket` (
  `hall_ticket_id` int NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(100) DEFAULT NULL,
  `exam_date` varchar(100) DEFAULT NULL,
  `exam_time` varchar(100) DEFAULT NULL,
  `reporting_time` varchar(100) DEFAULT NULL,
  `gate_close_time` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `que_paper_language` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `venue_code` varchar(100) DEFAULT NULL,
  `exam_centre_detail` varchar(200) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `application_number` varchar(100) DEFAULT NULL,
  `is_disable` varchar(100) DEFAULT NULL,
  `disablity_type` varchar(100) DEFAULT NULL,
  `extra_time_Req` varchar(100) DEFAULT NULL,
  `scribe_req` varchar(100) DEFAULT NULL,
  `candidate_add` varchar(200) DEFAULT NULL,
  `id` int DEFAULT NULL,
  PRIMARY KEY (`hall_ticket_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `hall_ticket` */

insert  into `hall_ticket`(`hall_ticket_id`,`candidate_name`,`exam_date`,`exam_time`,`reporting_time`,`gate_close_time`,`roll_no`,`pass`,`que_paper_language`,`subject`,`venue_code`,`exam_centre_detail`,`photo`,`gender`,`dob`,`application_number`,`is_disable`,`disablity_type`,`extra_time_Req`,`scribe_req`,`candidate_add`,`id`) values 
(1,'Mohit Vensiyani','2021-10-30','03:00','02:30','02:45','1','123456789','English','History','V1234','Chhapru Nagar, nagpur','Court check  _BGC form 2 years_Mohit.pdf','Male','1998-06-30','A124569','NO','NA','00:00','NO','Chhapru Nagar, nagpur',0),
(2,'Rohan Vensiyani','2021-10-06','','','','','','','','','',NULL,'','','','','','','','',0),
(3,'Rohit ','2021-10-21','','','','12','','','History','','',NULL,'','','','','','','','',0),
(4,'Rohit sharma','','','','','','','','','','',NULL,'','','','','','','','',0);

/*Table structure for table `ledger` */

DROP TABLE IF EXISTS `ledger`;

CREATE TABLE `ledger` (
  `ledger_id` int NOT NULL,
  `from` varchar(100) DEFAULT NULL,
  `to` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`ledger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ledger` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`pass`) values 
('admin','123');

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `empId` int DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `deduction` int DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `mode_of_payment` varchar(100) DEFAULT NULL,
  `bonus` varchar(100) DEFAULT NULL,
  `total_payed` int DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`salary_id`),
  KEY `empId` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `salary` */

insert  into `salary`(`salary_id`,`empId`,`month`,`date`,`salary`,`deduction`,`reason`,`mode_of_payment`,`bonus`,`total_payed`,`created`) values 
(27,2,'June','2021-06-01',NULL,1000,'extra hr / leave','Bank Transfer','10000',39000,'2021-10-07 09:19:46'),
(28,1,'January','2021-01-01',NULL,0,'extra hr / leave','Bank Transfer','5000',45000,'2021-10-07 09:21:32'),
(29,1,'January','2021-10-29',NULL,0,'extra hr / leave','Bank Transfer','10000',50000,'2021-10-12 09:38:17'),
(30,1,'September','2021-09-25',NULL,0,'','Cash','0',40000,'2021-10-16 23:10:09');

/*Table structure for table `student_fees` */

DROP TABLE IF EXISTS `student_fees`;

CREATE TABLE `student_fees` (
  `fees_id` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `remaining_balance` int DEFAULT NULL,
  PRIMARY KEY (`fees_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `student_fees` */

insert  into `student_fees`(`fees_id`,`id`,`date`,`amount`,`remaining_balance`) values 
(8,10,'2021-10-07',10000,25100),
(9,10,'2021-10-14',1000,24100),
(10,10,'2021-10-16',10000,14100),
(11,10,'2021-10-24',14100,0),
(12,34,'2021-10-01',10000,23600),
(13,33,'2021-10-14',10000,23600);

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `tenth_first_name` varchar(100) DEFAULT NULL,
  `tenth_middle_name` varchar(100) DEFAULT NULL,
  `tenth_last_name` varchar(100) DEFAULT NULL,
  `father_first_name` varchar(100) DEFAULT NULL,
  `father_middle_name` varchar(100) DEFAULT NULL,
  `father_last_name` varchar(100) DEFAULT NULL,
  `mother_first_name` varchar(100) DEFAULT NULL,
  `mother_middle_name` varchar(100) DEFAULT NULL,
  `mother_last_name` varchar(100) DEFAULT NULL,
  `prev_first_name` varchar(100) DEFAULT NULL,
  `prev_middle_name` varchar(100) DEFAULT NULL,
  `prev_last_name` varchar(100) DEFAULT NULL,
  `reason_for_change` varchar(100) DEFAULT NULL,
  `martial_status` varchar(100) DEFAULT NULL,
  `prev_sndtu_enrno` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `place_of_birth` varchar(100) DEFAULT NULL,
  `blood_group` varchar(30) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `citizen` varchar(100) DEFAULT NULL,
  `location_category` varchar(100) DEFAULT NULL,
  `course_admit` varchar(100) DEFAULT NULL,
  `division` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `form_no` varchar(100) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `course_applied` varchar(100) DEFAULT NULL,
  `medium` varchar(100) DEFAULT NULL,
  `admission_category` varchar(100) DEFAULT NULL,
  `reserved_category` varchar(100) DEFAULT NULL,
  `curr_country` varchar(100) DEFAULT NULL,
  `curr_state` varchar(100) DEFAULT NULL,
  `curr_district` varchar(100) DEFAULT NULL,
  `curr_tahasil` varchar(100) DEFAULT NULL,
  `curr_pincode` varchar(100) DEFAULT NULL,
  `curr_loc_category` varchar(100) DEFAULT NULL,
  `per_country` varchar(100) DEFAULT NULL,
  `per_state` varchar(100) DEFAULT NULL,
  `per_district` varchar(100) DEFAULT NULL,
  `per_tahasil` varchar(100) DEFAULT NULL,
  `per_pincode` varchar(100) DEFAULT NULL,
  `per_loc_category` varchar(100) DEFAULT NULL,
  `std1` varchar(100) DEFAULT NULL,
  `phone1` varchar(100) DEFAULT NULL,
  `std2` varchar(100) DEFAULT NULL,
  `phone2` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `domicile_state` varchar(100) DEFAULT NULL,
  `cast_category` varchar(100) DEFAULT NULL,
  `res_cast_category` varchar(100) DEFAULT NULL,
  `cast` varchar(100) DEFAULT NULL,
  `sub_cast` varchar(100) DEFAULT NULL,
  `physically_chalenged` varchar(100) DEFAULT NULL,
  `fees` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `students` */

insert  into `students`(`id`,`first_name`,`middle_name`,`last_name`,`tenth_first_name`,`tenth_middle_name`,`tenth_last_name`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_first_name`,`mother_middle_name`,`mother_last_name`,`prev_first_name`,`prev_middle_name`,`prev_last_name`,`reason_for_change`,`martial_status`,`prev_sndtu_enrno`,`dob`,`place_of_birth`,`blood_group`,`religion`,`citizen`,`location_category`,`course_admit`,`division`,`date`,`roll_no`,`form_no`,`signature`,`course_applied`,`medium`,`admission_category`,`reserved_category`,`curr_country`,`curr_state`,`curr_district`,`curr_tahasil`,`curr_pincode`,`curr_loc_category`,`per_country`,`per_state`,`per_district`,`per_tahasil`,`per_pincode`,`per_loc_category`,`std1`,`phone1`,`std2`,`phone2`,`mobile_no`,`email`,`domicile_state`,`cast_category`,`res_cast_category`,`cast`,`sub_cast`,`physically_chalenged`,`fees`) values 
(10,'Roma','Harish','Patil','','','','','','','','','','','','',NULL,NULL,'','1999-03-11','Nagpur','B+ve','',NULL,NULL,'BBA','D11A','2021-09-22','11','F1002','','F1002',NULL,NULL,'OBC','','','','','',NULL,'','','','','',NULL,'','','','','','','',NULL,NULL,'','',NULL,35100),
(33,'Mohit','Mohan','Vensiyani','','','','','','','','','','','','',NULL,NULL,'','','','','',NULL,NULL,'MBA','D13D','','121','','','','English',NULL,'','','','','','',NULL,'','','','','',NULL,'','','','','','','',NULL,NULL,'','',NULL,33600),
(35,'Somesh','Ramesh','Patel','','','','','','','','','','','','',NULL,NULL,'','','','','',NULL,NULL,'BBA','D11','','111','',NULL,'',NULL,NULL,'','','','','','',NULL,'','','','','',NULL,'','','','','','','',NULL,NULL,'','',NULL,35100),
(36,'Raj','Rajesh','Sharma','','','','','','','','','','','','',NULL,NULL,'','','','','',NULL,NULL,'BBA','D123','','1234','',NULL,'',NULL,NULL,'','','','','','',NULL,'','','','','',NULL,'','','','','','','',NULL,NULL,'','',NULL,35100),
(37,'KVUV','FJJ','MokkQ','','','','','','','','','','','','',NULL,NULL,'','','','','',NULL,NULL,'BBA','D12gvvh','','1234567654','',NULL,'',NULL,NULL,'','','','','','',NULL,'','','','','',NULL,'','','','','','','',NULL,NULL,'','',NULL,35100);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_name`,`class_name`,`teacher_name`) values 
(4,'Accounting','BBA','Harsh ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

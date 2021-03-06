-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2015 at 08:58 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assisi-svts-sdd`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicterm`
--

CREATE TABLE IF NOT EXISTS `academicterm` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TermName` varchar(8) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `academicterm`
--

INSERT INTO `academicterm` (`Id`, `TermName`) VALUES
(1, '1st Sem'),
(2, '2st Sem'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `academicyear`
--

CREATE TABLE IF NOT EXISTS `academicyear` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StartYear` year(4) NOT NULL,
  `EndYear` year(4) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `academicyear`
--

INSERT INTO `academicyear` (`Id`, `StartYear`, `EndYear`) VALUES
(1, 2012, 2013),
(2, 2013, 2014),
(3, 0000, 0000),
(4, 2009, 2010),
(5, 2014, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE IF NOT EXISTS `allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TuitionFee` decimal(8,2) DEFAULT NULL,
  `Miscellaneous` decimal(8,2) DEFAULT NULL,
  `Others` decimal(8,2) DEFAULT NULL,
  `Timeline_Id` int(11) NOT NULL,
  `Application_Id` int(11) NOT NULL,
  `Sponsor_Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Allocation_Timeline1_idx` (`Timeline_Id`),
  KEY `fk_Allocation_Application1_idx` (`Application_Id`),
  KEY `fk_Allocation_Sponsor1_idx` (`Sponsor_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(150) NOT NULL,
  `message_box` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `Subject`, `message_box`) VALUES
(1, 'Sample January 20', 'Hi '),
(2, 'Hi Scholar', 'Reuninon this Friday!');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeOfApplication` varchar(45) NOT NULL,
  `Course` varchar(100) NOT NULL,
  `Duration` varchar(8) NOT NULL,
  `SponsoredYears` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Application_User1_idx` (`User_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Id`, `TypeOfApplication`, `Course`, `Duration`, `SponsoredYears`, `User_Id`) VALUES
(55, 'College', 'BSBA', '4', 1, 77),
(56, 'College', 'IT', '2', 1, 78),
(57, '', 'BSIT', '', 0, 79);

-- --------------------------------------------------------

--
-- Table structure for table `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('admin', '1', NULL, 'N;'),
('Alumni', '37', NULL, NULL),
('Alumni', '38', NULL, NULL),
('Alumni', '39', NULL, NULL),
('Alumni', '40', NULL, NULL),
('Alumni', '41', NULL, NULL),
('Alumni', '42', NULL, NULL),
('Alumni', '43', NULL, NULL),
('Alumni', '44', NULL, NULL),
('Alumni', '45', NULL, NULL),
('Alumni', '46', NULL, NULL),
('Alumni', '48', NULL, NULL),
('Alumni', '49', NULL, NULL),
('Alumni', '50', NULL, NULL),
('Alumni', '51', NULL, NULL),
('Alumni', '52', NULL, NULL),
('Alumni', '53', NULL, NULL),
('Alumni', '54', NULL, NULL),
('Alumni', '55', NULL, NULL),
('Alumni', '56', NULL, NULL),
('Alumni', '57', NULL, NULL),
('Alumni', '58', NULL, NULL),
('Alumni', '59', NULL, NULL),
('Alumni', '60', NULL, NULL),
('Alumni', '61', NULL, NULL),
('Alumni', '62', NULL, NULL),
('Alumni', '63', NULL, NULL),
('Alumni', '64', NULL, NULL),
('Alumni', '65', NULL, NULL),
('Alumni', '66', NULL, NULL),
('Alumni', '67', NULL, NULL),
('Alumni', '68', NULL, NULL),
('Alumni', '69', NULL, NULL),
('Alumni', '70', NULL, NULL),
('Alumni', '71', NULL, NULL),
('Alumni', '72', NULL, NULL),
('Alumni', '73', NULL, NULL),
('Alumni', '74', NULL, NULL),
('Alumni', '76', NULL, NULL),
('Alumni', '79', NULL, NULL),
('Coordinator', '29', NULL, NULL),
('Coordinator', '31', NULL, NULL),
('Coordinator', '33', NULL, NULL),
('Coordinator', '34', NULL, NULL),
('Student', '11', NULL, NULL),
('Student', '12', NULL, NULL),
('Student', '13', NULL, NULL),
('Student', '14', NULL, NULL),
('Student', '16', NULL, NULL),
('Student', '17', NULL, NULL),
('Student', '18', NULL, NULL),
('Student', '19', NULL, NULL),
('Student', '2', NULL, NULL),
('Student', '20', NULL, NULL),
('Student', '21', NULL, NULL),
('Student', '22', NULL, NULL),
('Student', '23', NULL, NULL),
('Student', '24', NULL, NULL),
('Student', '25', NULL, NULL),
('Student', '26', NULL, NULL),
('Student', '27', NULL, NULL),
('Student', '28', NULL, NULL),
('Student', '30', NULL, NULL),
('Student', '32', NULL, NULL),
('Student', '35', NULL, NULL),
('Student', '36', NULL, NULL),
('Student', '5', NULL, NULL),
('Student', '6', NULL, NULL),
('Student', '7', NULL, NULL),
('Student', '75', NULL, NULL),
('Student', '77', NULL, NULL),
('Student', '78', NULL, NULL),
('Student', '8', NULL, NULL),
('Student', '9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, NULL, NULL, 'N;'),
('Allocation.*', 1, NULL, NULL, 'N;'),
('Allocation.Admin', 0, NULL, NULL, 'N;'),
('Allocation.Create', 0, NULL, NULL, 'N;'),
('Allocation.Delete', 0, NULL, NULL, 'N;'),
('Allocation.Index', 0, NULL, NULL, 'N;'),
('Allocation.Update', 0, NULL, NULL, 'N;'),
('Allocation.View', 0, NULL, NULL, 'N;'),
('Alumni', 2, 'Alumni', NULL, 'N;'),
('Application.*', 1, NULL, NULL, 'N;'),
('Application.Admin', 0, NULL, NULL, 'N;'),
('Application.Create', 0, NULL, NULL, 'N;'),
('Application.Delete', 0, NULL, NULL, 'N;'),
('Application.Index', 0, NULL, NULL, 'N;'),
('Application.Update', 0, NULL, NULL, 'N;'),
('Application.View', 0, NULL, NULL, 'N;'),
('Coordinator', 2, 'School coordinator', NULL, 'N;'),
('Grades.*', 1, NULL, NULL, 'N;'),
('Grades.Admin', 0, NULL, NULL, 'N;'),
('Grades.Create', 0, NULL, NULL, 'N;'),
('Grades.Delete', 0, NULL, NULL, 'N;'),
('Grades.Index', 0, NULL, NULL, 'N;'),
('Grades.Update', 0, NULL, NULL, 'N;'),
('Grades.View', 0, NULL, NULL, 'N;'),
('Partnerschool.*', 1, NULL, NULL, 'N;'),
('Partnerschool.Admin', 0, NULL, NULL, 'N;'),
('Partnerschool.Create', 0, NULL, NULL, 'N;'),
('Partnerschool.Delete', 0, NULL, NULL, 'N;'),
('Partnerschool.Index', 0, NULL, NULL, 'N;'),
('Partnerschool.Update', 0, NULL, NULL, 'N;'),
('Partnerschool.View', 0, NULL, NULL, 'N;'),
('Profile.*', 1, NULL, NULL, 'N;'),
('Profile.Admin', 0, NULL, NULL, 'N;'),
('Profile.Create', 0, NULL, NULL, 'N;'),
('Profile.Delete', 0, NULL, NULL, 'N;'),
('Profile.Index', 0, NULL, NULL, 'N;'),
('Profile.PersonalView', 0, 'personalView', NULL, 'N;'),
('Profile.Update', 0, NULL, NULL, 'N;'),
('Profile.View', 0, NULL, NULL, 'N;'),
('Role.*', 1, NULL, NULL, 'N;'),
('Role.Admin', 0, NULL, NULL, 'N;'),
('Role.Create', 0, NULL, NULL, 'N;'),
('Role.Delete', 0, NULL, NULL, 'N;'),
('Role.Index', 0, NULL, NULL, 'N;'),
('Role.Update', 0, NULL, NULL, 'N;'),
('Role.View', 0, NULL, NULL, 'N;'),
('School.*', 1, NULL, NULL, 'N;'),
('School.Admin', 0, NULL, NULL, 'N;'),
('School.Create', 0, NULL, NULL, 'N;'),
('School.Delete', 0, NULL, NULL, 'N;'),
('School.Index', 0, NULL, NULL, 'N;'),
('School.Update', 0, NULL, NULL, 'N;'),
('School.View', 0, NULL, NULL, 'N;'),
('Site.*', 1, NULL, NULL, 'N;'),
('Site.Contact', 0, NULL, NULL, 'N;'),
('Site.Error', 0, NULL, NULL, 'N;'),
('Site.Index', 0, NULL, NULL, 'N;'),
('Site.Login', 0, NULL, NULL, 'N;'),
('Site.Logout', 0, NULL, NULL, 'N;'),
('Sponsor.*', 1, NULL, NULL, 'N;'),
('Sponsor.Admin', 0, NULL, NULL, 'N;'),
('Sponsor.Create', 0, NULL, NULL, 'N;'),
('Sponsor.Delete', 0, NULL, NULL, 'N;'),
('Sponsor.Index', 0, NULL, NULL, 'N;'),
('Sponsor.Update', 0, NULL, NULL, 'N;'),
('Sponsor.View', 0, NULL, NULL, 'N;'),
('Student', 2, 'Scholar', NULL, 'N;'),
('Timeline.*', 1, NULL, NULL, 'N;'),
('Timeline.Admin', 0, NULL, NULL, 'N;'),
('Timeline.Create', 0, NULL, NULL, 'N;'),
('Timeline.Delete', 0, NULL, NULL, 'N;'),
('Timeline.Index', 0, NULL, NULL, 'N;'),
('Timeline.Update', 0, NULL, NULL, 'N;'),
('Timeline.View', 0, NULL, NULL, 'N;'),
('User.*', 1, NULL, NULL, 'N;'),
('User.Admin', 0, NULL, NULL, 'N;'),
('User.Create', 0, NULL, NULL, 'N;'),
('User.Delete', 0, NULL, NULL, 'N;'),
('User.Index', 0, NULL, NULL, 'N;'),
('User.Update', 0, NULL, NULL, 'N;'),
('User.View', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitemchild`
--

INSERT INTO `authitemchild` (`parent`, `child`) VALUES
('Coordinator', 'Grades.Admin'),
('Coordinator', 'Grades.Create'),
('Coordinator', 'Grades.Delete'),
('Coordinator', 'Grades.Index'),
('Coordinator', 'Grades.Update'),
('Coordinator', 'Grades.View'),
('Alumni', 'Profile.PersonalView'),
('Coordinator', 'Profile.PersonalView'),
('Student', 'Profile.PersonalView'),
('Alumni', 'Profile.Update'),
('Coordinator', 'Profile.Update'),
('Student', 'Profile.Update'),
('Alumni', 'User.Update'),
('Coordinator', 'User.Update'),
('Student', 'User.Update'),
('Alumni', 'User.View'),
('Coordinator', 'User.View'),
('Student', 'User.View');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `GPA` decimal(3,2) NOT NULL,
  `Timeline_Id` int(11) NOT NULL,
  `Application_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Grades_Timeline_idx` (`Timeline_Id`),
  KEY `fk_Grades_Application1_idx` (`Application_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `graduates`
--

CREATE TABLE IF NOT EXISTS `graduates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `name_of_school` varchar(30) NOT NULL,
  `year_started_of_scholarship` year(4) NOT NULL,
  `year_graduated` year(4) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `honors_recieved` varchar(100) NOT NULL,
  `current_status` varchar(20) NOT NULL,
  `current_employment` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `graduates`
--

INSERT INTO `graduates` (`id`, `name`, `name_of_school`, `year_started_of_scholarship`, `year_graduated`, `course_title`, `honors_recieved`, `current_status`, `current_employment`) VALUES
(1, 'Dolfe', 'APC', 2013, 2014, 'IT', 'None', 'Employed', 'America');

-- --------------------------------------------------------

--
-- Table structure for table `partnerschool`
--

CREATE TABLE IF NOT EXISTS `partnerschool` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `School_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_School_has_User_User1_idx` (`User_Id`),
  KEY `fk_School_has_User_School1_idx` (`School_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `partnerschool`
--

INSERT INTO `partnerschool` (`Id`, `School_Id`, `User_Id`) VALUES
(52, 6, 78),
(53, 13, 79);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Lastname` varchar(30) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Middlename` varchar(30) DEFAULT NULL,
  `Religion` varchar(30) DEFAULT NULL,
  `Sex` tinyint(1) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `PlaceOfBirth` varchar(45) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DateCreated` date NOT NULL,
  `DateUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CivilStatus` varchar(20) DEFAULT NULL,
  `Occupation` varchar(45) DEFAULT NULL,
  `CompanyName` varchar(45) DEFAULT NULL,
  `FuturePlan` longtext,
  `YearStarted` year(4) NOT NULL,
  `YearEnded` year(4) NOT NULL,
  `Honor` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`Id`, `Lastname`, `Firstname`, `Middlename`, `Religion`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `Address`, `ContactNumber`, `Email`, `DateCreated`, `DateUpdate`, `CivilStatus`, `Occupation`, `CompanyName`, `FuturePlan`, `YearStarted`, `YearEnded`, `Honor`) VALUES
(1, 'Almazan', 'Jeff Bryan', '', 'Christian', 1, '1993-11-05', '', 'Manila', '09221234567', 'almazan.jeffbryan@gmail.com', '2014-02-13', '2014-02-14 12:42:43', '', 'Administrator', NULL, 'None so far', 0000, 0000, ''),
(2, 'Salas', 'Marz Kimberly', 'Tamba', 'Roman Catholic', 0, '1995-07-07', 'Bacolod City', '1 Roxas Ave. Prk. Mahida-iton Brgy. 39 Bacolod City', '09465070044', 'kimsalas@gmail.com', '1970-01-01', '2014-04-28 17:54:10', 'Single', NULL, NULL, '', 0000, 0000, ''),
(3, 'Serfino', 'Sherlyn', 'Tayco', 'Roman Catholic', 0, '1970-01-01', 'Balabac, Palawan', '#46-Bonifacio street kabankalan City Negros, Occidental', '09286213436', '*@yahoo.com', '1970-01-01', '2014-05-01 06:19:11', 'Single', NULL, NULL, '', 0000, 0000, ''),
(4, 'Hinolan', 'Catherine Keth ', 'Redil', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Lot 30 Block 9 Gardenville Subd. Tangulo Bacolod City', '4442686', '_______@yahoo.com', '1970-01-01', '2014-05-01 06:30:29', 'Single', NULL, NULL, '', 0000, 0000, ''),
(5, 'Genogaling', 'Azalea ', 'Baguna', 'Roman Catholic', 0, '1970-01-01', 'Alabang Muntinlupa City', 'Prk. Sab Roque Tangub Bacolod City', '09077462020', '______@yahoo.com', '1970-01-01', '2014-05-01 06:38:37', 'Single', NULL, NULL, '', 0000, 0000, ''),
(6, 'Eguiso', 'Jessa ', 'Enteria', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. Sigay Brgy. 2 Bacolod City', '09123577577', 'eguiso.jessa@gmail.com', '1970-01-01', '2014-05-01 06:40:57', 'Single', NULL, NULL, '', 0000, 0000, ''),
(7, 'Ligahon', 'Jenny ', 'Lupo', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. Kabugwason Brgy. Mansilingan Bacolod City', '09072096285', '__@gmail.com', '1970-01-01', '2014-05-01 06:43:48', 'Single', NULL, NULL, '', 0000, 0000, ''),
(8, 'Sun', 'Thea Christine', 'Alima', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Sam Village Brgy. Granada Bacolod City', '09109944439', '_____@yahoo.com', '1970-01-01', '2014-05-01 06:46:01', 'Single', NULL, NULL, '', 0000, 0000, ''),
(9, 'Perez', 'Teozon Joy', 'De arroz', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. Nami-Nami Brgy. Banago Bacolod City ', '4410787', '____@yahoo.com', '1970-01-01', '2014-05-01 06:48:39', 'Single', NULL, NULL, '', 0000, 0000, ''),
(10, 'Pastor', 'Chreszea', 'Jaud', 'Roman Catholic', 0, '1970-01-01', 'Valladolid', 'Sitio himaya Brgy. Sagua Banwa Villadolid Negros Occidental', '09301665163', '___@yahoo.com', '1970-01-01', '2014-05-01 06:52:30', 'Single', NULL, NULL, '', 0000, 0000, ''),
(11, 'Sayco', 'Melgie May', 'Francisco', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Brgy. 35 Prk. Malipayon B.C', '09983571498', '__@yahoo.com', '1970-01-01', '2014-05-01 06:56:21', 'Single', NULL, NULL, '', 0000, 0000, ''),
(12, 'Cuaycong', 'Nina', 'Tongcua', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. 2 Alunan St. Brgy. Granada Bacolod City', '09083499738', '_@yahoo.com', '1970-01-01', '2014-05-01 06:59:31', 'Single', NULL, NULL, '', 0000, 0000, ''),
(13, 'Latergo', 'Rica Vanessa', 'Villacuatro', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Phase 6 B, Prk. Sto. Nino Blk. 31 lot 11 Brgy. handumana Bacolod City', '09465790404', '_@gmail.com', '1970-01-01', '2014-05-01 07:02:59', 'Single', NULL, NULL, '', 0000, 0000, ''),
(14, 'Albaciete', 'Felicisimo Jr', 'Giltendez', 'Roman Catholic', 1, '1970-01-01', 'Bacolod City', 'Prk Tinagong Paraiso brgy. Banago Bacolod City', '09129813718', '****@yahoo.com', '1970-01-01', '2014-05-01 07:09:07', 'Single', NULL, NULL, '', 0000, 0000, ''),
(15, 'Delicano', 'Noben Jude', 'Fernandez', 'Roman Catholic', 1, '1970-01-01', 'Hinigaran', 'Prk. Maninihon Brgy. Miranda Pontevedra Negros Occidental', '00000', '***@yahoo.com', '1970-01-01', '2014-05-01 07:13:01', 'Single', NULL, NULL, '', 0000, 0000, ''),
(16, 'Valenzuela', 'Lira Joie', 'Mabunay', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. Sto Domingo Brgy. Banago Bacolod City', '09484438796', '**@gmail.com', '1970-01-01', '2014-05-01 07:20:12', 'Single', NULL, NULL, '', 0000, 0000, ''),
(17, 'Jardaleza', 'Jenezeal marie', 'Talisa', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. 14 Brgy. Alangilan Bacolod City', '09208545446', 'jenmarie@yahoo.com', '1970-01-01', '2014-05-01 07:24:21', 'Single', NULL, NULL, '', 0000, 0000, ''),
(18, 'Pahila', 'Pearl Marie', 'Serenas', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. Cabalagnan Brgy. Tangub Bacolod City', '09207515081', 'pahilapearl@gmail.com', '1970-01-01', '2014-05-01 07:27:00', 'Single', NULL, NULL, '', 0000, 0000, ''),
(19, 'Subebe', 'Pinky', 'Labrador', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Phase 6 Blk. 31 lot 14 Brgy. Handumanan Bacolod City', '0000', 'subebepinky@yahoo.com', '1970-01-01', '2014-05-01 07:29:28', 'Single', NULL, NULL, '', 0000, 0000, ''),
(21, 'Las ', 'Christian', 'Delos Santos', 'Roman Catholic', 1, '1970-01-01', 'Quezon City', 'Brgy. Talabaan Cadiz City Negros Occidental', '00000', 'christian_las@yahoo.com', '1970-01-01', '2014-05-01 07:32:19', 'Single', NULL, NULL, '', 0000, 0000, ''),
(22, 'Layes', 'Emily', 'Fajemolin', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Zone 3 Prk. riverside Brgy. Banago Bacolod City', '000000', 'emlayes@yahoo.com', '1970-01-01', '2014-05-01 07:35:18', 'Single', NULL, NULL, '', 0000, 0000, ''),
(23, 'Nanquil', 'Riza Joy ', 'Camacho', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Prk. Santol Brgy Mandalagan Bacolod City', '00000', '_**@yahoo.com', '1970-01-01', '2014-05-01 07:37:26', 'Single', NULL, NULL, '', 0000, 0000, ''),
(24, 'Villalon', 'Patricia', 'Apura', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', '7 J. Binas St Kahirup A, Brgy Mansilingan, B.C', '7070048', '__*@yahoo.com', '1970-01-01', '2014-05-01 07:48:05', 'Single', NULL, NULL, '', 0000, 0000, ''),
(25, 'Sasi ', 'Maria Juela', 'Jusga', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Purok linya Brgy Cabug Bacolod City', '00000', 'juela@yahoo.com', '1970-01-01', '2014-05-01 07:54:17', 'Single', NULL, NULL, '', 0000, 0000, ''),
(26, 'tedoco', 'Jacqueline', 'Chua', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'San Roque Tangub Bacolod City Negros Occidental', '00000', '_*@yahoo.com', '1970-01-01', '2014-05-01 07:57:30', 'Single', NULL, NULL, '', 0000, 0000, ''),
(27, 'Delatina', 'Maria Joyce', 'Escobar', 'Roman Catholic', 0, '1970-01-01', 'Bacolod City', 'Menlo Village talisay City Negros Occidental', '09094389161', '*******@yahoo.com', '1970-01-01', '2014-05-01 08:00:07', 'Single', NULL, NULL, '', 0000, 0000, ''),
(30, 'Lubrio', 'Jessan', 'Arreza', '', 1, '1970-01-01', '', 'Cavite', '09191234567', 'calubrio@apc.edu.ph', '2014-05-02', '2014-05-02 04:37:52', 'Single', NULL, NULL, '', 0000, 0000, ''),
(32, 'Joestar', 'George', 'Steak', '', 1, '1970-01-01', '', 'Joestar Manor, London, England', '09158976245', 'howdoyoulikeyoursteak@moo.com', '2014-05-02', '2014-05-02 06:49:09', 'Married', NULL, NULL, '', 0000, 0000, ''),
(33, 'Mesina', 'Leon Jordan', 'J.', 'Catholic', 1, '1970-01-01', 'Quezon City', 'Blk 16 lt. 11 QC Ville 1 Central Ave,Diliman Quezon city', '09175110623', 'ljmesina@apc.edu.ph', '2014-05-19', '2014-05-19 03:36:09', 'Single', NULL, NULL, '', 0000, 0000, ''),
(34, 'Galan', 'Sarah', 'M.', '', 0, '1981-11-12', '', 'Assisi Development Foundation Incorporated', '09232996239', 'sar_moresca@yahoo.com', '2014-05-19', '2014-05-19 03:42:01', 'Married', NULL, NULL, '', 0000, 0000, ''),
(35, 'Almazan', 'Jeff Bryan', 'Talatagod', '', 1, '1970-01-01', '', 'Alabang', '5051735', 'jtalmazan113@gmail.com', '2015-02-28', '2015-02-28 06:53:42', 'Single', NULL, NULL, '', 0000, 0000, ''),
(36, 'Almazan', 'Jeff', 'Talatagod', 'Roman Catholic', 1, '1970-01-01', 'Manila', 'Alabang', '0906754495', 'jeffbryan18@gmail.com', '2015-03-04', '2015-03-04 11:37:19', 'Single', NULL, NULL, '', 0000, 0000, ''),
(37, 'Abrenica', 'Jeff Bryanttt', 'Talatagod', '', 1, '1970-01-14', '', 'Bicutan', '09067554495', 'jeffbryan_almazan@yahoo.com', '2015-03-17', '2015-03-17 15:13:37', 'Single', NULL, NULL, '', 0000, 0000, ''),
(75, 'Espartero', 'Rodolfe', 'Almazan', 'Catholic', 1, '1970-01-01', 'Manila', '', '09067554495', 'jtalmazabn113@gmail.com', '2015-03-24', '2015-03-24 08:23:26', 'Single', NULL, NULL, 'hkdsjfhkdsjf', 2013, 2014, 'Cumlaude'),
(76, 'Almazan', 'Noel', '', 'Catholic', 1, '1970-01-01', '', '', '09067554498', 'na@f.v', '2015-04-03', '2015-04-03 11:53:13', 'Single', NULL, NULL, '', 0000, 0000, ''),
(78, 'adhsak', 'jklajdaklj', 'lkj', 'Muslim', 0, '1993-11-05', 'Manila', '', '5', 'adas213@yahoo.com', '2015-04-06', '2015-04-06 15:24:37', 'Single', NULL, NULL, '', 2013, 0000, ''),
(79, 'Almazan', 'Jeff Bryan', 'Talatagod', 'Catholic', 1, '1993-11-05', 'Manila', '', '09067554495', 'jeff@yahoo.com', '2015-04-06', '2015-04-06 15:55:11', 'Single', NULL, NULL, '', 2011, 2015, 'Cumlaude'),
(80, 'Espartero', 'Rodolfe', 'None', 'Muslim', 0, '1993-12-24', 'Manila', '', '09223264582', 'rodolfe@yahoo.com', '2015-04-06', '2015-04-06 15:56:14', 'Single', NULL, NULL, '', 2011, 2013, ''),
(81, 'Tolorio', 'Shane', '', '', 1, '1993-12-24', 'Manila', '', '09067554495', 'jseff@yahoo.com', '2015-04-07', '2015-04-07 09:56:42', 'Single', NULL, NULL, '', 0000, 0000, ''),
(82, 'Bautista', 'Herbert', '', '', 1, '1993-12-24', 'Manila', '', '09223264582', 'jsseff@yahoo.com', '2015-04-07', '2015-04-07 09:57:26', 'Single', NULL, NULL, '', 2013, 2014, 'Cumlaude');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id`, `Name`) VALUES
(1, 'Admin'),
(2, 'Coordinator'),
(3, 'Student'),
(4, 'Alumni');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`Id`, `Name`, `Address`, `ContactNo`) VALUES
(1, 'La Consolacion College Bacolod', 'Galo St, Bacolod', '(034) 434 9661'),
(2, 'La Consolacion College Manila', 'San Miguel, Manila', '(02) 736 0235'),
(3, 'University of Saint La Salle', 'La Salle Avenue, Bacolod 6100,Negros Occidental', '(034) 434 6100'),
(4, 'Welcome Home Foundation Inc', 'Bacolod City, Negros Occidental', '(034) 441 2031'),
(5, 'University of Negros Occidental De Recoletos', '54 Lizares St, Bacolod', '(034) 433 2449'),
(6, 'West Visayas State College', 'Luna Street, Lapaz, Iloilo City', '(033) 320 0870'),
(7, 'West Visayas State College of Science & Techn', 'Burgos St. La Paz, Iloilo City', '(033) 320 9769'),
(8, 'Western Institute of Technology', 'Dalan Luna, Iloilo', '(033) 320 0902'),
(9, 'University of Iloilo - Phinma', 'Dalan Rizal, Iloilo', '(033) 338 1071'),
(10, 'Carlos Hilado Memorial College', 'Fortune Town, Bacolod', '(034) 495 2360'),
(11, 'University of Perpetual Help Las Pinas', 'Alabang - Zapote Rd, Las Piñas', '(02) 872 7041'),
(12, 'University of Perpetual Help Laguna', 'City of Biñan, Laguna', '511-9562'),
(13, 'Saint Pedro Poveda College', 'P. Poveda Road, Mandaluyong', '631 8756'),
(14, 'Don Bosco Technological College - TVET', 'Makati City', '(02) 531 8081'),
(15, 'Don Bosco Technological College', '736 Gen. Kalentong, Mandaluyong', '(02) 531 8081'),
(16, 'Riverside College Bacolod', 'Bacolod', '(034) 432 7624'),
(17, 'Collegio De San Agustin Bacolod', 'BS Aquino Dr, Bacolod', '(034) 434 2471'),
(18, 'University of Santo Tomas', 'España Blvd, Maynila', '(02) 406 1611'),
(19, 'La Concordia College', 'Manila City, Manila', '(02)564-2001'),
(20, 'University Of The Philippines Diliman', 'Diliman, Quezon City', '(02) 981 8500'),
(21, 'New Lucena Polytechnic College', 'Don Epifanio Sonza Sr. Avenue New Lucena Iloilo', '(033) 526 2015'),
(22, 'Assumption College', 'San Lorenzo Dr, Makati', '(02) 817 0757'),
(23, 'Ateneo de Manila University', 'Katipunan Ave, Lungsod Quezon', '(02) 426 6001'),
(24, 'University of the Philippines Los Baños', 'Jose R Velasco Ave, Los Baños 4031,Laguna', '(049) 536 2928');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `SponsorCoordinator` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`Id`, `Name`, `Address`, `ContactNo`, `SponsorCoordinator`) VALUES
(1, 'Gado & Jessie Jalandoni Scholarships', 'No.4 Liberty Building, A. Arnaiz Street, Makati City', '+638904539', 'Mrs. Asuncion Jalandoni'),
(2, 'Speedwagon Foundation', 'Liverpool, London England', '09136784567', 'George Joestar');

-- --------------------------------------------------------

--
-- Table structure for table `sys_table`
--

CREATE TABLE IF NOT EXISTS `sys_table` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FieldName` varchar(100) NOT NULL,
  `Role_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_sys_Table_Role1_idx` (`Role_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `sys_table`
--

INSERT INTO `sys_table` (`Id`, `FieldName`, `Role_Id`) VALUES
(9, 'Lastname', 3),
(10, 'Firstname', 3),
(11, 'Middlename', 3),
(12, 'Religion', 3),
(13, 'Sex', 3),
(14, 'DateOfBirth', 3),
(15, 'PlaceOfBirth', 3),
(17, 'ContactNumber', 3),
(18, 'Email', 3),
(19, 'DateUpdate', 3),
(20, 'Lastname', 4),
(21, 'Firstname', 4),
(22, 'Middlename', 4),
(23, 'Religion', 4),
(24, 'Sex', 4),
(25, 'DateOfBirth', 4),
(26, 'PlaceOfBirth', 4),
(28, 'ContactNumber', 4),
(29, 'Email', 4),
(30, 'FuturePlan', 4),
(32, 'CivilStatus', 3),
(34, 'Course', 4),
(35, 'Honor', 4),
(36, 'YearStarted', 4),
(37, 'YearEnded', 4),
(38, 'CivilStatus', 4),
(39, 'Occupation', 4);

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE IF NOT EXISTS `timeline` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `academicyear_id` int(11) NOT NULL,
  `academicterm_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_timeline_academicyear1_idx` (`academicyear_id`),
  KEY `fk_timeline_academicterm1_idx` (`academicterm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `timeline`
--

INSERT INTO `timeline` (`Id`, `academicyear_id`, `academicterm_id`) VALUES
(1, 1, 1),
(10, 2, 1),
(15, 3, 1),
(16, 3, 2),
(17, 4, 1),
(18, 5, 2),
(19, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(200) NOT NULL DEFAULT '2381c66086fbd785292e0f474aa2cd364fc29def',
  `Profile_Id` int(11) NOT NULL,
  `Role_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_User_Profile1_idx` (`Profile_Id`),
  KEY `fk_User_Role1_idx` (`Role_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `Profile_Id`, `Role_Id`) VALUES
(1, 'admin', '$29RahM63VUkc', 1, 1),
(2, 'abalangue', '$260lJ7lpWHe6', 2, 3),
(3, 'sserfino', '$2v9ipqsoXhs6', 3, 3),
(4, 'chinolan', '$2dbcUgtjFrn2', 4, 3),
(5, 'agenogaling', '$2VkfckDxmSQ2', 5, 3),
(6, 'jeguiso', '$2IVrMgmBAtUo', 6, 3),
(7, 'jligahon', '$2ImmH779wfRE', 7, 3),
(8, 'tsun', '$2dC7poRXgcFU', 8, 3),
(9, 'tperez', '$2cmE//3GtoIc', 9, 3),
(10, 'cpastor', '$2dDcLo6LKbIc', 10, 3),
(11, 'msayco', '$2m6bn3Rl2Kfc', 11, 3),
(12, 'ncuaycong', '$2Cr9D8Wtgg0I', 12, 3),
(13, 'rlatergo', '$2TyD8cpD8ziQ', 13, 3),
(14, 'falbaciete', '$2A6fUrsK8PS.', 14, 3),
(15, 'ndelicano', '$2udGG/G5Z.G6', 15, 3),
(16, 'lvalenzuela', '$28KPxhDXaYAI', 16, 3),
(17, 'jjardaleza', '$2BsG8B1rDszw', 17, 3),
(18, 'ppahila', '$2TJJDeGPeoak', 18, 3),
(19, 'psubebe', '$23uPE7.75obc', 19, 3),
(20, 'clas', '$2xZ1mY4tO3kI', 21, 3),
(21, 'elayes', '$2GBzUpnNCbVY', 22, 3),
(22, 'rnanquil', '$2Q31YR4mLSFs', 23, 3),
(23, 'pvillalon', '$2YW7gKawmcLQ', 24, 3),
(24, 'msasi', '$2QOWjfCyqfvw', 25, 3),
(25, 'jtedoco', '$2FeRLpvAfb6I', 26, 3),
(26, 'mdelatina', '$2q2ZrVeDMQHk', 27, 3),
(29, 'jlubrio', '$2nUotZpPa8fM', 30, 2),
(32, 'lmesina', '$2pWKc5JRwB2k', 33, 3),
(33, 'vmesina', '$2.VQz1WrYyQs', 34, 2),
(34, 'jalmazan', '$2Yya3RYYteJ6', 35, 2),
(35, 'ealmazan', '$2CHcwB21.4wc', 36, 3),
(36, 'falmazan', '$2chnd3bR8saE', 37, 4),
(75, 'jadhsak', '$2fV362ffpMo.', 78, 3),
(76, 'balmazan', '$2fL/FRfsfiCA', 79, 4),
(77, 'respartero', '$21is/zn.OplA', 80, 3),
(78, 'stolorio', '$2Hb3Wv4gtL.s', 81, 3),
(79, 'hbautista', '$2Kia.df7BudA', 82, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocation`
--
ALTER TABLE `allocation`
  ADD CONSTRAINT `fk_Allocation_Application1` FOREIGN KEY (`Application_Id`) REFERENCES `application` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Allocation_Sponsor1` FOREIGN KEY (`Sponsor_Id`) REFERENCES `sponsor` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Allocation_Timeline1` FOREIGN KEY (`Timeline_Id`) REFERENCES `timeline` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk_Application_User1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `authassignment`
--
ALTER TABLE `authassignment`
  ADD CONSTRAINT `AuthAssignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD CONSTRAINT `AuthItemChild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AuthItemChild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `fk_Grades_Application1` FOREIGN KEY (`Application_Id`) REFERENCES `application` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Grades_Timeline` FOREIGN KEY (`Timeline_Id`) REFERENCES `timeline` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `partnerschool`
--
ALTER TABLE `partnerschool`
  ADD CONSTRAINT `fk_School_has_User_School1` FOREIGN KEY (`School_Id`) REFERENCES `school` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_School_has_User_User1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rights`
--
ALTER TABLE `rights`
  ADD CONSTRAINT `Rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sys_table`
--
ALTER TABLE `sys_table`
  ADD CONSTRAINT `fk_sys_Table_Role1` FOREIGN KEY (`Role_Id`) REFERENCES `role` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `timeline`
--
ALTER TABLE `timeline`
  ADD CONSTRAINT `fk_timeline_academicterm1` FOREIGN KEY (`academicterm_id`) REFERENCES `academicterm` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_timeline_academicyear1` FOREIGN KEY (`academicyear_id`) REFERENCES `academicyear` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_Profile1` FOREIGN KEY (`Profile_Id`) REFERENCES `profile` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_User_Role1` FOREIGN KEY (`Role_Id`) REFERENCES `role` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

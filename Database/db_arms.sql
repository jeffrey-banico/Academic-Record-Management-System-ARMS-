-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 12:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arms`
--
CREATE DATABASE IF NOT EXISTS `db_arms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_arms`;

-- --------------------------------------------------------

--
-- Table structure for table `core values`
--

DROP TABLE IF EXISTS `core values`;
CREATE TABLE `core values` (
  `coreID` int(3) NOT NULL,
  `curriculumID` int(3) NOT NULL,
  `coreValues` varchar(50) NOT NULL,
  `statement` varchar(100) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum` (
  `curriculumID` int(3) NOT NULL,
  `currName` varchar(40) NOT NULL,
  `sYImplemented` char(11) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`curriculumID`, `currName`, `sYImplemented`, `status`) VALUES
(1, 'K to 12 Education Curriculum', '2012-2013', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `deparmentID` int(3) NOT NULL,
  `curriculumID` int(3) NOT NULL,
  `deptName` varchar(20) NOT NULL,
  `sYImplemented` char(11) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deparmentID`, `curriculumID`, `deptName`, `sYImplemented`, `status`) VALUES
(1, 1, 'Junior High School', '2012-2013', 'Active'),
(2, 1, 'Senior High School', '2012-2013', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `grade level`
--

DROP TABLE IF EXISTS `grade level`;
CREATE TABLE `grade level` (
  `gradelvlID` int(3) NOT NULL,
  `departmentID` int(3) NOT NULL,
  `gradeLevel` char(3) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade level`
--

INSERT INTO `grade level` (`gradelvlID`, `departmentID`, `gradeLevel`, `status`) VALUES
(1, 1, '7', 'Active'),
(2, 1, '8', 'Active'),
(3, 1, '9', 'Active'),
(4, 1, '10', 'Active'),
(5, 2, '11', 'Active'),
(6, 2, '12', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior attendance`
--

DROP TABLE IF EXISTS `junior attendance`;
CREATE TABLE `junior attendance` (
  `jhsAttendanceID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `month` varchar(10) NOT NULL,
  `schoolDay` int(3) NOT NULL,
  `presentDay` int(3) NOT NULL,
  `absentDay` int(3) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior attendance`
--

INSERT INTO `junior attendance` (`jhsAttendanceID`, `jhsEligibleID`, `jhsClassID`, `month`, `schoolDay`, `presentDay`, `absentDay`, `status`) VALUES
(876152128854, 112614358579, 679172536182, 'August', 7, 7, 0, 'Active'),
(876152128855, 112614358579, 679172536182, 'September', 22, 20, 2, 'Active'),
(876152128856, 112614358579, 679172536182, 'October', 21, 20, 1, 'Active'),
(876152128857, 112614358579, 679172536182, 'November', 20, 20, 0, 'Active'),
(876152128858, 112614358579, 679172536182, 'December', 11, 11, 0, 'Active'),
(876152128859, 112614358579, 679172536182, 'January', 20, 15, 5, 'Active'),
(876152128860, 112614358579, 679172536182, 'February', 14, 14, 0, 'Active'),
(876152128861, 112614358579, 679172536182, 'March', 22, 19, 3, 'Active'),
(876152128862, 112614358579, 679172536182, 'April', 18, 18, 0, 'Active'),
(876152128863, 112614358579, 679172536182, 'May', 22, 21, 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior class information`
--

DROP TABLE IF EXISTS `junior class information`;
CREATE TABLE `junior class information` (
  `jhsClassID` bigint(20) NOT NULL,
  `schoolYearID` int(3) NOT NULL,
  `gradelvlID` int(3) NOT NULL,
  `school` varchar(50) NOT NULL,
  `schoolID` char(6) NOT NULL,
  `district` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `classType` varchar(20) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior class information`
--

INSERT INTO `junior class information` (`jhsClassID`, `schoolYearID`, `gradelvlID`, `school`, `schoolID`, `district`, `division`, `region`, `classType`, `status`) VALUES
(679172536182, 11, 1, 'Mababangbaybay National High School', '309935', '1st District', 'Masbate', 'Bicol Region V', 'Regular', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior class list`
--

DROP TABLE IF EXISTS `junior class list`;
CREATE TABLE `junior class list` (
  `jhsClassListID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior class list`
--

INSERT INTO `junior class list` (`jhsClassListID`, `jhsClassID`, `jhsEligibleID`, `status`) VALUES
(3419264533627, 679172536182, 117482049264, 'Active'),
(34121231316279, 679172536182, 112614358579, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior component grade per quarter`
--

DROP TABLE IF EXISTS `junior component grade per quarter`;
CREATE TABLE `junior component grade per quarter` (
  `jhsSubComQuarterGradeID` bigint(20) NOT NULL,
  `jhsSubQuarterGradeID` bigint(20) NOT NULL,
  `jhsSubjectComponentID` int(3) NOT NULL,
  `1st` int(3) DEFAULT NULL,
  `2nd` int(3) DEFAULT NULL,
  `3rd` int(3) DEFAULT NULL,
  `4th` int(3) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior eligibility`
--

DROP TABLE IF EXISTS `junior eligibility`;
CREATE TABLE `junior eligibility` (
  `jhsEligibleID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `departmentID` int(3) NOT NULL,
  `elemCompleter` int(1) DEFAULT NULL,
  `elemGenAve` float DEFAULT NULL,
  `elemCitation` varchar(30) DEFAULT NULL,
  `elemID` int(6) DEFAULT NULL,
  `elemName` varchar(50) DEFAULT NULL,
  `elemAddress` varchar(70) DEFAULT NULL,
  `pepPasser` int(1) DEFAULT NULL,
  `pepRating` float DEFAULT NULL,
  `alsPasser` int(1) DEFAULT NULL,
  `alsRating` float DEFAULT NULL,
  `other` varchar(15) DEFAULT NULL,
  `otherRating` float DEFAULT NULL,
  `dateofAssessment` date DEFAULT NULL,
  `nameofTestingCenter` varchar(30) DEFAULT NULL,
  `addofTestingCenter` varchar(60) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior eligibility`
--

INSERT INTO `junior eligibility` (`jhsEligibleID`, `userID`, `departmentID`, `elemCompleter`, `elemGenAve`, `elemCitation`, `elemID`, `elemName`, `elemAddress`, `pepPasser`, `pepRating`, `alsPasser`, `alsRating`, `other`, `otherRating`, `dateofAssessment`, `nameofTestingCenter`, `addofTestingCenter`, `status`) VALUES
(112614358579, 112614358579, 1, 1, 92, NULL, 600146, 'World-Class Elementary School', 'Biliran Island, Naval, Leyte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(117482049264, 117482049264, 1, 1, 93, NULL, 600321, 'Banico Elementary School', 'Legazpi City, Albay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior grade per quarter`
--

DROP TABLE IF EXISTS `junior grade per quarter`;
CREATE TABLE `junior grade per quarter` (
  `jhsSubQuarterGradeID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `jhsSubjectID` int(3) NOT NULL,
  `1st` int(3) DEFAULT NULL,
  `2nd` int(3) DEFAULT NULL,
  `3rd` int(3) DEFAULT NULL,
  `4th` int(3) DEFAULT NULL,
  `finalGrade` int(3) DEFAULT NULL,
  `remarks` char(6) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior gwa`
--

DROP TABLE IF EXISTS `junior gwa`;
CREATE TABLE `junior gwa` (
  `jhsGwaID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `gwa` int(3) NOT NULL,
  `remarks` char(6) NOT NULL,
  `excellenceAward` char(20) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior observed value`
--

DROP TABLE IF EXISTS `junior observed value`;
CREATE TABLE `junior observed value` (
  `jhsValueID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `coreID` int(3) NOT NULL,
  `1st` int(3) DEFAULT NULL,
  `2nd` int(3) DEFAULT NULL,
  `3rd` int(3) DEFAULT NULL,
  `4th` int(3) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior raw score`
--

DROP TABLE IF EXISTS `junior raw score`;
CREATE TABLE `junior raw score` (
  `jhsRawScoreID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `jhsSubjectID` int(3) NOT NULL,
  `quarter` char(3) NOT NULL,
  `component` varchar(20) DEFAULT NULL,
  `nameOfTask` varchar(30) DEFAULT NULL,
  `highestScore` int(3) DEFAULT NULL,
  `rawScore` int(3) DEFAULT NULL,
  `percentageScore` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior regular class`
--

DROP TABLE IF EXISTS `junior regular class`;
CREATE TABLE `junior regular class` (
  `jhsClassID` bigint(20) NOT NULL,
  `sectionID` int(3) NOT NULL,
  `userID` bigint(20) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior regular class`
--

INSERT INTO `junior regular class` (`jhsClassID`, `sectionID`, `userID`, `status`) VALUES
(679172536182, 1, 118452749274, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior remedial class information`
--

DROP TABLE IF EXISTS `junior remedial class information`;
CREATE TABLE `junior remedial class information` (
  `jhsRemClassID` bigint(20) NOT NULL,
  `schoolYearID` int(3) NOT NULL,
  `gradelvlID` int(3) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior remedial class record`
--

DROP TABLE IF EXISTS `junior remedial class record`;
CREATE TABLE `junior remedial class record` (
  `jhsRemClassListID` bigint(20) NOT NULL,
  `jhsRemSubClassID` bigint(20) NOT NULL,
  `jhsEligibleID` bigint(20) NOT NULL,
  `finalRating` float NOT NULL,
  `remedialMark` float NOT NULL,
  `recomputedGrades` float NOT NULL,
  `remarks` char(6) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior remedial subject class`
--

DROP TABLE IF EXISTS `junior remedial subject class`;
CREATE TABLE `junior remedial subject class` (
  `jhsRemSubClassID` bigint(20) NOT NULL,
  `jhsRemClassID` bigint(20) NOT NULL,
  `jhsSubjectID` int(3) NOT NULL,
  `userID` bigint(20) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `junior subject`
--

DROP TABLE IF EXISTS `junior subject`;
CREATE TABLE `junior subject` (
  `jhsSubjectID` int(3) NOT NULL,
  `departmentID` int(3) NOT NULL,
  `subjectTitle` varchar(50) NOT NULL,
  `componentVerifier` int(1) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior subject`
--

INSERT INTO `junior subject` (`jhsSubjectID`, `departmentID`, `subjectTitle`, `componentVerifier`, `status`) VALUES
(1, 1, 'Filipino', 0, 'Active'),
(2, 1, 'English', 0, 'Active'),
(3, 1, 'Mathemathics', 0, 'Active'),
(4, 1, 'Science', 0, 'Active'),
(5, 1, 'Araling Panlipunan', 0, 'Active'),
(6, 1, 'Edukasyon sa Pagpapakatao (EsP)', 0, 'Active'),
(7, 1, 'MAPEH', 1, 'Active'),
(8, 1, 'Technology and Livelihood Education (TLE)', 0, 'Active'),
(9, 1, 'Bisaya', 0, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `junior subject class`
--

DROP TABLE IF EXISTS `junior subject class`;
CREATE TABLE `junior subject class` (
  `jhsSubClassID` bigint(20) NOT NULL,
  `jhsClassID` bigint(20) NOT NULL,
  `jhsSubjectID` int(3) NOT NULL,
  `userID` bigint(20) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior subject class`
--

INSERT INTO `junior subject class` (`jhsSubClassID`, `jhsClassID`, `jhsSubjectID`, `userID`, `status`) VALUES
(237764536281, 679172536182, 7, 118452749274, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior subject component`
--

DROP TABLE IF EXISTS `junior subject component`;
CREATE TABLE `junior subject component` (
  `jhsSubjectComponentID` int(3) NOT NULL,
  `jhsSubjectID` int(3) NOT NULL,
  `subjectComponentTitle` varchar(50) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `junior subject component`
--

INSERT INTO `junior subject component` (`jhsSubjectComponentID`, `jhsSubjectID`, `subjectComponentTitle`, `status`) VALUES
(1, 7, 'Music', 'Active'),
(2, 7, 'Arts', 'Active'),
(3, 7, 'Physical Education (PE)', 'Active'),
(4, 7, 'Health', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `junior transferee information`
--

DROP TABLE IF EXISTS `junior transferee information`;
CREATE TABLE `junior transferee information` (
  `jhsClassID` bigint(20) NOT NULL,
  `teacherName` varchar(50) NOT NULL,
  `sectionName` varchar(15) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `school year`
--

DROP TABLE IF EXISTS `school year`;
CREATE TABLE `school year` (
  `schoolYearID` int(3) NOT NULL,
  `startDate` year(4) NOT NULL,
  `endDate` year(4) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school year`
--

INSERT INTO `school year` (`schoolYearID`, `startDate`, `endDate`, `status`) VALUES
(1, 2012, 2013, 'Inactive'),
(2, 2013, 2014, 'Inactive'),
(3, 2014, 2015, 'Inactive'),
(4, 2015, 2016, 'Inactive'),
(5, 2016, 2017, 'Inactive'),
(6, 2017, 2018, 'Inactive'),
(7, 2018, 2019, 'Inactive'),
(8, 2019, 2020, 'Inactive'),
(9, 2020, 2021, 'Inactive'),
(10, 2021, 2022, 'Inactive'),
(11, 2022, 2023, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `sectionID` int(3) NOT NULL,
  `sectionName` varchar(15) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionID`, `sectionName`, `status`) VALUES
(1, 'Atis', 'Active'),
(2, 'Mansanas', 'Active'),
(3, 'Mangga', 'Active'),
(4, 'Ubas', 'Active'),
(5, 'Papaya', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `senior attendance`
--

DROP TABLE IF EXISTS `senior attendance`;
CREATE TABLE `senior attendance` (
  `shsAttendanceID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `month` varchar(10) NOT NULL,
  `schoolDay` int(3) NOT NULL,
  `presentDay` int(3) NOT NULL,
  `absentDay` int(3) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior class information`
--

DROP TABLE IF EXISTS `senior class information`;
CREATE TABLE `senior class information` (
  `shsClassID` bigint(20) NOT NULL,
  `schoolYearID` int(3) NOT NULL,
  `gradelvlID` int(3) NOT NULL,
  `strandID` int(3) NOT NULL,
  `school` varchar(50) NOT NULL,
  `schoolID` char(6) NOT NULL,
  `classType` char(10) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior class list`
--

DROP TABLE IF EXISTS `senior class list`;
CREATE TABLE `senior class list` (
  `shsClassListID` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior eligibility`
--

DROP TABLE IF EXISTS `senior eligibility`;
CREATE TABLE `senior eligibility` (
  `shsEligibleID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `departmentID` int(3) NOT NULL,
  `strandID` int(3) NOT NULL,
  `highSchoolCompleter` int(1) DEFAULT NULL,
  `highSchoolGenAve` float DEFAULT NULL,
  `juniorHighCompleter` int(1) DEFAULT NULL,
  `juniorHighGenAve` float DEFAULT NULL,
  `schoolName` varchar(50) DEFAULT NULL,
  `schoolAddress` varchar(70) DEFAULT NULL,
  `peptPasser` int(1) DEFAULT NULL,
  `peptRating` float DEFAULT NULL,
  `alsPasser` int(1) DEFAULT NULL,
  `alsRating` float DEFAULT NULL,
  `other` varchar(15) DEFAULT NULL,
  `otherRating` int(3) DEFAULT NULL,
  `dateOfAssessment` date DEFAULT NULL,
  `nameOfTestingCenter` varchar(50) DEFAULT NULL,
  `addOfTestingCenter` varchar(70) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior final gwa`
--

DROP TABLE IF EXISTS `senior final gwa`;
CREATE TABLE `senior final gwa` (
  `shsGwaID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `shsGwa` int(3) DEFAULT NULL,
  `dateOfGraduation` date DEFAULT NULL,
  `receivedAward` char(20) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior grade per quarter`
--

DROP TABLE IF EXISTS `senior grade per quarter`;
CREATE TABLE `senior grade per quarter` (
  `shsSubQuarterGrade` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `shsSubjectID` int(3) NOT NULL,
  `semester` char(3) NOT NULL,
  `1st` int(3) DEFAULT NULL,
  `2nd` int(3) DEFAULT NULL,
  `semFinalGrade` int(3) DEFAULT NULL,
  `actionTaken` char(6) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior observed value`
--

DROP TABLE IF EXISTS `senior observed value`;
CREATE TABLE `senior observed value` (
  `shsValueID` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `coreID` int(3) NOT NULL,
  `semester` char(3) NOT NULL,
  `1st` int(3) DEFAULT NULL,
  `2nd` int(3) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior raw score`
--

DROP TABLE IF EXISTS `senior raw score`;
CREATE TABLE `senior raw score` (
  `shsRawScoreID` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `shsSubjectID` int(3) NOT NULL,
  `semester` char(3) NOT NULL,
  `quarter` char(3) NOT NULL,
  `component` varchar(20) DEFAULT NULL,
  `nameOfTask` varchar(30) DEFAULT NULL,
  `highestScore` int(3) DEFAULT NULL,
  `rawScore` int(3) DEFAULT NULL,
  `percentageScore` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior regular class`
--

DROP TABLE IF EXISTS `senior regular class`;
CREATE TABLE `senior regular class` (
  `shsClassID` bigint(20) NOT NULL,
  `sectionID` int(3) NOT NULL,
  `userID` bigint(20) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior remedial class`
--

DROP TABLE IF EXISTS `senior remedial class`;
CREATE TABLE `senior remedial class` (
  `shsRemClassID` bigint(20) NOT NULL,
  `schoolYearID` int(3) NOT NULL,
  `gradelvlID` int(3) NOT NULL,
  `strandID` int(3) NOT NULL,
  `semester` char(3) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior remedial class record`
--

DROP TABLE IF EXISTS `senior remedial class record`;
CREATE TABLE `senior remedial class record` (
  `shsRemClassListID` bigint(20) NOT NULL,
  `shsRemSubClassID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `semFinal` int(3) DEFAULT NULL,
  `remedialMark` int(3) DEFAULT NULL,
  `recomputedGrades` int(3) DEFAULT NULL,
  `actionTaken` char(6) DEFAULT NULL,
  `teacherName` varchar(40) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior remedial subject class`
--

DROP TABLE IF EXISTS `senior remedial subject class`;
CREATE TABLE `senior remedial subject class` (
  `shsRemSubClassID` bigint(20) NOT NULL,
  `shsRemClassID` bigint(20) NOT NULL,
  `shsSubjectID` int(3) NOT NULL,
  `userID` bigint(20) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior semestral gwa`
--

DROP TABLE IF EXISTS `senior semestral gwa`;
CREATE TABLE `senior semestral gwa` (
  `shsSemestralGwaID` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `shsEligibleID` bigint(20) NOT NULL,
  `semester` char(3) NOT NULL,
  `semGwa` int(3) DEFAULT NULL,
  `actionTaken` char(6) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior subject`
--

DROP TABLE IF EXISTS `senior subject`;
CREATE TABLE `senior subject` (
  `shsSubjectID` int(3) NOT NULL,
  `strandID` int(3) DEFAULT NULL,
  `subjectCategory` varchar(30) NOT NULL,
  `learningArea` varchar(20) DEFAULT NULL,
  `subjectTitle` varchar(50) NOT NULL,
  `numberOfHours` int(3) DEFAULT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior subject class`
--

DROP TABLE IF EXISTS `senior subject class`;
CREATE TABLE `senior subject class` (
  `shsSubjectClassID` bigint(20) NOT NULL,
  `shsClassID` bigint(20) NOT NULL,
  `shsSubjectID` int(3) NOT NULL,
  `userID` bigint(20) DEFAULT NULL,
  `semester` char(3) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `senior transferee information`
--

DROP TABLE IF EXISTS `senior transferee information`;
CREATE TABLE `senior transferee information` (
  `shsClassID` bigint(20) NOT NULL,
  `teacherName` varchar(50) NOT NULL,
  `sectionName` varchar(15) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `strand`
--

DROP TABLE IF EXISTS `strand`;
CREATE TABLE `strand` (
  `strandID` int(3) NOT NULL,
  `trackID` int(3) NOT NULL,
  `strand` varchar(40) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (
  `trackID` int(3) NOT NULL,
  `departmentID` int(3) NOT NULL,
  `track` varchar(40) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` bigint(20) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `nameextension` varchar(3) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `dateofbirth` date NOT NULL,
  `sex` char(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateRegistered` date NOT NULL,
  `secone` varchar(15) DEFAULT NULL,
  `sectwo` varchar(15) DEFAULT NULL,
  `secthree` varchar(15) DEFAULT NULL,
  `userType` varchar(10) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `lastname`, `firstname`, `nameextension`, `middlename`, `dateofbirth`, `sex`, `username`, `password`, `dateRegistered`, `secone`, `sectwo`, `secthree`, `userType`, `status`) VALUES
(112614358579, 'Tanyo', 'Ermi', 'Jr.', NULL, '1999-11-01', 'Male', 'ermitanyo', 'ad6a280417a0f533d8b670c61667e1a0', '2022-10-05', NULL, NULL, NULL, 'Student', 'Active'),
(112615374927, 'Dalisay', 'Apple', NULL, 'Sy', '1978-11-22', 'Female', 'dalisay_sy_apple', '0192023a7bbd73250516f069df18b500', '2022-10-05', NULL, NULL, NULL, 'Admin', 'Active'),
(117482049264, 'Revoltar', 'Kyle', NULL, NULL, '2001-11-21', 'Male', 'revoltarkyle', 'ad6a280417a0f533d8b670c61667e1a0', '2022-10-05', NULL, NULL, NULL, 'Student', 'Active'),
(118452749274, 'Futol', 'Toolay', NULL, NULL, '1985-12-25', 'Male', 'futoltoolay', 'a426dcf72ba25d046591f81a5495eab7', '2022-10-05', NULL, NULL, NULL, 'Teacher', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core values`
--
ALTER TABLE `core values`
  ADD PRIMARY KEY (`coreID`),
  ADD KEY `curriculum_corevalues_conn` (`curriculumID`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`curriculumID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deparmentID`),
  ADD KEY `curriculum_department_conn` (`curriculumID`);

--
-- Indexes for table `grade level`
--
ALTER TABLE `grade level`
  ADD PRIMARY KEY (`gradelvlID`),
  ADD KEY `department_gradelevel_conn` (`departmentID`);

--
-- Indexes for table `junior attendance`
--
ALTER TABLE `junior attendance`
  ADD PRIMARY KEY (`jhsAttendanceID`),
  ADD KEY `jhsEligible_jhsAttendance_conn` (`jhsEligibleID`),
  ADD KEY `jhsClass_jhsAttendance_conn` (`jhsClassID`);

--
-- Indexes for table `junior class information`
--
ALTER TABLE `junior class information`
  ADD PRIMARY KEY (`jhsClassID`),
  ADD KEY `schoolYear_jhsClassInfo_conn` (`schoolYearID`),
  ADD KEY `gradelvl_jhsClassInfo_conn` (`gradelvlID`);

--
-- Indexes for table `junior class list`
--
ALTER TABLE `junior class list`
  ADD PRIMARY KEY (`jhsClassListID`),
  ADD KEY `jhsClassInfo_jhsClassList-conn` (`jhsClassID`),
  ADD KEY `jhsEligible_jhsClassList_conn` (`jhsEligibleID`);

--
-- Indexes for table `junior component grade per quarter`
--
ALTER TABLE `junior component grade per quarter`
  ADD PRIMARY KEY (`jhsSubComQuarterGradeID`),
  ADD KEY `jhsSubQuarterGrade_jhsSubComponentGradeperQuarter_conn` (`jhsSubQuarterGradeID`),
  ADD KEY `jhsSubComponent__jhsSubComponentGradeperQuarter_conn` (`jhsSubjectComponentID`);

--
-- Indexes for table `junior eligibility`
--
ALTER TABLE `junior eligibility`
  ADD PRIMARY KEY (`jhsEligibleID`),
  ADD KEY `user_jhsEligbility_conn` (`userID`),
  ADD KEY `department_jhsEligibilty_conn` (`departmentID`);

--
-- Indexes for table `junior grade per quarter`
--
ALTER TABLE `junior grade per quarter`
  ADD PRIMARY KEY (`jhsSubQuarterGradeID`),
  ADD KEY `jhsClassInfo_jhsGradeperQuarter_conn` (`jhsClassID`),
  ADD KEY `jhsEligible_jhsGradeperQuarter_conn` (`jhsEligibleID`),
  ADD KEY `jhsSubject_jhsGradeperQuarter_conn` (`jhsSubjectID`);

--
-- Indexes for table `junior gwa`
--
ALTER TABLE `junior gwa`
  ADD PRIMARY KEY (`jhsGwaID`),
  ADD KEY `jhsClass_jhsgwa_conn` (`jhsClassID`),
  ADD KEY `jhsEligible_jhsgwa_conn` (`jhsEligibleID`);

--
-- Indexes for table `junior observed value`
--
ALTER TABLE `junior observed value`
  ADD PRIMARY KEY (`jhsValueID`),
  ADD KEY `jhsClassInfo_jhsValue_conn` (`jhsClassID`),
  ADD KEY `jhsEligible__jhsValue_conn` (`jhsEligibleID`),
  ADD KEY `core__jhsValue_conn` (`coreID`);

--
-- Indexes for table `junior raw score`
--
ALTER TABLE `junior raw score`
  ADD PRIMARY KEY (`jhsRawScoreID`),
  ADD KEY `jhsClassInfo_jhsRawScore_conn` (`jhsClassID`),
  ADD KEY `jhsEligibile_jhsRawScore_conn` (`jhsEligibleID`),
  ADD KEY `jhsSubject_jhsRawScore_conn` (`jhsSubjectID`);

--
-- Indexes for table `junior regular class`
--
ALTER TABLE `junior regular class`
  ADD KEY `jhsClassInfo_jhsRegularClass_conn` (`jhsClassID`),
  ADD KEY `section_jhsRegularClass_conn` (`sectionID`),
  ADD KEY `user_jhsRegularClass_conn` (`userID`);

--
-- Indexes for table `junior remedial class information`
--
ALTER TABLE `junior remedial class information`
  ADD PRIMARY KEY (`jhsRemClassID`),
  ADD KEY `schoolYear_jhsRemClassInfo_conn` (`schoolYearID`),
  ADD KEY `gradelvl_jhsRemClassInfo_conn` (`gradelvlID`);

--
-- Indexes for table `junior remedial class record`
--
ALTER TABLE `junior remedial class record`
  ADD PRIMARY KEY (`jhsRemClassListID`),
  ADD KEY `jhsRemSubClass_jhsRemClassRecord_conn` (`jhsRemSubClassID`),
  ADD KEY `jhsEligible_jhsRemClassRecord_conn` (`jhsEligibleID`);

--
-- Indexes for table `junior remedial subject class`
--
ALTER TABLE `junior remedial subject class`
  ADD PRIMARY KEY (`jhsRemSubClassID`),
  ADD KEY `jhsRemClass_jhsRemSubClass_conn` (`jhsRemClassID`),
  ADD KEY `jhsSubject_jhsRemSubClass_conn` (`jhsSubjectID`);

--
-- Indexes for table `junior subject`
--
ALTER TABLE `junior subject`
  ADD PRIMARY KEY (`jhsSubjectID`),
  ADD KEY `department_jhsSubject_conn` (`departmentID`);

--
-- Indexes for table `junior subject class`
--
ALTER TABLE `junior subject class`
  ADD PRIMARY KEY (`jhsSubClassID`),
  ADD KEY `jhsClassInfo_jhsSubClass_conn` (`jhsClassID`),
  ADD KEY `user_jhsSubClass_conn` (`userID`),
  ADD KEY `subject_jhsSubClass_conn` (`jhsSubjectID`);

--
-- Indexes for table `junior subject component`
--
ALTER TABLE `junior subject component`
  ADD PRIMARY KEY (`jhsSubjectComponentID`),
  ADD KEY `jhsSubject_jhsSubComponent_conn` (`jhsSubjectID`);

--
-- Indexes for table `junior transferee information`
--
ALTER TABLE `junior transferee information`
  ADD KEY `jhsClassInfo_jhsTransfereeInfo_conn` (`jhsClassID`);

--
-- Indexes for table `school year`
--
ALTER TABLE `school year`
  ADD PRIMARY KEY (`schoolYearID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionID`);

--
-- Indexes for table `senior attendance`
--
ALTER TABLE `senior attendance`
  ADD PRIMARY KEY (`shsAttendanceID`),
  ADD KEY `shsEligible_shsAttendance_conn` (`shsEligibleID`),
  ADD KEY `shsClassInfo_shsAttendance_conn` (`shsClassID`);

--
-- Indexes for table `senior class information`
--
ALTER TABLE `senior class information`
  ADD PRIMARY KEY (`shsClassID`),
  ADD KEY `schoolYear_shsClassInfo` (`schoolYearID`),
  ADD KEY `gradelvl_shsClassInfo` (`gradelvlID`),
  ADD KEY `strand` (`strandID`);

--
-- Indexes for table `senior class list`
--
ALTER TABLE `senior class list`
  ADD PRIMARY KEY (`shsClassListID`),
  ADD KEY `shsClassInfo_shsClassList_conn` (`shsClassID`),
  ADD KEY `shsEligible_shsClassList_conn` (`shsEligibleID`);

--
-- Indexes for table `senior eligibility`
--
ALTER TABLE `senior eligibility`
  ADD PRIMARY KEY (`shsEligibleID`),
  ADD KEY `user_shsEligible_conn` (`userID`),
  ADD KEY `strand_shsEligible_conn` (`strandID`),
  ADD KEY `department_shsEligible_conn` (`departmentID`);

--
-- Indexes for table `senior final gwa`
--
ALTER TABLE `senior final gwa`
  ADD PRIMARY KEY (`shsGwaID`),
  ADD KEY `shsEligible_shsFinalGwa` (`shsEligibleID`);

--
-- Indexes for table `senior grade per quarter`
--
ALTER TABLE `senior grade per quarter`
  ADD PRIMARY KEY (`shsSubQuarterGrade`),
  ADD KEY `shsClassInfo_shsGradeperQuarter_conn` (`shsClassID`),
  ADD KEY `shsEligible_shsGradeperQuarter_conn` (`shsEligibleID`),
  ADD KEY `shsSubject_shsGradeperQuarter_conn` (`shsSubjectID`);

--
-- Indexes for table `senior observed value`
--
ALTER TABLE `senior observed value`
  ADD PRIMARY KEY (`shsValueID`),
  ADD KEY `shsClassInfo_shsValues_conn` (`shsClassID`),
  ADD KEY `shsEligible_shsValues_conn` (`shsEligibleID`),
  ADD KEY `core_shsValues_conn` (`coreID`);

--
-- Indexes for table `senior raw score`
--
ALTER TABLE `senior raw score`
  ADD PRIMARY KEY (`shsRawScoreID`),
  ADD KEY `shsClassInfo_shsRawScore_conn` (`shsClassID`),
  ADD KEY `shsEligible_shsRawScore_conn` (`shsEligibleID`),
  ADD KEY `shsSubject_shsRawScore_conn` (`shsSubjectID`);

--
-- Indexes for table `senior regular class`
--
ALTER TABLE `senior regular class`
  ADD KEY `shsClassInfo_shsRegularClass_conn` (`shsClassID`),
  ADD KEY `section_shsRegularClass_conn` (`sectionID`),
  ADD KEY `user_shsRegularClass_conn` (`userID`);

--
-- Indexes for table `senior remedial class`
--
ALTER TABLE `senior remedial class`
  ADD PRIMARY KEY (`shsRemClassID`),
  ADD KEY `schoolYear_shsRemClass_conn` (`schoolYearID`),
  ADD KEY `gradelvl_shsRemClass_conn` (`gradelvlID`),
  ADD KEY `strand_shsRemClass_conn` (`strandID`);

--
-- Indexes for table `senior remedial class record`
--
ALTER TABLE `senior remedial class record`
  ADD PRIMARY KEY (`shsRemClassListID`),
  ADD KEY `shsRemSubClass_shsRemClassList_conn` (`shsRemSubClassID`),
  ADD KEY `shsEligible_shsRemClassList_conn` (`shsEligibleID`);

--
-- Indexes for table `senior remedial subject class`
--
ALTER TABLE `senior remedial subject class`
  ADD PRIMARY KEY (`shsRemSubClassID`),
  ADD KEY `shsRemClass_shsRemSubClass_conn` (`shsRemClassID`),
  ADD KEY `shsSubject_shsRemSubClass_conn` (`shsSubjectID`),
  ADD KEY `user_shsRemSubClass_conn` (`userID`);

--
-- Indexes for table `senior semestral gwa`
--
ALTER TABLE `senior semestral gwa`
  ADD PRIMARY KEY (`shsSemestralGwaID`),
  ADD KEY `shsClassInfo_shsSemestralGwa_conn` (`shsClassID`),
  ADD KEY `shseligible_shsSemestralGwa_conn` (`shsEligibleID`);

--
-- Indexes for table `senior subject`
--
ALTER TABLE `senior subject`
  ADD PRIMARY KEY (`shsSubjectID`),
  ADD KEY `strand_shsSubject_conn` (`strandID`);

--
-- Indexes for table `senior subject class`
--
ALTER TABLE `senior subject class`
  ADD PRIMARY KEY (`shsSubjectClassID`),
  ADD KEY `shsClassInfo_shsSubClass_conn` (`shsClassID`),
  ADD KEY `user_shsSubClass_conn` (`userID`),
  ADD KEY `shsSubject_shsSubClass_conn` (`shsSubjectID`);

--
-- Indexes for table `senior transferee information`
--
ALTER TABLE `senior transferee information`
  ADD KEY `shsClassInfo_shsTransferee_conn` (`shsClassID`);

--
-- Indexes for table `strand`
--
ALTER TABLE `strand`
  ADD PRIMARY KEY (`strandID`),
  ADD KEY `track_strand_conn` (`trackID`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`trackID`),
  ADD KEY `department_track_conn` (`departmentID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core values`
--
ALTER TABLE `core values`
  MODIFY `coreID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `curriculumID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deparmentID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grade level`
--
ALTER TABLE `grade level`
  MODIFY `gradelvlID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `junior subject`
--
ALTER TABLE `junior subject`
  MODIFY `jhsSubjectID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `junior subject component`
--
ALTER TABLE `junior subject component`
  MODIFY `jhsSubjectComponentID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school year`
--
ALTER TABLE `school year`
  MODIFY `schoolYearID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `sectionID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `senior subject`
--
ALTER TABLE `senior subject`
  MODIFY `shsSubjectID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strand`
--
ALTER TABLE `strand`
  MODIFY `strandID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `trackID` int(3) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core values`
--
ALTER TABLE `core values`
  ADD CONSTRAINT `curriculum_corevalues_conn` FOREIGN KEY (`curriculumID`) REFERENCES `curriculum` (`curriculumID`) ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `curriculum_department_conn` FOREIGN KEY (`curriculumID`) REFERENCES `curriculum` (`curriculumID`) ON UPDATE CASCADE;

--
-- Constraints for table `grade level`
--
ALTER TABLE `grade level`
  ADD CONSTRAINT `department_gradelevel_conn` FOREIGN KEY (`departmentID`) REFERENCES `department` (`deparmentID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior attendance`
--
ALTER TABLE `junior attendance`
  ADD CONSTRAINT `jhsClass_jhsAttendance_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsEligible_jhsAttendance_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior class information`
--
ALTER TABLE `junior class information`
  ADD CONSTRAINT `gradelvl_jhsClassInfo_conn` FOREIGN KEY (`gradelvlID`) REFERENCES `grade level` (`gradelvlID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schoolYear_jhsClassInfo_conn` FOREIGN KEY (`schoolYearID`) REFERENCES `school year` (`schoolYearID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior class list`
--
ALTER TABLE `junior class list`
  ADD CONSTRAINT `jhsClassInfo_jhsClassList-conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsEligible_jhsClassList_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior component grade per quarter`
--
ALTER TABLE `junior component grade per quarter`
  ADD CONSTRAINT `jhsSubComponent__jhsSubComponentGradeperQuarter_conn` FOREIGN KEY (`jhsSubjectComponentID`) REFERENCES `junior subject component` (`jhsSubjectComponentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsSubQuarterGrade_jhsSubComponentGradeperQuarter_conn` FOREIGN KEY (`jhsSubQuarterGradeID`) REFERENCES `junior grade per quarter` (`jhsSubQuarterGradeID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior eligibility`
--
ALTER TABLE `junior eligibility`
  ADD CONSTRAINT `department_jhsEligibilty_conn` FOREIGN KEY (`departmentID`) REFERENCES `department` (`deparmentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_jhsEligbility_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior grade per quarter`
--
ALTER TABLE `junior grade per quarter`
  ADD CONSTRAINT `jhsClassInfo_jhsGradeperQuarter_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsEligible_jhsGradeperQuarter_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsSubject_jhsGradeperQuarter_conn` FOREIGN KEY (`jhsSubjectID`) REFERENCES `junior subject` (`jhsSubjectID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior gwa`
--
ALTER TABLE `junior gwa`
  ADD CONSTRAINT `jhsClass_jhsgwa_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsEligible_jhsgwa_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior observed value`
--
ALTER TABLE `junior observed value`
  ADD CONSTRAINT `core__jhsValue_conn` FOREIGN KEY (`coreID`) REFERENCES `core values` (`coreID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsClassInfo_jhsValue_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsEligible__jhsValue_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior raw score`
--
ALTER TABLE `junior raw score`
  ADD CONSTRAINT `jhsClassInfo_jhsRawScore_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsEligibile_jhsRawScore_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsSubject_jhsRawScore_conn` FOREIGN KEY (`jhsSubjectID`) REFERENCES `junior subject` (`jhsSubjectID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior regular class`
--
ALTER TABLE `junior regular class`
  ADD CONSTRAINT `jhsClassInfo_jhsRegularClass_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `section_jhsRegularClass_conn` FOREIGN KEY (`sectionID`) REFERENCES `section` (`sectionID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_jhsRegularClass_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior remedial class information`
--
ALTER TABLE `junior remedial class information`
  ADD CONSTRAINT `gradelvl_jhsRemClassInfo_conn` FOREIGN KEY (`gradelvlID`) REFERENCES `grade level` (`gradelvlID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schoolYear_jhsRemClassInfo_conn` FOREIGN KEY (`schoolYearID`) REFERENCES `school year` (`schoolYearID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior remedial class record`
--
ALTER TABLE `junior remedial class record`
  ADD CONSTRAINT `jhsEligible_jhsRemClassRecord_conn` FOREIGN KEY (`jhsEligibleID`) REFERENCES `junior eligibility` (`jhsEligibleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsRemSubClass_jhsRemClassRecord_conn` FOREIGN KEY (`jhsRemSubClassID`) REFERENCES `junior remedial subject class` (`jhsRemSubClassID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior remedial subject class`
--
ALTER TABLE `junior remedial subject class`
  ADD CONSTRAINT `jhsRemClass_jhsRemSubClass_conn` FOREIGN KEY (`jhsRemClassID`) REFERENCES `junior remedial class information` (`jhsRemClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jhsSubject_jhsRemSubClass_conn` FOREIGN KEY (`jhsSubjectID`) REFERENCES `junior subject` (`jhsSubjectID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior subject`
--
ALTER TABLE `junior subject`
  ADD CONSTRAINT `department_jhsSubject_conn` FOREIGN KEY (`departmentID`) REFERENCES `department` (`deparmentID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior subject class`
--
ALTER TABLE `junior subject class`
  ADD CONSTRAINT `jhsClassInfo_jhsSubClass_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_jhsSubClass_conn` FOREIGN KEY (`jhsSubjectID`) REFERENCES `junior subject` (`jhsSubjectID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_jhsSubClass_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior subject component`
--
ALTER TABLE `junior subject component`
  ADD CONSTRAINT `jhsSubject_jhsSubComponent_conn` FOREIGN KEY (`jhsSubjectID`) REFERENCES `junior subject` (`jhsSubjectID`) ON UPDATE CASCADE;

--
-- Constraints for table `junior transferee information`
--
ALTER TABLE `junior transferee information`
  ADD CONSTRAINT `jhsClassInfo_jhsTransfereeInfo_conn` FOREIGN KEY (`jhsClassID`) REFERENCES `junior class information` (`jhsClassID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior attendance`
--
ALTER TABLE `senior attendance`
  ADD CONSTRAINT `shsClassInfo_shsAttendance_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`),
  ADD CONSTRAINT `shsEligible_shsAttendance_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior class information`
--
ALTER TABLE `senior class information`
  ADD CONSTRAINT `gradelvl_shsClassInfo` FOREIGN KEY (`gradelvlID`) REFERENCES `grade level` (`gradelvlID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schoolYear_shsClassInfo` FOREIGN KEY (`schoolYearID`) REFERENCES `school year` (`schoolYearID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strand` FOREIGN KEY (`strandID`) REFERENCES `strand` (`strandID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior class list`
--
ALTER TABLE `senior class list`
  ADD CONSTRAINT `shsClassInfo_shsClassList_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsEligible_shsClassList_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior eligibility`
--
ALTER TABLE `senior eligibility`
  ADD CONSTRAINT `department_shsEligible_conn` FOREIGN KEY (`departmentID`) REFERENCES `department` (`deparmentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strand_shsEligible_conn` FOREIGN KEY (`strandID`) REFERENCES `strand` (`strandID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_shsEligible_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior final gwa`
--
ALTER TABLE `senior final gwa`
  ADD CONSTRAINT `shsEligible_shsFinalGwa` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior grade per quarter`
--
ALTER TABLE `senior grade per quarter`
  ADD CONSTRAINT `shsClassInfo_shsGradeperQuarter_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsEligible_shsGradeperQuarter_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsSubject_shsGradeperQuarter_conn` FOREIGN KEY (`shsSubjectID`) REFERENCES `senior subject` (`shsSubjectID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior observed value`
--
ALTER TABLE `senior observed value`
  ADD CONSTRAINT `core_shsValues_conn` FOREIGN KEY (`coreID`) REFERENCES `core values` (`coreID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsClassInfo_shsValues_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsEligible_shsValues_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior raw score`
--
ALTER TABLE `senior raw score`
  ADD CONSTRAINT `shsClassInfo_shsRawScore_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsEligible_shsRawScore_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsSubject_shsRawScore_conn` FOREIGN KEY (`shsSubjectID`) REFERENCES `senior subject` (`shsSubjectID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior regular class`
--
ALTER TABLE `senior regular class`
  ADD CONSTRAINT `section_shsRegularClass_conn` FOREIGN KEY (`sectionID`) REFERENCES `section` (`sectionID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsClassInfo_shsRegularClass_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_shsRegularClass_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior remedial class`
--
ALTER TABLE `senior remedial class`
  ADD CONSTRAINT `gradelvl_shsRemClass_conn` FOREIGN KEY (`gradelvlID`) REFERENCES `grade level` (`gradelvlID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schoolYear_shsRemClass_conn` FOREIGN KEY (`schoolYearID`) REFERENCES `school year` (`schoolYearID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strand_shsRemClass_conn` FOREIGN KEY (`strandID`) REFERENCES `strand` (`strandID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior remedial class record`
--
ALTER TABLE `senior remedial class record`
  ADD CONSTRAINT `shsEligible_shsRemClassList_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsRemSubClass_shsRemClassList_conn` FOREIGN KEY (`shsRemSubClassID`) REFERENCES `senior remedial subject class` (`shsRemSubClassID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior remedial subject class`
--
ALTER TABLE `senior remedial subject class`
  ADD CONSTRAINT `shsRemClass_shsRemSubClass_conn` FOREIGN KEY (`shsRemClassID`) REFERENCES `senior remedial subject class` (`shsRemSubClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsSubject_shsRemSubClass_conn` FOREIGN KEY (`shsSubjectID`) REFERENCES `senior subject` (`shsSubjectID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_shsRemSubClass_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior semestral gwa`
--
ALTER TABLE `senior semestral gwa`
  ADD CONSTRAINT `shsClassInfo_shsSemestralGwa_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shseligible_shsSemestralGwa_conn` FOREIGN KEY (`shsEligibleID`) REFERENCES `senior eligibility` (`shsEligibleID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior subject`
--
ALTER TABLE `senior subject`
  ADD CONSTRAINT `strand_shsSubject_conn` FOREIGN KEY (`strandID`) REFERENCES `strand` (`strandID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior subject class`
--
ALTER TABLE `senior subject class`
  ADD CONSTRAINT `shsClassInfo_shsSubClass_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shsSubject_shsSubClass_conn` FOREIGN KEY (`shsSubjectID`) REFERENCES `senior subject` (`shsSubjectID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_shsSubClass_conn` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `senior transferee information`
--
ALTER TABLE `senior transferee information`
  ADD CONSTRAINT `shsClassInfo_shsTransferee_conn` FOREIGN KEY (`shsClassID`) REFERENCES `senior class information` (`shsClassID`) ON UPDATE CASCADE;

--
-- Constraints for table `strand`
--
ALTER TABLE `strand`
  ADD CONSTRAINT `track_strand_conn` FOREIGN KEY (`trackID`) REFERENCES `track` (`trackID`) ON UPDATE CASCADE;

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `department_track_conn` FOREIGN KEY (`departmentID`) REFERENCES `department` (`deparmentID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

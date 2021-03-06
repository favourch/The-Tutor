-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2016 at 11:05 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thetutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
CREATE TABLE IF NOT EXISTS `audit` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `student_latitude` varchar(255) DEFAULT NULL,
  `student_longitude` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `board` text,
  `class` varchar(255) DEFAULT NULL,
  `subject` text,
  `address` text,
  `area` text,
  `mobile_number` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `qualifications` text,
  `experience` text,
  `otp` int(11) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`),
  FULLTEXT KEY `skill` (`skill`,`stream`,`board`,`class`,`subject`),
  FULLTEXT KEY `skill_2` (`skill`,`stream`,`class`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 13, 2012 at 04:04 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reminder`
--

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(35) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `title`, `description`, `date`, `flag`) VALUES
(13, 'Meeting', 'This is the meeting i am going to have at office.', '2012-04-16', 1),
(16, 'Party', 'Its a birth day party ', '2012-04-11', 0),
(15, 'BirthDay', 'its karl''s birthday party', '2012-04-13', 1),
(17, 'Lecture', 'there is a introductory lecture tomorrow.', '2012-04-13', 1),
(18, 'Another', 'Another description ', '2012-04-12', 0),
(19, 'Coming Event', 'Its a coming event.', '2012-04-18', 1),
(23, 'Doctor Appointment', 'Tomorrow i have to go for ear checkup.', '2012-04-14', 1),
(22, 'Reminder Title', 'This is the description.', '2012-04-08', 0),
(24, 'Send Email', 'I have to send email to karl about work.', '2012-04-13', 1);

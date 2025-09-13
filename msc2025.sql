-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 13, 2025 at 10:34 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msc2025`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `indexno` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gpa` double DEFAULT NULL,
  PRIMARY KEY (`indexno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`indexno`, `name`, `dob`, `gpa`) VALUES
('S001', 'Alice Johnson', '2001-05-12', 3.5),
('S002', 'Bob Smith', '2000-08-22', 3.8),
('S003', 'Charlie Brown', '2002-01-15', 3.2),
('S004', 'Diana Ross', '2001-11-30', 3.9),
('S005', 'Ethan Hunt', '1999-07-08', 2.9),
('S006', 'Fiona Apple', '2000-04-21', 3.7),
('S007', 'George Lucas', '2001-03-05', 3.4),
('S008', 'Hannah Baker', '2002-09-10', 3.1),
('S009', 'Ian Curtis', '2000-12-18', 3.6),
('S010', 'Jessica Jones', '2001-06-25', 3),
('S011', 'Kevin Spacey', '2002-02-11', 2.8),
('S012', 'Laura Palmer', '2000-10-04', 3.3),
('S013', 'Michael Scott', '1999-09-14', 3.7),
('S014', 'Nina Simone', '2001-01-20', 3.5),
('S015', 'Oscar Wilde', '2000-03-29', 3.9),
('S016', 'Pam Beesly', '2002-05-17', 3.2),
('S017', 'Quincy Jones', '2001-07-03', 3.8),
('S018', 'Rachel Green', '1999-11-23', 3),
('S019', 'Steve Rogers', '2000-06-15', 3.4),
('S020', 'Tina Turner', '2002-08-09', 3.6);

-- --------------------------------------------------------

--
-- Table structure for table `student_entity`
--

DROP TABLE IF EXISTS `student_entity`;
CREATE TABLE IF NOT EXISTS `student_entity` (
  `indexno` varchar(255) NOT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `gpa` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_entity`
--

INSERT INTO `student_entity` (`indexno`, `dob`, `gpa`, `name`) VALUES
('S001', '2001-05-12 00:00:00.000000', 3.5, 'Alice Johnson'),
('S002', '2000-08-22 00:00:00.000000', 3.8, 'Bob Smith'),
('S003', '2002-01-15 00:00:00.000000', 3.2, 'Charlie Brown'),
('S004', '2001-11-30 00:00:00.000000', 3.9, 'Diana Ross'),
('S005', '1999-07-08 00:00:00.000000', 2, 'Ethan Hunt'),
('S006', '2000-04-21 00:00:00.000000', 3.7, 'Fiona Apple'),
('S007', '2001-03-05 00:00:00.000000', 3.4, 'George Lucas'),
('S008', '2002-09-10 00:00:00.000000', 3.1, 'Hannah Baker'),
('S009', '2000-12-18 00:00:00.000000', 3.6, 'Ian Curtis'),
('S010', '2001-06-25 00:00:00.000000', 3, 'Jessica Jones'),
('S011', '2002-02-11 00:00:00.000000', 2.8, 'Kevin Spacey'),
('S012', '2000-10-04 00:00:00.000000', 3.3, 'Laura Palmer'),
('S013', '1999-09-14 00:00:00.000000', 3.7, 'Michael Scott'),
('S014', '2001-01-20 00:00:00.000000', 3.5, 'Nina Simone'),
('S015', '2000-03-29 00:00:00.000000', 3.9, 'Oscar Wilde'),
('S016', '2002-05-17 00:00:00.000000', 3.2, 'Pam Beesly'),
('S017', '2001-07-03 00:00:00.000000', 3.8, 'Quincy Jones'),
('S018', '1999-11-23 00:00:00.000000', 3, 'Rachel Green'),
('S019', '2000-06-15 00:00:00.000000', 3.4, 'Steve Rogers'),
('S020', '2002-08-09 00:00:00.000000', 3.6, 'Tina Turner'),
('S022', '1996-07-08 00:30:00.000000', 2.4, 'Ethan dfg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

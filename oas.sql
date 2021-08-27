-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 09:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oas`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `api` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `api`, `uname`, `pass`) VALUES
(3, '90976968', 'Chioma', 'chiooma');

-- --------------------------------------------------------

--
-- Table structure for table `article_tbl`
--

CREATE TABLE `article_tbl` (
  `a_id` int(10) UNSIGNED NOT NULL,
  `loca_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` char(10) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE `facuties_tbl` (
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facuties_tbl`
--

INSERT INTO `facuties_tbl` (`faculties_id`, `faculties_name`, `note`) VALUES
(2, 'Science and Technology', 'Part of science'),
(3, 'Law', 'part of Law');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `std_id` varchar(100) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `faculty_id` varchar(100) NOT NULL,
  `student` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `file_title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `file_name`, `std_id`, `teacher_id`, `faculty_id`, `student`, `teacher`, `faculty`, `file_title`) VALUES
(1, '7389-translation-authors.rtf', '4', '3', 'Science and Technology', 'Sok Cheatha', 'Sann Vannthoeun', '2', 'TRanslation Author'),
(2, '63428-referencing-system.docx', '4', '4', 'Science and Technology', 'Sok Cheatha', 'Tang Hay', '2', 'Reference material');

-- --------------------------------------------------------

--
-- Table structure for table `location_tb`
--

CREATE TABLE `location_tb` (
  `loca_id` int(10) UNSIGNED NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `note` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_tb`
--

INSERT INTO `location_tb` (`loca_id`, `l_name`, `description`, `note`) VALUES
(1, 'left menu', 'link to other page', 'menu');

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE `stu_score_tbl` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `stu_id` int(10) NOT NULL,
  `faculties_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_score_tbl`
--

INSERT INTO `stu_score_tbl` (`ss_id`, `stu_id`, `faculties_id`, `sub_id`, `miderm`, `final`, `note`) VALUES
(1, 1, 2, 1, 39, 39, 'good'),
(2, 1, 2, 2, 40, 40, 'top score'),
(6, 1, 2, 3, 30, 34, 'good'),
(7, 1, 2, 4, 40, 39, 'top'),
(8, 1, 2, 5, 57, 40, 'good'),
(9, 1, 2, 6, 54, 39, 'good'),
(10, 2, 2, 1, 48, 40, 'good'),
(11, 2, 2, 2, 60, 40, 'good'),
(12, 2, 2, 3, 57, 40, 'good'),
(13, 2, 2, 4, 57, 40, 'good'),
(15, 2, 2, 5, 48, 40, 'good'),
(16, 2, 2, 6, 59, 39, 'good'),
(17, 3, 2, 1, 53, 34, 'good'),
(18, 3, 2, 2, 40, 40, 'good'),
(19, 3, 2, 3, 48, 40, 'good'),
(20, 3, 2, 4, 40, 34, 'good'),
(21, 3, 2, 5, 49, 34, 'good'),
(22, 3, 2, 6, 54, 34, 'good'),
(23, 4, 2, 1, 59, 40, 'good'),
(24, 4, 2, 2, 53, 40, 'good'),
(25, 4, 2, 3, 59, 40, 'good'),
(26, 4, 2, 4, 58, 40, 'good'),
(27, 4, 2, 5, 58, 40, 'good'),
(28, 4, 2, 6, 59, 40, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `note` varchar(100) NOT NULL,
  `reg_no` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`stu_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `phone`, `email`, `note`, `reg_no`, `username`, `password`) VALUES
(1, 'Mom', 'Vannak', 'Male', '1991-03-01', 'Takeo Province', 'Phnom Penh', '088 9 666 120', 'vannakkmum@gmail.com', 'Student', '356356', NULL, NULL),
(2, 'Chon', 'Phearak', 'Male', '1990-05-04', 'Takeo Province', 'Phnom Penh', '015 66 77 33', 'phearakchon@yahoo.com', 'Student', '89384389', 'CHON', 'PHEARAK'),
(3, 'Soa', 'Muny', 'Male', '1988-05-05', 'Takeo Province   ', '   Phnom Penh', '097 69 90 123', 'munysoa@gmail.com   ', 'Student', NULL, NULL, NULL),
(4, 'Sok', 'Cheatha', 'Female', '1989-06-06', 'Kompot', 'Phnom Penh', '099 77 66 55', 'cheatasok@gmail.com', 'Student', '509889', 'coco', 'coco'),
(6, 'inyang', 'charles', 'Male', '1985-01-17', 'Lagos', '46 ewet housing estate uyo akwa ibom nigeria', '07035700945', 'charex4real@gmail.com', 'Greate Student', '50043', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE `sub_tbl` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `faculties_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_tbl`
--

INSERT INTO `sub_tbl` (`sub_id`, `faculties_id`, `teacher_id`, `semester`, `sub_name`, `note`) VALUES
(1, 2, 1, '1', 'Web Programming', 'HTML and CSS'),
(2, 2, 2, '1', 'OOP and C++', 'Part of C Language'),
(3, 2, 3, '2', 'English for Computing', 'part 2'),
(4, 2, 4, '2', 'Network', 'part2'),
(5, 2, 5, '2', 'VB.Net', 'part 2'),
(6, 2, 6, '2', 'Database', 'part 2');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `degree`, `salary`, `married`, `phone`, `email`, `note`) VALUES
(1, 'Hang', 'Sovann', 'Male', '1985-03-05', 'Kandal Province', 'Phnom Penh', 'Master', 1500, 'No', '015 871 787', 'sovannhang@gmail.com', 'Teacher and Staff'),
(2, 'Pheng', 'Tola', 'Male', '1986-03-08', 'Kompong Cham Province', 'Phnom Penh', 'Bachelor', 1500, 'Yes', '016 572 393', 'tolapheng@gmail.com', 'Teacher and Staff'),
(3, 'Sann', 'Vannthoeun', 'Male', '1990-07-03', 'Kandal Province', 'kankal', 'Bachelor', 1000, 'Yes', '087 666 55 ', 'vannthoeunsann@gmail.com', 'English'),
(4, 'Tang', 'Hay', 'Male', '0000-00-00', 'Kroches', 'Phnom Penh', 'Bachelor', 1000, 'Yes', '099 77 66 33', 'haytang@gmail.com', 'network'),
(5, 'Chi', 'Kim  Y', 'Male', '0000-00-00', 'Phnom Penh', 'Phnom Penh', 'Bachelor', 1500, 'Yes', '097 66 55 423', 'kimychi@gmail.com', 'VB'),
(6, 'Sann', 'Sotherath', 'Male', '1985-02-01', 'Kandal Province', 'Phnom Penh', 'Bachelor', 1300, 'Yes', '012 33 44 55', 'sotherathsann@gmail.com', 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(10) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `password`, `type`, `note`) VALUES
(1, 'admin', 'admin', 'creator', 'creator'),
(2, 'everyone', 'viewonly', 'visitor', 'visitor'),
(4, 'vannak', 'vannak', 'creator', 'assignment\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tbl`
--
ALTER TABLE `article_tbl`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  ADD PRIMARY KEY (`faculties_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `location_tb`
--
ALTER TABLE `location_tb`
  ADD PRIMARY KEY (`loca_id`);

--
-- Indexes for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article_tbl`
--
ALTER TABLE `article_tbl`
  MODIFY `a_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  MODIFY `faculties_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_tb`
--
ALTER TABLE `location_tb`
  MODIFY `loca_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

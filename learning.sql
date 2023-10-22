-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 05, 2023 at 08:17 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `learning`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `category`
-- 

INSERT INTO `category` (`id`, `name`) VALUES 
(1, 'Mathematics'),
(2, 'English Language'),
(3, 'Basic Science');

-- --------------------------------------------------------

-- 
-- Table structure for table `choice`
-- 

CREATE TABLE `choice` (
  `id` int(11) NOT NULL auto_increment,
  `questionid` int(11) NOT NULL,
  `choice` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `choice`
-- 

INSERT INTO `choice` (`id`, `questionid`, `choice`, `answer`, `file`) VALUES 
(1, 1, 'A', 'yes', ''),
(2, 1, 'B', 'no', ''),
(3, 1, 'C', 'no', ''),
(4, 1, 'D', 'no', ''),
(5, 2, '8', 'yes', 'e2.jpg'),
(6, 2, '3', 'no', 'pic1.jpg'),
(7, 2, '5', 'no', 'e5.jpg'),
(8, 2, '6', 'no', 'pic3.jpg'),
(9, 3, '6', 'yes', 'pic1.jpg'),
(10, 3, '3', 'no', 'pic.jpg'),
(11, 3, '4', 'no', 'pic2.jpg'),
(12, 3, '1', 'no', 'pic3.jpg'),
(13, 4, '6', 'yes', 'pic1.jpg'),
(14, 4, '3', 'no', 'pic.jpg'),
(15, 4, '4', 'no', 'pic2.jpg'),
(16, 4, '1', 'no', 'pic3.jpg'),
(17, 5, '3', 'yes', 'GGGGG.jpg'),
(18, 5, '2', 'no', 'DEBORAH.jpg'),
(19, 5, '4', 'no', 'FCE-logo.jpg'),
(20, 5, '6', 'no', 'Babatee.jpg'),
(21, 6, '1', 'yes', 'DEBORAH.jpg'),
(22, 6, '3', 'no', 'GGGGG.jpg'),
(23, 6, '7', 'no', 'FCE-logo.jpg'),
(24, 6, '5', 'no', 'Babatee.jpg');

-- --------------------------------------------------------

-- 
-- Table structure for table `lesson`
-- 

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `lesson`
-- 

INSERT INTO `lesson` (`id`, `name`, `content`, `category`, `time`) VALUES 
(3, 'Hygienic ', '<p>Hygienic&nbsp;</p>\r\n\r\n<p>Always wash your hand befor eating</p>\r\n\r\n<p>&nbsp;</p>\r\n', '3', 4),
(7, 'Division', '<p>Division</p>\r\n\r\n<p>10 / 5&nbsp; =&nbsp; 2</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 3),
(9, 'Family', '<p>Nuclear Family</p>\r\n\r\n<p>Extended Family</p>\r\n', '1', 4),
(10, 'NIGERIA ANTHEM', '<p>ARISE O COMPARIOT, NIGERIA ....</p>\r\n', '2', 5),
(11, 'SOIL', '<p>CLAY SOIL</p>\r\n\r\n<p>LOAMY SOIL</p>\r\n\r\n<p>SANDY SOIL</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 5),
(12, 'MULTIPLICATION', '<p>3 X 9&nbsp;</p>\r\n\r\n<p>2 X 4</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `lesson_pdf`
-- 

CREATE TABLE `lesson_pdf` (
  `id` int(11) NOT NULL auto_increment,
  `lesson_id` int(11) NOT NULL,
  `file` varchar(300) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `lesson_pdf`
-- 

INSERT INTO `lesson_pdf` (`id`, `lesson_id`, `file`, `image`) VALUES 
(1, 1, 'ALPHABETS_FCE-logo.jpg', ''),
(2, 2, 'MATHS_Babatee.jpg', ''),
(3, 3, 'Hygienic _001.JPG', ''),
(4, 4, 'Antonyms _001.JPG', ''),
(5, 5, 'Lesson_FCE-logo.jpg', ''),
(6, 6, 'Addition_pic2.jpg', ''),
(7, 7, 'Division_pic2.jpg', ''),
(8, 8, 'Animal_SEMINAR 3_094502.pptx', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `lesson_video`
-- 

CREATE TABLE `lesson_video` (
  `id` int(11) NOT NULL auto_increment,
  `lesson_id` int(11) NOT NULL,
  `file` varchar(300) NOT NULL,
  `image` text NOT NULL,
  `source` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `lesson_video`
-- 

INSERT INTO `lesson_video` (`id`, `lesson_id`, `file`, `image`, `source`) VALUES 
(1, 5, 'reddataval.mp4', 'default.png', ''),
(2, 6, '', 'default.png', ''),
(3, 7, 'Division_SplashScreenAPI.mp4', 'default.png', ''),
(4, 8, 'Animal_SplashScreenAPI.mp4', 'default.png', ''),
(5, 9, 'Family_SplashScreenAPI.mp4', 'default.png', ''),
(6, 10, 'NIGERIA ANTHEM_SplashScreenAPI.mp4', 'default.png', ''),
(7, 11, 'SOIL_SplashScreenAPI.mp4', 'default.png', ''),
(8, 12, 'MULTIPLICATION_SplashScreenAPI.mp4', 'default.png', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `log`
-- 

CREATE TABLE `log` (
  `logID` int(3) NOT NULL auto_increment,
  `txtAccount` varchar(175) NOT NULL,
  `txtDate` text NOT NULL,
  PRIMARY KEY  (`logID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

-- 
-- Dumping data for table `log`
-- 

INSERT INTO `log` (`logID`, `txtAccount`, `txtDate`) VALUES 
(1, 'admin logged in.', '12-21-2022 08:29:57 AM'),
(2, 'admin logged out.', '12-21-2022 08:31:53 AM'),
(3, 'admin logged in.', '12-22-2022 12:36:14 AM'),
(4, 'admin logged out.', '12-22-2022 12:49:15 AM'),
(5, 'admin logged in.', '12-22-2022 12:52:45 AM'),
(6, 'admin logged in.', '12-22-2022 12:55:05 AM'),
(7, 'admin logged out.', '12-22-2022 12:55:52 AM'),
(8, '12345 logged in.', '12-22-2022 12:55:59 AM'),
(9, '12345 logged out.', '12-22-2022 12:57:11 AM'),
(10, 'admin logged in.', '12-22-2022 12:57:18 AM'),
(11, 'admin logged out.', '12-22-2022 01:01:06 AM'),
(12, '12345 logged in.', '12-22-2022 01:01:13 AM'),
(13, '12345 logged out.', '12-22-2022 01:01:47 AM'),
(14, 'admin logged in.', '12-22-2022 01:01:55 AM'),
(15, 'admin logged out.', '12-22-2022 01:04:38 AM'),
(16, '12345 logged in.', '12-22-2022 01:04:45 AM'),
(17, '12345 logged out.', '12-22-2022 01:04:57 AM'),
(18, 'admin logged in.', '12-22-2022 01:05:09 AM'),
(19, 'admin logged in.', '12-23-2022 05:59:54 AM'),
(20, '12345 logged in.', '12-23-2022 06:04:37 AM'),
(21, 'admin logged in.', '12-23-2022 06:19:25 AM'),
(22, '12345 logged in.', '12-23-2022 06:20:52 AM'),
(23, '12345 logged in.', '12-28-2022 05:12:41 AM'),
(24, '12345 logged out.', '12-28-2022 05:40:54 AM'),
(25, 'admin logged in.', '12-28-2022 05:41:16 AM'),
(26, 'admin logged out.', '12-28-2022 05:43:30 AM'),
(27, '12345 logged in.', '12-28-2022 05:43:39 AM'),
(28, '12345 logged out.', '12-28-2022 05:45:48 AM'),
(29, 'admin logged in.', '12-28-2022 05:46:01 AM'),
(30, 'admin logged out.', '12-28-2022 06:08:00 AM'),
(31, '12345 logged in.', '12-28-2022 06:08:12 AM'),
(32, '12345 logged out.', '12-28-2022 06:11:31 AM'),
(33, 'admin logged in.', '12-28-2022 06:11:40 AM'),
(34, 'admin logged out.', '12-28-2022 06:27:58 AM'),
(35, '12345 logged in.', '12-28-2022 06:28:04 AM'),
(36, '12345 logged in.', '12-28-2022 06:30:02 AM'),
(37, '12345 logged in.', '12-28-2022 06:53:37 AM'),
(38, '12345 logged in.', '12-28-2022 06:54:58 AM'),
(39, '12345 logged in.', '12-28-2022 07:01:48 AM'),
(40, '12345 logged out.', '12-28-2022 07:09:39 AM'),
(41, 'admin logged in.', '12-28-2022 07:09:47 AM'),
(42, 'admin logged out.', '12-28-2022 07:11:51 AM'),
(43, '12345 logged in.', '12-28-2022 07:11:58 AM'),
(44, '12345 logged out.', '12-28-2022 07:14:12 AM'),
(45, 'admin logged in.', '12-28-2022 07:15:35 AM'),
(46, 'admin logged out.', '12-28-2022 07:22:02 AM'),
(47, '12345 logged in.', '12-28-2022 07:22:17 AM'),
(48, '12345 logged out.', '12-28-2022 07:24:56 AM'),
(49, 'admin logged in.', '12-28-2022 07:25:03 AM'),
(50, 'admin logged out.', '12-28-2022 07:36:27 AM'),
(51, '12345 logged in.', '12-28-2022 07:36:42 AM'),
(52, '12345 logged out.', '12-28-2022 07:50:52 AM'),
(53, '12345 logged in.', '12-28-2022 07:58:57 AM'),
(54, '12345 logged out.', '12-28-2022 08:01:44 AM'),
(55, 'admin logged in.', '12-28-2022 08:01:53 AM'),
(56, 'admin logged out.', '12-28-2022 08:03:58 AM'),
(57, '12345 logged in.', '12-28-2022 08:04:12 AM'),
(58, '12345 logged in.', '12-30-2022 05:38:24 AM'),
(59, '12345 logged out.', '12-30-2022 05:38:40 AM'),
(60, 'admin logged in.', '12-30-2022 05:38:47 AM'),
(61, 'admin logged out.', '12-30-2022 05:40:06 AM'),
(62, '12345 logged in.', '12-30-2022 05:40:13 AM'),
(63, '12345 logged out.', '12-30-2022 06:06:52 AM'),
(64, '12345 logged in.', '12-30-2022 06:07:01 AM'),
(65, '12345 logged out.', '12-30-2022 06:12:32 AM'),
(66, 'admin logged in.', '12-30-2022 06:12:41 AM'),
(67, 'admin logged out.', '12-30-2022 07:03:10 AM'),
(68, '12345 logged in.', '12-30-2022 07:03:19 AM'),
(69, '12345 logged out.', '12-30-2022 07:53:42 AM'),
(70, '12345 logged in.', '12-30-2022 12:23:37 PM'),
(71, '12345 logged in.', '12-30-2022 06:23:34 PM'),
(72, '12345 logged out.', '12-30-2022 06:36:43 PM'),
(73, 'admin logged in.', '12-30-2022 06:36:54 PM'),
(74, 'admin logged out.', '12-30-2022 06:39:54 PM'),
(75, '12345 logged in.', '12-30-2022 06:40:02 PM'),
(76, '12345 logged out.', '12-30-2022 07:06:17 PM'),
(77, 'admin logged in.', '12-30-2022 07:09:53 PM'),
(78, '12345 logged in.', '12-30-2022 07:11:36 PM'),
(79, 'admin logged in.', '12-31-2022 02:28:00 AM'),
(80, 'admin logged out.', '12-31-2022 02:31:34 AM'),
(81, '12345 logged in.', '12-31-2022 02:31:41 AM'),
(82, '12345 logged out.', '12-31-2022 02:34:51 AM'),
(83, 'admin logged in.', '12-31-2022 02:35:15 AM'),
(84, '12345 logged in.', '01-04-2023 05:49:48 AM'),
(85, '12345 logged out.', '01-04-2023 05:59:54 AM'),
(86, 'admin logged in.', '01-04-2023 06:00:04 AM'),
(87, '12345 logged in.', '01-04-2023 06:16:12 AM'),
(88, '12345 logged out.', '01-04-2023 06:42:49 AM'),
(89, 'admin logged in.', '01-04-2023 06:43:10 AM'),
(90, 'admin logged out.', '01-04-2023 06:44:54 AM'),
(91, '12345 logged in.', '01-04-2023 06:45:02 AM'),
(92, '12345 logged out.', '01-04-2023 06:50:23 AM'),
(93, ' logged out.', '01-04-2023 06:50:28 AM'),
(94, '12345 logged in.', '01-04-2023 06:51:35 AM'),
(95, '12345 logged in.', '01-05-2023 07:39:15 AM'),
(96, '12345 logged out.', '01-05-2023 07:42:39 AM'),
(97, 'admin logged in.', '01-05-2023 07:42:46 AM'),
(98, 'admin logged out.', '01-05-2023 07:55:01 AM'),
(99, '12345 logged in.', '01-05-2023 07:55:08 AM'),
(100, '12345 logged out.', '01-05-2023 07:57:44 AM'),
(101, 'admin logged in.', '01-05-2023 08:01:14 AM'),
(102, 'admin logged out.', '01-05-2023 08:09:18 AM'),
(103, '12345 logged in.', '01-05-2023 08:09:56 AM');

-- --------------------------------------------------------

-- 
-- Table structure for table `quiz`
-- 

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `lesson` varchar(100) NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `quiz`
-- 

INSERT INTO `quiz` (`id`, `name`, `lesson`, `file`) VALUES 
(1, '<p>What is this?</p>\r\n', '1', 'a.png'),
(2, '<p>6 + 2</p>\r\n', '6', ''),
(3, '<p>3 + 3</p>\r\n', '6', 'b.png'),
(4, '<p>3 + 3</p>\r\n', '6', 'b.png'),
(5, '<p>15 / 5</p>\r\n', '7', 'Babatee.jpg'),
(6, '<p>3 / 3</p>\r\n', '7', 'Babatee.jpg');

-- --------------------------------------------------------

-- 
-- Table structure for table `result`
-- 

CREATE TABLE `result` (
  `id` int(11) NOT NULL auto_increment,
  `stud_id` varchar(50) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `try` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `result`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `status`
-- 

CREATE TABLE `status` (
  `id` int(11) NOT NULL auto_increment,
  `stud_id` varchar(50) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `has_quiz` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `status`
-- 

INSERT INTO `status` (`id`, `stud_id`, `lesson_id`, `has_quiz`) VALUES 
(1, '12345', 1, 'yes'),
(2, '12345', 2, 'no'),
(3, '12345', 3, 'no'),
(4, '12345', 4, 'no'),
(5, '12345', 5, 'no'),
(6, '', 5, 'no'),
(7, '12345', 6, 'no'),
(8, '12345', 7, 'yes'),
(9, '12345', 8, 'no'),
(10, '', 8, 'no'),
(11, '12345', 9, 'no'),
(12, '12345', 10, 'no'),
(13, '12345', 11, 'no'),
(14, '', 3, 'no'),
(15, '', 10, 'no'),
(16, '', 7, 'no'),
(17, '', 9, 'no'),
(18, '', 11, 'no'),
(19, '12345', 12, 'no');

-- --------------------------------------------------------

-- 
-- Table structure for table `student`
-- 

CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `studid` varchar(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `student`
-- 

INSERT INTO `student` (`id`, `studid`, `fname`, `lname`) VALUES 
(1, '1', 'Bulus', 'Bulus'),
(2, '2', 'Samson', 'Joseph');

-- --------------------------------------------------------

-- 
-- Table structure for table `userdata`
-- 

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `userdata`
-- 

INSERT INTO `userdata` (`id`, `username`, `password`, `fname`, `lname`, `level`) VALUES 
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'admin', 'admin'),
(2, '12345', '8cb2237d0679ca88db6464eac60da96345513964', 'a', 'a', 'student');

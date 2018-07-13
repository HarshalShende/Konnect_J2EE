-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 08:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idea`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `name`, `email`, `contact`, `uname`, `password`) VALUES
('0', 'millanium information Technologies', 'mit@gmail.com', '01123456789', 'mit', '123'),
('1', 'wwwww', 'q@gmail.com', '12312', 'w', '123');

-- --------------------------------------------------------

--
-- Table structure for table `comp_event`
--

CREATE TABLE `comp_event` (
  `eid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `cnum` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `startdate` varchar(100) NOT NULL,
  `starttime` varchar(100) NOT NULL,
  `enddate` varchar(100) NOT NULL,
  `endtime` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `calstart` varchar(100) NOT NULL,
  `calend` varchar(100) NOT NULL,
  `savepath` varchar(1000) DEFAULT NULL,
  `uid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_event`
--

INSERT INTO `comp_event` (`eid`, `title`, `type`, `cnum`, `location`, `address`, `startdate`, `starttime`, `enddate`, `endtime`, `description`, `calstart`, `calend`, `savepath`, `uid`) VALUES
('1', 'test', 'test', '123', 'testi', 'boobs', '2018-07-13', '16:51', '2018-07-14', '16:51', '                                                                test\r\n                            \r\n                            ', '2018-07-13T16:51:00', '2018-07-14T16:51:00', 'C1akpid.jpg', '0'),
('2', 'test 2', 'test 2', '12', 'test 2', 'test 2', '2018-07-15', '18:02', '2018-07-16', '06:02', 'test 2', '2018-07-15T18:02:00', '2018-07-16T06:02:00', 'C2akpid.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `pid` varchar(50) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `description` text,
  `user_id` varchar(50) NOT NULL,
  `sponsored` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`pid`, `name`, `type`, `description`, `user_id`, `sponsored`) VALUES
('0', 'test', 'misc', 'test', '0', '1'),
('1', 'sex', 'misc', 'I love sex', '2', '0'),
('2', 'boka', 'technical', 'asdfghj', '3', '1'),
('3', 'ide', 'technical', 'sa', '3', '1'),
('4', 'asaddasasddsadsaasddsa', 'misc', 'assdds', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `projects_has_company`
--

CREATE TABLE `projects_has_company` (
  `projects_pid` varchar(50) NOT NULL,
  `company_cid` varchar(50) NOT NULL,
  `money` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_has_company`
--

INSERT INTO `projects_has_company` (`projects_pid`, `company_cid`, `money`, `description`) VALUES
('0', '0', '100000', 'test'),
('2', '0', '1', 'ela'),
('3', '0', '12', 'www'),
('3', '1', '232', 'dsdsa');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cnum` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `name`, `email`, `cnum`, `uname`, `pass`) VALUES
('0', 'colombo university', 'cmb.ac@gmail.com', '123123123', 'colu', '123'),
('1', 'jayawaradenapura university', 'jpura@gmail.com', '123456', 'jpura', '123'),
('2', 'nsbm', 'nsbm@gmail.lk', '456789', 'nsbm', '123');

-- --------------------------------------------------------

--
-- Table structure for table `uni_event`
--

CREATE TABLE `uni_event` (
  `eid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `cnum` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `startdate` varchar(100) NOT NULL,
  `starttime` varchar(100) NOT NULL,
  `enddate` varchar(100) NOT NULL,
  `endtime` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `calstart` varchar(100) NOT NULL,
  `calend` varchar(100) NOT NULL,
  `savepath` varchar(1000) DEFAULT NULL,
  `uid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uni_event`
--

INSERT INTO `uni_event` (`eid`, `title`, `type`, `cnum`, `location`, `address`, `startdate`, `starttime`, `enddate`, `endtime`, `description`, `calstart`, `calend`, `savepath`, `uid`) VALUES
('1', 'event 101', 'dsa', '46465', 'dsadas', 'lolol', '2018-07-12', '08:44', '2018-07-15', '08:44', 'lol', '2018-07-12T08:44:00', '2018-07-15T08:44:00', 'C1akpid.jpeg', '0'),
('2', 'eer workshop', 'tech', '568789', 'nsbm uni', '123dsa', '2018-07-12', '08:41', '2018-07-12', '20:41', 'lols', '2018-07-12T08:41:00', '2018-07-12T20:41:00', 'C2akpid.jpg', '0'),
('3', 'event 1', 'dsa', '46465', 'dsadas', 'dsadsad', '2018-07-12', '08:44', '2018-07-14', '08:44', 'lol', '2018-07-12T08:44:00', '2018-07-14T08:44:00', 'C3akpid.jpg', '0'),
('4', 'new', 'new', '123', 'new', 'new', '2018-07-13', '16:23', '2018-07-13', '16:24', 'new', '2018-07-13T16:23:00', '2018-07-13T16:24:00', 'C4akpid.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `un` varchar(50) NOT NULL,
  `ps` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `un`, `ps`) VALUES
('0', 'sar', '123'),
('1', 'nath', '123'),
('2', 'dhana', '123'),
('3', 'cham', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_comp_event_comment`
--

CREATE TABLE `user_comp_event_comment` (
  `com_id` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `uni_id` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_comp_event_comment`
--

INSERT INTO `user_comp_event_comment` (`com_id`, `uid`, `uni_id`, `eid`, `comment`) VALUES
('01', '0', '1', '1', 'api enne na oi'),
('11', '0', '2', '2', 'steve jobs'),
('21', '3', '1', '1', 'apita moko'),
('31', '3', '2', '2', 'loku da');

-- --------------------------------------------------------

--
-- Table structure for table `user_uni_event_comment`
--

CREATE TABLE `user_uni_event_comment` (
  `com_id` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `uni_id` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_uni_event_comment`
--

INSERT INTO `user_uni_event_comment` (`com_id`, `uid`, `uni_id`, `eid`, `comment`) VALUES
('01', '0', '1', '1', 'niggas'),
('11', '3', '1', '1', 'lol wut'),
('21', '3', '2', '2', 'api enne na oi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uname_UNIQUE` (`uname`);

--
-- Indexes for table `comp_event`
--
ALTER TABLE `comp_event`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fk_projects_user_idx` (`user_id`);

--
-- Indexes for table `projects_has_company`
--
ALTER TABLE `projects_has_company`
  ADD PRIMARY KEY (`projects_pid`,`company_cid`),
  ADD KEY `fk_projects_has_company_company1_idx` (`company_cid`),
  ADD KEY `fk_projects_has_company_projects1_idx` (`projects_pid`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `uni_event`
--
ALTER TABLE `uni_event`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_comp_event_comment`
--
ALTER TABLE `user_comp_event_comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `user_uni_event_comment`
--
ALTER TABLE `user_uni_event_comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects_has_company`
--
ALTER TABLE `projects_has_company`
  ADD CONSTRAINT `fk_projects_has_company_company1` FOREIGN KEY (`company_cid`) REFERENCES `company` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projects_has_company_projects1` FOREIGN KEY (`projects_pid`) REFERENCES `projects` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

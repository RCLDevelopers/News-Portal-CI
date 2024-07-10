-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 11:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladdnews`
--

CREATE TABLE `tbladdnews` (
  `id` int(11) NOT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Sub_category` varchar(200) DEFAULT NULL,
  `Upload_Image` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladdnews`
--

INSERT INTO `tbladdnews` (`id`, `newtitle`, `Category`, `Sub_category`, `Upload_Image`, `Description`, `create_date`) VALUES
(1, 'Bumrah reveals how Kohli broke the news of stepping down as Test captain', '1', '1', '20220117180115-763158.jpg', 'Kohli had stepped down from the Test captaincy role earlier last week a day after the Test series ended in Cape Town, marking an end of an era in Indian cricket.Indian pacer Jasprit Bumrah opened up about Virat Kohli\'s decision to step down from Test captaincy after India\'s 2-1 Test series defeat against South Africa last week. Revealing that Kohli had talked to the team members regarding his decision to step down from the role, Bumrah remained tight-lipped on the proceedings, calling it a perso', '2022-01-17 17:29:15'),
(2, 'Winning gold in Tokyo is a dream-come-true moment, says Neeraj Chopra', '1', '2', '20220117180112-250027.jpg', 'Chopra became not just India\'s first Olympic gold-medallist in 13 years but also the first track and field athlete to achieve the feat.\r\nOlympic champion Neeraj Chopra said that the feeling of clinching gold at the Tokyo Olympics hadn\'t sunk in until he witnessed the rousing reception on his return to India on Monday. \r\n\r\nChopra became not just India\'s first Olympic gold-medallist in 13 years but also the first track and field athlete to achieve the feat. It was Chopra\'s second attempt of 87.58m', '2022-01-17 17:32:12'),
(3, 'EPL 2021-22: Harrison\'s hattrick gives Leeds 3-2 win at West Ham', '1', '3', '20220117180139-359658.jpg', 'West Ham hit back twice through Jarrod Bowen and Pablo Fornals, but Harrison\'s well-taken third goal ended the London club\'s four-match winning streak.\r\nJack Harrison scored a hattrick as Leeds overcame a long list of absentees to beat West Ham 3-2 in the Premier League on Sunday.\r\n\r\nWest Ham hit back twice through Jarrod Bowen and Pablo Fornals, but Harrison\'s well-taken third goal ended the London club\'s four-match winning streak.\r\n\r\nLeeds travelled to West Ham without nine first-team players ', '2022-01-17 17:34:39'),
(5, 'Manoj Tiwari tests positive for Covid-19, actor-politician urges all to be cautious', '2', '6', '20220119180118-974030.jpg', 'Actor-politician Manoj Tiwari has tested positive for Covid-19. Informing all on Twitter he shared that he has isolated himself and urged all to be cautious and take cBJP MP Manoj Tiwari on Tuesday said he has tested positive for Covid-19. in a series of tweets, he said: \"Could not attend the Uttarakhand-Rudrapur campaigning yesterday as I was not feeling well from January 2 night. I have tested positive for Covid-19. Taking precautions, I had isolated myself yesterday only. \"Please take care of', '2022-01-17 17:42:39'),
(6, 'Pregnant Kylie Jenner rocks pink outfit at Stormi, Chicago West\'s birthday party1', '1', '3', '20220119180137-663514.jpg', 'Dressed in a pink outfit as per the Barbie theme, Kylie Jenner attended the joint birthday party for daughter Stormi Webster and niece Chicago West. According to E! NeDressed in a pink outfit as per the Barbie theme, Kylie Jenner attended the joint birthday party for daughter Stormi Webster and niece Chicago West. According to E! News, her latest social media posting, shut down rumours that she had already given birth to her second child. The beauty mogul showed off her growing baby bump with vi', '2022-01-17 17:44:28'),
(8, 'Modi wears Uttarakhand’s traditional cap, Manipuri stole for Republic Day ahead of polls', '3', '9', '20220126100118-75567.png', 'Prime Minister Narendra Modi ditched his traditional turban look on Republic Day this year and wore a traditional cap from Uttarakhand with an image of the brahmakamal, the state flower, and sported a stole from Manipur.\nOfficial sources said Modi uses the brahmakamal whenever he offers prayers at Kedarnath.\nTurbans have been a highlight of the prime minister’s sartorial choices at Independence Day and Republic Day events.\n\nLast year, he sported a special turban from Gujarat’s Jamnagar on 72', '2022-01-26 09:29:18'),
(9, 'India’s first republic is all but dead. We the people need to shape the second one', '5', '11', '20220126100129-361596.jpeg', 'This Republic Day, let us face a harsh truth: India’s first republic is over. The republic that was inaugurated on 26 January 1950, whose shadow we celebrate today, is all but dead. It is time to acknowledge that what we have lost over the last eight years is not just democracy, federalism or secularism; we have lost our republic. The razing of Delhi’s Boat Club to make way for the new Central Vista, extinguishing of the Amar Jawan Jyoti, and dropping of the tune Abide With Me from the Beating Retreat are but tiny hints of a tectonic shift. We are indeed entering a new India.\r\n\r\nThis Republic Day, let us acknowledge that our republic has been undone by the public. What we face today is not merely the result of an unscrupulous political force that has hijacked our country. We are not victims of a bad accident. This democratic capture was made possible by a disconnect between our constitutional values and the political values upheld by the public. Republic is not merely a form of government; it is above all a political community bound together by a shared vision. It would be a lie to say that we had a shared vision on 26 January 1950, but we had the promise of a vision. Today, that promise lies in tatters. The ideas that could shape a republican political community have worn out.', '2022-01-26 09:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `email`, `password`, `create_date`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Test@123', '2022-01-08 03:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `name`) VALUES
(1, 'sports'),
(2, 'Entertainment'),
(3, 'Politics'),
(4, 'Technology'),
(5, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `id` int(11) NOT NULL,
  `postid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`id`, `postid`, `name`, `emailid`, `comment`, `status`, `create_date`) VALUES
(1, '5', 'Shiv', 'shiv@gmail.com', 'Please Take care sir ', '1', '2022-01-17 18:06:43'),
(2, '4', 'Anuj kumar', 'ak@gmail.com', 'Test@123', '1', '2022-01-26 05:26:08'),
(3, '7', 'Anuj ', 'test@gmail.com', 'Test comment', '1', '2022-01-26 06:04:32'),
(4, '9', 'Amit', 'amit@gmail.com', 'Happy Republic Day', '1', '2022-01-26 09:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblsub_category`
--

CREATE TABLE `tblsub_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `subcategory_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsub_category`
--

INSERT INTO `tblsub_category` (`id`, `category_name`, `subcategory_name`) VALUES
(1, '1', 'cricket'),
(2, '1', 'tokyo-olympics-2021'),
(3, '1', 'football'),
(4, '1', 'hockey'),
(5, '2', 'Bollywood'),
(6, '2', 'Bhojpuri'),
(7, '2', 'Hollywood'),
(8, '2', 'Web Series'),
(9, '3', 'National'),
(10, '4', 'Blockchain'),
(11, '5', 'Republic Day');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladdnews`
--
ALTER TABLE `tbladdnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsub_category`
--
ALTER TABLE `tblsub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladdnews`
--
ALTER TABLE `tbladdnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblsub_category`
--
ALTER TABLE `tblsub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

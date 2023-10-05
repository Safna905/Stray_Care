-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 11:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `straycare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption_tb`
--

CREATE TABLE `adoption_tb` (
  `adopt_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `adopted_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_tb`
--

INSERT INTO `adoption_tb` (`adopt_id`, `request_id`, `status`, `adopted_on`) VALUES
(1, 0, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `adopt_request_tb`
--

CREATE TABLE `adopt_request_tb` (
  `request_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sent_status` varchar(20) NOT NULL,
  `reply_status` varchar(20) NOT NULL,
  `send_date` date NOT NULL,
  `reply_date` date NOT NULL,
  `recipient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adopt_request_tb`
--

INSERT INTO `adopt_request_tb` (`request_id`, `sender_id`, `sent_status`, `reply_status`, `send_date`, `reply_date`, `recipient_id`) VALUES
(1, 0, '', '', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `animal_tb`
--

CREATE TABLE `animal_tb` (
  `animal_id` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal_tb`
--

INSERT INTO `animal_tb` (`animal_id`, `description`, `gender`, `type`, `color`, `breed`, `image`) VALUES
(1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `authority_login_tb`
--

CREATE TABLE `authority_login_tb` (
  `log_id` int(11) NOT NULL,
  `code` varchar(8) NOT NULL,
  `password` varchar(50) NOT NULL,
  `authority_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authority_login_tb`
--

INSERT INTO `authority_login_tb` (`log_id`, `code`, `password`, `authority_type`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, 'asmns', 'asmns12', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `collected_tb`
--

CREATE TABLE `collected_tb` (
  `collect_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `health_cond` varchar(50) NOT NULL,
  `collect_from` varchar(50) NOT NULL,
  `collected_on` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Fostering',
  `died_on` date NOT NULL,
  `reason` varchar(20) NOT NULL,
  `adopted_on` date NOT NULL,
  `image` text NOT NULL,
  `color` varchar(50) NOT NULL,
  `animal_type` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collected_tb`
--

INSERT INTO `collected_tb` (`collect_id`, `office_id`, `health_cond`, `collect_from`, `collected_on`, `status`, `died_on`, `reason`, `adopted_on`, `image`, `color`, `animal_type`, `gender`) VALUES
(1, 2, '$', '$', '0000-00-00', 'Died', '1992-01-23', 'attack', '0000-00-00', '', '', '', ''),
(2, 2, '$', '$', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', ''),
(3, 1, '$good', '$', '0000-00-00', 'Died', '0000-00-00', '', '0000-00-00', '', '', '', ''),
(4, 1, '$good', '$pmna vet', '0000-00-00', 'Died', '2023-09-14', 'fever', '0000-00-00', '', '', '', ''),
(5, 1, '$good', '$pmna vet', '2023-04-23', 'Died', '2023-09-06', 'pnemomia', '0000-00-00', '', '', '', ''),
(6, 1, '$good', '$pmna vet', '2023-04-23', 'Fostering', '2023-09-13', 'myopia', '0000-00-00', 'Video+of+animal+abuse+on+youtube.png', 'white', 'cat', 'F'),
(7, 1, '$good', '$pmna vet', '2023-04-23', 'Fostering', '0000-00-00', '', '0000-00-00', 'Video+of+animal+abuse+on+youtube.png', 'white', 'cat', 'F'),
(8, 2, '', '', '0000-00-00', 'Fostering', '0000-00-00', '', '0000-00-00', '1000018316.jpg', '', '', ''),
(9, 2, 'injured on left leg', '', '2023-08-22', 'Fostering', '0000-00-00', '', '0000-00-00', '1000018312.jpg', 'yellowish brown ', '', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `donation_tb`
--

CREATE TABLE `donation_tb` (
  `donate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation_tb`
--

INSERT INTO `donation_tb` (`donate_id`, `user_id`, `amount`, `type`) VALUES
(1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `forest_tb`
--

CREATE TABLE `forest_tb` (
  `forest_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forest_tb`
--

INSERT INTO `forest_tb` (`forest_id`, `login_id`, `email`, `location`, `ph_no`) VALUES
(1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `foster_tb`
--

CREATE TABLE `foster_tb` (
  `foster_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `health_cond` varchar(50) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foster_tb`
--

INSERT INTO `foster_tb` (`foster_id`, `animal_id`, `health_cond`, `image`) VALUES
(1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `local_govt_tb`
--

CREATE TABLE `local_govt_tb` (
  `lsg_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `lsg_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `local_govt_tb`
--

INSERT INTO `local_govt_tb` (`lsg_id`, `log_id`, `lsg_name`, `type`, `location`, `email`, `ph_no`) VALUES
(1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `missing_tb`
--

CREATE TABLE `missing_tb` (
  `missing_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `animal_type` varchar(50) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `lastseen_on` date NOT NULL DEFAULT current_timestamp(),
  `report_date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `image` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'missing',
  `mob_no` bigint(10) NOT NULL,
  `lastseen_at` varchar(152) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `missing_tb`
--

INSERT INTO `missing_tb` (`missing_id`, `user_id`, `animal_type`, `breed`, `name`, `description`, `color`, `lastseen_on`, `report_date`, `image`, `status`, `mob_no`, `lastseen_at`, `gender`) VALUES
(1, 0, '', '', '', '$', '', '0000-00-00', '0000-00-00 00:00:00.000000', 'IMG-20230615-WA0028.jpg', '', 0, '', ''),
(2, 1, '', 'good ', 'fish', '', 'orange ', '0000-00-00', '2023-06-17 00:00:00.000000', 'IMG-20230510-WA0008.jpg', 'missing', 87689734, 'kkm', ''),
(3, 1, '', 'nice', 'goat', '', 'black', '0000-00-00', '2023-06-17 00:00:00.000000', 'IMG-20230615-WA0028.jpg', 'missing', 36657, 'hukk', ''),
(4, 5, 'dog', 'sd', 'doko', 'dsdfgd', 'black', '2023-05-12', '0000-00-00 00:00:00.000000', 'IMG-20230510-WA0008.jpg', 'missing', 4522, 'pmna', 'f'),
(5, 6, 'dog', 'sd', 'dmoko', 'dsdfgd', 'black', '2023-05-15', '2023-06-08 00:00:00.000000', 'images (5) 1.png', 'missing', 452252, 'pmna', 'f'),
(6, 6, 'other', 'arabian', 'kiki', 'black and white color', 'pink', '2023-06-15', '2023-06-21 12:02:06.408695', 'IMG-20230615-WA0028.jpg', 'missing', 9089908990, 'ksa', 'm'),
(7, 6, 'other', 'arabian', 'kiki', 'black and white color', 'pink', '2023-06-15', '2023-06-21 12:02:10.801988', 'IMG-20230615-WA0028.jpg', 'missing', 9089908990, 'ksa', 'm'),
(8, 6, 'other', 'eu', 'gogo', 'lives in water', 'brown ', '2023-06-16', '2023-06-21 12:16:55.092858', 'IMG-20230621-WA0001.jpg', 'missing', 7878787878, 'uae', 'f'),
(9, 6, 'other', 'amer', 'jerry', 'naughty', 'brown', '2023-07-07', '2023-07-12 11:21:21.266946', 'IMG-20230510-WA0008.jpg', 'missing', 9090907899, 'usa', 'm'),
(10, 3, 'cat', 'persianlanien', 'd.soz', 'hairy with sharp eyes', 'brownish white', '2023-07-08', '0000-00-00 00:00:00.000000', '1200px-African_Bush_Elephant.jpg', 'missing', 1245789865, 'kasargod', 'f'),
(11, 4, 'cat', 'american shorthair', 'amy', 'black and white scaled', 'balck and white', '2023-07-11', '2023-07-18 17:18:50.000000', 'screen2.jpg', 'missing', 1232456578, 'kannur', 'm'),
(12, 4, 'cat', 'bambay cat', 'blackey', 'black short hair', 'black', '2023-07-12', '2023-07-17 17:18:50.000000', 'screen2.jpg', 'Found', 4545456565, 'kannyala', 'm'),
(13, 5, 'dog', 'Golden Retriever', 'suzy', 'hairy', 'white with light bro', '2023-07-08', '2023-07-13 17:26:12.000000', 'screen2.jpg', 'missing', 5252858596, 'chennai', 'f'),
(14, 6, 'cat', 'african', 'dmoz', 'hairy with green eyes', 'brownish white', '2023-05-15', '2023-06-08 00:00:00.000000', 'screen2.jpg', 'missing', 1245789865, 'kozhikode', 'f'),
(15, 8, 'other', 'african', 'gogo', 'elephant with big ears', 'black', '2023-07-03', '2023-07-25 11:23:11.205632', '1200px-African_Bush_Elephant.jpg', 'missing', 78798988, 'klm', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `office_tb`
--

CREATE TABLE `office_tb` (
  `office_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `location` varchar(10) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `office_tb`
--

INSERT INTO `office_tb` (`office_id`, `login_id`, `email`, `location`, `ph_no`) VALUES
(1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `police_tb`
--

CREATE TABLE `police_tb` (
  `police_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `station` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police_tb`
--

INSERT INTO `police_tb` (`police_id`, `login_id`, `station`, `location`, `ph_no`) VALUES
(1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration_tb`
--

CREATE TABLE `registration_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_tb`
--

INSERT INTO `registration_tb` (`id`, `name`, `image`, `place`, `phone`, `log_id`) VALUES
(1, 'kiara', '', 'london', 6767674545, 0),
(2, 'kiara', '', 'london', 6767674545, 0),
(3, 'kiara', '', 'london', 6767674545, 0),
(4, 'kiara', '', 'london', 6767674545, 0),
(5, 'kiara', '', 'london', 6767674545, 0),
(6, 'kiara', '', 'london', 6767674545, 0),
(7, 'kiara', '', 'london', 6767674545, 0),
(8, 'kiara', '', 'london', 6767674545, 0),
(9, 'kiara', '', 'london', 6767674545, 0),
(10, 'neha ', '', 'palakkod', 7878780911, 2),
(11, 'meena', '', 'manjeri', 3626263626, 3),
(12, 'kamal', '', 'megalaya', 3626003626, 4),
(13, 'david', '', 'america', 9090907878, 5),
(14, 'leela', '', 'palakkad', 7878780909, 6),
(15, 'kiya', '', 'nilam', 9090907878, 7),
(16, 'navas', '', 'iran', 7878786767, 8);

-- --------------------------------------------------------

--
-- Table structure for table `report_tb`
--

CREATE TABLE `report_tb` (
  `report_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `location` varchar(250) NOT NULL,
  `lati` varchar(100) NOT NULL,
  `longi` varchar(100) NOT NULL,
  `reported_date` datetime(6) NOT NULL,
  `image` text NOT NULL,
  `case_type` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_tb`
--

INSERT INTO `report_tb` (`report_id`, `description`, `location`, `lati`, `longi`, `reported_date`, `image`, `case_type`, `user_id`) VALUES
(1, '', '', '', '', '0000-00-00 00:00:00.000000', '', '', 0),
(2, 'dsdfgd', 'pmna', '', '', '0000-00-00 00:00:00.000000', 'Adoptbg.png', '', 6),
(3, 'dsdfgd', 'pmna', '', '', '0000-00-00 00:00:00.000000', 'Adoptbg.png', 'dg', 6),
(4, 'dsdfgd', 'pmna', '452252', 'b555', '2023-06-08 00:00:00.000000', 'Adoptbg.png', 'dg', 6),
(5, 'dsdfgd', 'pmna', '452252', 'b555', '2023-06-08 00:00:00.000000', 'Android Large - 1.png', 'dg', 6),
(6, '', '', '', '', '0000-00-00 00:00:00.000000', 'IMG-20230724-WA0002.jpg', '', 0),
(7, 'injured on left leg', 'kozhikode', '452252', 'b555', '2023-06-08 00:00:00.000000', 'Persialainen.jpg', 'injured', 0),
(8, 'injured on left leg', 'kozhikode', '452252', 'b555', '2023-06-08 00:00:00.000000', 'Persialainen.jpg', 'injured', 3),
(9, 'injured on left leg', 'kozhikode', '452252', 'b555', '2023-06-08 00:00:00.000000', 'Persialainen.jpg', 'injured', 3),
(10, 'dog with injured eyes', 'pmna', '', '', '2023-07-25 12:42:50.237135', 'IMG-20230723-WA0012.jpg', 'Injured', 5),
(11, 'injured on left leg', 'kannur', '4522526', 'b555H', '2023-06-15 00:00:00.000000', 'images (5) 1.png', 'injured', 3),
(12, 'fracture on right leg ', 'Angadipuram,X6H3+52P,', '10.9779578', '76.2025889', '2023-08-11 11:23:46.772460', 'cat-with-broken-leg.jpg', 'Injured', 5),
(13, 'dog injured below back neck', 'Angadipuram,X6H3+52P,', '10.9779541', '76.2025955', '2023-08-11 11:26:58.653396', 'b135e4_ff1005a5d3c1450b8909ceb2170e1547~mv2.jpg', 'Stray', 5),
(14, 'an aggressive dog', 'Angadipuram,X6H3+52P,', '10.9779543', '76.2025945', '2023-08-11 11:28:21.994055', 'dog-aggression-e1547673738337.jpg', 'Aggressive', 5),
(15, '', 'Angadipuram,X6H3+533,', '10.9779007', '76.2026046', '2023-08-11 11:31:47.909940', 'news-9-10.jpg', 'Wild', 5),
(16, 'seen an abused dog', 'Angadipuram,X6H3+52P,', '10.9779634', '76.2025874', '2023-08-11 11:32:37.924264', 'Animal-Cruelty-Study_5589884_600x315.jpg', 'Abused', 5),
(17, 'two dogs as a pair seen', 'kalankavu', '4522526', 'b555H', '2023-06-15 00:00:00.000000', '82170867_2507581532817048_1575957757285105664_o.jpg', 'stray', 7),
(18, 'cow roaming on road', 'trivandrum', '4522526', 'b555H', '2023-06-15 00:00:00.000000', 'images.jpeg', 'stray', 7),
(19, 'two cats seen under car', 'melattur', '4522526', 'b555H', '2023-06-15 00:00:00.000000', 'stray_cats_1662619803923_1662619828164_1662619828164.webp', 'stray', 5),
(20, 'flock of wild animals seeen on road', 'uk', '4522526', 'b555H', '2023-06-16 00:00:00.000000', '01xp-virus-animals-superJumbo.jpg', 'wild', 5),
(21, 'wild pig in town', 'usa', '4522526', 'b555H', '2023-06-16 00:00:00.000000', '4368.webp', 'wild', 5),
(22, 'wild deer seen on road', 'usa', '4522526', 'b555H', '2023-06-16 00:00:00.000000', 'coronavirus-nature-49.webp', 'wild', 5),
(23, 'wild bear in town', 'usa', '4522526', 'b555H', '2023-06-16 00:00:00.000000', 'images (1).jpeg', 'wild', 5),
(24, 'wild boston on footpath', 'london', '4522526', 'b555H', '2023-06-16 00:00:00.000000', 'turkey in the city.jpg', 'wild', 5),
(25, 'aggressive dog in town', 'pmna', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'Aggressive+Dog.png', 'Aggressive', 3),
(26, 'seen two aggressive dog fighting in town', 'pmna', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'download.jpeg', 'Aggressive', 3),
(27, 'seen aggressive dog  in town', 'pmna', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'images (2).jpeg', 'Aggressive', 3),
(28, 'seen aggressive dog  in town', 'pmna', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'images (2).jpeg', 'Aggressive', 3),
(29, 'seen aggressive dog  in town', 'kk', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'images (2).jpeg', 'Aggressive', 3),
(30, 'abused  dog seen ', 'kk', '4522526', 'b555H', '2023-06-03 00:00:00.000000', '94f1251e-f64f-473d-a2b7-814576ce102f-large16x9_ScreenShot20190501at8.32.34AM.webp', 'Abused', 2),
(31, 'abused  elephant seen ', 'india', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'Elephant-Asia-Torture-Crushing-Tourism-Travel-680x454.jpg', 'Abused', 2),
(32, 'abused  horse seen ', 'india', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'neglected-horse-49265_0.webp', 'Abused', 2),
(33, 'abused  white dog seen ', 'up', '4522526', 'b555H', '2023-06-03 00:00:00.000000', 'Video+of+animal+abuse+on+youtube.png', 'Abused', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `log_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`log_id`, `email`, `password`) VALUES
(1, '', ''),
(2, 'neha@gmail.com ', 'neha123'),
(3, 'meena@gmail.com', 'meena123'),
(4, 'kamal@gmail.com', 'kamal123'),
(5, 'david@gmail.com ', 'david123'),
(6, 'leela@gmail.com ', 'leela123'),
(7, 'kiya@gmail.com ', 'kiya123'),
(8, 'navas@gmail.com ', 'navas123');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `user_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `age` varchar(5) NOT NULL,
  `address` varchar(50) NOT NULL,
  `ph_no` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`user_id`, `log_id`, `name`, `age`, `address`, `ph_no`, `email_id`) VALUES
(1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `veterinary_tb`
--

CREATE TABLE `veterinary_tb` (
  `vet_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `center` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veterinary_tb`
--

INSERT INTO `veterinary_tb` (`vet_id`, `login_id`, `center`, `location`, `email`, `ph_no`) VALUES
(1, 0, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption_tb`
--
ALTER TABLE `adoption_tb`
  ADD PRIMARY KEY (`adopt_id`);

--
-- Indexes for table `adopt_request_tb`
--
ALTER TABLE `adopt_request_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `animal_tb`
--
ALTER TABLE `animal_tb`
  ADD PRIMARY KEY (`animal_id`);

--
-- Indexes for table `authority_login_tb`
--
ALTER TABLE `authority_login_tb`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `collected_tb`
--
ALTER TABLE `collected_tb`
  ADD PRIMARY KEY (`collect_id`);

--
-- Indexes for table `donation_tb`
--
ALTER TABLE `donation_tb`
  ADD PRIMARY KEY (`donate_id`);

--
-- Indexes for table `forest_tb`
--
ALTER TABLE `forest_tb`
  ADD PRIMARY KEY (`forest_id`);

--
-- Indexes for table `foster_tb`
--
ALTER TABLE `foster_tb`
  ADD PRIMARY KEY (`foster_id`);

--
-- Indexes for table `local_govt_tb`
--
ALTER TABLE `local_govt_tb`
  ADD PRIMARY KEY (`lsg_id`);

--
-- Indexes for table `missing_tb`
--
ALTER TABLE `missing_tb`
  ADD PRIMARY KEY (`missing_id`);

--
-- Indexes for table `office_tb`
--
ALTER TABLE `office_tb`
  ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `police_tb`
--
ALTER TABLE `police_tb`
  ADD PRIMARY KEY (`police_id`);

--
-- Indexes for table `registration_tb`
--
ALTER TABLE `registration_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_tb`
--
ALTER TABLE `report_tb`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `veterinary_tb`
--
ALTER TABLE `veterinary_tb`
  ADD PRIMARY KEY (`vet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption_tb`
--
ALTER TABLE `adoption_tb`
  MODIFY `adopt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adopt_request_tb`
--
ALTER TABLE `adopt_request_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `animal_tb`
--
ALTER TABLE `animal_tb`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authority_login_tb`
--
ALTER TABLE `authority_login_tb`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `collected_tb`
--
ALTER TABLE `collected_tb`
  MODIFY `collect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donation_tb`
--
ALTER TABLE `donation_tb`
  MODIFY `donate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forest_tb`
--
ALTER TABLE `forest_tb`
  MODIFY `forest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foster_tb`
--
ALTER TABLE `foster_tb`
  MODIFY `foster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `local_govt_tb`
--
ALTER TABLE `local_govt_tb`
  MODIFY `lsg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `missing_tb`
--
ALTER TABLE `missing_tb`
  MODIFY `missing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `office_tb`
--
ALTER TABLE `office_tb`
  MODIFY `office_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `police_tb`
--
ALTER TABLE `police_tb`
  MODIFY `police_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration_tb`
--
ALTER TABLE `registration_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `report_tb`
--
ALTER TABLE `report_tb`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `veterinary_tb`
--
ALTER TABLE `veterinary_tb`
  MODIFY `vet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

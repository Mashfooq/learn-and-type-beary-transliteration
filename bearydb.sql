-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 04:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bearydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `email`, `password`) VALUES
(1, 'bearyadmin@gmail.com', 'bearyadmin');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ar_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `text` varchar(4000) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ar_id`, `name`, `text`, `image`) VALUES
(2, 'ಬ್ಯಾರಿ ಬಾಸೆರೊ ಮಹತ್ವ', 'ಅಸ್ಸಲಾ ಅಲೈಕುಂ.<br>\r\nಮುನ್ನೊಲ್ತೊ ಕಾಲತ್ಲ್ ಸುಮಾರ್ ವರ್ಸತ್ಲೂಂಟು ನಙ ಬ್ಯಾರಿ ಸಮುದಾಯತಙ ಅವುತುಲು ಬ್ಯಾರಿ ಪಲಕ ಪರ್ಞೋ ಇನ್ನೆಂಗುಂ ಪರ್ತ್ ಲ್ ಈ ಬಾಸೆಗ್ ಚೊಮ್ಮೆ ಮಹತ್ವ ಇಲ್ಲಾಂತ್..ಕೊರಿಯಾಲ್ಗ್ ಈ ಬಾಸೆ ಅರ್ಥಾಯೋ ಇಲ್ಲಾಂತ್. ಪಲಕ ಪರೆಯೊಗು ಬನ್ನೊ ಇಲ್ಲಾಂತ್.. ಬ್ಯಾರಿರಙಗು ಕನ್ನಡ ಲಿಪಿ ಎಲ್ದೋಗಾವುರೂಂಟು ಚಿಲೆ ಆಲ್ಮಾರ್ಗ್ ಗೊಂತಿಲ್ಲಾಂತ್..ಆಯೆಂಗ್ ಇಪ್ಪ ಕಾಲ ಬದಲಾಯಿರ್..ನಙಲೆ ಬ್ಯಾರಿ ಬಾಸೆ ಎತ್ತರೆ ಮುಂದುವರಿಞಿರ್ ಚೆನ್ನೆಂಗ್ ಬ್ಯಾರಿ ಸಾಹಿತಿಮಾರ್ ,ಕವಿಮಾರೊ ಮೆಹನತ್ರೆ ಫಲ ಕರ್ನಾಟಕ ಸರ್ಕಾರ 2007ಇಸವಿಲ್ ಮೈಕಾಲತ್ಲ್ ಬ್ಯಾರಿ ಸಾಹಿತ್ಯ ಅಕಾಡೆಮಿರೊಮೇ ಸ್ಥಾಪನೆ ಆಕಿತ್ತ್ ಅಕಾಡೆಮಿ ಯಶಸ್ವಿಂ ಅಯಿತ್...\r\n<br><br>\r\nಇಪ್ಪ ಬೆಲಿಯೆ ಬೆಲಿಯೆ ಸಾಹಿತಿಮಾರ್ ಲೇಖಕಮಾರ್ ಬ್ಯಾರಿ ಬಾಸೆಲ್ ಎಲ್ದಿತ್ ಬ್ಯಾರಿ ಕಲೆ ,ಸಾಹಿತ್ಯ,ಸಂಸ್ಕ್ರತಿಗ್ ಚೊಮ್ಮೆ ಪ್ರೊತ್ಸಾಹ ಕೊಡ್ತೋ ಉಲ್ಲಾರ್...ಬ್ಯಾರಿ ಬಾಸೆಲ್ ಕಾದಂಬರಿ ,ಕಥೆ ,ಕವನ,ಚುಟುಕುಙ ಎಲ್ಲಾ ಎಲ್ದಿಯೊ ಚೊಮ್ಮೆ ಬುಕ್ಕುಙ ಪರ್ತ್ ಕೋನ್ರಾರ್.. ಬ್ಯಾರಿ ನಾಟಕ,ಪಾಟ್,ನಿಙಂಟು,ಕ್ಯಾಲೆಂಡರ್ ಬಿಡುಗಡೆಯಾಕಿರಾರ್.. ಬ್ಯಾರಿ ಬಾಸೆರೊ \"ಬ್ಯಾರಿ\" ಚೆಲ್ಲೊ ಸಿನಿಮಾ ತ್ಗ್ ರಾಷ್ಟ್ರ ಪ್ರಶಸ್ತಿಂ ಕಿಟ್ಟಿಯದ್ ಬ್ಯಾರಿ ಸಮುದಾಯತ್ಗ್ ಹೆಮ್ಮೆರೊ ಬಿಸಯ ...\r\n<br><br>\r\nಆಯೆಂಗ್ ಒರು ಬೇಜಾರೊ ಬಿಸಯ ಎಂದ್ರೆ ಚೆನ್ನೆಂಗ್ ನಙ ಬ್ಯಾರಿಙಮೇ ನಙಲೋ ಮಾತ್ರ ಬಾಸೆ ಬ್ಯಾರಿ ಬಾಸೆಗ್ ಮಹತ್ವ ಕೊಡುಕುಲ್ಲೆ...ಅವುತುಲು ನಙ ಪಲಕ ಪರಿಯುಂಬೊ ಮಕ್ಕಗ್ ನಙ ಎಲ್ಲಾ ಪಲಕ ಬ್ಯಾರಿಲ್ ಪಡಿಪಾಟ್ಟ್ ಲ್ಲೆ..ಉದಾ::ಇಪ್ಪತೊ ಮಕ್ಕಙ ಅವುತ್ರೆ ಹಿರಿಯಙಲೊ ಬಿಲಿಕುಂಬೊ ಮಮ್ಮಿ ಡ್ಯಾಡಿ ಪಪ್ಪ.ಮಮ್ಮ,ಅಂಕಲ್ ಆಂಟಿ.ದೀದಿ ಜೀಜು ದಾದ.ದಾದಿ ಇಙನೆ ಎಲ್ಲಾರೆ ಪೇರ್ ಬೇರೆ ಬೇರೆ ಬಾಸೆಲ್ ಬಿಲಿಕ್ರೆದ್ ನಙಗು ಕಾಂಡ್...ಈ ಸಮುದಾಯತ್ಲ್ ಒರು ತಪ್ಪು ಕಲ್ಪನೆ ಉಂಡು ಇಂಗ್ಲಿಷ್ ಬಾಸೆಮೇ ಎಲ್ಲತೆಗಾನ ನಲ್ಲೆ, ಇಂಗ್ಲಿಷ್ ಬರಾತಙಗು ಮರ್ಯಾದಿ ಇಲ್ಲೆ ಚೆಂತ್. ಆ ಸಬೋಲು ಕೊರಿಯ ಬ್ಯಾರಿ ಆಲ್ಮಾರ್.ಅವುತುಲುಂ ಪರ್ತುಲುಂ ಮಕ್ಕಲೊಟ್ಟುಗು ಇಂಗ್ಲಿಸ್ಲೇ ಪಲಕ ಪರೆಯಿರದ್ ಕಾಂಡ್....ನಙಗು ಎಲ್ಲಾ ಬಾಸೆರೊ ತಿಳುವಳಿಕೆ ಬೇನು..ನಙಲೆ ನಡುಲು ಬೇರೆ ಬೇರೆ ಸಮುದಾಯತಙ ಇಕ್ಕುಂಬೊ ಅಙಲೊಟ್ಟು ಪಲಕ ವ್ಯವಹಾರ ಆಕುಂಬೊ ಸಹಾಯ ಆವುರು..ಆಯೆಂಗ್ ನಙಲೆ ಮಾತ್ರ ಬಾಸೆರೊ ಕೀಲ್ ಆಕಿತ್ತ್ ಬೇರೆ ಬಾಸೆಗ್ ಮಹತ್ವ ಕೊಡ್ಕೊ ತೀರ ..ಕೊರಿಯ ಸಾಲೆಲ್ ಮಕ್ಕ ಮಕ್ಕ ಸೇರಿತ್ ಬ್ಯಾರಿ ಬಾಸೆಲೇ ಪಲಕ ಪರ್ಞೆಂಗುಂ ಸಾಲೆರೊ ಕಮಿಟಿರಙ ಅದ್ಗ್ ಅವಕಾಶ ಕೊಡ್ಕುಲ್ಲೆ.. ಸಾಲೆರೊ ರೂಲ್ಸ್ ಪ್ರಕಾರ ಮಕ್ಕ ಕನ್ನಡ ಇಂಗ್ಲಿಷ್ ಲೇ ಮುಂಡೊನಾವುರು...ಆಯೆ ಸಬೋಲು ನಙ ಅವುತುಲು ಮಕ್ಕಲೊಟ್ಟು ಆಯತ್ರೆ ಬ್ಯಾರಿಲೇ ಪಲಕ ಪರೆಯೊನು...ಇಪ್ಪತೊ ಮಕ್ಕಗ್ ಬ್ಯಾರಿರೊ ಒರು ಶಬ್ದಂ ಗೊಂತಿಕ್ಕಾಲೆ ..ಉದಾ::ಪ್ರಾಣಿ ಪಕ್ಷಿ ,ಫಲಬಸ್ತ್, ತಿನ್ನ್ರೆ ಬಸ್ತ್, ಕೊರಿಯ ಅರಿಸಾಮಾನ್ತೆ ಪೇರ್ ಇದೆಲ್ಲಾ ನಙ ಬೆಲಿಯಙ ಮಕ್ಕಗ್ ಚೆಂತ್ ಕೊಡ್ಕೊನು...ಮಕ್ಕಗ್ ನಙಲೆ ಬ್ಯಾರಿ ಬಾಸೆರೊ ಮಹತ್ವ ಮನಸ್ಲಾಕಿತ್ ಪಲಕ ಪರೆಯೊಗು ಪ್ರೊತ್ಸಾಹ ಆಕೊನು.....\r\nಪ್ರತಿಯೊರು ಸಮುದಾಯತಙಗು ಅಙಲಙಲೊ ಉಮ್ಮ ಬಾಸೆ ಕಲೆ ಸಂಸ್ಕ್ರತಿ ಸಾಹಿತ್ಯ ಅಙಗು ಹೆಮ್ಮೆ ಅಯ್ತಿಕ್ರ್ ..ಅಙಲೊ ಉಮ್ಮ ಬಾಸೆರೊ ಮುನ್ನೊಲು ಕಾಂಡೆದ್ ಆಲ್ಮಾರೆ ಹಕ್ಕ್ ಅಯ್ತಿಕ್ಕ್ರ್..\r\n<br><br>\r\nಹಿರಿಯೊ ಕಿರಿಯಙ ಎಲ್ಲಾ ಒಟ್ಟು ಕೂಡಿಟ್ಟ್ ಬ್ಯಾರಿ ಬಾಸೆ ಅಲ್ಞಿ ಪೊಗಾಂಟ್ ಒಲ್ಞಿ ಬರ್ನುಂಟು ಬಿಯಾರ್ಚಿತ್ ಕೈ ಜೋಡ್ಚಿ ಬ್ಯಾರಿ ಬಾಸೆರೊ ಮೇಲ್ ಕೊಂಬರೊಗು ಮೆಹನತ್ ಆಕೊನು....\r\n<br><br>\r\nಅಕ್ಟೋಬರ್ 3 ಬ್ಯಾರಿ ಬಾಸೆ ನಾಲಾಚರಣೆರೊ ಈ ಸಂಧರ್ಭತ್ಲ್ ಬ್ಯಾರಿ ಸಮುದಾಯತಙಗೆಲ್ಲಾ ನಂಡೊ ಅಭಿನಂಧನೆ\r\n<br><br>\r\n<b>✍ ಝುಲೇಖ ಮುಮ್ತಾಝ್</b>', 'uploadarticle/1621496036444.webp'),
(9, 'ನೇರ ಸಾತ್', 'ತಲೆ ಸಿಂಗಾರ ಪೂ ಬೆಚ್ಚಿಟ್ಟ್<br> ಚೆಮೆಚ್ಚೆ ಪುದಿಯೆ ಪೆಣ್ಣ್ ಸಂದೋಲತ್ತ್ಲ್ <br> ಸಿಂಗಾರತ್ತೆ ಕಾರ್ಲ್,<br>  ಎಲ್ಲಾರುಂ ಇಳಿಚಿಟ್ಟ್ ಕೊಡ್ತಾರ್<br> <br>  ಆಯೆಂಗ ಬದಲಾಯೆ ನೇರ ಸಾತ್<br>  ಪೇರ್ ಬದಲಾವೋಗು<br>  ಚೆಮ್ಮೆ ಪಾರ್ ಬಾಟಿಲ್ಲೆ <br> ಉಡ್ತೆ ತುನಿ ಮುರಿ ಬೇರೆ ಅಙ <br> ಮಾತೊಗಾಯಿಟ್ ಬಂತ್<br>  ಕುಲಿಬಾಟಿಟ್ಟ್ ಚುತ್ತಿಯೆ ಬೆಲ್ತ್ ತುನಿ<br>  ಒರೆಸಿಯೆ,ಕರ್ಪೂರ,ಅತ್ತರ್<br> <br>  ಬೆಚ್ಚಾರ್ ಶ್ರಂಗಾರ ಇಲ್ಲಾತೆ ಕಟಿಲ್ಲ್ <br> ಸಂದೋಲತ್ತ್ ಇಳಿಚೆ ಆಙ ಎಲ್ಲಾರೂಂ<br>  ಅಟ್ಟಲಿಚಿಟ್ಟ್ ಬುಲ್ಪು ಆಯಾಮ <br> <br> ಎಲ್ಲರೂಗುಂ ಉಲ್ಲೆ ಖಬೂರ್ಲಾಯೆ<br>  ಎಲ್ಲಾರುಗುಂ ಮರಕ್ಕೊಗಾವತ್ತೆ ದುಖ್ಖ <br> ಪರಪ್ಪು,ಮರಿಪ್ಪುರೆ ಜಂಡ್ರೆ <br> ನಡುಲುಲ್ಲೆ ನಙಲೆ ಜೀವಿದ<br>  ಇನ್ನಲಿಲ್ಲಾ ವ ಇನ್ನ ಇಲೈ ರಾಜಿವೂನ್<br> ************<br> ಎಚ್ಚಾರ್.', 'uploadarticle/1621495255286.webp'),
(13, 'ಕಾಸಿ ಬಂಗಾರ್', 'ಅಪರ್ತೌವುತ್ತವುಲ್ಡೊ ಮಂಙಿಲ್ತೊ<br>\r\nಗೌಜಿರೊ ಮೈಲಾಂಜಿಂಗ್ ಪೊಯಪ್ಪ..,<br>\r\nನಂಡೊ ಕೈಕ್ ಬೆಚ್ಚಿಯೊ ಮೈಲಾಂಜಿ<br>\r\nನಂಡೊ ನೋಕಿ ಕರಂಞೊ ಇಂತ್..!!<br><br>\r\n\r\nನಂಡೊ ಕಲ್ಬುರೊ ಗಟ್ಟಿಯಾಕಿ<br>\r\nನೊಂಬಲತ್ತೊ ಮುಲ್ಙಿತ್ತ್<br>\r\nಅವುಲ್ಡೊ ಮೈಲಾಂಜಿರೊ<br>\r\nಕೊಸಿಲ್ ನಂಡೊ ನೊಂಬಲ ನಾ ಮರನ್ನಿನ್ನೆ..!!<br><br>\r\n\r\nನಕ್ಕಾಯೆಂಗ್ ಆದತ್ ಆಯಿ ಪೊಯ್ರ್<br>\r\nಇದೇ ಪೊಲೆ ಕೊರೇ ಬಕ ಮೈಲಾಂಜಿ ಬೆಚ್ಚಿ<br>\r\nನೊಕೊ ಬನ್ನೆಂಙಲೆ ಮುನ್ನೊಲು ನಿಂಡಿನ್ನೆ..!!<br><br>\r\n\r\nಕೈಕ್ ಮೈಲಾಂಜಿ ಬೆಕ್ಕೊಂಬೆಲ್ಲಾ..<br>\r\nಕಿನಾವು ಕಂಡ್ ಕೊಸಿಲ್ ಲೆಂಗ್ ರೊ ಆ ಮೈಲಾಂಜಿರೊ,<br>\r\nನಂಡೆ ಕಣ್ಣ್ ಲ್ ನಕ್ಕ್ ನೋಕಿ ಸಧಿಕ್ಕೊಗಾಯೊಂಟಿಲ್ಲೆ..!!<br><br>\r\n\r\nಕಾಸಿ ,ಬಂಗಾರ್ ಎಡ್ಕ್ರೊ<br>\r\nಈ ಶೋಕಿರೊ ನಾಲ್ ಲ್<br>\r\nನಂಡೊ ಪೊಲ್ತೊ ಪಾವತೊ<br>\r\nಪೆಣ್ಣ್ ಮಕ್ಕಲೆಅವಸ್ಥೆ ಇತ್ತೆರೆಮೆ..!!<br><br>\r\n\r\n<b>\r\nN.Raaz ಕೋಟೆಕಣಿ\r\n(ಚೊಕಲೇಟ್ ಬೊಯ್)</b>\r\n', 'uploadarticle/88b02d8cc13c22667da4349020720546.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `text` varchar(4000) NOT NULL,
  `u_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `email`, `text`, `u_id`) VALUES
(15, 'beary@user.com', '      	last try', 1),
(19, 'bearyadmin@gmail.com', '      	ok bye', 1),
(20, 'beary@user.com', '      	nice', 5),
(23, 'mashhuss@gmail.com', '\r\n      	wcee', 5);

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `g_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `g_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `vcn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`g_id`, `name`, `image`, `video`, `vcn`) VALUES
(13, 'A', 'uploadimg/A.jpg', 'uploadVideo/A.mp4', 'vowels'),
(14, 'Aa', 'uploadimg/Aa.jpg', 'uploadVideo/Aa.mp4', 'vowels'),
(16, 'I', 'uploadimg/I.jpg', 'uploadVideo/I.mp4', 'vowels'),
(17, 'Ii', 'uploadimg/Ii.jpg', 'uploadVideo/Ii.mp4', 'vowels'),
(18, 'U', 'uploadimg/U.jpg', 'uploadVideo/U.mp4', 'vowels'),
(19, 'Uu', 'uploadimg/Uu.jpg', 'uploadVideo/Uu.mp4', 'vowels'),
(20, 'E', 'uploadimg/E.jpg', 'uploadVideo/E.mp4', 'vowels'),
(21, 'Ee', 'uploadimg/Ee.jpg', 'uploadVideo/Ee.mp4', 'vowels'),
(22, 'Ai', 'uploadimg/Ai.jpg', 'uploadVideo/Ai.mp4', 'vowels'),
(23, 'O', 'uploadimg/O.jpg', 'uploadVideo/O.mp4', 'vowels'),
(24, 'Oo', 'uploadimg/Oo.jpg', 'uploadVideo/Oo.mp4', 'vowels'),
(25, 'Au', 'uploadimg/Au.jpg', 'uploadVideo/Au.mp4', 'vowels'),
(26, 'Ah', 'uploadimg/Ah.jpg', 'uploadVideo/Ah.mp4', 'vowels'),
(27, '0', 'uploadimg/0.jpg', 'uploadVideo/0.mp4', 'numbers'),
(28, '1', 'uploadimg/1.jpg', 'uploadVideo/1.mp4', 'numbers'),
(29, '2', 'uploadimg/2.jpg', 'uploadVideo/2.mp4', 'numbers'),
(37, '3', 'uploadimg/3.jpg', 'uploadVideo/3.mp4', 'numbers'),
(38, '4', 'uploadimg/4.jpg', 'uploadVideo/4.mp4', 'numbers'),
(39, '5', 'uploadimg/5.jpg', 'uploadVideo/5.mp4', 'numbers'),
(40, '6', 'uploadimg/6.jpg', 'uploadVideo/6.mp4', 'numbers'),
(41, '7', 'uploadimg/7.jpg', 'uploadVideo/7.mp4', 'numbers'),
(42, '8', 'uploadimg/8.jpg', 'uploadVideo/8.mp4', 'numbers'),
(43, '9', 'uploadimg/9.jpg', 'uploadVideo/9.mp4', 'numbers'),
(44, 'Ya', 'uploadimg/Ya.jpg', 'uploadVideo/Ya.mp4', 'lconsonents'),
(45, 'Ra', 'uploadimg/Ra.jpg', 'uploadVideo/Ra.mp4', 'lconsonents'),
(46, 'Lla', 'uploadimg/Lla.jpg', 'uploadVideo/Lla.mp4', 'lconsonents'),
(47, 'Va', 'uploadimg/Va.jpg', 'uploadVideo/Va.mp4', 'lconsonents'),
(48, 'Sha', 'uploadimg/Sha.jpg', 'uploadVideo/Sha.mp4', 'lconsonents'),
(49, 'Sa', 'uploadimg/Sa.jpg', 'uploadVideo/Sa.mp4', 'lconsonents'),
(50, 'Ha', 'uploadimg/Ha.jpg', 'uploadVideo/Ha.mp4', 'lconsonents'),
(51, 'La', 'uploadimg/La.jpg', 'uploadVideo/La.mp4', 'lconsonents'),
(52, 'Ka', 'uploadimg/Ka.jpg', 'uploadVideo/Ka.mp4', 'consonents'),
(53, 'Kha', 'uploadimg/Kha.jpg', 'uploadVideo/Kha.mp4', 'consonents'),
(54, 'Ga', 'uploadimg/Ga.jpg', 'uploadVideo/Ga.mp4', 'consonents'),
(55, 'Gha', 'uploadimg/Gha.jpg', 'uploadVideo/Gha.mp4', 'consonents'),
(56, 'Nja', 'uploadimg/Nga.jpg', 'uploadVideo/Nga.mp4', 'consonents'),
(57, 'Ca', 'uploadimg/Ca.jpg', 'uploadVideo/Cha.mp4', 'consonents'),
(58, 'Cha', 'uploadimg/Cha.jpg', 'uploadVideo/Cha.mp4', 'consonents'),
(59, 'Ja', 'uploadimg/Ja.jpg', 'uploadVideo/Ja.mp4', 'consonents'),
(60, 'Jha', 'uploadimg/Jha.jpg', 'uploadVideo/Jha.mp4', 'consonents'),
(61, 'Jna', 'uploadimg/Jna.jpg', 'uploadVideo/Jna.mp4', 'consonents'),
(62, 'Ta', 'uploadimg/Ta.jpg', 'uploadVideo/Ta.mp4', 'consonents'),
(63, 'Tta', 'uploadimg/Tha.jpg', 'uploadVideo/Tha.mp4', 'consonents'),
(64, 'Da', 'uploadimg/Da.jpg', 'uploadVideo/Da.mp4', 'consonents'),
(65, 'Dda', 'uploadimg/Dha.jpg', 'uploadVideo/Dha.mp4', 'consonents'),
(66, 'Nna', 'uploadimg/Nna.jpg', 'uploadVideo/Nna.mp4', 'consonents'),
(67, 'Tha', 'uploadimg/Tta.jpg', 'uploadVideo/Tta.mp4', 'consonents'),
(68, 'Ttha', 'uploadimg/Ttha.jpg', 'uploadVideo/Ttha.mp4', 'consonents'),
(69, 'Dha', 'uploadimg/Dda.jpg', 'uploadVideo/Dda.mp4', 'consonents'),
(70, 'Ddha', 'uploadimg/Ddha.jpg', 'uploadVideo/Ddha.mp4', 'consonents'),
(71, 'Na', 'uploadimg/Na.jpg', 'uploadVideo/Na.mp4', 'consonents'),
(72, 'Pa', 'uploadimg/Pa.jpg', 'uploadVideo/Pa.mp4', 'consonents'),
(73, 'Pha', 'uploadimg/Pha.jpg', 'uploadVideo/Pha.mp4', 'consonents'),
(74, 'Ba', 'uploadimg/Ba.jpg', 'uploadVideo/Ba.mp4', 'consonents'),
(75, 'Bha', 'uploadimg/Bha.jpg', 'uploadVideo/Bha.mp4', 'consonents'),
(76, 'Ma', 'uploadimg/Ma.jpg', 'uploadVideo/Ma.mp4', 'consonents');

-- --------------------------------------------------------

--
-- Table structure for table `kagunithas`
--

CREATE TABLE `kagunithas` (
  `k_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `k_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kagunithas`
--

INSERT INTO `kagunithas` (`k_id`, `name`, `image`, `k_name`) VALUES
(2, 'Ka', 'uploadimg/IMG_20210621_134951.jpg', 'Kaa'),
(3, 'Ka', 'uploadimg/IMG_20210621_135021.jpg', 'ki'),
(4, 'Ka', 'uploadimg/IMG_20210621_135059.jpg', 'Kii'),
(5, 'Ka', 'uploadimg/IMG_20210621_135223.jpg', 'Ku'),
(6, 'Ka', 'uploadimg/IMG_20210621_135300.jpg', 'Kuu'),
(7, 'Ka', 'uploadimg/IMG_20210621_135336.jpg', 'Ke'),
(8, 'Ka', 'uploadimg/IMG_20210621_135429.jpg', 'Kee'),
(9, 'Ka', 'uploadimg/IMG_20210621_135528.jpg', 'Kai'),
(10, 'Ka', 'uploadimg/IMG_20210621_135611.jpg', 'Ko'),
(11, 'Ka', 'uploadimg/IMG_20210621_135641.jpg', 'Koo'),
(12, 'Ka', 'uploadimg/IMG_20210621_135723.jpg', 'Kau'),
(13, 'Ka', 'uploadimg/IMG_20210621_135747.jpg', 'Kh'),
(14, 'Kha', 'uploadimg/IMG_20210621_134951.jpg', 'Khaa'),
(15, 'Kha', 'uploadimg/IMG_20210622_223408.jpg', 'Khe'),
(16, 'Kha', 'uploadimg/IMG_20210622_223503.jpg', 'Khee'),
(17, 'Kha', 'uploadimg/IMG_20210622_223535.jpg', 'Khu'),
(18, 'Kha', 'uploadimg/IMG_20210622_223607.jpg', 'Khuu'),
(19, 'Kha', 'uploadimg/IMG_20210622_223644.jpg', 'Khe'),
(20, 'kha', 'uploadimg/IMG_20210622_223729.jpg', 'Khee'),
(21, 'Kha', 'uploadimg/IMG_20210622_223808.jpg', 'Khai'),
(22, 'Kha', 'uploadimg/IMG_20210622_223846.jpg', 'Kho'),
(23, 'Kha', 'uploadimg/IMG_20210622_223958.jpg', 'Khoo'),
(24, 'Kha', 'uploadarticle/IMG_20210622_224029.jpg', 'Khau'),
(25, 'Kha', 'uploadarticle/IMG_20210622_224112.jpg', 'Khh'),
(26, 'Ga', 'uploadarticle/IMG_20210622_224216.jpg', 'Gaa'),
(27, 'Ga', 'uploadarticle/IMG_20210622_224250.jpg', 'Ghe'),
(28, 'Ga', 'uploadarticle/IMG_20210622_224331.jpg', 'Ghee'),
(29, 'Ga', 'uploadimg/IMG_20210622_224423.jpg', 'Ghu'),
(30, 'Ga', 'uploadarticle/IMG_20210622_224520.jpg', 'Guu'),
(31, 'Ga', 'uploadarticle/IMG_20210622_224602.jpg', 'Ge'),
(32, 'Ga', 'uploadarticle/IMG_20210622_224632.jpg', 'Gee'),
(33, 'Ga', 'uploadarticle/IMG_20210622_224701.jpg', 'Gai'),
(34, 'Ga', 'uploadarticle/IMG_20210622_224735.jpg', 'Go'),
(35, 'Ga', 'uploadarticle/IMG_20210622_224814.jpg', 'Goo'),
(36, 'Ga', 'uploadarticle/IMG_20210622_224846.jpg', 'Gau'),
(37, 'Ga', 'uploadarticle/IMG_20210622_224913.jpg', 'Gh'),
(38, 'Gha', 'uploadarticle/IMG_20210622_225020.jpg', 'Ghaa'),
(39, 'Gha', 'uploadarticle/IMG_20210622_225059.jpg', 'Ghi'),
(41, 'Gha', 'uploadarticle/IMG_20210622_225133.jpg', 'Ghii'),
(42, 'Gha', 'uploadarticle/IMG_20210622_225202.jpg', 'Ghu'),
(43, 'Gha', 'uploadarticle/IMG_20210622_225239.jpg', 'Ghuu'),
(44, 'Gha', 'uploadarticle/IMG_20210622_225309.jpg', 'Ghe'),
(45, 'Gha', 'uploadarticle/IMG_20210622_225336.jpg', 'Ghee'),
(46, 'Gha', 'uploadarticle/IMG_20210622_225411.jpg', 'Ghai'),
(47, 'Gha', 'uploadarticle/IMG_20210622_225440.jpg', 'Gho'),
(48, 'Gha', 'uploadarticle/IMG_20210622_225506.jpg', 'Ghoo'),
(49, 'Gha', 'uploadarticle/IMG_20210622_225543.jpg', 'Ghai'),
(50, 'Gha', 'uploadarticle/IMG_20210622_225611.jpg', 'Ghh'),
(51, 'Nja', 'uploadarticle/IMG_20210622_225644.jpg', 'Njaa'),
(52, 'Nja', 'uploadarticle/IMG_20210622_225744.jpg', 'Nje'),
(53, 'Nja', 'uploadarticle/IMG_20210622_225823.jpg', 'Njee'),
(54, 'Nja', 'uploadarticle/IMG_20210622_225905.jpg', 'Nju'),
(55, 'Nja', 'uploadarticle/IMG_20210622_225934.jpg', 'Njuu'),
(56, 'Nja', 'uploadarticle/IMG_20210622_230020.jpg', 'Nje'),
(57, 'Nja', 'uploadarticle/IMG_20210622_230057.jpg', 'Njee'),
(58, 'Nja', 'uploadarticle/IMG_20210622_230126.jpg', 'Njai'),
(59, 'Nja', 'uploadarticle/IMG_20210622_230155.jpg', 'Njo'),
(60, 'Nja', 'uploadarticle/IMG_20210622_230231.jpg', 'Njoo'),
(61, 'Nja', 'uploadarticle/IMG_20210622_230257.jpg', 'Njau'),
(62, 'Nja', 'uploadarticle/IMG_20210622_230315.jpg', 'Njh'),
(63, 'Ca', 'uploadarticle/IMG_20210624_102429.jpg', 'Caa'),
(64, 'Ca', 'uploadarticle/IMG_20210624_102629.jpg', 'Ci'),
(65, 'Ca', 'uploadarticle/IMG_20210624_102729.jpg', 'Cii'),
(66, 'Ca', 'uploadarticle/IMG_20210624_102853.jpg', 'cu'),
(67, 'Ca', 'uploadarticle/IMG_20210624_102951.jpg', 'Cuu'),
(68, 'Ca', 'uploadarticle/IMG_20210624_103036.jpg', 'Ce'),
(69, 'Ca', 'uploadarticle/IMG_20210624_103209.jpg', 'Cee'),
(70, 'Ca', 'uploadarticle/IMG_20210624_103328.jpg', 'Cai'),
(71, 'Ca', 'uploadarticle/IMG_20210624_103424.jpg', 'Co'),
(72, 'Ca', 'uploadarticle/IMG_20210624_103519.jpg', 'Coo'),
(73, 'Ca', 'uploadarticle/IMG_20210624_103707.jpg', 'Cau'),
(74, 'Ca', 'uploadarticle/IMG_20210624_103834.jpg', 'Ch'),
(75, 'Cha', 'uploadarticle/IMG_20210624_104254.jpg', 'Chaa'),
(76, 'Cha', 'uploadarticle/IMG_20210624_104417.jpg', 'Chi'),
(77, 'Cha', 'uploadarticle/IMG_20210624_104521.jpg', 'Chii'),
(78, 'Cha', 'uploadarticle/IMG_20210624_104614.jpg', 'Chu'),
(79, 'Cha', 'uploadarticle/IMG_20210624_104926.jpg', 'chuu'),
(80, 'Cha', 'uploadarticle/IMG_20210624_105026.jpg', 'Che'),
(81, 'Cha', 'uploadarticle/IMG_20210625_202919.jpg', 'Chee'),
(82, 'Cha', 'uploadarticle/IMG_20210624_105239.jpg', 'Chai'),
(83, 'Cha', 'uploadarticle/IMG_20210624_105435.jpg', 'Cho'),
(84, 'Cha', 'uploadarticle/IMG_20210624_105521.jpg', 'Choo'),
(85, 'Cha', 'uploadarticle/IMG_20210624_105630.jpg', 'Chau'),
(86, 'Cha', 'uploadarticle/IMG_20210624_105718.jpg', 'Chh'),
(87, 'Ja', 'uploadarticle/IMG_20210625_111429.jpg', 'Jaa'),
(88, 'Ja', 'uploadarticle/IMG_20210625_111515.jpg', 'Ji'),
(89, 'Ja', 'uploadarticle/IMG_20210625_111557.jpg', 'Jii'),
(90, 'Ja', 'uploadarticle/IMG_20210625_111636.jpg', 'Ju'),
(91, 'Ja', 'uploadarticle/IMG_20210625_111715.jpg', 'Juu'),
(92, 'Ja', 'uploadarticle/IMG_20210625_111755.jpg', 'Je'),
(93, 'Ja', 'uploadarticle/IMG_20210625_111840.jpg', 'Jee'),
(94, 'Ja', 'uploadarticle/IMG_20210625_111919.jpg', 'Jai'),
(95, 'Ja', 'uploadarticle/IMG_20210625_111958.jpg', 'Jo'),
(96, 'Ja', 'uploadarticle/IMG_20210625_203655.jpg', 'Joo'),
(97, 'Ja', 'uploadarticle/IMG_20210625_112152.jpg', 'Jau'),
(98, 'Ja', 'uploadarticle/IMG_20210625_112246.jpg', 'Jh'),
(99, 'Jha', 'uploadarticle/IMG_20210625_112839.jpg', 'Jhaa'),
(100, 'Jha', 'uploadarticle/IMG_20210625_203857.jpg', 'Jhi'),
(101, 'Jha', 'uploadarticle/IMG_20210625_203946.jpg', 'Jhii'),
(102, 'Jha', 'uploadarticle/IMG_20210625_113352.jpg', 'Jhu'),
(103, 'Jha', 'uploadarticle/IMG_20210625_113500.jpg', 'Jhuu'),
(104, 'Jha', 'uploadarticle/IMG_20210625_113614.jpg', 'Jhe'),
(105, 'Jha', 'uploadarticle/IMG_20210625_113726.jpg', 'Jhee'),
(106, 'Jha', 'uploadarticle/IMG_20210625_113819.jpg', 'Jhai'),
(107, 'Jha', 'uploadarticle/IMG_20210625_113910.jpg', 'Jho'),
(108, 'Jha', 'uploadarticle/IMG_20210625_114227.jpg', 'Jhoo'),
(109, 'Jha', 'uploadarticle/IMG_20210625_114335.jpg', 'Jhau'),
(110, 'Jha', 'uploadarticle/IMG_20210625_114438.jpg', 'Jhh'),
(111, 'Jna', 'uploadarticle/IMG_20210625_204343.jpg', 'Jnaa'),
(112, 'Jna', 'uploadarticle/IMG_20210625_204409.jpg', 'Jni'),
(113, 'Jna', 'uploadarticle/IMG_20210625_204440.jpg', 'Jnii'),
(114, 'Jna', 'uploadarticle/IMG_20210625_204514.jpg', 'Jnu'),
(115, 'Jna', 'uploadarticle/IMG_20210625_204545.jpg', 'Jnuu'),
(116, 'Jna', 'uploadarticle/IMG_20210625_204613.jpg', 'Jne'),
(117, 'Jna', 'uploadarticle/IMG_20210625_204642.jpg', 'Jnee'),
(118, 'Jna', 'uploadarticle/IMG_20210625_204714.jpg', 'Jnai'),
(119, 'Jna', 'uploadarticle/IMG_20210625_204736.jpg', 'Jno'),
(120, 'Jna', 'uploadarticle/IMG_20210625_204801.jpg', 'Jnoo'),
(121, 'Jna', 'uploadarticle/IMG_20210625_204830.jpg', 'Jnau'),
(122, 'Jna', 'uploadarticle/IMG_20210625_204851.jpg', 'Jnh'),
(123, 'Ta', 'uploadarticle/IMG_20210624_102638.jpg', 'Taa'),
(124, 'Ta', 'uploadarticle/IMG_20210624_103503.jpg', 'Ti'),
(125, 'Ta', 'uploadarticle/IMG_20210624_103546.jpg', 'Tii'),
(126, 'Ta', 'uploadarticle/IMG_20210624_103628.jpg', 'Tu'),
(127, 'Ta', 'uploadarticle/IMG_20210624_103917.jpg', 'Tuu'),
(128, 'Ta', 'uploadarticle/IMG_20210624_104032.jpg', 'Te'),
(129, 'Ta', 'uploadarticle/IMG_20210624_104111.jpg', 'Tee'),
(130, 'Ta', 'uploadarticle/IMG_20210624_104246.jpg', 'Tai'),
(131, 'Ta', 'uploadarticle/IMG_20210625_205852.jpg', 'To'),
(132, 'Ta', 'uploadarticle/IMG_20210625_205928.jpg', 'Too'),
(133, 'Ta', 'uploadarticle/IMG_20210624_104352.jpg', 'Tau'),
(134, 'Ta', 'uploadarticle/IMG_20210624_104445.jpg', 'Th'),
(135, 'Tta', 'uploadarticle/IMG_20210624_104658.jpg', 'Ttaa'),
(136, 'Tta', 'uploadarticle/IMG_20210624_104802.jpg', 'Tti'),
(137, 'Tta', 'uploadarticle/IMG_20210624_110251.jpg', 'Ttii'),
(138, 'Tta', 'uploadarticle/IMG_20210624_110350.jpg', 'Ttu'),
(139, 'Tta', 'uploadarticle/IMG_20210624_110446.jpg', 'Ttuu'),
(140, 'Tta', 'uploadarticle/IMG_20210624_111021.jpg', 'Tte'),
(141, 'Tta', 'uploadarticle/IMG_20210624_111106.jpg', 'Ttee'),
(142, 'Tta', 'uploadarticle/IMG_20210624_111157.jpg', 'Ttai'),
(143, 'Tta', 'uploadarticle/IMG_20210624_111318.jpg', 'Tto'),
(144, 'Tta', 'uploadarticle/IMG_20210624_111429.jpg', 'Ttoo'),
(145, 'Tta', 'uploadarticle/IMG_20210624_111558.jpg', 'Ttau'),
(146, 'Tta', 'uploadarticle/IMG_20210624_111848.jpg', 'Tth'),
(147, 'Da', 'uploadarticle/IMG_20210624_112033.jpg', 'Daa'),
(148, 'Da', 'uploadarticle/IMG_20210624_112119.jpg', 'Di'),
(149, 'Da', 'uploadarticle/IMG_20210624_112156.jpg', 'Dii'),
(150, 'Da', 'uploadarticle/IMG_20210624_112303.jpg', 'Du'),
(151, 'Da', 'uploadarticle/IMG_20210624_112353.jpg', 'Duu'),
(152, 'Da', 'uploadarticle/IMG_20210624_112434.jpg', 'De'),
(153, 'Da', 'uploadarticle/IMG_20210624_113022.jpg', 'Dee'),
(154, 'Da', 'uploadarticle/IMG_20210624_113053.jpg', 'Dai'),
(155, 'Da', 'uploadarticle/IMG_20210624_113305.jpg', 'Do'),
(156, 'Da', 'uploadarticle/IMG_20210624_113415.jpg', 'Doo'),
(157, 'Da', 'uploadarticle/IMG_20210624_113640.jpg', 'Dau'),
(158, 'Da', 'uploadarticle/IMG_20210624_114655.jpg', 'Dh'),
(159, 'Dda', 'uploadarticle/IMG_20210626_113210.jpg', 'Ddaa'),
(160, 'Dda', 'uploadarticle/IMG_20210626_113234.jpg', 'Ddi'),
(161, 'Dda', 'uploadarticle/IMG_20210626_113311.jpg', 'Ddii'),
(162, 'Dda', 'uploadarticle/IMG_20210626_113411.jpg', 'Ddu'),
(163, 'Dda', 'uploadarticle/IMG_20210626_113440.jpg', 'Dduu'),
(164, 'Dda', 'uploadarticle/IMG_20210626_113519.jpg', 'Dde'),
(165, 'Dda', 'uploadarticle/IMG_20210626_113559.jpg', 'Ddee'),
(166, 'Dda', 'uploadarticle/IMG_20210626_113637.jpg', 'Ddai'),
(167, 'Dda', 'uploadarticle/IMG_20210626_113709.jpg', 'Ddo'),
(168, 'Dda', 'uploadarticle/IMG_20210626_113752.jpg', 'Ddoo'),
(169, 'Dda', 'uploadarticle/IMG_20210626_113819.jpg', 'Ddau'),
(170, 'Dda', 'uploadarticle/IMG_20210626_113852.jpg', 'Ddh'),
(171, 'Nna', 'uploadarticle/IMG_20210626_114834.jpg', 'Nnaa'),
(172, 'Nna', 'uploadarticle/IMG_20210626_114004.jpg', 'Nni'),
(173, 'Nna', 'uploadarticle/IMG_20210626_114034.jpg', 'Nnii'),
(174, 'Nna', 'uploadarticle/IMG_20210626_114144.jpg', 'Nnu'),
(175, 'Nna', 'uploadarticle/IMG_20210626_114315.jpg', 'Nnuu'),
(176, 'Nna', 'uploadarticle/IMG_20210626_114352.jpg', 'Nne'),
(177, 'Nna', 'uploadarticle/IMG_20210626_114444.jpg', 'Nnee'),
(178, 'Nna', 'uploadarticle/IMG_20210626_114517.jpg', 'Nnai'),
(179, 'Nna', 'uploadarticle/IMG_20210626_114601.jpg', 'Nno'),
(180, 'Nna', 'uploadarticle/IMG_20210626_114642.jpg', 'Nnoo'),
(181, 'Nna', 'uploadarticle/IMG_20210626_114710.jpg', 'Nnau'),
(182, 'Nna', 'uploadarticle/IMG_20210626_114740.jpg', 'Nnh'),
(183, 'Tha', 'uploadarticle/IMG_20210625_123722.jpg', 'Thaa'),
(184, 'Tha', 'uploadarticle/IMG_20210625_123806.jpg', 'Thi'),
(185, 'Tha', 'uploadarticle/IMG_20210625_123928.jpg', 'Thii'),
(186, 'Tha', 'uploadarticle/IMG_20210625_124011.jpg', 'Thu'),
(187, 'Tha', 'uploadarticle/IMG_20210625_124057.jpg', 'Thuu'),
(188, 'Tha', 'uploadarticle/IMG_20210625_124431.jpg', 'The'),
(189, 'Tha', 'uploadarticle/IMG_20210625_124532.jpg', 'Thee'),
(190, 'Tha', 'uploadarticle/IMG_20210625_124650.jpg', 'Thai'),
(191, 'Tha', 'uploadarticle/IMG_20210625_124744.jpg', 'Tho'),
(192, 'Tha', 'uploadarticle/IMG_20210625_124911.jpg', 'Thoo'),
(193, 'Tha', 'uploadarticle/IMG_20210625_125016.jpg', 'Thau'),
(194, 'Tha', 'uploadarticle/IMG_20210625_125251.jpg', 'Thh'),
(195, 'Ttha', 'uploadarticle/IMG_20210625_125556.jpg', 'Tthaa'),
(196, 'Ttha', 'uploadarticle/IMG_20210625_125645.jpg', 'Tthi'),
(197, 'Ttha', 'uploadarticle/IMG_20210625_125739.jpg', 'Tthii'),
(198, 'Ttha', 'uploadarticle/IMG_20210625_125837.jpg', 'Tthu'),
(199, 'Ttha', 'uploadarticle/IMG_20210626_123840.jpg', 'Tthuu'),
(200, 'Ttha', 'uploadarticle/IMG_20210625_130229.jpg', 'Tthe'),
(201, 'Ttha', 'uploadarticle/IMG_20210625_130330.jpg', 'Tthee'),
(202, 'Ttha', 'uploadarticle/IMG_20210626_123756.jpg', 'Tthai'),
(203, 'Ttha', 'uploadarticle/IMG_20210625_130508.jpg', 'Ttho'),
(204, 'Ttha', 'uploadarticle/IMG_20210625_130608.jpg', 'Tthoo'),
(205, 'Ttha', 'uploadarticle/IMG_20210625_130651.jpg', 'Tthau'),
(206, 'Ttha', 'uploadarticle/IMG_20210625_130847.jpg', 'Tthh'),
(207, 'Dha', 'uploadarticle/IMG_20210626_125457.jpg', 'Dhaa'),
(208, 'Dha', 'uploadarticle/IMG_20210626_125608.jpg', 'Dhi'),
(209, 'Dha', 'uploadarticle/IMG_20210626_125632.jpg', 'Dhii'),
(210, 'Dha', 'uploadarticle/IMG_20210626_125705.jpg', 'Dhu'),
(211, 'Dha', 'uploadarticle/IMG_20210626_125729.jpg', 'Dhuu'),
(212, 'Dha', 'uploadarticle/IMG_20210626_125755.jpg', 'Dhe'),
(213, 'Dha', 'uploadarticle/IMG_20210626_125834.jpg', 'Dhee'),
(214, 'Dha', 'uploadarticle/IMG_20210626_130302.jpg', 'Dhai'),
(215, 'Dha', 'uploadarticle/IMG_20210626_125916.jpg', 'Dho'),
(216, 'Dha', 'uploadarticle/IMG_20210626_125946.jpg', 'Dhoo'),
(217, 'Dha', 'uploadarticle/IMG_20210626_130046.jpg', 'Dhau'),
(218, 'Dha', 'uploadarticle/IMG_20210626_130113.jpg', 'Dhh'),
(219, 'Ddha', 'uploadarticle/IMG_20210626_130415.jpg', 'Ddha'),
(220, 'Ddha', 'uploadarticle/IMG_20210626_130443.jpg', 'Ddhi'),
(221, 'Ddha', 'uploadarticle/IMG_20210626_130507.jpg', 'Ddhii'),
(222, 'Ddha', 'uploadarticle/IMG_20210626_130534.jpg', 'Ddhu'),
(223, 'Ddha', 'uploadarticle/IMG_20210626_130607.jpg', 'Ddhuu'),
(224, 'Ddha', 'uploadarticle/IMG_20210626_131002.jpg', 'Ddhe'),
(225, 'Ddha', 'uploadarticle/IMG_20210626_131134.jpg', 'Ddhee'),
(226, 'Ddha', 'uploadarticle/IMG_20210625_131836.jpg', 'Ddhai'),
(227, 'Ddha', 'uploadarticle/IMG_20210626_130709.jpg', 'Ddho'),
(228, 'Ddha', 'uploadarticle/IMG_20210626_130746.jpg', 'Ddhoo'),
(229, 'Ddha', 'uploadarticle/IMG_20210626_130811.jpg', 'Ddhau'),
(230, 'Ddha', 'uploadarticle/IMG_20210626_130834.jpg', 'Ddhh'),
(231, 'Na', 'uploadarticle/IMG_20210625_132453.jpg', 'Naa'),
(232, 'Na', 'uploadarticle/IMG_20210625_132601.jpg', 'Ni'),
(233, 'Na', 'uploadarticle/IMG_20210625_132658.jpg', 'Nii'),
(234, 'Na', 'uploadarticle/IMG_20210625_132741.jpg', 'Nu'),
(235, 'Na', 'uploadarticle/IMG_20210625_132830.jpg', 'Nuu'),
(236, 'Na', 'uploadarticle/IMG_20210625_132947.jpg', 'Ne'),
(237, 'Na', 'uploadarticle/IMG_20210625_133045.jpg', 'Nee'),
(238, 'Na', 'uploadarticle/IMG_20210626_124123.jpg', 'Nai'),
(239, 'Na', 'uploadarticle/IMG_20210625_133230.jpg', 'No'),
(240, 'Na', 'uploadarticle/IMG_20210625_133317.jpg', 'Noo'),
(241, 'Na', 'uploadarticle/IMG_20210625_133416.jpg', 'Nau'),
(242, 'Na', 'uploadarticle/IMG_20210625_133505.jpg', 'Nh'),
(243, 'Pa', 'uploadarticle/IMG_20210625_151925.jpg', 'Paa'),
(245, 'Pa', 'uploadarticle/IMG_20210625_152014.jpg', 'Pi'),
(246, 'Pa', 'uploadarticle/IMG_20210625_152118.jpg', 'Pii'),
(247, 'Pa', 'uploadarticle/IMG_20210625_152244.jpg', 'Pu'),
(248, 'Pa', 'uploadarticle/IMG_20210625_152353.jpg', 'Puu'),
(249, 'Pa', 'uploadarticle/IMG_20210625_152437.jpg', 'Pe'),
(250, 'Pa', 'uploadarticle/IMG_20210625_152529.jpg', 'Pee'),
(251, 'Pa', 'uploadarticle/IMG_20210625_152612.jpg', 'Pai'),
(252, 'Pa', 'uploadarticle/IMG_20210625_152740.jpg', 'Po'),
(253, 'Pa', 'uploadarticle/IMG_20210625_152824.jpg', 'Poo'),
(254, 'Pa', 'uploadimg/IMG_20210625_152919.jpg', 'Pau'),
(255, 'Pa', 'uploadarticle/IMG_20210625_153231.jpg', 'Ph'),
(256, 'Pha', 'uploadarticle/IMG_20210626_134431.jpg', 'Phaa'),
(257, 'Pha', 'uploadarticle/IMG_20210626_134459.jpg', 'Phi'),
(258, 'Pha', 'uploadimg/IMG_20210626_134538.jpg', 'Phii'),
(259, 'Pha', 'uploadarticle/IMG_20210626_140117.jpg', 'Phu'),
(260, 'Pha', 'uploadarticle/IMG_20210626_140107.jpg', 'Phuu'),
(261, 'Pha', 'uploadarticle/IMG_20210626_134941.jpg', 'Phe'),
(262, 'Pha', 'uploadarticle/IMG_20210626_135242.jpg', 'Phee'),
(263, 'Pha', 'uploadarticle/IMG_20210626_135312.jpg', 'Phai'),
(264, 'Pha', 'uploadimg/IMG_20210626_135408.jpg', 'Pho'),
(265, 'Pha', 'uploadimg/IMG_20210626_135441.jpg', 'Phoo'),
(266, 'Pha', 'uploadimg/IMG_20210626_140023.jpg', 'Phau'),
(267, 'Pha', 'uploadarticle/IMG_20210626_140053.jpg', 'Phh'),
(268, 'Ba', 'uploadarticle/IMG_20210626_140200.jpg', 'Baa'),
(269, 'Ba', 'uploadarticle/IMG_20210626_140221.jpg', 'Bi'),
(270, 'Ba', 'uploadarticle/IMG_20210626_140252.jpg', 'Bii'),
(271, 'Ba', 'uploadimg/IMG_20210626_140315.jpg', 'Bu'),
(272, 'Ba', 'uploadarticle/IMG_20210626_140343.jpg', 'Buu'),
(273, 'Ba', 'uploadarticle/IMG_20210626_140407.jpg', 'Be'),
(274, 'Ba', 'uploadarticle/IMG_20210626_140430.jpg', 'Bee'),
(275, 'Ba', 'uploadimg/IMG_20210626_153812.jpg', 'Bai'),
(276, 'Ba', 'uploadarticle/IMG_20210626_140520.jpg', 'Bo'),
(277, 'Ba', 'uploadarticle/IMG_20210626_140552.jpg', 'Boo'),
(278, 'Ba', 'uploadarticle/IMG_20210626_140658.jpg', 'Bau'),
(279, 'Ba', 'uploadarticle/IMG_20210626_140723.jpg', 'Bh'),
(280, 'Bha', 'uploadarticle/IMG_20210626_141050.jpg', 'Bhaa'),
(281, 'Bha', 'uploadarticle/IMG_20210626_141821.jpg', 'Bhi'),
(282, 'Bha', 'uploadimg/IMG_20210626_141851.jpg', 'Bhii'),
(283, 'Bha', 'uploadarticle/IMG_20210626_141916.jpg', 'Bhu'),
(284, 'Bha', 'uploadarticle/IMG_20210626_141952.jpg', 'Bhuu'),
(285, 'Bha', 'uploadarticle/IMG_20210626_142019.jpg', 'Bhe'),
(286, 'Bha', 'uploadarticle/IMG_20210626_142051.jpg', 'Bhee'),
(287, 'Bha', 'uploadarticle/IMG_20210626_142114.jpg', 'Bhai'),
(288, 'Bha', 'uploadarticle/IMG_20210626_142134.jpg', 'Bho'),
(289, 'Bha', 'uploadarticle/IMG_20210626_142200.jpg', 'Bhoo'),
(290, 'Bha', 'uploadarticle/IMG_20210626_142218.jpg', 'Bhau'),
(291, 'Bha', 'uploadarticle/IMG_20210626_142241.jpg', 'Bhh'),
(292, 'Ma', 'uploadarticle/IMG_20210625_182800.jpg', 'Maa'),
(293, 'Ma', 'uploadarticle/IMG_20210625_182901.jpg', 'Mi'),
(294, 'Ma', 'uploadarticle/IMG_20210625_182956.jpg', 'Mii'),
(295, 'Ma', 'uploadarticle/IMG_20210625_183048.jpg', 'Mu'),
(296, 'Ma', 'uploadarticle/IMG_20210625_183127.jpg', 'Muu'),
(297, 'Ma', 'uploadarticle/IMG_20210625_183231.jpg', 'Me'),
(298, 'Ma', 'uploadarticle/IMG_20210625_183316.jpg', 'Mee'),
(299, 'Ma', 'uploadarticle/IMG_20210625_183354.jpg', 'Mai'),
(300, 'Ma', 'uploadarticle/IMG_20210625_183431.jpg', 'Mo'),
(301, 'Ma', 'uploadarticle/IMG_20210625_183506.jpg', 'Moo'),
(302, 'Ma', 'uploadarticle/IMG_20210625_183547.jpg', 'Mau'),
(303, 'Ma', 'uploadarticle/IMG_20210625_183627.jpg', 'Mh'),
(305, 'Ya', 'uploadarticle/IMG_20210625_184122.jpg', 'Yaa'),
(306, 'Ya', 'uploadarticle/IMG_20210625_184200.jpg', 'Yi'),
(307, 'Ya', 'uploadarticle/IMG_20210625_184250.jpg', 'Yii'),
(308, 'Ya', 'uploadarticle/IMG_20210625_184329.jpg', 'Yu'),
(309, 'Ya', 'uploadarticle/IMG_20210625_184415.jpg', 'Yuu'),
(310, 'Ya', 'uploadarticle/IMG_20210625_184451.jpg', 'Ye'),
(311, 'Ya', 'uploadarticle/IMG_20210625_184653.jpg', 'Yee'),
(312, 'Ya', 'uploadarticle/IMG_20210625_184743.jpg', 'Yai'),
(313, 'Ya', 'uploadarticle/IMG_20210625_184836.jpg', 'Yo'),
(314, 'Ya', 'uploadarticle/IMG_20210625_184924.jpg', 'Yoo'),
(315, 'Ya', 'uploadarticle/IMG_20210625_185004.jpg', 'Yau'),
(316, 'Ya', 'uploadarticle/IMG_20210625_185039.jpg', 'Yh'),
(317, 'Ra', 'uploadarticle/IMG_20210626_192157.jpg', 'Raa'),
(318, 'Ra', 'uploadarticle/IMG_20210626_192801.jpg', 'Ri'),
(319, 'Ra', 'uploadarticle/IMG_20210626_192826.jpg', 'Rii'),
(320, 'Ra', 'uploadarticle/IMG_20210626_192214.jpg', 'Ru'),
(321, 'Ra', 'uploadarticle/IMG_20210626_192245.jpg', 'Ruu'),
(322, 'Ra', 'uploadarticle/IMG_20210626_192306.jpg', 'Re'),
(323, 'Ra', 'uploadarticle/IMG_20210626_192335.jpg', 'Ree'),
(324, 'Ra', 'uploadarticle/IMG_20210626_192418.jpg', 'Rai'),
(325, 'Ra', 'uploadarticle/IMG_20210626_192456.jpg', 'Ro'),
(326, 'Ra', 'uploadarticle/IMG_20210626_192526.jpg', 'Roo'),
(327, 'Ra', 'uploadarticle/IMG_20210626_192546.jpg', 'Rau'),
(328, 'Ra', 'uploadarticle/IMG_20210626_192611.jpg', 'Rh'),
(329, 'Lla', 'uploadarticle/IMG_20210625_195702.jpg', 'Llaa'),
(330, 'Lla', 'uploadarticle/IMG_20210625_195801.jpg', 'Lli'),
(331, 'Lla', 'uploadarticle/IMG_20210625_195839.jpg', 'Llii'),
(332, 'Lla', 'uploadarticle/IMG_20210625_195916.jpg', 'Llu'),
(333, 'Lla', 'uploadarticle/IMG_20210625_195954.jpg', 'Lluu'),
(334, 'Lla', 'uploadarticle/IMG_20210625_200033.jpg', 'Lle'),
(335, 'Lla', 'uploadarticle/IMG_20210625_200126.jpg', 'Llee'),
(336, 'Lla', 'uploadarticle/IMG_20210625_200156.jpg', 'Llai'),
(337, 'Lla', 'uploadarticle/IMG_20210625_200233.jpg', 'Llo'),
(338, 'Lla', 'uploadarticle/IMG_20210625_200308.jpg', 'Lloo'),
(339, 'Lla', 'uploadarticle/IMG_20210625_200342.jpg', 'Llau'),
(340, 'Lla', 'uploadarticle/IMG_20210625_200414.jpg', 'Llh'),
(341, 'Va', 'uploadarticle/IMG_20210625_190556.jpg', 'Vaa'),
(342, 'Va', 'uploadarticle/IMG_20210625_190640.jpg', 'Vi'),
(343, 'Va', 'uploadarticle/IMG_20210625_190729.jpg', 'Vii'),
(344, 'Va', 'uploadarticle/IMG_20210625_190814.jpg', 'Vu'),
(345, 'Va', 'uploadarticle/IMG_20210625_190905.jpg', 'Vuu'),
(346, 'Va', 'uploadarticle/IMG_20210625_190944.jpg', 'Ve'),
(347, 'Va', 'uploadarticle/IMG_20210625_191030.jpg', 'Vee'),
(348, 'Va', 'uploadarticle/IMG_20210625_191304.jpg', 'Vai'),
(349, 'Va', 'uploadarticle/IMG_20210625_191345.jpg', 'Vo'),
(350, 'Va', 'uploadarticle/IMG_20210625_191427.jpg', 'Voo'),
(351, 'Va', 'uploadarticle/IMG_20210625_191507.jpg', 'Vau'),
(352, 'Va', 'uploadarticle/IMG_20210625_191603.jpg', 'Vh'),
(353, 'Sha', 'uploadarticle/IMG_20210625_192332.jpg', 'Shaa'),
(354, 'Sha', 'uploadarticle/IMG_20210625_192412.jpg', 'Shi'),
(355, 'Sha', 'uploadarticle/IMG_20210625_192500.jpg', 'Shii'),
(356, 'Sha', 'uploadarticle/IMG_20210625_192531.jpg', 'Shu'),
(357, 'Sha', 'uploadarticle/IMG_20210625_192610.jpg', 'Shuu'),
(358, 'Sha', 'uploadarticle/IMG_20210625_192710.jpg', 'She'),
(359, 'Sha', 'uploadarticle/IMG_20210625_192749.jpg', 'Shee'),
(360, 'Sha', 'uploadarticle/IMG_20210625_192830.jpg', 'Shai'),
(361, 'Sha', 'uploadarticle/IMG_20210625_192925.jpg', 'Sho'),
(362, 'Sha', 'uploadarticle/IMG_20210625_193008.jpg', 'Shoo'),
(363, 'Sha', 'uploadarticle/IMG_20210625_193048.jpg', 'Shau'),
(364, 'Sha', 'uploadarticle/IMG_20210625_193125.jpg', 'Sh'),
(365, 'Sa', 'uploadarticle/IMG_20210625_193400.jpg', 'Saa'),
(366, 'Sa', 'uploadarticle/IMG_20210625_193433.jpg', 'Si'),
(367, 'Sa', 'uploadarticle/IMG_20210625_193513.jpg', 'Sii'),
(368, 'Sa', 'uploadarticle/IMG_20210625_193549.jpg', 'Su'),
(369, 'Sa', 'uploadarticle/IMG_20210625_193638.jpg', 'Suu'),
(370, 'Sa', 'uploadarticle/IMG_20210625_193729.jpg', 'Se'),
(371, 'Sa', 'uploadarticle/IMG_20210625_193805.jpg', 'See'),
(372, 'Sa', 'uploadarticle/IMG_20210625_193938.jpg', 'Sai'),
(373, 'Sa', 'uploadarticle/IMG_20210625_194015.jpg', 'So'),
(374, 'Sa', 'uploadarticle/IMG_20210625_194103.jpg', 'Soo'),
(375, 'Sa', 'uploadarticle/IMG_20210625_194142.jpg', 'Sau'),
(376, 'Sa', 'uploadarticle/IMG_20210625_194228.jpg', 'Sh'),
(377, 'Ha', 'uploadarticle/IMG_20210625_194530.jpg', 'Haa'),
(378, 'Ha', 'uploadarticle/IMG_20210625_194604.jpg', 'Hi'),
(379, 'Ha', 'uploadarticle/IMG_20210625_194639.jpg', 'Hii'),
(380, 'Ha', 'uploadarticle/IMG_20210625_194720.jpg', 'Hu'),
(381, 'Ha', 'uploadarticle/IMG_20210625_194803.jpg', 'Huu'),
(382, 'Ha', 'uploadarticle/IMG_20210625_194850.jpg', 'He'),
(383, 'Ha', 'uploadarticle/IMG_20210625_194933.jpg', 'Hee'),
(384, 'Ha', 'uploadarticle/IMG_20210625_195006.jpg', 'Hai'),
(385, 'Ha', 'uploadarticle/IMG_20210625_195042.jpg', 'Ho'),
(386, 'Ha', 'uploadarticle/IMG_20210625_195208.jpg', 'Hoo'),
(387, 'Ha', 'uploadarticle/IMG_20210625_195243.jpg', 'Hau'),
(388, 'Ha', 'uploadarticle/IMG_20210625_195323.jpg', 'Hh'),
(389, 'La', 'uploadarticle/IMG_20210625_185312.jpg', 'Laa'),
(390, 'La', 'uploadarticle/IMG_20210625_185348.jpg', 'Li'),
(391, 'La', 'uploadarticle/IMG_20210625_185440.jpg', 'Lii'),
(392, 'La', 'uploadarticle/IMG_20210625_185542.jpg', 'Lu'),
(393, 'La', 'uploadarticle/IMG_20210625_185649.jpg', 'Luu'),
(394, 'La', 'uploadarticle/IMG_20210625_185735.jpg', 'Le'),
(395, 'La', 'uploadarticle/IMG_20210625_185809.jpg', 'Lee'),
(396, 'La', 'uploadarticle/IMG_20210625_185853.jpg', 'Lai'),
(397, 'La', 'uploadarticle/IMG_20210625_185950.jpg', 'Lo'),
(398, 'La', 'uploadarticle/IMG_20210625_190021.jpg', 'Loo'),
(399, 'La', 'uploadarticle/IMG_20210625_190057.jpg', 'Lau'),
(400, 'La', 'uploadarticle/IMG_20210626_194646.jpg', 'Lh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `gender`, `email`, `password`) VALUES
(1, 'beary user', 'male', 'beary@user.com', 'bearyuser'),
(2, 'beary', 'male', 'bearyuser@user.com', '1234'),
(3, 'bearya@user.com', 'male', 'bearyq@user.com', 'bearyuser'),
(4, 'beary@user.com', 'male', 'bearyaa@user.com', 'bearyuser'),
(5, 'mashfooq', 'male', 'mashhuss@gmail.com', '12345'),
(6, 'bearyadmin@gmail.com', 'female', 'bearyadmingrl@gmail.com', 'bearyadmin'),
(7, 'EAS', 'female', 'gen@gmail.com', 'genzzz'),
(8, 'karn', 'female', 'kenm@gmail.com', 'kernnn'),
(9, 'bearyad', 'male', 'beary@gmail.com', 'bearyadmin'),
(10, 'required', 'male', 'required@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ar_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `kagunithas`
--
ALTER TABLE `kagunithas`
  ADD PRIMARY KEY (`k_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `kagunithas`
--
ALTER TABLE `kagunithas`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

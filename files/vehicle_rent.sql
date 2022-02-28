-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2022 at 08:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `type` varchar(80) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_category`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'Cars', '2022-02-02 13:28:02', '2022-02-02 07:27:52'),
(2, 'Motorbike', '2022-02-02 13:28:28', '2022-02-02 07:28:07'),
(3, 'Bike', '2022-02-02 13:28:28', '2022-02-02 07:28:07'),
(4, 'E-bike', '2022-02-02 15:47:19', '2022-02-03 12:51:45'),
(5, 'Pick Up', '2022-02-03 12:51:27', '2022-02-03 06:50:28'),
(6, 'Truck', '2022-02-03 12:51:27', '2022-02-03 06:50:28'),
(7, 'boat', '2022-02-04 10:59:50', '2022-02-04 11:08:13'),
(8, 'jet', '2022-02-06 06:24:53', '2022-02-06 06:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_request`
--

CREATE TABLE `forgot_request` (
  `id_request` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `code` varchar(4) NOT NULL,
  `expired` enum('true','false') DEFAULT 'true',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forgot_request`
--

INSERT INTO `forgot_request` (`id_request`, `id_user`, `code`, `expired`, `createdAt`, `updatedAt`) VALUES
(1, 1, '7376', 'true', '2022-02-11 14:41:59', '2022-02-12 14:37:13'),
(3, 4, '1205', 'true', '2022-02-11 15:17:11', '2022-02-12 14:37:13'),
(4, 4, '6122', 'true', '2022-02-11 15:18:09', '2022-02-12 14:37:13'),
(5, 40, '5394', 'true', '2022-02-11 15:45:13', '2022-02-12 14:37:13'),
(6, 4, '1234', 'true', '2022-02-11 15:51:08', '2022-02-12 14:37:13'),
(7, 5, '6783', 'true', '2022-02-12 14:07:33', '2022-02-12 14:37:13'),
(8, 7, '3084', 'true', '2022-02-12 14:51:21', NULL),
(9, 7, '9753', 'true', '2022-02-12 14:52:33', NULL),
(10, 7, '4036', 'true', '2022-02-12 14:54:05', NULL),
(11, 7, '5606', 'false', '2022-02-12 14:56:00', '2022-02-12 14:56:00'),
(12, 7, '3151', 'false', '2022-02-12 14:57:48', '2022-02-12 14:58:48'),
(13, 22, '2458', 'false', '2022-02-12 15:08:29', '2022-02-12 15:09:29'),
(14, 27, '8117', 'true', '2022-02-12 15:12:25', NULL),
(15, 27, '2984', 'false', '2022-02-12 15:16:58', '2022-02-12 15:17:58'),
(16, 27, '1984', 'false', '2022-02-12 15:20:48', '2022-02-12 15:21:48'),
(17, 29, '3608', 'false', '2022-02-12 16:07:22', '2022-02-12 16:08:00'),
(18, NULL, '3348', 'true', '2022-02-12 16:30:08', NULL),
(19, NULL, '3004', 'true', '2022-02-12 16:37:30', NULL),
(20, NULL, '5450', 'true', '2022-02-12 16:39:59', NULL),
(21, NULL, '3894', 'false', '2022-02-12 16:43:16', '2022-02-12 16:45:55'),
(22, NULL, '5767', 'false', '2022-02-12 16:47:56', '2022-02-12 16:49:17'),
(23, NULL, '7243', 'false', '2022-02-14 07:24:35', '2022-02-14 07:25:48'),
(24, 68, '6885', 'false', '2022-02-14 12:13:44', '2022-02-14 12:14:12'),
(25, 68, '3717', 'true', '2022-02-14 15:05:59', NULL),
(26, 69, '2514', 'false', '2022-02-14 15:06:22', '2022-02-14 15:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id_history` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_vehicle` int(11) DEFAULT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `prepayment` int(11) NOT NULL,
  `status` enum('has been returned','not been returned') DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id_history`, `id_user`, `id_vehicle`, `rent_start_date`, `rent_end_date`, `prepayment`, `status`, `createdAt`, `updatedAt`) VALUES
(12, 1, 13, '2022-01-31', '2022-02-01', 800000, 'has been returned', '2022-02-02 11:05:38', '2022-02-03 17:51:37'),
(13, 4, 7, '2022-01-31', '2022-02-04', 900000, 'not been returned', '2022-02-02 12:54:39', '2022-02-03 17:51:38'),
(14, 5, 7, '2022-02-02', '2022-02-04', 900000, 'has been returned', '2022-02-02 12:58:37', '2022-02-13 12:15:30'),
(16, 7, 7, '2022-02-02', '2022-02-04', 900000, 'not been returned', '2022-02-02 19:05:02', '2022-02-03 17:51:38'),
(18, 22, 7, '2022-02-01', '2022-02-03', 900000, 'has been returned', '2022-02-02 20:42:45', '2022-02-03 17:51:38'),
(20, 31, 13, '2022-02-01', '2022-02-03', 0, 'has been returned', '2022-02-03 08:36:43', '2022-02-03 17:51:38'),
(21, 27, 15, '2022-02-03', '2022-02-05', 10000, 'has been returned', '2022-02-03 08:36:43', '2022-02-03 17:51:38'),
(22, 7, 23, '2022-02-03', '2022-02-04', 0, 'has been returned', '2022-02-03 08:40:36', '2022-02-03 17:51:38'),
(23, 5, 12, '2022-02-04', '2022-02-07', 200000, 'has been returned', '2022-02-03 08:40:36', '2022-02-03 17:51:38'),
(24, 1, 17, '2022-02-08', '2022-02-10', 400000, 'has been returned', '2022-02-03 08:41:54', '2022-02-03 17:51:38'),
(25, 1, 7, '2022-02-02', '2022-02-04', 500000, 'has been returned', '2022-02-03 09:35:35', '2022-02-03 17:51:38'),
(26, 4, 7, '2022-02-02', '2022-02-04', 500000, NULL, '2022-02-04 05:54:05', NULL),
(28, 32, 67, '2022-02-02', '2022-02-04', 200000, NULL, '2022-02-04 14:18:00', '2022-02-04 14:19:30'),
(29, 32, 67, '2022-02-02', '2022-02-04', 500000, 'not been returned', '2022-02-04 14:30:43', NULL),
(30, 33, 10, '2022-02-02', '2022-02-28', 500000, 'not been returned', '2022-02-04 17:49:01', NULL),
(33, 1, 10, '2022-02-02', '2022-02-28', 500000, 'not been returned', '2022-02-06 07:34:11', NULL),
(34, 34, 69, '2022-02-02', '2022-02-05', 500000, 'not been returned', '2022-02-06 08:00:50', NULL),
(36, 1, 74, '2022-02-07', '2022-02-28', 100000, 'not been returned', '2022-02-07 12:28:31', NULL),
(37, 29, 19, '2022-02-07', '2022-02-28', 100000, 'not been returned', '2022-02-07 12:29:24', NULL),
(38, 1, 19, '2022-02-07', '2022-02-28', 100000, 'not been returned', '2022-02-07 12:37:30', NULL),
(39, 1, 19, '2022-02-02', '2022-02-28', 100000, 'not been returned', '2022-02-07 15:05:01', NULL),
(47, 1, 19, '2022-02-02', '2022-02-28', 100000, 'not been returned', '2022-02-07 16:58:14', NULL),
(48, 1, 19, '2022-02-02', '2022-02-04', 100000, 'not been returned', '2022-02-08 10:22:31', NULL),
(49, 1, 19, '2022-02-02', '2022-02-04', 100000, 'not been returned', '2022-02-08 10:22:40', NULL),
(50, 1, 19, '2022-02-02', '2022-02-03', 100000, 'not been returned', '2022-02-10 21:51:37', NULL),
(51, 1, 10, '2022-02-05', '2022-02-09', 100000, 'not been returned', '2022-02-13 12:14:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Male', '2022-02-08 07:35:35', '2022-02-08 01:34:38'),
(2, 'Female', '2022-02-08 07:35:35', '2022-02-08 01:34:38'),
(3, 'Has been returned', '2022-02-08 07:35:35', '2022-02-08 01:34:38'),
(4, 'Not been returned', '2022-02-08 07:35:35', '2022-02-08 01:34:38'),
(5, 'Available', '2022-02-09 13:40:24', '2022-02-09 07:38:40'),
(6, 'Not Available', '2022-02-09 13:40:44', '2022-02-09 07:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `username` varchar(30) NOT NULL,
  `image` text DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `address` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `confirm` varchar(4) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `username`, `image`, `gender`, `email`, `password`, `phone_number`, `address`, `birthdate`, `confirm`, `createdAt`, `updatedAt`) VALUES
(1, 'Asher Ginting', 'asherginting', 'uploads/Profil-1644829358560-672786564.jpg', 'Male', 'asher@gmail.com', '', '08124564455', 'Jakarta, Indonesia', '2000-05-30', '', '2022-01-27 21:55:50', '2022-02-14 16:02:38'),
(4, 'Hotma Pangaribuan', 'hotma', NULL, 'Male', 'hotma@mail.com', '$2b$10$l4P/g6BJ.gGx/knnLQadoOEO22vTX.RJvZXbh1yVEudrLzY0BGmFW', '08657', 'Jln. Anggrek Jakarta', '2000-04-05', '', '2022-01-28 13:55:06', '2022-02-14 08:28:20'),
(5, 'Joel Sihombing', 'joel', NULL, 'Male', 'john@mail.com', '$2b$10$kA9qzxad5odJUIPnnOSV/ujume./L8ksgtwZBL1H7vBO/wNwWUBJ2', '086574545', 'Bandung', '2000-04-05', '', '2022-01-28 14:09:52', '2022-02-14 08:28:20'),
(7, 'Aprida Sumarni', 'aprida', NULL, 'Female', 'aprida@mail.com', '$2b$10$S1SQK2Iia8bKrhZXPLsXkOIn47g/hB6WVZhAD5UH2a1T2iHdLTWkC', '084624552', 'Kalimantan', '1997-03-08', '', '2022-01-30 18:53:26', '2022-02-14 08:28:20'),
(22, 'Alif Suryo', 'suryo', NULL, 'Male', 'sucipto4li@mail.com', '$2b$10$OXNQTr4uep.mJg/aX/GXI.mHLG.AI1nR4mp76Dygbo3.0eNqkjWfS', '08657462123', 'Yogyakarta', '2000-04-05', '', '2022-01-30 19:58:03', '2022-02-14 08:28:20'),
(27, 'Dicky Zulkarnain', 'dicky', NULL, 'Male', 'dicky@mail.com', '$2b$10$FU1S2gVDcAI61qZLhk5eyOSlMNp1OEnCBvwwxuc.0Otb8s/KBFFjy', '088567432', 'Jakarta', '1997-03-08', '', '2022-01-30 21:28:56', '2022-02-14 08:28:20'),
(29, 'Try Handyani', 'yani', NULL, 'Female', 'yani@gmail.com', '$2b$10$12GGs9OVymRFffG/HuMpBO9BBrOzoSutQ9Xm9X2x.FHxqo7e6gEau', '084245111', 'Semarang', '2000-05-21', '', '2022-02-01 20:50:25', '2022-02-14 08:28:20'),
(31, 'telur', 'Kantea', 'uploads/Profil-1644829689189-66874972.jpg', 'Male', 'telur@gmail.coma', '', '+6281234454', 'Bandung', '2000-05-30', '', '2022-02-02 06:09:15', '2022-02-14 16:08:09'),
(32, 'Susi Susanti', 'Susanti', NULL, '', 'susi@gmail.com', '', '0813488233', 'Semarang', '1965-05-21', '', '2022-02-03 16:24:03', '2022-02-14 08:32:16'),
(33, 'Susanti', 'Susanti', NULL, 'Female', 'susanti@gmail.com', '', '0813488812', 'Bandung', '1965-05-21', '', '2022-02-03 16:37:41', '2022-02-14 08:32:16'),
(34, 'Andi Lukito', 'andi', NULL, 'Male', 'andi@gmail.com', '', '0813488676', 'Bandung', '1995-05-21', '', '2022-02-03 16:38:59', '2022-02-14 08:32:16'),
(35, 'Stevany', 'stevany', NULL, 'Female', 'stevany@gmail.com', '', '084252612', 'Jakarta', '1995-05-21', '', '2022-02-06 08:41:39', '2022-02-14 08:32:16'),
(36, 'Joko', 'joko', NULL, 'Male', 'joko@gmail.com', '', '08124555', 'Yogyakarta', '1995-02-28', '', '2022-02-06 11:55:45', '2022-02-14 08:32:16'),
(38, 'Budi', 'budi', NULL, 'Male', 'budi@gmail.com', '1234', '08454542123', 'Bandung', '1999-02-03', '', '2022-02-10 12:52:40', '2022-02-14 08:32:59'),
(40, 'Lukito', 'lukito', NULL, '', 'luktio@gmail.com', '$2b$10$vYJAZ9WJ/onMb.URJq72deVoDbvcw0kqx6QiDdLhgzeeo22Xf1H.u', '0845454124', 'Kalimantan', '1999-02-03', '', '2022-02-10 13:13:39', '2022-02-14 08:37:00'),
(41, 'Admin', 'Admin', NULL, '', 'admin@gmail.com', '$2b$10$50YW4T1tR076WX5HYoqgZutdsau1oBMNtl.qNOOsdd4pU7B6OCAYC', '0813567548', 'Ngawi,  East Java', '1996-08-30', '', '2022-02-10 17:02:20', NULL),
(46, 'Roni', 'roni', NULL, 'Male', 'roni@gmail.com', '$2b$10$BlcQ/0Mv4nXeTftj6Jkq1u78EaBtro4UOL39WTcnjHDw/64aXpzjy', '0624625123', NULL, '0000-00-00', '', '2022-02-12 21:11:10', '2022-02-14 08:37:00'),
(50, 'Yusuf', 'yusuf', NULL, 'Male', 'yusuf@mail.com', '$2b$10$.L3ux40wWyWUmfYxASLq0.E7VozM3d7UAqNpV926GE5j8wMCiprBm', '0862461234', NULL, '0000-00-00', '', '2022-02-12 21:33:42', '2022-02-14 08:37:00'),
(51, 'Johan', 'johan', NULL, 'Male', 'johan@gmail.com', '$2b$10$X5F63l1ri6knzo9IYLgKcOKi.1VEIYsg9/YP1ha7bsvFvDUKBkthS', '0862462123', NULL, '0000-00-00', '', '2022-02-12 23:50:08', '2022-02-14 08:37:00'),
(62, 'Toro', 'toro', NULL, 'Male', 'toro@gmail.com', '$2b$10$ZZDRKe.Aoz/jxWxf81.OYulctsL9H0HHTdXYD.5XBhn/LGzEMA61.', '08987654123', NULL, '0000-00-00', NULL, '2022-02-13 19:49:00', '2022-02-14 08:37:00'),
(68, 'contoh', 'contoh', NULL, 'Male', 'asherginting3@gmail.com', '$2b$10$iblGpLKY0.owYhJWAufvdeAFdaDNn/gy6l7s.7WkzR/4R6t.zD/2.', '08125468785', NULL, NULL, NULL, '2022-02-14 12:12:04', '2022-02-14 12:14:12'),
(69, 'azriel', 'azriel', NULL, 'Male', 'wifepi3219@goonby.com', '$2b$10$VGLSfU3mSl/LDhDtWRU9TedZf7zvuuGdHUo9NQcwT.CUIglahRr0a', '0812125456', NULL, NULL, NULL, '2022-02-14 15:01:48', '2022-02-14 15:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id_vehicle` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `type` varchar(80) NOT NULL,
  `brand` varchar(80) NOT NULL,
  `image` text DEFAULT NULL,
  `capacity` varchar(5) NOT NULL,
  `location` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rent_count` int(11) NOT NULL DEFAULT 0,
  `status` enum('Available','Full Booked') NOT NULL DEFAULT 'Available',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id_vehicle`, `id_category`, `type`, `brand`, `image`, `capacity`, `location`, `price`, `qty`, `rent_count`, `status`, `createdAt`, `updatedAt`) VALUES
(7, 1, 'Cars', 'Honda Brio', 'http://localhost:5000/uploads/brio-1645712962068-470130847.jpg', '5', 'Jakarta', 25000, 3, 2, 'Available', '2022-01-26 16:59:59', '2022-02-25 08:43:20'),
(10, 1, 'Motorbike', 'Yamaha Jupiter', 'http://localhost:5000/uploads/yamaha-jupiter-1645749866762-391107987.png', '2', 'Surakarta', 25000, 3, 3, 'Available', '2022-01-27 10:39:59', '2022-02-25 08:44:23'),
(12, 2, 'Motorbike', 'Honda Beat', 'http://localhost:5000/uploads/honda-beat-1645750345691-518477418.png', '2', 'Bandung', 550000, 3, 1, 'Available', '2022-01-27 13:06:26', '2022-02-25 08:45:05'),
(13, 3, 'Bike', 'Polygon Siskiu', 'http://localhost:5000/uploads/polygon-1645750062505-138954776.png', '1', 'Bandung', 155000, 2, 2, 'Available', '2022-01-28 10:13:34', '2022-02-25 08:45:11'),
(15, 3, 'Bike', 'Onthel', 'http://localhost:5000/uploads/onthel-1645753797944-74996477.png', '1', 'Yogyakarta', 155000, 3, 1, 'Available', '2022-01-28 10:23:05', '2022-02-25 08:50:39'),
(17, 1, 'Cars', 'Kijang Innova', 'http://localhost:5000/uploads/kijang-innova-1645750630159-402657214.jpg', '7', 'Jakarta', 600000, 3, 1, 'Available', '2022-01-28 10:32:16', '2022-02-25 08:45:24'),
(19, 1, 'Cars', 'Mazda CX 5', 'http://localhost:5000/uploads/mazda-1645749784773-246641813.png', '5', 'Yogyakarta', 555000, 2, 14, 'Available', '2022-01-30 17:34:14', '2022-02-25 08:46:34'),
(23, 1, 'Cars', 'Toyota Avanza', 'http://localhost:5000/uploads/avanza-1645750240195-92270534.jpg', '7', 'Depok', 200000, 4, 2, 'Available', '2022-01-30 19:50:51', '2022-02-25 08:45:29'),
(67, 2, 'Motorbike', 'Vespa Matic', 'http://localhost:5000/uploads/vespa-1645749957012-387819793.png', '2', 'Bandung', 210000, 3, 3, 'Available', '2022-02-01 21:07:20', '2022-02-25 08:45:33'),
(69, 2, 'Motorbike', 'Vespa Matic', 'http://localhost:5000/uploads/vespa-1645750281569-258206184.png', '2', 'Yogyakarta', 200000, 2, 2, 'Available', '2022-02-02 05:58:24', '2022-02-25 08:45:39'),
(74, 5, 'Pick Up', 'Mitsubishi Colt L300', 'http://localhost:5000/uploads/toyota-l300-1645750796633-890011416.jpg', '3', 'Yogyakarta', 90000, 2, 1, 'Available', '2022-02-06 18:04:02', '2022-02-25 08:46:41'),
(102, 5, 'Pick Up', 'Suzuki Carry', 'http://localhost:5000/uploads/suzuki-carry-1645750921110-489392039.png', '3', 'Yogyakarta', 90000, 2, 0, 'Available', '2022-02-09 10:05:21', '2022-02-25 08:46:44'),
(104, 5, 'Pick Up', 'Honda Brio', 'http://localhost:5000/uploads/suzuki-carry-1645750943764-384716271.png', '5', 'Ngawi', 150000, 1, 0, 'Available', '2022-02-10 20:11:21', '2022-02-25 08:46:50'),
(105, 2, 'Motorbike', 'Honda Prima', '', '2', 'Ngawi', 150000, 1, 0, 'Available', '2022-02-10 22:10:40', '2022-02-14 13:52:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `forgot_request`
--
ALTER TABLE `forgot_request`
  ADD PRIMARY KEY (`id_request`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id_vehicle`),
  ADD KEY `id_category` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `forgot_request`
--
ALTER TABLE `forgot_request`
  MODIFY `id_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forgot_request`
--
ALTER TABLE `forgot_request`
  ADD CONSTRAINT `forgot_request_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `histories_ibfk_2` FOREIGN KEY (`id_vehicle`) REFERENCES `vehicles` (`id_vehicle`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

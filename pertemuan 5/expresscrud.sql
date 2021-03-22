-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2021 at 06:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expresscrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `squad`
--

CREATE TABLE `squad` (
  `id` int(6) NOT NULL,
  `squad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `squad`
--

INSERT INTO `squad` (`id`, `squad`) VALUES
(1, 'web'),
(2, 'mobile'),
(3, 'ui/ux'),
(4, 'networking');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `id_squad` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telp`, `id_squad`) VALUES
(1, 'fatimatuzzahro', 'zahro@gmail.com', '087887556363', 1),
(4, 'yayang setiyawan', 'yayang@mail.com', '086534678987654', 2),
(5, 'ziyan fadhila', 'ziyanfad@gmail.com', '0876234567', 1),
(6, 'suro fadhila', 'suro@gmail.com', '08987656768', 3),
(7, 'faqih zada', 'faqih@gmail.com', '089364978765', 2),
(8, 'ade sugiantoro', 'ade@gmail.com', '08987585743', 1),
(9, 'rizal khamami', 'rizal@gmail.com', '08345286532487', 2),
(10, 'M efendi', 'efendi@gmail.com', '0832624276825', 1),
(11, 'M khafidul mualif', 'alif@gmail.com', '089373427353', 2),
(12, 'hendra', 'hendra@gmail.com', '08334452725231', 4),
(13, 'Nurul chotimah', 'nurul@gmail.com', '089365668387651', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `squad`
--
ALTER TABLE `squad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_squad` (`id_squad`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_squad` FOREIGN KEY (`id_squad`) REFERENCES `squad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

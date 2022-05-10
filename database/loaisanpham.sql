-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 02:54 PM
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
-- Database: `vatlxd`
--

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `ten_loaisanpham` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai_loaisanpham` char(2) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `HinhAnhLSP` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`ten_loaisanpham`, `trangthai_loaisanpham`, `HinhAnhLSP`) VALUES
('bê tông', 'y', 'betong.jpg'),
('cát/ đá', 'y', 'catda.jpg'),
('gạch xây dựng', 'y', 'gach.jpg'),
('Sắt/ Thép xây dựng', 'y', 'satthep.jpg'),
('xi măng', 'y', 'ximang.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`ten_loaisanpham`),
  ADD KEY `kn_trangthai_loaiSP` (`trangthai_loaisanpham`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `kn_trangthai_loaiSP` FOREIGN KEY (`trangthai_loaisanpham`) REFERENCES `trangthai` (`ID_trangthai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

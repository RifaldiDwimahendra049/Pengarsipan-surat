-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 11:29 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_arsip`
--

CREATE TABLE `data_arsip` (
  `nomor_surat` varchar(20) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `tanggal_masuk` varchar(20) NOT NULL,
  `tanggal_keluar` varchar(20) NOT NULL,
  `tanggal_surat` varchar(20) NOT NULL,
  `perihal_surat` text NOT NULL,
  `kode_surat` varchar(20) NOT NULL,
  `jenis_surat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_memo`
--

CREATE TABLE `data_memo` (
  `pengirim` varchar(20) NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `tanggal_input` varchar(20) NOT NULL,
  `tanggal_memo` varchar(20) NOT NULL,
  `isi_memo` varchar(360) NOT NULL,
  `jenis_memo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_arsip`
--
ALTER TABLE `data_arsip`
  ADD PRIMARY KEY (`nomor_surat`);

--
-- Indexes for table `data_memo`
--
ALTER TABLE `data_memo`
  ADD PRIMARY KEY (`pengirim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

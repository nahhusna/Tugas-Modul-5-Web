-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 07:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik1932`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(4) NOT NULL,
  `namadsn` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `alamatdsn` text NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') NOT NULL,
  `thn_masuk` year(4) NOT NULL,
  `agama` enum('Islam','Protestan','Katolik','Hindu','Buddha','Konghucu','Atheis') NOT NULL,
  `pend_akhir` enum('S1','S2','S3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `namadsn`, `nip`, `alamatdsn`, `jk`, `thn_masuk`, `agama`, `pend_akhir`) VALUES
(1, 'Michael Sanjaya', '00001111', 'Bukit Tinggi', 'Laki-Laki', 2020, 'Katolik', 'S2'),
(2, 'Linda Sihombing', '12121212', 'Bandung', 'Perempuan', 2007, 'Islam', 'S2'),
(3, 'Randy Mahesa', '54322345', 'Bali', 'Laki-Laki', 2013, 'Buddha', 'S3'),
(4, 'Tatang Suhendar', '78907890', 'Bekasi', 'Laki-Laki', 2000, 'Islam', 'S1'),
(5, 'Yolanda Christine', '56562323', 'Jakarta Barat', 'Perempuan', 2015, 'Protestan', 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(4) NOT NULL,
  `namamhs` varchar(50) NOT NULL,
  `nrp` varchar(11) NOT NULL,
  `alamatmhs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `namamhs`, `nrp`, `alamatmhs`) VALUES
(1, 'Raffi Maulana', '1152200019', 'Rawa Buntu'),
(2, 'Rika Naura Putri', '1152200089', 'Pamulang'),
(3, 'Queensa Verandra', '1152200099', 'Pondok Cabe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

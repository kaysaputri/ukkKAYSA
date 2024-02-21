-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 08:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk.keysa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bukutbl`
--

CREATE TABLE `bukutbl` (
  `BukuID` int(20) NOT NULL,
  `Judul` varchar(20) NOT NULL,
  `Penulis` varchar(20) NOT NULL,
  `Penerbit` varchar(25) NOT NULL,
  `TahunTerbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bukutbl`
--

INSERT INTO `bukutbl` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`) VALUES
(551, 'Resign', 'Almira Bastari', 'Gramedia', 2022),
(552, 'Antologi Rasa', 'Ika Natassa', 'gramedia', 2021),
(553, 'Laut Bercerita', 'Leila S.', 'Gramedia', 2023),
(554, 'Pelabuhan Terakhir', 'Roidah', 'Erlangga', 2022),
(555, 'Berwisata ke Surga', 'Restu Fitria', 'Erlangga', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `no` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginuser`
--

INSERT INTO `loginuser` (`no`, `username`, `password`) VALUES
('1', 'keysa', 'keysa123');

-- --------------------------------------------------------

--
-- Table structure for table `peminjamantbl`
--

CREATE TABLE `peminjamantbl` (
  `PeminjamanID` int(20) NOT NULL,
  `UserID` int(20) NOT NULL,
  `BukuID` int(20) NOT NULL,
  `TanggalPeminjaman` date NOT NULL,
  `TanggalPengembalian` date NOT NULL,
  `StatusPeminjaman` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjamantbl`
--

INSERT INTO `peminjamantbl` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`) VALUES
(201, 1011, 553, '2024-02-01', '2024-02-06', 'kembali'),
(202, 1013, 553, '2024-02-06', '2024-02-10', 'kembali'),
(203, 1011, 551, '2024-02-07', '2024-02-11', 'kembali'),
(204, 1015, 552, '2024-02-12', '2024-02-20', 'kembali'),
(205, 1015, 555, '2024-02-20', '0000-00-00', 'belum kembali');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `UserID` int(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `NamaLengkap` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`UserID`, `Email`, `NamaLengkap`, `Alamat`) VALUES
(1011, 'titi@gmail.com', 'Titi Padmasari', 'Jl. Mirama Bandung'),
(1012, 'rosi@gmail.com', 'Rosiana ', 'Jl. S. Parman Malang'),
(1013, 'arima@gmail.com', 'Arima Nanda', 'Jl. Bunga Cengkeh Malang'),
(1014, 'davin@gmail.com', 'Davin Nugroho', 'Komplek AU Singosari Malang'),
(1015, 'kemal@gmail.com', 'Kemal Airlangga', 'Jl. Intan Surabaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukutbl`
--
ALTER TABLE `bukutbl`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `peminjamantbl`
--
ALTER TABLE `peminjamantbl`
  ADD PRIMARY KEY (`PeminjamanID`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 05:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'adminMagang', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2023-01-03 08:10:40'),
(2, 'Kasubbag_umum', 'kasubbag@gmail.com', 'b47387ef0848b341950f3f59bfb9ed39', '2023-01-04 17:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_alternatif`
--

CREATE TABLE `tabel_alternatif` (
  `alternatif` varchar(30) NOT NULL,
  `presensi` int(15) NOT NULL,
  `capaian` float NOT NULL,
  `perilaku` int(15) NOT NULL,
  `ide` int(15) NOT NULL,
  `hukuman` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_alternatif`
--

INSERT INTO `tabel_alternatif` (`alternatif`, `presensi`, `capaian`, `perilaku`, `ide`, `hukuman`) VALUES
('Imam F', 22, 0.8636, 100, 2, 1),
('Bahrul A', 18, 0.9091, 97, 2, 1),
('Asep Y', 17, 0.9545, 98, 1, 1),
('Mulyadi A', 22, 1, 94, 2, 1),
('Djoko W', 21, 0.8182, 98, 1, 1),
('Asnadi', 17, 0.7727, 96, 1, 2),
('Lilis S', 22, 0.8636, 95, 1, 1),
('Nurdin S', 18, 0.8182, 95, 1, 2),
('Juandi S', 20, 0.9091, 92, 1, 1),
('Harri R', 22, 1, 92, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pegawai`
--

CREATE TABLE `tabel_pegawai` (
  `alternatif` varchar(30) NOT NULL,
  `presensi` int(15) NOT NULL,
  `capaian` float NOT NULL,
  `perilaku` int(15) NOT NULL,
  `ide` int(15) NOT NULL,
  `hukuman` int(15) NOT NULL,
  `nip` bigint(30) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `eselon` varchar(50) NOT NULL,
  `unit kerja` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_pegawai`
--

INSERT INTO `tabel_pegawai` (`alternatif`, `presensi`, `capaian`, `perilaku`, `ide`, `hukuman`, `nip`, `pangkat`, `jabatan`, `eselon`, `unit kerja`) VALUES
('IMAM FATUROCHMAN, ST, M.Si', 22, 0.8636, 100, 2, 1, 197605292002121003, 'Pembina, IV/a', 'Camat Sukatani', 'III.a', 'Kecamatan Sukatani'),
('Drs. BAHRUL AZIZ, MM', 18, 0.9091, 97, 2, 1, 196807031988031003, 'Pembina, IV/a', 'Sekretaris Kecamatan', 'III.b', 'Kecamatan Sukatani'),
('ASEP YUSLIMAN, S.IP', 17, 0.9545, 98, 1, 1, 196509201991031002, 'Penata Tk.I, III/d', 'Kepala Sub Bagian Perencanaan dan Keuangan', 'IV.b', 'Kecamatan Sukatani'),
('MULYADI ALZAUHADI, SE, M.Si', 22, 1, 94, 2, 1, 197706262000031003, 'Penata, III/c', 'Kepala Sub Bagian Umum dan Kepegawaian', 'IV.b', 'Kecamatan Sukatani'),
('DJOKO WASITA HADI, S.AP', 21, 0.8182, 98, 1, 1, 196802262006041003, 'Penata Tk.I, III/d', 'Kepala Seksi Pemerintahan', 'IV.a', 'Kecamatan Sukatani'),
('ASNADI, S.Pd, M.MPd', 17, 0.7727, 96, 1, 2, 196804011992121001, 'Pembina, IV/a', 'Kepala Seksi Ketentraman dan Ketertiban', 'IV.a', 'Kecamatan Sukatani'),
('Hj. LILIS SOLIHAT, S.KM, MM', 22, 0.8636, 95, 1, 1, 196901231989032004, 'Pembina, IV/a', 'Kepala Seksi Ekonomi dan Pembangunan ', 'IV.a', 'Kecamatan Sukatani'),
('NURDIN SAMSUDIN, S.KM, MM', 18, 0.8182, 95, 1, 2, 196710091988031004, 'Pembina, IV/a', 'Kepala Seksi Pemberdayaan Masyarakat dan Desa', 'IV.a', 'Kecamatan Sukatani'),
('JUANDI JAYA, SP, M.Si', 20, 0.9091, 92, 1, 1, 198011202010011001, 'Penata Tk.I, III/d', 'Kepala Seksi Pelayanan Publik', 'IV.a', 'Kecamatan Sukatani'),
('HARRI RAKIM, A.Ma', 22, 1, 92, 2, 1, 197909292008011003, 'Penata Muda, III/a', 'Bendahara', 'JFU', 'Kecamatan Sukatani');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_ranking`
--

CREATE TABLE `tabel_ranking` (
  `alternatif` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_ranking`
--

INSERT INTO `tabel_ranking` (`alternatif`, `total`) VALUES
('ASEP YUSLIMAN, S.IP', '0.0982'),
('ASNADI, S.Pd, M.MPd', '0.0875'),
('DJOKO WASITA HADI, S.AP', '0.0969'),
('Drs. BAHRUL AZIZ, MM', '0.1044'),
('HARRI RAKIM, A.Ma', '0.1098'),
('Hj. LILIS SOLIHAT, S.KM, MM', '0.0984'),
('IMAM FATUROCHMAN, ST, M.Si', '0.1074'),
('JUANDI JAYA, SP, M.Si', '0.0973'),
('MULYADI ALZAUHADI, SE, M.Si', '0.1105'),
('NURDIN SAMSUDIN, S.KM, MM', '0.0897');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_ranking`
--
ALTER TABLE `tabel_ranking`
  ADD PRIMARY KEY (`alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

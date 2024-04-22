-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 09:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prak_pwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `nip`, `email`) VALUES
(1, 'Dr. Skyla Orn', '009286938374063510', 'nkrajcik@example.com'),
(2, 'Mayra Mohr', '978943385676292995', 'keebler.jerry@example.net'),
(3, 'Lon Zieme', '943570701627868262', 'eeichmann@example.com'),
(4, 'Yadira Schamberger', '599148030558189622', 'stamm.clyde@example.net'),
(5, 'Prof. Trystan Harber Jr.', '714768797069068652', 'sveum@example.org'),
(6, 'Kenton Roberts V', '728884012679291395', 'xzavier36@example.net'),
(7, 'Mathias Morissette', '288941756334540495', 'nikolaus.taylor@example.net'),
(8, 'Edwin Renner III', '046062968060186625', 'wilhelmine90@example.org'),
(9, 'Rhiannon Altenwerth III', '877905142939511223', 'gleason.monty@example.com'),
(10, 'Timmy Dickens', '114602835729167597', 'ojacobi@example.org'),
(11, 'Dr. Finn Spinka DDS', '780841948406490424', 'cecil72@example.com'),
(12, 'Miss Ardella Abernathy DDS', '619283145714924828', 'tkovacek@example.org');

-- --------------------------------------------------------

--
-- Table structure for table `ktd`
--

CREATE TABLE `ktd` (
  `id_ktd` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nidn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktd`
--

INSERT INTO `ktd` (`id_ktd`, `nip`, `nidn`) VALUES
(1, '599148030558189622', '2359961027'),
(2, '877905142939511223', '6863563972'),
(3, '728884012679291395', '2233013857'),
(4, '288941756334540495', '9353476625'),
(5, '619283145714924828', '3241031038'),
(6, '780841948406490424', '7049928803'),
(7, '046062968060186625', '8001255576'),
(8, '114602835729167597', '1403034016'),
(9, '943570701627868262', '8918721097'),
(10, '714768797069068652', '1384083379'),
(11, '009286938374063510', '5867024794'),
(12, '978943385676292995', '7281763313');

-- --------------------------------------------------------

--
-- Table structure for table `ktm`
--

CREATE TABLE `ktm` (
  `id_ktm` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nomor_identitas` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktm`
--

INSERT INTO `ktm` (`id_ktm`, `nim`, `nomor_identitas`) VALUES
(1, '388709127', 'KTM51694'),
(2, '688898993', 'KTM00299'),
(3, '145223102', 'KTM60625'),
(4, '171345699', 'KTM41877'),
(5, '612537142', 'KTM54068'),
(6, '291094654', 'KTM85267');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`, `alamat`) VALUES
(1, '612537142', 'Hoyt Wilkinson', 'Teknologi Informasi', '429 Crooks Tunnel\nFeilchester, MT 02677-7498'),
(2, '388709127', 'Anjali Walker', 'Teknologi Informasi', '6412 Maureen Island Suite 140\nJaronport, MO 06350'),
(3, '688898993', 'Abbey Rowe', 'Teknologi Informasi', '3502 Carol Keys Suite 003\nDomenicstad, DC 60748-6316'),
(4, '291094654', 'Dariana Stehr', 'Teknologi Informasi', '9845 Reichel Fords\nPort Gerard, NM 73499-5954'),
(5, '171345699', 'Wallace Runolfsdottir', 'Teknologi Informasi', '9969 Thompson Spring Suite 607\nNew Shyanne, IN 88174-2875'),
(6, '145223102', 'Curt Bahringer', 'Teknologi Informasi', '6551 Randall Roads\nWilkinsonville, UT 65338-3844');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(97, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(98, '2024_04_18_043902_create_staff_table', 1),
(99, '2024_04_22_172210_create_mahasiswa_table', 1),
(100, '2024_04_22_174009_create_ktm_table', 1),
(101, '2024_04_22_191220_create_dosen_table', 1),
(102, '2024_04_22_191616_create_ktd_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nip`, `email`, `nama`, `tanggal_lahir`, `no_hp`) VALUES
(1, '1817547499', 'ohowell@example.com', 'Jaydon Cartwright', '1996-01-20', '660.579.4889'),
(2, '8986853600', 'laney76@example.com', 'Kevon D\'Amore', '1978-07-15', '+1-636-306-6559'),
(3, '4794540831', 'madelynn89@example.com', 'Rasheed Gerlach', '1992-03-08', '+17379190841'),
(4, '9540900960', 'samson12@example.org', 'Justine Hettinger', '1985-12-29', '248.282.1123'),
(5, '1680011641', 'jailyn.braun@example.org', 'Julia Erdman', '2006-08-23', '+1 (220) 592-5279'),
(6, '4843578064', 'gutkowski.hailee@example.com', 'Jerrell Green', '2017-08-20', '(332) 631-0390'),
(7, '9203016974', 'annabelle91@example.com', 'Autumn Runolfsdottir I', '1996-01-24', '(425) 605-5817'),
(8, '8984708094', 'runolfsdottir.keith@example.org', 'Prof. Ottis Brakus MD', '2009-06-18', '253.914.1679');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `dosen_nip_unique` (`nip`),
  ADD UNIQUE KEY `dosen_email_unique` (`email`);

--
-- Indexes for table `ktd`
--
ALTER TABLE `ktd`
  ADD PRIMARY KEY (`id_ktd`),
  ADD UNIQUE KEY `ktd_nip_unique` (`nip`),
  ADD UNIQUE KEY `ktd_nidn_unique` (`nidn`);

--
-- Indexes for table `ktm`
--
ALTER TABLE `ktm`
  ADD PRIMARY KEY (`id_ktm`),
  ADD UNIQUE KEY `ktm_nim_unique` (`nim`),
  ADD UNIQUE KEY `ktm_nomor_identitas_unique` (`nomor_identitas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `mahasiswa_nim_unique` (`nim`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_nip_unique` (`nip`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ktd`
--
ALTER TABLE `ktd`
  MODIFY `id_ktd` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ktm`
--
ALTER TABLE `ktm`
  MODIFY `id_ktm` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ktd`
--
ALTER TABLE `ktd`
  ADD CONSTRAINT `ktd_nip_foreign` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`);

--
-- Constraints for table `ktm`
--
ALTER TABLE `ktm`
  ADD CONSTRAINT `ktm_nim_foreign` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

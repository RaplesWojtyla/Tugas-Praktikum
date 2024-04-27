-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 08:43 PM
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
(1, 'Teagan Stoltenberg', '215809059156675119', 'powlowski.deborah@example.org'),
(2, 'Maye Wisozk', '661945206900877706', 'runte.michele@example.org'),
(3, 'Prof. Jonas Mann', '286887614712722116', 'tremblay.camylle@example.net'),
(4, 'Dr. Antonia Keeling V', '702706961192807377', 'edenesik@example.com'),
(5, 'Brianne Ferry', '437247972069308310', 'brown.trisha@example.com'),
(6, 'Gordon Mertz', '515927184719984508', 'tyreek.lehner@example.net');

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
(1, '661945206900877706', '0036942216'),
(2, '215809059156675119', '0299304649'),
(3, '702706961192807377', '0727784364'),
(4, '515927184719984508', '6622218721'),
(5, '437247972069308310', '9818796723'),
(6, '286887614712722116', '5276504956');

-- --------------------------------------------------------

--
-- Table structure for table `ktm`
--

CREATE TABLE `ktm` (
  `id_ktm` bigint(20) UNSIGNED NOT NULL,
  `id_mahasiswa` bigint(20) UNSIGNED NOT NULL,
  `nomor_identitas` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktm`
--

INSERT INTO `ktm` (`id_ktm`, `id_mahasiswa`, `nomor_identitas`) VALUES
(1, 4, 'KTM86535'),
(2, 5, 'KTM90290'),
(3, 2, 'KTM07631'),
(4, 3, 'KTM02671'),
(5, 1, 'KTM67334'),
(6, 6, 'KTM79694'),
(7, 7, 'KTM0052'),
(8, 8, 'KTM00128');

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
(1, '443433065', 'Beatrice Larsonn', 'Teknologi Informasi', '849 Klocko Coves Suite 556South Lottie, IL 05172-7815'),
(2, '272014908', 'Felton Wisozk', 'Teknologi Informasi', '138 Russel Plains Suite 382\nLake Vivian, HI 63146-5650'),
(3, '606093812', 'Miss Kiera Stokes', 'Teknologi Informasi', '651 Peyton UnionLaishaview, NH 14058'),
(4, '638062218', 'Gianni Doyle', 'Teknologi Informasi', '8181 Mara CliffsAdonismouth, MO 95835'),
(5, '321279072', 'Prof. Ana Abernathy PhD', 'Teknologi Informasi', '2160 Beahan Mission\nKennithview, AR 73747-0976'),
(6, '156003170', 'Kaleigh Conn', 'Teknologi Informasi', '18089 Sandrine Orchard Suite 181\nUllrichburgh, OR 55103'),
(7, '231402052', 'Patra Rafles Wostyla Sinaga', 'TI', 'Medan'),
(8, '231402128', 'Paskal Gay', 'TI', 'Medan');

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
(270, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(271, '2024_04_18_043902_create_staff_table', 1),
(272, '2024_04_22_172210_create_mahasiswa_table', 1),
(273, '2024_04_22_174009_create_ktm_table', 1),
(274, '2024_04_22_191220_create_dosen_table', 1),
(275, '2024_04_22_191616_create_ktd_table', 1);

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
(1, '2211731482', 'king.marcelino@example.com', 'Nolan Farrell I', '2015-10-13', '+1 (352) 554-2050'),
(2, '0384476113', 'heathcote.glenna@example.com', 'Bo Beier', '2018-08-27', '1-208-921-2603'),
(3, '4101686784', 'tgoyette@example.net', 'Meta Kerluke', '1988-07-11', '859.612.0820'),
(4, '7796474390', 'anibal03@example.net', 'Prof. Abdul Nikolaus PhD', '1997-08-18', '(234) 239-9391'),
(5, '7790483658', 'rutherford.ernest@example.com', 'Mr. Hershel Frami Sr.', '1991-09-17', '(530) 457-6455'),
(6, '0232379648', 'pollich.aracely@example.com', 'Dr. Maureen Bogan MD', '1971-04-08', '+1 (607) 208-2300'),
(7, '5417640757', 'christian29@example.com', 'Rosalee Bauch DVM', '2019-03-19', '813.458.0759'),
(8, '7984763322', 'scrist@example.com', 'Miss Ruthe McCullough I', '1987-04-21', '1-878-291-8818');

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
  ADD UNIQUE KEY `ktm_nomor_identitas_unique` (`nomor_identitas`),
  ADD KEY `ktm_id_mahasiswa_foreign` (`id_mahasiswa`);

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
  MODIFY `id_dosen` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ktd`
--
ALTER TABLE `ktd`
  MODIFY `id_ktd` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ktm`
--
ALTER TABLE `ktm`
  MODIFY `id_ktm` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

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
  ADD CONSTRAINT `ktm_id_mahasiswa_foreign` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

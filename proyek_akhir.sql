-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 02:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksis`
--

CREATE TABLE `detail_transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_transaksis`
--

INSERT INTO `detail_transaksis` (`id`, `id_transaksi`, `id_barang`, `qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 202401021, 1, 1, 1500000, 1, '2024-01-02 00:19:43', '2024-01-02 00:20:11'),
(2, 202401022, 2, 1, 250000, 1, '2024-01-02 00:20:26', '2024-01-02 00:42:42'),
(3, 202401022, 3, 1, 500000, 1, '2024-01-02 00:42:24', '2024-01-02 00:42:42'),
(4, 202401023, 3, 1, 500000, 1, '2024-01-02 01:10:14', '2024-01-02 01:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_02_061849_create_m_resis_table', 1),
(6, '2024_01_02_061907_create_products_table', 1),
(7, '2024_01_02_061926_create_transaksis_table', 1),
(8, '2024_01_02_061939_detail_transaksi', 1),
(9, '2024_01_02_061954_tbl_cart', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_resis`
--

CREATE TABLE `m_resis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `awb` varchar(255) NOT NULL,
  `logistic` varchar(255) NOT NULL,
  `warehouse` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kategory` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_out` int(11) NOT NULL DEFAULT 0,
  `foto` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `nama_product`, `type`, `kategory`, `harga`, `discount`, `quantity`, `quantity_out`, `foto`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BRG66270', 'Adidas Samba', 'aksesoris', 'Pria', 1500000, 0.10, 4, 1, '20240102_Adidas Samba.jpeg', 1, '2024-01-02 00:14:59', '2024-01-02 00:20:11'),
(2, 'BRG66956', 'Sweater', 'baju', 'Pria', 250000, 0.10, 9, 1, '20240102_Sweater Pria.jpeg', 1, '2024-01-02 00:16:23', '2024-01-02 00:42:42'),
(3, 'BRG48770', 'Chinos Denim', 'celana', 'Pria', 500000, 0.10, 18, 1, '20240102_Celana Chinos Panjang.jpg', 1, '2024-01-02 00:38:24', '2024-01-02 01:10:58'),
(4, 'BRG96425', 'Baju Hitam', 'baju', 'Pria', 200000, 0.10, 10, 0, '20240102_contoh.png', 1, '2024-01-02 01:04:37', '2024-01-02 01:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`id`, `idUser`, `id_barang`, `qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'guest123', 1, 1, 1500000, 1, '2024-01-02 00:19:30', '2024-01-02 00:19:43'),
(2, 'guest123', 2, 1, 250000, 1, '2024-01-02 00:19:34', '2024-01-02 00:20:27'),
(3, 'guest123', 3, 1, 500000, 1, '2024-01-02 00:42:11', '2024-01-02 00:42:24'),
(4, 'guest123', 2, 1, 250000, 0, '2024-01-02 00:42:16', '2024-01-02 00:42:16'),
(5, 'guest123', 3, 1, 500000, 1, '2024-01-02 01:09:44', '2024-01-02 01:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_transaksi` varchar(255) NOT NULL,
  `total_qty` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `status` enum('Unpaid','Paid') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `code_transaksi`, `total_qty`, `total_harga`, `nama_customer`, `alamat`, `no_tlp`, `ekspedisi`, `status`, `created_at`, `updated_at`) VALUES
(1, '202401021', '1', '1675000', 'Supri', 'Jalan Margonda Raya', '0862186126121', 'jne', 'Unpaid', '2024-01-02 00:20:11', '2024-01-02 00:20:11'),
(2, '202401022', '2', '840500', 'Tegar', 'Jalan Genuk Raya', '081215368021', 'sicepat', 'Unpaid', '2024-01-02 00:42:42', '2024-01-02 00:42:42'),
(3, '202401023', '1', '565000', 'Kamal', 'Jalan Mranggen', '087263511271', 'jne', 'Unpaid', '2024-01-02 01:10:58', '2024-01-02 01:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 1,
  `is_mamber` tinyint(1) NOT NULL DEFAULT 1,
  `foto` varchar(255) NOT NULL DEFAULT 'default.png',
  `alamat` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `tglLahir` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `is_mamber`, `foto`, `alamat`, `tlp`, `tglLahir`, `is_active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Member39', 'Supri', 'supri@gmail.com', NULL, '$2y$10$WEXPj1jjTYIe36YMklntuOd7gGv0Z1UhRd90nbemFaz.mSkmtCmNK', 0, 1, '20240102_WhatsApp Image 2023-09-07 at 12.23.58.jpeg', 'Semarang Jawa Tengah', '0862186126121', '2001-01-15', 1, 2, NULL, '2024-01-02 00:19:24', '2024-01-02 00:39:20'),
(4, '20240102', 'Tegar', 'tegar@gmail.com', NULL, '$2a$12$5oXIFQMskV99cv1HfAkG7uMm4bDkHKM7rG/hxdy4yVNQXiXH.0eWm', 1, 1, '20240102_default (1).png', 'Semarang', '081215368021', '2004-08-09', 1, 1, NULL, '2024-01-02 00:34:11', '2024-01-02 00:38:57'),
(5, '2024010246', 'Kamal', 'kamal@gmail.com', NULL, '$2y$10$Ex4GYFC7FEEDf8rgmVEq4OTSCAZ1u0/WBE3lEA/QBk3A6GD/GwOnq', 1, 0, '20240102_staff tu.jpg', 'Jalan Mranggen', '087263511271', '2002-06-12', 1, 2, NULL, '2024-01-02 01:08:31', '2024-01-02 01:08:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transaksis_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_resis`
--
ALTER TABLE `m_resis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_carts_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `m_resis`
--
ALTER TABLE `m_resis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD CONSTRAINT `detail_transaksis_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`);

--
-- Constraints for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD CONSTRAINT `tbl_carts_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

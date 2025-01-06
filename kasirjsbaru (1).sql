-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2025 at 08:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirjsbaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangcabangs`
--

CREATE TABLE `barangcabangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barangcabangs`
--

INSERT INTO `barangcabangs` (`uuid`, `baranguuid`, `cabanguuid`, `createdAt`, `updatedAt`) VALUES
('204793d5-af8c-4af6-879d-9742ac7fb175', '8f19b892-0979-4fde-a448-c02f26a3d078', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-23 14:40:58', '2024-12-23 14:40:58'),
('40dd4520-eead-416c-822d-55fd12a131f3', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-01-02 13:02:52', '2025-01-02 13:02:52'),
('421cc25b-d4e0-47f0-b149-d5c1a7a218e0', '0dca2395-7e4e-437f-a46f-976d67691a43', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-21 22:22:07', '2024-12-21 22:22:07'),
('4271d5aa-e8f8-4534-b888-d55353be642c', '65df3e31-1b4a-4227-9735-7e1fdcdca525', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-24 20:03:40', '2024-12-24 20:03:40'),
('64f42c28-0677-4d83-905b-fa438b0a2b2b', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-12-24 20:04:05', '2024-12-24 20:04:05'),
('933f9db4-dedf-47f7-ab18-0344b6e8eba9', '0dca2395-7e4e-437f-a46f-976d67691a43', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-12-21 22:27:48', '2024-12-21 22:27:48'),
('bb3acd7d-c590-4fee-9332-c8fbf0d7cb77', '8f19b892-0979-4fde-a448-c02f26a3d078', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2025-01-03 20:22:53', '2025-01-03 20:22:53'),
('bee25c47-6a49-4b4c-848d-9ecbddd30c94', '8f19b892-0979-4fde-a448-c02f26a3d078', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-12-23 14:43:29', '2024-12-23 14:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategoriuuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `foto` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`uuid`, `namabarang`, `harga`, `kategoriuuid`, `foto`, `createdAt`, `updatedAt`) VALUES
('08d4c3df-09d3-46a2-b841-80d825309151', 'test delete kategori', '120000.00', '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'test delete kategori-1735910652750.jpg', '2025-01-03 20:24:12', '2025-01-03 21:37:26'),
('0dca2395-7e4e-437f-a46f-976d67691a43', 'barang1', '70000.00', '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'barang3-1732801471920.png', '2024-11-28 20:42:28', '2024-12-16 14:40:47'),
('102562db-14be-418b-b6c4-e4bd62c65549', 'barang2', '10000.00', '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'barang2-1732801448011.png', '2024-11-28 20:42:16', '2024-11-28 20:44:08'),
('38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 'barangbaruku', '50.00', '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'barangbaruku-1732800897937.png', '2024-11-28 20:34:57', '2024-11-28 20:34:57'),
('65df3e31-1b4a-4227-9735-7e1fdcdca525', 'test', '1.00', '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'test-1733988755234.png', '2024-12-12 14:32:35', '2024-12-12 14:32:35'),
('8e1c5164-da29-45fa-ab83-093a765cfec3', 'barang frontend', '100.00', '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'barang frontend-1733892936501.png', '2024-12-06 10:55:58', '2024-12-16 08:03:36'),
('8f19b892-0979-4fde-a448-c02f26a3d078', 'Es Kopi Hitam', '5000.00', '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Es Kopi Hitam-1734335177111.jpeg', '2024-12-16 14:46:17', '2024-12-16 14:46:17'),
('e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 'Barang Baru', '100000.00', '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'Barang Baru-1733892947297.png', '2024-11-28 15:15:29', '2024-12-11 11:55:47'),
('f1026428-e81e-49b0-9ae8-741875ec4cb1', 'Produk Baru Test Frontend', '20000.00', '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'Produk Baru Test Frontend-1733899377225.png', '2024-12-11 13:42:57', '2024-12-11 13:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namacabang` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `koordinat` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`uuid`, `namacabang`, `alamat`, `koordinat`, `createdAt`, `updatedAt`) VALUES
('197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', 'cabang2', 'jl.baru', '-7.003011,110.411597', '2024-12-13 23:30:39', '2024-12-13 23:30:39'),
('1aeceb73-2960-49b2-8eb4-c00139ddfe11', 'testhapus', 'jl.baru', '-7.003011,110.411597', '2024-12-02 15:41:18', '2024-12-18 18:43:06'),
('bb88b401-f02f-4ff9-8b7b-68826173eef7', 'buatbaru', 'jl.baru', '-6.9842252,110.3654802', '2024-11-28 15:05:02', '2024-12-18 18:47:24'),
('e112b2e6-a41f-43d5-9a8d-e53d6af65649', 'Cabang baru 2', 'Jl.Ngaliyan', '-6.9854139,110.374197315', '2024-12-18 18:46:41', '2024-12-18 18:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namakategori` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`uuid`, `namakategori`, `createdAt`, `updatedAt`) VALUES
('72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Minuman update', '2024-12-16 07:55:08', '2025-01-03 21:34:22'),
('8dfc2e1d-31b1-47f0-a38d-96d771669128', 'kategori1', '2024-11-28 15:09:55', '2024-11-28 15:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('_sk3kN6tHX4sqSe3MU-3U8bzi3HoIYrX', '2025-01-06 00:37:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:37:37', '2025-01-05 00:37:37'),
('-Bxt_ChDgrm1-LAz5IYSiw5aFHHpWKIn', '2025-01-05 20:56:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:56:34', '2025-01-04 20:56:34'),
('0cI6_vORIinjfFwDd3uhm0TEdDiaJDE-', '2025-01-05 19:41:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:41:08', '2025-01-04 19:41:08'),
('0FopuzFkrFVsGB0ulERXj7L-Va5-GTSF', '2025-01-05 04:44:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:44:17', '2025-01-04 04:44:17'),
('0UN_1Sviexv9GCEGlB_nICxQ1YHk-XQD', '2025-01-06 00:37:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:37:22', '2025-01-05 00:37:22'),
('1f-Uc0nEiaDImwiFIB0BBQ_Ri6997Ks6', '2025-01-06 00:40:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:40:03', '2025-01-05 00:40:03'),
('29bDsZ3aIwFGWM_UYGyzQ5WdBE4IIPRx', '2025-01-05 05:09:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:09:47', '2025-01-04 05:09:47'),
('2uCPa8OcWSR2DJdkIM3Qoj43K-5Z6oxG', '2025-01-05 21:08:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:08:25', '2025-01-04 21:08:25'),
('3W0lEojGyux0bQ_RHudjAo3T2ThZBmzx', '2025-01-05 04:44:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:44:17', '2025-01-04 04:44:17'),
('5_E_g1oQsgxOsgh8EEXllWYllxiwG46X', '2025-01-06 02:05:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"67a1852a-72ec-42a5-acc8-49f4a1bb10e0\",\"username\":\"hapuscabang\",\"role\":\"kasir\",\"cabanguuid\":\"1aeceb73-2960-49b2-8eb4-c00139ddfe11\"}}', '2025-01-05 02:04:33', '2025-01-05 02:05:07'),
('554W3O9m53UPl5hzxOMFN1CgGV2GiCWz', '2025-01-05 20:59:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:59:09', '2025-01-04 20:59:09'),
('6A42A-MpOeQnz7Iuwtq5Hv6BRNL1k1vY', '2025-01-05 05:13:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:13:02', '2025-01-04 05:13:02'),
('74bnJU93BYQ7sSaI4xKi5j0H0JZwZXXs', '2025-01-05 19:41:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:41:08', '2025-01-04 19:41:08'),
('7Yw1rGpbmNOIkOz5aNQ7zs_kfxJZTqQ4', '2025-01-05 04:57:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:57:37', '2025-01-04 04:57:37'),
('8OEsZBHV0SMs_xVX8FuFT6wnYYMF033G', '2025-01-05 19:38:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:38:41', '2025-01-04 19:38:41'),
('9hLvAG9JUggw3ukY_wskE2NHUND6MjD0', '2025-01-05 19:38:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:38:42', '2025-01-04 19:38:42'),
('9UNNWxMw9sAs7CbS3fU_2gRAE4cRihXO', '2025-01-05 20:59:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:59:09', '2025-01-04 20:59:09'),
('9ZHNNuApFYbMEjm-DCxaZyKtj4mj3JAO', '2025-01-05 19:46:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 19:46:13', '2025-01-04 19:46:15'),
('a6sIgnkQBxBYdpgafKrE4viNgEPhjDNA', '2025-01-05 19:46:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:46:15', '2025-01-04 19:46:15'),
('BdDXbpUUyJFm2C2LFhMIELYnQUgU7-UN', '2025-01-05 20:56:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:56:34', '2025-01-04 20:56:34'),
('BEiVbvYafIYJtFzGDj4LgPCmEygqpX5F', '2025-01-05 05:11:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 05:09:45', '2025-01-04 05:11:57'),
('Btv6KP9P28BxJ4Sy6Gm0y53b18YqV_yo', '2025-01-05 19:37:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:37:50', '2025-01-04 19:37:50'),
('CLnU-BxnvZVz0OGcBN-WMC0TsWRuw8zz', '2025-01-05 20:56:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:56:34', '2025-01-04 20:56:34'),
('D3RWNGg8kAK1KTbaEMzusdDQQpY1ipcT', '2025-01-05 04:44:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:44:17', '2025-01-04 04:44:17'),
('d9UgYV30NINvfP2V6lLTZofzGGGgGOlV', '2025-01-05 21:08:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 21:03:42', '2025-01-04 21:08:24'),
('ddqlIrCsOPUybrCW0wS6GeKx7W_trHfn', '2025-01-05 05:09:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:09:47', '2025-01-04 05:09:47'),
('dh_RKt6WmtK3lVCy0yVHZL6HuxSKNFd0', '2025-01-05 19:38:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:38:41', '2025-01-04 19:38:41'),
('dpBIG3Yhvj22HrjENMrB-D3kv9PNKPdw', '2025-01-05 21:02:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:02:59', '2025-01-04 21:02:59'),
('DPNXIJg_FK4HNFyN3vKhT3kBgYoDZQZ5', '2025-01-05 19:48:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:48:03', '2025-01-04 19:48:03'),
('DQgkx3q78b99zMKVFTPwZApEOJF5kWHv', '2025-01-05 19:46:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:46:15', '2025-01-04 19:46:15'),
('DrZY8M2VN_MnTRFj7o-eXIRqm9g6qUBL', '2025-01-05 21:02:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:02:59', '2025-01-04 21:02:59'),
('eqKNbfAwBmgdwuYqNvh0EAgQ1sPyysxb', '2025-01-05 05:09:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:09:47', '2025-01-04 05:09:47'),
('gRKQuIZHqcYvxLUL2rXzZ9K6jkvGfzmj', '2025-01-06 00:34:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:34:35', '2025-01-05 00:34:35'),
('gtFviPZYb5QQoFoqsq_hHd8vPRVidSYH', '2025-01-05 21:02:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:02:59', '2025-01-04 21:02:59'),
('hBjMyBsfyb-AbYniuGbXfCtUYXt2jywa', '2025-01-05 21:03:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:03:49', '2025-01-04 21:03:49'),
('hCP0XazLKfovV8Zu-UEohDY-1aj_1A_i', '2025-01-05 19:46:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:46:16', '2025-01-04 19:46:16'),
('HdyebOZG_2rUpINYpTl2MnOshtEoHaDA', '2025-01-05 04:44:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 04:44:10', '2025-01-04 04:44:38'),
('HLY-6t94SCifaL2SBD6XhPo5lJKKZ6Z8', '2025-01-05 04:57:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:57:37', '2025-01-04 04:57:37'),
('hyMLdLx1nnFJxO9jwWcsMRDbfmUhhBwB', '2025-01-05 05:13:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:13:02', '2025-01-04 05:13:02'),
('HYW0QZiRXTLSOjkIFrJWeliOdluds6qp', '2025-01-05 20:59:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:59:09', '2025-01-04 20:59:09'),
('IMKZker3bJbCu1ZKQn3ljVLTDxTRGlJG', '2025-01-05 21:07:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:07:48', '2025-01-04 21:07:48'),
('IRdh_a6hcEahoDjHV2BM_UAhrgxPDZZ7', '2025-01-05 19:48:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:48:03', '2025-01-04 19:48:03'),
('J3crOf95DRU2L807Krs_wGrav9CHtwpp', '2025-01-06 01:46:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 01:46:28', '2025-01-05 01:46:28'),
('JrUpA0eRryzoBEpGkaDNlXk8Zj9mlpc0', '2025-01-05 21:02:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:02:59', '2025-01-04 21:02:59'),
('KcySTZmtaPwjPSKiDtnwTmXkVmsg5hpn', '2025-01-05 19:37:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:37:50', '2025-01-04 19:37:50'),
('kgY5fP4LJH1E2PlG_Kgxk764dSgDIYC8', '2025-01-06 03:04:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"2e7d8911-36b1-4599-ada8-0249e1c8d3c4\",\"username\":\"superadmin\",\"role\":\"superadmin\",\"cabanguuid\":null}}', '2025-01-05 01:45:41', '2025-01-05 03:04:40'),
('kulEMsIruCvKbRBxFNHahiZWEjAKAbbp', '2025-01-05 19:48:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:48:03', '2025-01-04 19:48:03'),
('kZ-IvY3HDmcn3R5QpUx4q-P8bQflKw0b', '2025-01-05 20:56:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:56:34', '2025-01-04 20:56:34'),
('l_y8oprLEfsU8OTV0fyv6qdwolvMwGjV', '2025-01-05 04:44:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:44:17', '2025-01-04 04:44:17'),
('lAdIeenK1vXstZOgYQ93Zf2uikU6jmXv', '2025-01-05 19:37:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 19:37:45', '2025-01-04 19:37:50'),
('LnLDpZcVll70G2nKjXszQKLjwN1WuB9Z', '2025-01-06 00:41:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:41:00', '2025-01-05 00:41:00'),
('LoxjyPjAQYOXPyURKWya73Q09Ey_CRn_', '2025-01-05 21:03:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:03:49', '2025-01-04 21:03:49'),
('lS5Lxrx2bAlCRVSxXgvw4a0EF9WCEL4Y', '2025-01-06 03:10:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"2e7d8911-36b1-4599-ada8-0249e1c8d3c4\",\"username\":\"superadmin\",\"role\":\"superadmin\",\"cabanguuid\":null}}', '2025-01-05 02:05:31', '2025-01-05 03:10:49'),
('MAO3MzFLz-m4zpH_GURzC-DOVP5Ofwor', '2025-01-05 05:09:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:09:47', '2025-01-04 05:09:47'),
('N5kGufg4UT8u6WtFobM7hX54WR_Z_WYj', '2025-01-05 19:38:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:38:41', '2025-01-04 19:38:41'),
('NeYP4DJCq0rq49ygaqAKtA0ykIFQcXbY', '2025-01-05 04:57:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:57:36', '2025-01-04 04:57:36'),
('nk8XVuhQaZiacieWWxx65Ta7c6Oqcqhz', '2025-01-05 19:41:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:41:07', '2025-01-04 19:41:07'),
('oP08rRnGtbNBkV4iO9YAw961djbEBxH1', '2025-01-05 20:58:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 20:56:30', '2025-01-04 20:58:26'),
('P_I2rmGd7J5d8Ykrwge54tmdhUm1yMlQ', '2025-01-06 00:39:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:39:51', '2025-01-05 00:39:51'),
('PBxMSNEdWPojd1NsP7pOID0VckizsNzy', '2025-01-05 04:58:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 04:57:33', '2025-01-04 04:58:39'),
('pdwizxLkpAA5q2i0S_UzVsjDqPRuEbBA', '2025-01-06 00:41:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:41:11', '2025-01-05 00:41:11'),
('plbScS77wTJeKpJocHqGgYp_-I9GKvjs', '2025-01-05 21:04:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:04:24', '2025-01-04 21:04:24'),
('pvRUe2lfvu99zNgZp7FSFd6sh2Drhhu2', '2025-01-05 19:39:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 19:38:38', '2025-01-04 19:39:27'),
('q3KNtORRtS-ykow_RG2nGHbqwTW0yz9u', '2025-01-05 20:59:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 20:59:09', '2025-01-04 20:59:09'),
('qJKenoYh9zBBAgJIVCMA1ywhQRszmRdl', '2025-01-05 19:41:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:41:08', '2025-01-04 19:41:08'),
('QTRu5aVHOEugq4F2DgObUBNv7Sr-A2Qr', '2025-01-05 05:13:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:13:02', '2025-01-04 05:13:02'),
('R7OpyOTyglc5-XgUFXB442-J41en7i83', '2025-01-06 00:33:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:33:06', '2025-01-05 00:33:06'),
('RU9e0Adc0AeVRfY1_Env1TKNOTsCIBAs', '2025-01-05 21:04:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:04:57', '2025-01-04 21:04:57'),
('RVIeQLzHUpoRxrqk619T-Wp5yQ9enOQU', '2025-01-06 00:34:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-05 00:34:51', '2025-01-05 00:34:51'),
('TFDeume6KWGFC3rlRef45qaRplLc3XXS', '2025-01-05 05:23:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 05:13:00', '2025-01-04 05:23:40'),
('tro-G2HdcrQmc74lYnfLF2p-tDTDoV76', '2025-01-05 19:48:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:48:03', '2025-01-04 19:48:03'),
('TXrrDhcqSXxxnSrCBdDf12VDn_7cSL-N', '2025-01-05 04:44:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:44:41', '2025-01-04 04:44:41'),
('uKAry5r6fHhOq3fJkeHS2SuP-JTmYTuY', '2025-01-05 04:57:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 04:57:37', '2025-01-04 04:57:37'),
('Wj5ur_amDqTwOcJwtSswBURdy-rKXagb', '2025-01-05 19:41:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 19:41:01', '2025-01-04 19:41:15'),
('wNyzYhgPu1vwRSrlLklru-cAVJYvljQH', '2025-01-05 21:03:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:03:50', '2025-01-04 21:03:50'),
('xqKSK0gJGhPruNfZYho_vd5cujRailr1', '2025-01-05 19:37:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:37:50', '2025-01-04 19:37:50'),
('xuSEQQMT1DDxqKsoeBMxt7KRL23tmscm', '2025-01-05 19:46:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:46:15', '2025-01-04 19:46:15'),
('YG8Tx5WuFS1OQeJryBGZeYjuadD-8_bN', '2025-01-05 21:03:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 21:03:49', '2025-01-04 21:03:49'),
('yNXQ0fxQX8Jnq3bMvRxHTs-ry7F0JC8f', '2025-01-05 20:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-01-04 19:48:00', '2025-01-04 20:00:17'),
('ZgDep_TUYQqQTxhw5_KfSIiYY_ddLtr7', '2025-01-05 05:13:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 05:13:02', '2025-01-04 05:13:02'),
('ZMX34-4xtQ3OxiLiSHR1PQQH9wv1u-wE', '2025-01-05 19:37:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-01-04 19:37:50', '2025-01-04 19:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `transaksidetails`
--

CREATE TABLE `transaksidetails` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `transaksiuuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `jumlahbarang` int NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksidetails`
--

INSERT INTO `transaksidetails` (`uuid`, `transaksiuuid`, `baranguuid`, `jumlahbarang`, `harga`, `total`, `createdAt`, `updatedAt`) VALUES
('00440aa3-1cb8-47f8-9445-ceb0ef0f105e', '2ad064e8-5c3d-4f8b-88ec-33f3dd3f240e', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-27 00:44:22', '2024-12-27 00:44:22'),
('0081ce91-908e-411c-9310-436ce69e271b', 'fdee694a-8a72-4864-a771-789287b2af2e', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:12:03', '2024-12-31 20:12:03'),
('00e0c9ad-6f5f-43fd-b2a8-b68c5d7c62a1', 'b2743168-1af6-4741-8775-6f03acafb002', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-04 05:11:57', '2025-01-04 05:11:57'),
('00e3292a-a788-4509-9d4f-af920ba8d389', '8804e93b-bf1a-419b-9df8-a7ddf6b3ec47', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:01:41', '2024-12-31 20:01:41'),
('0157676f-50ad-425e-87e6-fc7a80b2bc5b', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('01c675ec-6b90-46f1-8461-39b33fb91ded', '3cc66b7a-5d17-47ad-83f8-a35dfa909cf9', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-23 19:08:11', '2024-12-23 19:08:11'),
('0336641a-74a6-4b7b-8204-d81d7bcb8a7c', '92dc071f-3481-4a8c-a726-c92bdd9ef49a', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-29 00:43:47', '2024-12-29 00:43:47'),
('05df1d4d-e998-4ed9-9047-1502f7b46cf5', '4ef1bf57-02ab-4916-8f6f-4fef48872201', '102562db-14be-418b-b6c4-e4bd62c65549', 2, '10000.00', '20000.00', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('05e1b663-d064-4ccb-87d9-ab5a83730711', 'e8f6720e-559b-4e7b-b376-5b33393f3ae7', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:00:56', '2024-12-31 20:00:56'),
('06320cc3-d209-4070-a986-bcc0c5138478', 'df9422ed-cf28-4d75-b9cb-cca4bd7efbab', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:54:05', '2025-01-01 05:54:05'),
('07fa0a3e-7b7e-4b63-b54e-63a887d5f52d', '22d5d833-078b-467b-b40b-a6d753f44585', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:53:42', '2025-01-01 22:53:42'),
('08a80c66-a24b-4e03-855f-d93dbf439c1d', 'f9fd6786-be04-418a-931b-61edd5866103', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 23:10:39', '2025-01-01 23:10:39'),
('09c2242f-1811-4e2d-9ef1-1f7d6f60e8ec', '64a28467-b8c0-4557-b7d6-546310d915c1', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-25 00:58:52', '2024-12-25 00:58:52'),
('0a585293-a3f5-4165-ba79-81affa17bd59', 'd64b25eb-2c91-4651-9316-0bd0babfc111', '8f19b892-0979-4fde-a448-c02f26a3d078', 3, '5000.00', '15000.00', '2025-01-02 12:51:29', '2025-01-02 12:51:29'),
('0fcb3934-ab46-4cb8-8029-e118f257d55e', '9514fe20-d04c-40a7-9896-b93bbbbf9b51', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2025-01-03 07:06:52', '2025-01-03 07:06:52'),
('10fd2685-06df-4679-926b-347421a65e2a', 'b3a7d219-2558-414c-b4b7-e4f128039899', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:20:05', '2025-01-01 04:20:05'),
('115af615-509c-4e87-a237-4874b1970a00', 'ac9eb015-d7ca-49cc-8d1d-3c703a4060f3', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 03:26:42', '2025-01-01 03:26:42'),
('120b9f0a-58dc-4a82-b888-c3464eb2600b', 'b955780f-083d-40d7-bb41-ab3a3f812383', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-05 01:24:29', '2025-01-05 01:24:29'),
('136e38ca-9ba3-4690-8321-018417f5037f', '20bdc4a0-40e4-4c40-aeeb-0223e3212431', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-29 00:21:05', '2024-12-29 00:21:05'),
('16719551-3d9d-40df-9373-3d59af4843a6', 'f6970bb0-de07-48ae-a2ed-a28f9edb7d31', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 19:17:26', '2024-12-23 19:17:26'),
('16e0a0f5-2dcd-4d50-83e6-4674a105c7a0', '591a35c3-807a-4eee-acba-89eb9358134d', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:56:32', '2025-01-01 22:56:32'),
('18077dc8-d9f5-460e-9446-5acfa6e9b622', 'da2772c2-47cf-422e-958c-244f4c09a8d4', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-02 12:44:55', '2025-01-02 12:44:55'),
('1aa12f1a-2709-4502-97ef-92334bd585fa', '39106526-4d22-4d59-b5fa-7b3530a0e54c', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 23:05:55', '2025-01-01 23:05:55'),
('1b39eab3-0fe7-4f61-bd6d-a6a2b6db31f8', 'b8a89b47-9f7b-4b73-8392-6982e4e8955b', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-02 12:58:15', '2025-01-02 12:58:15'),
('1c09861d-5274-45ee-a99e-e83ba76daa46', '22775784-0cdb-44f1-a371-149147e95b26', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 21:04:22', '2025-01-04 21:04:22'),
('1c77a8c3-b5c3-4a96-92a4-42e267c7d8c5', 'cad3bc0b-c039-403b-9c3f-3649578cfe2a', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 20:16:55', '2024-12-30 20:16:55'),
('1ecae2fe-dfd6-4f1c-a7b7-7d8562e24cf7', '10e54690-9fde-4eb7-aa25-2201843f2483', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-25 00:37:38', '2024-12-25 00:37:38'),
('1f30f925-edc5-4a9b-ade5-8fc8b5512481', 'c4ee30f0-aa7a-4252-a50b-7c59ef176ec7', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-30 20:34:00', '2024-12-30 20:34:00'),
('1f625332-adc6-4fe3-9479-48c69da815ca', '451f8492-187b-4c56-8b93-7dbcb2250f02', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-30 20:14:04', '2024-12-30 20:14:04'),
('202d8318-cac8-4638-bc63-3e263b85cc7d', '00545db7-39b8-400c-925c-dacff0470dac', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:50:19', '2024-12-31 00:50:19'),
('2142bef8-c754-4692-94df-7275a57f5e79', '23c1452a-7bd8-464d-9188-c9ab34dd1b7a', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 03:12:28', '2024-12-22 03:12:28'),
('2490d924-21aa-4da3-ac50-4c7d3ea61300', 'b1e1962a-2759-4f3a-a41b-df1156564b73', '8f19b892-0979-4fde-a448-c02f26a3d078', 3, '5000.00', '15000.00', '2024-12-30 21:01:20', '2024-12-30 21:01:20'),
('259c903a-ce1e-41de-b41f-23c1c3a7a958', '69665ac8-6bc4-4f91-9b6b-f276667f45c9', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:19:51', '2024-12-29 00:19:51'),
('25a319f9-102b-4109-b63c-14d15f5680d3', '12184f47-18ba-4cb9-9e46-20728326b668', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:09:58', '2025-01-01 05:09:58'),
('25f06466-2e3c-4087-ae8a-8dfd8e46f9ab', 'f65dfc88-1de2-456a-a281-fc40e4d3bf6a', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-04 00:42:34', '2025-01-04 00:42:34'),
('26725ac9-b93f-490f-b788-42e1f5f1a8bd', '9ac812e7-a4a7-4ae2-a53d-d001927a32c7', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:48:38', '2024-12-31 00:48:38'),
('270cc625-b0df-4dbb-858d-957532627d9a', 'ed7180b6-b5cd-4613-b3bf-08fb2100ebb1', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 05:01:30', '2024-12-22 05:01:30'),
('2c7f7577-e45b-4b2b-8c85-9a46368e6f23', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('2c80c458-b906-41df-9bdd-6c98c391bdcb', '89bcb5f5-254b-4121-bf2d-734c466da13e', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 21:07:45', '2025-01-04 21:07:45'),
('2cfcd461-c7a8-493c-8609-6a7433ac374d', 'ab752d19-a086-4ec2-8324-17ace1ef5957', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 14:34:40', '2024-12-30 14:34:40'),
('2e7ae9f9-d656-4d67-89dc-4d1c53808eec', '5294105d-052d-40d3-9eb4-29cd979f6afc', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:21:13', '2024-12-30 21:21:13'),
('2eab5d4c-bec1-43e4-acee-64ba3ff6d950', '9a57bd7e-db9a-4399-a923-85302a030d8d', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-05 00:33:37', '2025-01-05 00:33:37'),
('2f22d7dd-0aa1-4939-9dd6-c43b0bfeff40', 'e742336d-0710-47fd-94d2-e3296e7fcb8a', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 19:56:50', '2024-12-31 19:56:50'),
('2fc0e258-cc38-4de5-97db-567629b0db2e', '391ef541-e620-4474-b2d9-63f6e71670c1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-23 19:42:25', '2024-12-23 19:42:25'),
('30fd8440-351c-4065-97b5-3a8ce738075c', 'f5356566-e07f-4890-aa45-2e24c0e11280', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 20:30:10', '2024-12-30 20:30:10'),
('36e55c05-93d5-4afc-8250-c133cf2f955c', '4ef1bf57-02ab-4916-8f6f-4fef48872201', '8f19b892-0979-4fde-a448-c02f26a3d078', 3, '5000.00', '15000.00', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('38c57962-91f2-4493-9421-56a66111de12', '3256fb1d-be75-4082-aba7-9b1bb62fb4d6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:17:27', '2024-12-31 00:17:27'),
('38e20d58-9ddd-4986-976d-f9d5d5b3fa32', 'fc8ee7ff-a996-4f3b-8327-0c301869b251', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 15:28:40', '2024-12-23 15:28:40'),
('3a920ca8-c399-4673-a459-ce228dadd0a6', 'c29123bb-7f36-4c70-a060-0c3d6bfb9745', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:17:25', '2024-12-29 00:17:25'),
('3b095c95-ef57-40e7-9897-4d67b07a1369', '04bb71f7-0d67-4217-8884-21184e45dc72', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 21:44:47', '2025-01-01 21:44:47'),
('3b6c6322-f5c5-4314-86d2-21a4556efea5', 'e7a8d28e-e485-4ee0-a1e3-fe6c60e83678', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:20:12', '2024-12-30 21:20:12'),
('3c987daa-91a3-43f3-b6d9-9bb2a891e02a', '1c03cec7-ed34-4802-b23b-bbfceb3756c1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:20:09', '2025-01-01 05:20:09'),
('3fdc3151-b0b7-4b0c-b45f-8fecc77169c8', '6850a97c-cd28-4887-b970-396d18bbc3ef', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-23 19:34:17', '2024-12-23 19:34:17'),
('3ff0b61f-4acf-4a61-8960-61fc85d6a877', 'd5daf607-9e2e-4785-80b6-bc3164290581', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:36:52', '2024-12-29 00:36:52'),
('416e62b4-51e7-4bf0-a07f-ef830c3429db', '308b9f0c-5d71-47c5-9b5b-81c635c7bad1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:15:54', '2024-12-30 21:15:54'),
('4403899f-4464-452c-aa39-8535ca10f952', 'a0a6e6bf-6a82-41ec-b102-49b12661e539', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-02 13:09:41', '2025-01-02 13:09:41'),
('449660d8-88dc-4fa5-b3f1-c0c1314ee378', 'd3c92e05-0f84-43be-b87b-99ca5489818a', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 19:14:16', '2024-12-23 19:14:16'),
('44b04f33-5101-4fea-a3d2-05b0014966b9', '89ee0e22-a117-46f5-ba9a-37dc12f452e6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-28 23:45:57', '2024-12-28 23:45:57'),
('45f9d658-4e6a-4d7e-a313-945d8a0b27ca', '58cf2ec1-d969-488b-8b99-82f9853b322d', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 19:11:35', '2024-12-23 19:11:35'),
('46502e12-75de-481f-baa7-88323d266bca', '6521ddcb-7067-4457-a5ba-d7cc1d320294', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 02:22:37', '2024-12-22 02:22:37'),
('479a2d86-7567-4f03-bb1c-a288f1212dae', 'e46eb2fd-40f4-4f62-84c2-05d430adedab', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:32:34', '2025-01-01 22:32:34'),
('4949e1d0-369c-4b17-9833-db5598ac0271', 'd2c87fa2-3d17-40a3-9707-64b8fc0dd4c7', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 23:05:20', '2025-01-01 23:05:20'),
('49ae8582-e057-4f6c-924b-d44627a75ec4', 'eb220d5e-0aee-4478-a694-35bc17f51078', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:30:18', '2024-12-31 00:30:18'),
('4b0a7ccc-0e5b-4cd4-b97e-e80d9487cc4e', 'c84f8ccf-87db-4b0f-8c48-3e1c90635171', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-04 19:39:27', '2025-01-04 19:39:27'),
('4bd78f72-5f43-4c53-841e-8eccba292806', '4ee849bb-deb5-4f2e-8e29-d42e4c0f0adc', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 04:44:38', '2025-01-04 04:44:38'),
('4c30ad2b-185f-4642-a7eb-b7bfb513134d', 'da2772c2-47cf-422e-958c-244f4c09a8d4', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-02 12:44:55', '2025-01-02 12:44:55'),
('4ceee0b5-a2ab-4b42-b4c0-3736988eb22b', 'a3c26201-4664-48c6-8d54-f73abdac68f4', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:53:50', '2024-12-31 00:53:50'),
('4e52bcd4-196d-4c24-b1da-7a14675bf069', '4844cf08-84eb-419a-a492-110567e4d150', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-23 19:10:52', '2024-12-23 19:10:52'),
('4e8d3d7e-a6f3-44ec-9c77-711dff8a6998', 'd9415a3e-c081-4fb8-8222-7941b15fa7e8', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:47:10', '2024-12-31 00:47:10'),
('4f0a5eff-76c6-44ca-bb65-0e12d32b4e49', '18fcfbe2-3d1f-46f4-a82f-4dbc2f98b4c6', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-23 18:04:50', '2024-12-23 18:04:50'),
('5097364f-268b-4e6a-b112-1ba49d0765f9', '44427805-ec85-40f0-a513-d4894aaa9cde', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-31 20:19:25', '2024-12-31 20:19:25'),
('519e1883-4b68-4479-8a51-2ffa29efd594', '1d225fc3-b0ee-445a-be80-ce78b512ea94', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2025-01-05 00:40:52', '2025-01-05 00:40:52'),
('51de6faf-6db6-4bbb-aa48-41b75b2eb6de', 'd64b25eb-2c91-4651-9316-0bd0babfc111', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-02 12:51:29', '2025-01-02 12:51:29'),
('536cf304-8969-49d9-9555-8517790ffd1c', '1e3ea3e4-9c19-436b-9066-917d6ef0f551', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-29 00:12:56', '2024-12-29 00:12:56'),
('53aa8973-2b62-40e8-b376-033aa1b9ef0c', '9bda5d62-dc1c-4905-bf6c-e426e3d51375', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 21:56:16', '2025-01-01 21:56:16'),
('53e89c40-a284-4be0-8bca-3ad7bef4dcef', 'aa836f10-6b8e-4dc0-b605-468f94659ac7', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:51:53', '2025-01-01 22:51:53'),
('544a5f9c-e282-4385-a068-c465761da3a9', 'efa687c1-8b11-493a-a17d-4c256917428f', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-24 20:45:56', '2024-12-24 20:45:56'),
('54f19f58-f6cc-4a36-9a82-cfbfd2f162ff', '35fb2163-9bde-40ed-a333-71fec241aa80', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:03:53', '2024-12-31 20:03:53'),
('55dc9f26-8b39-42cb-bbd0-99925a339b5a', 'd613cb7e-d779-4135-96fc-6a85cc95c888', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-04 01:08:03', '2025-01-04 01:08:03'),
('55f84ceb-5522-4f05-9c84-092a26a05bb5', '4ef1bf57-02ab-4916-8f6f-4fef48872201', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('5615a91e-2b73-45ab-b007-f0b954cdabad', 'dbd5045c-30d4-497d-afdf-66712b740342', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-23 15:31:47', '2024-12-23 15:31:47'),
('5621c959-7801-4068-af14-b7e785b648be', '19474c92-c18e-4ac9-80c8-09d16780605f', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 22:03:12', '2025-01-01 22:03:12'),
('57afa7ab-d2ce-40b9-a69d-4eb40c9dc5d9', 'c45f428f-02b3-4211-9acd-3b7594d95b60', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:21:00', '2024-12-30 21:21:00'),
('59050efc-d675-42c1-9380-a3c5f411c3b6', 'b3c256dd-ea1c-400e-a153-5cb143ca21b0', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-23 18:22:04', '2024-12-23 18:22:04'),
('59abc0d7-f0e4-42c5-9d97-047c94ad64e9', '3dd28494-1945-47ef-92e8-5c541aa8fb65', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-02 12:42:36', '2025-01-02 12:42:36'),
('5b52107a-3d5b-4e95-8853-64255913c1c1', 'ac592d6f-7835-42af-ba5d-ff1392a3fac2', '0dca2395-7e4e-437f-a46f-976d67691a43', 5, '70000.00', '350000.00', '2024-12-21 22:42:00', '2024-12-21 22:42:00'),
('5bb0283e-a8d4-4c13-8277-7e521509574a', '2cb605a6-cc72-41d2-a73c-304f189f1fd8', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-05 00:39:47', '2025-01-05 00:39:47'),
('5bc1e2aa-a0db-414b-bc4e-f61859002e5f', '5a6b46fb-0552-46bb-b91f-a051f7ae1078', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-23 18:00:34', '2024-12-23 18:00:34'),
('5bc9fc16-872a-4320-bc33-1a7c75bb6d82', 'fbce1035-85a6-4064-8e05-33e8ded50a15', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:43:06', '2024-12-29 00:43:06'),
('5bdf2fc5-24c4-43dd-8a3a-972c7004ceda', '155b3fc6-3513-4b4c-a21a-a80dd7700f78', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-27 00:48:52', '2024-12-27 00:48:52'),
('5c20a45c-ea01-4f87-bb6c-f156f37c25fa', '5c1a266d-c72a-4a4a-ac8c-16b15325c99d', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:33:43', '2025-01-01 04:33:43'),
('5e19cbae-e3cc-4972-ba7a-889f5b738c29', '8172875c-1bdf-4288-8ba8-7f8db4121337', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 06:18:21', '2025-01-01 06:18:21'),
('607031c3-9dd3-4cbe-8773-f106e9155bcc', 'd72a815d-8726-4683-aea2-0c747b9d12b5', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 21:09:01', '2024-12-30 21:09:01'),
('60f1d194-26f8-4f29-a21d-80e519624973', 'd627bec3-bee0-4269-ba7a-35bf8627cc59', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 05:13:17', '2025-01-04 05:13:17'),
('6185f359-c6a2-49c1-ba8e-e3872a29a862', '7db07042-2be2-4421-8ce5-e6b3c93e3313', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:24:56', '2025-01-01 05:24:56'),
('6243bf41-29c0-4b60-ba36-13bad76b036f', '0a3a677d-a169-466e-a332-56816d971551', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 05:04:51', '2024-12-22 05:04:51'),
('62c9c69f-82be-40cf-930c-1c1da4827a8b', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('63957fdc-9255-43fd-88a8-2936a334e1a5', '98f25613-871c-4a02-9135-0327a8b0307f', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 00:52:15', '2025-01-04 00:52:15'),
('63c8a5ff-61e7-4033-bcbe-619e8a69ab2f', 'a0d5b902-9586-40a1-9b83-898b69decc3c', '8f19b892-0979-4fde-a448-c02f26a3d078', 2, '5000.00', '10000.00', '2024-12-23 18:46:54', '2024-12-23 18:46:54'),
('64eafacc-1232-4a30-b4e9-8dd5ae9bf4ac', '463ced63-d4d8-40b2-b215-0c57f286067d', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-24 20:15:48', '2024-12-24 20:15:48'),
('65e2e43e-ce43-482d-8837-142c36ac7ce7', '339dc7ae-de53-48b1-8077-ba11274781b6', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 15:26:31', '2024-12-23 15:26:31'),
('67559fa0-1187-468c-bd06-3d499a34cdb3', 'af658ec9-23d1-45d4-a34c-494be7b58434', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:56:05', '2024-12-31 00:56:05'),
('68fac011-af4a-4088-94ec-4e069d5efba6', '81bd6a2c-e3fb-468c-b95c-54d2309613fd', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 23:02:04', '2025-01-01 23:02:04'),
('6989552d-dc90-4789-a4b6-04234456db63', '12e97ab1-80eb-4318-9688-5dec3a23ad4a', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:40:23', '2024-12-31 00:40:23'),
('6a04c981-b79d-4c1a-94f1-ab37d2c28079', '0db3585c-dfe9-4bd0-8738-3ff421ebdffe', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-02 13:23:08', '2025-01-02 13:23:08'),
('6a59436d-bbea-4140-958b-7f404d2f0b10', 'f65dfc88-1de2-456a-a281-fc40e4d3bf6a', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2025-01-04 00:42:34', '2025-01-04 00:42:34'),
('6aca294c-1700-4eb1-b4b2-e4dd012679c4', '5c255172-9a6a-421e-a34c-53b6766be8aa', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 05:11:03', '2025-01-04 05:11:03'),
('6acaac62-7582-4934-bcfc-e1ae74a06691', '91d7ee03-d9b3-40b2-8b04-23e192e4700a', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 03:57:31', '2025-01-01 03:57:31'),
('6acef0bc-8550-444f-8b3e-d77b621be42e', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1, '100.00', '100.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('6c4faa86-2d5f-4e03-b1ef-d584fe6c306d', '89705d5b-ee06-4ab3-87bf-27bc3551058c', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 21:04:55', '2025-01-04 21:04:55'),
('6cf696a4-78f7-4ea5-b574-ffa467f1172d', '39f25aae-9ba1-48eb-b06c-9a4be6a2ffba', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-05 00:58:19', '2025-01-05 00:58:19'),
('6d74ad6a-7552-414c-87ed-6fce94aafe52', '9afd04e9-6ed2-48de-863b-5cfea256dbc2', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-28 23:46:08', '2024-12-28 23:46:08'),
('6dedc504-3084-4c28-9e75-3dfef6b09d16', '4e757cc5-51bb-4d0c-aec6-3aa2ea56a1b7', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-29 00:45:54', '2024-12-29 00:45:54'),
('6f0e3619-c45c-47ea-affb-ad72cdb24c75', '9d033a76-e08d-4117-bd0a-46762e963edb', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:17:01', '2024-12-30 21:17:01'),
('6f83c736-b023-42c1-a189-27fd3ac5f49d', '049061a0-8c0d-4b12-8db7-61bb34d58b54', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 06:13:53', '2025-01-01 06:13:53'),
('6fe9236e-f90f-4979-bd0d-3d844cce27b4', '339dc7ae-de53-48b1-8077-ba11274781b6', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-23 15:26:31', '2024-12-23 15:26:31'),
('704a5b75-8f30-4521-9fb2-937913dab4ba', '1d225fc3-b0ee-445a-be80-ce78b512ea94', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-05 00:40:52', '2025-01-05 00:40:52'),
('71225379-1eb0-4427-9404-718854279e80', 'dc055fa5-d0a1-41fb-95ab-abd6364e42f2', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:11:02', '2024-12-30 21:11:02'),
('712ef266-23be-4739-bbb9-3466dcd54d28', '9a13bfbb-09dd-4ab3-8fa9-667d15d4e574', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:23:21', '2024-12-31 00:23:21'),
('721fd949-9e40-49e3-a890-a4ad7466ba60', 'c2e28387-d2dd-4627-8c32-64fdd7d2a843', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-25 00:31:22', '2024-12-25 00:31:22'),
('74724fb7-ba39-4866-bb05-91b990b501ac', '46c119d6-55b0-4529-8b07-e3fd0ac98cf5', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 04:58:01', '2024-12-22 04:58:01'),
('75dee737-296a-4f26-9130-a55303e32921', 'f65dfc88-1de2-456a-a281-fc40e4d3bf6a', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-04 00:42:34', '2025-01-04 00:42:34'),
('761b1066-757e-46a5-8346-99e2632758ed', '18fcfbe2-3d1f-46f4-a82f-4dbc2f98b4c6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-23 18:04:50', '2024-12-23 18:04:50'),
('78d8cbef-e87b-4377-8b40-645770b0beb4', 'd47b887b-0557-4a56-a1a5-262d92a6beb6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:47:12', '2025-01-01 22:47:12'),
('79da66fc-ae38-4b2d-b388-e8b77e9301c3', 'a52f7db6-3652-4990-b2cd-5ae904ebbd53', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1, '100.00', '100.00', '2024-12-23 15:42:20', '2024-12-23 15:42:20'),
('7bc0e928-b5ce-4fa5-9787-e2a8582afdc6', '0db3585c-dfe9-4bd0-8738-3ff421ebdffe', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1, '100.00', '100.00', '2025-01-02 13:23:08', '2025-01-02 13:23:08'),
('7bf61731-3dae-4b82-ba07-00e75ea4ad7f', '1e3001ed-bec3-46e1-82a8-53b99f71cf3b', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:17:21', '2024-12-31 00:17:21'),
('7c2b9d2c-df0e-4ead-bfe7-7b584b2725a0', '058c2ce9-01c4-4e7b-a558-2c4c8083efc2', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-03 21:50:14', '2025-01-03 21:50:14'),
('7c603f2a-9f0b-4a0e-8b60-b6e88e0fa855', 'd5e692ab-6822-4521-9008-f7bd3586429a', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:19:00', '2024-12-29 00:19:00'),
('7cd5fba9-9b8c-476a-aa00-d16dedb7fa89', '831bc950-df1e-4338-b6fd-bf968c4533e7', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 21:08:24', '2025-01-04 21:08:24'),
('7e71a249-fa15-45ce-ae7b-67db52944b38', '294c8754-ee26-442d-bece-24c07b3decc2', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 21:57:20', '2025-01-01 21:57:20'),
('7f0063f8-1285-4908-9f5c-716630de2d68', '4bf155c8-fc05-430e-ac82-678fcd9d8876', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:45:43', '2025-01-01 22:45:43'),
('7f4a8a8d-93c9-49be-ba66-f415a4873352', '041ef40e-b02c-4f96-b54f-4836b1bebd68', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 02:26:02', '2024-12-22 02:26:02'),
('7fc70752-1875-4f4b-827f-2db1ce155c14', '18fcfbe2-3d1f-46f4-a82f-4dbc2f98b4c6', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 18:04:50', '2024-12-23 18:04:50'),
('812967b5-c7dc-4649-af6f-4eebfafa1f47', 'ea22caf5-1554-4d2f-84bc-f02c0e19e7aa', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-29 00:12:56', '2024-12-29 00:12:56'),
('83550adc-3ce5-4949-9420-a145bb682df1', '740f6d63-c5a1-467a-b160-62297cac45af', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 05:35:55', '2025-01-01 05:35:55'),
('83f58e70-46c3-4ecd-a2b8-6fc02459c0ab', '534b16d1-72b0-4ef4-a995-5f7529ed2d0c', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 05:35:01', '2025-01-01 05:35:01'),
('840d1836-64a2-42b5-bed1-0e02a7cec1a8', '3e8316ab-2987-4d62-9255-5ff630f0a3c0', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:21:26', '2025-01-01 04:21:26'),
('84658066-ce41-49be-b221-d3d8c0567133', '8dc5caa4-6b0a-448c-9ab8-6c5a66887c4d', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:56:08', '2025-01-01 04:56:08'),
('84c09027-8e5e-4b9a-becc-a2ec21408b85', 'f06bb77f-b9c1-44d8-8cb8-a16cb8a00217', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 03:34:08', '2025-01-01 03:34:08'),
('8529beed-947f-4f88-b05c-a9fdf6c51fc6', '505cbfa0-658a-4824-809d-1b7af284d1c9', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 02:15:59', '2024-12-22 02:15:59'),
('863a0cb9-d693-4ddd-8920-f7bae6b00ce3', '088f1612-a2c6-4d72-b5b2-8299131b2923', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:29:38', '2024-12-31 00:29:38'),
('8691ab1d-1e24-4ada-9da9-057be87f832a', '62951457-af1e-446c-b27c-6a65b63e9ad2', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-05 00:48:38', '2025-01-05 00:48:38'),
('86c82ada-17f6-4e2b-bd57-792ace7001df', '64a28467-b8c0-4557-b7d6-546310d915c1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-25 00:58:52', '2024-12-25 00:58:52'),
('8774ad59-5a37-4170-a694-02076f63a1aa', 'b5759020-d2d5-4e32-bdbe-300e62e2ac51', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:38:11', '2025-01-01 22:38:11'),
('879e49d3-26e4-429a-a9f0-bdb10d883af7', '4ef1bf57-02ab-4916-8f6f-4fef48872201', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('881a92cb-3a2e-4f6c-ba60-5b0d9604e13b', '61dbae52-264c-47b3-80f4-1337f8868239', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-31 20:18:26', '2024-12-31 20:18:26'),
('88883bd7-1667-4037-9313-801ba4896043', '22df617b-c1b6-4e8f-afb2-ad0062800681', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-25 00:22:23', '2024-12-25 00:22:23'),
('88cb3407-e228-471f-9784-38f9acf9eca5', 'c909638c-9ec0-4754-ba6a-1014f28d9ae6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:12:33', '2024-12-30 21:12:33'),
('88e83527-e3ea-4fa5-8b42-48c8e6aaf525', '2b34aa9c-01fc-4e5d-9506-9dbbafe92a16', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:08:22', '2025-01-01 05:08:22'),
('8b040ba7-e5a3-4893-a707-cdd5538b0ea7', 'a0d5b902-9586-40a1-9b83-898b69decc3c', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1, '100.00', '100.00', '2024-12-23 18:46:54', '2024-12-23 18:46:54'),
('8b2300a8-7c51-4f02-b891-a1124cde3766', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('8b984efc-88f3-49b6-a603-64e6814b1423', 'c6c35691-fb15-456b-8dfd-41eba4ca17dc', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 20:58:26', '2025-01-04 20:58:26'),
('8cacf883-b5a0-4fa8-882f-e7a0a91d351c', 'd10b41c1-0989-4f28-a43d-64a0a1d4d973', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 06:14:53', '2025-01-01 06:14:53'),
('8de3b5e6-e9c6-4eb1-aefd-830b4637503a', 'cd5d15ef-c7ec-4c4a-89b9-5417b177ff2d', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 05:17:00', '2024-12-22 05:17:00'),
('90c06430-9413-4471-8755-f83bb8349514', '61dbae52-264c-47b3-80f4-1337f8868239', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:18:26', '2024-12-31 20:18:26'),
('91243104-8a06-4630-b16b-e3bdccb95b41', 'f3cc8485-ff44-4284-8e6b-6c65263df3c9', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 19:38:57', '2025-01-04 19:38:57'),
('9146b672-6ef2-4c4e-91ee-486d2f414201', 'bf3e3e98-bdb4-4748-9177-ad8b0147f914', '8f19b892-0979-4fde-a448-c02f26a3d078', 2, '5000.00', '10000.00', '2024-12-27 00:42:29', '2024-12-27 00:42:29'),
('922c2e87-94b2-4eab-8cbd-f54b961e9b1e', '2a1bd9d4-2b8a-4764-977d-90cc16deb0c1', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-24 20:12:16', '2024-12-24 20:12:16'),
('92ac1dff-e858-4257-bc18-ae0ccb20d3af', 'cdb12d64-6051-483b-a6a4-a0ae94aecbe8', 'f1026428-e81e-49b0-9ae8-741875ec4cb1', 1, '20000.00', '20000.00', '2024-12-23 15:30:31', '2024-12-23 15:30:31'),
('92bf7dc6-31f4-4a9a-b0a4-ca51d3ef6ae7', '70a5fa83-1607-4aa5-8417-746898c0bf4a', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:12:41', '2024-12-31 00:12:41'),
('932a65a2-9e97-4b81-bc76-35a7cb3e039f', '71458fe0-87cd-4f81-89d0-576741e7e8bb', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:32:46', '2024-12-31 00:32:46'),
('935a6378-028e-4d19-a494-1a9497660807', '8843161f-d059-4a18-9f2e-870f5de36fbf', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 22:02:00', '2025-01-01 22:02:00'),
('93dae13e-3c72-4677-a027-7fb8ef254ced', 'c760505c-c339-455f-8e75-6a437e2e7c2f', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 03:37:34', '2025-01-01 03:37:34'),
('9760a0b4-e3a1-4667-9c04-a94d055bec12', '48515aad-df7c-4710-bf38-3f1b69fb102e', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:42:47', '2024-12-31 00:42:47'),
('977013a6-bce8-4628-9e10-60ec6060e917', '213a4eb4-cfe9-4683-a311-36c52b5ea6a3', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-29 00:48:23', '2024-12-29 00:48:23'),
('9788a806-d59b-42b8-8934-c74831cb9d4b', 'fc7d2abe-6127-405a-ab94-f43f3592c959', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 02:30:19', '2024-12-22 02:30:19'),
('992ae7e0-2aaf-4ff5-943f-ccf39c7b34ab', '64a28467-b8c0-4557-b7d6-546310d915c1', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-25 00:58:52', '2024-12-25 00:58:52'),
('9a7b1da8-9940-4136-b90b-ad8b677a3337', '70787d9b-9524-410d-b2c9-ca8a8838c9d7', '8f19b892-0979-4fde-a448-c02f26a3d078', 20, '5000.00', '100000.00', '2025-01-05 02:05:07', '2025-01-05 02:05:07'),
('9ce504f8-ed2b-486f-95a6-3f7c9c07ea62', '0db3585c-dfe9-4bd0-8738-3ff421ebdffe', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-02 13:23:08', '2025-01-02 13:23:08'),
('9d60a115-2420-4282-a8c1-ff36fe113442', 'b6479b1b-4e5d-4c91-9f47-e80d97025c5a', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 05:23:40', '2025-01-04 05:23:40'),
('9ed8f79c-727f-425c-bed3-89584890e4b3', 'be30eade-df5d-44a7-b78c-2af80765dc2e', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 06:35:26', '2025-01-01 06:35:26'),
('9f491938-498b-4601-84c3-79fa75a56407', 'c34b2a62-95d0-43b2-8c20-ac1591c4e317', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-23 18:55:22', '2024-12-23 18:55:22'),
('a0f97466-7e3c-4730-9324-c9922c1d6552', '79d0b53b-b13f-4506-a493-20516f6c896a', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 02:18:04', '2024-12-22 02:18:04'),
('a1abf3e9-8371-4e6c-9629-8634e7f6c4d9', 'f6b0d5df-7d8d-4001-a324-be9b0056d92c', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:39:22', '2024-12-29 00:39:22'),
('a21f7614-101e-4f3f-884a-a6c556d853bb', 'a887ef49-f7e4-418c-b24c-011d0c54404e', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 00:53:16', '2025-01-04 00:53:16'),
('a3c23b02-7228-4e73-a0fa-464740c4c882', '6f0e7c9a-a190-434c-a9ab-f76a355959f5', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-23 18:08:09', '2024-12-23 18:08:09'),
('a57ffc6c-855a-468d-a1c2-c07a697f8483', 'a52f7db6-3652-4990-b2cd-5ae904ebbd53', '8f19b892-0979-4fde-a448-c02f26a3d078', 2, '5000.00', '10000.00', '2024-12-23 15:42:20', '2024-12-23 15:42:20'),
('a6473bfd-b7c5-497f-9bba-30bcb96fff7d', '7c9f3ca9-9ea2-4a74-a1ab-e0a33eec19a8', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:10:47', '2025-01-01 04:10:47'),
('a64e1c87-7339-416c-85f5-e79e9529afc6', '0db3585c-dfe9-4bd0-8738-3ff421ebdffe', 'f1026428-e81e-49b0-9ae8-741875ec4cb1', 1, '20000.00', '20000.00', '2025-01-02 13:23:08', '2025-01-02 13:23:08'),
('a6b6eaec-b09c-4588-b41a-8c72fe2a2af8', 'f5741196-7f83-45e2-9c56-979e09d8d9b6', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 21:03:49', '2024-12-30 21:03:49'),
('a784c463-633e-4901-984d-47aa2cb09206', '2357fb68-254c-4ce2-825f-3d43799a6973', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 23:03:14', '2025-01-01 23:03:14'),
('a8e1d6bc-93f7-41d3-b76f-28b8c260c70f', '0c263928-242a-423e-9b7f-aaae9aba2c85', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2025-01-05 00:37:12', '2025-01-05 00:37:12'),
('a9877a5b-6e33-4607-8983-7ba38bfe1b7e', 'aedd20cd-c66e-4a9d-9573-6508e9ae25f6', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 05:10:05', '2025-01-04 05:10:05'),
('a98b72a2-0d37-463b-91ad-8b2c29122ed4', 'e170d32f-b1e1-4c95-9e8e-32eb5f81aee6', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-23 19:00:28', '2024-12-23 19:00:28'),
('a99627b0-34cd-4cda-b589-7460fe96ebd9', '75972962-d27d-4dae-ad6a-0b30f427dbac', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 03:47:41', '2025-01-01 03:47:41'),
('a9c02d97-9b61-4c56-9a59-6435f2b0fc41', 'e2b6ee02-9728-4aa4-a6c6-69ca26dfb9ce', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 21:54:26', '2025-01-01 21:54:26'),
('aa1d7eda-6ee0-4aef-9d87-d62fa1c8b32b', 'fd8e17ee-3c65-4745-ad92-b14e44095ddc', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-24 18:46:57', '2024-12-24 18:46:57'),
('ab31bb50-cfa7-4794-8526-51412e875179', 'b872e8ff-8e2c-4dc6-a63a-e5f3a599fc58', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:30:34', '2024-12-31 00:30:34'),
('ab4b4050-256d-4905-9d9c-05e68fd3dd35', '51177cd2-5c51-439f-a208-0bb12ad5848e', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-31 20:18:49', '2024-12-31 20:18:49'),
('abacecb7-eb3a-4cd5-ad33-7f82ca49139d', '4f655fa8-3a7d-44e1-ba1e-9a49f9b7401a', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 03:55:03', '2025-01-01 03:55:03'),
('abc3d435-3b52-4756-8bd3-c8dfd3fe0f53', 'b3c256dd-ea1c-400e-a153-5cb143ca21b0', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-23 18:22:04', '2024-12-23 18:22:04'),
('abcbab11-807b-4474-a165-d6bc1a4b8066', '5d47f349-c1ee-4956-8609-67543eebd268', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 03:46:41', '2025-01-01 03:46:41'),
('ac2442eb-605f-4d52-8f2a-59616df2bd7e', '45b11777-2a87-4098-b09b-9fa19d15dae1', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:22:20', '2024-12-29 00:22:20'),
('ad0e12ff-566a-4047-b141-f597ff605257', 'dacc2fd4-8cb0-43c1-b242-8e548f3efca5', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:00:45', '2024-12-31 20:00:45'),
('ae3430aa-4811-4c73-9844-9d47dbba92cf', '459140b1-56b3-47f3-82e4-8b9a3dc38bd6', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 03:37:48', '2025-01-01 03:37:48'),
('aef40fd5-7cbc-42be-854b-f2a8a87e3357', 'd202f4c6-4039-413c-8b1e-d45f58a778f1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-29 00:07:52', '2024-12-29 00:07:52'),
('af45bcb0-a98b-4618-ae2d-474d7f861eef', '85170e80-f73b-4d87-8c8a-8ba5564164fe', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:36:33', '2025-01-01 22:36:33'),
('afb75802-73c0-409c-b1fb-6eaa1c9bf45b', 'a0d5b902-9586-40a1-9b83-898b69decc3c', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-23 18:46:54', '2024-12-23 18:46:54'),
('afcbddb8-95eb-4c8c-b551-5e5f0f98b94d', '43f08edf-d22b-480f-9c39-fa2530c324f9', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 21:06:09', '2024-12-30 21:06:09'),
('b0a14517-9d98-41a2-9499-9c742d5a68c7', '4753ff46-0481-4590-a6d8-ccd3526bb3db', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:50:06', '2025-01-01 04:50:06'),
('b3f6a38e-d209-4288-a188-1fdafd53815c', '99be4ba5-e4c7-4370-b748-06d30feec86e', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:33:38', '2024-12-29 00:33:38'),
('b4825b06-25f1-49f2-a389-8ccbda5a044b', '5a6b46fb-0552-46bb-b91f-a051f7ae1078', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 18:00:34', '2024-12-23 18:00:34'),
('b4987179-c65e-4e05-9258-48138972c62f', '5f3d0458-5d12-4db4-8652-8e9548a82e7d', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:47:35', '2025-01-01 22:47:35'),
('b638bf66-b8ff-48b8-ad8e-b4d18ca0b265', '66ba15bc-0920-43e8-9fda-9c5c58037d38', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 20:11:10', '2024-12-30 20:11:10'),
('b7956604-a5e3-428d-a4a1-2799409bb0c9', 'd3932d21-93bc-44f6-99f2-cedbfc00a82f', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:47:05', '2025-01-01 05:47:05'),
('b902a9a3-3b99-4bbc-ae66-1d696f5804ff', '04bb71f7-0d67-4217-8884-21184e45dc72', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 21:44:47', '2025-01-01 21:44:47'),
('b9632e6a-d5fe-4d18-a3fa-7cb06cbf198a', '1545ccd7-91e9-4b21-b379-6dd7343ebdc5', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-24 18:43:22', '2024-12-24 18:43:22'),
('ba2b6c6c-529d-45f2-9986-0e2bda734dfc', 'fb2a4f38-be66-4ff9-a5b0-89cffd8d8e3a', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 20:00:16', '2025-01-04 20:00:16'),
('bb1248ea-6ac2-4210-8b03-7a4c9cc87b16', 'd8850c7a-b9f5-46e3-b576-6972406c93bc', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:36:05', '2024-12-31 00:36:05'),
('bbeaf587-acaf-4b10-9502-e21682a59277', '8bd7257a-8056-4cf8-93af-5f3c364e9e96', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:51:27', '2024-12-31 00:51:27'),
('bd192d05-4a8f-4173-8911-493f003d7311', '06dbdadb-01e6-4604-8328-00b97728ed96', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 19:54:17', '2025-01-04 19:54:17'),
('c0e1ae26-fb61-406d-9fa5-45369d221a0b', 'b8a89b47-9f7b-4b73-8392-6982e4e8955b', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-02 12:58:15', '2025-01-02 12:58:15'),
('c1b5e958-df11-4bc2-82f5-58e6506523c7', '23598859-42d7-4710-bc37-3e3cd86bf9cd', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:41:54', '2024-12-31 00:41:54'),
('c5ad6b32-ac82-4b84-8d19-d38253986b3b', 'de8aeee3-e58a-4acb-8d71-7fedd0bd5bd1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:20:40', '2024-12-31 00:20:40'),
('c8059bd3-2e10-4101-b210-aefb00e3cf4e', 'faf93995-5905-48f0-8c86-97576977ddbc', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-22 02:29:00', '2024-12-22 02:29:00'),
('c860a1f9-1abe-40f7-8c3d-79f106d69667', '2490ceba-9e08-42d5-adc9-b4d10e2755ca', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:49:55', '2025-01-01 04:49:55'),
('c8d4d070-4cea-4dc7-93eb-dbe5d595bb45', '058c2ce9-01c4-4e7b-a558-2c4c8083efc2', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-03 21:50:14', '2025-01-03 21:50:14'),
('c9103288-0580-4c09-9d4d-dfd81c24e793', '00256def-518c-4fb8-bcbd-663ee25663fe', '102562db-14be-418b-b6c4-e4bd62c65549', 2, '10000.00', '20000.00', '2024-12-29 00:41:00', '2024-12-29 00:41:00'),
('c95272ac-6c8e-409d-801a-46f98d34a7c8', 'eeb8b3dc-e76c-4299-8b86-defd638572c7', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-04 04:58:39', '2025-01-04 04:58:39'),
('c9685d6d-cec3-4fd4-9bba-02476744aa7b', '43cd0af7-8fc7-4f21-9685-cef9aa2ce29e', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-05 00:49:25', '2025-01-05 00:49:25'),
('cace9b91-3fd2-4231-869e-5b3e14b7b595', '6b8e8217-c2e4-4349-9acc-d9e08ea24203', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:16:02', '2024-12-30 21:16:02'),
('cb2e707b-0699-43ee-a359-2eab22a2b3b9', '18fcfbe2-3d1f-46f4-a82f-4dbc2f98b4c6', 'f1026428-e81e-49b0-9ae8-741875ec4cb1', 1, '20000.00', '20000.00', '2024-12-23 18:04:50', '2024-12-23 18:04:50'),
('cbe9eb34-af02-4181-a32d-1736f19b7145', '41fbf51a-d444-4960-aecc-2fce7206f34c', '0dca2395-7e4e-437f-a46f-976d67691a43', 2, '70000.00', '140000.00', '2024-12-22 02:19:58', '2024-12-22 02:19:58'),
('cc04fc65-61aa-4c92-a247-5aae293fff6b', '1cd9a3c0-f198-4137-8499-ace590e5cb24', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-23 19:05:31', '2024-12-23 19:05:31'),
('cc067937-5f97-48c5-bd1c-4f492cc41a45', 'b8732d92-d992-4f0c-87b0-747637f4eef1', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 23:06:25', '2025-01-01 23:06:25'),
('cd4e8c4e-9ea8-4787-bf5a-2a777717d130', '2f49630a-44d2-43c7-9af8-2cd753f2b6ee', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 21:55:18', '2025-01-01 21:55:18'),
('cdc97064-64b1-4ec9-aa56-3f55f19e882a', 'cad3bc0b-c039-403b-9c3f-3649578cfe2a', '0dca2395-7e4e-437f-a46f-976d67691a43', 2, '70000.00', '140000.00', '2024-12-30 20:16:55', '2024-12-30 20:16:55'),
('cdd76506-64a2-4c38-870f-ce0dd5225b58', '7489ab66-f2f3-4130-8199-92413a47f6ed', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:16:14', '2024-12-31 20:16:14'),
('ce38a045-65b5-4ad1-bcbe-07f6016cd0e5', '85e2f901-5d9f-47b7-b7bd-8ad22a7626a6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 20:05:55', '2024-12-31 20:05:55'),
('cff83c64-0462-469d-b2e0-92d7e373797d', '885de0a1-73d6-4bce-a1da-dbae2eae05c3', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-04 04:57:56', '2025-01-04 04:57:56'),
('d05bc0dc-12ec-4e3c-9b54-02429eb1487d', 'a6d47d4e-2bbb-4422-baa6-364b40ddc4b9', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 03:53:14', '2025-01-01 03:53:14'),
('d081a059-4785-430d-880f-786b5f46f633', '88fc85ff-db5a-4f42-812d-19393b9abb79', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 21:48:53', '2025-01-01 21:48:53'),
('d0e42910-b7a2-4ce7-ad20-c7249814493e', 'ab752d19-a086-4ec2-8324-17ace1ef5957', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-30 14:34:40', '2024-12-30 14:34:40'),
('d0fe1da0-73b2-41d7-8457-a09863d775b3', '73c0cd4f-4e5f-4863-9471-dc17137eb6c3', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 03:43:52', '2025-01-01 03:43:52'),
('d143f435-a75e-45c3-a8f4-25c07d828864', '7c679175-8422-4be6-b2ad-6c730afad6d9', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-05 00:49:52', '2025-01-05 00:49:52'),
('d2946250-5336-4674-afbd-0fa7fe66c130', '534b16d1-72b0-4ef4-a995-5f7529ed2d0c', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:35:01', '2025-01-01 05:35:01'),
('d2b755bb-8b3b-4dfc-a28e-c0a856ec5f0c', '1206205a-11ea-47cf-a8a3-487068465040', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:06:38', '2025-01-01 05:06:38'),
('d3e7c772-83a2-48a3-9ffc-c42fa82a2e23', '65faba8f-fa41-48e9-b634-2c1d0167406c', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:01:40', '2025-01-01 05:01:40'),
('d4d984db-1d22-4d20-9c4d-68142da14512', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', 'f1026428-e81e-49b0-9ae8-741875ec4cb1', 1, '20000.00', '20000.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('d70106f1-2b7f-48b4-aaae-b7fafcab2346', 'f27f65fc-9b8d-4987-8658-70f8155d84a7', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:31:36', '2024-12-29 00:31:36'),
('d712e398-a7c7-4abf-a1de-85e1a0e80d0d', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('d7b207f5-f8da-4f46-ac0c-0def87758264', '4ef1bf57-02ab-4916-8f6f-4fef48872201', 'f1026428-e81e-49b0-9ae8-741875ec4cb1', 1, '20000.00', '20000.00', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('d7e31b15-9102-4a12-9049-0b846f69a2e5', 'e2f48715-48a6-41af-99e3-b32f737bfd4c', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-31 19:53:20', '2024-12-31 19:53:20'),
('d86dba7a-de46-4de8-bbca-3c0eae15a0c3', '3fd7788b-b8e5-4cbf-9347-9a1e48f3a092', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:45:30', '2025-01-01 22:45:30'),
('d906116a-0225-4d17-ba38-02bf30d6f7f8', 'e0c3a628-8890-4836-b92c-7ebaafa1b0f5', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2025-01-04 00:58:31', '2025-01-04 00:58:31'),
('db5cbe1a-85b9-488b-aa1a-7a719a2366bc', 'f6733473-d92a-4627-84b3-d3468a4fcb04', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:57:42', '2024-12-31 00:57:42'),
('db745bd0-5946-430e-b299-0c17a0730dd9', '6aa3847b-b75e-4a4e-bc7d-6904c85c0646', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-24 20:07:44', '2024-12-24 20:07:44'),
('db95573a-39b5-494c-b588-e2f7eea0455e', '3657d1bb-7224-401d-8c56-791f2fdfc5ba', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-25 00:25:16', '2024-12-25 00:25:16'),
('dbdae77b-4a0d-47dd-a25a-742ca05a524a', '3bcbc643-387d-449d-ab83-01ea1dcc20dd', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('ddfc993e-56dd-4b4c-b049-9d0568b84ae1', 'da2772c2-47cf-422e-958c-244f4c09a8d4', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-02 12:44:55', '2025-01-02 12:44:55'),
('e18bffdf-c572-4454-b1d1-2b2f2c2b2da2', '358c07c4-aaf9-49ff-afd2-7332ae3f0533', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-05 00:54:29', '2025-01-05 00:54:29'),
('e1c7b5ec-0573-49a4-a5d0-a3f30253d6e4', 'b5cba80a-99bc-4b5d-af06-9b409adc956b', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-30 20:56:13', '2024-12-30 20:56:13'),
('e5be151a-98db-47be-be80-d6972ca948b9', 'd3de8843-0d2f-4c45-b418-2c5c9a5339a2', '38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 1, '50.00', '50.00', '2024-12-29 00:16:43', '2024-12-29 00:16:43'),
('e7094db6-37c6-443f-802f-fc6bb92b37a3', '4a7e7b2e-017b-4a45-a22a-860b883618da', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:33:46', '2024-12-29 00:33:46'),
('e73686c4-2df7-483a-8721-9ec3e9a9fb79', '18fcfbe2-3d1f-46f4-a82f-4dbc2f98b4c6', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2024-12-23 18:04:50', '2024-12-23 18:04:50'),
('e882d1f9-026a-4b82-96c3-cf90dbdf0790', '102b963a-2c9a-46ca-ba32-74a207ea2af2', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-31 00:11:53', '2024-12-31 00:11:53'),
('e8d81864-d88d-4aba-8453-c7499459981c', '15bfc279-2771-42d0-acac-b792342ce3dd', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:54:29', '2025-01-01 05:54:29'),
('e8f8d3e5-c38d-4f2a-92b6-a850e20744ab', '4ef1bf57-02ab-4916-8f6f-4fef48872201', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('ea1131d7-9871-4888-ada1-0c1e3595bec4', '8cb6436f-39b9-4aac-8206-5f58a8ff7e33', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-04 01:06:47', '2025-01-04 01:06:47'),
('ea451fa1-9b8d-4233-b197-e38ee032cd93', 'dc0a1f12-c292-4063-8a00-c84e040ac66c', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 22:15:15', '2025-01-01 22:15:15'),
('ebdf5c08-a5ed-42d0-8cc8-57d9c2bbd50d', '3e8316ab-2987-4d62-9255-5ff630f0a3c0', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 04:21:26', '2025-01-01 04:21:26'),
('ecfcdf17-763d-4f2e-85f0-1c92cb524467', '7489ab66-f2f3-4130-8199-92413a47f6ed', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-31 20:16:14', '2024-12-31 20:16:14');
INSERT INTO `transaksidetails` (`uuid`, `transaksiuuid`, `baranguuid`, `jumlahbarang`, `harga`, `total`, `createdAt`, `updatedAt`) VALUES
('ed58e0fc-ef81-401d-a83a-ed9785e564f0', 'd64b25eb-2c91-4651-9316-0bd0babfc111', '0dca2395-7e4e-437f-a46f-976d67691a43', 2, '70000.00', '140000.00', '2025-01-02 12:51:29', '2025-01-02 12:51:29'),
('ed5bd714-2ef9-4940-814f-1b55c16cea53', '0db3585c-dfe9-4bd0-8738-3ff421ebdffe', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2025-01-02 13:23:08', '2025-01-02 13:23:08'),
('ee9b4a71-9f54-459f-a32a-fe4f8cd34124', '5b0d7b4f-cef3-4652-b0f6-0817de889bb8', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2024-12-30 21:17:43', '2024-12-30 21:17:43'),
('eec36062-7e9a-4c9b-963c-01f6560d7cd6', '44427805-ec85-40f0-a513-d4894aaa9cde', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2024-12-31 20:19:25', '2024-12-31 20:19:25'),
('f0448285-12ec-4933-9300-35190695785d', 'b8a89b47-9f7b-4b73-8392-6982e4e8955b', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-02 12:58:15', '2025-01-02 12:58:15'),
('f12c1da5-af1b-432b-a9c6-bc8743612cd7', '1f2bfe7f-7771-42ea-9df2-ad2c06a6cb23', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 22:10:46', '2025-01-01 22:10:46'),
('f4541a8d-a9fb-480f-ab36-5fc9991700e0', 'ae74bcfc-9edc-4fdd-ba55-2b091afe3d5f', '102562db-14be-418b-b6c4-e4bd62c65549', 1, '10000.00', '10000.00', '2024-12-29 00:17:37', '2024-12-29 00:17:37'),
('f46d5980-b91d-4f5e-9cb2-dd90146b96e0', '7970c32a-836e-433f-a3ab-115253644ba9', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2025-01-01 03:35:34', '2025-01-01 03:35:34'),
('f5f7b2e1-9dce-4ad7-87e1-f8ed4617d512', 'f5db052a-8ecc-4f7b-9560-44c07018a687', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 1, '100000.00', '100000.00', '2024-12-24 18:46:06', '2024-12-24 18:46:06'),
('f75ffdc2-0958-4190-8e6d-c8288bccce4c', 'e2f482f4-b81d-4a05-937b-b31451131bb8', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:49:02', '2025-01-01 04:49:02'),
('fa219624-0eda-484b-9f0b-0f5d8aeae003', 'ebb9940e-461d-4749-8226-1b0b5d99fa18', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 04:41:38', '2025-01-01 04:41:38'),
('fadc7745-fd2d-425a-9751-5453d63c49d3', '88fc85ff-db5a-4f42-812d-19393b9abb79', '0dca2395-7e4e-437f-a46f-976d67691a43', 1, '70000.00', '70000.00', '2025-01-01 21:48:53', '2025-01-01 21:48:53'),
('fb030acc-96ef-45df-9530-07b7982595b5', '8630ecc5-1427-4f8b-a078-c159e1ca6297', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 2, '1.00', '2.00', '2024-12-31 00:46:28', '2024-12-31 00:46:28'),
('fdc832dd-cdca-4bf8-8bc9-da144c9637c6', '003774e3-3279-41b5-9e17-cc6574a075c6', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:07:17', '2025-01-01 05:07:17'),
('fe374a9b-ce26-494d-a77b-f0b42848f7fb', '0efe93c6-e375-49dc-85a6-9685bbcfb9a2', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 22:59:16', '2025-01-01 22:59:16'),
('fe4a6fc0-ec95-4216-a11e-1af2cac29f7e', '451f8492-187b-4c56-8b93-7dbcb2250f02', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, '5000.00', '5000.00', '2024-12-30 20:14:04', '2024-12-30 20:14:04'),
('fe54c1bd-16ce-45ad-906f-51e6635b83d6', '740f6d63-c5a1-467a-b160-62297cac45af', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 1, '1.00', '1.00', '2025-01-01 05:35:55', '2025-01-01 05:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `barangUuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `order_id` varchar(255) NOT NULL,
  `totaljual` decimal(10,2) NOT NULL,
  `useruuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tanggal` date NOT NULL,
  `status_pembayaran` enum('pending','settlement','capture','deny','cancel','expire') DEFAULT NULL,
  `pembayaran` enum('qris','cash') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`uuid`, `barangUuid`, `order_id`, `totaljual`, `useruuid`, `tanggal`, `status_pembayaran`, `pembayaran`, `createdAt`, `updatedAt`) VALUES
('00256def-518c-4fb8-bcbd-663ee25663fe', NULL, 'ORDER-1735407660546', '20000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'settlement', 'qris', '2024-12-29 00:41:00', '2024-12-29 00:41:35'),
('003774e3-3279-41b5-9e17-cc6574a075c6', NULL, 'ORDER-1735682837224', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:07:17', '2025-01-01 05:07:17'),
('00545db7-39b8-400c-925c-dacff0470dac', NULL, 'ORDER-1735581019436', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:50:19', '2024-12-31 00:50:19'),
('041ef40e-b02c-4f96-b54f-4836b1bebd68', NULL, 'ORDER-1734809162327', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 02:26:02', '2024-12-22 02:26:02'),
('049061a0-8c0d-4b12-8db7-61bb34d58b54', NULL, 'ORDER-1735686833537', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 06:13:53', '2025-01-01 06:13:53'),
('04bb71f7-0d67-4217-8884-21184e45dc72', NULL, 'ORDER-1735742687022', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 21:44:47', '2025-01-01 21:44:47'),
('058c2ce9-01c4-4e7b-a558-2c4c8083efc2', NULL, 'ORDER-1735915814365', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-03', 'settlement', 'qris', '2025-01-03 21:50:14', '2025-01-03 21:50:53'),
('06dbdadb-01e6-4604-8328-00b97728ed96', NULL, 'ORDER-1735995257173', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 19:54:17', '2025-01-04 19:54:17'),
('088f1612-a2c6-4d72-b5b2-8299131b2923', NULL, 'ORDER-1735579778298', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:29:38', '2024-12-31 00:29:38'),
('0a3a677d-a169-466e-a332-56816d971551', NULL, 'ORDER-1734818691415', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 05:04:51', '2024-12-22 05:04:51'),
('0c263928-242a-423e-9b7f-aaae9aba2c85', NULL, 'ORDER-1736012232577', '100000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-05', 'settlement', 'qris', '2025-01-05 00:37:12', '2025-01-05 00:37:37'),
('0db3585c-dfe9-4bd0-8738-3ff421ebdffe', NULL, 'ORDER-1735798988442', '125101.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-02', 'settlement', 'cash', '2025-01-02 13:23:08', '2025-01-02 13:23:08'),
('0efe93c6-e375-49dc-85a6-9685bbcfb9a2', NULL, 'ORDER-1735747156927', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:59:16', '2025-01-01 22:59:16'),
('102b963a-2c9a-46ca-ba32-74a207ea2af2', NULL, 'ORDER-1735578713298', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:11:53', '2024-12-31 00:11:53'),
('10e54690-9fde-4eb7-aa25-2201843f2483', NULL, 'ORDER-1735061858061', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'qris', '2024-12-25 00:37:38', '2024-12-25 00:38:09'),
('1206205a-11ea-47cf-a8a3-487068465040', NULL, 'ORDER-1735682798128', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:06:38', '2025-01-01 05:06:38'),
('12184f47-18ba-4cb9-9e46-20728326b668', NULL, 'ORDER-1735682998849', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:09:58', '2025-01-01 05:09:58'),
('12e97ab1-80eb-4318-9688-5dec3a23ad4a', NULL, 'ORDER-1735580423643', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:40:23', '2024-12-31 00:40:23'),
('1545ccd7-91e9-4b21-b379-6dd7343ebdc5', NULL, 'ORDER-1735040602564', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'settlement', 'cash', '2024-12-24 18:43:22', '2024-12-24 18:43:22'),
('155b3fc6-3513-4b4c-a21a-a80dd7700f78', NULL, 'ORDER-1735235332331', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-27', 'settlement', 'cash', '2024-12-27 00:48:52', '2024-12-27 00:48:52'),
('15bfc279-2771-42d0-acac-b792342ce3dd', NULL, 'ORDER-1735685669090', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:54:29', '2025-01-01 05:54:29'),
('18fcfbe2-3d1f-46f4-a82f-4dbc2f98b4c6', NULL, 'ORDER-1734951890028', '135001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'pending', 'qris', '2024-12-23 18:04:50', '2024-12-23 18:04:50'),
('19474c92-c18e-4ac9-80c8-09d16780605f', NULL, 'ORDER-1735743792820', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:03:12', '2025-01-01 22:03:12'),
('1c03cec7-ed34-4802-b23b-bbfceb3756c1', NULL, 'ORDER-1735683609654', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:20:09', '2025-01-01 05:20:09'),
('1cd9a3c0-f198-4137-8499-ace590e5cb24', NULL, 'ORDER-1734955531141', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:05:31', '2024-12-23 19:05:31'),
('1d225fc3-b0ee-445a-be80-ce78b512ea94', NULL, 'ORDER-1736012452044', '100001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-05', 'settlement', 'qris', '2025-01-05 00:40:52', '2025-01-05 00:41:11'),
('1e3001ed-bec3-46e1-82a8-53b99f71cf3b', NULL, 'ORDER-1735579041944', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'settlement', 'cash', '2024-12-31 00:17:21', '2024-12-31 00:17:21'),
('1e3ea3e4-9c19-436b-9066-917d6ef0f551', NULL, 'ORDER-1735405976525', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:12:56', '2024-12-29 00:12:56'),
('1f2bfe7f-7771-42ea-9df2-ad2c06a6cb23', NULL, 'ORDER-1735744246053', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:10:46', '2025-01-01 22:10:46'),
('20bdc4a0-40e4-4c40-aeeb-0223e3212431', NULL, 'ORDER-1735406465276', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:21:05', '2024-12-29 00:21:05'),
('213a4eb4-cfe9-4683-a311-36c52b5ea6a3', NULL, 'ORDER-1735408103977', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'settlement', 'qris', '2024-12-29 00:48:23', '2024-12-29 00:48:47'),
('22775784-0cdb-44f1-a371-149147e95b26', NULL, 'ORDER-1735999462806', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 21:04:22', '2025-01-04 21:04:22'),
('22d5d833-078b-467b-b40b-a6d753f44585', NULL, 'ORDER-1735746822931', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:53:42', '2025-01-01 22:53:42'),
('22df617b-c1b6-4e8f-afb2-ad0062800681', NULL, 'ORDER-1735060943267', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'cash', '2024-12-25 00:22:23', '2024-12-25 00:22:23'),
('2357fb68-254c-4ce2-825f-3d43799a6973', NULL, 'ORDER-1735747394928', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 23:03:14', '2025-01-01 23:03:14'),
('23598859-42d7-4710-bc37-3e3cd86bf9cd', NULL, 'ORDER-1735580514473', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:41:54', '2024-12-31 00:41:54'),
('23c1452a-7bd8-464d-9188-c9ab34dd1b7a', NULL, 'ORDER-1734811948795', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 03:12:28', '2024-12-22 03:12:28'),
('2490ceba-9e08-42d5-adc9-b4d10e2755ca', NULL, 'ORDER-1735681795089', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:49:55', '2025-01-01 04:49:55'),
('294c8754-ee26-442d-bece-24c07b3decc2', NULL, 'ORDER-1735743440934', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 21:57:20', '2025-01-01 21:57:20'),
('2a1bd9d4-2b8a-4764-977d-90cc16deb0c1', NULL, 'ORDER-1735045936861', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'settlement', 'cash', '2024-12-24 20:12:16', '2024-12-24 20:12:16'),
('2ad064e8-5c3d-4f8b-88ec-33f3dd3f240e', NULL, 'ORDER-1735235062166', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-27', 'settlement', 'cash', '2024-12-27 00:44:22', '2024-12-27 00:44:22'),
('2b34aa9c-01fc-4e5d-9506-9dbbafe92a16', NULL, 'ORDER-1735682902326', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:08:22', '2025-01-01 05:08:22'),
('2cb605a6-cc72-41d2-a73c-304f189f1fd8', NULL, 'ORDER-1736012387257', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-05', 'settlement', 'qris', '2025-01-05 00:39:47', '2025-01-05 00:40:03'),
('2f49630a-44d2-43c7-9af8-2cd753f2b6ee', NULL, 'ORDER-1735743318940', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 21:55:18', '2025-01-01 21:55:18'),
('308b9f0c-5d71-47c5-9b5b-81c635c7bad1', NULL, 'ORDER-1735568154342', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 21:15:54', '2024-12-30 21:15:54'),
('3256fb1d-be75-4082-aba7-9b1bb62fb4d6', NULL, 'ORDER-1735579047292', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:17:27', '2024-12-31 00:17:27'),
('339dc7ae-de53-48b1-8077-ba11274781b6', NULL, 'ORDER-1734942391062', '15000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 15:26:31', '2024-12-23 15:26:31'),
('358c07c4-aaf9-49ff-afd2-7332ae3f0533', NULL, 'ORDER-1736013269636', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-05', 'settlement', 'cash', '2025-01-05 00:54:29', '2025-01-05 00:54:29'),
('35fb2163-9bde-40ed-a333-71fec241aa80', NULL, 'ORDER-1735650233095', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 20:03:53', '2024-12-31 20:03:53'),
('3657d1bb-7224-401d-8c56-791f2fdfc5ba', NULL, 'ORDER-1735061116730', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'cash', '2024-12-25 00:25:16', '2024-12-25 00:25:16'),
('39106526-4d22-4d59-b5fa-7b3530a0e54c', NULL, 'ORDER-1735747555177', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 23:05:55', '2025-01-01 23:05:55'),
('391ef541-e620-4474-b2d9-63f6e71670c1', NULL, 'ORDER-1734957745986', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'qris', '2024-12-23 19:42:25', '2024-12-23 19:42:37'),
('39f25aae-9ba1-48eb-b06c-9a4be6a2ffba', NULL, 'ORDER-1736013499219', '5000.00', '1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', '2025-01-05', 'settlement', 'cash', '2025-01-05 00:58:19', '2025-01-05 00:58:19'),
('3bcbc643-387d-449d-ab83-01ea1dcc20dd', NULL, 'ORDER-1735062055051', '205151.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'cash', '2024-12-25 00:40:55', '2024-12-25 00:40:55'),
('3cc66b7a-5d17-47ad-83f8-a35dfa909cf9', NULL, 'ORDER-1734955691028', '50.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:08:11', '2024-12-23 19:08:11'),
('3dd28494-1945-47ef-92e8-5c541aa8fb65', NULL, 'ORDER-1735796556217', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-02', 'pending', 'qris', '2025-01-02 12:42:36', '2025-01-02 12:42:36'),
('3e8316ab-2987-4d62-9255-5ff630f0a3c0', NULL, 'ORDER-1735680085995', '5001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:21:25', '2025-01-01 04:21:25'),
('3fd7788b-b8e5-4cbf-9347-9a1e48f3a092', NULL, 'ORDER-1735746330766', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:45:30', '2025-01-01 22:45:30'),
('41fbf51a-d444-4960-aecc-2fce7206f34c', NULL, 'ORDER-1734808798086', '140000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 02:19:58', '2024-12-22 02:19:58'),
('43cd0af7-8fc7-4f21-9685-cef9aa2ce29e', NULL, 'ORDER-1736012965535', '5000.00', '1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', '2025-01-05', 'settlement', 'cash', '2025-01-05 00:49:25', '2025-01-05 00:49:25'),
('43f08edf-d22b-480f-9c39-fa2530c324f9', NULL, 'ORDER-1735567569436', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:06:09', '2024-12-30 21:06:09'),
('44427805-ec85-40f0-a513-d4894aaa9cde', NULL, 'ORDER-1735651165158', '75000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'settlement', 'cash', '2024-12-31 20:19:25', '2024-12-31 20:19:25'),
('451f8492-187b-4c56-8b93-7dbcb2250f02', NULL, 'ORDER-1735564444938', '75000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 20:14:04', '2024-12-30 20:14:04'),
('459140b1-56b3-47f3-82e4-8b9a3dc38bd6', NULL, 'ORDER-1735677468562', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:37:48', '2025-01-01 03:37:48'),
('45b11777-2a87-4098-b09b-9fa19d15dae1', NULL, 'ORDER-1735406540763', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:22:20', '2024-12-29 00:22:20'),
('463ced63-d4d8-40b2-b215-0c57f286067d', NULL, 'ORDER-1735046148135', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'settlement', 'qris', '2024-12-24 20:15:48', '2024-12-24 20:16:23'),
('46c119d6-55b0-4529-8b07-e3fd0ac98cf5', NULL, 'ORDER-1734818281896', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 04:58:01', '2024-12-22 04:58:01'),
('4753ff46-0481-4590-a6d8-ccd3526bb3db', NULL, 'ORDER-1735681806827', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:50:06', '2025-01-01 04:50:06'),
('4844cf08-84eb-419a-a492-110567e4d150', NULL, 'ORDER-1734955852575', '50.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:10:52', '2024-12-23 19:10:52'),
('48515aad-df7c-4710-bf38-3f1b69fb102e', NULL, 'ORDER-1735580567571', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:42:47', '2024-12-31 00:42:47'),
('4a7e7b2e-017b-4a45-a22a-860b883618da', NULL, 'ORDER-1735407226719', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:33:46', '2024-12-29 00:33:46'),
('4bf155c8-fc05-430e-ac82-678fcd9d8876', NULL, 'ORDER-1735746343320', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:45:43', '2025-01-01 22:45:43'),
('4e757cc5-51bb-4d0c-aec6-3aa2ea56a1b7', NULL, 'ORDER-1735407954443', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'settlement', 'qris', '2024-12-29 00:45:54', '2024-12-29 00:46:21'),
('4ee849bb-deb5-4f2e-8e29-d42e4c0f0adc', NULL, 'ORDER-1735940678820', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 04:44:38', '2025-01-04 04:44:38'),
('4ef1bf57-02ab-4916-8f6f-4fef48872201', NULL, 'ORDER-1735062456344', '225050.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'cash', '2024-12-25 00:47:36', '2024-12-25 00:47:36'),
('4f655fa8-3a7d-44e1-ba1e-9a49f9b7401a', NULL, 'ORDER-1735678503205', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 03:55:03', '2025-01-01 03:55:03'),
('505cbfa0-658a-4824-809d-1b7af284d1c9', NULL, 'ORDER-1734808559950', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 02:15:59', '2024-12-22 02:15:59'),
('51177cd2-5c51-439f-a208-0bb12ad5848e', NULL, 'ORDER-1735651129021', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'settlement', 'cash', '2024-12-31 20:18:49', '2024-12-31 20:18:49'),
('5294105d-052d-40d3-9eb4-29cd979f6afc', NULL, 'ORDER-1735568473330', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:21:13', '2024-12-30 21:21:13'),
('534b16d1-72b0-4ef4-a995-5f7529ed2d0c', NULL, 'ORDER-1735684501060', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:35:01', '2025-01-01 05:35:01'),
('58cf2ec1-d969-488b-8b99-82f9853b322d', NULL, 'ORDER-1734955895444', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:11:35', '2024-12-23 19:11:35'),
('591a35c3-807a-4eee-acba-89eb9358134d', NULL, 'ORDER-1735746992696', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:56:32', '2025-01-01 22:56:32'),
('5a6b46fb-0552-46bb-b91f-a051f7ae1078', NULL, 'ORDER-1734951634893', '15000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 18:00:34', '2024-12-23 18:00:34'),
('5b0d7b4f-cef3-4652-b0f6-0817de889bb8', NULL, 'ORDER-1735568263558', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:17:43', '2024-12-30 21:17:43'),
('5c1a266d-c72a-4a4a-ac8c-16b15325c99d', NULL, 'ORDER-1735680823027', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:33:43', '2025-01-01 04:33:43'),
('5c255172-9a6a-421e-a34c-53b6766be8aa', NULL, 'ORDER-1735942263541', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 05:11:03', '2025-01-04 05:11:03'),
('5d47f349-c1ee-4956-8609-67543eebd268', NULL, 'ORDER-1735678001306', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:46:41', '2025-01-01 03:46:41'),
('5f3d0458-5d12-4db4-8652-8e9548a82e7d', NULL, 'ORDER-1735746455034', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:47:35', '2025-01-01 22:47:35'),
('61dbae52-264c-47b3-80f4-1337f8868239', NULL, 'ORDER-1735651106246', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'settlement', 'cash', '2024-12-31 20:18:26', '2024-12-31 20:18:26'),
('62951457-af1e-446c-b27c-6a65b63e9ad2', NULL, 'ORDER-1736012918974', '70000.00', '1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', '2025-01-05', 'settlement', 'cash', '2025-01-05 00:48:38', '2025-01-05 00:48:38'),
('64a28467-b8c0-4557-b7d6-546310d915c1', NULL, 'ORDER-1735063132823', '75001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'cash', '2024-12-25 00:58:52', '2024-12-25 00:58:52'),
('6521ddcb-7067-4457-a5ba-d7cc1d320294', NULL, 'ORDER-1734808957395', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 02:22:37', '2024-12-22 02:22:37'),
('65faba8f-fa41-48e9-b634-2c1d0167406c', NULL, 'ORDER-1735682500938', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:01:40', '2025-01-01 05:01:40'),
('66ba15bc-0920-43e8-9fda-9c5c58037d38', NULL, 'ORDER-1735564270614', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 20:11:10', '2024-12-30 20:11:10'),
('6850a97c-cd28-4887-b970-396d18bbc3ef', NULL, 'ORDER-1734957257813', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'qris', '2024-12-23 19:34:17', '2024-12-23 19:34:37'),
('69665ac8-6bc4-4f91-9b6b-f276667f45c9', NULL, 'ORDER-1735406391743', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:19:51', '2024-12-29 00:19:51'),
('6aa3847b-b75e-4a4e-bc7d-6904c85c0646', NULL, 'ORDER-1735045664569', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'settlement', 'qris', '2024-12-24 20:07:44', '2024-12-24 20:08:27'),
('6b8e8217-c2e4-4349-9acc-d9e08ea24203', NULL, 'ORDER-1735568162744', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:16:02', '2024-12-30 21:16:02'),
('6f0e7c9a-a190-434c-a9ab-f76a355959f5', NULL, 'ORDER-1734952089958', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'pending', 'qris', '2024-12-23 18:08:09', '2024-12-23 18:08:09'),
('70787d9b-9524-410d-b2c9-ca8a8838c9d7', NULL, 'ORDER-1736017507147', '100000.00', '67a1852a-72ec-42a5-acc8-49f4a1bb10e0', '2025-01-05', 'settlement', 'cash', '2025-01-05 02:05:07', '2025-01-05 02:05:07'),
('70a5fa83-1607-4aa5-8417-746898c0bf4a', NULL, 'ORDER-1735578761351', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'settlement', 'cash', '2024-12-31 00:12:41', '2024-12-31 00:12:41'),
('71458fe0-87cd-4f81-89d0-576741e7e8bb', NULL, 'ORDER-1735579966464', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:32:46', '2024-12-31 00:32:46'),
('73c0cd4f-4e5f-4863-9471-dc17137eb6c3', NULL, 'ORDER-1735677832012', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:43:52', '2025-01-01 03:43:52'),
('740f6d63-c5a1-467a-b160-62297cac45af', NULL, 'ORDER-1735684555637', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:35:55', '2025-01-01 05:35:55'),
('7489ab66-f2f3-4130-8199-92413a47f6ed', NULL, 'ORDER-1735650974752', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 20:16:14', '2024-12-31 20:16:14'),
('75972962-d27d-4dae-ad6a-0b30f427dbac', NULL, 'ORDER-1735678061771', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:47:41', '2025-01-01 03:47:41'),
('7970c32a-836e-433f-a3ab-115253644ba9', NULL, 'ORDER-1735677334759', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:35:34', '2025-01-01 03:35:34'),
('79d0b53b-b13f-4506-a493-20516f6c896a', NULL, 'ORDER-1734808684022', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 02:18:04', '2024-12-22 02:18:04'),
('7c679175-8422-4be6-b2ad-6c730afad6d9', NULL, 'ORDER-1736012992399', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-05', 'settlement', 'cash', '2025-01-05 00:49:52', '2025-01-05 00:49:52'),
('7c9f3ca9-9ea2-4a74-a1ab-e0a33eec19a8', NULL, 'ORDER-1735679447817', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:10:47', '2025-01-01 04:10:47'),
('7db07042-2be2-4421-8ce5-e6b3c93e3313', NULL, 'ORDER-1735683896055', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:24:56', '2025-01-01 05:24:56'),
('8172875c-1bdf-4288-8ba8-7f8db4121337', NULL, 'ORDER-1735687101715', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 06:18:21', '2025-01-01 06:18:21'),
('81bd6a2c-e3fb-468c-b95c-54d2309613fd', NULL, 'ORDER-1735747324651', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 23:02:04', '2025-01-01 23:02:04'),
('831bc950-df1e-4338-b6fd-bf968c4533e7', NULL, 'ORDER-1735999704131', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 21:08:24', '2025-01-04 21:08:24'),
('85170e80-f73b-4d87-8c8a-8ba5564164fe', NULL, 'ORDER-1735745793216', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:36:33', '2025-01-01 22:36:33'),
('85e2f901-5d9f-47b7-b7bd-8ad22a7626a6', NULL, 'ORDER-1735650355816', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 20:05:55', '2024-12-31 20:05:55'),
('8630ecc5-1427-4f8b-a078-c159e1ca6297', NULL, 'ORDER-1735580788613', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:46:28', '2024-12-31 00:46:28'),
('8804e93b-bf1a-419b-9df8-a7ddf6b3ec47', NULL, 'ORDER-1735650101224', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 20:01:41', '2024-12-31 20:01:41'),
('8843161f-d059-4a18-9f2e-870f5de36fbf', NULL, 'ORDER-1735743720225', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:02:00', '2025-01-01 22:02:00'),
('885de0a1-73d6-4bce-a1da-dbae2eae05c3', NULL, 'ORDER-1735941476347', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 04:57:56', '2025-01-04 04:57:56'),
('88fc85ff-db5a-4f42-812d-19393b9abb79', NULL, 'ORDER-1735742933747', '70001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 21:48:53', '2025-01-01 21:48:53'),
('89705d5b-ee06-4ab3-87bf-27bc3551058c', NULL, 'ORDER-1735999495681', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 21:04:55', '2025-01-04 21:04:55'),
('89bcb5f5-254b-4121-bf2d-734c466da13e', NULL, 'ORDER-1735999665290', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 21:07:45', '2025-01-04 21:07:45'),
('89ee0e22-a117-46f5-ba9a-37dc12f452e6', NULL, 'ORDER-1735404357963', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-28', 'settlement', 'cash', '2024-12-28 23:45:57', '2024-12-28 23:45:57'),
('8bd7257a-8056-4cf8-93af-5f3c364e9e96', NULL, 'ORDER-1735581087230', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:51:27', '2024-12-31 00:51:27'),
('8cb6436f-39b9-4aac-8206-5f58a8ff7e33', NULL, 'ORDER-1735927607438', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 01:06:47', '2025-01-04 01:06:47'),
('8dc5caa4-6b0a-448c-9ab8-6c5a66887c4d', NULL, 'ORDER-1735682168173', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:56:08', '2025-01-01 04:56:08'),
('91d7ee03-d9b3-40b2-8b04-23e192e4700a', NULL, 'ORDER-1735678651651', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:57:31', '2025-01-01 03:57:31'),
('92dc071f-3481-4a8c-a726-c92bdd9ef49a', NULL, 'ORDER-1735407827609', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:43:47', '2024-12-29 00:43:47'),
('9514fe20-d04c-40a7-9896-b93bbbbf9b51', NULL, 'ORDER-1735862812859', '100000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-03', 'settlement', 'cash', '2025-01-03 07:06:52', '2025-01-03 07:06:52'),
('98f25613-871c-4a02-9135-0327a8b0307f', NULL, 'ORDER-1735926735003', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 00:52:15', '2025-01-04 00:52:15'),
('99be4ba5-e4c7-4370-b748-06d30feec86e', NULL, 'ORDER-1735407218390', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:33:38', '2024-12-29 00:33:38'),
('9a13bfbb-09dd-4ab3-8fa9-667d15d4e574', NULL, 'ORDER-1735579401497', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:23:21', '2024-12-31 00:23:21'),
('9a57bd7e-db9a-4399-a923-85302a030d8d', NULL, 'ORDER-1736012017554', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-05', 'settlement', 'qris', '2025-01-05 00:33:37', '2025-01-05 00:34:51'),
('9ac812e7-a4a7-4ae2-a53d-d001927a32c7', NULL, 'ORDER-1735580918052', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:48:38', '2024-12-31 00:48:38'),
('9afd04e9-6ed2-48de-863b-5cfea256dbc2', NULL, 'ORDER-1735404368843', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-28', 'pending', 'qris', '2024-12-28 23:46:08', '2024-12-28 23:46:08'),
('9bda5d62-dc1c-4905-bf6c-e426e3d51375', NULL, 'ORDER-1735743376554', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 21:56:16', '2025-01-01 21:56:16'),
('9d033a76-e08d-4117-bd0a-46762e963edb', NULL, 'ORDER-1735568221338', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:17:01', '2024-12-30 21:17:01'),
('a0a6e6bf-6a82-41ec-b102-49b12661e539', NULL, 'ORDER-1735798180992', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-02', 'pending', 'qris', '2025-01-02 13:09:40', '2025-01-02 13:09:40'),
('a0d5b902-9586-40a1-9b83-898b69decc3c', NULL, 'ORDER-1734954414431', '10101.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 18:46:54', '2024-12-23 18:46:54'),
('a3c26201-4664-48c6-8d54-f73abdac68f4', NULL, 'ORDER-1735581230531', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:53:50', '2024-12-31 00:53:50'),
('a52f7db6-3652-4990-b2cd-5ae904ebbd53', NULL, 'ORDER-1734943340525', '10100.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 15:42:20', '2024-12-23 15:42:20'),
('a6d47d4e-2bbb-4422-baa6-364b40ddc4b9', NULL, 'ORDER-1735678394099', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:53:14', '2025-01-01 03:53:14'),
('a887ef49-f7e4-418c-b24c-011d0c54404e', NULL, 'ORDER-1735926796465', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 00:53:16', '2025-01-04 00:53:16'),
('aa836f10-6b8e-4dc0-b605-468f94659ac7', NULL, 'ORDER-1735746713172', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:51:53', '2025-01-01 22:51:53'),
('ab752d19-a086-4ec2-8324-17ace1ef5957', NULL, 'ORDER-1735544080746', '75000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 14:34:40', '2024-12-30 14:34:40'),
('ac592d6f-7835-42af-ba5d-ff1392a3fac2', NULL, 'ORDER-1734795720682', '350000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-21', 'settlement', 'cash', '2024-12-21 22:42:00', '2024-12-21 22:42:00'),
('ac9eb015-d7ca-49cc-8d1d-3c703a4060f3', NULL, 'ORDER-1735676802025', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:26:42', '2025-01-01 03:26:42'),
('ae74bcfc-9edc-4fdd-ba55-2b091afe3d5f', NULL, 'ORDER-1735406257657', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:17:37', '2024-12-29 00:17:37'),
('aedd20cd-c66e-4a9d-9573-6508e9ae25f6', NULL, 'ORDER-1735942205725', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 05:10:05', '2025-01-04 05:10:05'),
('af658ec9-23d1-45d4-a34c-494be7b58434', NULL, 'ORDER-1735581365122', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:56:05', '2024-12-31 00:56:05'),
('b1e1962a-2759-4f3a-a41b-df1156564b73', NULL, 'ORDER-1735567280122', '15000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 21:01:20', '2024-12-30 21:01:20'),
('b2743168-1af6-4741-8775-6f03acafb002', NULL, 'ORDER-1735942317320', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 05:11:57', '2025-01-04 05:11:57'),
('b3a7d219-2558-414c-b4b7-e4f128039899', NULL, 'ORDER-1735680005056', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:20:05', '2025-01-01 04:20:05'),
('b3c256dd-ea1c-400e-a153-5cb143ca21b0', NULL, 'ORDER-1734952924022', '80000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 18:22:04', '2024-12-23 18:22:04'),
('b5759020-d2d5-4e32-bdbe-300e62e2ac51', NULL, 'ORDER-1735745891144', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:38:11', '2025-01-01 22:38:11'),
('b5cba80a-99bc-4b5d-af06-9b409adc956b', NULL, 'ORDER-1735566973257', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 20:56:13', '2024-12-30 20:56:13'),
('b6479b1b-4e5d-4c91-9f47-e80d97025c5a', NULL, 'ORDER-1735943020728', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 05:23:40', '2025-01-04 05:23:40'),
('b872e8ff-8e2c-4dc6-a63a-e5f3a599fc58', NULL, 'ORDER-1735579834734', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:30:34', '2024-12-31 00:30:34'),
('b8732d92-d992-4f0c-87b0-747637f4eef1', NULL, 'ORDER-1735747585685', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 23:06:25', '2025-01-01 23:06:25'),
('b8a89b47-9f7b-4b73-8392-6982e4e8955b', NULL, 'ORDER-1735797495313', '75001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-02', 'settlement', 'cash', '2025-01-02 12:58:15', '2025-01-02 12:58:15'),
('b955780f-083d-40d7-bb41-ab3a3f812383', NULL, 'ORDER-1736015069190', '70000.00', '1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', '2025-01-05', 'settlement', 'cash', '2025-01-05 01:24:29', '2025-01-05 01:24:29'),
('be30eade-df5d-44a7-b78c-2af80765dc2e', NULL, 'ORDER-1735688126180', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 06:35:26', '2025-01-01 06:35:26'),
('bf3e3e98-bdb4-4748-9177-ad8b0147f914', NULL, 'ORDER-1735234949015', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-27', 'settlement', 'cash', '2024-12-27 00:42:29', '2024-12-27 00:42:29'),
('c29123bb-7f36-4c70-a060-0c3d6bfb9745', NULL, 'ORDER-1735406245360', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:17:25', '2024-12-29 00:17:25'),
('c2e28387-d2dd-4627-8c32-64fdd7d2a843', NULL, 'ORDER-1735061482387', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-25', 'settlement', 'cash', '2024-12-25 00:31:22', '2024-12-25 00:31:22'),
('c34b2a62-95d0-43b2-8c20-ac1591c4e317', NULL, 'ORDER-1734954922724', '50.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 18:55:22', '2024-12-23 18:55:22'),
('c45f428f-02b3-4211-9acd-3b7594d95b60', NULL, 'ORDER-1735568460450', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 21:21:00', '2024-12-30 21:21:00'),
('c4ee30f0-aa7a-4252-a50b-7c59ef176ec7', NULL, 'ORDER-1735565640221', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 20:34:00', '2024-12-30 20:34:00'),
('c6c35691-fb15-456b-8dfd-41eba4ca17dc', NULL, 'ORDER-1735999106903', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 20:58:26', '2025-01-04 20:58:26'),
('c760505c-c339-455f-8e75-6a437e2e7c2f', NULL, 'ORDER-1735677454724', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:37:34', '2025-01-01 03:37:34'),
('c84f8ccf-87db-4b0f-8c48-3e1c90635171', NULL, 'ORDER-1735994367332', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 19:39:27', '2025-01-04 19:39:27'),
('c909638c-9ec0-4754-ba6a-1014f28d9ae6', NULL, 'ORDER-1735567953671', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:12:33', '2024-12-30 21:12:33'),
('cad3bc0b-c039-403b-9c3f-3649578cfe2a', NULL, 'ORDER-1735564615318', '145000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 20:16:55', '2024-12-30 20:16:55'),
('cd5d15ef-c7ec-4c4a-89b9-5417b177ff2d', NULL, 'ORDER-1734819420531', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 05:17:00', '2024-12-22 05:17:00'),
('cdb12d64-6051-483b-a6a4-a0ae94aecbe8', NULL, 'ORDER-1734942630984', '20000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 15:30:30', '2024-12-23 15:30:30'),
('d10b41c1-0989-4f28-a43d-64a0a1d4d973', NULL, 'ORDER-1735686893404', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 06:14:53', '2025-01-01 06:14:53'),
('d202f4c6-4039-413c-8b1e-d45f58a778f1', NULL, 'ORDER-1735405672538', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:07:52', '2024-12-29 00:07:52'),
('d2c87fa2-3d17-40a3-9707-64b8fc0dd4c7', NULL, 'ORDER-1735747520465', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 23:05:20', '2025-01-01 23:05:20'),
('d3932d21-93bc-44f6-99f2-cedbfc00a82f', NULL, 'ORDER-1735685225745', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:47:05', '2025-01-01 05:47:05'),
('d3c92e05-0f84-43be-b87b-99ca5489818a', NULL, 'ORDER-1734956056127', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:14:16', '2024-12-23 19:14:16'),
('d3de8843-0d2f-4c45-b418-2c5c9a5339a2', NULL, 'ORDER-1735406203870', '50.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:16:43', '2024-12-29 00:16:43'),
('d47b887b-0557-4a56-a1a5-262d92a6beb6', NULL, 'ORDER-1735746432132', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:47:12', '2025-01-01 22:47:12'),
('d5daf607-9e2e-4785-80b6-bc3164290581', NULL, 'ORDER-1735407412033', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'settlement', 'qris', '2024-12-29 00:36:52', '2024-12-29 00:38:13'),
('d5e692ab-6822-4521-9008-f7bd3586429a', NULL, 'ORDER-1735406340146', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:19:00', '2024-12-29 00:19:00'),
('d613cb7e-d779-4135-96fc-6a85cc95c888', NULL, 'ORDER-1735927683407', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 01:08:03', '2025-01-04 01:08:03'),
('d627bec3-bee0-4269-ba7a-35bf8627cc59', NULL, 'ORDER-1735942397699', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 05:13:17', '2025-01-04 05:13:17'),
('d64b25eb-2c91-4651-9316-0bd0babfc111', NULL, 'ORDER-1735797089388', '155001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-02', 'settlement', 'cash', '2025-01-02 12:51:29', '2025-01-02 12:51:29'),
('d72a815d-8726-4683-aea2-0c747b9d12b5', NULL, 'ORDER-1735567741051', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 21:09:01', '2024-12-30 21:09:01'),
('d8850c7a-b9f5-46e3-b576-6972406c93bc', NULL, 'ORDER-1735580165895', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:36:05', '2024-12-31 00:36:05'),
('d9415a3e-c081-4fb8-8222-7941b15fa7e8', NULL, 'ORDER-1735580830198', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:47:10', '2024-12-31 00:47:10'),
('da2772c2-47cf-422e-958c-244f4c09a8d4', NULL, 'ORDER-1735796695686', '75001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-02', 'settlement', 'cash', '2025-01-02 12:44:55', '2025-01-02 12:44:55'),
('dacc2fd4-8cb0-43c1-b242-8e548f3efca5', NULL, 'ORDER-1735650045931', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'settlement', 'cash', '2024-12-31 20:00:45', '2024-12-31 20:00:45'),
('dbd5045c-30d4-497d-afdf-66712b740342', NULL, 'ORDER-1734942707920', '50.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 15:31:47', '2024-12-23 15:31:47'),
('dc055fa5-d0a1-41fb-95ab-abd6364e42f2', NULL, 'ORDER-1735567862654', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:11:02', '2024-12-30 21:11:02'),
('dc0a1f12-c292-4063-8a00-c84e040ac66c', NULL, 'ORDER-1735744515017', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 22:15:15', '2025-01-01 22:15:15'),
('de8aeee3-e58a-4acb-8d71-7fedd0bd5bd1', NULL, 'ORDER-1735579240622', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:20:40', '2024-12-31 00:20:40'),
('df9422ed-cf28-4d75-b9cb-cca4bd7efbab', NULL, 'ORDER-1735685645726', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 05:54:05', '2025-01-01 05:54:05'),
('e0c3a628-8890-4836-b92c-7ebaafa1b0f5', NULL, 'ORDER-1735927111874', '100000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 00:58:31', '2025-01-04 00:58:31'),
('e170d32f-b1e1-4c95-9e8e-32eb5f81aee6', NULL, 'ORDER-1734955228876', '50.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:00:28', '2024-12-23 19:00:28'),
('e2b6ee02-9728-4aa4-a6c6-69ca26dfb9ce', NULL, 'ORDER-1735743266792', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 21:54:26', '2025-01-01 21:54:26'),
('e2f482f4-b81d-4a05-937b-b31451131bb8', NULL, 'ORDER-1735681742250', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:49:02', '2025-01-01 04:49:02'),
('e2f48715-48a6-41af-99e3-b32f737bfd4c', NULL, 'ORDER-1735649600095', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 19:53:20', '2024-12-31 19:53:20'),
('e46eb2fd-40f4-4f62-84c2-05d430adedab', NULL, 'ORDER-1735745554622', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 22:32:34', '2025-01-01 22:32:34'),
('e742336d-0710-47fd-94d2-e3296e7fcb8a', NULL, 'ORDER-1735649810292', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 19:56:50', '2024-12-31 19:56:50'),
('e7a8d28e-e485-4ee0-a1e3-fe6c60e83678', NULL, 'ORDER-1735568412040', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'pending', 'qris', '2024-12-30 21:20:12', '2024-12-30 21:20:12'),
('e8f6720e-559b-4e7b-b376-5b33393f3ae7', NULL, 'ORDER-1735650056136', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 20:00:56', '2024-12-31 20:00:56'),
('ea22caf5-1554-4d2f-84bc-f02c0e19e7aa', NULL, 'ORDER-1735405976517', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:12:56', '2024-12-29 00:12:56'),
('eb220d5e-0aee-4478-a694-35bc17f51078', NULL, 'ORDER-1735579818309', '2.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:30:18', '2024-12-31 00:30:18'),
('ebb9940e-461d-4749-8226-1b0b5d99fa18', NULL, 'ORDER-1735681298935', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 04:41:38', '2025-01-01 04:41:38'),
('ed7180b6-b5cd-4613-b3bf-08fb2100ebb1', NULL, 'ORDER-1734818490919', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 05:01:30', '2024-12-22 05:01:30'),
('eeb8b3dc-e76c-4299-8b86-defd638572c7', NULL, 'ORDER-1735941519161', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 04:58:39', '2025-01-04 04:58:39'),
('efa687c1-8b11-493a-a17d-4c256917428f', NULL, 'ORDER-1735047956160', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'settlement', 'cash', '2024-12-24 20:45:56', '2024-12-24 20:45:56'),
('f06bb77f-b9c1-44d8-8cb8-a16cb8a00217', NULL, 'ORDER-1735677248499', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'pending', 'qris', '2025-01-01 03:34:08', '2025-01-01 03:34:08'),
('f27f65fc-9b8d-4987-8658-70f8155d84a7', NULL, 'ORDER-1735407096311', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'settlement', 'qris', '2024-12-29 00:31:36', '2024-12-29 00:33:03'),
('f3cc8485-ff44-4284-8e6b-6c65263df3c9', NULL, 'ORDER-1735994337052', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 19:38:57', '2025-01-04 19:38:57'),
('f5356566-e07f-4890-aa45-2e24c0e11280', NULL, 'ORDER-1735565410917', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 20:30:10', '2024-12-30 20:30:10'),
('f5741196-7f83-45e2-9c56-979e09d8d9b6', NULL, 'ORDER-1735567429342', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-30', 'settlement', 'cash', '2024-12-30 21:03:49', '2024-12-30 21:03:49'),
('f5db052a-8ecc-4f7b-9560-44c07018a687', NULL, 'ORDER-1735040766353', '100000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'settlement', 'cash', '2024-12-24 18:46:06', '2024-12-24 18:46:06'),
('f65dfc88-1de2-456a-a281-fc40e4d3bf6a', NULL, 'ORDER-1735926154375', '170001.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 00:42:34', '2025-01-04 00:42:34'),
('f6733473-d92a-4627-84b3-d3468a4fcb04', NULL, 'ORDER-1735581462411', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 00:57:42', '2024-12-31 00:57:42'),
('f6970bb0-de07-48ae-a2ed-a28f9edb7d31', NULL, 'ORDER-1734956246179', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 19:17:26', '2024-12-23 19:17:26'),
('f6b0d5df-7d8d-4001-a324-be9b0056d92c', NULL, 'ORDER-1735407562270', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:39:22', '2024-12-29 00:39:22'),
('f9fd6786-be04-418a-931b-61edd5866103', NULL, 'ORDER-1735747839841', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-01', 'settlement', 'cash', '2025-01-01 23:10:39', '2025-01-01 23:10:39'),
('faf93995-5905-48f0-8c86-97576977ddbc', NULL, 'ORDER-1734809340379', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'pending', 'qris', '2024-12-22 02:29:00', '2024-12-22 02:29:00'),
('fb2a4f38-be66-4ff9-a5b0-89cffd8d8e3a', NULL, 'ORDER-1735995616990', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-01-04', 'settlement', 'cash', '2025-01-04 20:00:16', '2025-01-04 20:00:16'),
('fbce1035-85a6-4064-8e05-33e8ded50a15', NULL, 'ORDER-1735407786479', '10000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-29', 'pending', 'qris', '2024-12-29 00:43:06', '2024-12-29 00:43:06'),
('fc7d2abe-6127-405a-ab94-f43f3592c959', NULL, 'ORDER-1734809419805', '70000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-22', 'settlement', 'cash', '2024-12-22 02:30:19', '2024-12-22 02:30:19'),
('fc8ee7ff-a996-4f3b-8327-0c301869b251', NULL, 'ORDER-1734942520885', '5000.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-23', 'settlement', 'cash', '2024-12-23 15:28:40', '2024-12-23 15:28:40'),
('fd8e17ee-3c65-4745-ad92-b14e44095ddc', NULL, 'ORDER-1735040817388', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-24', 'pending', 'qris', '2024-12-24 18:46:57', '2024-12-24 18:46:57'),
('fdee694a-8a72-4864-a771-789287b2af2e', NULL, 'ORDER-1735650723485', '1.00', '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2024-12-31', 'pending', 'qris', '2024-12-31 20:12:03', '2024-12-31 20:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('superadmin','admin','kasir') NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `username`, `password`, `role`, `cabanguuid`, `createdAt`, `updatedAt`) VALUES
('1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', 'pengelola', '$argon2id$v=19$m=65536,t=3,p=4$7iQg7TcbQx+zTjzoDPjhfQ$TM+SqNAw13QXJ0qrC5REUZ4gxlWWIcjkA2oDbWRwamc', 'kasir', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-21 01:54:52', '2024-12-28 19:04:08'),
('2e7d8911-36b1-4599-ada8-0249e1c8d3c4', 'superadmin', '$argon2id$v=19$m=65536,t=3,p=4$UKjXBKCgDuduzKuhyVrdPg$ba5D3py3NEGyWAFwlClsvsHXmdhT3ChPZNOKBHU4BKI', 'superadmin', NULL, '2024-11-28 14:56:03', '2025-01-03 08:53:32'),
('4481955e-c1d3-4029-b15c-c5626c580733', 'admincabang2', '$argon2id$v=19$m=65536,t=3,p=4$IKfjJNilq1+bKLf3jy3a6A$HGqUUEJtWTSY5tet7GutPr8oZ1hIewh68Ah3RSGtELU', 'admin', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-13 23:30:51', '2024-12-13 23:30:51'),
('5d93a890-e59c-4121-a370-7a2722e6c66a', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$uracD2odlRq/1xjKdK0xwQ$CfGf1JuAbBz/6aUJQPfSuNIhSOzz7i3uOZM4dwg0dww', 'admin', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 15:05:56', '2024-11-28 15:05:56'),
('67a1852a-72ec-42a5-acc8-49f4a1bb10e0', 'hapuscabang', '$argon2id$v=19$m=65536,t=3,p=4$bvcHDdwURX82nMOVMqh/sw$JR6aX/QIr9HcglMvGU0yKAghWWSKrTAJNe+3qYBPUhs', 'kasir', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-02 15:40:12', '2024-12-02 19:44:56'),
('7df0d418-742d-4c94-bc8a-d3c3b2b76fd0', 'admincabangtesthapus', '$argon2id$v=19$m=65536,t=3,p=4$0Cv8yOJUqrh+Q1KN4l80+A$jg6YEhT62HsbRW/v/VUxYZXFg1MhXRMLKQEJnCsrJoE', 'admin', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-19 11:16:01', '2024-12-19 11:16:01'),
('94e861b3-2af5-447a-91f5-bb285c6f7a3b', 'kasir', '$argon2id$v=19$m=65536,t=3,p=4$QJ24EMumpIkKe/attRQ8BQ$V2jL0YJArFEXDyVCGh/KsS2BRWEPUi2sfxbD5brftUo', 'kasir', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 21:01:38', '2024-12-21 18:59:22'),
('c582e7f4-dd8d-49ee-a456-4b2b13bb3fbc', 'hapuscabang', '$argon2id$v=19$m=65536,t=3,p=4$o0DmV3lcHuwIOoM7SYB7IA$TPxtSXFMtC1fkA0I55NUFGVzDkiy6lf+UUr6vtv1OTE', 'kasir', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-02 15:42:04', '2024-12-02 15:42:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangcabangs`
--
ALTER TABLE `barangcabangs`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `BarangCabangs_cabanguuid_baranguuid_unique` (`baranguuid`,`cabanguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `kategoriuuid` (`kategoriuuid`);

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `transaksidetails`
--
ALTER TABLE `transaksidetails`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `transaksiuuid` (`transaksiuuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `barangUuid` (`barangUuid`),
  ADD KEY `useruuid` (`useruuid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangcabangs`
--
ALTER TABLE `barangcabangs`
  ADD CONSTRAINT `barangcabangs_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barangcabangs_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_ibfk_1` FOREIGN KEY (`kategoriuuid`) REFERENCES `kategoris` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `transaksidetails`
--
ALTER TABLE `transaksidetails`
  ADD CONSTRAINT `transaksidetails_ibfk_1` FOREIGN KEY (`transaksiuuid`) REFERENCES `transaksis` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksidetails_ibfk_2` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`barangUuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_2` FOREIGN KEY (`useruuid`) REFERENCES `users` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

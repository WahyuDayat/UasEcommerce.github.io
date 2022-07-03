-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 05:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukatoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Renaldi Oktovianto', 'admin', 'fcea920f7412b5da7be0cf42b8c93759', '+6281936094706', 'renaldiokta31@gmail.com', 'Mataram');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(11, 'Pakaian Pria'),
(12, 'Pakaian Wanita'),
(13, 'Aksesoris'),
(14, 'Sepatu'),
(15, 'Pakaian&Aksesoris Anak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `produk_name` varchar(100) NOT NULL,
  `produk_price` int(11) NOT NULL,
  `produk_deskripsi` text NOT NULL,
  `produk_image` varchar(100) NOT NULL,
  `produk_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `category_id`, `produk_name`, `produk_price`, `produk_deskripsi`, `produk_image`, `produk_status`, `data_created`) VALUES
(10, 11, 'sweter', 110000, 'silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas\r\nsilakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas\r\nsilakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas\r\nsilakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas', 'produk1642315801.jpg', 1, '2022-01-16 06:50:01'),
(11, 15, 'baju anak cewek', 70000, '<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n', 'produk1642316693.jpg', 1, '2022-01-16 07:04:53'),
(12, 15, 'baju anak cowok', 70000, '<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n', 'produk1642316732.png', 1, '2022-01-16 07:05:32'),
(13, 14, 'sepatu cowok', 100000, '<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n', 'produk1642316784.jpg', 1, '2022-01-16 07:06:24'),
(14, 14, 'sepatu cewek', 110000, '<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n', 'produk1642316838.jpg', 1, '2022-01-16 07:07:18'),
(15, 12, 'celana', 90000, '<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n', 'produk1642316879.jpg', 1, '2022-01-16 07:07:59'),
(16, 11, 'celana pria', 90000, '<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n\r\n<p>silakan anda semua beli baju di bukatoko shop kami yang sangat populer kualitas</p>\r\n', 'produk1642316911.jpg', 1, '2022-01-16 07:08:31'),
(18, 12, 'kemeja cewek', 90000, 'murah bet', 'produk1642324685.jpg', 1, '2022-01-16 09:18:05'),
(19, 13, 'topi pria', 30000, 'mantap dan multifungsi, bisa pakai nguli !', 'produk1642324903.jpg', 1, '2022-01-16 09:21:43'),
(20, 13, 'kacamata keren', 15000, 'murah meriah', 'produk1642325025.jpg', 1, '2022-01-16 09:23:45'),
(21, 13, 'tas selempeang cowok KEREN', 25000, '<p>Buruan !</p>\r\n\r\n<p> jangan sampe kehabisan, stok terbatas. </p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346015.jpg', 1, '2022-01-16 15:13:35'),
(22, 15, 'sepatu anak cewek- KEREN ABIS!', 70000, '<p>Buruan !</p>\r\n\r\n<p> jangan sampe kehabisan, stok terbatas. </p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346226.jpg', 1, '2022-01-16 15:14:55'),
(23, 11, 'Singlet Pria', 40000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346287.jpg', 1, '2022-01-16 15:18:07'),
(24, 12, 'celana pendek cewek KOREA', 20000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346341.jpg', 1, '2022-01-16 15:19:01'),
(25, 13, 'masker duckbil', 35000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346410.jpg', 1, '2022-01-16 15:20:10'),
(26, 13, 'jam tangan cewek KEKINIAN !', 90000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346468.jpg', 1, '2022-01-16 15:21:08'),
(27, 15, 'kemeja anak cowok', 110000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346521.jpg', 1, '2022-01-16 15:22:01'),
(28, 13, 'cincin couple KEKINIAN!', 100000, '<p>Buruan buat kalian yang punya pasangan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346779.jpg', 1, '2022-01-16 15:26:19'),
(29, 15, 'sepatu anak cowok model spiderman', 70000, '<p>Buruan !</p>\r\n\r\n<p> jangan sampe kehabisan, stok terbatas. </p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346863.jpg', 1, '2022-01-16 15:27:43'),
(30, 13, 'Dompet cowok KEREN ', 70000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346924.jpg', 1, '2022-01-16 15:28:44'),
(31, 13, 'dompet cewek KEREN', 70000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642346986.jpg', 1, '2022-01-16 15:29:46'),
(32, 15, 'singlet anak', 15000, '<p>Buruan !</p>\r\n\r\n<p>&nbsp;jangan sampe kehabisan, stok terbatas.&nbsp;</p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642347032.jpg', 1, '2022-01-16 15:30:32'),
(33, 13, 'jam tangan cowok SKMEI keren', 90000, '<p>Buruan !</p>\r\n\r\n<p> jangan sampe kehabisan, stok terbatas. </p>\r\n\r\n<p>MINAT..........????</p>\r\n\r\n<p>Hubungi kami langsung !</p>\r\n', 'produk1642347196.jpg', 1, '2022-01-16 15:31:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

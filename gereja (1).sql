-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2025 at 06:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gereja`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE `jurnal` (
  `id_jurnal` int(11) NOT NULL,
  `nama_jurnal` varchar(100) NOT NULL,
  `kode_jurnal` varchar(10) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`id_jurnal`, `nama_jurnal`, `kode_jurnal`, `deskripsi`) VALUES
(1, 'Pengeluaran Jemaat', 'PJ', NULL),
(2, 'Penerimaan Jemaat', 'PRJ', NULL),
(3, 'Penerimaan Saldo Bank', 'PSB', NULL),
(4, 'Penerimaan GSG', 'PGSG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_jurnal` int(11) NOT NULL,
  `kode_kategori` varchar(3) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_jurnal`, `kode_kategori`, `nama_kategori`) VALUES
(1, 1, '700', 'Administrasi Gereja'),
(2, 1, '710', 'Operasional Harian'),
(3, 1, '720', 'Pemeliharaan Gedung'),
(4, 1, '730', 'Kegiatan Rohani'),
(5, 1, '740', 'Bantuan Sosial'),
(6, 2, '100', 'Persembahan Rutin'),
(7, 2, '110', 'Persembahan Khusus'),
(8, 2, '120', 'Donasi Jemaat'),
(9, 2, '130', 'Iuran Kegiatan'),
(10, 2, '140', 'Sumbangan Hari Raya'),
(11, 3, '200', 'Transfer Bank'),
(12, 3, '210', 'Bunga Deposito'),
(13, 3, '220', 'Setoran Tunai'),
(14, 3, '230', 'Virtual Account'),
(15, 3, '240', 'QRIS Payment'),
(16, 4, '300', 'Iuran Anggota GSG'),
(17, 4, '310', 'Donasi GSG'),
(18, 4, '320', 'Penjualan Merchandise'),
(19, 4, '330', 'Sponsor Kegiatan'),
(20, 4, '340', 'Event GSG');

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subkategori` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_subkategori` varchar(12) NOT NULL,
  `nama_subkategori` varchar(100) NOT NULL
) ;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `kode_subkategori`, `nama_subkategori`) VALUES
(1, 1, '700.01.01', 'Gaji Pendeta Pimpinan'),
(2, 1, '700.01.02', 'Gaji Pendeta Vikaris'),
(3, 1, '700.02.01', 'ATK Kantor Reguler'),
(4, 1, '700.02.02', 'ATK Kantor Khusus'),
(5, 1, '700.03.01', 'Listrik dan Air'),
(6, 2, '710.01.01', 'Konsumsi Rapat Mingguan'),
(7, 2, '710.01.02', 'Konsumsi Rapat Bulanan'),
(8, 2, '710.02.01', 'Transportasi Lokal'),
(9, 2, '710.02.02', 'Transportasi Luar Kota'),
(10, 2, '710.03.01', 'Dekorasi Standar'),
(11, 3, '720.01.01', 'Cat Gedung Eksterior'),
(12, 3, '720.01.02', 'Cat Gedung Interior'),
(13, 3, '720.02.01', 'Perbaikan Kursi Reguler'),
(14, 3, '720.02.02', 'Perbaikan Kursi Khusus'),
(15, 3, '720.03.01', 'Kebersihan Harian'),
(16, 4, '730.01.01', 'Retret Pemuda'),
(17, 4, '730.01.02', 'Retret Lansia'),
(18, 4, '730.02.01', 'Seminar Keluarga'),
(19, 4, '730.02.02', 'Seminar Pemuridan'),
(20, 4, '730.03.01', 'Konser Rohani'),
(21, 5, '740.01.01', 'Bantuan Pendidikan SD'),
(22, 5, '740.01.02', 'Bantuan Pendidikan SMP'),
(23, 5, '740.02.01', 'Bantuan Kesehatan Umum'),
(24, 5, '740.02.02', 'Bantuan Kesehatan Khusus'),
(25, 5, '740.03.01', 'Bencana Alam Ringan'),
(26, 6, '100.01.01', 'Persembahan Minggu Pagi'),
(27, 6, '100.01.02', 'Persembahan Minggu Sore'),
(28, 6, '100.02.01', 'Persembahan Bulanan'),
(29, 6, '100.02.02', 'Persembahan Syukur'),
(30, 6, '100.03.01', 'Persembahan Natal'),
(31, 7, '110.01.01', 'Persembahan Pembangunan'),
(32, 7, '110.01.02', 'Persembahan Pendidikan'),
(33, 7, '110.02.01', 'Persembahan Sosial'),
(34, 7, '110.02.02', 'Persembahan Kesehatan'),
(35, 7, '110.03.01', 'Persembahan Bencana'),
(36, 11, '200.01.01', 'Transfer dari Bank Mandiri'),
(37, 11, '200.01.02', 'Transfer dari Bank BCA'),
(38, 12, '210.01.01', 'Bunga Deposito Bulanan'),
(39, 12, '210.01.02', 'Bunga Deposito Tahunan'),
(40, 13, '220.01.01', 'Setoran Tunai Mingguan'),
(41, 13, '220.01.02', 'Setoran Tunai Acara Khusus'),
(42, 14, '230.01.01', 'VA Pembayaran SPP Jemaat'),
(43, 14, '230.01.02', 'VA Pembayaran Event Khusus'),
(44, 15, '240.01.01', 'QRIS Persembahan Ibadah Minggu'),
(45, 15, '240.01.02', 'QRIS Donasi Sosial'),
(46, 16, '300.01.01', 'Iuran Anggota Bulanan'),
(47, 16, '300.01.02', 'Iuran Anggota Tahunan'),
(48, 17, '310.01.01', 'Donasi Pribadi Jemaat'),
(49, 17, '310.01.02', 'Donasi Perusahaan'),
(50, 18, '320.01.01', 'Penjualan Kaos GSG'),
(51, 18, '320.01.02', 'Penjualan Merchandise Event'),
(52, 19, '330.01.01', 'Sponsor Bank'),
(53, 19, '330.01.02', 'Sponsor UMKM'),
(54, 20, '340.01.01', 'Event Konser Musik'),
(55, 20, '340.01.02', 'Event Seminar Motivasi');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_jurnal` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_kwitansi` varchar(50) NOT NULL,
  `uraian` text DEFAULT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `id_subkategori` int(11) DEFAULT NULL,
  `setoran` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id_jurnal`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_jurnal` (`id_jurnal`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_jurnal` (`id_jurnal`),
  ADD KEY `id_subkategori` (`id_subkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id_jurnal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`id_jurnal`) REFERENCES `jurnal` (`id_jurnal`);

--
-- Constraints for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD CONSTRAINT `subkategori_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_jurnal`) REFERENCES `jurnal` (`id_jurnal`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_subkategori`) REFERENCES `subkategori` (`id_subkategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

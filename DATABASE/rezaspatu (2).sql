-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 03:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rezaspatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal_berita` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isi` mediumtext NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_toko` text NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `berat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `tanggal_produk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deskripsi` mediumtext NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_toko`, `kategori`, `nama_produk`, `jumlah`, `berat`, `harga`, `kota`, `tanggal_produk`, `deskripsi`, `gambar`) VALUES
(4, 'Z4 Shoes', 'Air jordan', 'Air Jordan Low', '14', 2, 1200000, 'Brebes', '2021-11-18 06:49:31', 'tempat jual beli air jordan terpercaya', '2__Air_jordan_1_Low_(Gym_red)_.JPG'),
(5, 'Z4 Shoes', 'Air Jordan High', 'Air Jordan 1 High “Hyper Crimson”', '13', 1, 1300000, 'Brebes', '2021-11-18 07:08:04', 'Size 35-40,\r\nOriginal,\r\nGaransi 1 tahun', 'Air_Jordan_1_High_“Hyper_Crimson”.JPG'),
(6, 'Z4 Shoes', 'Air Jordan High', 'Air Jordan 1 High Black Metallic Gold', '8', 1, 15000000, 'Brebes', '2021-11-18 07:09:57', '100 % original, segera di order !', 'Air_Jordan_1_High_Black_Metallic_Gold.JPG'),
(7, 'Z4 Shoes', 'Air Jordan High', 'Air Jordan 1 High OG “Light smoke grey”', '6', 1, 12500000, 'Brebes', '2021-11-18 07:11:18', 'Barang baru, Original 100%. ', 'Air_Jordan_1_High_OG_“Light_smoke_grey”.JPG'),
(8, 'Z4 Shoes', 'Air Jordan High', 'Air Jordan 1 Retro High OG Shoe', '13', 1, 12000000, 'Brebes', '2021-11-18 07:12:31', 'Barang baru, 100 Original !!!', 'Air_Jordan_1_Retro_High_OG_Shoe.JPG'),
(9, 'Z4 Shoes', 'Air Jordan High', 'Air Jordan 1 Retro High Premium', '4', 1, 14000000, 'Brebes', '2021-11-18 07:13:56', 'Barang Baru, ready stock, 100% Original.', 'Air_Jordan_1_Retro_High_Premium.JPG'),
(10, 'Z4 Shoes', 'Air jordan Low', 'Air Jordan 1 low white ', '10', 1, 7000000, 'Brebes', '2021-11-18 07:15:25', '100 % original, mari bisa langsung di order', 'Air_Jordan_1_low_white_.JPG'),
(11, 'Z4 Shoes', 'Air jordan Low', 'Air jordan 1 Low (Gym red) ', '15', 1, 12500000, 'Brebes', '2021-11-18 07:16:41', 'Sebelum kehabisan ayo bisa langsung di order', '2__Air_jordan_1_Low_(Gym_red)_1.JPG'),
(12, 'Z4 Shoes', 'Air jordan Low', 'Air Jordan 1 Low UNC ', '14', 1, 12550000, 'Brebes', '2021-11-18 07:18:13', '100% original monggo bisa langusng di order kak', '4__Air_Jordan_1_Low_Brushstroke_.JPG'),
(13, 'Z4 Shoes', 'Air Jordan Low', 'Air Jordan 1 Low Brushstroke ', '14', 1, 9000000, 'Brebes', '2021-11-18 07:20:09', 'barang di jamin originalnya mari cepat order di website kami ya', '4__Air_Jordan_1_Low_Brushstroke_1.JPG'),
(14, 'Z4 Shoes', 'Air Jordan Low', 'Air Jordan low 1 green toe', '5', 1, 8500000, 'Brebes', '2021-11-18 07:21:41', 'Barang di jamin ori', '5__Air_Jordan_low_1_green_toe.JPG'),
(15, 'Z4 Shoes', 'Air jordan Low', ' Air jordan 1 Mid SE fearless', '24', 0, 6000000, '', '2021-11-18 07:23:31', 'Sepatu langka ayo buruhan suruh ngetis anak anak.', '1__Air_jordan_1_Mid_SE_fearless.JPG'),
(16, 'Z4 Shoes', 'Air jordan Mid', 'Air jordan  1 Mid Igloo Island Green', '16', 1, 6000000, 'Brebes', '2021-11-18 07:25:31', 'Sepatu di jamin keoriginalalnnya', 'Air_jordan_1_Mid_Igloo_Island_Green.JPG'),
(17, 'Z4 Shoes', 'Air jordan Mid', 'Air Jordan 1 Mid White Shadow', '17', 10, 11000000, 'brebes', '2021-11-18 07:40:08', 'harga sedang promo', 'Air_Jordan_1_Mid_White_Shadow.JPG'),
(18, 'Z4 Shoes', 'Air jordan Mid', 'AIR JORDAN 1 RETRO MID UNION BLACK TOE', '15', 1, 14000000, 'Brebes', '2021-11-18 07:41:40', 'For sale untuk kamu yang suka dengan keluarga airjordan, kali ini kita sedang ada diskon 70% off, yuk jagnan sampai kelewatan', 'AIR_JORDAN_1_RETRO_MID_UNION_BLACK_TOE.JPG'),
(19, 'Z4 Shoes', 'Air Jordan High', 'Air Jordan 1 High Black Metallic Gold', '21', 1, 13000000, 'Brebes', '2021-11-18 08:57:39', 'Original 100%', 'Air_Jordan_1_Mid_SE_Signal_Blue.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE `retur` (
  `id_retur` int(11) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `tanggal_retur` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_beli` datetime NOT NULL,
  `alasan` mediumtext NOT NULL,
  `bukti` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` int(11) NOT NULL,
  `id_member` int(11) NOT NULL DEFAULT 1,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jumlah` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `id_member`, `tanggal`, `jumlah`) VALUES
(1, 2, '2021-11-18 14:12:43', 14000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `idAdmin` int(2) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`idAdmin`, `userName`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_kirim`
--

CREATE TABLE `tbl_biaya_kirim` (
  `idBiayaKirim` int(5) NOT NULL,
  `idKurir` int(3) NOT NULL,
  `idKotaAsal` int(4) NOT NULL,
  `idKotaTujuan` int(5) NOT NULL,
  `biaya` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_kirim`
--

INSERT INTO `tbl_biaya_kirim` (`idBiayaKirim`, `idKurir`, `idKotaAsal`, `idKotaTujuan`, `biaya`) VALUES
(8, 1, 3, 7, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `idkat` int(5) NOT NULL,
  `namakat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`idkat`, `namakat`) VALUES
(6, 'Ari Jordan Low'),
(7, 'Mid'),
(8, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `idKota` int(4) NOT NULL,
  `namaKota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kota`
--

INSERT INTO `tbl_kota` (`idKota`, `namaKota`) VALUES
(3, 'Jogja '),
(7, 'Brebes'),
(8, 'Balik Papan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurir`
--

CREATE TABLE `tbl_kurir` (
  `idKurir` int(2) NOT NULL,
  `namaKurir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kurir`
--

INSERT INTO `tbl_kurir` (`idKurir`, `namaKurir`) VALUES
(1, 'Test'),
(2, 'tarjo'),
(3, 'DODOT ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `idKonsumen` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `namaKonsumen` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `idKota` int(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` int(20) NOT NULL,
  `statusAktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`idKonsumen`, `username`, `password`, `namaKonsumen`, `alamat`, `idKota`, `email`, `telepon`, `statusAktif`) VALUES
(1, 'dicky', 'dicky', 'dicky', 'gerokgak, buleleng, bali', 12, 'dicky@gmail.com', 123123123, 'Y'),
(2, 'reza', 'reza', 'Reza', 'Brebes', 0, 'Reza123@gmail.com', 2147483647, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `idOrder` int(5) NOT NULL,
  `idKonsumen` int(5) NOT NULL,
  `tglOrder` date NOT NULL,
  `statusOrder` enum('Belum Bayar','Dikemas','Dikirim','Diterima','Selesai','Dibatalkan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  ADD PRIMARY KEY (`idBiayaKirim`),
  ADD KEY `idKotaAsal` (`idKotaAsal`),
  ADD KEY `idKotaTujuan` (`idKotaTujuan`),
  ADD KEY `idKurir` (`idKurir`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`idkat`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`idKota`);

--
-- Indexes for table `tbl_kurir`
--
ALTER TABLE `tbl_kurir`
  ADD PRIMARY KEY (`idKurir`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`idKonsumen`),
  ADD KEY `idKota` (`idKota`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idKonsumen` (`idKonsumen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `idAdmin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  MODIFY `idBiayaKirim` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `idkat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `idKota` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kurir`
--
ALTER TABLE `tbl_kurir`
  MODIFY `idKurir` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `idKonsumen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `idOrder` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  ADD CONSTRAINT `tbl_biaya_kirim_ibfk_1` FOREIGN KEY (`idKurir`) REFERENCES `tbl_kurir` (`idKurir`),
  ADD CONSTRAINT `tbl_biaya_kirim_ibfk_2` FOREIGN KEY (`idKotaAsal`) REFERENCES `tbl_kota` (`idKota`),
  ADD CONSTRAINT `tbl_biaya_kirim_ibfk_3` FOREIGN KEY (`idKotaTujuan`) REFERENCES `tbl_kota` (`idKota`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`idKonsumen`) REFERENCES `tbl_member` (`idKonsumen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

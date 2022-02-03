-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 04:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unilever`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `absensi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_karyawan`, `department`, `nama`, `jabatan`, `tanggal`, `absensi`) VALUES
(120, 5510, 'Department Human Resource', 'Devi Yanti', 'Staff HR', '2021-01-30', 'Hadir'),
(121, 5512, 'Department Inventory', 'Triend Dinantia', 'Manager Gudang', '2021-01-23', 'Terlambat'),
(123, 5514, 'Department Purchasing', 'Shanjita Julia Salmi', 'Manager Purchasing', '2021-01-30', 'Izin'),
(124, 5516, 'Department Purchasing', 'Septiani Yahya', 'Staff', '2021-01-16', 'Tidak Hadir'),
(125, 5517, 'Department Purchasing', 'David Puji Kusuma', 'Staff', '2021-01-30', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`) VALUES
(1, 'Barang Baku'),
(2, 'Barang Mentah Basah');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `gaji` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `id_karyawan`, `nama`, `jabatan`, `gaji`, `status`) VALUES
(300, 5510, 'Devi Yanti', 'Staff HR', 'Rp.5.000.000', 'Proses'),
(301, 5511, 'Reka Fitaloka Murni', 'Staff HR', 'Rp.5.000.000', 'Belum'),
(302, 5512, 'Triend Dinantia', 'Manager Gudang', 'Rp.10.000.000', 'Disetujui'),
(303, 5514, 'Shanjita Julia Salmi', 'Manager Financial', 'Rp.15.000.000', 'Proses'),
(305, 5515, 'Atikah Suci Ramadhani', 'Staff', 'Rp.4.200.000', 'Disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `nohp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `gender`, `department`, `jabatan`, `nohp`, `email`) VALUES
(5510, 'Devi Yanti', 'Perempuan', 'Department Human Resource', 'Staff HR', '08127503629', 'deviy1515@gmail.com'),
(5511, 'Reka Fitaloka Murni', 'Perempuan', 'Department Human Resource', 'Staff HR', '08127503624', 'rekafitaloka@gmail.com'),
(5512, 'Triend Dinantia', 'Perempuan', 'Department Inventory', 'Manager Gudang', '08127503624', 'triend@gmail.com'),
(5513, 'Arvand Adriatna', 'Laki-Laki', 'Department Inventory', 'Operator Gudang', '0852767823', 'arvand@gmail.com'),
(5514, 'Shanjita Julia Salmi', 'Perempuan', 'Department Financial Resource', 'Manager Financial', '085276782359', 'shanjitajulia@gmail.com'),
(5515, 'Atikah Suci Ramadhani', 'Perempuan', 'Department Financial Resource', 'Staff', '08127503609', 'atikahsuci@gmail.com'),
(5516, 'Septiani Yahya', 'Perempuan', 'Department Purchasing', 'Staff', '08527678238', 'septiani@gmail.com'),
(5517, 'David Puji Kusuma', 'Laki-Laki', 'Department Purchasing', 'Staff', '08527503629', 'david@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `categori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `jumlah`, `categori`) VALUES
(1, 'Tepung Terigu', '5 kg', 'Barang Baku'),
(2, 'Tepung Meizena', '5 kg', 'Barang Baku'),
(3, 'Vegetable Oil', '8 L', 'Barag Baku Basah'),
(4, 'Aqua Sa', '2', 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `product_keluar`
--

CREATE TABLE `product_keluar` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_keluar`
--

INSERT INTO `product_keluar` (`id`, `categories_id`, `suppliers_id`, `jumlah`, `tanggal`) VALUES
(1, 1, 1, '2 kg', '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `product_masuk`
--

CREATE TABLE `product_masuk` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_masuk`
--

INSERT INTO `product_masuk` (`id`, `categories_id`, `suppliers_id`, `jumlah`, `tanggal`) VALUES
(1, 1, 1, '200', '2020-03-20'),
(2, 2, 2, '8 L', '2020-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(255) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `nomor_telp` varchar(255) NOT NULL,
  `barang_supplier` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `lokasi`, `nomor_telp`, `barang_supplier`, `email`) VALUES
(4, 'Indah', 'Jl. Sudirman', '082378531045', 'Buavita', 'indah@gmail.com'),
(5, 'Doni', 'Jl. Hangtuah', '082365778546', 'Axe', 'doni@gmail.com'),
(6, 'PT. Citra Karya', 'Jl. Nangka', '085267824076', 'Kecap Bango', 'citrakarya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `nama`, `alamat`, `email`, `telepon`) VALUES
(1, 'Tango Production', 'Jakarta Selatan', 'tango@gmail.com', '0822892839'),
(2, 'Segitiga Biru Group', 'Jakarta Utara', 'biru@gmail.com', '1235465377'),
(3, 'Tepung Meizena Group', 'Pekanbaru', 'meizena@gmail.com', '123456576');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `jumlah_barang` varchar(255) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `nama_barang`, `harga_barang`, `jumlah_barang`, `nama_supplier`, `pembayaran`) VALUES
(3, 'Buavita', 'Rp. 23000', '5', 'Indah', 'Cash'),
(4, 'Axe', 'Rp. 35000', '2', 'Doni', 'Cash'),
(5, 'Kecap Bango', 'Rp. 10000', '1', 'PT. Citra Karya', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(47, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Jx0Id4/kOEkGa8ck0knHcOXYYlkuFIMqfAqzJ8mpZ4XCvq.NdVSm.', 'ZDKEGUhmSlBwPwEdakr5HdO991RzlbuqTIJrAtjuR0bNdvTYZh2npwr0Pg1o', '2021-01-13 02:59:25', '2021-01-13 02:59:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_keluar`
--
ALTER TABLE `product_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_masuk`
--
ALTER TABLE `product_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_keluar`
--
ALTER TABLE `product_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_masuk`
--
ALTER TABLE `product_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `id_karyawan` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `id_gajikaryawan` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

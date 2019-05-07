-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2018 at 11:18 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_repository`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jajak_pendapat`
--

CREATE TABLE `tb_jajak_pendapat` (
  `id_jp` int(5) NOT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kata_kunci`
--

CREATE TABLE `tb_kata_kunci` (
  `id_kk` int(5) NOT NULL,
  `kata_kunci` varchar(100) DEFAULT NULL,
  `id_skripsi` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_koleksi`
--

CREATE TABLE `tb_koleksi` (
  `id_koleksi` int(5) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `no_legal` varchar(200) DEFAULT NULL,
  `tipe_koleksi` varchar(200) DEFAULT NULL,
  `bahasa` varchar(50) DEFAULT NULL,
  `abstrak_id` varchar(255) DEFAULT NULL,
  `abstrak_en` varchar(255) DEFAULT NULL,
  `url_file` varchar(255) DEFAULT NULL,
  `deks_file` varchar(255) DEFAULT NULL,
  `tanggal_input` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_koleksi_temp`
--

CREATE TABLE `tb_koleksi_temp` (
  `id_koleksi_temp` int(5) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `no_legal` varchar(200) DEFAULT NULL,
  `tipe_koleksi` varchar(200) DEFAULT NULL,
  `bahasa` varchar(50) DEFAULT NULL,
  `abstrak_id` varchar(255) DEFAULT NULL,
  `abstrak_en` varchar(255) DEFAULT NULL,
  `url_file` varchar(255) DEFAULT NULL,
  `deks_file` varchar(255) DEFAULT NULL,
  `tanggal_input` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pek_temp`
--

CREATE TABLE `tb_pek_temp` (
  `id_pek_temp` int(5) NOT NULL,
  `nama_depan` varchar(100) DEFAULT NULL,
  `nama_belakang` varchar(100) DEFAULT NULL,
  `id_koleksi_temp` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembimbing_koleksi`
--

CREATE TABLE `tb_pembimbing_koleksi` (
  `id_pemb` int(5) NOT NULL,
  `nama_depan` varchar(100) DEFAULT NULL,
  `nama_belakang` varchar(100) DEFAULT NULL,
  `id_koleksi` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penulis_koleksi`
--

CREATE TABLE `tb_penulis_koleksi` (
  `id_pk` int(5) NOT NULL,
  `nama_depan` varchar(100) DEFAULT NULL,
  `nama_belakang` varchar(100) DEFAULT NULL,
  `id_koleksi` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pilihan`
--

CREATE TABLE `tb_pilihan` (
  `id_pilihan` int(5) NOT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `id_jp` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pk_temp`
--

CREATE TABLE `tb_pk_temp` (
  `id_pk_temp` int(5) NOT NULL,
  `nama_depan` varchar(100) DEFAULT NULL,
  `nama_belakang` varchar(100) DEFAULT NULL,
  `id_koleksi_temp` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_skripsi`
--

CREATE TABLE `tb_skripsi` (
  `id_skripsi` int(5) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `tahun` varchar(5) DEFAULT NULL,
  `abstrak` varchar(255) DEFAULT NULL,
  `bab_1` varchar(255) DEFAULT NULL,
  `bab_2` varchar(255) DEFAULT NULL,
  `bab_3` varchar(255) DEFAULT NULL,
  `bab_4` varchar(255) DEFAULT NULL,
  `bab_5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('guest','admin') DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `nama`, `email`, `password`, `level`, `status`) VALUES
(1, 'Mikael', 'mikaelyuru@gmail.com', 'e3818436bd31d502399405505b3f1930', 'admin', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jajak_pendapat`
--
ALTER TABLE `tb_jajak_pendapat`
  ADD PRIMARY KEY (`id_jp`);

--
-- Indexes for table `tb_kata_kunci`
--
ALTER TABLE `tb_kata_kunci`
  ADD PRIMARY KEY (`id_kk`),
  ADD KEY `id_skripsi` (`id_skripsi`);

--
-- Indexes for table `tb_koleksi`
--
ALTER TABLE `tb_koleksi`
  ADD PRIMARY KEY (`id_koleksi`);

--
-- Indexes for table `tb_koleksi_temp`
--
ALTER TABLE `tb_koleksi_temp`
  ADD PRIMARY KEY (`id_koleksi_temp`);

--
-- Indexes for table `tb_pek_temp`
--
ALTER TABLE `tb_pek_temp`
  ADD PRIMARY KEY (`id_pek_temp`),
  ADD KEY `id_koleksi_temp` (`id_koleksi_temp`);

--
-- Indexes for table `tb_pembimbing_koleksi`
--
ALTER TABLE `tb_pembimbing_koleksi`
  ADD PRIMARY KEY (`id_pemb`),
  ADD KEY `id_koleksi` (`id_koleksi`);

--
-- Indexes for table `tb_penulis_koleksi`
--
ALTER TABLE `tb_penulis_koleksi`
  ADD PRIMARY KEY (`id_pk`),
  ADD KEY `id_koleksi` (`id_koleksi`);

--
-- Indexes for table `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  ADD PRIMARY KEY (`id_pilihan`),
  ADD KEY `id_jp` (`id_jp`);

--
-- Indexes for table `tb_pk_temp`
--
ALTER TABLE `tb_pk_temp`
  ADD PRIMARY KEY (`id_pk_temp`),
  ADD KEY `id_koleksi_temp` (`id_koleksi_temp`);

--
-- Indexes for table `tb_skripsi`
--
ALTER TABLE `tb_skripsi`
  ADD PRIMARY KEY (`id_skripsi`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jajak_pendapat`
--
ALTER TABLE `tb_jajak_pendapat`
  MODIFY `id_jp` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kata_kunci`
--
ALTER TABLE `tb_kata_kunci`
  MODIFY `id_kk` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_koleksi`
--
ALTER TABLE `tb_koleksi`
  MODIFY `id_koleksi` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pembimbing_koleksi`
--
ALTER TABLE `tb_pembimbing_koleksi`
  MODIFY `id_pemb` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_penulis_koleksi`
--
ALTER TABLE `tb_penulis_koleksi`
  MODIFY `id_pk` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_skripsi`
--
ALTER TABLE `tb_skripsi`
  MODIFY `id_skripsi` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kata_kunci`
--
ALTER TABLE `tb_kata_kunci`
  ADD CONSTRAINT `tb_kata_kunci_ibfk_1` FOREIGN KEY (`id_skripsi`) REFERENCES `tb_skripsi` (`id_skripsi`);

--
-- Constraints for table `tb_pek_temp`
--
ALTER TABLE `tb_pek_temp`
  ADD CONSTRAINT `tb_pek_temp_ibfk_1` FOREIGN KEY (`id_koleksi_temp`) REFERENCES `tb_koleksi_temp` (`id_koleksi_temp`);

--
-- Constraints for table `tb_pembimbing_koleksi`
--
ALTER TABLE `tb_pembimbing_koleksi`
  ADD CONSTRAINT `tb_pembimbing_koleksi_ibfk_1` FOREIGN KEY (`id_koleksi`) REFERENCES `tb_koleksi` (`id_koleksi`);

--
-- Constraints for table `tb_penulis_koleksi`
--
ALTER TABLE `tb_penulis_koleksi`
  ADD CONSTRAINT `tb_penulis_koleksi_ibfk_1` FOREIGN KEY (`id_koleksi`) REFERENCES `tb_koleksi` (`id_koleksi`);

--
-- Constraints for table `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  ADD CONSTRAINT `tb_pilihan_ibfk_1` FOREIGN KEY (`id_jp`) REFERENCES `tb_jajak_pendapat` (`id_jp`);

--
-- Constraints for table `tb_pk_temp`
--
ALTER TABLE `tb_pk_temp`
  ADD CONSTRAINT `tb_pk_temp_ibfk_1` FOREIGN KEY (`id_koleksi_temp`) REFERENCES `tb_koleksi_temp` (`id_koleksi_temp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

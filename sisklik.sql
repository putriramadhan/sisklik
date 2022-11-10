-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 05:54 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisklik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `email`, `username`, `password`, `no_hp`, `alamat`, `agama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 'mimin', 'mimin@gmail.com', 'mimin', 'mimin', '082345432343', 'Tanggerang', 'Islam', 'Tanggerang', '1996-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_periksa`
--

CREATE TABLE `daftar_periksa` (
  `daftar_id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keluhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_periksa`
--

INSERT INTO `daftar_periksa` (`daftar_id`, `pasien_id`, `dokter_id`, `tanggal`, `keluhan`) VALUES
(1, 12345678, 1, '2022-11-11', 'melepas jaitan operasi');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `dokter_id` int(11) NOT NULL,
  `dokter_nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_praktek` varchar(20) NOT NULL,
  `poliklinik_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`dokter_id`, `dokter_nama`, `email`, `username`, `password`, `no_hp`, `alamat`, `agama`, `tempat_lahir`, `tanggal_lahir`, `no_praktek`, `poliklinik_id`) VALUES
(1, 'Emiliana lia, dr., SpBA', 'emiliana@gmail.com', 'emiliana', 'emiliana', '082390908090', 'Bandung', 'Islam', 'Jakarta', '1999-01-11', '11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_dokter`
--

CREATE TABLE `jadwal_dokter` (
  `jadwal_id` int(11) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `dokter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_dokter`
--

INSERT INTO `jadwal_dokter` (`jadwal_id`, `waktu_mulai`, `waktu_selesai`, `dokter_id`) VALUES
(1, '13:00:00', '15:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1667816641),
('m130524_201442_init', 1667816647),
('m190124_110200_add_verification_token_column_to_user_table', 1667816647);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(10) NOT NULL,
  `obat_nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `produksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `obat_nama`, `harga`, `stok`, `satuan`, `produksi`) VALUES
(1, 'Paramex', 3000, 30, 'box', 'PT KONIMEX'),
(2, 'Ultraflu', 2500, 30, 'box', 'PT HENSON FARMA'),
(3, 'Paracetamol', 4500, 30, 'box', 'PT Kimia Farma'),
(4, 'Entrostop', 5000, 24, 'box', 'PT Konimex'),
(5, 'Albothyl Konsentrate 5 ml', 2300, 6, 'box', 'PT. Pharos'),
(6, 'Clarithromycin', 6000, 24, 'box', 'PT Kimia Farma');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `pasien_id` int(11) NOT NULL,
  `pasien_nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`pasien_id`, `pasien_nama`, `email`, `username`, `password`, `no_hp`, `alamat`, `agama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(12345678, 'Roro Angelina', 'roroa@gmail.com', 'roro', 'roro', '082349098653', 'Bandung', 'Islam', 'Mojokerto', '2007-01-01'),
(2147483647, 'Kevin Aprilio', 'kevin@gmail.com', 'kevin', 'kevin', '082349098652', 'Bandung', 'Islam', 'Bandung', '2000-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `email`, `username`, `password`, `no_hp`, `alamat`, `agama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 'Bambang Susatyo', 'bambang@gmail.com', 'bambang', 'bambang', '082345456787', 'Bandung', 'Kristen', 'Medan', '1998-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaran_id` int(11) NOT NULL,
  `biaya_periksa` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `resep_id` int(11) NOT NULL,
  `periksa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`pembayaran_id`, `biaya_periksa`, `total`, `resep_id`, `periksa_id`) VALUES
(1, '12000', '24000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `periksa_id` int(11) NOT NULL,
  `bb` int(3) NOT NULL,
  `tb` int(3) NOT NULL,
  `goldar` varchar(2) NOT NULL,
  `diagnosa` text NOT NULL,
  `catatan` text NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `tindakan_id` int(2) NOT NULL,
  `daftar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`periksa_id`, `bb`, `tb`, `goldar`, `diagnosa`, `catatan`, `dokter_id`, `pasien_id`, `tindakan_id`, `daftar_id`) VALUES
(1, 50, 156, 'B', 'melepas jaitan', 'tidak ada', 1, 12345678, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poliklinik`
--

CREATE TABLE `poliklinik` (
  `poliklinik_id` int(2) NOT NULL,
  `poliklinik_nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poliklinik`
--

INSERT INTO `poliklinik` (`poliklinik_id`, `poliklinik_nama`, `keterangan`) VALUES
(3, 'Poliklinik Bedah', 'Tersedia bedah umum, bedah kardiotorasik, bedah onkologi, bedah urologi, bedah anak, bedah plastik, bedah thoraks.'),
(4, 'Poliklinik Penyakit Dalam', 'Tersedia klinik penyakit dalam umum, lansia, endokrin & metabolisme, infeksi, paru dan asma, ginjal dan hipertensi.'),
(5, 'Poliklinik Kebidanan dan Kandungan', 'Tersedia obstetri umum, ginekologi umum, onkologi, endokrinologi, uroginekologi, infertilitas, keluarga berencana, USG , dan fetomaternal diagnostic'),
(6, 'Poliklinik Anak', 'Tersedia kesehatan anak umum, hemato-onkologi, respirologi, gastro-hepatologi, neuropediatri, kardiologi, infeksi, nefrologi, tumbuh kembang dan pediatri sosial, thalassemia.'),
(7, 'Poliklinik Bedah Saraf', 'Tersedia umum, trauma, infeksi dan fungsional, vaskular/pembuluh darah, tulang belakang dan saraf perifer, skull base (Tumor), onkologi, dan anak/pediatric');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `resep_id` int(11) NOT NULL,
  `total_harga` varchar(20) NOT NULL,
  `obat_id` int(11) NOT NULL,
  `periksa_id` int(11) NOT NULL,
  `aturan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`resep_id`, `total_harga`, `obat_id`, `periksa_id`, `aturan`) VALUES
(1, '12000', 6, 1, '3x1');

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `tindakan_id` int(2) NOT NULL,
  `tindakan_nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`tindakan_id`, `tindakan_nama`, `harga`) VALUES
(1, 'Operasi', 500000),
(2, 'Rawat inap', 300000),
(3, 'Gawat darurat', 3500000),
(4, 'Konsultasi', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `role` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `role`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'adminklinik', 'BKaPElAA2KEOqudHrXkjrN8Kff6PwF13', '$2y$13$zHec5OlfZr57AvpdI/q07Ocg9xZKpxwd26Dy0FlmgkunvFoOvS6yO', NULL, 'adminklinik@gmail.com', 10, 0, 1667823034, 1667823034, '2zakBMZ4wO1ayzALbxRq57kKIEWmvLxP_1667823034'),
(2, 'neo', 'Hz8qXdvHwueL80Y20O47RRqKT3DtfBCR', '$2y$13$bKJ0PE3zKUU4UyhxMV6ZzuIUGaW/ZPCnR8c4LDo2lBCvP8HVqJk4C', NULL, 'neo@gmail.com', 10, 0, 1668055465, 1668055465, 'AOIdXhjgDZiLLCtfYiegbVkMaX-Z-kLq_1668055465');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `daftar_periksa`
--
ALTER TABLE `daftar_periksa`
  ADD PRIMARY KEY (`daftar_id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`dokter_id`),
  ADD KEY `poliklinik_id` (`poliklinik_id`);

--
-- Indexes for table `jadwal_dokter`
--
ALTER TABLE `jadwal_dokter`
  ADD PRIMARY KEY (`jadwal_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`pasien_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaran_id`),
  ADD KEY `resep_id` (`resep_id`),
  ADD KEY `periksa_id` (`periksa_id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`periksa_id`),
  ADD KEY `dokter_id` (`dokter_id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `tindakan_id` (`tindakan_id`),
  ADD KEY `daftar_id` (`daftar_id`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`poliklinik_id`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`resep_id`),
  ADD KEY `obat_id` (`obat_id`),
  ADD KEY `periksa_id` (`periksa_id`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`tindakan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daftar_periksa`
--
ALTER TABLE `daftar_periksa`
  MODIFY `daftar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `dokter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_dokter`
--
ALTER TABLE `jadwal_dokter`
  MODIFY `jadwal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `pembayaran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `periksa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `poliklinik_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `resep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `tindakan_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_periksa`
--
ALTER TABLE `daftar_periksa`
  ADD CONSTRAINT `daftar_periksa_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`pasien_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daftar_periksa_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`dokter_id`) ON DELETE CASCADE;

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`poliklinik_id`) REFERENCES `poliklinik` (`poliklinik_id`) ON DELETE CASCADE;

--
-- Constraints for table `jadwal_dokter`
--
ALTER TABLE `jadwal_dokter`
  ADD CONSTRAINT `dokter_id` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`dokter_id`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `periksa_id` FOREIGN KEY (`periksa_id`) REFERENCES `periksa` (`periksa_id`);

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`dokter_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `periksa_ibfk_2` FOREIGN KEY (`tindakan_id`) REFERENCES `tindakan` (`tindakan_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `periksa_ibfk_3` FOREIGN KEY (`daftar_id`) REFERENCES `daftar_periksa` (`daftar_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `periksa_ibfk_4` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`pasien_id`) ON DELETE CASCADE;

--
-- Constraints for table `resep`
--
ALTER TABLE `resep`
  ADD CONSTRAINT `obat_id` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id_obat`),
  ADD CONSTRAINT `resep_ibfk_1` FOREIGN KEY (`periksa_id`) REFERENCES `periksa` (`periksa_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

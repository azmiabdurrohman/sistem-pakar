-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 04:17 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spbackward1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `kd_gejala` varchar(10) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL,
  `poin_gejala` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`kd_gejala`, `nama_gejala`, `poin_gejala`) VALUES
('G001', 'Demam', 10),
('G002', 'Letih dan lesu', 10),
('G003', 'Kehilangan selera makan', 10),
('G004', 'Pilek / Bersin bersin', 10),
('G005', 'Sakit kepala belakang, tangan dan kaki', 10),
('G006', 'Sakit tenggorokan', 10),
('G007', 'Batuk kering', 10),
('G008', 'Mual / Muntah', 10),
('G009', 'Mata seperti terbakar', 10),
('G010', 'Panas meningkat hingga 104 derajat fahrenheit', 10),
('G011', 'Batuk Berdahak', 5),
('G012', 'Sesak nafas ketika olahraga atau aktivitas ringan', 5),
('G013', 'Sering menderita infeksi pernafasan (misalnya flu)', 5),
('G014', 'Nafas berat', 5),
('G015', 'Mudah lelah', 5),
('G016', 'Pembengkakan pergelangan kaki dan tungkai kaki', 5),
('G017', 'Wajah, telapak tangan berwarna kemerahan', 5),
('G018', 'Pipi tampak kemerahan', 5),
('G019', 'Sakit kepala', 5),
('G020', 'Gangguan penglihatan', 5),
('G021', 'Nyeri dan merasa tertekan pada wajah', 10),
('G024', 'Hidung tersumbat', 10),
('G025', 'Ingus mengalami perubahan warna', 5),
('G026', 'Nyeri / Sulit menelan dan batuk', 5),
('G027', 'Demam / Menggigil', 10),
('G028', 'Sesak nafas', 10),
('G029', 'Nyeri dada', 10),
('G030', 'Nyeri otot otot', 5),
('G031', 'Suara serak', 10),
('G032', 'Suara pelan', 10),
('G033', 'Rasa gatal dan kasar di tenggorokan', 10),
('G034', 'Tenggorokan kering', 5),
('G035', 'Batuk kering', 5),
('G036', 'Sakit tenggorokan tidak hilang beberapa hari', 10),
('G037', 'Kesulitan menelan', 5),
('G038', 'Demam tinggi', 5),
('G039', 'Muntah muntah', 5),
('G040', 'Kelelahan atau lesu', 5),
('G041', 'Kesulitan bernafas', 5),
('G042', 'Mendengkur', 5),
('G043', 'Nafsu makan buruk', 5),
('G044', 'Bau mulut', 5),
('G045', 'Sakit kepala', 10),
('G046', 'Demam', 10),
('G047', 'Batuk berdahak', 10),
('G048', 'Kehilangan selera makan', 5),
('G049', 'Sakit tenggorokan', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengetahuan`
--

CREATE TABLE `tbl_pengetahuan` (
  `kd_pengetahuan` varchar(10) NOT NULL,
  `kd_penyakit` varchar(10) NOT NULL,
  `kd_gejala` varchar(10) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengetahuan`
--

INSERT INTO `tbl_pengetahuan` (`kd_pengetahuan`, `kd_penyakit`, `kd_gejala`, `pertanyaan`) VALUES
('PG001', 'P001', 'G001', 'Apakah mengalami Demam ?'),
('PG002', 'P001', 'G002', 'Apakah mengalami Letih dan lesu ?'),
('PG003', 'P001', 'G003', 'Apakah mengalami Kehilangan selera makan ?'),
('PG004', 'P001', 'G004', 'Apakah mengalami Bersin bersin ?'),
('PG005', 'P001', 'G005', 'Apakah mengalami Sakit kepala belakang, tangan dan kaki ?'),
('PG006', 'P001', 'G006', 'Apakah mengalami Sakit tenggorokan ?'),
('PG007', 'P001', 'G007', 'Apakah mengalami Batuk kering ?'),
('PG008', 'P001', 'G008', 'Apakah mengalami Mual ?'),
('PG009', 'P001', 'G009', 'Apakah mengalami Mata seperti terbakar ?'),
('PG010', 'P001', 'G010', 'Apakah mengalami Panas bisa meningkat hingga 104 derajat Fahrenheit ?'),
('PG011', 'P002', 'G011', 'Apakah mengalami Batuk Berdahak ?'),
('PG012', 'P002', 'G012', 'Apakah mengalami Sesak nafas ketika melakukan olahraga atau aktivit ?'),
('PG013', 'P002', 'G013', 'Apakah mengalami Sering menderita infeksi pernafasan (misalnya flu) ?'),
('PG015', 'P002', 'G014', 'Apakah mengalami Nafas berat ?'),
('PG016', 'P002', 'G015', 'Apakah mengalami Mudah lelah ?'),
('PG017', 'P002', 'G016', 'Apakah mengalami Pembengkakan di pergelangan kaki, kaki dan tungkai ?'),
('PG018', 'P002', 'G017', 'Apakah mengalami Wajah, telapak tangan atau selaput lendir yang ber ?'),
('PG019', 'P002', 'G018', 'Apakah mengalami Pipi tampak kemerahan ?'),
('PG020', 'P002', 'G019', 'Apakah mengalami Sakit kepala ?'),
('PG021', 'P002', 'G020', 'Apakah mengalami Gangguan penglihatan ?'),
('PG022', 'P003', 'G021', 'Apakah mengalami Nyeri dan merasa tertekan pada wajah ?'),
('PG023', 'P003', 'G022', 'Apakah mengalami Sakit kepala ?'),
('PG024', 'P003', 'G046', 'Apakah mengalami Demam ?'),
('PG025', 'P003', 'G024', 'Apakah mengalami Hidung tersumbat ?'),
('PG026', 'P003', 'G025', 'Apakah mengalami Ingus mengalami perubahan warna ?'),
('PG027', 'P003', 'G026', 'Apakah mengalami Nyeri saat menelan dan batuk ?'),
('PG049', 'P003', 'G045', 'Apakah mengalami Sakit kepala ?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id`, `nama`, `username`, `password`) VALUES
(1, 'ADG', 'admin', 'admin'),
(2, 'ADG2', 'dokter', 'dokter');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `kd_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `penyebab` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`kd_penyakit`, `nama_penyakit`, `penyebab`, `solusi`) VALUES
('P001', 'Influenza', 'Menghirup udara yang sudah tercemar virus dari orang lain yang terinfeksi (misalnya melalui batuk atau bersin), atau dari menyentuh sesuatu yang sudah disentuh orang yang terinfeksi', 'Minum obat pereda nyeri NSAID seperti paracetamol dan ibuprofen, hingga obat batuk pilek, atau dekongestan. Menghirup uap hangat dapat melegakan hidung yang tersumbat dan membantu mengencerkan sekret hidung (ingus). Mandi air hangat, Menghirup uap hangat, Berkumur dengan air garam hangat, Perbanyak cairan dalam tubuh, Istirahat yang cukup, Konsumsi obat penghilang rasa sakit.'),
('P002', 'Bronkitis', 'Disebabkan oleh infeksi paru-paru yang pada banyak kasus penyebabnya adalah virus. Iritasi dan peradangan menyebabkan bronkus menghasilkan lendir lebih banyak. Bronkus merupakan saluran udara dalam sistem pernapasan yang bertugas membawa udara dari dan ke paru-paru.', 'Istirahat yang cukup, Minum air putih yang banyak, Makan buah nanas dan minum teh jahe, Minum campuran madu dan lemon, Menghirup uap hangat,  Berkumur dengan air garam, Makan sup ayam hangat.'),
('P003', 'Sinusitis', 'Disebabkan oleh pembengkakan dinding dalam hidung akibat virus atau reaksi alergi yang masuk dari saluran pernapasan atas. Virus tersebut memicu sinus untuk menghasilkan lendir lebih banyak, sehingga terjadi penumpukan dan penyumbatan pada saluran hidung', 'Menghirup uap, Membersihkan saluran hidung, Kompres air hangat, Tidur dengan kepala diangkat, Meminum obat dekongestan tablet, Memakai semprotan dekongestan');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_hasil`
--

CREATE TABLE `tmp_hasil` (
  `id` int(10) NOT NULL,
  `kd_penyakit` varchar(10) NOT NULL,
  `kd_gejala` varchar(10) NOT NULL,
  `poin_gejala` double NOT NULL,
  `poin_user` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_relasi`
--

CREATE TABLE `tmp_relasi` (
  `id` int(11) NOT NULL,
  `kd_penyakit` varchar(10) NOT NULL,
  `kd_gejala` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD PRIMARY KEY (`kd_pengetahuan`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `tmp_hasil`
--
ALTER TABLE `tmp_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_relasi`
--
ALTER TABLE `tmp_relasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tmp_hasil`
--
ALTER TABLE `tmp_hasil`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `tmp_relasi`
--
ALTER TABLE `tmp_relasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 03:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `level`) VALUES
(1, 'shevaputriw', 'sheva', 'sheva', '1'),
(2, 'nadine', 'nadine', 'nadine', '2'),
(5, 'Nur Salma Nabella', 'salma', 'salma', '1'),
(6, 'Rizky Aulia Faridatu', 'riris', 'riris', '2'),
(7, 'syakilla', 's', 's', '1');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(5) NOT NULL,
  `id_ukm` int(5) NOT NULL,
  `nama_divisi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `id_ukm`, `nama_divisi`) VALUES
(1, 1, 'Manager On Air'),
(5, 1, 'Manager Off Air'),
(8, 1, 'Manager Intern'),
(9, 1, 'Manager Litbang');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(5) NOT NULL,
  `nim` int(15) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jk` enum('L','P') NOT NULL DEFAULT 'L',
  `telepon` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `jurusan` varchar(40) NOT NULL,
  `prodi` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nim`, `nama`, `jk`, `telepon`, `tgl_lahir`, `alamat`, `jurusan`, `prodi`) VALUES
(1, 1831710055, 'Sheva Putri Wahidah', 'P', '085706643004', '2000-09-24', 'Pasuruan', 'Teknologi Informasi', 'D-III Manajemen Informatika'),
(2, 1831710056, 'Nadia Nadine Bunga', 'P', '085700005555', '2020-03-11', 'Sidoarjo', 'Teknologi Informasi', 'D-III Manajemen Informatika'),
(3, 1831710053, 'Abselas Yoshia Elhaw', 'L', '085706643002', '1999-05-04', 'Malang', 'Teknologi Informasi', 'D-III Manajemen Informatika'),
(4, 1831710144, 'Abdullah Winasis', 'L', '085706643001', '2000-03-07', 'Kediri', 'Teknologi Informasi', 'D-III Manajemen Informatika'),
(5, 1831710073, 'Aditya Dwi Bagoes Ve', 'L', '085706643003', '2000-01-24', 'Malang', 'Teknologi Informasi', 'D-III Manajemen Informatika'),
(6, 1831710119, 'Ananda dwi Prayoga', 'L', '085706643004', '1999-02-18', 'Tulungagung', 'Teknologi Informasi', 'D-III Manajemen Informatika'),
(7, 1831710039, 'Arga Ardiansyach Rey', 'L', '085706643005', '2000-06-05', 'Malang', 'Teknik Mesin', 'D-IV Teknik Otomotif Elektroni'),
(8, 1831710181, 'Bernadita Figa Novan', 'P', '085706643006', '2000-09-09', 'Jombang', 'Administrasi Niaga', 'D-IV Manajemen Pemasaran'),
(9, 1831710014, 'Fatihana Nur Salsabi', 'P', '085706643007', '2000-03-21', 'Pasuruan', 'Akuntansi', 'D-III Akuntansi'),
(10, 1831710007, 'Ferdiansyah Ramadhan', 'L', '085706643008', '1999-02-21', 'Malang', 'Teknik Elektro', 'D-III Teknik Elektronika'),
(11, 1831710041, 'Haris Rachman', 'L', '085706643009', '1999-08-21', 'Malang', 'Teknik Sipil', 'D-IV Manajemen Rekayasa Konstruksi'),
(12, 1831710103, 'Irena Putri Savira', 'P', '085706643011', '2000-09-06', 'Malang', 'Bahasa', 'D-III Bahasa Inggris'),
(13, 1831710105, 'Ivan Ardiyanto', 'L', '085706643012', '1999-02-22', 'Batu', 'Teknik Mesin', 'D-IV Teknik Mesin Produksi dan Perawatan'),
(14, 1831710146, 'Liviana Indah Puspar', 'P', '085706643008', '2000-11-22', 'Malang', 'Teknik Kimia', 'D-IV Teknologi Kimia Industri'),
(15, 1831710049, 'Mey Ndita Nur Aini', 'P', '085706643007', '2000-03-21', 'Malang', 'Teknik Sipil', 'D-III Teknik Sipil'),
(16, 1831710069, 'Moch Yusron Rizky', 'P', '085706643003', '2000-05-05', 'Pasuruan', 'Teknik Mesin', 'D-III Teknik Mesin'),
(17, 1831710172, 'Moch Salman Al Farid', 'L', '085700005555', '1999-12-23', 'Malang', 'Administrasi Niaga', 'D-IV Manajemen Pemasaran'),
(18, 1831710036, 'Mochammad Reza Pahle', 'L', '085706643006', '2000-08-22', 'Probolinggo', 'Teknik Kimia', 'D-III Teknik Kimia'),
(19, 1831710167, 'Muhammad Gaizka Zaqh', 'L', '085706643004', '2000-09-19', 'Malang', 'Teknologi Informasi', 'D-IV Teknik Informatika'),
(20, 1831710062, 'Nur Salma Nabella', 'P', '085706643012', '2000-05-25', 'Lamongan', 'Teknik Sipil', 'D-III Teknologi Konstruksi Jalan, Jembatan, dan Bangunan Air'),
(21, 1831710120, 'Nurmayanti Ratna Mustika', 'P', '085706643008', '2000-03-21', 'Trenggalek', 'Teknologi Informasi', 'D-IV Teknik Informatika'),
(22, 1831710022, 'Prawesti Dwi Salindri', 'P', '085706643001', '2000-07-24', 'Kediri', 'Teknologi Informasi', 'D-IV Teknik Informatika'),
(23, 1831710063, 'Redika Meima Mahdale', 'P', '085706643012', '2000-05-07', 'Bojonegoro', 'Teknik Sipil', 'D-III Teknologi Pertambangan'),
(24, 1831710059, 'Rifaldi Dwi Distika ', 'L', '085706643006', '1999-08-24', 'Blitar', 'Teknik Elektro', 'D-IV Sistem Kelistrikan'),
(25, 1831710137, 'Rizky Aulia Faridatuzzuhro', 'P', '085706643011', '1999-11-27', 'Pasuruan', 'Administrasi Niaga', 'D-IV Manajemen Pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(5) NOT NULL,
  `id_mhs` int(5) NOT NULL,
  `id_ukm` int(5) NOT NULL,
  `id_divisi` int(5) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `organisasi` varchar(50) NOT NULL,
  `pengalaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `id_mhs`, `id_ukm`, `id_divisi`, `foto`, `status`, `organisasi`, `pengalaman`) VALUES
(14, 21, 2, 1, '5eb3ba8d243d8.JPG', '1', 'WRI', 'Tidak Ada');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(5) NOT NULL,
  `id_ukm` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `juara` int(3) NOT NULL,
  `tingkat` varchar(20) NOT NULL,
  `tahun` int(5) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `id_ukm`, `nama`, `juara`, `tingkat`, `tahun`, `foto`, `deskripsi`) VALUES
(6, 2, 'Lomba Announcer', 2, 'Universitas', 2019, '5e9d1938c5fd3.jpg', '  Announcer Competition adalah suatu ajang bakat announcer / penyiar yang ditunjukan oleh para mahasiswa yang memiliki bakat atau hanya ingin sekedar mencoba seberapa besar kemampuan mereka dalam duni'),
(7, 2, 'International Students Futsal Competition', 1, 'Universitas', 2018, '7.jpg', 'International Students Futsal Competition merupakan acara tahunan kompetisi olahraga terbesar yang diadakan oleh LKM Agritech Sport Fakultas Teknologi Pertanian Universitas Brawijaya telah usai dilaksanakan pada Sabtu, 06 April 2018.');

-- --------------------------------------------------------

--
-- Table structure for table `proker`
--

CREATE TABLE `proker` (
  `id_proker` int(5) NOT NULL,
  `id_ukm` int(5) NOT NULL,
  `id_divisi` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tgl` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proker`
--

INSERT INTO `proker` (`id_proker`, `id_ukm`, `id_divisi`, `nama`, `deskripsi`, `tgl`, `foto`) VALUES
(6, 1, 1, 'LPJ, Pilketum dan AD/ART', 'LPJ, Pilketum dan AD/ART adalah sebuah bentuk pertanggungjawaban legal dan tertulis oleh panitia atas pelaksanaan kegiatan. Di mana di dalamnya terdapat beberapa pokok laporan seperting arus keluar masuk keuangan, agenda yang di laksanakan dan pencapaian dari kegiatan tersebut. Kemudian program kerja ini diikuti dengan kegiatan pemilihan direktur UKM Radio PL FM dan ketetapan Anggaran Dasar/Anggaran Rumah Tangga', '2020-03-04', '6.jpg'),
(7, 1, 9, 'Studi Banding', 'Studi Banding merupakan suatu kegiatan yang dilakukan dengan tujuan menambah wawasan dan pengetahuan yang akan diterapkan kedepannya untuk menjadi lebih baik. Kegiatan seperti ini tentunya sangat bagus bagi perkembangan suatu kebutuhan yang diharapkan sebagaimana mestinya. Biasanya UKM Radio PL FM melakukan studi banding ke beberapa UKM sejenis yang ada universitas-universitas lain.', '2020-03-06', '7.jpg'),
(8, 1, 9, 'Halal Bihalal', 'Halal Bihalal adalah kegiatan silaturahmi di mana diisi dengan saling maaf memaafkan selama hari raya idul fitri. Biasanya kegiatan ini diselenggarakan di Gedung Kesekretariatan Bersama Politeknik Negeri Malang', '2020-03-13', '8.jpg'),
(9, 1, 5, 'Expo Kelembagaan', 'Expo Kelembagaan adalah kegiatan yang dilakukan sebagai pameran setiap organisasi di Politeknik Negeri Malang (Polinema) yang tergabung dalam Organisasi Kemahasiswaan Intra (OKI) untuk menunjukan masing-masing kelebihannya. Disini adalah ajang untuk perkenalan pertama kali UKM Radio PL FM kepada mahasiswa baru Politeknik Negeri Malang', '2020-03-04', '9.png'),
(10, 1, 1, 'Latihan Kepenyiaran', 'Latihan Kepenyiaran adalah sebuah kegiatan pelatihan untuk para fungsionaris UKM Radio PL FM dalam melatih public speaking sekaligus menjadi ajang untuk mencoba untuk melakukan penyiaran dalam dunia radio.', '2020-03-25', '10.jpg'),
(11, 1, 8, 'Dies Natalis', 'Dies Natalis adalah suatu peringatan atas hari lahir yang di dalam sejumlah besar budaya dianggap sebagai peristiwa penting yang menandai awal perjalanan kehidupan. Kegiatan ini dilakukan untuk merayakan hari jadi UKM Radio PL FM yakni pada 2 November', '2020-03-04', '11.jpg'),
(12, 1, 5, 'Open Air', 'Open Air merupakan progam kerja rutin terbesar UKM Radio PL FM yang menyajikan serangkaian kegiatan, seperti kompetisi Player Unknown’s Battlegrounds (PUBG), Workshop and Announcer Competition (Action), dan Awarding Night sebagai puncak acara. Workshop and Action bertujuan untuk melatih, serta membangkitkan generasi milenial agar berani berbicara di depan umum dan mempunyai rasa keinginan untuk mendengarkan radio.', '2020-03-05', '12.jpg'),
(13, 1, 5, 'Seminar KOMPAS', 'Seminar KOMPAS (Komunikasi Petunjuk Arah Sukses) adalah acara seminar yang ditujukan untuk mengasah kemampuan berkomunikasi kaum milenial, Unit Kegiatan Mahasiswa (UKM) Radio Kampus Politeknik (PL) FM Politeknik Negeri Malang (Polinema)', '2020-03-17', '13.jpg'),
(14, 1, 9, 'Diklat Open Recruitment', '  Open Recruitment merupakan seleksi untuk menjaring sumber daya manusia yang berkualitas dan layak untuk diangkat menjadi anggota ataupun menduduki suatu jabatan dari organisasi ataupun kepanitiaan. Proses Open Recruitment atau Oprec dimulai dengan suatu sosialisasi langsung ataupun menggunakan social media maupun selebaran yang dibagikan di sekitaran kampus. Setelah diadakannya sosialisasi, barulah calon anggota akan mengambil blanko formulir dan kemudian diisi dengan sebenar-benarnya. Selain formulir, biasanya organisasi atau kepanitiaan memerlukan perangkat yang lainnya untuk menunjang formulir tersebut, seperti Motivation Letter, Curiculum Vitae (CV) dan lain sebagainya.', '2020-04-24', '5e9d163d45734.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ukm`
--

CREATE TABLE `ukm` (
  `id_ukm` int(5) NOT NULL,
  `nama_ukm` varchar(50) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `so` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukm`
--

INSERT INTO `ukm` (`id_ukm`, `nama_ukm`, `visi`, `misi`, `so`, `deskripsi`) VALUES
(2, 'Radio PL FM', 'Mengembangkan Public Relations yang mampu menjawab semua tantangan di dunia informasi dan komunikasi', 'Memfasilitasi kreasi dan menyalurkan minat di bidang keradioan dan kepenyiaran serta menjadi referensi pengenalan tahapan awal manajemen, kinerja, dan aktivitas di bidang keradioan dan kepenyiaran', '2.jpg', 'Radio Kampus PL FM merupakan Unit Kegiatan Mahasiswa yang bergerak di bidang kepenyiaran. PL FM juga merupakan sebuah wadah kegiatan yang bersifat independen dan terarah, serta merupakan sebuah media untuk menyalurkan minat dan mengembangkan bakat mahasiswa Politeknik Negeri Malang. Radio Kampus PL FM didirikan pada tahun 1986 dan mulai mengudara pada tanggal 2 Novermber 1988 pada kanal FM, yakni 102.7 MHz dengan menggunakan nama 102.7 Politeknik FM. Pada tahun 2005, frekuensi Politeknik FM bergeser dari 102.7 MHz ke 98.9 MHz berdasarkan keputusan rapat crew. Pada tahun sebelumnya, yaknik 2004, terjadi pergeseran kanal radio di seluruh Indonesia, termasuk Radio Kampus Politeknik FM yang mengudara di kanal 103.3 MHz. Akhirnya pada tahun 2008 hingga sekarang, Radio Kampus Politeknik FM mengudara di kanal 101.7 MHz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `id_mhs` (`id_mhs`),
  ADD KEY `id_ukm` (`id_ukm`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `id_ukm` (`id_ukm`);

--
-- Indexes for table `proker`
--
ALTER TABLE `proker`
  ADD PRIMARY KEY (`id_proker`),
  ADD KEY `id_ukm` (`id_ukm`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- Indexes for table `ukm`
--
ALTER TABLE `ukm`
  ADD PRIMARY KEY (`id_ukm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `proker`
--
ALTER TABLE `proker`
  MODIFY `id_proker` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ukm`
--
ALTER TABLE `ukm`
  MODIFY `id_ukm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id_mhs`),
  ADD CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`id_ukm`) REFERENCES `ukm` (`id_ukm`),
  ADD CONSTRAINT `pendaftaran_ibfk_3` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Constraints for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `prestasi_ibfk_1` FOREIGN KEY (`id_ukm`) REFERENCES `ukm` (`id_ukm`);

--
-- Constraints for table `proker`
--
ALTER TABLE `proker`
  ADD CONSTRAINT `proker_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

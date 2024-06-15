-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Jun 2024 pada 10.47
-- Versi server: 8.3.0
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_korlantas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bg` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, '3536408020.jpg', '#5c5d60');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca`
--

CREATE TABLE `cuaca` (
  `id_cuaca` int NOT NULL,
  `kondisi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuaca`
--

INSERT INTO `cuaca` (`id_cuaca`, `kondisi`) VALUES
(3, 'Cerah'),
(4, 'Berawan/ Mendung'),
(5, 'Hujan/ Grimis'),
(6, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fungsi_jalan`
--

CREATE TABLE `fungsi_jalan` (
  `id_fungsi_jalan` int NOT NULL,
  `fungsi_jalan` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fungsi_jalan`
--

INSERT INTO `fungsi_jalan` (`id_fungsi_jalan`, `fungsi_jalan`) VALUES
(1, 'Arteri'),
(2, 'Kolektor'),
(3, 'Lokal/Lingkungan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_khusus`
--

CREATE TABLE `informasi_khusus` (
  `id_informasi_khusus` int NOT NULL,
  `informasi_khusus` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi_khusus`
--

INSERT INTO `informasi_khusus` (`id_informasi_khusus`, `informasi_khusus`) VALUES
(1, 'Tidak Ada Saksi'),
(2, 'Tabrakan Beruntun'),
(3, 'Tabrak Lari'),
(4, 'Ada Saksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecelakaan_menonjol`
--

CREATE TABLE `kecelakaan_menonjol` (
  `id_kecelakaan_menonjol` int NOT NULL,
  `kecelakaan_menonjol` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kecelakaan_menonjol`
--

INSERT INTO `kecelakaan_menonjol` (`id_kecelakaan_menonjol`, `kecelakaan_menonjol`) VALUES
(1, 'Ya'),
(2, 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_jalan`
--

CREATE TABLE `kelas_jalan` (
  `id_kelas_jalan` int NOT NULL,
  `kelas_jalan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas_jalan`
--

INSERT INTO `kelas_jalan` (`id_kelas_jalan`, `kelas_jalan`) VALUES
(1, 'I (Jalan Besar utk beban 10 ton & max 18 m Panjang Ran)'),
(2, 'II (Jalan Sedang utk beban s/d 10 ton & 12m Panjang Ran)'),
(3, 'III (Jalan Kecil utk max beban 8 ton & 9 m Panjang Ran)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kemiringan_jalan`
--

CREATE TABLE `kemiringan_jalan` (
  `id_kemiringan_jalan` int NOT NULL,
  `kemiringan_jalan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kemiringan_jalan`
--

INSERT INTO `kemiringan_jalan` (`id_kemiringan_jalan`, `kemiringan_jalan`) VALUES
(1, 'Datar'),
(2, 'Menanjak'),
(3, 'Menurun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi_cahaya`
--

CREATE TABLE `kondisi_cahaya` (
  `id_kondisi_cahaya` int NOT NULL,
  `kondisi_cahaya` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kondisi_cahaya`
--

INSERT INTO `kondisi_cahaya` (`id_kondisi_cahaya`, `kondisi_cahaya`) VALUES
(1, 'Redup / Samar (Tidak jelas terlihat)'),
(2, 'Terang / Jelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Arlan Butar Butar', 'arlanbutarbutar@net-code.tech', 'Belum dapat invoice/faktur', 'tes', '2024-01-16 13:35:45'),
(2, 'tes', 'arlanbutarbutar@net-code.tech', 'Website Tidak Bisa Diakses', 'tes', '2024-01-16 13:36:38'),
(3, 'Arlan', 'arlan270899@gmail.com', 'Email bermasalah', 'rtesdvs', '2024-01-16 13:37:30'),
(4, 'bulpen', 'ardhyjuned7@gmail.com', 'kwkwkw', 'knxknckn', '2024-06-11 00:33:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laka`
--

CREATE TABLE `laka` (
  `id_laka` int NOT NULL,
  `id_informasi_khusus` int DEFAULT NULL,
  `id_kondisi_cahaya` int DEFAULT NULL,
  `id_cuaca` int DEFAULT NULL,
  `id_tingkat_kecelakaan` int DEFAULT NULL,
  `id_kecelakaan_menonjol` int DEFAULT NULL,
  `id_fungsi_jalan` int DEFAULT NULL,
  `id_kelas_jalan` int DEFAULT NULL,
  `id_tipe_jalan` int DEFAULT NULL,
  `id_permukaan_jalan` int DEFAULT NULL,
  `id_kemiringan_jalan` int DEFAULT NULL,
  `id_status_jalan` int DEFAULT NULL,
  `id_polres` int DEFAULT NULL,
  `no_laka` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_kejadian` date DEFAULT NULL,
  `jumlah_meninggal` int DEFAULT NULL,
  `jumlah_luka_berat` int DEFAULT NULL,
  `jumlah_luka_ringan` int DEFAULT NULL,
  `titik_acuan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipe_kecelakaan` text COLLATE utf8mb4_general_ci,
  `batas_kecepatan_dilokasi` int DEFAULT NULL,
  `nilai_kerugian_non_kendaraan` int DEFAULT NULL,
  `nilai_kerugian_kendaraan` int DEFAULT NULL,
  `keterangan_kerugian` text COLLATE utf8mb4_general_ci,
  `jam_kejadian` time DEFAULT NULL,
  `id_titik_rawan` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laka`
--

INSERT INTO `laka` (`id_laka`, `id_informasi_khusus`, `id_kondisi_cahaya`, `id_cuaca`, `id_tingkat_kecelakaan`, `id_kecelakaan_menonjol`, `id_fungsi_jalan`, `id_kelas_jalan`, `id_tipe_jalan`, `id_permukaan_jalan`, `id_kemiringan_jalan`, `id_status_jalan`, `id_polres`, `no_laka`, `tanggal_kejadian`, `jumlah_meninggal`, `jumlah_luka_berat`, `jumlah_luka_ringan`, `titik_acuan`, `tipe_kecelakaan`, `batas_kecepatan_dilokasi`, `nilai_kerugian_non_kendaraan`, `nilai_kerugian_kendaraan`, `keterangan_kerugian`, `jam_kejadian`, `id_titik_rawan`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1907/II/2021/LL', '1905-07-13', 1, 0, 0, 'Sekolah/ Kampus', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat pengendara Spm Yamaha Mio bergerak dari arah Bundaran Oesapa hendak ke arah Kampus Undana, saat sampai di Tkp dekat kampus Unkris, di duga karena pengendara dengan kecepatann tinggi sehingga keluar jalur dan menabrak Trotoar kemuadian terseret dan menabrak tiang Listrik.', NULL, 44, '2024-06-15 13:08:51', '2024-06-15 13:08:51'),
(2, 1, 1, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1910/II/2021/LL', '1905-07-13', 1, 0, 0, 'Sekolah/ Kampus', 'Tabrakan dengan material / rambu pekerjaan jalan', 20, 100000, 0, 'Berawal saat pengendara Spm beat  bergerak dari arah kampus undana hendak menuju kearah bundaran oesapa ,sesamapinya di TKP depan kamus unkris diduga menabrak material pavin blok yg berada dibadan jalan sehingga pengendara hilang kendali terjatuh dan terseret,  akibat kejadian tersebut pengendara mengalami luka luka dan dirwat dirumah sakit siloam', NULL, 44, '2024-06-15 13:08:51', '2024-06-15 13:08:51'),
(3, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1994/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat pengendara spm hond beat bergerak dari arah Bandara dan hendak menuju ke arah Baumata, sesampainya di Tkp pengendara berusaha menghindari ke kiri jaln dari seekor anjing yg sedang berada dijalan namun pengendara spm honda beat hilang kendali dan masuk ke semak semak yg berda di kiri jalan, akibat dari kejadian tersebut pengendara mengalami luka luka.', NULL, 44, '2024-06-15 13:08:51', '2024-06-15 13:08:51'),
(4, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1995/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 3, 'Simpang', 'Di ruas jalan, pejalan kaki di bahu jalan atau di trotoar', 20, 500000, 0, 'Berawal saat pengendara spm bergerak dr arah penfui menuju kearah simpang oesapa diatas jalan adi sucipto, setibanya di tkp menabrak pejalan kaki yang sementara berjalan menyeberang dari pinggir kanan menuju ke pinggir kiri jalan yang mengakibatkan pejalan kaki dan spm langsung terjatuh, akibat dr kejadian tersebut pejalan kaki mengalami luka dan sementara dirawat di rsud kota kupang sedangkan peng. Spm dirawat di rsu siloam kupang.', NULL, 44, '2024-06-15 13:08:51', '2024-06-15 13:08:51'),
(5, 1, 2, 5, 1, 2, 1, 1, 1, 4, 1, 2, 2, 'LP/B/2137/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan depan - depan', 20, 1000000, 0, 'Berawal dari pengemudi mobil bergerak dari arah patung burung Penfui dgn tujuan ke arah baumata dengan kecepatan tidak terlalu kencang, sedangkan pengendara SPM bergerak dari arah yg berlawanan, setibahnya di TKP pengemudi yg di duga mengantuk mbl yg di kemudikan mengambil jalur kanan sehingga terjadi tabrakan atas kejadian tersebut pengendara SPM di larikan ke RS. Kartini Kupang. Dan kedua kendaraan mengalami kerusakan material.', NULL, 44, '2024-06-15 13:08:51', '2024-06-15 13:08:51'),
(6, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2148/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 2, 'Sekolah/ Kampus', 'Tabrakan depan - depan', 20, 500000, 0, 'Berawal saat SPM honda beat bergerak dari arah bundaran Oesapa menuju ke arah Penghijauan. Sedangkan SPM yamaha vixon bergerak dari Penghijauan menuju kearah bundaran Oesapa. Sesampainya di tkp depan UNKRIS pengendara SPM Honda beat bergerak dengan kecepatan tinggi dan masuk ke jalur spm yamaha vixon sehingga kecelakaan tidak bisa di hindarkan . Akibat dari kejadian tersebut kedua pengendara mengalami  luka-luka dan di rawat di RS Kartini dan RS Siloam Kupang.', NULL, 44, '2024-06-15 13:08:52', '2024-06-15 13:08:52'),
(7, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/15/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 0, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 20000000, 0, 'Berawal saat mobil Mitsubishi Xpander Nopol DH 1032 BG bergerak diatas Jalan Piet A. tallo masuk ke Bundaran Penghijauan, kemudian bergerak hendak masuk kearah Patung Adipura dan bertabrakan dengan Mobi Toyota Avanza Nopol DH 1575 AZ yang bergerak dari Jalan Herman Johanes memasuki Bundaran Penghijauan. Akibat kejadian tersebut kedua mobil tersebut mengalami kerusakan material.', NULL, 44, '2024-06-15 13:08:52', '2024-06-15 13:08:52'),
(8, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/226/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '1905-07-14', 0, 0, 2, 'Simpang', 'Tabrakan depan - depan', 20, 1000000, 1000000, 'Berawal dari pengendara SPM Yamaha Vixion bergerak dari arah SMAN 4 dengan tujuan kearah UNKRIS. Sedangkan pengendara SPM Honda Beat bergerak dari arah berlawanan setibanya di TKP tepatnya di pertigaan bawah SMAN 4 kedua pengendara hilang kendali sehingga terjadi tabrakan.', NULL, 44, '2024-06-15 13:08:52', '2024-06-15 13:08:52'),
(9, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1906/I/2021/LL', '1905-07-13', 0, 0, 3, 'Tempat Ibadah', 'Di ruas jalan, pejalan kaki berdiri ragu-ragu di tengah jalan', 20, 100000, 0, 'Berawal saat Spm Honda Spacy Nopol DH 5390 AZ bergerak dengan kecepatan tinggi dari arah Kupang menuju kearah Tarus, setibanya di TKP menabrak pejalan kaki yang sedang menyeberang jalan dari kiri ke kanan jalan sehingga mengakibatkan pengndara, penumpang dan pejalan kaki terjatuh dan luka-luka.', NULL, 38, '2024-06-15 13:08:52', '2024-06-15 13:08:52'),
(10, 1, 1, 6, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1912/II/2021/LL', '1905-07-13', 0, 0, 1, 'SPBU', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 100000, 0, 'Berawal dari pengendara spm honda revo fit bergerak  dari arah  kupang hendak menuju kearah lasiana,sesampinya di TKP dekat spbu km 10 mobil yg didepanya berhenti dan spm honda revo fit melambung dari kiri mobil tersebut,pada saat melambung dari kiri tiba tiba ada spm honda beat yg datang dari arah lasiana belok kanan menuju kearah spbu,dan pengendara spm revo fit sempat menghindar kekiri.karena jarak terlalu km dekat sehingga terjadi tabrakan mengenai ban belkang dari spm beat tersebut dan terjatuh.akibat dari kejadian tersebut pengendara spm revo fit mengalami luka luka dan dirawat dirumah sakit siloam.', NULL, 38, '2024-06-15 13:08:53', '2024-06-15 13:08:53'),
(11, 2, 2, 3, 1, 2, 1, 1, 3, 1, 1, 3, 2, 'LP/1915/1925/III/2021/LL', '1905-07-13', 0, 0, 1, 'Simpang', 'Tabrakan dengan kendaraan parkir di kiri', 20, 1000000, 0, 'Berawal saat Spm Suzuki Shooter Nopol DH 6208 GJ bergerak diatas Jalan Timor raya dari arah Kupang menuju kearah Lasiana, setibanya di TKP menyerempet pinggir kanan belakang mobil Toyota Innova Nopol DH 1461 HK yang sedang parkir sehingga Spm tersebut oleng dan terjatuh Kemudian Spm tersebut dilindas ban kiri belakang mobil truk Tronton Nopol  W 9968 UL yang juga bergerak dari arah yang sama. Akibat kejadian tersebut pengedara Spm terluka.', NULL, 38, '2024-06-15 13:08:53', '2024-06-15 13:08:53'),
(12, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1944/IV/2021/LL', '1905-07-13', 0, 1, 0, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 250000, 0, 'Berawal saat Spm Suzuki A 100 tanpa TNKB bergerak diatas Jln. Timor Raya dari arah Lasiana menuju kearah Kupang dengan sepeda motornya tanpa lampu. Setibanya di TKP berbelok kanan memotong jalur sehingga langsung bertabrakan dengan mobil yang tidak teridentifikasi yang dating dari arah berlawanan. Akibat kejadian tersebut pengendara sepeda motor terjatuh dan terluka sedangkan mobil tersebut melarikan diri.', NULL, 38, '2024-06-15 13:08:53', '2024-06-15 13:08:53'),
(13, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2018/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip', 60, 3000000, 0, 'Kronologis berawal dari Spm Honda Win  yang bergerak dari arah Oesapa menuju arah Kupang dan sampai TKP menghindari mobil didepannya yang berhenti mendadak sehingga bergerak kekanan jalan dan bertabrakan dengan Mobil mikrolet yang datang dari arah berlawanan.', NULL, 38, '2024-06-15 13:08:53', '2024-06-15 13:08:53'),
(14, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2028/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 0, 'Tempat Ibadah', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 5000000, 0, 'Berawal dari pengendara Spm Suzuki Satria Fu bergerak dari arah SD kelapa Lima dengan tujuan ke arah jalan Timor raya, dengan kecepatan kencang setibahnya di TKP pengendara Spm hilang kendali saat melewati jalan menurun sehingga menabrak  tiang listrik yg berada di kiri jalan. Akibat dari kejadian tersebut pengendara Spm di larikan ke RS. S. K. Lerik Kupang.', NULL, 38, '2024-06-15 13:08:53', '2024-06-15 13:08:53'),
(15, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2046/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 5, 'Jembatan', 'Tabrakan saat menyalip', 50, 3000000, 0, 'Berawal saat kedua Spm bergerak dari arah yanng berlawanan diatas jalan Timor Raya, setibanya di Tkp Spm Honda Beat Nopol DH 2240 CN yang datang dari arah Oesapa bergerak zig-zag masuk kejalur kanan dan karena jarak yang sangat dekat sehingga bertabrakan dengan Spm Honda Scoopy Nopol DH 6617 KH yang datang dari arah berlawanan yang mengakibatkan kedua Spm terlibat lansng jatuh terseret, dimana akibat dari kejadian tersebut kedua pengendara dan penumpang Spm mengalami luka-luka dan sementara dirawat di RSUD S.K.Lerik Kota Kupang serta kedua kendaraan mengalami kerusakan material.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(16, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2048/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 2, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 300000, 0, 'Berawal dari pengendara SPM bergerak dari arah Oesapa timur dgn tujuan ke arah kelapa Lima dengan kecepatan kencang. Setibahnya di TKP pengendara SPM menabrak PJK Yang ada sementara menyebrang jalan dari arah kiri jalan ke arah kanan jalan. Akibat dari kejadian tersebut PJK mengalami luka2.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(17, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2058/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan kendaraan belok kiri dengan kendaraan yang jalan lurus', 20, 1000000, 0, 'Berawal dari pengemudi mbl bergerak dari arah Oesapa dgn tujuan kearah kelapa Lima namun pada saat sampai di TKP pengemudi mbl hendak memutar arah kembali ke arah Oesapa, namun saat memutar mengalami tabrakan dengan SPM yg datang dari arah yang sama, akibat dari kejadian  tersebut pengendara SPM di larikan ke RSU Kupang. kedua kendaraan mengalami kerusakan material.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(18, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2113/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 3, 'Jembatan', 'Tabrakan saat menyalip', 20, 500000, 0, 'Berawal saat pengendara Spm Honda Beat bergerak dari arah Kelapa Lima menuju Oesapa dan SPM Honda Scoopy bergerak dari arah Oesapa menuju Kelapa Lima, sesampainya di TKP tepat di tengah jembatan Oesapa pengendara Honda beat mengambil jalur ke kanan sehingga terjadi kecelakaan.akibat dari kejadian tersebut pengendara SPM Honda Scoopy mengalami luka pada jari tangan kanan, lutut kaki kanan dan jari kaki kanan dan langsung di larikan ke RS SK Lerik Kota Kupang', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(19, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/B/2130/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 4, 'Tempat Ibadah', 'Tabrakan saat pindah lajur ke kiri', 20, 500000, 0, 'Berawal dari spm beat dan SPM Honda CBR bergerak bersama dari arah pasar Oeba menuju ke arah Oesapa. Sesampainya di TKP SPM Honda CBR kaget melihat kendaraan di depan saat akan melambung SPM Honda beat, dan pengendara SPM Honda CBR menghindar ke kiri sehingga menabrak SPM Honda beat yg ada d sampingnya..akibat dari kejadian tersebut pengendara dan penumpang SPM Honda CBR di larikan ke RS SK Lerik kota kupang.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(20, 1, 2, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2139/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 0, 'Monumen/ Tugu/ Patok', 'Tabrakan depan - depan', 60, 2000000, 0, 'Berawal dr pengendara SPM bergerak dari arah Kupang dgn tujuan kearah Tarus sedangkan pengemudi Mbl Truck Tangki diduga datang dari arah berlawanan. Setibahnya di TKP pengendara SPM hilang kendali sehingga terjadi tabrakan. Setelah kejadian tabrakan Mbl terus melaju. Akibat dari kejadian tersebut pengendara SPM meninggal dunia di TKP dan dibawa ke RSU Kpg. Kendaraan SPM mengalami kerusakan material. (Info sementara di TKP).', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(21, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2144/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 60, 100000, 0, 'Berawal dr Spm CRF bergerak dari arah Oeba menuji kearah Lasiana diatas jalan Timor Raya, setibanya di tkp dpn mutiara karena pengendara mengantuk sehingg spm hilang kendali dan lgs terjatuh di pinggir jalan sebelah kiri, Atas kejadian  tersebut Korban di larikan ke RSU Kota  Kupang.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(22, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2147/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 2, 'Rumah / Perumahan / Pemukiman', 'Kendaraan Out of Control keluar ke kiri jalan', 60, 100000, 0, 'Berawal dari pengendara maupun penumpang  Spm honda Scopy tersebut bergerak dari Kupang hendak ke arah Oesapa, saat tiba di Tkp, pengendara hendak melambung kendaraan  Mobil yang bergerak di depannya, namun saat melambung ban depan dari spm masuk ke lubang jalan sehingga pengendara hilang kendali dan terjatuh di kanan jalan, akibatnya pengendara dan penumpang mengalami luka-luka dan di rawat di RSU Kota Kupang.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(23, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2153/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 2000000, 0, 'Kronologis berawal dari pengendara SPM Honda Supra fit bergerak dari arah tarus dgn tujuan kea arah kelapa Lima sedangkan pengendara SPM Honda Scoopy bergerak dari arah berlawanan, setibanya di TKP, pengendara spm Honda Scoopy melambung mobil sehingga masuk ke jalurnya pengendara SPM Honda Supra fit dan terjadi tabrakan. Akibat dari kejadian tersebut ke dua pengendara di bw ke RS. Leona .Kupang dan kedua kendaraan mengalami kerusakan material.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(24, 1, 2, 3, 1, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/07/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 60, 1000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2359 BT bergerak diataas Jalan Timor Raya dari arah Oesapa menuju kearah Kupang, setibanya di TKP mengambil jalur kanan untuk menghindari lubang kemudian hendak kembali lahi kejalur kiri tetapi langsung bertabrakan dengan Sepeda motor Honda CB150R Nopol DH 2291 BN yang datang dari arah berlawanan sehingga mengakibatkan kedua pengendara terjatuh dan mengalami luka-luka serta kedua kendaraan mengalami kerusakan material.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(25, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/24/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 1, 'Simpang', 'Tabrakan saat menyalip dari kiri', 60, 500000, 0, 'Berawal saat Pengendara  Sepeda Motor Honda Scoopy bergerak dari arah kelapa Lima dgn tujuan kea arah pasir panjang sedangkan MBL tengki tronton ada sementara berhenti di trafik light dengan posisi berada di urutan 3 (tiga) mobil. Pada saat lampu traffic light hijau mobil Hendak bergerak untuk jalan. Namun pada saat dari arah belakang kiri pengendara SPM yg hendak melambung di antara tengki tronton dan mobil pick up hilang kendali sehingga terjatuh di bagian ban belakang kiri mobil tengki tronton. Akibat dari kejadian tersebut penumpang SPM di larikan ke RS. S. K lerik Kupang.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(26, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/30/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'Monumen/ Tugu/ Patok', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 60, 50000, 0, 'Berawal saat Pengendara Sepeda motor Yamaha Fino bergerak dari arah Oesapa hendak ke arah Kupang, saat tiba di tkp KM 8, tiba2 pejalan kaki tersebut menyebrang dari arah kiri ke arah kanan jalan, karena jarak sudah dekat sehingga pengendara tidak dapat lagi menghindar akibatnya tabrkan tak terhindarkan lagi.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(27, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/35/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - belakang', 60, 300000, 0, 'Berawal saat Pengendara  Spm Yamaha Jupiter Z  Bergerak dari arah Oesapa menuju ke arah Kupang beriringan dengan Mobil Kijang Grand Setibanya di Tkp tepatnya di depan Hotel Kristal Pengendara Spm Yamaha Jupiter Z  yang dalam keadaan mengantuk menabrak dari arah belakang Mobil Kijang Grand sehingga Pengendara dan Penumpang Spm di larikan ke RS.SILOAM KUPANG.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(28, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/48/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - depan', 60, 1000000, 0, 'Berawal saat Pengendara Spm Yamaha Vino yang bergerak dari arah Pasir Panjang menuju ke arah Oesapa sedangkan Pengendara Spm Honda Beat Bergerak dari arah Oesapa Menuju ke arah Pasir Panjang setibanya di Tkp tepatnya di dekat Hotel Ima Tiba tiba Pengendara Spm Honda Beat langsung mengambil lajur dari Pengendara Spm Yamaha Vino sehingga terjadilah tabrakan. Atas Kejadian tersebut kedua Pengendara di larikan ke RS.S.K.LERIK KUPANG.', NULL, 38, '2024-06-15 13:08:54', '2024-06-15 13:08:54'),
(29, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/229/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '1905-07-14', 0, 0, 3, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 5000000, 5000000, 'Berawal dari pengemudi Mobil Pick Up bergerak dari arah Kupang dengan tujuan kearah Tarus. Setibanya di TKP Pengemudi Mobil hilang kendali dan menyenggol tiga orang PJK yang sementara menyebrang jalan', NULL, 38, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(30, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/235/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '1905-07-14', 0, 0, 2, 'Tempat Wisata', 'Tabrakan saat gerakan putar balik', 20, 500000, 500000, 'Berawal saat Mobil Mikrolet bergerak keluar dari cabang Jln. Halilintar (sebelah kiri dari arah Kupang kearah Lasiana), hendak menuju kearah Kupang, namun karena ada penumpang berdiri di ssebelah kanan jalan dari arah Kupang ke Lasiana sehingga pengemudi bergerak hendak memutar, saat memutar datang pengendara Spm Honda Vario dari arah Kupng dan langsung menabrak bagian samping kiri pintu pengemudi Mikrolet tersebut.', NULL, 38, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(31, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1992/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 1, 0, 'Sekolah/ Kampus', 'Tabrakan depan - depan', 20, 15000000, 0, 'Berawal saat Spm HONDA BEAT  Nopol DH 6057 KG melaju dari arah benteng menuju arah Alak sesampainya di TKP bertabrakan dengan mobil Toyota Avanza DH 1612 HE yang datang dari arah berlawanan sehingga spm honda beat terseret sejauh 50 meter. Akibat dari kejadian tersebut pengendara dan penumpang spm honda beat mengalami luka luka dm dibawah ke RSU prof. Dr. W.Z Johanes Kupang.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(32, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2031/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Scoopy nopol DH 3121 KP yanag bergerak dari arah Terminal Kupang menuju arah Namosain yang ketika sampai di TKP ada sebuah SPM lain yang bergerak memotong jalan didepan dan karena jarak dekat pengendara SPM Scoopy langsung mengerem mendadak hingga terjatuh sendiri.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(33, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2159/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 1, 0, 'Jembatan', 'Tabrakan depan - depan', 20, 2000000, 0, 'Kronologis kejadian berawal dari Pengendara Spm Honda Revo yang bergerak dari arah Alak menuju Kupang sedangkan Pengendara Mobil Daihatsu Feroza bergerak dari arah Kupang menuju Alak sesampainya di Tkp tepatnya di pertigaan gang maleset Pengemudi Mobil Daihatsu Feroza yang dalam keadaan mengantuk mengambil lajur dari Spm Honda Revo sehingga terjadi tabrakan. Atas kejadian tersebut Pengendara Spm Honda Revo dilarikan ke RSB  TITUS ULY Kupang.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(34, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/03/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 1, 'Toko/ Pertokoan / Pasar', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 100000, 0, 'Berawal saat Sepeda motor Yamaha Jupiter MX warna hitam tanpa TNKB bergerak diatas Jalan Pahlawan dari arah Kantor Lurah Namosain menuju kearah Leter S, setibanya di TKP menabrak korban pejalan kaki yang sedang berjalan kaki dari pinggir kiri masuk ke tengah jalan sehingga pengendara sepeda motor dan pejalan kaki terjatuh.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(35, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/45/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'SPBU', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 60, 0, 0, 'Berawal saat Sepeda Motor Honda CRF bergerak dari arah Nunbaun Delha hendak ke arah Tenau, saat tiba di Tkp, pejalan kaki tersebut diatas sedang berdiri di kiri jalan, dan ketika pengendara sudah dekat tiba2 pejalan kaki tersebut  berlari menyebrang ke arah kanan jalan namun karena jarak yang sudah dekat sehingga pengendara tdk dapat mengendalikan laju kendaraanya sehingga tabrakanpun terjadi. Pada saat tabrakan pejalan kaki tersebut terlempar ke arah depan sedangkan pengendara dan penumpang tidak terjatuh. Bahwa akibat dari tabrakan tersebut pejakan kaki mengalami luka dan di rawat di RSU Siloam Kupang.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(36, 1, 2, 5, 3, 2, 1, 1, 1, 4, 1, 2, 2, 'LP/B/46/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 1, 0, 0, 'Sekolah/ Kampus', 'Tabrakan saat menyalip dari kiri', 50, 500000, 0, 'Kronologis sementara  berawal saat pengendara  Spm Honda Supra Fit yang bergerak dari arah Namosain menuju arah Kupang dan saat sampai di TKP, pengendara hendak melambung sebuah mobil Dump Truk dari arah Kiri,  namun karena jaraknya terlalu mepet sehingga menyerempet bodi dump truk tersebut kemudian terjatuh dan tergilas oleh ban belakang dari dump truck tersebut.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(37, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/237/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '1905-07-14', 0, 0, 2, 'SPBU', 'Tabrakan depan - depan', 20, 1800000, 1000000, 'Bermula saat Spm Honda Beat bergerak dari arah Tenau menuju Kupang yang setibanya di TKP tiba-tiba saja melaju spm Yamaha Fino dari arah berlawanan dengan kecepatan tinggi masuk kejalur jalan sebelah kanan tidak mengurangi kecepatan langsung menghadap kedepan spm Honda beat sehingga terjadi tabrakan.', NULL, 45, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(38, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2140/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 2000000, 0, 'Berawal saat pengendara Spm Honda Revo No. Pol DH 4520 FC yg bergerak dari arah Tenau menuju ke arah Kupang, sesampainya di Tkp pengendara Spm Honda Revo hendak melambung kanan dari sebuah mobil Pick Up yg saat itu sama2 melaju ke arah kupang, namum pada saat spm honda revo hendak melambung  mobil pick up tersebut, datang sebuah mobil truck mitsubishi No. Pol DH 9109 DA dari arah berlawanan sehingga terjadi serempetan antara Spm Honda revo no. Pol DH 4520 FC dgn Mobil Truck No. Pol DH 9109 DA. Akibat dari kejadian tersebut pengendara spm honda revo mengalami luka luka dan meninggal dunia di TKP', NULL, 48, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(39, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2161/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 3, 'Tempat Wisata', 'Tabrakan dengan Kendaraan menyebrang dari sisi kiri jalan', 20, 1500000, 0, 'Kronologis berawal saat Spm Honda Scoopy merah Nopol DH 4047 KF yang bergerak dari depan Kios yang tepat di samping Cafe Tebing hendak memotong jalan kebagian kanan masuk ke gang yg ada si seberang jalan, pada saat sementara bergerak memotong, datang Spm Honda Scoopy putih dari arah Tenau menuju arah Bolok dengan kecepatan tinggi tidak mengurangi kecepatan dan tidak menghindar sehingga terjadi tabrakan.', NULL, 48, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(40, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/39/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 1, 1, 'Tempat Ibadah', 'Tabrakan depan - belakang', 40, 1000000, 0, 'Berawal saat Sepeda motor Honda Beat Nopol DH 3950 HP bergerak diatas jalan Jurusan Bolok dari arah Perikanan menuju kearah Bolok, setibanya di TKP menabrak mobil Truk Mitsubishi “BLANTIKA” Nopol DH 9262 GC yang sedang terparkir (sedang mengganti ban mobil).sehingga Sepeda motor Honda Beat Nopol DH 3950 HP tersebut terjatuh kejalur kanan lalu bertabrakan dengan mobil Truk tangki air Mitsubishi Nopol DH 8848 AH yang datang dari arah berlawanan. Akibat kejadian tersebut pengendara dan penumpang Sepeda motor Honda Beat Nopol DH 3950 HP terjatuh dan terluka.', NULL, 48, '2024-06-15 13:08:55', '2024-06-15 13:08:55'),
(47, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2025/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 1, 4, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 5000000, 0, 'Berawal saat Mobil Dum Truck Mitsubishi Nopol DH L 9214 AV bergerak diatas Jalan M. Praja dari arah Tenau menuju kearah Namosain dengan kecepatan tinggi, setibanya di TKP menabrak Spm Honda Revo Nopol DH 5459 HM didepannya yang memotong jalan dari pinggir kiri hendak ke pinggir kanan jalan. Kemudian mobil dum truck tersebut menyeret Spm Honda Revo Nopol DH 5459 HM tersebut kepinggir kanan jalan dan menabrak pembatas pagar pembatas jalan lalu mobil dum truck tersebut terbalik.', NULL, 49, '2024-06-15 13:08:56', '2024-06-15 13:08:56'),
(48, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2085/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 3, 'Tempat Wisata', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 25000000, 0, 'Berawal saat pengemudi mbl  bergerak dari arah Pelabuhan kearah Kupang melewati Jln. M. Praja, setibanya di TKP dengan Jalan sedikit tikungan ke arah kiri dan kanan pengemudi mobil hendak mengambil botol susu yang terjatuh di sampingnya, sehingga mobil yang di kemudian oleng dan keluar jalur masuk ke dalam jurang yang berada di kiri jalan. Akibat dari kejadian tersebut pengemudi dan penumpang mengalami luka-luka dan di larikan ke RSU Kupang. Dan kendaraan mengalami kerusakan material berat.', NULL, 49, '2024-06-15 13:08:56', '2024-06-15 13:08:56'),
(54, 1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2007/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 3, 'Monumen/ Tugu/ Patok', 'Tabrakan depan - depan', 20, 2000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2934 KN bergerak dengan kecepatan tinggi di Jalan kanan Jalur 40 pada jalu kanan dari arah Kampung lama menuju kearah Bolok, setibanya di TKP bertabrakan dengan Spm Yamaha Vixion Nopol DH 6190 AY yang bergerak dari arah berlawanan sehingga kedua pengendara dan penumpangnya terjatuh dan luka-luka.', NULL, 51, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(58, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1917/II/2021/LL', '1905-07-13', 0, 0, 3, 'Simpang', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 300000, 0, 'Berawal saat pengendara Spm Honda Beat yg bergerak dari arah Jalur 40 menuju ke arah Oepura, sesampainya di Tkp, pengendara Spm Yamaha Jupiter Z menyalakan lampu Sign kanan dan hendak belok ke arah jalan Oebolifo ll, namun pada saat hendak belok kanan tiba2 ditabrak  dibagian kanan oleh Spm Yamaha Jupiter Z yg melaju dari arah jalur 40 menujh ke arah Oepura. Akibat dari kejadian tersebut pengendara Spm Yamaha Jupiter Z, pengendara Spm Honda Beat beserta penumpang terjatuh dan mengalami luka luka dan langsung dibawah ke RS Boromeus Kupang.', NULL, 46, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(59, 3, 2, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1929/III/2021/LL', '1905-07-13', 1, 0, 0, 'Stasiun KA/Terminal Bis', 'Tabrakan depan - depan', 20, 100000, 0, 'Berawal saat Spm Honda Vario Nopol DH 3756 HJ bergerak dari arah Oelomin menuju kearah Oepura, setibanya di TKP (informasi awal bersenggolan dengan mobil yang belum teridentifikasi yang bergerak dari arah berlawanan) sehingga mengakibatkan Spm terjatuh dan pengendaranya MENINGGAL DUNIA di TKP sedangkan mobil yang diduga menjadi lawan tabraknya terus bergerak menuju kearah Oelomin.', NULL, 46, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(60, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1955/IV/2021/LL', '1905-07-13', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat Spm Yamaha Vixion yang bergerak dari arah oepura  hendak menuju kearah sikumana dengan kecepatan kencang, sesampainya di TKP dekat pegadaian sikumana pengendara hilang kendali dan menabrak trotoar jalan dan terjatuh, akibat kejadian tersebut pengendara mengalami luka luka dan kendaraan mengalami kerusakan material', NULL, 46, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(61, 1, 2, 3, 2, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/23/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 1, 0, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat pengendara melaju dari arah Jalur 40 hendak kearah Oepura, sesampainya di TKP kehilangan kendali karena masuk ke jalan berlubang sehingga terjadi kecelakaam', NULL, 46, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(62, 3, 2, 3, 2, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1905/I/2021/LL', '1905-07-13', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip dari kanan', 20, 500000, 0, 'Berawal saat Spm Honda Supra X 125 Dari Penfui menuju jembatan Liliba sesampinya di TKP depan Hotel Timore tiba tiba dari arah belakang melintas motor Honda Beat dan menyenggol stir sebelah kanan yang mengakibtakan pengendara spm Honda Supra X 125 terjatuh dan menagalami luka lecet pada lutut kanan,luka lecet pada siku kanan dan mengalami patah tulang pada paha kaki kanan dan langsung di bawa ke Rumah Sakit Umum Siloam.', NULL, 41, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(63, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1960/IV/2021/LL', '1905-07-13', 0, 0, 4, 'Jembatan', 'Tabrakan depan - belakang', 20, 500000, 0, 'Berawal saat  kedua kendaraan sama sama bergerak dari arah bundaran penghijauan hendak menuju kearah bundaran tirosa dengan posisi spm honda supra tanpa tnkb didepan sedangkan spm honda revo dibelakang, sesampainya diTKP diujung jembatan liliba spm honda revo menabrak spm honda supra tanpa tnkb yg berada didepanya.dari n,akibat kejadian tersebut kedua pengendara dan penumpang terjatuh mengalami luka luka dan dirawat dirumah sakit siloam serta kedua kendaraan mengalami kerusakan material.', NULL, 41, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(64, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1983/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA / POLDA NTT', '1905-07-13', 0, 0, 2, 'Jembatan', 'Tabrakan saat menyalip', 20, 200000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2510 HU bergerak diatas Jln Piet A. Tallo dari arah Liliba menuju kearah Bundaran PU, setibanya diujung jembatan Liliba Spm Honda Beat Nopol DH 2510 HU melambung kanan kendaraan di depannya, ketika melambung sampai masuk ke jalur berlawanan sehingga bertabrakan dengan Spm Yamaha Mio tanpa TNKB yang datang dari arah berlawanan. Akibatnya kedua Spm terjatuh bersama pengendaranya, kemudian kedua pengendara dibawa ke RS Kartini untuk mendapatkan pertolongan.', NULL, 41, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(65, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2038/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kiri', 20, 100000, 0, 'Berawal dr mbl truck bergerak dari arah Pulau Indah Oesapa, hendak ke arah jembatan Liliba saat tiba di Tkp, diduga pengendara Spm hendak melambung dari arah kiri namun karena terlalu mepet dgn bodi samping kiri dari mobil dump truck  sehingga terjadi senggolan akibatnya pengendara spm terjatuh di bawa kolong mobil dan tergilas ban belakang kiri.', NULL, 41, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(66, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/44/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'SPBU', 'Tabrakan dengan kendaraan parkir di kiri', 60, 500000, 0, 'Berawal saat Sepeda Motor Honda CRF bergerak dr arah Liliba menuju kearah penfui diatas jalan Piet A. Tallo, setibanya di Tkp karena pengendara dan penumpang saling bercerita sehingg tidak konsentrasi kearah depan dan tidak melihat Mbl Dump Truck yang sementara parkir, karena jarak yg sangat dekat sehingga spm menabrak bagian belakang dr mbl dump truck tersebut yg mengakibatkan spm lgs jatuh terseret. Akibat dr kejadian tsb pengendara dan penumpang spm mengalami luka dan sementara dirawat di rumkit kartini kupang.', NULL, 41, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(67, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/223/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '1905-07-14', 0, 0, 4, 'SPBU', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 20, 5000000, 5000000, 'Berawal dari Pengemudi Mobil Bus Arjuna bergerak dari arah Tugu Merpati kearah Jembatan Liliba, sesampainya di TKP tepatnya di putaran kanan SPBU Liliba hendak berbelok kanan tanpa memperhatikan keandaraan lain yang datang dari arah belakang sehingga terjadi kecelakaan, yakni Spm Beat Pop yang kemudian menabrak lagi Spm Vixion, dan kemudian Spm Vixion menabrak Spm Mio J. Akibat dari kejadian tersebut pengendara dan penumpang di larikan ke RS Kartini dan RS Leona Kupang dan keempat kendaraan mengalami kerusakan material.', NULL, 41, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(68, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1958/IV/2021/LL', '1905-07-13', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2885 KR tunggal bergerak dari arah Bundara Gubernur menuju kearah Ramaana Mall, setibanya di TKP tiba-tiba kehilangan kendali dan terjatuh lalu terseret diatas aspal mengakibatkan pengendara mengalami luka-luka dan Spm mengalami kerusakan material.', NULL, 50, '2024-06-15 13:08:57', '2024-06-15 13:08:57'),
(69, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2036/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 5000000, 0, 'Berawal dari Spm Yamaha R 15 yang melaju dari arah Gedung olah raga menuju arah  Makorem sedangkan Mobil Kijang  Toyota dari arah Makorem menuju  Gedung olah raga setibanya di tkp Mobil Kijang Toyota  yang ingin berbelok  mengambil lajur kanan  yang cukup banyak dan tidak melihat kalau ada pengendara Spm Yamaha R15  yang datang dari arah berlawanan sehingga langsung menabraknya kemudian kedua korban terjatuh dan terseret sehingga di larikan ke RS Bhayangkara.', NULL, 50, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(70, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2051/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 2, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kanan ke kiri', 40, 100000, 0, 'Berawal saat Spm Suzuki Nex II Nopol DH 2527 KJ bergerak diatas Jalan Thamrin dari arah Korem menuju kearah Patung Kirab, setibanya di TKP menabrak korban pejalan kaki yang sedang menyeberang jalan dari pinggir kanan menuju ke kiri jalan sehingga mengakibatkan pejalan kaki dan pemotor terjatuh dan mengalami luka-luka.', NULL, 50, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(71, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2053/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 1000000, 0, 'Berawal saat Spm Honda Beat yang bergerak dari arah Kantor Lurah Oebobo menuju  ke arah  Hotel Charvita setibanya di Tkp tepatnya di depan Kantor PU Provinsi Lama Pengendara Spm Honda Beat tersebut yang dalam keadaan mengatuk hilang kendali sehingga menabrak tiang listrik yang berada di sisi kiri jalan.Atas kejadian tersebut Pengendara Spm Honda Beat di larikan ke RSU Kupang.', NULL, 50, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(72, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/22/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 2, 0, 0, 'Kantor/ Perkantoran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 2000000, 0, 'Berawal saat Pengendara  Sepeda Motor Honda Beat yang bergerak dari arah Kantor Lurah Oebobo Menuju Ke arah Bundaran Gubernur setibanya di Tkp tepatnya di samping Kantor PU Provinsi Lama tiba - tiba datang Pengendara Sepeda Motor Yamaha Mio dari arah Gang Bengkel Kantor PU menuju ke arah Hotel Greenia dan tidak memperhatikan  kalau ada Pengendara Sepeda Motor Honda Beat yang sedang melintas sehingga terjadilah tabrakan .Atas Kejadian tersebut kedua Pengendara Sepeda Motor dilarikan ke Rumah Sakit Bhayangkara Titus Uly Kupang.', NULL, 50, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(73, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/37/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - depan', 20, 1000000, 0, 'Berawal saat Sepeda motor Yamaha Vixion Nopol DH 6297 HC bergerak diatas Jalan WJ Lalamentik dari arah Bundaran Oebufu menuju kearah Naimata, setibabnya di TKP bertabrakan dengan Sepeda Motor Honda Supra X 125 Nopol DH 4749 KE yang datang dari arah berlawanan sehingga kedua pengendara terjatuh dan terluka.', NULL, 50, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(74, 1, 2, 5, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/41/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'Simpang', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 500000, 0, 'Berawal saat pengendara Spm Honda CRF bergerak dari arah  Oebufu hendak  membelok ke arah samping Korem saat tiba di Tkp, datang pengendara Spm  suzuki Satria dari arah GOR hendak ke arah Oebufu, karena pengenara spm suzuki satria tidak memperhatikan spm honda CRF sehingga terjadi tabrakan. Akibat dari kecelakaan tersebut kedua pengendara mengalami luka-luka dan di rawat di RS Bhayangkara.', NULL, 50, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(75, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1959/IV/2021/LL', '1905-07-13', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Spacy melaju dari arah Kantor Gubernur menuju ke arah Bundaran PU, sesampainya di TKP menghindari seekor kucing yang berada ditengah jalan sehingga kehilangan kendali dan terjatuh. Akibat dari kejadian tersebut pengendara Spm honda Spacy mengalami luka luka dan dibawah ke Rumah Sakit  Wirasakti.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(76, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1979/V/2021/LL', '1905-07-13', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Scoopy Nopol DH 5906 KN yang bergerak dari arah Bundaran Kantor Gubernur menuju arah Ruko Oebobo yang sampai di TKP pengendara secara tiba-tiba mengerem mendadak karena berusaha menghindari seekor anjing yang berlari memotong jalan.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(77, 3, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1980/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 1, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan depan - belakang', 20, 100000, 0, 'Berawal saat Spm Suzuki Skywave Nopol DH 2863 AN bergerak diatas Jalan Frans Seda diduga dari arah Tamnos menuju kearah Bundaran Tirosa, setibanya di TKP bertabrakan dengan Spm yang tidak teridentifikasi sehingga kedua Spm terjatuh mengakibatkan pengendara dan penumpang Spm Suzuki Skywave Nopol DH 2863 AN terluka. Belum diketahui penyebab tabrakan karena pengendara dan penumpang Spm Suzuki Skywave Nopol DH 2863 AN belum sadarkan diri sedangkan setelah petugas tiba di TKP lawan tabrak sudah meninggalkan TKP membawa sepeda motornya.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(78, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2067/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 1000000, 0, 'Berawal dari Spm yang bergerak kencang dari arah Kantor Gubernur menuju arah Ruko Oebobo karena pengendara mengantuk dan tidak menguasai kondisi jalan menikung sehingga bergerak keluar dari bibir aspal kanan hingga menabrak batu dan terpental menganai tiang listrik.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(79, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2134/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-13', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 200000, 0, 'Berawal dari Pengendara Spm yamaha mio yang bergerak dari  Pos Eltari  menuju ke arah Fatululi sesampainya di Tkp tepatnya di depan Ferari , Pengendara Spm yamaha mio  kaget karena ada pengendara lain yang hendak melambungnya sehingga hilang kendali dan terjatuh. Atas kejadian tersebut Korban di larikan ke RS. Kota Kupang.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(80, 1, 2, 3, 1, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/28/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 1, 'Rumah Sakit', 'Kendaraan Out of Control keluar ke kiri jalan', 60, 200000, 0, 'Berawal saat Spm melaju dari arah Bundaran Tirosa hendak kearah Gubernur sesampainya di TKP kehilangan kendali karena masuk ke jalan berlubsng sehingga terjadi kecelakan', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(81, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/38/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '1905-07-14', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 40, 10000000, 0, 'Berawal saat kedua kendaraan bergerak bersamaan dari arah Bundaran PU menuju ke arah Lampu Merah Fatululi sesampainya di TKP depan kantor Statistik Kota pengemudi Mobil Toyota Avanza dengan kecepatan yang tinggi secara tiba tiba menabrak pengendara Honda Scoopy  DH 4597 KK dari arah belakang sehingga sepeda motor Honda Scoopy terseret Mobil Toyota Avanza dan menabrak pohon. Akibat dari kejadian tersebut pengendara sepeda motor Honda Scoopy mengalami luka luka dan di larikan ke RS. Leona.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58'),
(82, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/228/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '1905-07-14', 0, 0, 2, 'Sekolah/ Kampus', 'Tabrakan depan - belakang', 20, 500000, 500000, 'Berawal saat Sepeda motor Honda Scoopy Nopol DH 4693 KH bergerak diatas Jln. Frans Seda dari arah Fatululi kearah Liliba, setibanya di TKP diduga karena dalam pengaruh miras menabrak bagian belakang sepeda motor Honda Revo DH 5615 KD yang bergerak di depannya sehingga kedua sepeda motor terjatuh. Kemudian pengendara Sepeda motor Honda Scoopy Nopol DH 4693 KH dan penumpang sepeda motor Honda Revo DH 5615 KD dibawa ke RS Kartini.', NULL, 43, '2024-06-15 13:08:58', '2024-06-15 13:08:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permukaan_jalan`
--

CREATE TABLE `permukaan_jalan` (
  `id_permukaan_jalan` int NOT NULL,
  `permukaan_jalan` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `permukaan_jalan`
--

INSERT INTO `permukaan_jalan` (`id_permukaan_jalan`, `permukaan_jalan`) VALUES
(1, 'Baik'),
(2, 'Berombak'),
(3, 'Berlubang'),
(4, 'Basah'),
(5, 'Licin'),
(6, 'Banjir/ Tergenang Air');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_kapolri`
--

CREATE TABLE `pesan_kapolri` (
  `id_pesan` int NOT NULL,
  `img_kapolri` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan_kapolri`
--

INSERT INTO `pesan_kapolri` (`id_pesan`, `img_kapolri`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '2689803091.jpeg', '<p>Kepada masyarakat mari kita dukung upaya-upaya untuk mewujudkan Polri yang lebih profesional dan amanah. Berbagai pengalaman berbangsa dan bernegara selama ini, tentunya akan menjadi pelajaran berharga bagi kita semua dalam upaya melanjutkan reformasi Polri. Kami membuka diri, menampung aspirasi dan pandangan dari semua elemen masyarakat, untuk mendudukkan Polri menjadi pelindung dan pengayom bagi segenap warga bangsa.<br />\r\n<br />\r\nKami tidak hanya akan selalu bekerja profesional, yakni mendasarkan kinerjanya kepada ilmu pengetahuan dan sistem hukum yang berlaku, tetapi juga amanah, akuntabel kepada pemangku kepentingan antara lain dengan menggunakan kewenangannya secara bijak dan santun pada masyarakat yang kami layani.<br />\r\n<br />\r\nPolri milik kita. Mari kita jadikan Polri seperti yang kita dambakan.<br />\r\n<br />\r\nJalan Trunojoyo no. 3, Kebayoran Baru Jakarta 12110<br />\r\nTerima Kasih,<br />\r\n<br />\r\n<br />\r\nKapolri<br />\r\n<strong>Drs. Listyo Sigit Prabowo, M.Si</strong><br />\r\nJendral Polisi</p>\r\n', '2024-01-16 12:11:25', '2024-01-16 12:44:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `polres`
--

CREATE TABLE `polres` (
  `id_polres` int NOT NULL,
  `nama_polres` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telepon` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlah_anggota` int DEFAULT NULL,
  `img_polres` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `polres`
--

INSERT INTO `polres` (`id_polres`, `nama_polres`, `alamat`, `telepon`, `email`, `jumlah_anggota`, `img_polres`) VALUES
(1, 'undefined', NULL, NULL, NULL, NULL, NULL),
(2, 'POLRES KUPANG KOTA', 'Jl. Frans Seda, Kayu Putih, Kec. Oebobo, Kota Kupang, Nusa Tenggara Tim. 85228', '110', '', 666, '2818359612.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id_sejarah` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Sebelum Kemerdekaan Indonesia</strong></p>\r\n\r\n<hr />\r\n<p><strong>Jaman Kerajaan</strong><br />\r\nPada zaman Kerajaan Majapahit patih Gajah Mada membentuk pasukan pengamanan yang disebut dengan Bhayangkara yang bertugas melindungi raja dan kerajaan.</p>\r\n\r\n<p><strong>Masa kolonial Belanda</strong><br />\r\nPada masa kolonial Belanda, pembentukan pasukan keamanan diawali oleh pembentukan pasukan-pasukan jaga yang diambil dari orang-orang pribumi untuk menjaga aset dan kekayaan orang-orang Eropa di Hindia Belanda pada waktu itu. Pada tahun 1867 sejumlah warga Eropa di Semarang, merekrut 78 orang pribumi untuk menjaga keamanan mereka.</p>\r\n\r\n<p>Wewenang operasional kepolisian ada pada residen yang dibantu asisten residen. Rechts politie dipertanggungjawabkan pada procureur generaal (jaksa agung). Pada masa Hindia Belanda terdapat bermacam-macam bentuk kepolisian, seperti veld politie (polisi lapangan) , stands politie (polisi kota), cultur politie (polisi pertanian), bestuurs politie (polisi pamong praja), dan lain-lain.</p>\r\n\r\n<p>Sejalan dengan administrasi negara waktu itu, pada kepolisian juga diterapkan pembedaan jabatan bagi bangsa Belanda dan pribumi. Pada dasarnya pribumi tidak diperkenankan menjabat hood agent (bintara), inspekteur van politie, dan commisaris van politie. Untuk pribumi selama menjadi agen polisi diciptakan jabatan seperti mantri polisi, asisten wedana, dan wedana polisi.</p>\r\n\r\n<p>Kepolisian modern Hindia Belanda yang dibentuk antara tahun 1897-1920 adalah merupakan cikal bakal dari terbentuknya Kepolisian Negara Republik Indonesia saat ini.</p>\r\n\r\n<p><strong>Masa pendudukan Jepang</strong><br />\r\nPada masa ini Jepang membagi wiliyah kepolisian Indonesia menjadi Kepolisian Jawa dan Madura yang berpusat di Jakarta, Kepolisian Sumatera yang berpusat di Bukittinggi, Kepolisian wilayah Indonesia Timur berpusat di Makassar dan Kepolisian Kalimantan yang berpusat di Banjarmasin.</p>\r\n\r\n<p>Tiap-tiap kantor polisi di daerah meskipun dikepalai oleh seorang pejabat kepolisian bangsa Indonesia, tapi selalu didampingi oleh pejabat Jepang yang disebut sidookaan yang dalam praktik lebih berkuasa dari kepala polisi.</p>\r\n\r\n<p><strong>Awal Kemerdekaan Indonesia</strong></p>\r\n\r\n<hr />\r\n<p><strong>Periode 1945-1950</strong><br />\r\nTidak lama setelah Jepang menyerah tanpa syarat kepada Sekutu, pemerintah militer Jepang membubarkan Peta dan Gyu-Gun, sedangkan polisi tetap bertugas, termasuk waktu Soekarno-Hatta memproklamasikan kemerdekaan Indonesia pada tanggal 17 Agustus 1945. Secara resmi kepolisian menjadi kepolisian Indonesia yang merdeka.</p>\r\n\r\n<p>Inspektur Kelas I (Letnan Satu) Polisi Mochammad Jassin, Komandan Polisi di Surabaya, pada tanggal 21 Agustus 1945 memproklamasikan Pasukan Polisi Republik Indonesia sebagai langkah awal yang dilakukan selain mengadakan pembersihan dan pelucutan senjata terhadap tentara Jepang yang kalah perang, juga membangkitkan semangat moral dan patriotik seluruh rakyat maupun satuan-satuan bersenjata yang sedang dilanda depresi dan kekalahan perang yang panjang. Sebelumnya pada tanggal 19 Agustus 1945 dibentuk Badan Kepolisian Negara (BKN) oleh Panitia Persiapan Kemerdekaan Indonesia (PPKI). Pada tanggal 29 September 1945 Presiden Soekarno melantik R.S. Soekanto Tjokrodiatmodjo menjadi Kepala Kepolisian Negara (KKN).</p>\r\n\r\n<p>Pada awalnya kepolisian berada dalam lingkungan Kementerian Dalam Negeri dengan nama Djawatan Kepolisian Negara yang hanya bertanggung jawab masalah administrasi, sedangkan masalah operasional bertanggung jawab kepada Jaksa Agung.</p>\r\n\r\n<p>Kemudian mulai tanggal 1 Juli 1946 dengan Penetapan Pemerintah tahun 1946 No. 11/S.D. Djawatan Kepolisian Negara yang bertanggung jawab langsung kepada Perdana Menteri. Tanggal 1 Juli inilah yang setiap tahun diperingati sebagai Hari Bhayangkara hingga saat ini.</p>\r\n\r\n<p>Sebagai bangsa dan negara yang berjuang mempertahankan kemerdekaan maka Polri di samping bertugas sebagai penegak hukum juga ikut bertempur di seluruh wilayah RI. Polri menyatakan dirinya &ldquo;combatant&rdquo; yang tidak tunduk pada Konvensi Jenewa. Polisi Istimewa diganti menjadi Mobile Brigade, sebagai kesatuan khusus untuk perjuangan bersenjata, seperti dikenal dalam pertempuran 10 November di Surabaya, di front Sumatera Utara, Sumatera Barat, penumpasan pemberontakan PKI di Madiun, dan lain-lain.</p>\r\n\r\n<p>Pada masa kabinet presidential, pada tanggal 4 Februari 1948 dikeluarkan Tap Pemerintah No. 1/1948 yang menetapkan bahwa Polri dipimpin langsung oleh presiden/wakil presiden dalam kedudukan sebagai perdana menteri/wakil perdana menteri.</p>\r\n\r\n<p>Pada masa revolusi fisik, Kapolri Jenderal Polisi R.S. Soekanto telah mulai menata organisasi kepolisian di seluruh wilayah RI. Pada Pemerintahan Darurat RI (PDRI) yang diketuai Mr. Sjafrudin Prawiranegara berkedudukan di Sumatera Tengah, Jawatan Kepolisian dipimpin KBP Umar Said (tanggal 22 Desember 1948).</p>\r\n\r\n<p>Hasil Konferensi Meja Bundar antara Indonesia dan Belanda dibentuk Republik Indonesia Serikat (RIS), maka R.S. Sukanto diangkat sebagai Kepala Jawatan Kepolisian Negara RIS dan R. Sumanto diangkat sebagai Kepala Kepolisian Negara RI berkedudukan di Yogyakarta.</p>\r\n\r\n<p>Dengan Keppres RIS No. 22 tahun 1950 dinyatakan bahwa Jawatan Kepolisian RIS dalam kebijaksanaan politik polisional berada di bawah perdana menteri dengan perantaraan jaksa agung, sedangkan dalam hal administrasi pembinaan, dipertanggungjawabkan pada menteri dalam negeri.</p>\r\n\r\n<p>Umur RIS hanya beberapa bulan. Sebelum dibentuk Negara Kesatuan RI pada tanggal 17 Agustus 1950, pada tanggal 7 Juni 1950 dengan Tap Presiden RIS No. 150, organisasi-organisasi kepolisian negara-negara bagian disatukan dalam Jawatan Kepolisian Indonesia. Dalam peleburan tersebut disadari adanya kepolisian negara yang dipimpin secara sentral, baik di bidang kebijaksanaan siasat kepolisian maupun administratif, organisatoris.</p>\r\n\r\n<p><strong>Periode 1950-1959</strong><br />\r\nDengan dibentuknya negara kesatuan pada 17 Agustus 1950 dan diberlakukannya UUDS 1950 yang menganut sistem parlementer, Kepala Kepolisian Negara tetap dijabat R.S. Soekanto yang bertanggung jawab kepada perdana menteri/presiden.</p>\r\n\r\n<p>Waktu kedudukan Polri kembali ke Jakarta, karena belum ada kantor digunakan bekas kantor Hoofd van de Dienst der Algemene Politie di Gedung Departemen Dalam Negeri. Kemudian R.S. Soekanto merencanakan kantor sendiri di Jalan Trunojoyo 3, Kebayoran Baru, Jakarta Selatan, dengan sebutan Markas Besar Djawatan Kepolisian Negara RI (DKN) yang menjadi Markas Besar Kepolisian sampai sekarang. Ketika itu menjadi gedung perkantoran termegah setelah Istana Negara.</p>\r\n\r\n<p>Sampai periode ini kepolisian berstatus tersendiri antara sipil dan militer yang memiliki organisasi dan peraturan gaji tersendiri. Anggota Polri terorganisir dalam Persatuan Pegawai Polisi Republik Indonesia (P3RI) tidak ikut dalam Korpri, sedangkan bagi istri polisi semenjak zaman revolusi sudah membentuk organisasi yang sampai sekarang dikenal dengan nama Bhayangkari tidak ikut dalam Dharma Wanita ataupun Dharma Pertiwi. Organisasi P3RI dan Bhayangkari ini memiliki ketua dan pengurus secara demokratis dan pernah ikut Pemilu 1955 yang memenangkan kursi di Konstituante dan Parlemen. Waktu itu semua gaji pegawai negeri berada di bawah gaji angkatan perang, namun P3RI memperjuangkan perbaikan gaji dan berhasil melahirkan Peraturan Gaji Polisi (PGPOL) di mana gaji Polri relatif lebih baik dibanding dengan gaji pegawai negeri lainnya (mengacu standar PBB).</p>\r\n\r\n<p><strong>Masa Orde Lama</strong><br />\r\nDengan Dekrit Presiden 5 Juli 1959, setelah kegagalan Konstituante, Indonesia kembali ke UUD 1945, namun dalam pelaksanaannya kemudian banyak menyimpang dari UUD 1945. Jabatan Perdana Menteri (Alm. Ir. Juanda) diganti dengan sebutan Menteri Pertama, Polri masih tetap di bawah pada Menteri Pertama sampai keluarnya Keppres No. 153/1959, tertanggal 10 Juli di mana Kepala Kepolisian Negara diberi kedudukan Menteri Negara ex-officio.</p>\r\n\r\n<p>Pada tanggal 13 Juli 1959 dengan Keppres No. 154/1959 Kapolri juga menjabat sebagai Menteri Muda Kepolisian dan Menteri Muda Veteran. Pada tanggal 26 Agustus 1959 dengan Surat Edaran Menteri Pertama No. 1/MP/RI1959, ditetapkan sebutan Kepala Kepolisian Negara diubah menjadi Menteri Muda Kepolisian yang memimpin Departemen Kepolisian (sebagai ganti dari Djawatan Kepolisian Negara).</p>\r\n\r\n<p>Waktu Presiden Soekarno menyatakan akan membentuk ABRI yang terdiri dari Angkatan Perang dan Angkatan Kepolisian, R.S. Soekanto menyampaikan keberatannya dengan alasan untuk menjaga profesionalisme kepolisian. Pada tanggal 15 Desember 1959 R.S. Soekanto mengundurkan diri setelah menjabat Kapolri/Menteri Muda Kepolisian, sehingga berakhirlah karier Bapak Kepolisian RI tersebut sejak 29 September 1945 hingga 15 Desember 1959.</p>\r\n\r\n<p>Dengan Tap MPRS No. II dan III tahun 1960 dinyatakan bahwa ABRI terdiri atas Angkatan Perang dan Polisi Negara. Berdasarkan Keppres No. 21/1960 sebutan Menteri Muda Kepolisian ditiadakan dan selanjutnya disebut Menteri Kepolisian Negara bersama Angkatan Perang lainnya dan dimasukkan dalam bidang keamanan nasional.</p>\r\n\r\n<p>Tanggal 19 Juni 1961, DPR-GR mengesahkan UU Pokok kepolisian No. 13/1961. Dalam UU ini dinyatakan bahwa kedudukan Polri sebagai salah satu unsur ABRI yang sama sederajat dengan TNI AD, AL, dan AU.</p>\r\n\r\n<p>Dengan Keppres No. 94/1962, Menteri Kapolri, Menteri/KASAD, Menteri/KASAL, Menteri/KSAU, Menteri/Jaksa Agung, Menteri Urusan Veteran dikoordinasikan oleh Wakil Menteri Pertama bidang pertahanan keamanan. Dengan Keppres No. 134/1962 menteri diganti menjadi Menteri/Kepala Staf Angkatan Kepolisian (Menkasak).</p>\r\n\r\n<p>Kemudian Sebutan Menkasak diganti lagi menjadi Menteri/Panglima Angkatan Kepolisian (Menpangak) dan langsung bertanggung jawab kepada presiden sebagai kepala pemerintahan negara. Dengan Keppres No. 290/1964 kedudukan, tugas, dan tanggung jawab Polri ditentukan sebagai berikut :</p>\r\n\r\n<ul>\r\n	<li>Alat Negara Penegak Hukum.</li>\r\n	<li>Koordinator Polsus.</li>\r\n	<li>Ikut serta dalam pertahanan.</li>\r\n	<li>Pembinaan Kamtibmas.</li>\r\n	<li>Kerkaryaan</li>\r\n	<li>Sebagai alat revolusi.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan Keppres No. 155/1965 tanggal 6 Juli 1965, pendidikan AKABRI disamakan bagi Angkatan Perang dan Polri selama satu tahun di Magelang. Sementara pada tahun 1964 dan 1965, pengaruh PKI bertambah besar karena politik NASAKOM Presiden Soekarno, dan PKI mulai menyusupi memengaruhi sebagian anggota ABRI dari keempat angkatan.</p>\r\n\r\n<p><strong>Masa Orde Baru</strong><br />\r\nKarena pengalaman yang pahit dari peristiwa G30S/PKI yang mencerminkan tidak adanya integrasi antar unsur-unsur ABRI, maka untuk meningkatkan integrasi ABRI, tahun 1967 dengan SK Presiden No. 132/1967 tanggal 24 Agustus 1967 ditetapkan Pokok-Pokok Organisasi dan Prosedur Bidang Pertahanan dan Keamanan yang menyatakan ABRI merupakan bagian dari organisasi Departemen Hankam meliputi AD, AL, AU , dan AK yang masing-masing dipimpin oleh Panglima Angkatan dan bertanggung jawab atas pelaksanaan tugas dan kewajibannya kepada Menhankam/Pangab. Jenderal Soeharto sebagai Menhankam/Pangab yang pertama.</p>\r\n\r\n<p>Setelah Soeharto dipilih sebagai presiden pada tahun 1968, jabatan Menhankam/Pangab berpindah kepada Jenderal M. Panggabean. Kemudian ternyata betapa ketatnya integrasi ini yang dampaknya sangat menyulitkan perkembangan Polri yang secara universal memang bukan angkatan perang.</p>\r\n\r\n<p>Pada tahun 1969 dengan Keppres No. 52/1969 sebutan Panglima Angkatan Kepolisian diganti kembali sesuai UU No. 13/1961 menjadi Kepala Kepolisian Negara RI, namun singkatannya tidak lagi KKN tetapi Kapolri. Pergantian sebutan ini diresmikan pada tanggal 1 Juli 1969.</p>\r\n', '2024-01-16 12:57:20', '2024-01-16 12:57:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_jalan`
--

CREATE TABLE `status_jalan` (
  `id_status_jalan` int NOT NULL,
  `status_jalan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `status_jalan`
--

INSERT INTO `status_jalan` (`id_status_jalan`, `status_jalan`) VALUES
(1, 'Jalan Kota / Kabupaten'),
(2, 'Jalan Propinsi'),
(3, 'Jalan Nasional');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkat_kecelakaan`
--

CREATE TABLE `tingkat_kecelakaan` (
  `id_tingkat_kecelakaan` int NOT NULL,
  `tingkat_kecelakaan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tingkat_kecelakaan`
--

INSERT INTO `tingkat_kecelakaan` (`id_tingkat_kecelakaan`, `tingkat_kecelakaan`) VALUES
(1, 'Ringan'),
(2, 'Sedang'),
(3, 'Berat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_jalan`
--

CREATE TABLE `tipe_jalan` (
  `id_tipe_jalan` int NOT NULL,
  `tipe_jalan` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tipe_jalan`
--

INSERT INTO `tipe_jalan` (`id_tipe_jalan`, `tipe_jalan`) VALUES
(1, '2/2 TB (2 Lajur/2 Arah Tanpa Batas Median)'),
(2, '4/2 B (4 Lajur/2 Arah dengan Batas Median)'),
(3, '6/2 B (6 Lajur/2 Arah dengan Batas Median)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `titik_rawan`
--

CREATE TABLE `titik_rawan` (
  `id_titik_rawan` int NOT NULL,
  `img_titik_rawan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_jalan_rawan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `titik_rawan`
--

INSERT INTO `titik_rawan` (`id_titik_rawan`, `img_titik_rawan`, `nama_jalan_rawan`, `created_at`, `updated_at`) VALUES
(38, '492376342.jpg', 'jln. Timor Raya', '2024-06-15 01:04:28', '2024-06-15 01:04:28'),
(39, '2341734534.jpg', 'Jl. El Tari', '2024-06-15 03:55:09', '2024-06-15 03:55:09'),
(40, '3985513379.jpg', 'Jl. A. Yani', '2024-06-15 03:57:45', '2024-06-15 03:57:45'),
(41, '2890543425.jpg', 'Jl. Piet A. Tallo ', '2024-06-15 03:58:24', '2024-06-15 03:58:24'),
(42, '1073017549.jpg', 'Jl. Jenderal Sudirman', '2024-06-15 03:58:58', '2024-06-15 03:58:58'),
(43, '1304392039.jpg', 'Jl. Frans Seda ', '2024-06-15 03:59:40', '2024-06-15 03:59:40'),
(44, '400456896.jpg', 'jln. Adi Sucipto', '2024-06-15 04:00:09', '2024-06-15 04:00:09'),
(45, '1989354456.jpg', 'jln. Pahlawan', '2024-06-15 04:00:37', '2024-06-15 04:00:37'),
(46, '3621105472.jpg', 'Jl. HR Koroh', '2024-06-15 04:01:09', '2024-06-15 04:01:09'),
(47, '2834474752.jpg', 'Jl. Cak Doko', '2024-06-15 04:01:39', '2024-06-15 04:01:39'),
(48, '3038337077.jpg', 'Jl. Yos Sudarso', '2024-06-15 04:02:17', '2024-06-15 04:02:17'),
(49, '1198364728.jpg', 'Jl. M Praja', '2024-06-15 04:02:50', '2024-06-15 04:02:50'),
(50, '349730502.jpg', 'Jl. W.J. Lalamentik ', '2024-06-15 04:03:39', '2024-06-15 04:03:39'),
(51, '3005763705.jpg', 'Jln. Jalur 40', '2024-06-15 04:04:10', '2024-06-15 04:04:10'),
(52, '2982704465.jpg', 'Jl. Jend. Soeharto', '2024-06-15 04:04:43', '2024-06-15 04:04:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `id_role` int DEFAULT '3',
  `id_active` int DEFAULT '2',
  `en_user` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` char(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT 'default.svg',
  `email` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'admin', 'default.svg', 'admin@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2023-12-06 23:09:44', '2023-12-06 23:09:44'),
(2, 3, 1, '2y106QjNKngq0LJPT4xiLdfyubDAoCoC7YgKJ3XzII2xkPM3FNlmvG', '135488', 'juned', 'default.svg', 'ardhyjuned7@gmail.com', '$2y$10$82Zfl.SoxAqwebfPUncnnOBr/ZtYqNwzh096atIcqid/H/ZO38J/6', '2024-01-16 13:16:58', '2024-01-16 13:17:27'),
(3, 2, 1, '2y10lvXReLoMpY9gDiepX8LZUB2W2vO4RJNlo2UPj6dFMG7o3Ooh6', '861787', 'iren', 'default.svg', 'irenpasu@gmail.com', '$2y$10$/jhAS/cwz/UFuqF5i7baDeAZ1BV6HCFLv7Nol8Aj/uEcjaoXMqdBa', '2024-01-18 18:40:03', '2024-01-18 18:40:49'),
(4, 2, 1, '2y10c6gNNhzNxYGvV3OatwNLuvqFTxiffzhXbUGu554kYR0c73xM9Fe', '272853', 'arlan', 'default.svg', 'arlan270899@gmail.com', '$2y$10$FB6N7COeVn/Sy2wmYHrW6unPc6j2C5/zgh60TU3nrXfDO3fovGySm', '2024-06-11 08:15:20', '2024-06-11 08:15:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 1, 4),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_sub_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_sub_menu`
--

INSERT INTO `user_access_sub_menu` (`id_access_sub_menu`, `id_role`, `id_sub_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(24, 1, 24),
(25, 1, 25),
(27, 1, 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` int NOT NULL,
  `menu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id_menu`, `menu`) VALUES
(1, 'User Management'),
(2, 'Menu Management'),
(3, 'Utilitas'),
(4, 'Satlantas'),
(5, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int NOT NULL,
  `role` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Administrator'),
(2, 'Owner'),
(3, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_status`
--

CREATE TABLE `user_status` (
  `id_status` int NOT NULL,
  `status` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_status`
--

INSERT INTO `user_status` (`id_status`, `status`) VALUES
(1, 'Active'),
(2, 'No Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_sub_menu` int NOT NULL,
  `id_menu` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id_sub_menu`, `id_menu`, `id_active`, `title`, `url`, `icon`) VALUES
(1, 1, 1, 'Users', 'users', 'fas fa-users'),
(2, 1, 1, 'Role', 'role', 'fas fa-user-cog'),
(3, 2, 1, 'Menu', 'menu', 'fas fa-fw fa-folder'),
(4, 2, 1, 'Sub Menu', 'sub-menu', 'fas fa-fw fa-folder-open'),
(5, 2, 1, 'Menu Access', 'menu-access', 'fas fa-user-lock'),
(6, 2, 1, 'Sub Menu Access', 'sub-menu-access', 'fas fa-user-lock'),
(7, 3, 1, 'Informasi Khusus', 'informasi-khusus', 'fas fa-list-ol'),
(8, 3, 1, 'Cuaca', 'cuaca', 'fas fa-list-ol'),
(9, 3, 1, 'Tingkat Kecelakaan', 'tingkat-kecelakaan', 'fas fa-list-ol'),
(10, 3, 1, 'Kecelakaan Menonjol', 'kecelakaan-menonjol', 'fas fa-list-ol'),
(11, 3, 1, 'Fungsi Jalan', 'fungsi-jalan', 'fas fa-list-ol'),
(12, 3, 1, 'Kelas Jalan', 'kelas-jalan', 'fas fa-list-ol'),
(13, 3, 1, 'Tipe Jalan', 'tipe-jalan', 'fas fa-list-ol'),
(14, 3, 1, 'Permukaan Jalan', 'permukaan-jalan', 'fas fa-list-ol'),
(15, 3, 1, 'Kemiringan Jalan', 'kemiringan-jalan', 'fas fa-list-ol'),
(16, 3, 1, 'Status Jalan', 'status-jalan', 'fas fa-list-ol'),
(17, 3, 1, 'Polres', 'polres', 'fas fa-list-ol'),
(19, 3, 1, 'Kondisi Cahaya', 'kondisi-cahaya', 'fas fa-list-ol'),
(20, 4, 1, 'Data Kecelakaan', 'data-kecelakaan', 'fas fa-map'),
(21, 4, 1, 'Titik Rawan', 'titik-rawan', 'fas fa-map'),
(22, 5, 1, 'Pesan Kapolri', 'pesan-kapolri', 'fas fa-list-ol'),
(24, 5, 1, 'Sejarah', 'sejarah', 'fas fa-list-ol'),
(25, 5, 1, 'Visi Misi', 'visi-misi', 'fas fa-list-ol'),
(27, 5, 1, 'Kontak', 'kontak', 'fas fa-list-ol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id_vm` int NOT NULL,
  `img_vm` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `visi_misi`
--

INSERT INTO `visi_misi` (`id_vm`, `img_vm`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '2689803091.jpeg', '<h2>Visi</h2>\r\n\r\n<p>Terwujudnya Indonesia yang Aman dan Tertib guna mendukung Visi dan Misi Presiden dan Wakil Presiden : &quot;Indonesia Maju yang Berdaulat, Mandiri, dan Berkepribadian Berlandaskan Gotong-Royong&quot;.</p>\r\n\r\n<hr />\r\n<h2>Misi</h2>\r\n\r\n<p>Melindungi, mengayomi dan melayani masyarakat dalam memberikan perlindungan bagi segenap bangsa dan memberikan rasa aman kepada seluruh warga serta mendorong kemajuan budaya yang mencerminkan kepribadian bangsa; serta menegakkan sistem hukum yang bebas korupsi, bermartabat dan terpercaya dan menjamin tercapainya lingkungan hidup berkelanjutan</p>\r\n\r\n<p>Adapun Janji Presiden (JP) di Polri ialah :</p>\r\n\r\n<ol>\r\n	<li>penegakkan hukum terhadap kejahatan Premanisme, Lingkungan Hidup, Narkoba, TPPU, Radikalisme, Terorisma dan Intoleransi serta PPA;</li>\r\n	<li>meningkatkan Sinergi dan Kerjasama antar Lembaga penegak hukum dan TNI;</li>\r\n	<li>mengembangkan profesionalisme dan kesejahteraan anggota Polri, reformasi birokrasi guna menekan budaya koruptif dan tindakan yang berlebihan atau kekerasan eksesif;</li>\r\n</ol>\r\n\r\n<h2>Tujuan</h2>\r\n\r\n<ol>\r\n	<li>menjamin terpeliharanya keamanan dan ketertiban masyarakat di seluruh wilayah NKRI;</li>\r\n	<li>menegakkan hukum secara berkeadilan;</li>\r\n	<li>mewujudkan Polri yang profesional;</li>\r\n	<li>modernisasi pelayanan Polri;</li>\r\n	<li>menerapkan manajemen Polri yang terintegrasi dan terpercaya.</li>\r\n</ol>\r\n', '2024-01-16 13:03:11', '2024-01-16 13:03:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  ADD PRIMARY KEY (`id_cuaca`);

--
-- Indeks untuk tabel `fungsi_jalan`
--
ALTER TABLE `fungsi_jalan`
  ADD PRIMARY KEY (`id_fungsi_jalan`);

--
-- Indeks untuk tabel `informasi_khusus`
--
ALTER TABLE `informasi_khusus`
  ADD PRIMARY KEY (`id_informasi_khusus`);

--
-- Indeks untuk tabel `kecelakaan_menonjol`
--
ALTER TABLE `kecelakaan_menonjol`
  ADD PRIMARY KEY (`id_kecelakaan_menonjol`);

--
-- Indeks untuk tabel `kelas_jalan`
--
ALTER TABLE `kelas_jalan`
  ADD PRIMARY KEY (`id_kelas_jalan`);

--
-- Indeks untuk tabel `kemiringan_jalan`
--
ALTER TABLE `kemiringan_jalan`
  ADD PRIMARY KEY (`id_kemiringan_jalan`);

--
-- Indeks untuk tabel `kondisi_cahaya`
--
ALTER TABLE `kondisi_cahaya`
  ADD PRIMARY KEY (`id_kondisi_cahaya`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `laka`
--
ALTER TABLE `laka`
  ADD PRIMARY KEY (`id_laka`),
  ADD KEY `id_informasi_khusus` (`id_informasi_khusus`),
  ADD KEY `id_kondisi_cahaya` (`id_kondisi_cahaya`),
  ADD KEY `id_cuaca` (`id_cuaca`),
  ADD KEY `id_tingkat_kecelakaan` (`id_tingkat_kecelakaan`),
  ADD KEY `id_kecelakaan_menonjol` (`id_kecelakaan_menonjol`),
  ADD KEY `id_fungsi_jalan` (`id_fungsi_jalan`),
  ADD KEY `id_kelas_jalan` (`id_kelas_jalan`),
  ADD KEY `id_tipe_jalan` (`id_tipe_jalan`),
  ADD KEY `id_permukaan_jalan` (`id_permukaan_jalan`),
  ADD KEY `id_kemiringan_jalan` (`id_kemiringan_jalan`),
  ADD KEY `id_status_jalan` (`id_status_jalan`),
  ADD KEY `id_polres` (`id_polres`),
  ADD KEY `id_titik_rawan` (`id_titik_rawan`);

--
-- Indeks untuk tabel `permukaan_jalan`
--
ALTER TABLE `permukaan_jalan`
  ADD PRIMARY KEY (`id_permukaan_jalan`);

--
-- Indeks untuk tabel `pesan_kapolri`
--
ALTER TABLE `pesan_kapolri`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `polres`
--
ALTER TABLE `polres`
  ADD PRIMARY KEY (`id_polres`);

--
-- Indeks untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

--
-- Indeks untuk tabel `status_jalan`
--
ALTER TABLE `status_jalan`
  ADD PRIMARY KEY (`id_status_jalan`);

--
-- Indeks untuk tabel `tingkat_kecelakaan`
--
ALTER TABLE `tingkat_kecelakaan`
  ADD PRIMARY KEY (`id_tingkat_kecelakaan`);

--
-- Indeks untuk tabel `tipe_jalan`
--
ALTER TABLE `tipe_jalan`
  ADD PRIMARY KEY (`id_tipe_jalan`);

--
-- Indeks untuk tabel `titik_rawan`
--
ALTER TABLE `titik_rawan`
  ADD PRIMARY KEY (`id_titik_rawan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD PRIMARY KEY (`id_access_sub_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_sub_menu` (`id_sub_menu`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id_vm`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  MODIFY `id_cuaca` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `fungsi_jalan`
--
ALTER TABLE `fungsi_jalan`
  MODIFY `id_fungsi_jalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `informasi_khusus`
--
ALTER TABLE `informasi_khusus`
  MODIFY `id_informasi_khusus` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kecelakaan_menonjol`
--
ALTER TABLE `kecelakaan_menonjol`
  MODIFY `id_kecelakaan_menonjol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas_jalan`
--
ALTER TABLE `kelas_jalan`
  MODIFY `id_kelas_jalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kemiringan_jalan`
--
ALTER TABLE `kemiringan_jalan`
  MODIFY `id_kemiringan_jalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kondisi_cahaya`
--
ALTER TABLE `kondisi_cahaya`
  MODIFY `id_kondisi_cahaya` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `laka`
--
ALTER TABLE `laka`
  MODIFY `id_laka` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `permukaan_jalan`
--
ALTER TABLE `permukaan_jalan`
  MODIFY `id_permukaan_jalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pesan_kapolri`
--
ALTER TABLE `pesan_kapolri`
  MODIFY `id_pesan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `polres`
--
ALTER TABLE `polres`
  MODIFY `id_polres` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `status_jalan`
--
ALTER TABLE `status_jalan`
  MODIFY `id_status_jalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tingkat_kecelakaan`
--
ALTER TABLE `tingkat_kecelakaan`
  MODIFY `id_tingkat_kecelakaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tipe_jalan`
--
ALTER TABLE `tipe_jalan`
  MODIFY `id_tipe_jalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `titik_rawan`
--
ALTER TABLE `titik_rawan`
  MODIFY `id_titik_rawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id_vm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `laka`
--
ALTER TABLE `laka`
  ADD CONSTRAINT `laka_ibfk_1` FOREIGN KEY (`id_informasi_khusus`) REFERENCES `informasi_khusus` (`id_informasi_khusus`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_10` FOREIGN KEY (`id_kemiringan_jalan`) REFERENCES `kemiringan_jalan` (`id_kemiringan_jalan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_11` FOREIGN KEY (`id_status_jalan`) REFERENCES `status_jalan` (`id_status_jalan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_12` FOREIGN KEY (`id_polres`) REFERENCES `polres` (`id_polres`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_13` FOREIGN KEY (`id_titik_rawan`) REFERENCES `titik_rawan` (`id_titik_rawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_2` FOREIGN KEY (`id_kondisi_cahaya`) REFERENCES `kondisi_cahaya` (`id_kondisi_cahaya`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_3` FOREIGN KEY (`id_cuaca`) REFERENCES `cuaca` (`id_cuaca`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_4` FOREIGN KEY (`id_tingkat_kecelakaan`) REFERENCES `tingkat_kecelakaan` (`id_tingkat_kecelakaan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_5` FOREIGN KEY (`id_kecelakaan_menonjol`) REFERENCES `kecelakaan_menonjol` (`id_kecelakaan_menonjol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_6` FOREIGN KEY (`id_fungsi_jalan`) REFERENCES `fungsi_jalan` (`id_fungsi_jalan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_7` FOREIGN KEY (`id_kelas_jalan`) REFERENCES `kelas_jalan` (`id_kelas_jalan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_8` FOREIGN KEY (`id_tipe_jalan`) REFERENCES `tipe_jalan` (`id_tipe_jalan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_9` FOREIGN KEY (`id_permukaan_jalan`) REFERENCES `permukaan_jalan` (`id_permukaan_jalan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD CONSTRAINT `user_access_sub_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_sub_menu_ibfk_2` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

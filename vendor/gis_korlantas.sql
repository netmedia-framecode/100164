-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 20 Jul 2024 pada 11.48
-- Versi server: 10.6.18-MariaDB-cll-lve
-- Versi PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zjxtorpv_100164`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `bg` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, '3536408020.jpg', '#000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca`
--

CREATE TABLE `cuaca` (
  `id_cuaca` int(11) NOT NULL,
  `kondisi` varchar(50) DEFAULT NULL
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
  `id_fungsi_jalan` int(11) NOT NULL,
  `fungsi_jalan` varchar(35) DEFAULT NULL
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
  `id_informasi_khusus` int(11) NOT NULL,
  `informasi_khusus` varchar(100) NOT NULL
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
  `id_kecelakaan_menonjol` int(11) NOT NULL,
  `kecelakaan_menonjol` varchar(10) DEFAULT NULL
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
  `id_kelas_jalan` int(11) NOT NULL,
  `kelas_jalan` varchar(100) DEFAULT NULL
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
  `id_kemiringan_jalan` int(11) NOT NULL,
  `kemiringan_jalan` varchar(50) DEFAULT NULL
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
  `id_kondisi_cahaya` int(11) NOT NULL,
  `kondisi_cahaya` varchar(50) DEFAULT NULL
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
  `id_kontak` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Arlan Butar Butar', 'arlanbutarbutar@net-code.tech', 'Belum dapat invoice/faktur', 'tes', '2024-01-16 13:35:45'),
(3, 'Arlan', 'arlan270899@gmail.com', 'Email bermasalah', 'rtesdvs', '2024-01-16 13:37:30'),
(4, 'bulpen', 'ardhyjuned7@gmail.com', 'kwkwkw', 'knxknckn', '2024-06-11 00:33:22'),
(5, 'Muhammad Ardy', 'ardhyjuned7@gmail.com', 'kwkwkw', 'JJJH\\r\\n', '2024-07-06 20:20:37'),
(6, 'JUNED', 'ardhyjuned7@gmail.com', 'kwkwkw', 'APAKAH KAMU CAPEK?', '2024-07-06 20:26:07'),
(7, 'JUNED', 'ardhyjuned7@gmail.com', 'kosong', 'HH', '2024-07-06 20:28:50'),
(8, 'JUNED', 'ardhyjuned7@gmail.com', 'GGG', 'GUUUU', '2024-07-09 14:40:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laka`
--

CREATE TABLE `laka` (
  `id_laka` int(11) NOT NULL,
  `id_informasi_khusus` int(11) DEFAULT NULL,
  `id_kondisi_cahaya` int(11) DEFAULT NULL,
  `id_cuaca` int(11) DEFAULT NULL,
  `id_tingkat_kecelakaan` int(11) DEFAULT NULL,
  `id_kecelakaan_menonjol` int(11) DEFAULT NULL,
  `id_fungsi_jalan` int(11) DEFAULT NULL,
  `id_kelas_jalan` int(11) DEFAULT NULL,
  `id_tipe_jalan` int(11) DEFAULT NULL,
  `id_permukaan_jalan` int(11) DEFAULT NULL,
  `id_kemiringan_jalan` int(11) DEFAULT NULL,
  `id_status_jalan` int(11) DEFAULT NULL,
  `id_polres` int(11) DEFAULT NULL,
  `no_laka` varchar(75) DEFAULT NULL,
  `tanggal_kejadian` date DEFAULT NULL,
  `jumlah_meninggal` int(11) DEFAULT NULL,
  `jumlah_luka_berat` int(11) DEFAULT NULL,
  `jumlah_luka_ringan` int(11) DEFAULT NULL,
  `titik_acuan` varchar(100) DEFAULT NULL,
  `tipe_kecelakaan` text DEFAULT NULL,
  `batas_kecepatan_dilokasi` int(11) DEFAULT NULL,
  `nilai_kerugian_non_kendaraan` int(11) DEFAULT NULL,
  `nilai_kerugian_kendaraan` int(11) DEFAULT NULL,
  `keterangan_kerugian` text DEFAULT NULL,
  `jam_kejadian` time DEFAULT NULL,
  `id_titik_rawan` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laka`
--

INSERT INTO `laka` (`id_laka`, `id_informasi_khusus`, `id_kondisi_cahaya`, `id_cuaca`, `id_tingkat_kecelakaan`, `id_kecelakaan_menonjol`, `id_fungsi_jalan`, `id_kelas_jalan`, `id_tipe_jalan`, `id_permukaan_jalan`, `id_kemiringan_jalan`, `id_status_jalan`, `id_polres`, `no_laka`, `tanggal_kejadian`, `jumlah_meninggal`, `jumlah_luka_berat`, `jumlah_luka_ringan`, `titik_acuan`, `tipe_kecelakaan`, `batas_kecepatan_dilokasi`, `nilai_kerugian_non_kendaraan`, `nilai_kerugian_kendaraan`, `keterangan_kerugian`, `jam_kejadian`, `id_titik_rawan`, `created_at`, `updated_at`) VALUES
(121, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2107/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-13', 0, 0, 1, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 200000, 0, 'Berawal dari spm smesh bergerak dari arah  Merdeka menuju ke arah Kupang, sesampainya di Tkp karena pengendara mengantuk sehingga hilang kendali dan terjatuh serta dirawat di RSB Kupang.', NULL, 57, '2024-07-06 21:37:29', '2024-07-06 21:37:29'),
(122, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/34/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-17', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip dari kanan', 50, 500000, 0, 'Berawal dari pengendara SPM Honda beat bergerak dari arah pasar Oeba menuju ke arah katedral dan sesampainya di TKP depan Merdeka tiba- tiba mobil angkot warna kuning menyerempet spm tersebut dari samping kanan sehingga pengendara spm kehilangan kendali dan jatuh terseret. sedangkan mobil angkot warna kuning tersebut melarikan diri, akibat kejadian kecelakaan tersebut pengendara mengalami luka-luka dan di rawat di RSUD Kupang.', NULL, 57, '2024-07-06 21:37:29', '2024-07-06 21:37:29'),
(123, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/72/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-11', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 2000000, 0, 'Berawal dari SPM Honda Scoopy bergerak dari arah Stadion Merdeka menuju kearah Mandiri setibanya di tkp depan Apotik Kristal muncul Mbl Innova dtng dr arah berlawanan bergerak belok kanan kearah Apotik Kristal dan karena jarak yg sangat dekat sehingga langsung terjadi tabrakn, dimana akibat dr kejadian tersebut peng. Spm mengalami luka dan sementara dirawat di RSB kupang serta kedua kendaraan mengalami kerusakan material.', NULL, 57, '2024-07-06 21:37:29', '2024-07-06 21:37:29'),
(124, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/201/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-02', 1, 0, 1, 'Simpang', 'Tabrak belakang kendaraan depan yang belok kiri', 20, 1000000, 0, 'Berawal dari Pengendara Spm Honda Sonic DH-5571-HY melaju dari arah Stadion Merdeka kearah Mandiri, sesampainya di TKP yakni di samping Hotel Marina, Pengendara Spm Honda Sonic DH-5571-HY hendak berbelok kiri tetapi salah memberikan isyarat lampu sign kanan sehingga ditabrak dari arah belakang oleh pengendara Spm Yamaha Mio DH-5942-KM, akibat dari kejadian tersebut Pengendara Spm Honda Sonic DH-5571-HY mengalami luka-luka dan pengendara Spm Yamaha Mio DH-5942-KM meninggal dunia saat mendapatkan perawatan di Fasilitas Kesehatan', NULL, 57, '2024-07-06 21:37:29', '2024-07-06 21:37:29'),
(125, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/196/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-12', 1, 0, 0, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 0, 0, 'Berawal dari pengendara SPM Honda Revo tanpa TNKB melaju dari arah UNIKA kearah Pasir Panjang, sesampainya di depan Dealer Yamaha Sekawan tiba-tiba kehilangan kendali karena penyakit Epilepsi yang di deritanya kambuh, sehingga terjatuh dan menabrak trotoar di kiri jalan.', NULL, 57, '2024-07-06 21:37:29', '2024-07-06 21:37:29'),
(126, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1896/I/2021/LL', '2021-01-05', 0, 0, 2, 'Simpang', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 500000, 0, 'Berawal dari kedua kendaraan bergerak berlawanan arah yakni Spm Supra Fit tanpa TNKB bergerak dari arah kupang hendak menuju kearah Lasiana, sedangkan Spm Honda Beat Street bergerak dari arah Lasiana hendak menuju kearah Kupang, sesampainya di TKP dekat pertigaan Jati Rosa Spm Supra Fit tanpa TNKB tiba tiba membelok kekanan tanpa menyalakan lampu sen hendak masuk ke jalan Jati Rosa, pada saat belok terjadi tabrakan dengan Spm Honda Beat Street, atas kejadian tersebut kedua pengendara mengalami luka luka dan kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(127, 1, 1, 3, 3, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1900/I/2021/LL', '2021-01-11', 1, 0, 0, 'Jembatan', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kanan', 0, 5000000, 0, 'Berawal saat Spm Yamaha Jupiter Z Nopol DH 5679 BL yang melaju dari arah RSS Oesapa hendak menuju Jalan Timor Raya melintasi Jalan Bunda Hati Kudus yang saat masuk kejalan Timor Raya tidak mengurangi kecepatan atau berhenti sebelum keluar namun melaju kencang memotong jalan Timor Raya hendak menuju arah Lasiana dan bersamaan datang Mobil Truk Tangki Nopol DH 9234 AJ dari arah Lasiana menuju Kupang langsung menabrak bagian kanan Spm yang memotong tiba-tiba tersebut.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(128, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1906/I/2021/LL', '2021-01-28', 0, 0, 3, 'Tempat Ibadah', 'Di ruas jalan, pejalan kaki berdiri ragu-ragu di tengah jalan', 20, 100000, 0, 'Berawal saat Spm Honda Spacy Nopol DH 5390 AZ bergerak dengan kecepatan tinggi dari arah Kupang menuju kearah Tarus, setibanya di TKP menabrak pejalan kaki yang sedang menyeberang jalan dari kiri ke kanan jalan sehingga mengakibatkan pengndara, penumpang dan pejalan kaki terjatuh dan luka-luka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(129, 3, 2, 4, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1909/II/2021/LL', '2021-02-02', 0, 0, 1, 'Simpang', 'Tabrakan saat menyalip', 0, 500000, 0, 'Berawal saat Spm Honda Beat Nopol DH 4655 HY bergerak diatas Jalan Timor Raya dari arah Kupang menuju kearah Tarus, setibaya di TKP diserempet oleh mobil yang tidak teridentifikasi yang bergerak datang dari arah berlawanan. Akibat kejadian tersebut pengendara Spm terjatuh sedangkan mobil yang tidak teridentifikasi tersebut langsung meninggalkan TKP.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(130, 1, 1, 6, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1912/II/2021/LL', '2021-02-04', 0, 0, 1, 'SPBU', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 100000, 0, 'Berawal dari pengendara spm honda revo fit bergerak  dari arah  kupang hendak menuju kearah lasiana,sesampinya di TKP dekat spbu km 10 mobil yg didepanya berhenti dan spm honda revo fit melambung dari kiri mobil tersebut,pada saat melambung dari kiri tiba tiba ada spm honda beat yg datang dari arah lasiana belok kanan menuju kearah spbu,dan pengendara spm revo fit sempat menghindar kekiri.karena jarak terlalu km dekat sehingga terjadi tabrakan mengenai ban belkang dari spm beat tersebut dan terjatuh.akibat dari kejadian tersebut pengendara spm revo fit mengalami luka luka dan dirawat dirumah sakit siloam.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(131, 3, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1919/II/2021/LL', '2021-02-12', 0, 0, 2, 'Simpang', 'Tabrakan kendaraan belok kiri dengan kendaraan yang datang dari arah yang berlawanan', 0, 500000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2921 BS sedang berhenti membeli ikan di pinggir kanan jalan (apabila dilihat dari arah Kupang kearah Tarus) dengan posisi Spm menghadap kearah tarus. Kemudian Spm Honda Beat Nopol DH 2921 BS tersebut hendak bergerak kearah Tarus, pada saaat memotong jalan hendak masuk ke Jalur kiri tiba-tiba bertabrakan dengan Spm yang tidak teridentifikasi yang datang dari arah berlawanan. Akibat kejadian tersebut kedua pengdara terjatuh bersama sepeda motornya.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(132, 2, 2, 3, 1, 2, 1, 1, 3, 1, 1, 3, 2, 'LP/1915/1925/III/2021/LL', '2021-03-04', 0, 0, 1, 'Simpang', 'Tabrakan dengan kendaraan parkir di kiri', 20, 1000000, 0, 'Berawal saat Spm Suzuki Shooter Nopol DH 6208 GJ bergerak diatas Jalan Timor raya dari arah Kupang menuju kearah Lasiana, setibanya di TKP menyerempet pinggir kanan belakang mobil Toyota Innova Nopol DH 1461 HK yang sedang parkir sehingga Spm tersebut oleng dan terjatuh Kemudian Spm tersebut dilindas ban kiri belakang mobil truk Tronton Nopol  W 9968 UL yang juga bergerak dari arah yang sama. Akibat kejadian tersebut pengedara Spm terluka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(133, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1938/III/2021/LL', '2021-03-19', 0, 1, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 0, 7000000, 0, 'Berawal dari pengendara spm bergerak dari arah tarus dgn tujuan ke arah oesapa sedangkan mobil mic bergerak dari arah berlawanan. Setibahnya di tkp pengendara spm  yg bergerak kencang melambung kendaraan yg berada di depannya sehingga menabrak Mbl Mic yang ada sementara berhenti untuk membelok ke arah kanan jalan. Akibat dari kejadian tersebut pengendara spm  mengalami luka2 dan sempat dilarikan ke RSU Kupang dan kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(134, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1944/IV/2021/LL', '2021-03-31', 0, 1, 0, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 250000, 0, 'Berawal saat Spm Suzuki A 100 tanpa TNKB bergerak diatas Jln. Timor Raya dari arah Lasiana menuju kearah Kupang dengan sepeda motornya tanpa lampu. Setibanya di TKP berbelok kanan memotong jalur sehingga langsung bertabrakan dengan mobil yang tidak teridentifikasi yang dating dari arah berlawanan. Akibat kejadian tersebut pengendara sepeda motor terjatuh dan terluka sedangkan mobil tersebut melarikan diri.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(135, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/1915/1952/IV/2021/LL', '2021-04-18', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Di ruas jalan, pejalan kaki menyeberang dari kanan ke kiri', 0, 1000000, 0, 'Berawal saat Spm Honda Kharisma Nopol DH 6783 HV bergerak diatas Jalan Timor Raya dari arah Lasiana menuju kearah Oesapa, setibanya di TKP Spm tersebut melambung kiri mobil yyang berhenti di depannya dan menabrak Pejalan kaki yang sedang menyeberang jalan dari kanan ke kiri jalan (apabila dilihat dari arah Lasiana).', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(136, 1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1970/V/2021/LL', '2021-05-06', 0, 0, 3, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 0, 1000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 4992 TD bergerak diatas Jalan Timor raya dari arah Oesapa menuju kearah Kupang, setibanya di TKP bertabrakan dengan Spm Honda Scoopy Nopol DH 3188 KJ yang sedang memutar balik arah (awalnya menghadap kearah Kupang memutar balik arah hendak kembali kearah Oesapa). Akibat kejadian tersebut kedua kendaraan terjatuh mengakibatkan kedua pengendara dan kedua peneumpangnya tejatuh dan mengalami luka-luka sedangkan kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(137, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1975/V/2021/LL', '2021-05-08', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 100000, 0, 'Berawal saat Spm Yamaha Fino Nopol DH 2949 KJ bergerak dari arah kupang menuju kearah Oesapa dan sesampai di tkp menghindari pasir yang ada di tengan jalan sehingga tergelincir dan terjatuh. Akibat dari kejadian tersebut pengendara mengalami luka-luka dan di rawat di RS Siloam.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(138, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1976/V/2021/LL', '2021-05-10', 0, 1, 1, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 0, 1000000, 0, 'Berawal saat Mobil Dump truk Toyota Dyna yang bergerak dari arah Kupang menuju arah Penfui yang sampai di TKP persimpangan Oesapa akan berbelok kekanan tiba-tiba melaju kencang Spm Honda Blade dari arah tarus menuju kupang melambung sebuah mobil Avanza didepannya dari sebelah kiri yang bergerak pelan memberikan kesempatan kepada mobil Dump truk yang hendak menuju arah Penfui. Pengendara Spm tidak perhatian dan terjadi tabrakan.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(139, 1, 1, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1996/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-03', 2, 0, 0, 'Toko/ Pertokoan / Pasar', 'Tabrakan dengan kendaraan parkir di kiri', 0, 2000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 4282 BZ yang bergerak dari arah Lasiana menuju arah Kupang diduga kurang perhatian atau penglihatan terganggu karena silau ataukah berpapasan dengan kendaraan besar lain dari arah berlawanan dimana di TKP terjadi penyempitan jalan karena terdapat 2 mobil tronton yang parkir di kiri dan kanan jalan hampir sejajar sehingga pengendara Spm kehilangan kendali dan menabrak bagian sudut belakang kanan Mobil Truk Tronton Nopol DH 8281 AK yg parkir menghadap arah Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(140, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2003/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-10', 1, 0, 0, 'SPBU', 'Tabrakan depan - depan', 20, 10000000, 0, 'berawal dr mbl pickup bergerak dr arah Kupang menuju kearah Oesapa diatas jalan Timor Raya, setibanya di tkp tiba tiba muncul dr arah berlawanan spm masuk kejalur kanan dan karena jarak yg dekat sehingga terjadi tabrakan. Atas kejadian tersebut pengendara spm di larikan ke RSUD Kota Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(141, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2018/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-23', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip', 60, 3000000, 0, 'Kronologis berawal dari Spm Honda Win  yang bergerak dari arah Oesapa menuju arah Kupang dan sampai TKP menghindari mobil didepannya yang berhenti mendadak sehingga bergerak kekanan jalan dan bertabrakan dengan Mobil mikrolet yang datang dari arah berlawanan.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(142, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2027/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-10', 0, 0, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 0, 2000000, 0, 'Berawal saat mobil bergerak dari arah Oesapa menuju kearah Kupang, setibanya di tkp korban pejalan kaki berjalan menyebrang jalan dari kiri ke kanan jalan ( dari Aston menuju ke lokasi proyek) karena jarak yg dekat dan pengemudi mobil tidak konsentrasi ke arah depan sehingga  langsung menabrak pejalan kaki tersebut sampai terjatuh, dimana akibat dari kejadian tersebut pejalan kaki mengalami luka dan sementara dirawat di RSUD Kota Kupang serta kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(143, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2028/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-10', 1, 0, 0, 'Tempat Ibadah', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 5000000, 0, 'Berawal dari pengendara Spm Suzuki Satria Fu bergerak dari arah SD kelapa Lima dengan tujuan ke arah jalan Timor raya, dengan kecepatan kencang setibahnya di TKP pengendara Spm hilang kendali saat melewati jalan menurun sehingga menabrak  tiang listrik yg berada di kiri jalan. Akibat dari kejadian tersebut pengendara Spm di larikan ke RS. S. K. Lerik Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(144, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2035/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-19', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 500000, 0, 'Berawal dari Spm Yamaha Mio 125 yang melaju dari arah Oesapa menuju arah Kupang dengan Mobil Pick up hitam juga dari arah yg sama namun dibagian belakang spm dan melaju kencang. Diduga kurang perhatian dan tidak menjaga jarak saat berusaha melambung sehingga menyenggol Spm Yamaha Mio hingga terjatuh kemudian namun kemudian mobil tidak berhenti.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(145, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2046/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-04', 0, 0, 5, 'Jembatan', 'Tabrakan saat menyalip', 50, 3000000, 0, 'Berawal saat kedua Spm bergerak dari arah yanng berlawanan diatas jalan Timor Raya, setibanya di Tkp Spm Honda Beat Nopol DH 2240 CN yang datang dari arah Oesapa bergerak zig-zag masuk kejalur kanan dan karena jarak yang sangat dekat sehingga bertabrakan dengan Spm Honda Scoopy Nopol DH 6617 KH yang datang dari arah berlawanan yang mengakibatkan kedua Spm terlibat lansng jatuh terseret, dimana akibat dari kejadian tersebut kedua pengendara dan penumpang Spm mengalami luka-luka dan sementara dirawat di RSUD S.K.Lerik Kota Kupang serta kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(146, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2048/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-05', 0, 0, 2, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 300000, 0, 'Berawal dari pengendara SPM bergerak dari arah Oesapa timur dgn tujuan ke arah kelapa Lima dengan kecepatan kencang. Setibahnya di TKP pengendara SPM menabrak PJK Yang ada sementara menyebrang jalan dari arah kiri jalan ke arah kanan jalan. Akibat dari kejadian tersebut PJK mengalami luka2.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(147, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2055/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-15', 0, 1, 0, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 100000, 0, 'Berawal saat Spm Yamaha Fino Nopol DH 2770 KE bergerak diatas Jalan Timor Raya dari arah Kupang menuju kearah Oesapa. Setibanya di TKP menabrak material pasir yang tercecer  diatas bada n jalan sehingga hilang kendali lalu terjatuh dan mengalami luka-luka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(148, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2057/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-17', 1, 0, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 0, 10000000, 0, 'Berawal dari pengemudi mbl dump truk bergerak dari arah Kelapa lima dengan tujuan ke arah tarus sedangkan pengendara SPM bergerak dari arah tarus dengan tujuan ke arah kelapa Lima. Setibahnya di TKP pengendara SPM yang melaju kencang  melambung kendaraan yg berada di depannya sehingga terjadi tabrakan dengan mobil dump truk. Akibat dari kejadian tersebut pengendara spm di larikan ke RS. Kota dan kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(149, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2058/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-22', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan kendaraan belok kiri dengan kendaraan yang jalan lurus', 20, 1000000, 0, 'Berawal dari pengemudi mbl bergerak dari arah Oesapa dgn tujuan kearah kelapa Lima namun pada saat sampai di TKP pengemudi mbl hendak memutar arah kembali ke arah Oesapa, namun saat memutar mengalami tabrakan dengan SPM yg datang dari arah yang sama, akibat dari kejadian  tersebut pengendara SPM di larikan ke RSU Kupang. kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(150, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2060/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-25', 0, 1, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 0, 2500000, 0, 'Berawal spm yamaha byson yg bergerak dari arah oesapa menuju ke arah tarus, sesampainya di Tkp hilang kendali dan masuk ke jalur kanan dan bertabrakan dgn Spm Honda Fit X yang datang dari arah sebaliknya. Akibat dari kejadian tersebut kedua pengendara memgalami luka luka da  dibawa ke RS Siloam Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(151, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2066/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-27', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 200000, 0, 'Berawal saat Spm honda scoopy Nopol DH 2163 KH bergerak diatas Jalan Timor Raya dari arah Kupang menuju kearah Oesapa. Setibanya di TKP depan Aston, tiba-tiba helem pengendara di tiup angin sehingga pengendara kehilangan kendali dan terjatuh. Akibatnya pengendara mengalami luka-luka dan di rawat di RS K Lerik serta kerugian material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(152, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2077/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-08', 0, 1, 0, 'Simpang', 'Tabrakan saat menyalip dari kiri', 0, 500000, 0, 'Berawal saat mobil Truk Mitsubishi yang bergerak dari arah Tarus menuju arah Kupang kemudian sampai di TKP berhenti di tengah jalan dan mulai bergerak kekanan jalan hendak masuk menuju arah pantai wisata Lasiana dan saat bergerak terlihat dari arah berlawanan banyak sepeda motor sudah perlahan memberikan prioritas jalan namun pengendara Spm Jupiter MX berusaha melambung dari bagian kiri sepeda motor lain dan langsung bertabrakan dengan mobil yang sudah sementara berbelok.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(153, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2078/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-11', 0, 1, 1, 'Monumen/ Tugu/ Patok', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 20, 1000000, 0, 'Berawal saat Pengendara Spn Revo DH 5980 BK yang bergerak dari Arah kupang menuju arah Tarus sedangkan Pengendara Spm  Honda Revo DH 4918 HN bergerak dari arah Tarus menuju Kupang sesampainya di tkp Pengendara Spm Honda Revo DH 4918  BK yang baru habis membeli buah semangka di bagian Kanan jalan ingin memotong jalur sehingga tidak melihat Pengendara Spm Honda Revo DH 5980 BK yang datang dari arah berlawanan sehingga terjadi tabrakan. Atas kejadian tersebut Kedua Pengendara dilarikan ke RS.SILOAM.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(154, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2081/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-14', 0, 0, 2, 'SPBU', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 0, 500000, 0, 'Berawal saat Pengendara Spm Yamaha Xeon yang bergerak dari Arah Kupang menuju Tarus sedangkan Pengendara Spm Honda Revo bergerak dari arah Tarus menuju Kupang sesampainya di tkp  Pengendara Spm Yamaha Xeon yang ingin menuju ke bengkel yang berada di sebelah kanan jalan. Kemudian ada sebuah mobil truck yang datang dari arah berlawanan  tetapi sudah memberikan isyarat agar langsung memotong arah tiba tiba muncul Pengendara Spm Honda Revo  yang ingin melambung mobil truck tersebut sehingga langsung menabrak Pengendara Spm Yamaha Xeon . Atas kejadian itu Kedua Penumpang kendaraan dilarikan ke RS.S.K LERIK.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(155, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2112/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-23', 1, 0, 0, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 300000, 0, 'Berawal saat pengendara Spm Honda Beat bergerak dgn kecepatan tinggi dari arah Oesapa Timur menuju ke arah oesapa barat, sesampainya di Tkp diduga karena jalan berlubang sehingga saat melintas pengendara spm honda beat hilang kendali dan terjatuh. Akibat dari kejadian tersebut pengendara spm Hobda beat mengalami luka dan meninggal dunia di Tkp serta langsung di bawah ke RSUD prof. Dr. W.Z Johanes Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(156, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2113/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-25', 0, 0, 3, 'Jembatan', 'Tabrakan saat menyalip', 20, 500000, 0, 'Berawal saat pengendara Spm Honda Beat bergerak dari arah Kelapa Lima menuju Oesapa dan SPM Honda Scoopy bergerak dari arah Oesapa menuju Kelapa Lima, sesampainya di TKP tepat di tengah jembatan Oesapa pengendara Honda beat mengambil jalur ke kanan sehingga terjadi kecelakaan.akibat dari kejadian tersebut pengendara SPM Honda Scoopy mengalami luka pada jari tangan kanan, lutut kaki kanan dan jari kaki kanan dan langsung di larikan ke RS SK Lerik Kota Kupang', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(157, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2114/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-27', 0, 0, 1, 'Tempat Ibadah', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 20000000, 0, 'Berawal dari mobil Pick Up yang bergerak dari arah Tarus menuju Pasar Oeba sesampainya di Tkp tepatnya di depan Gereja Galed Pengemudi Mobil pick  up yang dalam keadaan mengatuk hilang kendali sehingga menabrak pagar gereja dan terbalik. Atas kejadian tersebut Korban di larikan ke R.S. SK. LERIK.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(158, 1, 2, 3, 1, 2, 1, 1, 1, 6, 1, 2, 2, 'LP/B/2118/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-30', 0, 0, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip', 0, 200000, 0, 'Berawal saat Spm Honda CB125R melaju dari arah Oesapa menuju Kupang, setibanya di TKP karena setengah badan jalan bagian kiri tergenang air sehingga pengendara SPM Honda CB125R sedikit menghindar kebagian tengah jalan namun di saat bersamaan datang Spm Honda Revo dari arah berlawanan yang disangkanya Spm Honda CB125R hendak belok masuk Hotel Ima sehingga pengendara Spm Honda Revo berusaha menghindar kebagian kanan jalan dan terjadilah tabrakan yang mana pekenaannya bagian kiri dan kiri kedua Spm.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(159, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/B/2130/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-13', 0, 0, 4, 'Tempat Ibadah', 'Tabrakan saat pindah lajur ke kiri', 20, 500000, 0, 'Berawal dari spm beat dan SPM Honda CBR bergerak bersama dari arah pasar Oeba menuju ke arah Oesapa. Sesampainya di TKP SPM Honda CBR kaget melihat kendaraan di depan saat akan melambung SPM Honda beat, dan pengendara SPM Honda CBR menghindar ke kiri sehingga menabrak SPM Honda beat yg ada d sampingnya..akibat dari kejadian tersebut pengendara dan penumpang SPM Honda CBR di larikan ke RS SK Lerik kota kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(160, 1, 2, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2139/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-27', 1, 0, 0, 'Monumen/ Tugu/ Patok', 'Tabrakan depan - depan', 60, 2000000, 0, 'Berawal dr pengendara SPM bergerak dari arah Kupang dgn tujuan kearah Tarus sedangkan pengemudi Mbl Truck Tangki diduga datang dari arah berlawanan. Setibahnya di TKP pengendara SPM hilang kendali sehingga terjadi tabrakan. Setelah kejadian tabrakan Mbl terus melaju. Akibat dari kejadian tersebut pengendara SPM meninggal dunia di TKP dan dibawa ke RSU Kpg. Kendaraan SPM mengalami kerusakan material. (Info sementara di TKP).', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(161, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2144/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-02', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 60, 100000, 0, 'Berawal dr Spm CRF bergerak dari arah Oeba menuji kearah Lasiana diatas jalan Timor Raya, setibanya di tkp dpn mutiara karena pengendara mengantuk sehingg spm hilang kendali dan lgs terjatuh di pinggir jalan sebelah kiri, Atas kejadian  tersebut Korban di larikan ke RSU Kota  Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(162, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2147/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-11', 0, 0, 2, 'Rumah / Perumahan / Pemukiman', 'Kendaraan Out of Control keluar ke kiri jalan', 60, 100000, 0, 'Berawal dari pengendara maupun penumpang  Spm honda Scopy tersebut bergerak dari Kupang hendak ke arah Oesapa, saat tiba di Tkp, pengendara hendak melambung kendaraan  Mobil yang bergerak di depannya, namun saat melambung ban depan dari spm masuk ke lubang jalan sehingga pengendara hilang kendali dan terjatuh di kanan jalan, akibatnya pengendara dan penumpang mengalami luka-luka dan di rawat di RSU Kota Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(163, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2153/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-18', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 2000000, 0, 'Kronologis berawal dari pengendara SPM Honda Supra fit bergerak dari arah tarus dgn tujuan kea arah kelapa Lima sedangkan pengendara SPM Honda Scoopy bergerak dari arah berlawanan, setibanya di TKP, pengendara spm Honda Scoopy melambung mobil sehingga masuk ke jalurnya pengendara SPM Honda Supra fit dan terjadi tabrakan. Akibat dari kejadian tersebut ke dua pengendara di bw ke RS. Leona .Kupang dan kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(164, 1, 2, 3, 1, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/07/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-01-03', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 60, 1000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2359 BT bergerak diataas Jalan Timor Raya dari arah Oesapa menuju kearah Kupang, setibanya di TKP mengambil jalur kanan untuk menghindari lubang kemudian hendak kembali lahi kejalur kiri tetapi langsung bertabrakan dengan Sepeda motor Honda CB150R Nopol DH 2291 BN yang datang dari arah berlawanan sehingga mengakibatkan kedua pengendara terjatuh dan mengalami luka-luka serta kedua kendaraan mengalami kerusakan material.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(165, 2, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/13/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-01-13', 0, 5, 9, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip dari kanan', 0, 50000000, 5000000, 'Berawal saat Mobil Mikrolet Anjelita bergerak diatas Jalan Timor raya dengan kecepatan tinggi, setibanya di TKP hendak melambung kanan mobil Mikrolet Syalom yang bergerak searah di depannya tetapi tidak diberi jalan oleh mobil mikrolet Syalom sehingga kemudian kedua mobil mikrolet tersebut bersenggolan mengakibatkan Mobil Mikrolet Anjelita Nopol DH 1354 BB bergerak ke jalur kanan lalu menyenggol mobil pick up Suzuki Carry Nopol DH 8620 AF yang sedang terparkir di pinggir kanan jalan lalu mobil mikrolet Anjelita tersebut terus maju menabrak mobil Toyota Innova Nopol DH 1744 HG yang juga sedang terparkir di pinggir kanan jalan kemudian menabrak pagar rumah warga lalu menabrak pohon yang berada di pinggir kanan jalan. Sedangkan mobil Mikrolet Syalom setelah bersenggolan dengan Mobil Mikrolet Anjelita mobil Mikrolet Syalom tersebut terus bergerak maju masuk ke jalur kanan lalu bertabrakan dengan sepeda motor Yamaha Fino Nopol DH 4052 KS yang datang dari arah berlawanan lalu menabrak dan menyeret mobil Toyota Innova sehingga mobil Toyota Innova terseret mundur lalu bagian belakang mobil Toyota Innova menabrak mobil pick up Mitsubishi L300 Nopol 8409 MA. Akibat kejadian tersebut para pengendara dan penumpang kendaraan terlibat mengalami luka-luka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(166, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/24/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-01', 0, 0, 1, 'Simpang', 'Tabrakan saat menyalip dari kiri', 60, 500000, 0, 'Berawal saat Pengendara  Sepeda Motor Honda Scoopy bergerak dari arah kelapa Lima dgn tujuan kea arah pasir panjang sedangkan MBL tengki tronton ada sementara berhenti di trafik light dengan posisi berada di urutan 3 (tiga) mobil. Pada saat lampu traffic light hijau mobil Hendak bergerak untuk jalan. Namun pada saat dari arah belakang kiri pengendara SPM yg hendak melambung di antara tengki tronton dan mobil pick up hilang kendali sehingga terjatuh di bagian ban belakang kiri mobil tengki tronton. Akibat dari kejadian tersebut penumpang SPM di larikan ke RS. S. K lerik Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(167, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/30/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-11', 0, 0, 2, 'Monumen/ Tugu/ Patok', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 60, 50000, 0, 'Berawal saat Pengendara Sepeda motor Yamaha Fino bergerak dari arah Oesapa hendak ke arah Kupang, saat tiba di tkp KM 8, tiba2 pejalan kaki tersebut menyebrang dari arah kiri ke arah kanan jalan, karena jarak sudah dekat sehingga pengendara tidak dapat lagi menghindar akibatnya tabrkan tak terhindarkan lagi.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(168, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/35/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-16', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - belakang', 60, 300000, 0, 'Berawal saat Pengendara  Spm Yamaha Jupiter Z  Bergerak dari arah Oesapa menuju ke arah Kupang beriringan dengan Mobil Kijang Grand Setibanya di Tkp tepatnya di depan Hotel Kristal Pengendara Spm Yamaha Jupiter Z  yang dalam keadaan mengantuk menabrak dari arah belakang Mobil Kijang Grand sehingga Pengendara dan Penumpang Spm di larikan ke RS.SILOAM KUPANG.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(169, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/48/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-03-01', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - depan', 60, 1000000, 0, 'Berawal saat Pengendara Spm Yamaha Vino yang bergerak dari arah Pasir Panjang menuju ke arah Oesapa sedangkan Pengendara Spm Honda Beat Bergerak dari arah Oesapa Menuju ke arah Pasir Panjang setibanya di Tkp tepatnya di dekat Hotel Ima Tiba tiba Pengendara Spm Honda Beat langsung mengambil lajur dari Pengendara Spm Yamaha Vino sehingga terjadilah tabrakan. Atas Kejadian tersebut kedua Pengendara di larikan ke RS.S.K.LERIK KUPANG.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(170, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/58/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-20', 1, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan kendaraan belok kanan dengan kendaraan dari arah kanan', 60, 2000000, 0, 'Berawal saat  Pengendara Spm Yamaha Vino yang bergerak dari arah Oesapa menuju ke arah Oeba sedangkan Pengendara Spm Yamaha Jupiter MX bergerak dari arah samping Diler Suzuki Cay Cong dan ingin berbelok ke arah kanan menuju arah Oesapa  setibanya di Tkp Pengendara Spm Yamaha Yupiter MX yang ingin berbelok ke arah kanan tidak melihat kalau ada Pengendara Spm Yamaha Vino yang datang dari arah Oesapa sehingga terjadilah tabrakan. Atas kejadian tersebut Pengendara Spm Yamaha Vino dan Penumpang Spm Yamaha Jupiter MX dilarikan Ke RS. S.K.LERIK Kupang Sedangkan Pengendara Spm Yamaha Jupiter  MX dilarikan ke RS.SILOAM Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(171, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/68/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-08', 0, 0, 3, 'Tempat Ibadah', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 60, 300000, 0, 'Berawal saat Pengendara Sepeda Motor Yamaha Soul yang bergerak dari Arah Kupang menuju Lasiana sesampainya di Tkp tiba- tiba muncul Pengedara Sepeda Motor Yamaha Jupiter MX dari samping SPBU Lasiana dan ingin berbelok arah ke samping Gereja Santo Petrus Lasiana dan memotong jalur dari Pengendara Sepeda Motor Yamaha Soul sehingga terjadilah tabrakan. Atas Kejadian tersebut kedua Pengendara dan Penumpang di larikan Ke RS. S.K.LERIK Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(172, 1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/70/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-10', 0, 0, 4, 'Jembatan', 'Tabrakan depan - depan', 20, 300000, 0, 'Berawal saat Pengendara Spm Honda Supra yg bergerak dari arah oesapa barat menuju arah oesapa timur, sesampainya di tkp tepatnya ditikungan setelah jembatan pohon duri, sepeda motor honda supra berserempetan ditengah as jalan dgn Spm Honda Beat yg datang dari arah oesapa timur. Akibatnya kedua pengendara dan penumpang terjatuh dan mengalami luka luka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(173, 1, 2, 3, 1, 2, 1, 1, 1, 2, 1, 2, 2, 'LP/A/90/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-11', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 100000, 0, 'Berawal saat Pengendara Spm Honda Scoopy EB 3180 BL bergerak dari arah Oesapa menuju kupang dan SPM yang tidak teridentifikasi bergerak dr arah Kupang menuju ke Oesapa sesampainya di TKP depan pengisian air Tangki pengendara SPM yang tidak teridentifikasi mengambil jalur kekanan  dan menabrak pengendara SPM Honda Scoopy EB 3180 BL. Akibat dari kejadian tersebut pengendara SPM Honda Scoopy terjatuh dan pengendara SPM yang tidak teridentifikasi melarikan diri. Kemudian pengendara SPM Honda Scoopy EB 3180 BL di mengalami luka luka dan d larikan ke RS Siloam.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(174, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/91/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-11', 0, 0, 2, 'Simpang', 'Tabrakan depan - belakang', 20, 1000000, 0, 'Berawal saat Pengendara Spm Honda Beat dan Spm tidak teridentifikasi sama-sama bergerak dari arah yang sama yakni dari arah Kupang menuju kearah Lasiana, setibanya di Tkp pengendara Spm beat yang berada dibelakang menunduk untuk melihat sandalnya yang terjatuh sehingga Spm Beat hilang kendali langsung menabrak bagian belakang dari spm tidak teridentifikasi yang mengakibatkan Spm Beat langsung terjatuh dipinggir jalan sebelah kanan sedangkan spm tidak teridentifikasi langsung melarikan diri, dimana akibat dari kejadian tersebut pengendara dan penumpang spm beat mengalami luka dan sementara dirawat di RSUD S.K.LERIK.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(175, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/103/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-22', 1, 0, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - belakang', 20, 500000, 0, 'Berawal kedua  SPM  Honda Revo DH 6171 BU dan Honda beat yang tidak teridentifikasi bergerak bersama dari arak Oesapa menuju Kupang sesampainya di TKP depan hotel Aston pengendara SPM Honda Revo DH 6171 BU hendak mendahului spm Honda beat dan menabrak dari arah belakang dan terjadi kecelakaan lalulintas akibat dari kejadian tersebut pengendara SPM Honda Revo 6171 BU tidak sadarkan diri dan dilarikan ke rs. Kota Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(176, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/107/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-26', 0, 0, 1, 'Simpang', 'Penumpang jatuh dari kendaraan (input 1 penumpang)', 20, 0, 0, 'Berawal saat Pengemudi mobil GrandMax yang bergerak dari arah Oesapa menuju ke arah Bolok sesampainya di TKP tepatnya di depan cabang pasar Oeba Pengemudi Mobil Grandmax yang sedang berhenti karena terjadi kemacetan mengangkat kopling secara tiba-tiba sehingga Penumpang yang berada di bagian belakang terjatuh ke aspal.Akibat dari kejadian tersebut Penumpang dilarikan ke RS.BHAYANGKARA Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(177, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/109/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-31', 0, 0, 1, 'Jembatan', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat Pengendara Sepeda Motor Honda Beat bergerak dari arah Kupang menuju Oesapa setibanya di Tkp tepatnya di Jembatan Timbangan Oesapa, Pengendara Sepeda Motor Honda Beat yang melaju dengan kecepatan tinggi tiba-tiba hilang kendali dan menabrak pagar sehingga Pengendara Sepeda Motor Honda Beat terjatuh. Akibat dari kejadian tersebut Pengendara Sepeda Motor Honda Beat dilarikan ke RS.S.K. Lerik Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(178, 1, 2, 4, 1, 2, 1, 1, 1, 4, 1, 2, 2, 'LP/A/114/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-03', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan dengan Kendaraan menyebrang dari sisi kiri jalan', 20, 500000, 0, 'Berawal saat sepeda motor Honda Beat Nopol DK 6027 FAS bergerak diatas Jalan Timor Raya dari arah Kupang menuju kearah Kelapa Lima (dari arah Barat kearah Timur), setibanya di TKP bertabrakan dengan sepeda  motor Yamaha Mio Nopol DH 6605 AZ yang bergerak memotong jalan dari pinggir kiri jalan menuju kearah kanan jalan sehingga mengakibatkan kedua pengendara terjatuh dan terluka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(179, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/125/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-22', 0, 0, 3, 'Toko/ Pertokoan / Pasar', 'Di ruas jalan, pejalan kaki menyeberang dari kanan ke kiri', 20, 0, 0, 'BERAWAL DARI SPM DARI ARAH OESAPA KEARAH LASIANA SESAMPAINYA DI TKP MENABRAK PJK YANG SEDANG MENYEBERAN JALAN DARI KANAN KE KIRI', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(180, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/A/129/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-25', 0, 1, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 100000, 0, 'Berawal saat pengendara spm Honda CRF bergerak dari arah Oesapa  hendak ke arah Tarus, sedangkan pengendara spm Yamaha Vixion bergerak dari arah sebaliknya yakni dari arah Tarus Ke arah Oesapa, saat tiba di Tkp, pengendara spm Honda CRF hendak melambung kendaraan lain yang bergerak di depannya sehingga masuk ke jalur kanan dan menyerempet setir dari  spm yamaha Vixion akibatnya pengendara spm honda CRF terjatuh di kanan jalan dan mengalami patah kaki kiri sehingga di rawat di RSB Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(181, 1, 2, 5, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/132/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-30', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat gerakan putar balik', 20, 1000000, 0, 'Berawal saat sepeda motor Yamaha Shogun Nopol DH 2770 HZ bergerak diatas Jalan Timor Raya dari arah Oesapa menuju kearah Kelapa Lima, setibanya di TKP bertabrakan dengan mobil Toyota Avanza nopol DH 1220 ED yang memutar balik arah (awalnya di kiri jalan menghadap kearah Kelapa Lima lalu berbelok kanan memutar balik arah).', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(182, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/134/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-01', 0, 0, 1, 'Tempat Ibadah', 'Tabrakan kendaraan belok kiri dengan kendaraan yang datang dari arah yang berlawanan', 20, 2000000, 0, 'Berawal saat Mobil Daihatsu Taft yang bergerak dari arak Kupang menuju arah Tarus, ketika sampai didepan Gereja Santo Andreas Lasiana bergerak belok kanan masuk dalam kompleks Gereja namun tidak melihat ternyata datang sepede motor Yamaha Mio 125 dari arah berlawanan yang tidak menyalakan lampu dengan jarak dekat langsung menabrak bagian samping Mobil Daihatsu Taft yang sudah belok dengan posisi menyamping.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(183, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/145/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-11', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat gerakan putar balik', 20, 1000000, 0, 'Berawal saat mobil  Mitsubishi Bis Gemilang Nopol DH 7121 EB  bergerak diatas Jalan Timor Raya  dari arah Oesapa menuju kearah Kupang, setibanya di TKP mobil Mitsubishi Bis Gemilang  Nopol DH 7121 EB tersebut hendak memutar balik arah yaitu ke arah Oesapa kembali, namun saat memutar bertabrakan dengan SPM Yamaha X Ride  DH 5648 TD yang datang dari arah Oesapa hendak kearah Kupang', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(184, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/150/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-16', 0, 0, 3, 'Tempat Wisata', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 200000, 0, 'Berawal saat Sepeda motor Honda Supra X 125 yang melaju dari arah Tarus menuju arah Oesapa yang setibanya di TKP sudah melihat 2 pejalan kaki tersebut yang menyeberang dari kiri kekanan jalan yakni dari depan stadion Sitarda menuju depan suka roti. Bukannya mengurangi tetapi hanya berusaha untuk menghindar dan karena pejalan kaki juga takut sehingga sempat berjalan mundur kembali membuat pengendara spm menabrak kedua pejalan kaki tersebut.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(185, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/164/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-05', 0, 1, 0, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 0, 0, 'Berawal saat Pengendara SM melaju dari arah Kupang menuju kearah Lasiana, sesampainya di TKP menabrak pejalan kaki yang sedang menyeberang jalan.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(186, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/167/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-07', 1, 0, 0, 'Tempat Ibadah', 'Tabrakan saat menyalip', 20, 300000, 0, 'Berawal saat Sepeda motor Suzuki Tornado bergerak dari arah Tarus menuju arah Kupang yang ketika sampai di TKP diduga  melambung kendaraan didepannya dan kelihatan masuk kebagian jalur jalan sebelah kanan hingga kemungkinan terjadi serempetan dengan kendaraan lain dan terjatuh serta ada juga plat nomor kendaraan lain yang terlepas di TKP yang diduga sempat berbenturan dengan Spm Suzuki Tornado. Akibat kejadian tersebut pengendara Spm Suzuki Tornado mengalami luka berat di bagian kepala yang mengeluarkan banyak darah di TKP dan diduga pengendara Spm Suzuki Tornado meninggal dunia langsung di TKP.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(187, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/168/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-09', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 20, 200000, 0, 'Berawal pada saat ke dua Sepeda motor bergerak searah dari arah strat A menuju pasir panjang, dan setibanya di Tkp depan mako Brimob,sepeda motor Vixion DH 3924 CJ hendak berbelok arah ke dalam asrama Brimob, dan sepeda motor beat DH 2607 HN tiba- tiba melambung kendaraan didepan nya sehingga melewati batas barikade yang di pasang di tegah jalan sehingga menabrak Spm Vixion yang sudah belok arah ke dalam asrama Brimob', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(188, 3, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/171/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-14', 0, 0, 4, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 5000000, 0, 'Berawal saat Mobil Suzuki Ignis Nopol DH 1130 AJ bergerak ditas Jalan Timor Raya dari arah Barat kearah Timur, setibanya di TKP mobil Ignis tersebut melambung kanan kendaraan didepannya sehingga masuk ke jalur kanan dan bertabrakan dengan sepeda motor Suzuki Satria FU Nopol DH 2207 HP yang datang dari arah berlawanan mengakibatkan sepeda motor Suzuki Satria FU Nopol DH 2207 HP tersebut terjatuh tetapi mobil Ignis tersebut tetap melanjutkan perjalanannya kearah Timur dan setibanya di TKP kedua yakni di pertigaan Suratim mobil Ignis tersebut menabrak dari balakang sepeda motor Honda Beat warna hitam tanpa TNKB yang bergerak searah. AKibat Kejadian tersebut sepeda motor Honda Beat juga terjatuh lalu mobil Ignis tetap melanjutkan perjalanannya kearah Timur dan mengamankan diri di Polsek Kupang Tengah.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(189, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/173/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-17', 0, 0, 3, 'Jembatan', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 500000, 0, 'Berawal saat sepeda motor VIAR bergerak dari arah Pasir Panjang menuju kearah Kupang diatas jalan Timor Raya, setibanya di Tkp ujung jembatan Oeba tiba-tiba muncul sepeda motor Scoopy bergerak memutar arah diujung Barikade menuju kembali kearah Strat A, karena jarak yang sangat dekat sehingga langsung terjadi tabrakan yang mengakibatkan kedua sepeda motor langsung terjatuh.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(190, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/200/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-14', 0, 0, 3, 'Simpang', 'Tabrakan saat menyalip dari kiri', 20, 2500000, 0, 'Berawal saat Spm Honda CB150 R Nopol DH 2700 KJ bergerak dari arah Kupang menuju kearah kelapa Lima diatas jalan Timor Raya, setibanya di Tkp Spm Honda CB150 R Nopol DH 2700 KJ bergerak belok kanan memotong jalan hendak masuk kearah gang dan saat itu ada Mobil microlet yang sudah berhenti untuk memberikan prioritas namun tiba-tiba muncul Spm Honda CBR Nopol B 3328 UJC dari arah belakang melambung kiri Mobil microlet yang berhenti tersebut dan langsung menabrak bagian kiri dari Spm Honda CB150 R Nopol DH 2700 KJ yang menyebabkan kedua sepeda motor langsung terjatuh', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48');
INSERT INTO `laka` (`id_laka`, `id_informasi_khusus`, `id_kondisi_cahaya`, `id_cuaca`, `id_tingkat_kecelakaan`, `id_kecelakaan_menonjol`, `id_fungsi_jalan`, `id_kelas_jalan`, `id_tipe_jalan`, `id_permukaan_jalan`, `id_kemiringan_jalan`, `id_status_jalan`, `id_polres`, `no_laka`, `tanggal_kejadian`, `jumlah_meninggal`, `jumlah_luka_berat`, `jumlah_luka_ringan`, `titik_acuan`, `tipe_kecelakaan`, `batas_kecepatan_dilokasi`, `nilai_kerugian_non_kendaraan`, `nilai_kerugian_kendaraan`, `keterangan_kerugian`, `jam_kejadian`, `id_titik_rawan`, `created_at`, `updated_at`) VALUES
(191, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/210/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-18', 0, 0, 3, 'Tempat Wisata', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 20, 500000, 0, 'Berawal kedua Pengendara  Sepeda Motor Bergerak bersamaan dari arah Taru menuju arah Oesapa setibanya di Tkp tepatnya dekat cabang Lasiana Pengendara Sepeda Motor Honda Beat yang tiba- tiba saja berbelok arah dari kiri ke kanan jalan tanpa  memperhatikan kalau ada Pengendara Sepeda Motor Yamaha Vixion yang sedang melintas sehingga terjadilah kecelakaan.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(192, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/207/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-18', 0, 0, 1, 'Simpang', 'Tabrakan kendaraan belok kiri dengan kendaraan yang jalan lurus', 20, 500000, 0, 'Berawal saat kedua kendaraan bergerak dari arah yang sama yaitu dari arah Kupang menuju ke arah Tarus dengan posisi mobil di bagian depan sedangkan sepeda motor di belakang dan sesampainya di TKP mobil hendak membelok ke cabang jalan Kabesak, pada saat membelok tiba-tiba sepeda motor melambung kiri dan berserempet dengan mobil sehingga terjatuh.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(193, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/213/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-24', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 1000000, 0, 'Berawal dari mobil dump truk bergerak dari arah Kupang menuju ke arah Lasiana sedangkan SPM bergerak dari arah Lasiana menuju kearah Kupang, dan sampai di TKP depan jembatan timbang kedua kendaraan saling melambung sehingga bertabrakan di tengah- tengah jalan.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(194, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/229/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-20', 0, 0, 3, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 5000000, 5000000, 'Berawal dari pengemudi Mobil Pick Up bergerak dari arah Kupang dengan tujuan kearah Tarus. Setibanya di TKP Pengemudi Mobil hilang kendali dan menyenggol tiga orang PJK yang sementara menyebrang jalan', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(195, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/235/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-26', 0, 0, 2, 'Tempat Wisata', 'Tabrakan saat gerakan putar balik', 20, 500000, 500000, 'Berawal saat Mobil Mikrolet bergerak keluar dari cabang Jln. Halilintar (sebelah kiri dari arah Kupang kearah Lasiana), hendak menuju kearah Kupang, namun karena ada penumpang berdiri di ssebelah kanan jalan dari arah Kupang ke Lasiana sehingga pengemudi bergerak hendak memutar, saat memutar datang pengendara Spm Honda Vario dari arah Kupng dan langsung menabrak bagian samping kiri pintu pengemudi Mikrolet tersebut.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(196, 1, 2, 4, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/248/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-09', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 100000, 100000, 'Berawal saat pengendara  Sepeda motor Yamaha Vixion bergerak datang dari arah Kupang ke arah Lasiana, saat sampai di tkp, datang pengendara sepeda motor Yamaha Mio yang dari arah sebaliknya yakni dari arah Lasiana ke arah Kupang namun pengendara sepeda motor Yamaha Mio tersebut bergerak di jalur kanan sehingga di tabrak oleh pengendara sepeda motor yamaha Vixion.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(197, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/249/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-10', 1, 0, 0, 'SPBU', 'Tabrakan dengan kendaraan parkir di kiri', 20, 500000, 500000, 'Berawal saat pengendara Sepeda motor Honda Beat DH 3958 HF bergerak datang dari arah Kupang ke arah Lasiana, saat sampai di tkp, menabrak mobil truck Tronton yang sementara parkir di pinggir jalan karena rusak, Akibat dari kejadian tersebut pengendara sepeda motor mengalami luka-luka dan Meninggal Dunia Di TKP Kemudian di larikan ke RSUD SK Lerik Kota Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(198, 1, 2, 4, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/256/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-16', 0, 0, 1, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 500000, 0, 'Berawal saat sepeda motor Honda Beat bergerak Keluar dari gang Ekklesia masuk ke Jalan Timur Raya tetapi tiba-tiba ditabrak oleh sepeda motor yang tidak teridentifikasi yang bergerak di atas Jalan Timor Raya dari arah Barat ke arah timur sehingga mengakibatkan pengendara sepeda motor Honda Beat terjatuh dan mengalami luka-luka sedangkan sepeda motor yang tidak teridentifikasi tersebut terus melanjutkan perjalanannya meninggalkan TKP ke arah Tarus.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(199, 3, 2, 4, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/264/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-30', 0, 0, 1, 'Tempat Ibadah', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 50000, 0, 'Bermula saat pejalan kaki keluar dari dalam rumah hendak menyebrang jalan untuk membeli makan di warung Depan rumahnya. Saat menyebrang jalan dari arah kanan ke arah kiri jalan di tabrak oleh pengendara sepeda motor yang bergerak dari arah Kupang. Atas kejadian tersebut pejalan kaki langsung di larikan ke RS. Leona Kupang.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(200, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/265/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-02', 0, 1, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 1000000, 0, 'Berawal saat sepeda motor Yamaha Jupiter Z1 tanpa TNKB bergerak diatas Jalan Timor Raya dari arah Kelapa Lima menuju kearah Oesapa, setibanya di TKP masuk ke jalur kanan dan bertabrakan dengan sepeda motor Honda Supra X Nopol DH 5318 AF', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(201, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/271/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-09', 0, 0, 4, 'Toko/ Pertokoan / Pasar', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 1000000, 0, 'Berawal saat sepeda motor Honda Beat warna hitam tanpa TNKB bergerak diatas Jalan Timor Raya dari arah Timur kearah Barat, setibanya di TKP bertabrakan dengan sepeda motor Honda Blade Nopol DH 4480 TC yang baru keluar dari Jalan J.A. Pah (terletak di kiri jalan) dan masuk ke Jalan Timor Raya memotong jalur sepeda motor Honda Beat warna hitam tanpa TNKB. Akibat tabrakan tersebut kedua kendaraan terjatuh dan pengendara serta para penumpang mengalami luka-luka.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(202, 1, 2, 5, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/282/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-28', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 1000000, 0, 'Berawal saat sepeda motor Hoonda Supra Fit Nopol DH 5426 YA bergerak diatas Jalan Timor Raya dari arah Barat kearah Timur, setibanya di TKP bertabrakan dengan sepeda motor Honda Vario Nopol DH 2142 KU yang memotong jalan dari pinggir kiri kearah kanan jalan sehingga mengakibatkan kedua pengendara terjatuh.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(203, 1, 2, 5, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/283/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-29', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 200000, 0, 'Berawal dari pengemudi mobil suzuki Avv bergerak dari arah lampu merah Duta lia hendak ke arah Kupang, sedangkan pengendara sepeda motor honda supra bergerak dari arah sebaliknya yakni dari arah Kupang ke arah Oesapa, saat sampai di Tkp depan Supermarket Duta Lia, pengemudi mobil menghindari sebuah sepeda motor yang memotong jalan, akibatnya pengemudi mobil masuk ke kanan jalan dan menabrak sepeda motor tersebut.', NULL, 58, '2024-07-06 21:37:48', '2024-07-06 21:37:48'),
(204, 1, 2, 3, 3, 2, 1, 1, 1, 2, 1, 3, 2, 'LP/1915/1903/I/2021/LL', '2021-01-18', 1, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan depan - depan', 20, 15000000, 0, 'Berawal saat Mobil sama-sama melaju dari arah SMAN 1 kearah SPBU Oebobo, dan Spm melaju dari arah berlawanan sesampainya di TKP yakni di depan Kantor Lurah Oebobo, pengemudi Mobil melaju dengan kecepatan tinggi dan dalam kondisi pengaruh Alkohol sehingga kehilangan kendali dan masuk ke jalur berlawanan dan bertabrakan dengan Spm yang datang dari arah SPBU Oebobo.', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(205, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1947/IV/2021/LL', '2021-04-09', 0, 1, 1, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 0, 200000, 0, 'Berawal dr spm beat warna hitam bergerak dr arah jln. Cak Doko menuju kearah jalan palapa, sampai di tkp pertigaan Palapa spm beat warna hitam bergerak belok kanan menuju kearah jln. Palapa dan tibaÂ² datang dr arah berlawanan dengan kecepatan kencang spm beat wrna merah karena takut dikejar orang sehingga lgs  menabrak bagian samping kiri dr spm beat warna hitam yang mengakibatkan kedua spm lgs terjatuh, akibat dr kejadian tsb peng. Spm beat warna hitam mengalmi luka dan sementara dirawat di rsud johannes kupang.', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(206, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1985/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-18', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan depan - belakang', 0, 1000000, 0, 'Berawal saat Mobil Tangki Air Nopol DH 8315 AH berhenti di depan RM Sederhana hendak bergerak mundur masuk di lorong disamping RM Sederhana, disaat pengemudi Mobil Tangki Air Nopol DH 8315 AH melihat ada ruang korong untuk bergerak mundur sehingga pengemudi Mbl bergerak maju untuk mengambil haluan dan saat bersamaan datang Spm Yamaha Fino Nopol DH 2497 KJ barhenti di halaman parkir RM sederhana tepat didepan lorong masuk, karena pengemudi Mbl tangki tidak memperhatikan lagi kearah belakang sehingga langsung bergerak mundur dan menabrak Spm Yamaha Fino Nopol DH 2497 KJ yang sementara berhenti dibelakang Mbl tangki yang mengakibatkan pengendara dan Spm Yamaha Fino Nopol DH 2497 KJ terjatuh, dimana akibat dari kejadian tersebut pengendara Spm Yamaha Fino Nopol DH 2497 KJ mengalami luka dan sementara dirawat di RS Bhayangkara Kupang serta kendaraan mengalami kerusakan material.', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(207, 1, 2, 3, 2, 2, 1, 1, 1, 2, 1, 2, 2, 'LP/B/2120/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-02', 0, 1, 2, 'Kantor/ Perkantoran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 2500000, 0, 'Berawal saat Spm Yamaha Vixion Nopol DH 5430 KD bergerak dari arah depan SPN menuju kearah simpang Palapa, setibanya di Tkp depan Kantor Lurah Oebobo tiba-tiba muncul Spm Honda Scoopy Nopol DH 4593 KP dari pertigaan sebelah kiri jalan langsung bergerak keluar memotong jalan menuju kearah SPN, karena jarak yang sangat dekat sehingga langsung terjadi tabrakan yang mengakibatkan kedua Spm langsung terjatuh, dimana akibat dari kejadian tersebut kedua pengendara dan penumpang Spm mengalami luka dan sementara dirawat di RS Bhayangkara Kupang serta kedua kendaraan mengalami kerusakan material', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(208, 1, 2, 3, 3, 2, 1, 1, 1, 2, 1, 2, 2, 'LP/A/78/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-26', 1, 1, 0, 'Kantor/ Perkantoran', 'Tabrakan depan - depan', 20, 500000, 0, 'Berawal saat Pengendara sepeda Motor Honda Blade begerak dari arah SPBU Oebobo hendak ke arah SMA Neg. 1 Kupang, saat tiba di Tkp depan kantor Lurah Oebobo, karena jalan di sebelah kiri arah datangnya pengendara sepeda motor Honda Blade bergelombang sehingga pengendara tersebut masuk ke jalur kanan, namun saat yang bersamaan datang pengendara honda beat dari arah berlawanan dengan kecepatan tinggi dan tabarakan tak terhindarkan lagi.', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(209, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/140/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-09', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan samping', 20, 300000, 0, 'Berawal saat Pengendara SPM Honda Sonic DH 2531 KN dan pesepeda bergerak bersama dari arah Simpang palapa menuju ke arah SPN sesampainya di TKP turunan dekat BRI Oebobo pengendara SPM Honda Sonic DH 2531 KN tidak konsentrasi dan menyerempet pesepeda.', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(210, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/190/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-03', 0, 0, 2, 'SPBU', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 0, 0, 'Berawal pada saat Pengendara Sepeda Motor Yamaha Vega yang bergerak dari arah Gua Lordes menuju ke arah Cemara Indah sesampainya di Tkp tepatnya di depan Pom Bensin Oebobo Pengendara Sepeda Motor Yamaha Vega yang melaju dengan kecepatan tinggi tidak memperhatikan kalau ada Pejalan kaki yang sedang melintas sehingga terjadilah tabrakan.Atas kejadian tersebut korban di larikan ke RSB.Titus Uly Kupang.', NULL, 59, '2024-07-06 21:38:24', '2024-07-06 21:38:24'),
(211, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2017/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-22', 0, 0, 1, 'Tempat Wisata', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 1500000, 0, 'Kronologis berawal dari Spm Yamaha N-Max bergerak dari arah Namosain menuju arah Tenau karena mengantuk sehingga keluar jalur kiri dan menabrak pohon', NULL, 60, '2024-07-06 21:38:49', '2024-07-06 21:38:49'),
(212, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2025/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-05', 0, 1, 4, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 5000000, 0, 'Berawal saat Mobil Dum Truck Mitsubishi Nopol DH L 9214 AV bergerak diatas Jalan M. Praja dari arah Tenau menuju kearah Namosain dengan kecepatan tinggi, setibanya di TKP menabrak Spm Honda Revo Nopol DH 5459 HM didepannya yang memotong jalan dari pinggir kiri hendak ke pinggir kanan jalan. Kemudian mobil dum truck tersebut menyeret Spm Honda Revo Nopol DH 5459 HM tersebut kepinggir kanan jalan dan menabrak pembatas pagar pembatas jalan lalu mobil dum truck tersebut terbalik.', NULL, 60, '2024-07-06 21:38:49', '2024-07-06 21:38:49'),
(213, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2085/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-16', 0, 0, 3, 'Tempat Wisata', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 25000000, 0, 'Berawal saat pengemudi mbl  bergerak dari arah Pelabuhan kearah Kupang melewati Jln. M. Praja, setibanya di TKP dengan Jalan sedikit tikungan ke arah kiri dan kanan pengemudi mobil hendak mengambil botol susu yang terjatuh di sampingnya, sehingga mobil yang di kemudian oleng dan keluar jalur masuk ke dalam jurang yang berada di kiri jalan. Akibat dari kejadian tersebut pengemudi dan penumpang mengalami luka-luka dan di larikan ke RSU Kupang. Dan kendaraan mengalami kerusakan material berat.', NULL, 60, '2024-07-06 21:38:49', '2024-07-06 21:38:49'),
(214, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2089/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-22', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 0, 500000, 0, 'Berawal saat pengendara SPM bergerak dr arah Kupang dgn tujuan ke arah tenau sedangkan pengemudi mbl bergerak dari arah tenau dgn tujuan kearah nomosain. Setibahnya di TKP, pengemudi mbl membelok ke arah kanan saat membelok mengalami tabrakan dengan SPM tepatnya di bagian kiri belakang. Akibat dr kejadian tersebut pengendara SPM di larikan ke RSU Kupang. Dan kedua kendaraan mengalami kerusakan material.', NULL, 60, '2024-07-06 21:38:49', '2024-07-06 21:38:49'),
(215, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2109/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-22', 0, 0, 2, 'Tempat Wisata', 'Tabrakan saat menyalip', 0, 600000, 0, 'Berawal saat pengendara Spm Kawasaki KLX melaju dari arah Namosain menuju ke arah tenau, sesampainya di Tkp pengendara Spm Klx melambung kanan dari sebuah mobil didepannya yg  saat itu juga ada kendaraan lain yg juga sedang melambung mobil tersebut sehingga pengendara Klx keluar ke jalur kanan dan bertabrakan dgn pengendara Spm Honda Supra X yg datang dari arah berlawanan. Akibat dari kejadian tersebut kedua pengendara mengalami luka luka dan dirawat di RS Bhayangkara Kupang.', NULL, 60, '2024-07-06 21:38:49', '2024-07-06 21:38:49'),
(216, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/193/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-06', 1, 0, 1, 'Simpang', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 500000, 0, 'Bermula saat Sepeda motor Yamaha Jupiter MX yang melaju dari arah Nunbaun Sabu menuju arah Tenau, ketika sampai di TKP posisi spm sementara berusaha melambung sebuah mobil didepannya yang melaju searah didepan dan sama sekali tidak melihat pejalan kaki yang menyeberang dibagian depan sehingga pengendara langsung menabrak PJK tersebut yang menyeberang dari bagian kiri jalan menuju ke sebelah kanan.', NULL, 60, '2024-07-06 21:38:49', '2024-07-06 21:38:49'),
(231, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1972/V/2021/LL', '2021-05-05', 0, 0, 2, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 40, 500000, 0, 'Berawal saat Spm Honda Beat yang bergerak keluar dari gang Mesran menuju Jalan Pahlawan belok kanan menuju arah terminal Kupang saat bergerak keluar sudah ditengah jalan bertabrakan dengan Spm Honda Revo yang bergerak dari arah terminal Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(232, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1992/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-30', 1, 1, 0, 'Sekolah/ Kampus', 'Tabrakan depan - depan', 20, 15000000, 0, 'Berawal saat Spm HONDA BEAT  Nopol DH 6057 KG melaju dari arah benteng menuju arah Alak sesampainya di TKP bertabrakan dengan mobil Toyota Avanza DH 1612 HE yang datang dari arah berlawanan sehingga spm honda beat terseret sejauh 50 meter. Akibat dari kejadian tersebut pengendara dan penumpang spm honda beat mengalami luka luka dm dibawah ke RSU prof. Dr. W.Z Johanes Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(233, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2031/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-11', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Scoopy nopol DH 3121 KP yanag bergerak dari arah Terminal Kupang menuju arah Namosain yang ketika sampai di TKP ada sebuah SPM lain yang bergerak memotong jalan didepan dan karena jarak dekat pengendara SPM Scoopy langsung mengerem mendadak hingga terjatuh sendiri.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(234, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2037/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-22', 0, 0, 4, 'Tempat Wisata', 'Tabrakan saat menyalip dari kanan', 0, 15000000, 0, 'Berawal saat kedua Mbl bergerak dari arah yang sama diatas jalan Pahlwan yakni dari arah Alak menuju kearah Kupang, setibanya di Tkp dekat Pantai Namosain Mbl Toyota Rush Nopol DH 1195 HJ yang berada dibelakang bergerak melambung Mbl Toyota Kijang Pick Up Nopol DH1279 AF yang berada didepan, dan saat itu bagian kanan dari Mbl Toyota Kijang Pick Up Nopol DH1279 AF menyerempet bagian samping kiri tengah dari Mbl Toyota Rush Nopol DH 1195 HJ sehingga Mbl Toyota Kijang Pick Up Nopol DH1279 AF hilang kendali keluar jalur dan menabrak Kios CAHAYA MADINA yang berada di pinggir jalan sebelah kiri sedangkan Mbl Toyota Rush Nopol DH 1195 HJ hilang kendali sehingga berbalik arah kembali kearah Alak akibat dari kejadian tersebut  kedua kendaraan  dan Kios mengalami kerusakan material.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(235, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2090/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-22', 0, 1, 0, 'Tempat Ibadah', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 0, 0, 0, 'Berawal saat korban pejalan kaki sedang berjalan kaki di pinggir kiri jalan diatas Jalan Pahlawan dari arah Kantor Lurah Namosain menuju kearah Mesjid Nur Mukmin Namosain, setibanya di TKP ditabrak oleh Spm Honda Beat berwarna putih yang tidak diketahui Nomor Polisinya dari arah belakang sehingga korban tejatuh dan mengalami luka-luka sedangkan Spm tersebut hanya sedikit oleng lalu melanjutkan perjalanannya ke arah Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(236, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2096/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-04', 1, 0, 1, 'Jembatan', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 100000, 0, 'Berawal saat Spm Honda beat  bergerak dari arah Alak menuju kearah oeba  dan sesampai di tkp jalan menurun depan benteng pengendara hilang kendali  dan menabrak trotoar  mengakibatkan pengendara Spm mengalami luka-luka dan meninggal dunia di tempat sedangkan penumpang memgalami luka-luka dan di rawat di RSB Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(237, 1, 2, 3, 2, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/2101/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-05', 0, 1, 0, 'Toko/ Pertokoan / Pasar', 'Sepeda angin/ Sepeda motor jatuh', 0, 100000, 0, 'Berawal dari pengendara Spm Honda Vario dari arah Jembatan selam menuju ke arah Jln Pahlawan  setibanya di tkp Pengendara Spm Honda Vario yang ingin menyalip mobil di depannya mengambil lajur kiri  namun pada saat itu Pengendara Spm Honda Vario tidak melihat kalau ada lubang di bibir jalan  sebelah kiri yang tertutup rumput sehingga Pengendara Spm Honda Vario langsung terjatuh. Atas Kejadian tersebut Korban di larikan ke Rs.Siloam Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(238, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2159/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-26', 0, 1, 0, 'Jembatan', 'Tabrakan depan - depan', 20, 2000000, 0, 'Kronologis kejadian berawal dari Pengendara Spm Honda Revo yang bergerak dari arah Alak menuju Kupang sedangkan Pengendara Mobil Daihatsu Feroza bergerak dari arah Kupang menuju Alak sesampainya di Tkp tepatnya di pertigaan gang maleset Pengemudi Mobil Daihatsu Feroza yang dalam keadaan mengantuk mengambil lajur dari Spm Honda Revo sehingga terjadi tabrakan. Atas kejadian tersebut Pengendara Spm Honda Revo dilarikan ke RSB  TITUS ULY Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(239, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/03/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-31', 1, 0, 1, 'Toko/ Pertokoan / Pasar', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 100000, 0, 'Berawal saat Sepeda motor Yamaha Jupiter MX warna hitam tanpa TNKB bergerak diatas Jalan Pahlawan dari arah Kantor Lurah Namosain menuju kearah Leter S, setibanya di TKP menabrak korban pejalan kaki yang sedang berjalan kaki dari pinggir kiri masuk ke tengah jalan sehingga pengendara sepeda motor dan pejalan kaki terjatuh.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(240, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/45/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-24', 0, 0, 2, 'SPBU', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 60, 0, 0, 'Berawal saat Sepeda Motor Honda CRF bergerak dari arah Nunbaun Delha hendak ke arah Tenau, saat tiba di Tkp, pejalan kaki tersebut diatas sedang berdiri di kiri jalan, dan ketika pengendara sudah dekat tiba2 pejalan kaki tersebut  berlari menyebrang ke arah kanan jalan namun karena jarak yang sudah dekat sehingga pengendara tdk dapat mengendalikan laju kendaraanya sehingga tabrakanpun terjadi. Pada saat tabrakan pejalan kaki tersebut terlempar ke arah depan sedangkan pengendara dan penumpang tidak terjatuh. Bahwa akibat dari tabrakan tersebut pejakan kaki mengalami luka dan di rawat di RSU Siloam Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(241, 1, 2, 5, 3, 2, 1, 1, 1, 4, 1, 2, 2, 'LP/B/46/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-26', 1, 0, 0, 'Sekolah/ Kampus', 'Tabrakan saat menyalip dari kiri', 50, 500000, 0, 'Kronologis sementara  berawal saat pengendara  Spm Honda Supra Fit yang bergerak dari arah Namosain menuju arah Kupang dan saat sampai di TKP, pengendara hendak melambung sebuah mobil Dump Truk dari arah Kiri,  namun karena jaraknya terlalu mepet sehingga menyerempet bodi dump truk tersebut kemudian terjatuh dan tergilas oleh ban belakang dari dump truck tersebut.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(242, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/59/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-20', 0, 0, 3, 'Tempat Ibadah', 'Tabrakan saat menyalip', 50, 500000, 0, 'Kronologis bermula saat Spm Honda Beat Nopol DH-4663-HZ bergerak dari arah Namosain menuju arah Kupang ketika sampai di TKP berusaha melambung mobil didepannya dan masuk ke jalur jalan berlawanan sehingga bertabrakan dengan Spm Yamaha Byson Nopol DH-5859-KM yang datang dari arah berlawanan.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(243, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/A/84/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-29', 0, 0, 2, 'SPBU', 'Tabrakan dengan Kendaraan menyebrang dari sisi kiri jalan', 20, 200000, 0, 'Berawal saat Pengendara sepeda Motor Honda karisma bergerak dari dalam SPBU NBS hendak keluar  ke arah Alak, saat tiba di Tkp depan pertamina, pengendara honda karisma langsung memotong jalan dan saat bersamaan datang spm honda beat dari arah Alak menuju ke arah Kupang, karena jarak sudah dekat sehingga tabrakan tidak bisa di hindarkan lagi. Akibatnya pengendara honda beat mengalami luka-luka dan kedua kendaraan mengalami kerusakan.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(244, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/92/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-12', 0, 0, 4, 'Monumen/ Tugu/ Patok', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 2000000, 0, 'Berawal saat Sepeda motor Honda Beat Nopol DH 3205 KP bergerak diatas Jalan Pahlawan dari arah Namosain menuju kearah Kupang, setibanya di TKP bergerak perlahan lalu berhenti di As tengah jalan hendak berbelok masuk ke kanan jalan tetapi langsung ditabrak dari belakang oleh sepeda motor Honda Vario Nopol DH 5771 HL yang datang dari arah Namosain menuju kearah Kupang.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(245, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/175/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-19', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 0, 0, 'Bermula saat kedua kendaraan yang melaju dari arah yang sama yakni dari arah Kupang menuju arah Namosain dengan posisi mobil tangki didepan. Ketika sampai di TKP pengendara Spm Yamaha Mio berusaha melambung mobil tangki didepan dan menyenggol bodi kanan mobil sehingga terjatuh sedangkan mobil terus bergerak meninggalkan TKP.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(246, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/237/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-27', 0, 0, 2, 'SPBU', 'Tabrakan depan - depan', 20, 1800000, 1000000, 'Bermula saat Spm Honda Beat bergerak dari arah Tenau menuju Kupang yang setibanya di TKP tiba-tiba saja melaju spm Yamaha Fino dari arah berlawanan dengan kecepatan tinggi masuk kejalur jalan sebelah kanan tidak mengurangi kecepatan langsung menghadap kedepan spm Honda beat sehingga terjadi tabrakan.', NULL, 45, '2024-07-06 21:39:39', '2024-07-06 21:39:39'),
(247, 2, 2, 3, 2, 2, 1, 1, 1, 1, 1, 1, 2, 'LP/1915/1897/I/2021/LL', '2021-01-05', 0, 1, 1, 'Sekolah/ Kampus', 'Tabrakan depan - belakang', 20, 10000000, 0, 'Berawal saat mobil Carry Pick Up Nopol DH 8588 AG bergerak diatas Jalan Suharto dari arah Pasar Inpres menuju kearah Oepura, setibanya di depan RS Undana berbelok kanan dengan perlahan hendak masuk ke Rumah Sakit Undana tetapi tiba-tiba ditabrak dari balakang oleh mobil Toyota Avanza berwarna hitam Nopol DH 1044 PK. Kemudian mobil Carry Pick Up Nopol DH 8588 AG tersebut maju terdorong masuk ke jalur kanan dan langsung bertabrakan dengan Spm Honda ADV Nopol S 2608 JAE yang bergerak dari jalur berlawanan. Akibat kejadian tersebut pengendara dan penumpang Spm mengalami luka-luka.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(248, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1921/II/2021/LL', '2021-02-17', 0, 0, 3, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 1000000, 0, 'Berawal dari pengendara spm honda scoppy bergerak dari arah Oepura dengan tujuan ke arah kuanino dengan kecepatan tinggi, sedangkan pengendara spm  honda revo bergerak dari arah kuanino dengan tujuan ke arah Oepura, setibahnya di TKP tepatnya di depan pasar Impres pengendara spm  honda scoppy melambung dan menabrak pengendara spm  honda revo. Akibat dari kejadian tersebut kedua pengendara dan penumpang spm  di larikan ke RSU kupang.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(249, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2004/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-12', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 250000, 0, 'Berawal dari pengendara Spm Yamaha Mio yang bergerak bersamaan dengan pengendara  Spm Honda beat kemudian setelah sampai di jalan soeharto tepatnya di Depan Mapolda NTT  kendaraan Honda Beat tersebut  ingin melewati  Pengendara Spm Yamaha Vino  sehingga menyenggol Pengendara Spm Yamaha Vino dan jatuh kearah kanan. Atas kejadian tersebut pengendara spm  Yamaha Vino di larikan ke RS. Bhayangkara Kota Kupang.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(250, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2047/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-05', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal dari Spm Yamaha Vega yang bergerak dari arah Perempatan Polda menuju arah Oepura yang karena pengendara mengantuk sehingga kehilangan kendali dan bergerak keluar jalur dan menabrak trotoar hingga terjatuh sendiri.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(251, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2061/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-24', 0, 0, 1, 'Rumah Sakit', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 0, 100000, 0, 'Berawal saat mobil Honda Brio Nopol DH 1483 AS dan Spm Honda Supra X Nopol DH 3317 KF sama-sama bergerak diatas Jalan Suharto dari arah Polda menuju kearah Oepura dengan posisi beriringan (mobil Honda Brio berada didepan Spm Supra X). Setibanya di TKP mobil Honda Brio Nopol DH 1483 AS berbelok kanan secara tiba-tiba hendak memutar balik arak sehingga bertabrakan dengan Spm Honda Supra X Nopol DH 3317 KF yang datang dari arah belakangnya.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(252, 1, 2, 3, 1, 2, 1, 1, 3, 1, 1, 2, 2, 'LP/A/71/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-09', 0, 0, 1, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 1000000, 0, 'Berawal dari pengendara SPM Honda Scoopy bergerak dari arah depan toko Hero dgn tujuan ke arah jln eltari sedangkan pengendara SPM Honda beat bergerak dari arah Polda dgn tujuan ke arah pasar inpres. Setibanya di TKP pengendara SPM Honda beat yg melaju kencang menabrak dari arah samping kiri. Sehingga mengakibatkan pengendara SPM Honda  Scoopy di larikan ke RSU Kupang. Dan kedua kendaraan mengalami kerusakan material.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(253, 1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/76/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-22', 0, 0, 1, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 100000, 0, 'Berawal saat Spm Revo bergerak dari arah Oepura menuju kearah Naikoten diatas jalan Soeharto, setibanya di TKP depan Bank BRI Unit Oepura pengendara Spm tidak melihat ada pejalan kaki yang sementara berjalan menyeberang jalan sehingga spm langsung menabrak pejalan kaki sampai terjatuh, dimana Akibat dari kejadian tersebut pejalan kaki mengalami luka luka dan sementara dirawat di RSB Kupang.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(254, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/110/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-05-31', 0, 0, 3, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 500000, 0, 'Berawal saat SPM Honda Supra Fit New DH 4506 CC dan SPM Honda Beat DH 4640 KK bergerak bersama sama dari arah oepura menuju ke arah simpang Polda sesampainya di TKP SPM Honda Beat DH 4640 KK hendak melambung SPM Honda Supra Fit New DH 4506 CC yang berada d depannya karena dalam kecepatan tinggi dan keadaan pusing Pengendara SPM Honda beat tersebut menabrak SPM Honda Supra Fit New dari arah belakang. Akibat dari kejadian kecelakaan lalulintas tersebut penumpang SPM Honda Supra Fit New DH 4506 CC di bawa ke RSU W.Z Yohanes.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(255, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/185/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-28', 0, 0, 2, 'SPBU', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 500000, 0, 'Berawal pada saat Pengendara Sepeda Motor Honda  CBR yang bergerak dari arah Oepura  menuju ke arah Pasar Inpres setibanya di Tkp tepatnya di depan Hotel Silvia Pengedara Sepeda Motor Honda CBR yang melaju dengan kecepatan tinggi tidak melihat Pejalan Kaki yang sedang melintas dari arah kiri jalan menuju arah kanan Jalan sehingga terjadilah tabrakan.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(256, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/208/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-19', 0, 0, 3, 'Kantor/ Perkantoran', 'Tabrakan depan - depan', 20, 1000000, 0, 'Berawal kedua Spm bergerak di jalan Umum Suharto,Spm Smash titan dari arah pasar impres naikoten  satu menuju ke oepura dan sebaliknya Spm Honda beat dri arah oepura menuju ke arah pasar impres, dan setibanya di Tkp depan pegadaian oepura Spm honda beat bergerak ke arah kanan jalan dan melewati batas garis putih sehingga menabrak spm smash titan.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(257, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/219/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-30', 0, 0, 1, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 0, 0, 'Bermula saat mobil angkot Cs Trans yang melaju dari arah Oepura menuju arah pasar impres, ketika sampai di TKP depan kantor pos Oepura pengemudi tidak melihat adanya pejalan kaki yang sedang menyeberang jalan dari kanan ke kiri jalan, karena jarak sudah dekat sehingga pengemudi tidak bisa menghindar dan langsung menabrak pejalan kaki tersebut.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(258, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/239/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-29', 0, 1, 1, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 100000, 100000, 'Berawal dari pengendara Spm melaju dari arah Oepura kearah Polda NTT sesampainya di TKP menabrak pejalan kaki yang sedang menyeberang dari kiri ke kanan jalan', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(259, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/246/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-06', 0, 0, 1, 'Tempat Ibadah', 'Di ruas jalan, pejalan kaki di bahu jalan atau di trotoar', 20, 100000, 100000, 'Berawal saat Sepeda motor Honda Beat Nopol DH 5305 AP bergerak diatas jalan Suharto dari arah Naikoten menuju kearah Kuanino, setibanya di TKP sepeda motor tersebut berusaha menghindari kendaraan yang tiba-tiba memotong jalannya sehingga Sepeda motor Honda Beat Nopol DH 5305 AP berbelok kiri dan menabrak korban yang sedang duduk menyusun koran di trotoar kiri jalan. Akibatnya korban terjatuh dan mengalami luka-luka lalu dibawa ke RSU WZ Yohanes oleh pengendara Sepeda motor Honda Beat Nopol DH 5305 AP.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(260, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/260/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-22', 0, 0, 5, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - belakang', 20, 500000, 0, 'Berawal saat sepeda motor Honda Vario Nopol DH 5329 HD bergerak dengan kecepatan tinggi diatas Jalan Suharto dari arah Kampus Undana menuju kearah Pasar Inpres, setibanya di TKP hendak melambung kendaraan di depannya tetapi karena kurang hati-hati sepeda motor tersebut menabrak dari belakang sepeda motor Honda Beat Nopol DH 5770 KD yang sedang bergerak searah sehingga kedua sepeda motor terjatuh bersama pengendara dan penumpangnya.', NULL, 52, '2024-07-06 21:40:51', '2024-07-06 21:40:51'),
(261, 3, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1920/II/2021/LL', '2021-02-14', 0, 1, 0, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip dari kanan', 20, 0, 0, 'Berawal saat mbl mikrolet RHOSBOY bergrk dr arah simpang polda menuju kearah kuanino dengan kecepatan kencang dan konjak duduk di pintu kiri dengan posisi kaki kiri menjulur keluar melewati body mbl, setibanya di tkp mbl mikrolet melambung mbl box namun kr pengemudi mbl mikrolet tdk menjaga jarak dgn mbl box sehingga lutut kiri dr konjak menghantam sudut belakang kanan dr mbl box borneo yg mengakibatkan lutut kiri konjak mengalami luka dan patah terbuka.', NULL, 42, '2024-07-06 21:41:18', '2024-07-06 21:41:18'),
(262, 1, 2, 6, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1981/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-14', 0, 1, 0, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 100000, 0, 'Berawal saat Spm Honda Scoopy Nopol DH 3144  KR yang bergerak dari arah Rusun Nawa Asrama Kuanino menuju arah Mes Wirasakti dan sampai di TKP pengendara secara tiba-tiba mengerem mendadak karena berusaha menghindari kendaraan yang berada di depannya sehingga terjatuh dan mengalami luka-luka dan di rawat di RS Siloam.', NULL, 42, '2024-07-06 21:41:18', '2024-07-06 21:41:18'),
(263, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/189/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-03', 0, 0, 3, 'Toko/ Pertokoan / Pasar', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 50000, 0, 'Berawal saat pengendara Sepeda Motor Yamaha Mio S DH 3242 KN dan pengendara sepeda motor Yamaha 125 No. Pol. EA 3554 SK bergerak dari arah yang sama yaitu dari arah Polda menuju ke arah Rumah sakit Umum dan saat sampai di tkp depan toko Kalam hidup, sepeda motor Yamaha Mio S hendak membelok ke arah kanan, namun di tabrak dari arah belakang oleh pengendara sepeda motor Yamaha 125. sehingga kedua pengendara serta penumpang terjatuh di kanan jalan.', NULL, 42, '2024-07-06 21:41:18', '2024-07-06 21:41:18'),
(264, 3, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/215/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-26', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 0, 0, 'Berawal dari Spm Honda Beat bergerak di jalan Sudirman, dari arah pos kanaan menuju ke arah RSU Johanes, setibanya di TKP depan kantor Bank NTT lama Spm Honda Beat hendak melambung mobil angkutan umum yg sedang parkir, tiba-tiba Mobil Pick Up dari arah belakang dan menyenggol stir motor Honda Beat sehingga pengendara kehilangan kendali dan terjatuh', NULL, 42, '2024-07-06 21:41:18', '2024-07-06 21:41:18'),
(265, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/266/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-04', 0, 0, 2, 'Tempat Ibadah', 'Tabrakan saat menyalip', 20, 5000000, 0, 'Berawal saat keluar kendaraan bergerak searah di Jalan Sudirman dari arah Polda menuju ke arah pos Kanaan setibanyak di TKP dekat gereja Koinonia sepeda motor Honda Beat DH 2914 HR hendak berbelok arah ke Jalan Pemuda tiba-tiba mikrolet Texas melambung kendaraan di depannya dan masuk ke jalur kanan sehingga menabrak sepeda motor Honda Beat di depan dan terjatuh.', NULL, 42, '2024-07-06 21:41:18', '2024-07-06 21:41:18'),
(266, 1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2007/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-12', 0, 0, 3, 'Monumen/ Tugu/ Patok', 'Tabrakan depan - depan', 20, 2000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2934 KN bergerak dengan kecepatan tinggi di Jalan kanan Jalur 40 pada jalu kanan dari arah Kampung lama menuju kearah Bolok, setibanya di TKP bertabrakan dengan Spm Yamaha Vixion Nopol DH 6190 AY yang bergerak dari arah berlawanan sehingga kedua pengendara dan penumpangnya terjatuh dan luka-luka.', NULL, 51, '2024-07-06 21:41:42', '2024-07-06 21:41:42'),
(267, 2, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2033/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-16', 0, 0, 1, 'Tempat Wisata', 'Tabrakan depan - depan', 0, 300000, 0, 'Berawal dari ketiga mobil ambulance yang bergerak pulang dari arah pekuburan fatukoa menuju arah perempatan sikumana dengan posisi beriringan yang sampai di TKP datang SPM Honda Supra Fit melawan arah dan bergerak dibagian tengah jalan, dalam keadaan mabuk. Karena jarak sudah dekat pengemudi ambulance yang bergerak didepan berusaha menghindar kearah kanan namun setang setir mengenai dan menggores bagian kiri dari depan hingga belakang mobil ambulance pertama kemudian mobil ambulance kedua kedua karena tidak melihat sehingga bertabrakan lagi dengan spm yang masih bergerak selanjutnya mobil ambulance yang ketiga juga karena jarak yang dekat sehingga menabrak bagian belakang dari mobil ambulance kedua.', NULL, 51, '2024-07-06 21:41:42', '2024-07-06 21:41:42'),
(268, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2104/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-08', 0, 0, 1, 'Jembatan', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 200000, 0, 'Berawal dari spm yamaha fino bergerak dari arah Polsek maulafa menuju ke arah Naimata, sesampainya di Tkp karena ada tikungan kiri sehingga pada saat belok dan ban belakan sleep sehingga pengendara hilang kendali dan terjatuh serta dirawat di RS Boromeus Kupang.', NULL, 51, '2024-07-06 21:41:42', '2024-07-06 21:41:42'),
(269, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2128/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-11', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 30, 200000, 0, 'Berawal saat pengendara Spm Honda Beat No. Pol DH 4956 KE melaju dari arah desa Nitneo melalui jalan jalur 40 menuju ke arah sikumana, sesampainya di Tkp karena pada saat melintas gundukan semen yg sdh mengering sshingga pengendara hilang kendali dan terjatuh. Akibat dari kejadian tersebut pengendara tdk sadarkan diri dan dibawah ke Puskesmas Sikumana.', NULL, 51, '2024-07-06 21:41:42', '2024-07-06 21:41:42'),
(270, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2129/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-12', 0, 1, 0, 'Rumah / Perumahan / Pemukiman', 'Kendaraan Out of Control keluar ke kiri jalan', 30, 100000, 0, 'Berawal dari Pengendara Spm Honda Beat yang bergerak dari  Sikumana menuju ke arah Bolok  sesampainya di Tkp tepatnya di depan Perumahan Seribu , Pengendara Spm Honda Beat yang tidak melihat kalau ada gundukan semen yang berada di kanan jalan sehingga Pengendara Spm Honda Beat  berusaha untuk  menghindari gundukan semen tersebut  ke arah kiri jalan  kemudian hilang kendali dan terjatuh. Atas kejadian tersebut Korban di larikan ke RS.BOROMEUS Kupang.', NULL, 51, '2024-07-06 21:41:42', '2024-07-06 21:41:42'),
(271, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/11/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-01-11', 0, 1, 0, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 50, 250000, 0, 'Kronologis kejadian : Berawal dari spm GL MAX bergerak dr arah Bolok menuju kearah Sikumana diatas jalur 40, setibanya di tkp datang mbl pickup tdk teridentifikasi bergrk melawan arus sehingga spm GL MAX menghidar keluar jalur dan hilang kendali lgs jatuh terseret ke pinggir jalan sebelah kiri, akibat dr kejadian tsb pengdra mengalami luka dan sementara dirawat di RSU Siloam Kupang.', NULL, 51, '2024-07-06 21:41:43', '2024-07-06 21:41:43'),
(272, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/60/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-21', 0, 0, 2, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kanan', 20, 6000000, 0, 'Kronologis bermula saat Spm Honda Supra X No. Pol DH 2356 MA melaju dari arah BTN Kolhua melalui jalan jalur 40, sesampainya di Tkp pengendara Spm Honda Supra X berbelok menuju ke arah Jalan Oekam sesampainya di tengah perempatan datang sebuah Mobil Dum Truck No. Pol DH 9442 LA dari arah Fatukoa dan terjadi tabrakan kemudian mobil truck tersebut terus melaju dan keluar ke jalur bagian kiri sehingga menabrak Odong odong yg sementara berada sebelah kiri jalan. Akibat dari kejadian tersebut pengendara serta penumpang Spm Honda Supra Mengalami luka luka dan dirawat di RS Boromeus Kupang.', NULL, 51, '2024-07-06 21:41:43', '2024-07-06 21:41:43'),
(273, 1, 1, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/120/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-11', 0, 0, 2, 'Jembatan', 'Kendaraan Out of Control keluar ke kanan jalan', 20, 0, 0, 'Berawal saat Pengendara Sepeda Motor Honda Revo bergerak dari arah Polsek Maulafa menuju ke arah Naimata sesampainya di Tkp tepatnya di Jembatan Petuk Tiga, Pengendara Sepeda Motor Honda Revo yang melaju dengan  kecepatan tinggi dan dalam keadaan mengantuk tiba-tiba hilang kendali dan  menabrak Pembatas jalan sehingga terjatuh.', NULL, 51, '2024-07-06 21:41:43', '2024-07-06 21:41:43'),
(274, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1986/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-19', 0, 0, 1, 'Tempat Ibadah', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 500000, 0, 'Berawal Spm Honda Beat melaju dari arah Bundaran Gubernur hendak kearah Pasar Inpres, sesampainya di TKP yakni di depan Gereja Anugerah kehilangan kendali karena mengantuk, kemudain mengalami kecelakaan tunggal, akibat dari kecelakaan tersebut pengendara mengalami luka-luka dan sementara dirawat di RSU Kupang serta kendaraan mengalami kerusakan material.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(275, 1, 2, 3, 2, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/B/2026/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-07', 0, 1, 0, 'Air Mancur/ Bundaran', 'Kendaraan Out of Control keluar ke kanan jalan', 0, 2000000, 0, 'Berawal dr spm bergerak dr arah jalan eltari menuju kearah bundran gubernur dengan kecepatan sangat kencang, sampai di tkp pemgendara hilang kendali dan lgs menabrak pinggir bundaran yang mengakibatkan spm terlempar sampai kedepan pos BG, akibat dr kejadian tsb pengendara mengalami luka dan tidak sadarkan diri dan sementara dirawat di RSB serta kendaraan mengalami kerusakan material.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(276, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2030/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-11', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat pindah lajur ke kiri', 0, 500000, 0, 'Berawal saat pengendara Microlet DH 1272 AH dan SPM Honda Beat DH 2125 KK berjalan satu arah dari arah kantor Gubernur menuju ke arah Lampu merah Simpang Toko Hero, saat sampai di TKP di depan klinik Kartini tiba tiba pengemudi Microlet hendak berhenti namun tidak memperhatikan kendaraan yg berada d samping kiri kemudian menyerempet pengendara SPM Honda Beta DH 2125 KK hingga terjatuh.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(277, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2122/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-04', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - belakang', 20, 200000, 0, 'Berawal saat pengendara Spm honda supra XX  Nopol DH 3046 KA bergerak beriringan dengan  pengendara Spm yg tdk teridentifikasi yaitu dari arah Polda hendak ke arah Pos Eltari, namun saat tiba di Tkp, tiba2 spm yg tdk teridentifiksi tersebut menabrak spm supra dari arah belakang sehingga kedua pengendara terjatuh, kemudian pengendara yang tidak teridentifikasi tersebut bangun dan melarikan diri. akibatnya pengendara Spm supra mengalami luka dan di rawat di RS Siloam Kupang, serta spm mengalami kerusakan material', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11');
INSERT INTO `laka` (`id_laka`, `id_informasi_khusus`, `id_kondisi_cahaya`, `id_cuaca`, `id_tingkat_kecelakaan`, `id_kecelakaan_menonjol`, `id_fungsi_jalan`, `id_kelas_jalan`, `id_tipe_jalan`, `id_permukaan_jalan`, `id_kemiringan_jalan`, `id_status_jalan`, `id_polres`, `no_laka`, `tanggal_kejadian`, `jumlah_meninggal`, `jumlah_luka_berat`, `jumlah_luka_ringan`, `titik_acuan`, `tipe_kecelakaan`, `batas_kecepatan_dilokasi`, `nilai_kerugian_non_kendaraan`, `nilai_kerugian_kendaraan`, `keterangan_kerugian`, `jam_kejadian`, `id_titik_rawan`, `created_at`, `updated_at`) VALUES
(278, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2157/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-22', 0, 0, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 200000, 0, 'Berawal saat sepeda motor  Yamaha Jupiter MX Nopol DH â€“ (tanpa TNKB) bergerak diatas Jalan El Tari dari arah Pertigaan Toko Hero menuju kearah Bundaran Gubernur. Setibanya di TKP menabrak pejalan kaki yang sedang berjalan menyeberang dari kiri ke kanan jalan sehingga korban pejalan kaki dan pengendara sepeda motor terjatuh dan mengalami luka-luka.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(279, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/25/A/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-01', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 60, 500000, 0, 'Berawal dari kedua Spm bergerak dari arah yang sama diatas jalan Eltari I yakni dr arah Bundaran Gubernur menuju kearah Simpang Hero, setibanya di tkp Spm Beat tanpa Nopol bergerak dengan kecepatan kencang dan pengendara dalam kondisi pengaruh Miras sehingga menabrak dari arah belakang Spm Beat Nopol DH 6454 HI yang mengakibatkan kedua Spm lgs jatuh terseret, akibt dr kejadian tersebut kedua pengendara mengalami luka- luka dan sementara dirawat di RSUD Johannes Kupang serta kedua kendaraan mengalami kerusakan material.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(280, 1, 2, 5, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/36/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-18', 0, 0, 1, 'Tempat Ibadah', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 300000, 0, 'Berawal saat Pengendara Son Honda Vario DH 2682 KL bergerak dari arah simpang Toko Hero menuju ke arah Kantor Bank Indonesia sesampainya di TKP depan Gereja Anugrah pengendara hilang kendali dikarenakan cuaca gerimis dan terjadi kecelakaan lalu lintas tunggal. Akibat dari kejadian tersebut pengendara SPM Honda Vario DH 2682 KL di larikan ke RSU WZ Yohanes dan kendaraan mengalami kerusakan material.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(281, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/65/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-01', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan dari arah kiri', 60, 100000, 0, 'Berawal dari Spm Scoopy bergerak dari arah simpang Hero menuju kearah bundaran gubernur diatas Jalan Eltari I, setibanya di TKP tempat memutar arah didepan rumjab gubernur, spm scoopy bergerak memutar arah hendak kembali kearah simpang hera tanpa berhenti untuk memberikan prioritas jalan kepada mbl tidak teridentifikasi yg dtng dr arah bundaran gubernur menuju kerah simpang hero, karena jarak yg sangat dekat sehingga lgs terjadi tabrakan yg mengakibatkan spm lgs terjatuh sedangkan mbJ tidak teridentifikasi lgs melarikan diri, dimana akibat dr kejadian tersebut pengendara spm mengalami luka dan sementara dirawat di RSUD Johannes Kupang.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(282, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/86/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-05', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrak sesama kendaraan belok kanan', 20, 500000, 0, 'Berawal saat pengemudi mobil Pick Up bergerak dari arah Bundaran Gubernur atau Traffic Light Eltari hendak ke arah Pasar Inpres Naikoten dengan kecepatan tinggi, saat tiba di Tkp datang pengendara sepeda motor dari sebelah kanan dan melingkar jalan hendak ke arah yang sama dengan mobil Pick Up tersebut, namun karena jarak mobil sudah dekat sehingga mobil tetap menabrak pengendara sepeda motor tersebut. Akibat dari tabrakan tersebut pengendara sepeda motor mengalami luka dan di rawat di RSUD Prof.Dr.WZ.Johanes Kupang.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(283, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/99/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-18', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kiri dengan kendaraan yang jalan lurus', 20, 300000, 0, 'Berawal saat Mobil Honda Jazz yang bergerak dari arah Kantor Gubernur menuju Rumjab Gub dan kemudian hendak masuk dalam Rumjab. Ketika hendak belok kiri hendak masuk dan sudah diarahkan oleh petugas Polisi Militer yg berjaga didepan tiba-tiba dari belakang datang Spm Honda Beat berusaha menyalip dari kiri dan lengsung menabrak bagian samping kiri mobil Honda Jazz. Pengendara mengalami luka-luka dan dirawat di RSU Kupang.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(284, 1, 2, 3, 3, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/A/128/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-24', 1, 0, 0, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan dari arah kiri', 20, 2000000, 0, 'Berawal saat pengendara SPM bergerak dari arah bundaran Eltari dengan tujuan ke arah Polda sedangkan pengemudi mobil Suzuki Pick up bergerak dari arah Polda hendak ke rumah jabatan Gubernur NTT setibanya di TKP pengendara mobil langsung memotong jalan dan tidak memperhatikan pengendara SPM yang datang dari arah jalan prioritas sehingga terjadi kecelakaan . Akibat dari kejadian tersebut pengendara SPM mengalami luka-luka dan di larikan ke RSB Kupang dan kedua kendaraan mengalami kerugian material.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(285, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/136/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-03', 0, 0, 2, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 200000, 0, 'Berawal pada saat Pengendara Spm Yamaha Jupiter bergerak dgn kecepatan tinggi dri arah traffic light polda menuju ke arah pos eltari.setibanya di tkp tepatnya di depan kantor DPR propinsi pengendara Spm hilang kontrol sehingga menabrak taman jalan.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(286, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/149/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-17', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat Sepeda Motor Yamaha Mio M3 Nopol DH 2516 MF bergerak dari arah Bundaran Gubernur menuju kerarah Simpang Hero, karena kondisi pengendara dalam keadan mengantuk sehingga sepeda motor langsung menabrak pinggir trotoar dan jatuh menabrak beton tiang listrik yang berada diatas trotoar', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(287, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/158/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-26', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 20, 100000, 0, 'Berawal saat Sepeda motor Honda Beat Nopol DH-2754 AM yang bergerak dari arah Jalan Palapa hendak ke arah bundaran Eltari saat sampai di TKP hendak berhenti di pinggir jalan untuk minum air kelapa , secara tiba- tiba sepeda motor Honda Beat No. pol DH 6964 KD melambung kiri dan menabrak sepeda motor Beat No.Pol DH 2754 AM dari arah belakang,', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(288, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/179/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-20', 0, 0, 3, 'Tempat Ibadah', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 500000, 0, 'Berawal saat sepeda motor Yamaha Mio Nopol DH 5257 HW bergerak diatas Jalan EL Tari dari arah Kantor Gubernur menuju kearah Pasar Inpres, setibanya di TKP menabrak korban pejalan kaki yang berjalan menyeberang jalan dari kiri ke kanan jalan.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(289, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/A/232/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-21', 0, 1, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 20, 1000000, 1000000, 'Berawal dari kedua kendaraan bergerak bersamaan menuju ke arah pos El Tari Setibanya di TKP sepeda motor Honda Scoopy hendak melambung kendaraan Toyota Rush yang berada di depannya, namun tiba-tiba mobil tersebut berbelok ke arah kanan sehingga terjadi tabrakan. Atas kejadian tersebut penumpang sepeda motor Scoopy dan pengendara dilarikan ke Rumah Sakit Bhayangkara Kupang', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(290, 1, 2, 4, 1, 2, 1, 1, 1, 1, 1, 3, 2, 'LP/A/251/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-11', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 20, 3000000, 3000000, 'Bermula saat Spm Honda Beat yang bergerak dari arah Polda menuju arah Bundaran Gubernur yang sebelum kejadian hendak memutar arah melalui putaran jalan yang ada di TKP. Saat bergerak memutar pengendara diduga tidak memperhatikan kendaraan lain dan langsung memutar masuk kebagian jalur jalan sebelah kanan bersamaan datang Mobil Isuzu Traga yang melaju dengan kecepatan tinggi dari bagian kanan jalan dari arah Bundaran Gubernur menuju arah Simpang Hero sehingga langsung menabrak bagian belakang Spm Honda Beat yang sudah berada dekat dibagian depan Mobil Isuzu Traga.', NULL, 39, '2024-07-06 21:42:11', '2024-07-06 21:42:11'),
(291, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1917/II/2021/LL', '2021-02-11', 0, 0, 3, 'Simpang', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 300000, 0, 'Berawal saat pengendara Spm Honda Beat yg bergerak dari arah Jalur 40 menuju ke arah Oepura, sesampainya di Tkp, pengendara Spm Yamaha Jupiter Z menyalakan lampu Sign kanan dan hendak belok ke arah jalan Oebolifo ll, namun pada saat hendak belok kanan tiba2 ditabrak  dibagian kanan oleh Spm Yamaha Jupiter Z yg melaju dari arah jalur 40 menujh ke arah Oepura. Akibat dari kejadian tersebut pengendara Spm Yamaha Jupiter Z, pengendara Spm Honda Beat beserta penumpang terjatuh dan mengalami luka luka dan langsung dibawah ke RS Boromeus Kupang.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(292, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1927/III/2021/LL', '2021-03-07', 0, 0, 1, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat pengendara Spm yamaha Mio bergerak dari arah oepura menuju ke arah sikumana, sesampainya di Tkp berusaha menghindari  seekor anjing yg berada diatas jalan raya sehingga kehilangan kendali dan oleng ke kiri jalan sehingga terjatuh. Akibat dari kejadian tersebut pengendara spm yamaha mio mengalami luka luka dan dibawah ke rumah sakit bhayangkara kupang.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(293, 3, 2, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1929/III/2021/LL', '2021-03-10', 1, 0, 0, 'Stasiun KA/Terminal Bis', 'Tabrakan depan - depan', 20, 100000, 0, 'Berawal saat Spm Honda Vario Nopol DH 3756 HJ bergerak dari arah Oelomin menuju kearah Oepura, setibanya di TKP (informasi awal bersenggolan dengan mobil yang belum teridentifikasi yang bergerak dari arah berlawanan) sehingga mengakibatkan Spm terjatuh dan pengendaranya MENINGGAL DUNIA di TKP sedangkan mobil yang diduga menjadi lawan tabraknya terus bergerak menuju kearah Oelomin.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(294, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1955/IV/2021/LL', '2021-04-21', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat Spm Yamaha Vixion yang bergerak dari arah oepura  hendak menuju kearah sikumana dengan kecepatan kencang, sesampainya di TKP dekat pegadaian sikumana pengendara hilang kendali dan menabrak trotoar jalan dan terjatuh, akibat kejadian tersebut pengendara mengalami luka luka dan kendaraan mengalami kerusakan material', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(295, 1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1968/V/2021/LL', '2021-05-05', 0, 0, 1, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 100000, 0, 'Berawal saat Spm Honda Scoopy bergerak dari arah Rumah sakit Boromeus menuju ke arah sikumana, sesampainya di Tkp karena terdapat gundukan di tkp sehingga pengendara mencoba menghindar namun terjatuh dan mengalami luka luka dan langsung dilarikan ke RSU W. Z Johannes Kupang.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(296, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2006/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-10', 0, 0, 1, 'Simpang', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 0, 100000, 0, 'Berawal dari spm honda revo  yg bergerak dari arah oepura menuju ke arah sikumana, sesampainya di tkp saat hendak belok kanan ke jln oekam datang sepeda motor honda Crf dari arah berlawanan dan langsung menabrak bagian lampu belakang dari spm revo. Akibat dari kejadian tersebut penumpang spm revo mengalami luka dan dirawat dirmh sakit.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(297, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2032/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-13', 0, 0, 2, 'Rumah / Perumahan / Pemukiman', 'Tabrakan saat menyalip', 0, 1000000, 0, 'Berawal dari pengendara Spm Honda Supra X125 yang bergerak dari arah Kupang menuju arah Baun sedangkan  Spm Honda Revo bergerak dari Arah baun menuju Kupang setibanya di tkp Pengendara Spm Honda Revo yang ingin melambung kanan untuk  menghindari mobil tengki yang sedang pelan di karenakan ada lubang di depannya sehingga Spm Honda Revo mengambil lajur kanan dan menabrak Spm Honda Supra X125 yang datang dari arah berlawanan kedua korban langsung di antar ke Rs. Boromeus.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(298, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2041/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-26', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 500000, 0, 'Berawal dari Spm Yamaha Jupiter MX melaju dari arah Belo menuju ke arah sikumana, ketika sampai di TKP tidak perhatikan  ada SPM yang melambung dan pangsung memotong jalur SPM Yamaha Jupiter MX sehingga pengendara SPM Yamaha Jupiter MX terjatuh sendiri hingga mengalami luka-luka dan dibantu warga diantar ke RS.Charolus Borumeus.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(299, 1, 2, 4, 2, 2, 1, 1, 1, 5, 1, 2, 2, 'LP/B/2072/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-03', 0, 1, 1, 'Simpang', 'Tabrakan depan - belakang', 0, 3000000, 0, 'Berawal saat kedua kendaraan bergerak dari arah yang sama yakni dari arah Belo menuju kearah Oepura diatas jalan H.R.Koroh, setibanya di Tkp dijalan menurun karena kondisi jalan basah akibat hujan dan pengendara Spm melakukan pengereman mendadak sehingga Spm langsung terjatuh dan pengemudi Mbl Honda Jazz Nopol DH 1131 SS yang berada dibelakang kaget sehingga menabrak dan menyeret pengendara Spm, dimana akibat dari kejadian tersebut pengendara dan penumpang Spm mengalalmi luka-luka dan sementara dirawat di RS Boroomeus Kupang, serta kedua kendaraan mengalami kerusakan material.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(300, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2080/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-13', 0, 0, 1, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'erawal saat SPM Yamaha Fino DH 3794 HT bergerak dari arah sikumana menuju oepura,saat sampai di TKP pengendara yamah Fino DH 3794 HT kaget saat melihat Microlet berhenti secara tiba tiba dan pengendara Yamaha Fino terjatuh.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(301, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2086/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-17', 0, 0, 2, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 500000, 0, 'Berawal saat SPM honda beat DH 3505 KL bergerak dari arah Oepura menuju Sikumana,saat sampai di TKP pengendara honda beat DH 3505 KL kaget saat melihat lobang di depannya sehingga mengerem mendadak namun pengendara kehilangan kendali dan terjatuh. Akibatnya pengendara dan penumpang mengalami luka- luka dan di rawat di RSUD Yohannes Kupang.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(302, 1, 2, 3, 2, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/23/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-01-26', 0, 1, 0, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat pengendara melaju dari arah Jalur 40 hendak kearah Oepura, sesampainya di TKP kehilangan kendali karena masuk ke jalan berlubang sehingga terjadi kecelakaam', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(303, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/144/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-10', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat menyalip', 20, 1000000, 0, 'SM Honda Beat DH-3046-KG melambung kendaraan di depannya dengan tidak berhati-hati sehingga bertabrakan dengan SM Honda Beat DH-4579-KD yang datang dari arah berlawanan', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(304, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/147/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-11', 0, 0, 2, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 200000, 0, 'Berawal saat SM Honda Beat melaju dari arah Oepura kearah Jalur 40, sesampainya di TKP menabrak Pejalan Kaki yang pada saat itu sedang menyeberang jalan dari kiri jalan ke kanan jalan', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(305, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/205/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-18', 0, 0, 3, 'Stasiun KA/Terminal Bis', 'Tabrakan depan - depan', 20, 500000, 0, 'Bermula saat Spm Yamaha Mio 125 yang melaju dari arah Oelomin menuju arah sikumana yang berkendara sambil bermain handphone tidak melihat kedepan dan mengambil jalur jalan sebelah kanan hingga menabrak Spm Yamaha Fino yang bergerak dari arah berlawanan.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(306, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/254/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-15', 0, 0, 1, 'Sekolah/ Kampus', 'Di ruas jalan, pejalan kaki di bahu jalan atau di trotoar', 20, 0, 0, 'Bermula saat mobil angkot Ex-Ride yang melaju dari arah sikumana menuju arah jalur 40, ketika sampai di TKP depan sekolah Tunas Gloria sikumana pengemudi melihat adanya pejalan kaki yang sedang berjalan di bahu kiri jalan, tiba2 langsung menyerempet pejalan kaki sehingga terjatuh. Akibat dari kejadian tersebut pejalan kaki langsung dilarikan ke rumah sakit boromeus kupang.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(307, 1, 2, 3, 1, 2, 1, 1, 3, 1, 1, 2, 2, 'LP/A/272/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-10', 0, 0, 1, 'Simpang', 'Di ruas jalan, pejalan kaki di bahu jalan atau di trotoar', 20, 5000, 0, 'Berawal saat pengemudi mbl Hilux dh. 180 wa bergerak dari jembatan petuk dengan tujuan ke arah tenau. Setibahnya di TKP tepatnya sebelah perempatan jalur 40. Saat mobil sedang melintas pengemudi mobil melihat pjk yang ada sementara berdiri di pinggir jalan dengan seseorang.   Dengan tiba2 saja Pjk di pukul sehingga terjatuh terbentur ke bodi mbl belakang kiri yg saat sedang melintas. Atas kejadian tersebut pengemudi langsung berhenti dan menolong pjk untuk di bw ke RS. Boromeus Kupang.', NULL, 46, '2024-07-06 21:42:49', '2024-07-06 21:42:49'),
(308, 1, 2, 3, 2, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1950/IV/2021/LL', '2021-04-15', 0, 1, 0, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 50000, 0, 'Berawal saat pengendara Spm Honda Revo tersebut bergerak dari arah Bundaran PU hendak ke arah Patung Kirab Fatululi, saat tiba di Tkp di duga karena pengendara ngantuk sehingga hilang kendali dan keluar jalur jalan dan terjatuh di kanan jalan.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(309, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1949/IV/2021/LL', '2021-04-15', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 0, 100000, 0, 'Berawal saat Spm Vespa Nopol DH 3536 KA bergerak dari arah Konsulado kearah Bundaran Gubernur, setibanya di TKP menabrak Spm Honda Beat Nopol DH 4696 KH yang bergerak searah diepannya sehingga mengakibatkan kedua kendaraan terjatuh bersama pengendaranya. Akibat kejadian tersebut kedua pengendara mengalami luka-luka dan kedua kendaraan mengalami kerusakan material.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(310, 2, 2, 3, 3, 1, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1957/IV/2021/LL', '2021-04-23', 1, 0, 1, 'Air Mancur/ Bundaran', 'Tabrakan depan - belakang', 0, 10000000, 0, 'Berawal saat Mobil Truck TNI-AU bergerak dengan kecepatan tinggi dari arah Timur atau arah Gedung Keuangan hendak ke arah barat atau ke arah bundaran Kirab, saat tiba di Tkp pengemudi tidak dapat mengendalikan laju mobil truck tersebut karena mengalami REM BLONG sehingga menabrak dari arah belakang  Pesepeda dan menyeretnya, kemudian menabark mobil avansa kemudian menabrak lagi mobil Box di mana posisi dari Pesepeda berada di antara Mobil Truck TNI -AU dan Mobil Box sehingga mengakibatkan kepala pesepeda terjepit dan pecah, kemudian mobil box terdorong ke depan dan menabrak mobil dam truck yang saat itu sedang berhenti di traffic light.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(311, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1959/IV/2021/LL', '2021-04-23', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Spacy melaju dari arah Kantor Gubernur menuju ke arah Bundaran PU, sesampainya di TKP menghindari seekor kucing yang berada ditengah jalan sehingga kehilangan kendali dan terjatuh. Akibat dari kejadian tersebut pengendara Spm honda Spacy mengalami luka luka dan dibawah ke Rumah Sakit  Wirasakti.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(312, 1, 1, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1965/V/2021/LL', '2021-05-03', 0, 1, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 300000, 0, 'Berawal saat Spm yamaha jupiter mx melaju dari arah kantor Gubernur menuju ke arah Fatululi, sesampainya di tkp pengendara spm yamaha mx mengantuk dan hilang kendali sehingga keluar jalur ke kanan dan terjatuh. Akibat dari kejadian tersebut pengendara dan penumpang mengalami luka luka dan dibawa ke Rumah sakit Siloam.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(313, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1979/V/2021/LL', '2021-05-12', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Scoopy Nopol DH 5906 KN yang bergerak dari arah Bundaran Kantor Gubernur menuju arah Ruko Oebobo yang sampai di TKP pengendara secara tiba-tiba mengerem mendadak karena berusaha menghindari seekor anjing yang berlari memotong jalan.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(314, 3, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1980/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-13', 1, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan depan - belakang', 20, 100000, 0, 'Berawal saat Spm Suzuki Skywave Nopol DH 2863 AN bergerak diatas Jalan Frans Seda diduga dari arah Tamnos menuju kearah Bundaran Tirosa, setibanya di TKP bertabrakan dengan Spm yang tidak teridentifikasi sehingga kedua Spm terjatuh mengakibatkan pengendara dan penumpang Spm Suzuki Skywave Nopol DH 2863 AN terluka. Belum diketahui penyebab tabrakan karena pengendara dan penumpang Spm Suzuki Skywave Nopol DH 2863 AN belum sadarkan diri sedangkan setelah petugas tiba di TKP lawan tabrak sudah meninggalkan TKP membawa sepeda motornya.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(315, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/B/1987/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-23', 0, 0, 3, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kanan', 0, 200000, 0, 'Berawal saat Spm Honda Revo Nopol DH 4738 HJ bergerak dari arah Lippo menuju kearah jalan Thamrin, setibanya di TKP depan bundarÃ n patung kirab bertabrakan dengan Spm Honda Beat DH 3035 KH yang datang dari arah bundaran PU hendak kearah Walikota (bergerak menerobos Trafic Light). Akibatnya kedua pengendara dan penumpang terjatuh dan  mengalami luka-luka, kemudian di rawat di Rumah Sakit Siloam Kupang.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(316, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2014/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-19', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 0, 200000, 0, 'Berawal saat kedua kendaraan bergerak dari arah yang sama yaitu dari arah bundaran PU hendak menuju ke arah Fatululi dengan posisi spm yamaha Fino berada di depan dan sesampai di TKP putaran Gedung Keuangan Negara pada saat mobil melambung tidak memperhitungkan yamaha fino yang ada di depannya sehingga menyenggol spm tersebut. Akibatnya penumpang mengalami luka-luka dan di rawat di RS Kartini.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(317, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2067/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-29', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 1000000, 0, 'Berawal dari Spm yang bergerak kencang dari arah Kantor Gubernur menuju arah Ruko Oebobo karena pengendara mengantuk dan tidak menguasai kondisi jalan menikung sehingga bergerak keluar dari bibir aspal kanan hingga menabrak batu dan terpental menganai tiang listrik.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(318, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/B/2075/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-07', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 200000, 0, 'Berawal saat Pengendara Spm Honda Supra x yg bergerak dari arah Pasar oebobo menuju ke arah Gedung keuangan, sesampainya di Traffic Ligth Fatululi, pada saat lampu hijau menyala dan semua kendaraan bergerak secara bersamaan dan pengendara Spm Hknda Supra X gugup dan hilang kendali sehingga terjatuh, akibat dari kejadian tersebut pemgendra mengalami luka luka dan dirawat di rumah sakit Kartini Kupang.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(319, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2105/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-10', 1, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 0, 200000, 0, 'Berawal dari pengendara sepeda motor Yamaha Nmax  bergerak dr arah KFC Frans seda dengan kecepatan cukup kencang menabrak pejalan kaki yang ada sementara menyebrang jalan dari arah kiri jalan ke kanan jalan,. Akibat dari kejadian tersebut pengendara dan pejalan kaki di larikan ke RS. Kartini Kupang.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(320, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2134/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-22', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 200000, 0, 'Berawal dari Pengendara Spm yamaha mio yang bergerak dari  Pos Eltari  menuju ke arah Fatululi sesampainya di Tkp tepatnya di depan Ferari , Pengendara Spm yamaha mio  kaget karena ada pengendara lain yang hendak melambungnya sehingga hilang kendali dan terjatuh. Atas kejadian tersebut Korban di larikan ke RS. Kota Kupang.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(321, 1, 2, 3, 1, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/28/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-10', 0, 0, 1, 'Rumah Sakit', 'Kendaraan Out of Control keluar ke kiri jalan', 60, 200000, 0, 'Berawal saat Spm melaju dari arah Bundaran Tirosa hendak kearah Gubernur sesampainya di TKP kehilangan kendali karena masuk ke jalan berlubsng sehingga terjadi kecelakan', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(322, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/38/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-20', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 40, 10000000, 0, 'Berawal saat kedua kendaraan bergerak bersamaan dari arah Bundaran PU menuju ke arah Lampu Merah Fatululi sesampainya di TKP depan kantor Statistik Kota pengemudi Mobil Toyota Avanza dengan kecepatan yang tinggi secara tiba tiba menabrak pengendara Honda Scoopy  DH 4597 KK dari arah belakang sehingga sepeda motor Honda Scoopy terseret Mobil Toyota Avanza dan menabrak pohon. Akibat dari kejadian tersebut pengendara sepeda motor Honda Scoopy mengalami luka luka dan di larikan ke RS. Leona.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(323, 1, 2, 3, 3, 2, 1, 3, 1, 1, 1, 1, 2, 'LP/A/64/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-22', 1, 0, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Di ruas jalan, pejalan kaki berdiri ragu-ragu di tengah jalan', 20, 0, 0, 'Bermula saat Mobil Daihatsu Xenia Nopol DH-1291-EC bergerak masuk dalam kompleks Timor Rental Mobil dekat dengan garasi parkiran mobil yang mana pengemudi saat itu tidak perhatian ke depan sambil terus melaju sedangkan didepan mobil ada anak kecil yang sementara bermain dan karena tidak melihat, pengemudi menabrak anak kecil tersebut.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(324, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/98/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-18', 0, 0, 1, 'Air Mancur/ Bundaran', 'Tabrakan depan - belakang', 20, 500000, 0, 'Berawal saat mobil Honda Brio bergerak diatas Jalan Frans Seda dari arah El Tari menuju kearah Taman Nostalgia, setibanya di TKP menabrak sepeda motor Yamaha Mio di depannya yang sudah berhenti karena APILL sudah lampu merah. Akibat kejadian tersebut pengendara sepeda motor terjatuh dan terluka sedangkan kedua kendaraan mengalami kerusakan material.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(325, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/106/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-23', 0, 0, 3, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 500000, 0, 'Berawal dari pengendara bergerak dari arah tamnos dengan tujuan ke arah bundara pu. Setibanya di TKP depan kantor DPR kota, datang dari arah belakang pengemudi.mbl pick up yang melambung sehingga menyenggol pengendara SPM dari arah samping kiri. Akibat dari kejadian tersebut pengendara dan penumpang di larikan ke RS. Kota Kupang.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(326, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/135/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-03', 1, 0, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kanan jalan', 20, 2000000, 0, 'Berawal dari pengendara spm bergerak dengan kecepatan tinggi dari arah traffic light Fatululi dengan tujuan ke arah jalan eltari, setibahnya di TKP tepatnya di depan cafe joe pengendara Spm hilang kendali karena tidak dapat membelok ke arah kiri jalan. Sehingga pengendara SPM melaju terus ke arah taman jalan.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(327, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/151/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-17', 0, 0, 1, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 100000, 0, 'Berawal saat SM Honda Beta DH-2432-KV melaju dari arah Pospol Fatululi kearah Bundaran Tirosa, sesampainya di TKP depan Mapolresta Kupang Kota menabrak Pejalan Kaki yang tiba-tiba menyeberang.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(328, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/172/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-15', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan depan - belakang', 20, 100000, 0, 'Berawal saat sepeda motor satria FU DH 6458 HU bergerak dr arah Bundaran PU menuju kearah Fatululi, setibanya di TKP di pepet oleh sepeda motor tidak teridentifikasi dan langsung menendang pengendara sepeda motor satria FU sampai terjatuh dan saat bersamaan ada sepeda motpr tidak teridentifikasi yang berada di belakang dan karena jarak yang dekat sehingga langsung menabrak pengendara sepeda motor satria FU yang terjatuh tersebut selanjutnya sepeda motor penendang dan penabrak langsung melarikan diri kearah Fatululi', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(329, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/188/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-02', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kanan jalan', 20, 500000, 0, 'Bermula saat Sepeda motor Honda Beat yang bergerak dari arah Bundaran PU menuju arah Fatululi. Diduga pengendara kelelahan dan mengantuk sehingga kendaraan bergerak kebagian pinggir jalan sebelah kanan melindas tumpahan pasir yang ada dibagian atas aspal jalan sebelah kanan dan terseret lurus kedepan.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(330, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/A/202/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-15', 0, 0, 1, 'Tempat Wisata', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 1000000, 0, 'Bermula saat mobil Honda jazz yang melaju dari arah Fatululi menuju arah bundaran Tirosa, ketika sampai di TKP depan taman Nostalgia pengemudi tidak melihat adanya pejalan kaki yang sedang menyeberang jalan dari kiri ke kanan, karena jarak sudah dekat sehingga pengemudi tidak bisa menghindar dan langsung menabrak pejalan kaki tersebut.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(331, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/211/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-21', 0, 0, 3, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 100000, 0, 'Berawal kedua Spm berjalan searah dari arah lampu merah Fatululi menuju ke arah walikota,setibanya di Tkp tepatnya di depan kantor DPRD Kota Kupang,sepeda motor vixon hendak melambung Spm honda GLM II, namun tas samping muatan spm Vixon menyenggol stir motor GLM II sehingga terjatuh.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(332, 1, 2, 3, 3, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/A/221/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-02', 1, 0, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kanan jalan', 20, 10000000, 0, 'Berawal pada saat Mobil Toyota Fortuner Nopol DH-274-XX bergerak dari arah bundaran Eltari hendak ke arah Fatululi setibanya di Tkp tepatnya di dekat hotel Debitos, Pengemudi mobil Toyota Fortuner kehilangan kendali sehingga bergerak keluar aspal jalan sebelah kanan dan terjatuh di luar jalan yang cukup dalam dan tersangkut di sebuah pohon lontar pada bagian pintu pengemudi sehingga sulit dan memakan waktu lama dalam proses evakuasi. Akibat dari Kejadian tersebut Korban sempat kejang-kejang didalam mobil namun karena posisi terjepit sehingga diduga korban meninggal dunia dalam mobil kemudian dilarikan ke RS Bhayangkara Kupang sekitar pukul 04.30 WITA dan dinyatakan telah meninggal dunia.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(333, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/228/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-15', 0, 0, 2, 'Sekolah/ Kampus', 'Tabrakan depan - belakang', 20, 500000, 500000, 'Berawal saat Sepeda motor Honda Scoopy Nopol DH 4693 KH bergerak diatas Jln. Frans Seda dari arah Fatululi kearah Liliba, setibanya di TKP diduga karena dalam pengaruh miras menabrak bagian belakang sepeda motor Honda Revo DH 5615 KD yang bergerak di depannya sehingga kedua sepeda motor terjatuh. Kemudian pengendara Sepeda motor Honda Scoopy Nopol DH 4693 KH dan penumpang sepeda motor Honda Revo DH 5615 KD dibawa ke RS Kartini.', NULL, 43, '2024-07-06 21:43:15', '2024-07-06 21:43:15'),
(334, 1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1924/III/2021/LL', '2021-03-03', 0, 0, 2, 'SPBU', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 500000, 0, 'Berawal dari pengendara spm honda beat bergerak dari arah Oebufu dengan tujuan ke arah rÃ mayana dengan kecepatan sedang, sedangkan pengendara spm  honda supra bergerak keluar dari arah pertamina dengan tujuan ke arah Oebufu, setibanya di.tkp tepatnya di depan pertamina pengendara spm  honda supra langsung memotong tanpa melihat arah datangnya motor honda beat sehingga kedua kendaraan mengalami kecelakaan. Akibat dari kejadian tersebut  pengendara  honda beat dan penumpangnya  di larikan ke rs leona kupang.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(335, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1953/IV/2021/LL', '2021-04-19', 0, 2, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip', 20, 1000000, 0, 'Berawal saat Spm Honda Revo warna hitam tanpa TNKB  bergerak diatas Jl. WJ Lalamentik dari arah Naimata menuju kearah Oebobo, setibanya di TKP melambung kanan kendaraan di depannya sampai masuk ke jalur kanan sehingga bertabrakan dengan Spm Honda Beat Nopol DH 2119 KL yang datang dari arah berlawanan. Akibat kejadia tersebut kedua sepeda motor bersama pengendara dan penumpangnya terjatuh dan mengalami luka-luka kemudian pengendara Spm Honda Revo warna hitam tanpa TNKB berusaha lari meninggalkan TKP mengendarai sepeda motornya tetapi terjatuh lagi dan menabrak mobil yang tidak teridentifikasi yang sedang parkir di pinggir kanan jalan.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(336, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1958/IV/2021/LL', '2021-04-23', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2885 KR tunggal bergerak dari arah Bundara Gubernur menuju kearah Ramaana Mall, setibanya di TKP tiba-tiba kehilangan kendali dan terjatuh lalu terseret diatas aspal mengakibatkan pengendara mengalami luka-luka dan Spm mengalami kerusakan material.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(337, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1978/V/2021/LL', '2021-05-12', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 0, 4000000, 0, 'Berawal saat Mobil Suzuki Katana bergerak dari arah Ramayana Mall menuju Kantor Gubernur yang sampai TKP sementara bergerak belok kanan menuju arah jalan Bajawa ditabrak oleh Spm Honda Verza yabg bergerak lurus dari arah kantor Gubernur menuju arah Ramayana Mall.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(338, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1998/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-03', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 0, 2000000, 0, 'Berawal dari pengendara SPM Yamaha Mio Sporty bergerak dari arah ramaya dengan tujuan ke arah lesehan Oebufu. Sedangkan pengendara SPM.yamaha.mio soul bergerak dari arah oebufu dgn tujuan ke arah samping korem, setibahnya di TKP pengendara SPM Yamaha Mio sporty membelok ke arah kanan jalan tanpa kurang memperhatikan pengendara Yamaha Mio soul, sehingga  terjadi tabrakan. Akibat dari tabrakan kedua pengendara di larikan ke rsu kpg. Dan kedua kendaraan mengalami kerusakan material.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(339, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2036/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-20', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 5000000, 0, 'Berawal dari Spm Yamaha R 15 yang melaju dari arah Gedung olah raga menuju arah  Makorem sedangkan Mobil Kijang  Toyota dari arah Makorem menuju  Gedung olah raga setibanya di tkp Mobil Kijang Toyota  yang ingin berbelok  mengambil lajur kanan  yang cukup banyak dan tidak melihat kalau ada pengendara Spm Yamaha R15  yang datang dari arah berlawanan sehingga langsung menabraknya kemudian kedua korban terjatuh dan terseret sehingga di larikan ke RS Bhayangkara.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(340, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2051/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-10', 1, 0, 2, 'Kantor/ Perkantoran', 'Di ruas jalan, pejalan kaki menyeberang dari kanan ke kiri', 40, 100000, 0, 'Berawal saat Spm Suzuki Nex II Nopol DH 2527 KJ bergerak diatas Jalan Thamrin dari arah Korem menuju kearah Patung Kirab, setibanya di TKP menabrak korban pejalan kaki yang sedang menyeberang jalan dari pinggir kanan menuju ke kiri jalan sehingga mengakibatkan pejalan kaki dan pemotor terjatuh dan mengalami luka-luka.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(341, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2053/VIII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-08-13', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 1000000, 0, 'Berawal saat Spm Honda Beat yang bergerak dari arah Kantor Lurah Oebobo menuju  ke arah  Hotel Charvita setibanya di Tkp tepatnya di depan Kantor PU Provinsi Lama Pengendara Spm Honda Beat tersebut yang dalam keadaan mengatuk hilang kendali sehingga menabrak tiang listrik yang berada di sisi kiri jalan.Atas kejadian tersebut Pengendara Spm Honda Beat di larikan ke RSU Kupang.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(342, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2073/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-05', 0, 0, 2, 'Rumah / Perumahan / Pemukiman', 'Di ruas jalan, pejalan kaki menyeberang dari kanan ke kiri', 0, 100000, 0, 'Berawal saat Spm honda beat street  Nopol DH 2986 FH bergerak diatas Jalan W.J.Lalamentik dari arah Korem menuju kearah Eltari, setibanya di TKP menabrak korban pejalan kaki yang sedang menyeberang jalan dari pinggir kanan menuju ke kiri jalan sehingga mengakibatkan pejalan kaki dan pemotor terjatuh dan mengalami luka-luka.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(343, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2095/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-03', 0, 0, 1, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 100000, 0, 'Berawal saat Spm Honda Supra X Nopol S 6533 JBC bergerak dari arah ramayana menuju kearah oebufu selanjutnya belok kiri di pertigaan jalan Thamrin, setibanya di Tkp saat belok kiri roda depan Spm selip sehingga Spm langsung terjatuh yang mengakibatkan pengendara Spm mengalami luka-luka.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(344, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2110/X/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-10-22', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 200000, 0, 'Berawal dari pengendara SPM melaju dari arah Hotel ROMYTA kearah Oebufu sesampainya di TKP karena tidak memperhatikan arah depan sehingga mengerem mendadak dan terjadi kecelakaan', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(345, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/22/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-01-26', 2, 0, 0, 'Kantor/ Perkantoran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 2000000, 0, 'Berawal saat Pengendara  Sepeda Motor Honda Beat yang bergerak dari arah Kantor Lurah Oebobo Menuju Ke arah Bundaran Gubernur setibanya di Tkp tepatnya di samping Kantor PU Provinsi Lama tiba - tiba datang Pengendara Sepeda Motor Yamaha Mio dari arah Gang Bengkel Kantor PU menuju ke arah Hotel Greenia dan tidak memperhatikan  kalau ada Pengendara Sepeda Motor Honda Beat yang sedang melintas sehingga terjadilah tabrakan .Atas Kejadian tersebut kedua Pengendara Sepeda Motor dilarikan ke Rumah Sakit Bhayangkara Titus Uly Kupang.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(346, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/37/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-19', 0, 0, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - depan', 20, 1000000, 0, 'Berawal saat Sepeda motor Yamaha Vixion Nopol DH 6297 HC bergerak diatas Jalan WJ Lalamentik dari arah Bundaran Oebufu menuju kearah Naimata, setibabnya di TKP bertabrakan dengan Sepeda Motor Honda Supra X 125 Nopol DH 4749 KE yang datang dari arah berlawanan sehingga kedua pengendara terjatuh dan terluka.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(347, 1, 2, 5, 1, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/41/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-22', 0, 0, 2, 'Simpang', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 500000, 0, 'Berawal saat pengendara Spm Honda CRF bergerak dari arah  Oebufu hendak  membelok ke arah samping Korem saat tiba di Tkp, datang pengendara Spm  suzuki Satria dari arah GOR hendak ke arah Oebufu, karena pengenara spm suzuki satria tidak memperhatikan spm honda CRF sehingga terjadi tabrakan. Akibat dari kecelakaan tersebut kedua pengendara mengalami luka-luka dan di rawat di RS Bhayangkara.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(348, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/100/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-19', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan dari arah kanan', 20, 300000, 0, 'Berawal saat Sepeda motor honda Scoopy Nopol DH 2184 KS bergerak dari arah Oebufu menuju kearah Ramayana diatas jalan W.J.Lalamentik, setibanya di Tkp samping Grapari Telkomsel tiba-tiba muncul Mbl Carry Pick Up DH 8369 AF bergerak memotong jalan hendak kearah oebufu dan karena jarak yang sangat dekat sehingga langsung terjadi tabrakan yang mengakibatkan sepeda motor jatuh terseret, dimana akibat dari kejadian tersebut pengendara sepeda motor mengalami luka dan sementara dirawat di RS Leona kupang serta kedu kendaraan mengalami kerusakan material.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(349, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/126/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-24', 0, 0, 3, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - depan', 20, 500000, 0, 'Berawal saat pengendara SM Honda Blade DH-2767-AZ melaju dari arah Oebufu kearah Oebobo sesampainya di TKP melambung kendaraan yang ada di depannya sehingga menabrak SM Honda Beat EB-5128-HD yang datang dari arah berlawanan', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(350, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/176/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-20', 1, 0, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 1000000, 0, 'Berawal saat sepeda motor Yamaha Vixion Nopol DH 2618 KN bergerak diatas Jalan W.J. Lalametik dari arah GOR menuju kearah Hotel Romita, setibanya di TKP (Bank Sampah kelurahan Oebufu) sepeda motor tersebut menabrak pagar besi Bank Sampah lalu terjatuh.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(351, 1, 2, 3, 1, 2, 1, 1, 3, 1, 1, 2, 2, 'LP/A/279/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-22', 0, 0, 3, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kanan', 20, 500000, 0, 'Berawal saat pengendara Spm Yamaha Mio bergerak dari arah Bank Indonesia kearah Jln. Frans Seda, dan tidak menghiraukan APILL yang menunjukkan isyarat berhenti sehingga bertabrakan dengan Spm Honda Vario yang bergerak dari arah Flobamora Mall kearah Oebobo.', NULL, 50, '2024-07-06 21:43:41', '2024-07-06 21:43:41'),
(352, 1, 2, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1907/II/2021/LL', '2021-02-01', 1, 0, 0, 'Sekolah/ Kampus', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 100000, 0, 'Berawal saat pengendara Spm Yamaha Mio bergerak dari arah Bundaran Oesapa hendak ke arah Kampus Undana, saat sampai di Tkp dekat kampus Unkris, di duga karena pengendara dengan kecepatann tinggi sehingga keluar jalur dan menabrak Trotoar kemuadian terseret dan menabrak tiang Listrik.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(353, 3, 1, 5, 1, 2, 1, 1, 3, 1, 1, 2, 2, 'LP/1915/1908/II/2021/LL', '2021-02-01', 0, 0, 1, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 0, 100000, 0, 'Berawal saat pengendara Spm Honda Beat  bergerak dari arah Oesapa hendak memutar bundaran menuju ke arah Liliba, saat sampai di TKP atau persisnya di bundaran tiba2 datang spm jenis Yamaha Vixion dari arah Bimoku dengan kecepatan tinggi dan menyerempet spm honda beat tersebut sehingga pengendara dan penumpang terjatuh sedangkan pengendara yamaha Vixion tdk terjatuh sehingga terus bergerak meninggalkan TKP', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22');
INSERT INTO `laka` (`id_laka`, `id_informasi_khusus`, `id_kondisi_cahaya`, `id_cuaca`, `id_tingkat_kecelakaan`, `id_kecelakaan_menonjol`, `id_fungsi_jalan`, `id_kelas_jalan`, `id_tipe_jalan`, `id_permukaan_jalan`, `id_kemiringan_jalan`, `id_status_jalan`, `id_polres`, `no_laka`, `tanggal_kejadian`, `jumlah_meninggal`, `jumlah_luka_berat`, `jumlah_luka_ringan`, `titik_acuan`, `tipe_kecelakaan`, `batas_kecepatan_dilokasi`, `nilai_kerugian_non_kendaraan`, `nilai_kerugian_kendaraan`, `keterangan_kerugian`, `jam_kejadian`, `id_titik_rawan`, `created_at`, `updated_at`) VALUES
(354, 1, 1, 5, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1910/II/2021/LL', '2021-02-04', 1, 0, 0, 'Sekolah/ Kampus', 'Tabrakan dengan material / rambu pekerjaan jalan', 20, 100000, 0, 'Berawal saat pengendara Spm beat  bergerak dari arah kampus undana hendak menuju kearah bundaran oesapa ,sesamapinya di TKP depan kamus unkris diduga menabrak material pavin blok yg berada dibadan jalan sehingga pengendara hilang kendali terjatuh dan terseret,  akibat kejadian tersebut pengendara mengalami luka luka dan dirwat dirumah sakit siloam', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(355, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1956/IV/2021/LL', '2021-04-22', 0, 0, 2, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 200000, 0, 'Berawal saat Spm  mio yang bergerak dari arah tenau  hendak  menuju kearah jalan bawah , dengan kecepetan kencang, sesampainya di TKP dekat kantor navigasi pengendara tidak bisa mengendalikan kendaraanya dan terjatuh menabrak batu yg ada dipinggir jalan, akibat kejadian tersebut pengendara dan penumpang mengalami luka luka dan dirawat di rumah sakit yohanes kupang serta kendaraan mengalami kerusakan material.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(356, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1994/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-01', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat pengendara spm hond beat bergerak dari arah Bandara dan hendak menuju ke arah Baumata, sesampainya di Tkp pengendara berusaha menghindari ke kiri jaln dari seekor anjing yg sedang berada dijalan namun pengendara spm honda beat hilang kendali dan masuk ke semak semak yg berda di kiri jalan, akibat dari kejadian tersebut pengendara mengalami luka luka.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(357, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1995/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-02', 0, 0, 3, 'Simpang', 'Di ruas jalan, pejalan kaki di bahu jalan atau di trotoar', 20, 500000, 0, 'Berawal saat pengendara spm bergerak dr arah penfui menuju kearah simpang oesapa diatas jalan adi sucipto, setibanya di tkp menabrak pejalan kaki yang sementara berjalan menyeberang dari pinggir kanan menuju ke pinggir kiri jalan yang mengakibatkan pejalan kaki dan spm langsung terjatuh, akibat dr kejadian tersebut pejalan kaki mengalami luka dan sementara dirawat di rsud kota kupang sedangkan peng. Spm dirawat di rsu siloam kupang.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(358, 1, 2, 5, 1, 2, 1, 1, 1, 4, 1, 2, 2, 'LP/B/2137/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-25', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan depan - depan', 20, 1000000, 0, 'Berawal dari pengemudi mobil bergerak dari arah patung burung Penfui dgn tujuan ke arah baumata dengan kecepatan tidak terlalu kencang, sedangkan pengendara SPM bergerak dari arah yg berlawanan, setibahnya di TKP pengemudi yg di duga mengantuk mbl yg di kemudikan mengambil jalur kanan sehingga terjadi tabrakan atas kejadian tersebut pengendara SPM di larikan ke RS. Kartini Kupang. Dan kedua kendaraan mengalami kerusakan material.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(359, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2148/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-11', 0, 0, 2, 'Sekolah/ Kampus', 'Tabrakan depan - depan', 20, 500000, 0, 'Berawal saat SPM honda beat bergerak dari arah bundaran Oesapa menuju ke arah Penghijauan. Sedangkan SPM yamaha vixon bergerak dari Penghijauan menuju kearah bundaran Oesapa. Sesampainya di tkp depan UNKRIS pengendara SPM Honda beat bergerak dengan kecepatan tinggi dan masuk ke jalur spm yamaha vixon sehingga kecelakaan tidak bisa di hindarkan . Akibat dari kejadian tersebut kedua pengendara mengalami  luka-luka dan di rawat di RS Kartini dan RS Siloam Kupang.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(360, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2151/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-16', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 5000000, 0, 'berawal dari pengendara SPM Yamaha MX bergerak dari arah baumata dgn tujuan ke arah bandara dgn kecepatan cukup kencang, sedangkan pengemudi mobil bergerak dari arah berlawanan setibahnya di TKP pertigaan jalan. Pengemudi mbl membelok ke arah kanan jalan sehingga terjadi tabrakan, akibat dari tabrakan tersebut kedua pengendara di larikan ke RS. Siloam Kupang dan kedua kendaraan mengalami kerusakan material.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(361, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/15/I/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-01-16', 0, 0, 0, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 20000000, 0, 'Berawal saat mobil Mitsubishi Xpander Nopol DH 1032 BG bergerak diatas Jalan Piet A. tallo masuk ke Bundaran Penghijauan, kemudian bergerak hendak masuk kearah Patung Adipura dan bertabrakan dengan Mobi Toyota Avanza Nopol DH 1575 AZ yang bergerak dari Jalan Herman Johanes memasuki Bundaran Penghijauan. Akibat kejadian tersebut kedua mobil tersebut mengalami kerusakan material.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(362, 3, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/55/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-15', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kanan', 20, 0, 0, 'Berawal dari pengendara SPM bergerak dari arah belakang STIM dengan tujuan ke arah SMA 4, setibahnya di TKP depan kantor Pramuka melaju pengemudi mobil Avanza yang tidak teridentifikasi dari arah belakang langsung menyenggol stir kanan pengendara SPM Viar. Sehingga pengendara SPM Viar oleng kearah kiri jalan dan menyebabkan penumpang SPM terjatuh. Akibat dari kejadian tersebut penumpang dilarikan ke Pustu Oesapa dan dirujuk ke RS. S.K. Lerik Kupang.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(363, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/62/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-26', 0, 0, 1, 'Sekolah/ Kampus', 'Kendaraan Out of Control keluar ke kanan jalan', 40, 500000, 0, 'Kronologis berawal dari pengendara Sepeda Motor Honda Blade EB-5643-HC bergerak dari arah bandara dengan tujuan kearah Undana dengan kecepatan tinggi. Setibanya di TKP pengendara Sepeda Motor kehilangan kendali akibat menabrak pembatas taman jalan. Atas kejadian tersebut pengendara Sepeda Motor dilarikan ke RS. S. K. Lerik Kupang.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(364, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/95/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-15', 0, 1, 1, 'Simpang', 'Tabrakan kendaraan belok kanan dengan kendaraan dari arah kanan', 20, 1000000, 0, 'Berawal saat Sepeda motor Honda supra Nopol DH 4305 HT bergerak dari arah SMA 4 Kupang menuju kearah Liliba, setibanya di TKP hendak berbelok tetapi langsung ditabrak dari samping kanan oleh mobil pick  Nopol DH 9787 BD yang datang dari arah penfui menuju kearah Oesapa. Akibatnya pengendara dan penumpang motor mengalami luka-luka dan dirawat di RS Kartini.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(365, 1, 1, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/102/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-21', 0, 1, 0, 'Simpang', 'Tabrakan samping', 20, 500000, 0, 'Berawal saat Pengendara SM Yamaha Mio M3 bergerak dari arah SMAN 4 dengan tujuan kearah UNKRIS, setibanya di TKP dijalan yang menurun pengendara SPM menunduk ke arah bawah saat melewati jalan menurun. Saat tiba di pertigaan jalan pengendara SPM kaget sehingga menyenggol pengendara SM yg tidak teridentifikasi yang datang dari arah STIM dengan tujuan ke arah UNKRIS. Akibat dari kejadian tersebut pengendara SM Yamaha Mio M3 dilarikan ke RS Kota Kupang.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(366, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/142/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-09', 1, 1, 1, 'Kantor/ Perkantoran', 'Tabrakan depan - depan', 20, 1000000, 0, 'Berawal saat  Pengendara Sepeda Motor Honda Vario No.Pol. DH 6642-HR dan penumpangnya bergerak dari arah Penfui hendak ke arah Oesapa, sedangkan pengendara Sepeda Motor Honda Supra No.Pol.DH 4463-AN dari arah sebaliknya yakni dari arah Oesapa hendak ke arah Penfui, saat tiba di Tkp, karena pengendara Honda Supra dengan kecepatan tinggi sehingga keluar jalur dan masuk ke jalur kanan dan menabrak sepeda motor Honda Vario tersebut.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(367, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/146/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-11', 0, 0, 1, 'Monumen/ Tugu/ Patok', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 500000, 0, 'Berawal saat  Pengendara Sepeda Motor Honda Supra No.Pol. DH 5794 BM  bergerak dari arah Undana hendak ke arah Penfui, sedangkan pengendara Sepeda Motor Honda Supra No.Pol.DH 2803 LB dari arah hotel Neo Aston hendak ke arah Bimoku, saat tiba di Tkp, karena pengendara Honda Supra DH 2803 LB  oleng dan hilang kendali  sehingga bertabrakan dengan kendaraan motor Honda Supra DH 5794 BM.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(368, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/162/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-01', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Di ruas jalan, pejalan kaki menyeberang dari kiri ke kanan', 20, 0, 0, 'Berawal saat sepeda motor yang tidak teridentifikasi bergerak dari arah Timur kearah Barat, setibanya di TKP depan pasar Penfui menabrak korban pejalan kaki sehingga korban terjatuh, lalu pengendara Spm lari meninggalkan TKP membawa sepeda motornya.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(369, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/186/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-01', 0, 0, 2, 'Air Mancur/ Bundaran', 'Tabrak belakang kendaraan depan yang belok kanan', 20, 50000, 0, 'Berawal saat pengendara Sepeda Motor Honda CRF dan penumpangnya bergerak dari arah Oesapa hendak ke arah Penfui, saat sampai di tkp dekat bundaran Adipura, pengendara menyalakan lampu sign kanan hendak membelok, namun dari arah belakang atau dari arah yang sama datang pengendara sepeda motor honda beat dengan kecepatan tinggi  dan langsung menabrak bagian kanan dari sepeda motor honda CRF tersebut sehingga kedua pengendara serta penumpang sepeda motor honda CRF terjatuh di kanan jalan', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(370, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/203/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-13', 0, 0, 2, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 300000, 0, 'Berawal saat Spm Yamaha Jupiter MX bergerak dari arah Bundaran Burung hendak ke arah Oesapa, saat sampai di Tkp depan Kampus Undana, datang pengendara Sepeda Motor Honda Beat dari arah SMA Neg 4 Kupang dan langsung memotong jalan, karena jarak yang sudah dekat sehingga tabrakan tak terhindarkan lagi.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(371, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/226/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-11', 0, 0, 2, 'Simpang', 'Tabrakan depan - depan', 20, 1000000, 1000000, 'Berawal dari pengendara SPM Yamaha Vixion bergerak dari arah SMAN 4 dengan tujuan kearah UNKRIS. Sedangkan pengendara SPM Honda Beat bergerak dari arah berlawanan setibanya di TKP tepatnya di pertigaan bawah SMAN 4 kedua pengendara hilang kendali sehingga terjadi tabrakan.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(372, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/244/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-01', 0, 0, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan depan - depan', 20, 100000, 100000, 'Berawal dari pengendara SPM bergerak dari arah Penfui  dengan tujuan ke arah Baumata sedangkan pengemudi mobil bergerak dari arah Baumata hendak menuju kearah Penfui. Setibanya di TKP, Pengendara motor  hilang kendali dan masuk ke jalur pengemudi mobil  sehingga terjadi tabrakan.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(373, 1, 2, 3, 1, 2, 1, 1, 3, 1, 1, 3, 2, 'LP/A/258/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-17', 0, 0, 4, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 500000, 0, 'Bermula saat Spm Honda scoopy bergerak dari arah Penfui dengan tujuan ke arah Kampus Undana sedangkan pengendara SPM Yamaha Mio J bergerak dari arah Hotel Neo Aston hendak menuju ke arah Bimoku, Setibahnya di TKP. Kedua pengendara kehilangan kendali dan terjadi tabrakan. Akibat dari kejadian tersebut kedua pengendara dan penumpang di larikan ke RS Leona Kupang.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(374, 1, 2, 3, 1, 2, 1, 1, 3, 1, 1, 3, 2, 'LP/A/259/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-17', 0, 0, 1, 'Air Mancur/ Bundaran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 500000, 0, 'Bermula saat Mobil Suzuki New Carry yang bergerak dari arah Bimoku menuju arah Bundaran PU yang ketika sampai di TKP bundaran penghijauan tidak memperhatikan kendaraan lain sehingga bertabrakan dengan Spm Yamaha Fino yang melaju dari arah Penfui menuju arah Oesapa.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(375, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/270/XII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-12-09', 0, 0, 2, 'Monumen/ Tugu/ Patok', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kanan', 20, 1000000, 0, 'Berawal saat sepeda honda verza dari arah lanudal menuju ke arah hotel Timore dan spm yamaha Vixion bergerak dari arah undana menuju ke arah bandara eltari,setibanya di Tkp tepatnya di bundaran patung burung,tiba2 spm yamaha dri arah undana menabrak spm honda verza dan langsung terjatuh.', NULL, 44, '2024-07-06 21:44:22', '2024-07-06 21:44:22'),
(376, 3, 2, 3, 2, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1905/I/2021/LL', '2021-01-28', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip dari kanan', 20, 500000, 0, 'Berawal saat Spm Honda Supra X 125 Dari Penfui menuju jembatan Liliba sesampinya di TKP depan Hotel Timore tiba tiba dari arah belakang melintas motor Honda Beat dan menyenggol stir sebelah kanan yang mengakibtakan pengendara spm Honda Supra X 125 terjatuh dan menagalami luka lecet pada lutut kanan,luka lecet pada siku kanan dan mengalami patah tulang pada paha kaki kanan dan langsung di bawa ke Rumah Sakit Umum Siloam.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(377, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/1915/1923/III/2021/LL', '2021-03-01', 0, 0, 3, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 0, 1000000, 0, 'Berawal saat Spm Honda Beat yang bergerak dari arah Hotel T-more menuju arah bundaran PU yang sampai di TKP tiba-tiba melaju Spm Yamaha Mio 125 dari arah berlawanan melintasi dijalur jalan sebelah memutar di putaran jalan langsung memotong didepan Spm Honda Beat sehingga terjadi tabrakan.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(378, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1933/III/2021/LL', '2021-03-15', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan dengan kendaraan parkir di kiri', 0, 10000000, 0, 'Berawal saat Spm Honda Beat Nopol DH 3059 BV bergerak dengan kecepatan tinggi diatas Jln. Piet A. Tallo dari arah Jemabatan Liliba menuju kearah Bundaran Penghijauan. Setibanya di TKP menabrak bagian belakang mobil Bis Mitsubishi Sinar Baru Nopol DH 7043 AA yang sedang parkir. Akibat kejadian tersebut pengendara dan penumpang Spm terluka dan kedua kendaraan mengalami kerusakan material.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(379, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1960/IV/2021/LL', '2021-04-28', 0, 0, 4, 'Jembatan', 'Tabrakan depan - belakang', 20, 500000, 0, 'Berawal saat  kedua kendaraan sama sama bergerak dari arah bundaran penghijauan hendak menuju kearah bundaran tirosa dengan posisi spm honda supra tanpa tnkb didepan sedangkan spm honda revo dibelakang, sesampainya diTKP diujung jembatan liliba spm honda revo menabrak spm honda supra tanpa tnkb yg berada didepanya.dari n,akibat kejadian tersebut kedua pengendara dan penumpang terjatuh mengalami luka luka dan dirawat dirumah sakit siloam serta kedua kendaraan mengalami kerusakan material.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(380, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1983/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA / POLDA NTT', '2021-05-16', 0, 0, 2, 'Jembatan', 'Tabrakan saat menyalip', 20, 200000, 0, 'Berawal saat Spm Honda Beat Nopol DH 2510 HU bergerak diatas Jln Piet A. Tallo dari arah Liliba menuju kearah Bundaran PU, setibanya diujung jembatan Liliba Spm Honda Beat Nopol DH 2510 HU melambung kanan kendaraan di depannya, ketika melambung sampai masuk ke jalur berlawanan sehingga bertabrakan dengan Spm Yamaha Mio tanpa TNKB yang datang dari arah berlawanan. Akibatnya kedua Spm terjatuh bersama pengendaranya, kemudian kedua pengendara dibawa ke RS Kartini untuk mendapatkan pertolongan.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(381, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1991/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-29', 0, 0, 1, 'Tempat Wisata', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 500000, 0, 'erawal saat Spm Yamaha Vixion Nopol DH 6711 HU bergerak diatas Jalan Jalan Bumi Satu dengan kecepatan tinggi masuk ke Jalan Piet A. Tallo lurus masuk ke taman yang terletak di tengah jalan lalu terjatuh di jalan jalur sebelah taman. Akibat kejadian tersebut pengendara terluka dan kendaraan rusak.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(382, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/1993/V/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-05-29', 0, 1, 0, 'Jembatan', 'Tabrakan depan - belakang', 0, 500000, 0, 'Berawal dari spm beet street bergerak dr arah penfui menuju kearah Liliba diatas jalan Piet A. Tallo, setibanya di tkp ujung jembatan liliba tiba tiba ditabrak dr arah belakang oleh Mbl Truck tidak teridentifikasi (langsung melarikan diri) yang mengakibatkan spm langsung terjatuh dan tubuh korban sempat digilas oleh roda Mbl Truck tersebut. Akibat dari kejadian tersebut pengendara spm honda beat street mengalami luka luka dm dibawa ke RSU prof. Dr. W.Z Johanes Kupang', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(383, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2011/VI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-06-13', 0, 1, 0, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 250000, 0, 'Berawal dr SPD YAMAHA MIO J dengan No.Pol.EB 3054 DK bergerak dari arah kos kosan di daerah penfui menuju arah Tofa, setibanya di tkp korban kehilangan kendali dan keluar jalur di akibatkan korban mengatuk sehingga terperosok ke dalam Taman yang berada di  sebelah kanan jalan.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(384, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2038/VII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-07-22', 1, 0, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip dari kiri', 20, 100000, 0, 'Berawal dr mbl truck bergerak dari arah Pulau Indah Oesapa, hendak ke arah jembatan Liliba saat tiba di Tkp, diduga pengendara Spm hendak melambung dari arah kiri namun karena terlalu mepet dgn bodi samping kiri dari mobil dump truck  sehingga terjadi senggolan akibatnya pengendara spm terjatuh di bawa kolong mobil dan tergilas ban belakang kiri.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(385, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2125/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-08', 0, 1, 0, 'Simpang', 'Kendaraan Out of Control keluar ke kiri jalan', 0, 300000, 0, 'Berawal dari spm CRF bergerak dr arah jembatan liliba menuju kearah bundaran patung burung selanjutnya bergerak memutar arah kembali kearah jembatan liliba, setibanya di tkp pertigaan jalan Bumi tiba-tiba  mbl yang berada di didepan berhenti dan karena jarak yang sehingga spm berusaha untuk menghindar kearah kanan  dan hilang kendali langsung terjatuh, akibat dr kejadian tsb peng. Spm mengalmi luka dan sementara dirawat di rsu siloam kota Kupang.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(386, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/44/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-25', 0, 0, 2, 'SPBU', 'Tabrakan dengan kendaraan parkir di kiri', 60, 500000, 0, 'Berawal saat Sepeda Motor Honda CRF bergerak dr arah Liliba menuju kearah penfui diatas jalan Piet A. Tallo, setibanya di Tkp karena pengendara dan penumpang saling bercerita sehingg tidak konsentrasi kearah depan dan tidak melihat Mbl Dump Truck yang sementara parkir, karena jarak yg sangat dekat sehingga spm menabrak bagian belakang dr mbl dump truck tersebut yg mengakibatkan spm lgs jatuh terseret. Akibat dr kejadian tsb pengendara dan penumpang spm mengalami luka dan sementara dirawat di rumkit kartini kupang.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(387, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/69/IV/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-04-09', 0, 0, 1, 'Jembatan', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 300000, 0, 'Berawal saat Pengendara Sepeda Motor Honda Beat yang bergerak dari arah Poltekes menuju ke arah Bundaran PU setibanya di Tkp  tepatnya di ujeli Pengendara Sepeda Motor Honda Beat yang mau melambung kendaraaan di depannya tiba-tiba hilang kendali sehingga terjatuh. Atas kejadian tersebut Pengendara Sepeda Motor Honda Beat Honda di larikan ke RSU.W.Z.Yohanes Kupang.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(388, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/89/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-07', 0, 0, 4, 'Simpang', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kanan', 20, 300000, 0, 'Berawal saat Pengendara SPM Suzuki Shogun SP tanpa Nopol bergerak dari kantor PDIP hendak menuju ke arah Bundaran PU sesampainya di TKP simpang Jalan M Sabaat tiba tiba Pengendara SPM Honda Kharisma DH 3288 MA DTG dari arah Jl M Sabaat hendak menyebrang jalan tanpa memperhatikan kendaraan dari arah kanan dan terjadi kecelakaan lalulintas. Akibat kejadian tersebut kedua pengendara dan penumpang mengalami luka luka dan d bawa ke RS. Kartini dan kedua kendaraan mengalami kerusakan material.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(389, 1, 2, 3, 2, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/108/V/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-05-27', 0, 1, 0, 'Sekolah/ Kampus', 'Kendaraan Out of Control keluar ke kiri jalan', 20, 500000, 0, 'Berawal saat sepeda motor Yamaha Scorpio Nopol N 5174 CZ bergerak diatas Jalan Piet A&gt; tallo dari arah jembatan Liliba menuju kearah Penfui. Setibanya di TKP kehilangan kendali dan terjatuh sendiri sehingga pengendara mengalami luka-luka dan sepeda motor rusak material.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(390, 2, 2, 3, 2, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/182/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-23', 0, 1, 1, 'Toko/ Pertokoan / Pasar', 'Tabrakan saat pindah lajur ke kiri', 20, 2500000, 0, 'Berawal saat Mobil Daihatsi AYLA Nopol DH 1684 HF dan Sepeda Motor Honda Beat Nopol DH 5569 HW sama-sama bergerak dari arah yang sama yakni dari arah penfui menuju kearaha Liliba diatas jalan Piet A.Tallo, setibanya di Tkp karena kondisi pengemudi mengantuk sehingga Mobil Daihatsi AYLA Nopol DH 1684 HF tiba-tiba hilang kendali keluar jalur kearah kiri dan langsung menabrak bagian belakang kanan dari Mobil Honda Mobilio Nopol DH 1295 AR yang sementara berhenti di atas trotoar sebelah kiri dan selanjutnya Mobil Daihatsi AYLA Nopol DH 1684 HF jatuh terbalik kearah kanan menabrak Sepeda Motor Honda Beat Nopol DH 5569 HW yang sementara berada disamping kanan, dimana akibat dari kejadian tersebut pengendara dan penumpang Sepeda Motor Honda Beat Nopol DH 5569 HW mengalami luka-luka dan sementara dirawat di RSU Kartini Kupang serta semua kendaraan terlibat mengalami kerusakan material.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(391, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 3, 2, 'LP/A/218/IX/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-09-29', 0, 0, 2, 'Toko/ Pertokoan / Pasar', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 1000000, 0, 'Berawal Pada Saat Pengendara Sepeda Motor Honda Beat yang bergerak dari arah Jalan Piet A Tallo menuji ke arah Jalan Frans Seda Sedangkan Pengendara Sepeda Motor Honda Vario dari arah Jalan Bumi II menuju ke arah Jalan Piet A.Tallo setibanya di Tkp tepatnya di depan Jj Mart Pengendara Sepeda Motor Honda Vario yang memaksakan memotong jalur dari Pengendara Sepeda Motor Honda Beat yang sedang melintas sehingga terjadilah tabrakan.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(392, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/223/X/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMUR', '2022-10-10', 0, 0, 4, 'SPBU', 'Tabrak kendaraan belok kanan dengan kendaraan yang jalan lurus', 20, 5000000, 5000000, 'Berawal dari Pengemudi Mobil Bus Arjuna bergerak dari arah Tugu Merpati kearah Jembatan Liliba, sesampainya di TKP tepatnya di putaran kanan SPBU Liliba hendak berbelok kanan tanpa memperhatikan keandaraan lain yang datang dari arah belakang sehingga terjadi kecelakaan, yakni Spm Beat Pop yang kemudian menabrak lagi Spm Vixion, dan kemudian Spm Vixion menabrak Spm Mio J. Akibat dari kejadian tersebut pengendara dan penumpang di larikan ke RS Kartini dan RS Leona Kupang dan keempat kendaraan mengalami kerusakan material.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(393, 1, 2, 3, 1, 2, 1, 1, 2, 1, 1, 2, 2, 'LP/A/245/XI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-11-04', 0, 0, 1, 'Jembatan', 'Tabrakan kendaraan belok kiri dengan kendaraan yang jalan lurus', 20, 5000000, 5000000, 'Berawal saat sepeda motor Yamaha Jupiter Z1 melaju dari arah Bundaran TIROSA hendak kearah Polresta Kupang Kota Sesampainya di TKP melambung kiri sebuah mobil Honda Mobilio yang hendak berbelok kiri sehingga terjadi tabrakan.', NULL, 41, '2024-07-06 21:44:52', '2024-07-06 21:44:52'),
(422, 1, 2, 3, 1, 1, 1, 1, 1, 3, 1, 1, 2, 'LP/1915/1895/I/2021/LL', '2021-01-03', 0, 0, 1, '', 'Kendaraan Out of Control keluar ke kanan jalan', 20, 0, 0, '', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(423, 1, 1, 5, 1, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/1915/1915/II/2021/LL', '2021-02-09', 0, 0, 1, 'Kantor/ Perkantoran', 'Tabrakan dengan benda di jalan atau di atas jalan', 0, 200000, 0, 'Berawal saat Spm Honda Beat yang bergerak dari arah Kupang menuju arah Bolok Merdeka melintas diatas jalan Yos Soedarso di TKP yang bergelombang dan terdapat lubang. Pengendara terburu-buru karena hujan sehingga masuk dalam lubang yang tertutup air sehingga jatuh sendiri.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(424, 2, 2, 3, 3, 1, 1, 1, 1, 1, 1, 2, 2, 'LP/1915/1967/V/2021/LL', '2021-05-05', 1, 0, 2, 'SPBU', 'Tabrakan depan - depan', 0, 10000000, 0, 'Berawal saat Pengemudi Mobil ambulance TNI AL melaju dari arah Rumah Sakit AL menuju ke arah bolok, sesampainya di Tkp berserempetan dengan mobil microlet Hosana yang datang dari arah berlawanan, kemudian mobil Microlet Hosana hilang kendali dan terus melaju ke kanan jalan sehingga menabrak sepeda motor yang datang dari arah berlawanan kemudian menabrak rumah warga yang berada disebelah kanan jalan, sedangkan mobil ambulance hilang kendali dan keluar ke sebelah kanan jalan kemudian menabrak pagar besi yg berada disebelah kanan.\\nAkibat dari kejadian tersebut, pengendara Spm Yamaha Mio M3 dan penumpangnya mengalami luka - luka dan langsung dibawah ke RS Angkatan Laut dan kemudian Pengendara Spm dinyatakan meninggal dunia di RS angkatan Laut', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(425, 1, 1, 3, 3, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/2076/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-08', 1, 0, 3, 'Kantor/ Perkantoran', 'Tabrakan depan - depan', 0, 1000000, 0, 'Berawal saat Spm Yamaha Mio Soul Nopol DH 3230 HI bergerak diatas Jalan Yos Sudarso dari arah Alak menuju kearah Namosain, setibanya di TKP bertabrakan dengan Spm Yamaha Fino Nopol DH 6129 KG yang datang dari arah berlawanan mengakibatkan para pengendara dan para penumpang terjatuh mengalami luka-luka lalu dibawa oleh warga ke RSUD WZ Yohannes Kupang.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(426, 1, 2, 3, 2, 2, 1, 1, 1, 3, 1, 2, 2, 'LP/B/2084/IX/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-09-15', 0, 1, 0, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - belakang', 0, 500000, 0, 'Berawal saat kedua kendaraan bergerak dari arah yang sama yakni dari arah Kupang menuju kearah Tenau diatas jalan Yos Sudarso, setibanya di Tkp mobil yang berada di depannya mengerem mendadak karena menghindari lubang sehingga spm yang berada di belakangnya kehilangan kendali dan menabrak mobil tersebut dari arah belakang, akibatnya pengendara terjatuh dan mengalami luka- luka dan di rawat di RSAL.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(427, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2140/XI/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-11-29', 1, 0, 0, 'Kantor/ Perkantoran', 'Tabrakan saat menyalip', 20, 2000000, 0, 'Berawal saat pengendara Spm Honda Revo No. Pol DH 4520 FC yg bergerak dari arah Tenau menuju ke arah Kupang, sesampainya di Tkp pengendara Spm Honda Revo hendak melambung kanan dari sebuah mobil Pick Up yg saat itu sama2 melaju ke arah kupang, namum pada saat spm honda revo hendak melambung  mobil pick up tersebut, datang sebuah mobil truck mitsubishi No. Pol DH 9109 DA dari arah berlawanan sehingga terjadi serempetan antara Spm Honda revo no. Pol DH 4520 FC dgn Mobil Truck No. Pol DH 9109 DA. Akibat dari kejadian tersebut pengendara spm honda revo mengalami luka luka dan meninggal dunia di TKP', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(428, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/2161/XII/2021/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2021-12-26', 0, 0, 3, 'Tempat Wisata', 'Tabrakan dengan Kendaraan menyebrang dari sisi kiri jalan', 20, 1500000, 0, 'Kronologis berawal saat Spm Honda Scoopy merah Nopol DH 4047 KF yang bergerak dari depan Kios yang tepat di samping Cafe Tebing hendak memotong jalan kebagian kanan masuk ke gang yg ada si seberang jalan, pada saat sementara bergerak memotong, datang Spm Honda Scoopy putih dari arah Tenau menuju arah Bolok dengan kecepatan tinggi tidak mengurangi kecepatan dan tidak menghindar sehingga terjadi tabrakan.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(429, 1, 2, 3, 2, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/B/39/II/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NTT', '2022-02-19', 0, 1, 1, 'Tempat Ibadah', 'Tabrakan depan - belakang', 40, 1000000, 0, 'Berawal saat Sepeda motor Honda Beat Nopol DH 3950 HP bergerak diatas jalan Jurusan Bolok dari arah Perikanan menuju kearah Bolok, setibanya di TKP menabrak mobil Truk Mitsubishi â€œBLANTIKAâ€ Nopol DH 9262 GC yang sedang terparkir (sedang mengganti ban mobil).sehingga Sepeda motor Honda Beat Nopol DH 3950 HP tersebut terjatuh kejalur kanan lalu bertabrakan dengan mobil Truk tangki air Mitsubishi Nopol DH 8848 AH yang datang dari arah berlawanan. Akibat kejadian tersebut pengendara dan penumpang Sepeda motor Honda Beat Nopol DH 3950 HP terjatuh dan terluka.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(430, 1, 2, 5, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/54/III/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-03-13', 0, 0, 2, 'Kantor/ Perkantoran', 'Tabrakan dengan kendaraan parkir di kiri', 20, 300000, 0, 'Berawal saat Pengemudi Mobil Suzuki APV Pick Up bergerak dari arah Bolok hendak ke arah Kupang, saat tiba di Tkp,  pengemudi mobil tersebut menegur temannya yang melintas  akibatnya ia tidak memperhatikan ke arah depan sehingga menabrak pengendara sepeda motor serta penumpang yang saat itu sedang berhenti di pinggir jalan sebelah kiri.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(431, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/112/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-01', 0, 0, 2, 'Kantor/ Perkantoran', 'Di simpang, tabrakan dengan Kendaraan B yang datang dari arah kiri', 20, 0, 0, 'Berawal pada saat pengendara Sepeda motor Yamaha Mio yang bergerak dari arah Tenau menuju Kupang setibanya di Tkp tepatnya di depan Lantamal Kupang tiba- tiba muncul dari dalam gang kecil dan berlawanan arah  Pengendara Sepeda motor Honda Blade sehingga terjadilah tabrakan. Atas kejadian tersebut Pengendara Sepeda Motor Honda Blade di larikan ke RS.Angkatan Laut Kupang.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(432, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/115/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-04', 0, 0, 4, 'Kantor/ Perkantoran', 'Tabrakan kendaraan belok kanan dengan kendaraan yang datang dari arah berlawanan', 20, 0, 0, 'Berawal dari spm beat bergerak dari arah Tenau menuju kearah Namosain sedangkan spm Vixion bergerak dari arah yang berlawanan diatas jalan Yos Sudarso, setibanya di Tkp depan Mako TNI AL, spm vixion bergerak memotong jalan kearah kanan secara tiba-tiba sehingga pengendara spm beat kaget dan langsung melakukan pengereman yang mengakibatkan spm beat terjatuh terseret kearah depan dan menabrak bagian belakang dari spm vixion yang menyebabkan spm vixion langsung terjatuh, dimana akibat dari kejadian tersebut pengendra dan penumpang spm mengalami luka dan sempat dirawat di Rumkit AL serta kedua kendaraan mengalami kerusakan material.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(433, 1, 2, 3, 3, 2, 1, 1, 1, 1, 1, 1, 2, 'LP/A/127/VI/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIMU', '2022-06-24', 1, 0, 0, 'Kantor/ Perkantoran', 'Kendaraan Out of Control keluar ke kanan jalan', 20, 20000000, 0, 'Berawal saat Pengendara Mobil Tangki Air Isuzu DH 8441 AH bergerak dari arah Jl. Yos Sudarso (dekat jembatan timbang alak) masuk ke dalam Gang hendak mengisi Air di salah satu warga. Sesampainya di TKP pengemudi Mobil Tangki Air tidak dapat mengendalikan kendaraannya saat menanjak. Akibat dari itu mobil Tangki Air Isuzu DH 8441 AH bergerak mundur dan terjatuh ke dalam Jurang. Akibat dari kejadian tersebut Pengemudi Meninggal Dunia di tempat', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(434, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/143/VII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TIM', '2022-07-10', 0, 0, 2, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan saat menyalip dari kanan', 20, 1000000, 0, 'Berawal saat mobil pick up Mitsubishi L300 Nopol DH 8132 AG bergerak diatas Jalan M.Praja dari arah Namosain menuju kearah Tenau, setibanya di TKP mobil pick up Mitsubishi L300 Nopol DH 8132 AG tersebut melambung kanan sepeda motor Honda Blade Nopol DH 2284 KP yang bergerak searah di depannya. Kemudian setelah melambung mobil pick up Mitsubishi L300 Nopol DH 8132 AG tersebut Kembali kejalur kiri dan bagian belakang kiri bak mobil menyerempet sepeda motor Honda Blade Nopol DH 2284 KP sehingga sepeda motor Blade tersebut terjatuh mengakibatkan pengendara dan penumpang sepeda motor terjatuh dan terluka dan dirawat di RS TNI AL lalu di rujuk ke RSU Siloam Kupang.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15'),
(435, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 2, 2, 'LP/A/166/VIII/2022/SPKT.SATLANTAS/POLRES KUPANG KOTA/POLDA NUSA TENGGARA TI', '2022-08-07', 0, 0, 1, 'Gedung Bisnis/ Hotel/ Apartment', 'Tabrakan depan - depan', 20, 2000000, 0, 'Berawal saat Mobil Daihatsu Sirion Nopol DH 1449 HC bergerak dari arah Tenau menuju kearah Namosain, setibanya di TKP bertabrakan dengan Sepeda Motor Jupiter Z Nopol DH 3721 GA yang bergerak dari arah berlawanan. Akibat kejadian tersebut pengendara seped motor terjatuh dan mengalami luka-luka dan kedua kendaraan mengalami kerusakan material.', NULL, 48, '2024-07-07 15:40:15', '2024-07-07 15:40:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permukaan_jalan`
--

CREATE TABLE `permukaan_jalan` (
  `id_permukaan_jalan` int(11) NOT NULL,
  `permukaan_jalan` varchar(35) DEFAULT NULL
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
  `id_pesan` int(11) NOT NULL,
  `img_kapolri` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan_kapolri`
--

INSERT INTO `pesan_kapolri` (`id_pesan`, `img_kapolri`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '', '<p>Kepada masyarakat mari kita dukung upaya-upaya untuk mewujudkan Polri yang lebih profesional dan amanah. Berbagai pengalaman berbangsa dan bernegara selama ini, tentunya akan menjadi pelajaran berharga bagi kita semua dalam upaya melanjutkan reformasi Polri. Kami membuka diri, menampung aspirasi dan pandangan dari semua elemen masyarakat, untuk mendudukkan Polri menjadi pelindung dan pengayom bagi segenap warga bangsa.<br />\r\n<br />\r\nKami tidak hanya akan selalu bekerja profesional, yakni mendasarkan kinerjanya kepada ilmu pengetahuan dan sistem hukum yang berlaku, tetapi juga amanah, akuntabel kepada pemangku kepentingan antara lain dengan menggunakan kewenangannya secara bijak dan santun pada masyarakat yang kami layani.<br />\r\n<br />\r\nPolri milik kita. Mari kita jadikan Polri seperti yang kita dambakan.<br />\r\n<br />\r\nJalan Trunojoyo no. 3, Kebayoran Baru Jakarta 12110<br />\r\nTerima Kasih,&nbsp;<br />\r\n<br />\r\n<br />\r\nKapolri<br />\r\n<strong>Drs. Listyo Sigit Prabowo, M.Si</strong><br />\r\nJendral Polisi</p>\r\n', '2024-01-16 12:11:25', '2024-07-03 17:11:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `polres`
--

CREATE TABLE `polres` (
  `id_polres` int(11) NOT NULL,
  `nama_polres` varchar(100) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `jumlah_anggota` int(11) DEFAULT NULL,
  `img_polres` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `polres`
--

INSERT INTO `polres` (`id_polres`, `nama_polres`, `alamat`, `telepon`, `email`, `jumlah_anggota`, `img_polres`) VALUES
(1, 'undefined', NULL, NULL, NULL, NULL, NULL),
(2, 'POLRES KUPANG KOTA', 'Jl. Frans Seda, Kayu Putih, Kec. Oebobo, Kota Kupang, Nusa Tenggara Tim. 85228', '0380824414', 'humas-polresntt@gmail.com', 911, '2818359612.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id_sejarah` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Sebelum Kemerdekaan Indonesia</strong></p>\r\n\r\n<hr />\r\n<p><strong>Jaman Kerajaan</strong><br />\r\nPada zaman Kerajaan Majapahit patih Gajah Mada membentuk pasukan pengamanan yang disebut dengan Bhayangkara yang bertugas melindungi raja dan kerajaan.</p>\r\n\r\n<p><strong>Masa kolonial Belanda</strong><br />\r\nPada masa kolonial Belanda, pembentukan pasukan keamanan diawali oleh pembentukan pasukan-pasukan jaga yang diambil dari orang-orang pribumi untuk menjaga aset dan kekayaan orang-orang Eropa di Hindia Belanda pada waktu itu. Pada tahun 1867 sejumlah warga Eropa di Semarang, merekrut 78 orang pribumi untuk menjaga keamanan mereka.</p>\r\n\r\n<p>Wewenang operasional kepolisian ada pada residen yang dibantu asisten residen. Rechts politie dipertanggungjawabkan pada procureur generaal (jaksa agung). Pada masa Hindia Belanda terdapat bermacam-macam bentuk kepolisian, seperti veld politie (polisi lapangan) , stands politie (polisi kota), cultur politie (polisi pertanian), bestuurs politie (polisi pamong praja), dan lain-lain.</p>\r\n\r\n<p>Sejalan dengan administrasi negara waktu itu, pada kepolisian juga diterapkan pembedaan jabatan bagi bangsa Belanda dan pribumi. Pada dasarnya pribumi tidak diperkenankan menjabat hood agent (bintara), inspekteur van politie, dan commisaris van politie. Untuk pribumi selama menjadi agen polisi diciptakan jabatan seperti mantri polisi, asisten wedana, dan wedana polisi.</p>\r\n\r\n<p>Kepolisian modern Hindia Belanda yang dibentuk antara tahun 1897-1920 adalah merupakan cikal bakal dari terbentuknya Kepolisian Negara Republik Indonesia saat ini.</p>\r\n\r\n<p><strong>Masa pendudukan Jepang</strong><br />\r\nPada masa ini Jepang membagi wiliyah kepolisian Indonesia menjadi Kepolisian Jawa dan Madura yang berpusat di Jakarta, Kepolisian Sumatera yang berpusat di Bukittinggi, Kepolisian wilayah Indonesia Timur berpusat di Makassar dan Kepolisian Kalimantan yang berpusat di Banjarmasin.</p>\r\n\r\n<p>Tiap-tiap kantor polisi di daerah meskipun dikepalai oleh seorang pejabat kepolisian bangsa Indonesia, tapi selalu didampingi oleh pejabat Jepang yang disebut sidookaan yang dalam praktik lebih berkuasa dari kepala polisi.</p>\r\n\r\n<p><strong>Awal Kemerdekaan Indonesia</strong></p>\r\n\r\n<hr />\r\n<p><strong>Periode 1945-1950</strong><br />\r\nTidak lama setelah Jepang menyerah tanpa syarat kepada Sekutu, pemerintah militer Jepang membubarkan Peta dan Gyu-Gun, sedangkan polisi tetap bertugas, termasuk waktu Soekarno-Hatta memproklamasikan kemerdekaan Indonesia pada tanggal 17 Agustus 1945. Secara resmi kepolisian menjadi kepolisian Indonesia yang merdeka.</p>\r\n\r\n<p>Inspektur Kelas I (Letnan Satu) Polisi Mochammad Jassin, Komandan Polisi di Surabaya, pada tanggal 21 Agustus 1945 memproklamasikan Pasukan Polisi Republik Indonesia sebagai langkah awal yang dilakukan selain mengadakan pembersihan dan pelucutan senjata terhadap tentara Jepang yang kalah perang, juga membangkitkan semangat moral dan patriotik seluruh rakyat maupun satuan-satuan bersenjata yang sedang dilanda depresi dan kekalahan perang yang panjang. Sebelumnya pada tanggal 19 Agustus 1945 dibentuk Badan Kepolisian Negara (BKN) oleh Panitia Persiapan Kemerdekaan Indonesia (PPKI). Pada tanggal 29 September 1945 Presiden Soekarno melantik R.S. Soekanto Tjokrodiatmodjo menjadi Kepala Kepolisian Negara (KKN).</p>\r\n\r\n<p>Pada awalnya kepolisian berada dalam lingkungan Kementerian Dalam Negeri dengan nama Djawatan Kepolisian Negara yang hanya bertanggung jawab masalah administrasi, sedangkan masalah operasional bertanggung jawab kepada Jaksa Agung.</p>\r\n\r\n<p>Kemudian mulai tanggal 1 Juli 1946 dengan Penetapan Pemerintah tahun 1946 No. 11/S.D. Djawatan Kepolisian Negara yang bertanggung jawab langsung kepada Perdana Menteri. Tanggal 1 Juli inilah yang setiap tahun diperingati sebagai Hari Bhayangkara hingga saat ini.</p>\r\n\r\n<p>Sebagai bangsa dan negara yang berjuang mempertahankan kemerdekaan maka Polri di samping bertugas sebagai penegak hukum juga ikut bertempur di seluruh wilayah RI. Polri menyatakan dirinya &ldquo;combatant&rdquo; yang tidak tunduk pada Konvensi Jenewa. Polisi Istimewa diganti menjadi Mobile Brigade, sebagai kesatuan khusus untuk perjuangan bersenjata, seperti dikenal dalam pertempuran 10 November di Surabaya, di front Sumatera Utara, Sumatera Barat, penumpasan pemberontakan PKI di Madiun, dan lain-lain.</p>\r\n\r\n<p>Pada masa kabinet presidential, pada tanggal 4 Februari 1948 dikeluarkan Tap Pemerintah No. 1/1948 yang menetapkan bahwa Polri dipimpin langsung oleh presiden/wakil presiden dalam kedudukan sebagai perdana menteri/wakil perdana menteri.</p>\r\n\r\n<p>Pada masa revolusi fisik, Kapolri Jenderal Polisi R.S. Soekanto telah mulai menata organisasi kepolisian di seluruh wilayah RI. Pada Pemerintahan Darurat RI (PDRI) yang diketuai Mr. Sjafrudin Prawiranegara berkedudukan di Sumatera Tengah, Jawatan Kepolisian dipimpin KBP Umar Said (tanggal 22 Desember 1948).</p>\r\n\r\n<p>Hasil Konferensi Meja Bundar antara Indonesia dan Belanda dibentuk Republik Indonesia Serikat (RIS), maka R.S. Sukanto diangkat sebagai Kepala Jawatan Kepolisian Negara RIS dan R. Sumanto diangkat sebagai Kepala Kepolisian Negara RI berkedudukan di Yogyakarta.</p>\r\n\r\n<p>Dengan Keppres RIS No. 22 tahun 1950 dinyatakan bahwa Jawatan Kepolisian RIS dalam kebijaksanaan politik polisional berada di bawah perdana menteri dengan perantaraan jaksa agung, sedangkan dalam hal administrasi pembinaan, dipertanggungjawabkan pada menteri dalam negeri.</p>\r\n\r\n<p>Umur RIS hanya beberapa bulan. Sebelum dibentuk Negara Kesatuan RI pada tanggal 17 Agustus 1950, pada tanggal 7 Juni 1950 dengan Tap Presiden RIS No. 150, organisasi-organisasi kepolisian negara-negara bagian disatukan dalam Jawatan Kepolisian Indonesia. Dalam peleburan tersebut disadari adanya kepolisian negara yang dipimpin secara sentral, baik di bidang kebijaksanaan siasat kepolisian maupun administratif, organisatoris.</p>\r\n\r\n<p><strong>Periode 1950-1959</strong><br />\r\nDengan dibentuknya negara kesatuan pada 17 Agustus 1950 dan diberlakukannya UUDS 1950 yang menganut sistem parlementer, Kepala Kepolisian Negara tetap dijabat R.S. Soekanto yang bertanggung jawab kepada perdana menteri/presiden.</p>\r\n\r\n<p>Waktu kedudukan Polri kembali ke Jakarta, karena belum ada kantor digunakan bekas kantor Hoofd van de Dienst der Algemene Politie di Gedung Departemen Dalam Negeri. Kemudian R.S. Soekanto merencanakan kantor sendiri di Jalan Trunojoyo 3, Kebayoran Baru, Jakarta Selatan, dengan sebutan Markas Besar Djawatan Kepolisian Negara RI (DKN) yang menjadi Markas Besar Kepolisian sampai sekarang. Ketika itu menjadi gedung perkantoran termegah setelah Istana Negara.</p>\r\n\r\n<p>Sampai periode ini kepolisian berstatus tersendiri antara sipil dan militer yang memiliki organisasi dan peraturan gaji tersendiri. Anggota Polri terorganisir dalam Persatuan Pegawai Polisi Republik Indonesia (P3RI) tidak ikut dalam Korpri, sedangkan bagi istri polisi semenjak zaman revolusi sudah membentuk organisasi yang sampai sekarang dikenal dengan nama Bhayangkari tidak ikut dalam Dharma Wanita ataupun Dharma Pertiwi. Organisasi P3RI dan Bhayangkari ini memiliki ketua dan pengurus secara demokratis dan pernah ikut Pemilu 1955 yang memenangkan kursi di Konstituante dan Parlemen. Waktu itu semua gaji pegawai negeri berada di bawah gaji angkatan perang, namun P3RI memperjuangkan perbaikan gaji dan berhasil melahirkan Peraturan Gaji Polisi (PGPOL) di mana gaji Polri relatif lebih baik dibanding dengan gaji pegawai negeri lainnya (mengacu standar PBB).</p>\r\n\r\n<p><strong>Masa Orde Lama</strong><br />\r\nDengan Dekrit Presiden 5 Juli 1959, setelah kegagalan Konstituante, Indonesia kembali ke UUD 1945, namun dalam pelaksanaannya kemudian banyak menyimpang dari UUD 1945. Jabatan Perdana Menteri (Alm. Ir. Juanda) diganti dengan sebutan Menteri Pertama, Polri masih tetap di bawah pada Menteri Pertama sampai keluarnya Keppres No. 153/1959, tertanggal 10 Juli di mana Kepala Kepolisian Negara diberi kedudukan Menteri Negara ex-officio.</p>\r\n\r\n<p>Pada tanggal 13 Juli 1959 dengan Keppres No. 154/1959 Kapolri juga menjabat sebagai Menteri Muda Kepolisian dan Menteri Muda Veteran. Pada tanggal 26 Agustus 1959 dengan Surat Edaran Menteri Pertama No. 1/MP/RI1959, ditetapkan sebutan Kepala Kepolisian Negara diubah menjadi Menteri Muda Kepolisian yang memimpin Departemen Kepolisian (sebagai ganti dari Djawatan Kepolisian Negara).</p>\r\n\r\n<p>Waktu Presiden Soekarno menyatakan akan membentuk ABRI yang terdiri dari Angkatan Perang dan Angkatan Kepolisian, R.S. Soekanto menyampaikan keberatannya dengan alasan untuk menjaga profesionalisme kepolisian. Pada tanggal 15 Desember 1959 R.S. Soekanto mengundurkan diri setelah menjabat Kapolri/Menteri Muda Kepolisian, sehingga berakhirlah karier Bapak Kepolisian RI tersebut sejak 29 September 1945 hingga 15 Desember 1959.</p>\r\n\r\n<p>Dengan Tap MPRS No. II dan III tahun 1960 dinyatakan bahwa ABRI terdiri atas Angkatan Perang dan Polisi Negara. Berdasarkan Keppres No. 21/1960 sebutan Menteri Muda Kepolisian ditiadakan dan selanjutnya disebut Menteri Kepolisian Negara bersama Angkatan Perang lainnya dan dimasukkan dalam bidang keamanan nasional.</p>\r\n\r\n<p>Tanggal 19 Juni 1961, DPR-GR mengesahkan UU Pokok kepolisian No. 13/1961. Dalam UU ini dinyatakan bahwa kedudukan Polri sebagai salah satu unsur ABRI yang sama sederajat dengan TNI AD, AL, dan AU.</p>\r\n\r\n<p>Dengan Keppres No. 94/1962, Menteri Kapolri, Menteri/KASAD, Menteri/KASAL, Menteri/KSAU, Menteri/Jaksa Agung, Menteri Urusan Veteran dikoordinasikan oleh Wakil Menteri Pertama bidang pertahanan keamanan. Dengan Keppres No. 134/1962 menteri diganti menjadi Menteri/Kepala Staf Angkatan Kepolisian (Menkasak).</p>\r\n\r\n<p>Kemudian Sebutan Menkasak diganti lagi menjadi Menteri/Panglima Angkatan Kepolisian (Menpangak) dan langsung bertanggung jawab kepada presiden sebagai kepala pemerintahan negara. Dengan Keppres No. 290/1964 kedudukan, tugas, dan tanggung jawab Polri ditentukan sebagai berikut :</p>\r\n\r\n<ul>\r\n	<li>Alat Negara Penegak Hukum.</li>\r\n	<li>Koordinator Polsus.</li>\r\n	<li>Ikut serta dalam pertahanan.</li>\r\n	<li>Pembinaan Kamtibmas.</li>\r\n	<li>Kerkaryaan</li>\r\n	<li>Sebagai alat revolusi.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan Keppres No. 155/1965 tanggal 6 Juli 1965, pendidikan AKABRI disamakan bagi Angkatan Perang dan Polri selama satu tahun di Magelang. Sementara pada tahun 1964 dan 1965, pengaruh PKI bertambah besar karena politik NASAKOM Presiden Soekarno, dan PKI mulai menyusupi memengaruhi sebagian anggota ABRI dari keempat angkatan.</p>\r\n\r\n<p><strong>Masa Orde Baru</strong><br />\r\nKarena pengalaman yang pahit dari peristiwa G30S/PKI yang mencerminkan tidak adanya integrasi antar unsur-unsur ABRI, maka untuk meningkatkan integrasi ABRI, tahun 1967 dengan SK Presiden No. 132/1967 tanggal 24 Agustus 1967 ditetapkan Pokok-Pokok Organisasi dan Prosedur Bidang Pertahanan dan Keamanan yang menyatakan ABRI merupakan bagian dari organisasi Departemen Hankam meliputi AD, AL, AU , dan AK yang masing-masing dipimpin oleh Panglima Angkatan dan bertanggung jawab atas pelaksanaan tugas dan kewajibannya kepada Menhankam/Pangab. Jenderal Soeharto sebagai Menhankam/Pangab yang pertama.</p>\r\n\r\n<p>Setelah Soeharto dipilih sebagai presiden pada tahun 1968, jabatan Menhankam/Pangab berpindah kepada Jenderal M. Panggabean. Kemudian ternyata betapa ketatnya integrasi ini yang dampaknya sangat menyulitkan perkembangan Polri yang secara universal memang bukan angkatan perang.</p>\r\n\r\n<p>Pada tahun 1969 dengan Keppres No. 52/1969 sebutan Panglima Angkatan Kepolisian diganti kembali sesuai UU No. 13/1961 menjadi Kepala Kepolisian Negara RI, namun singkatannya tidak lagi KKN tetapi Kapolri. Pergantian sebutan ini diresmikan pada tanggal 1 Juli 1969.&nbsp;</p>\r\n', '2024-01-16 12:57:20', '2024-07-03 17:05:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_jalan`
--

CREATE TABLE `status_jalan` (
  `id_status_jalan` int(11) NOT NULL,
  `status_jalan` varchar(50) DEFAULT NULL
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
  `id_tingkat_kecelakaan` int(11) NOT NULL,
  `tingkat_kecelakaan` varchar(50) DEFAULT NULL
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
  `id_tipe_jalan` int(11) NOT NULL,
  `tipe_jalan` varchar(75) DEFAULT NULL
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
  `id_titik_rawan` int(11) NOT NULL,
  `img_titik_rawan` varchar(50) DEFAULT NULL,
  `nama_jalan_rawan` varchar(100) DEFAULT NULL,
  `solusi` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `titik_rawan`
--

INSERT INTO `titik_rawan` (`id_titik_rawan`, `img_titik_rawan`, `nama_jalan_rawan`, `solusi`, `created_at`, `updated_at`) VALUES
(1, NULL, 'undefined', '', '2024-07-02 07:25:35', '2024-07-02 07:25:35'),
(39, '494539773.jpeg', 'JL ELTARI', 'kurangi kecepatan  pada jalan ini  pengendara di harapkan tidak melampaui batas kecepatan yang ada', '2024-06-15 03:55:09', '2024-06-15 03:55:09'),
(41, '661680781.jpeg', 'JL PIET A TALLO', 'harap mengurangi kecepatan bagi pengguna jalan karena adanya perbaikan jalan', '2024-06-15 03:58:24', '2024-06-15 03:58:24'),
(42, '3592863832.jpeg', 'JL JEND SUDIRMAN', 'di jalan ini selalu ramai karena banyaknya aktifitas diharapkan kepada pengendara untuk mengurangi kecepatan', '2024-06-15 03:58:58', '2024-06-15 03:58:58'),
(43, '2756805072.jpeg', 'JL FRANS SEDA', 'kurangi kecepatan  pada jalan ini  pengendara di harapkan tidak melampaui batas kecepatan yang ada', '2024-06-15 03:59:40', '2024-06-15 03:59:40'),
(44, '1913152205.jpeg', 'JL ADI SUCIPTO', 'di jalan ini terdapat beberapa tikungan tajam sehingga para pengendara diharapkan untuk mengurangi kecepatan', '2024-06-15 04:00:09', '2024-06-15 04:00:09'),
(45, '2263568875.jpeg', 'JL PAHLAWAN', 'jalan ini sering di lalui truk bermuatan berat, diharapkan pengguna jalan lain dapat berhati-hati dalam berkendara', '2024-06-15 04:00:37', '2024-06-15 04:00:37'),
(46, '583398270.jpeg', 'JL H R KOROH', 'para pengendara di harapkan berhati-hati karena di jalan ini sering dilintasi hewan milik Masyarakat setempat', '2024-06-15 04:01:09', '2024-06-15 04:01:09'),
(48, '3408130272.jpeg', 'JL YOS SURDASO', 'di jalan ini terdapat turunan disertai tikungan tajam diharapkan pengguna jalan tetap focus dalam berkendara', '2024-06-15 04:02:17', '2024-06-15 04:02:17'),
(50, '3919126747.jpeg', 'JL W J LALAMENTIK', 'di jalan ini selalu ramai karena banyaknya aktifitas diharapkan kepada pengendara untuk mengurangi kecepatan', '2024-06-15 04:03:39', '2024-06-15 04:03:39'),
(51, '3962347816.jpeg', 'JL JALUR 40', 'minimnya Cahaya dijalan ini dapat berpengaruh pada pengguna jalan, di harapkan kepada pengendara agar tetap waspada  melewati jalan ini', '2024-06-15 04:04:10', '2024-06-15 04:04:10'),
(52, '1353888502.jpeg', 'JL JEND SOEHARTO', 'di jalan ini selalu ramai karena merupakan pusat kota diharapkan kepada pengendara untuk mengurangi kecepatan\\r\\n', '2024-06-15 04:04:43', '2024-06-15 04:04:43'),
(57, '2616090963.jpeg', 'JL AHMAD YANI', 'banyaknya pejalan kaki di jalan ini, diharapkan pengendara lebih focus dan berhati-hati melewati jalan ini\\r\\n', '2024-07-06 20:02:27', '2024-07-06 20:02:27'),
(58, '1303872078.jpeg', 'JL TIMOR RAYA', 'tumpahan oli sering terjadi di jalan ini, di harapkan kepada pengguna  jalan agar berhati hati di jalan ini', '2024-07-06 20:02:55', '2024-07-06 20:02:55'),
(59, '1863144053.jpeg', 'JL CAK DOKO', 'banjir yang terjadi di jalan ini mengakibatkan sulitnya akses bagi pengendara, di harapkan pengendara lebih berhati-hati pada saat melewati jalan ini', '2024-07-06 20:03:33', '2024-07-06 20:03:33'),
(60, '3109335400.jpeg', 'JL M PRAJA', 'jalan ini tidak memiliki rambu lalu lintas. Pengguna diharapkan lebih focus dalam berkendara', '2024-07-06 20:04:03', '2024-07-06 20:04:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) DEFAULT 3,
  `id_active` int(11) DEFAULT 2,
  `en_user` varchar(75) DEFAULT NULL,
  `token` char(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'default.svg',
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'SATLANTAS', 'default.svg', 'admin@gmail.com', '$2y$10$OoknlHZ2UqfkPu7k7IkFcuwhQ7cwiJxkBFx0aBXTomIknldbaJkqO', '2023-12-06 23:09:44', '2023-12-06 23:09:44'),
(2, 3, 1, '2y104Sx1r0hK1VPnr1hd9jqzu2d9o1XX14ntTYd2qSwJ5mv3UUuUEye', '163406', 'juned', 'default.svg', 'ardhyjuned7@gmail.com', '$2y$10$82Zfl.SoxAqwebfPUncnnOBr/ZtYqNwzh096atIcqid/H/ZO38J/6', '2024-01-16 13:16:58', '2024-07-03 11:37:46'),
(3, 2, 1, '2y10lvXReLoMpY9gDiepX8LZUB2W2vO4RJNlo2UPj6dFMG7o3Ooh6', '861787', 'iren', 'default.svg', 'irenpasu@gmail.com', '$2y$10$/jhAS/cwz/UFuqF5i7baDeAZ1BV6HCFLv7Nol8Aj/uEcjaoXMqdBa', '2024-01-18 18:40:03', '2024-01-18 18:40:49'),
(4, 2, 1, '2y10c6gNNhzNxYGvV3OatwNLuvqFTxiffzhXbUGu554kYR0c73xM9Fe', '272853', 'arlan', 'default.svg', 'arlan270899@gmail.com', '$2y$10$FB6N7COeVn/Sy2wmYHrW6unPc6j2C5/zgh60TU3nrXfDO3fovGySm', '2024-06-11 08:15:20', '2024-06-11 08:15:42'),
(5, 3, 1, '2y10m7LMXOdG566rbTGczzWrOTgSz34EpJVjBhNTrul7PvyCbOXTWhS', '365309', 'HIKEN', 'default.svg', 'Koloweldiardus@gmail.com', '$2y$10$H9oKiRuDYU3E4WspC6q05eZ4wRqocIwczy07snhzbBzVmA28Gy6cG', '2024-07-06 20:16:31', '2024-07-06 20:16:31'),
(6, 3, 1, '2y10rarEK3zgFYFWW4XC4ZeVvuFrqHm9MSBfLaCJkwyTOzYswQNY8ZXvy', '159578', 'moci', 'default.svg', 'redylelan123@gmail.com', '$2y$10$9MAB/QCWgY/zx6d9ZoAULuEE8wSiOwQoN30A71ZqkQ7D3ov17kfJy', '2024-07-12 01:49:16', '2024-07-12 01:49:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(4, 1, 4),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_sub_menu` int(11) DEFAULT NULL
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
  `id_menu` int(11) NOT NULL,
  `menu` varchar(50) DEFAULT NULL
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
  `id_role` int(11) NOT NULL,
  `role` varchar(35) DEFAULT NULL
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
  `id_status` int(11) NOT NULL,
  `status` varchar(35) DEFAULT NULL
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
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
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
  `id_vm` int(11) NOT NULL,
  `img_vm` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  MODIFY `id_cuaca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `fungsi_jalan`
--
ALTER TABLE `fungsi_jalan`
  MODIFY `id_fungsi_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `informasi_khusus`
--
ALTER TABLE `informasi_khusus`
  MODIFY `id_informasi_khusus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kecelakaan_menonjol`
--
ALTER TABLE `kecelakaan_menonjol`
  MODIFY `id_kecelakaan_menonjol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas_jalan`
--
ALTER TABLE `kelas_jalan`
  MODIFY `id_kelas_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kemiringan_jalan`
--
ALTER TABLE `kemiringan_jalan`
  MODIFY `id_kemiringan_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kondisi_cahaya`
--
ALTER TABLE `kondisi_cahaya`
  MODIFY `id_kondisi_cahaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `laka`
--
ALTER TABLE `laka`
  MODIFY `id_laka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT untuk tabel `permukaan_jalan`
--
ALTER TABLE `permukaan_jalan`
  MODIFY `id_permukaan_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pesan_kapolri`
--
ALTER TABLE `pesan_kapolri`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `polres`
--
ALTER TABLE `polres`
  MODIFY `id_polres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `status_jalan`
--
ALTER TABLE `status_jalan`
  MODIFY `id_status_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tingkat_kecelakaan`
--
ALTER TABLE `tingkat_kecelakaan`
  MODIFY `id_tingkat_kecelakaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tipe_jalan`
--
ALTER TABLE `tipe_jalan`
  MODIFY `id_tipe_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `titik_rawan`
--
ALTER TABLE `titik_rawan`
  MODIFY `id_titik_rawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id_vm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `laka`
--
ALTER TABLE `laka`
  ADD CONSTRAINT `laka_ibfk_1` FOREIGN KEY (`id_informasi_khusus`) REFERENCES `informasi_khusus` (`id_informasi_khusus`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_10` FOREIGN KEY (`id_kemiringan_jalan`) REFERENCES `kemiringan_jalan` (`id_kemiringan_jalan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_11` FOREIGN KEY (`id_status_jalan`) REFERENCES `status_jalan` (`id_status_jalan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_12` FOREIGN KEY (`id_polres`) REFERENCES `polres` (`id_polres`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_13` FOREIGN KEY (`id_titik_rawan`) REFERENCES `titik_rawan` (`id_titik_rawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_2` FOREIGN KEY (`id_kondisi_cahaya`) REFERENCES `kondisi_cahaya` (`id_kondisi_cahaya`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_3` FOREIGN KEY (`id_cuaca`) REFERENCES `cuaca` (`id_cuaca`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_4` FOREIGN KEY (`id_tingkat_kecelakaan`) REFERENCES `tingkat_kecelakaan` (`id_tingkat_kecelakaan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_5` FOREIGN KEY (`id_kecelakaan_menonjol`) REFERENCES `kecelakaan_menonjol` (`id_kecelakaan_menonjol`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_6` FOREIGN KEY (`id_fungsi_jalan`) REFERENCES `fungsi_jalan` (`id_fungsi_jalan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_7` FOREIGN KEY (`id_kelas_jalan`) REFERENCES `kelas_jalan` (`id_kelas_jalan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_8` FOREIGN KEY (`id_tipe_jalan`) REFERENCES `tipe_jalan` (`id_tipe_jalan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laka_ibfk_9` FOREIGN KEY (`id_permukaan_jalan`) REFERENCES `permukaan_jalan` (`id_permukaan_jalan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD CONSTRAINT `user_access_sub_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_access_sub_menu_ibfk_2` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

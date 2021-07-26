-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jul 2021 pada 10.03
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdmreport2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id_aktivitas` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `proyek` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `aktivitas` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `aktivitas`
--

INSERT INTO `aktivitas` (`id_aktivitas`, `username`, `proyek`, `lokasi`, `aktivitas`, `created_at`, `updated_at`) VALUES
(13, 'user4', 'a', 'a', 'aa', '2021-07-12 17:36:48', '2021-07-12 17:36:56'),
(14, 'user4', 'aaaaa', 'aaaaaaaaaaaa', 'aaaaaaaaaaaaaa', '2021-07-12 18:32:14', '2021-07-12 18:32:14'),
(16, 'user5', 'userrr55baru', 'user55', 'user555555', '2021-07-12 19:38:38', '2021-07-23 01:01:37'),
(24, 'user7', 'sarapan slurr', 'rumah masing2', 'makan makan', '2021-07-19 06:36:42', '2021-07-19 06:38:31'),
(25, 'user5', 'Instal Fire Alarm ngab', 'Surabaya ngab', 'briefing kabel\r\nmematikan skakel', '2021-07-19 08:10:25', '2021-07-19 08:11:10'),
(26, 'user6', 'Mabar', 'Warkop', 'Push rank', '2021-07-23 01:21:02', '2021-07-23 01:21:02'),
(27, 'user5', 'MDM intership', 'Malang', 'Lapor Progress\r\n', '2021-07-26 13:54:28', '2021-07-26 13:54:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset`
--

CREATE TABLE `aset` (
  `id_aset` int(11) UNSIGNED NOT NULL,
  `nama_aset` varchar(255) NOT NULL,
  `jumlah_tersedia` int(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `aset`
--

INSERT INTO `aset` (`id_aset`, `nama_aset`, `jumlah_tersedia`, `lokasi`, `created_at`, `updated_at`) VALUES
(3, 'Meja', 1, 'Malang', '2021-07-17 16:19:39', '2021-07-26 14:50:38'),
(4, 'Pemotong Kuku Babi', 5, 'Sidoarjo Taman', '2021-07-19 03:02:28', '2021-07-19 06:17:31'),
(6, 'Laptop Lenovo', 3, 'surga', '2021-07-19 06:12:30', '2021-07-19 08:24:11'),
(7, 'Keranjang', 7, 'Malang', '2021-07-19 06:15:36', '2021-07-19 06:15:46'),
(8, 'Sapu', 5, 'Surabaya', '2021-07-26 13:57:31', '2021-07-26 13:57:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-07-08-104510', 'App\\Database\\Migrations\\Aktivitas', 'default', 'App', 1625741790, 1),
(2, '2021-07-10-062947', 'App\\Database\\Migrations\\Pegawai', 'default', 'App', 1625898882, 2),
(3, '2021-07-10-081340', 'App\\Database\\Migrations\\Users', 'default', 'App', 1625905159, 3),
(4, '2021-07-17-075951', 'App\\Database\\Migrations\\Aset', 'default', 'App', 1626509220, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `jenis_kelamin`, `no_telp`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Anton', 'pria', '081234555678', 'anton@gmail.com', 'Jl. Mawar Putih No. 190, Waru Sidoarjo', '2021-07-10 01:34:55', NULL),
(2, 'Budi', 'pria', '08571234567', 'budi@gmail.com', 'Jl. Melati Putih No. 77, Gedangan Sidoarjo', '2021-07-10 01:34:55', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `id_aset` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `jumlah_pinjam` int(255) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengajuan` varchar(100) DEFAULT NULL,
  `status_barang` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_aset`, `username`, `jumlah_pinjam`, `tgl_pinjam`, `tgl_pengembalian`, `status_pengajuan`, `status_barang`, `created_at`, `updated_at`) VALUES
(11, 4, 'user5', 5, '2021-07-29', '2021-07-30', 'Disetujui', 'Sudah Dikembalikan', '2021-07-19 08:16:55', '2021-07-23 01:33:36'),
(15, 6, 'user7', 2, '2021-07-30', '2021-07-31', '✅', '✅', '2021-07-23 01:51:16', '2021-07-23 01:51:56'),
(16, 3, 'user7', 1, '2021-07-29', '2021-07-31', '❌', '', '2021-07-23 01:52:21', '2021-07-23 01:52:29'),
(17, 4, 'user7', 1, '2021-07-24', '2021-07-31', 'Menunggu Konfirmasi', NULL, '2021-07-23 01:59:45', '2021-07-23 01:59:45'),
(18, 8, 'user5', 2, '2021-07-29', '2021-07-31', '✅', '✅', '2021-07-26 13:58:31', '2021-07-26 14:00:24'),
(19, 3, 'jevin', 2, '2021-07-26', '2021-07-26', '❌', '', '2021-07-26 14:24:38', '2021-07-26 14:25:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `email`, `phone`, `address`, `divisi`, `role`, `deskripsi`, `created_at`, `updated_at`) VALUES
('jevin', '$2y$10$A05V4DWgwbtjifvYOf5KXuKI15a0scTAruMZaWuXyTeMYxcYHMMoG', 'jevin', 'jevinarda@gmail.com', 2147483647, 'Jl. Semarang 5', 'Mabar', 'user', 'Aku ganteng', '2021-07-26 13:56:41', '2021-07-26 14:01:59'),
('user4', '$2y$10$37cFrYWJCh7rzxUXeLZhXu4Mog2FMCjwHOj8DL4QtaTL67MMKNIJ6', 'user4divisi', '', 0, 'user4', '', 'admin', NULL, '2021-07-10 03:36:06', '2021-07-10 03:36:06'),
('user5', '$2y$10$kipgSX0bFnfLb1cN50clC.JHZdYpbrIvky2q53epadWre8bCZYDFa', 'User 5 nama', 'user5@user5.com', 62828391, 'user 5 alamat', 'perkopian', 'user', 'lorem ipsummmmmm', '2021-07-10 03:41:21', '2021-07-23 01:18:41'),
('user6', '$2y$10$7.Rzzha1gWBgYe/lVcJno.7yaQkjkASQC57xZi01QUHLe8o4TEd06', 'User 6', 'user6@user6.com', 628123456, 'Sidoarjo', 'Permabaran', 'user', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-07-19 06:26:43', '2021-07-23 01:20:00'),
('user7', '$2y$10$oH9G0doq/d3gL4MQJFe/s.hHFMMAyIVML1NUJQGub.wu7ptkr/JNq', 'user7', 'user7', 0, 'user7', 'user7', 'user', NULL, '2021-07-10 03:48:55', '2021-07-10 03:48:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_aset` (`id_aset`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id_aktivitas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD CONSTRAINT `aktivitas_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_aset`) REFERENCES `aset` (`id_aset`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

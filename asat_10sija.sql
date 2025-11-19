-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2025 pada 02.57
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asat_10sija`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `tentang` varchar(100) NOT NULL,
  `profesi` varchar(100) NOT NULL,
  `deskripsi_profesi` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `website` text NOT NULL,
  `gelar` varchar(30) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `freelance` tinyint(1) NOT NULL,
  `keterangan_about` varchar(255) NOT NULL,
  `keterangan_skill` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `url_hero` varchar(255) NOT NULL,
  `url_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nama_depan`, `nama_belakang`, `tentang`, `profesi`, `deskripsi_profesi`, `tgl_lahir`, `website`, `gelar`, `hp`, `email`, `kota`, `freelance`, `keterangan_about`, `keterangan_skill`, `skill`, `url_hero`, `url_foto`) VALUES
(24, 'Lingga', 'Ramadhan', 'I am Security Engineer', 'Security Engineer', 'Security Engineer is a professional responsible for designing,implementing,and maintaining security', '2008-09-17', 'https://asat-lingga.com/index.php', 'bachelor', '089662925949', 'adhann30@gmail.com', 'Bogor', 1, 'Security Engineer is a professional responsible for designing, implementing, and maintaining security measures to protect computer systems, networks, and data from threats such as unauthorized access, cyberattacks, and data breaches.', 'Web  Request, LFI, Steganography, Metadata ', 'Web Request, 90%, LFI, 93%, Steganography, 80%, Metadata, 100%', 'Ryujin itzy.jpg', 'WhatsApp Image 2024-09-19 at 21.24.29_472ca4d5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `deskripsi_kontak` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `deskripsi_kontak`, `alamat`, `peta`) VALUES
(3, 'Contact via IG, WA, or Email', 'Jl. H. Abu Bakar, Cipambuan, Babakan Madang, Kab.Bogor, Jawa barat', 'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d495.4647561893556!2d106.84836597754386!3d-6.557232975330715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1ssicc!5e0!3m2!1sid!2sid!4v1750058528119!5m2!1sid!2sid frameborder=0 width=100% height=270px style=border:0; allowfullscreen= loading=lazy referrerpolicy=no-referrer-when-downgrade');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama_pengirim` varchar(30) NOT NULL,
  `email_pengirim` varchar(100) NOT NULL,
  `judul_pesan` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tgl_pesan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

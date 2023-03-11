-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2023 pada 08.23
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appem_alfin_kel2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('3277025062014551', 'Ardi Septian', 'ardi', '12345678', 2147483647),
('3277025062014552', 'Reyhan RIzki Maulana', 'elle', '12345678', 890398193),
('3277025062014553', 'raka', 'raka', '1212', 890398190),
('3277025062014554', 'Reyhan', 'elle', '12345678', 598456216);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2023-02-26', '3277025062014551', 'Di Kp Veteran Rt08/Rw06 ada jalan yang berlubang , mohon bantuan nya, soalnya jika tidak diperbaiki takut memakan korban', 'Jalan Berlubang1.jpg', 'selesai'),
(2, '2023-02-27', '3277025062014552', 'Di Kp Veteran terdapat jalan yang berlubang, mohon bantuannya karena ditakutkan memakan korban jiwa', 'images (1).jpeg', 'selesai'),
(3, '2023-02-27', '3277025062014553', 'Di Kp saya telah terjadi banjir, mohon bantuannya', 'images (1).jpeg', 'selesai'),
(4, '2023-02-27', '3277025062014552', 'Di Kp Veteran telah terjadi banjir mohon bantuan nya, karna sudah 3 hari air nya  tidak surut', 'images (3).jpeg', 'selesai'),
(5, '2023-02-27', '3277025062014552', 'Di Kp Veteran telah terjadi banjir mohon bantuan nya, karna sudah 3 hari air nya  tidak surut', 'images (3).jpeg', 'selesai'),
(6, '2023-02-27', '3277025062014552', 'Di Kp legok ada sebuah jalan yang berlubang, mohon bantuannya', 'images (1).jpeg', '0'),
(7, '2023-02-27', '3277025062014552', 'Di Kp legok ada sebuah pohon yang tumbang, mohon bantuannya', 'images (6).jpeg', '0'),
(8, '2023-02-27', '3277025062014552', 'Di Kp saya telah terjadi pohon tumbang , mohon bantuan nya', 'images (3).jpeg', '0'),
(9, '2023-02-27', '3277025062014552', 'telah terjadi banjir', 'images (9).jpeg', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(16) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(8, 'Alfin Hamdani', 'admin', '123456', '08903981296', 'admin'),
(9, 'Yulianti Aldila', 'petugas', '123456', '089824203549', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(8, 11, '2023-02-26', 'Terima kasih atas laporan nya, pihak kami akan segera ke tkp untuk memperbaikinya                \r\n        ', 8),
(9, 2, '2023-02-27', 'Terimakasih atas laporan yang telah anda buat, kami dan regu kami akan segera datang untuk memperbaikinya.                \r\n                ', 8),
(10, 3, '2023-02-27', 'Terimakasih atas laporan yang telah dibuat, kami akan segera ke TKP                \r\n                ', 8),
(11, 4, '2023-02-27', 'Terimakasih atas laporan yang telah dibuat, kami dan regu kami akan siap membantu                \r\n                ', 8),
(12, 5, '2023-02-27', 'Terimakasih atas laporan yang telah dibuat, kami akan segera memperbaikinya              \r\n                ', 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Apr 2023 pada 16.39
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id_ektra` bigint(20) NOT NULL,
  `nama_ekstra` varchar(15) NOT NULL,
  `nis` bigint(20) NOT NULL,
  `id_ta` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nuptk` bigint(12) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `agama` varchar(8) NOT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `no_hp` bigint(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `pendidikan` char(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `id_jadwal` bigint(20) NOT NULL,
  `jam_masuk` time NOT NULL,
  `hari_masuk` date NOT NULL,
  `kode_kelas` bigint(20) NOT NULL,
  `kode_pelajaran` bigint(20) NOT NULL,
  `nuptk` bigint(20) NOT NULL,
  `id_ta` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_nilai`
--

CREATE TABLE `jenis_nilai` (
  `id_jenisnilai` bigint(20) NOT NULL,
  `nilai_uts` int(3) NOT NULL,
  `nilai_uas` int(3) NOT NULL,
  `nilai_tugas` int(3) NOT NULL,
  `absen` varchar(10) NOT NULL,
  `id_nilai` bigint(20) NOT NULL,
  `kode_kelas` bigint(20) NOT NULL,
  `nis` bigint(20) NOT NULL,
  `nuptk` bigint(20) NOT NULL,
  `kode_pelajaran` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` bigint(20) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `kapasitas` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_pelajaran` bigint(15) NOT NULL,
  `nama_Pelajaran` varchar(20) NOT NULL,
  `kkm` bigint(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `nis` bigint(20) NOT NULL,
  `nama` char(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `tempat_lahir` char(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` bigint(20) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `rapot` varchar(5) NOT NULL,
  `nis` bigint(20) NOT NULL,
  `kode_pelajaran` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` bigint(20) NOT NULL,
  `nama_pegawai` varchar(15) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `id_ta` bigint(20) NOT NULL,
  `id_pengguna` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` bigint(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nis` bigint(20) NOT NULL,
  `nuptk` bigint(20) NOT NULL,
  `id_wali` bigint(20) NOT NULL,
  `id_pegawai` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_ta` bigint(20) NOT NULL,
  `ta` int(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_murid`
--

CREATE TABLE `wali_murid` (
  `id_wali` bigint(20) NOT NULL,
  `nama_wali` varchar(15) NOT NULL,
  `kode_kelas` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id_ektra`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nuptk`);

--
-- Indeks untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `kode_pelajaran` (`kode_pelajaran`),
  ADD KEY `nuptk` (`nuptk`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indeks untuk tabel `jenis_nilai`
--
ALTER TABLE `jenis_nilai`
  ADD KEY `id_nilai` (`id_nilai`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `nis` (`nis`),
  ADD KEY `nuptk` (`nuptk`),
  ADD KEY `kode_pelajaran` (`kode_pelajaran`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_pelajaran`);

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nis` (`nis`),
  ADD KEY `kode_pelajaran` (`kode_pelajaran`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `nis` (`nis`),
  ADD KEY `nuptk` (`nuptk`),
  ADD KEY `id_wali` (`id_wali`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indeks untuk tabel `wali_murid`
--
ALTER TABLE `wali_murid`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD CONSTRAINT `ekstrakurikuler_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `murid` (`nis`);

--
-- Ketidakleluasaan untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_1` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`),
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_2` FOREIGN KEY (`kode_pelajaran`) REFERENCES `mata_pelajaran` (`kode_pelajaran`),
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_3` FOREIGN KEY (`nuptk`) REFERENCES `guru` (`nuptk`),
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_4` FOREIGN KEY (`id_jadwal`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_5` FOREIGN KEY (`id_ta`) REFERENCES `tahun_ajaran` (`id_ta`);

--
-- Ketidakleluasaan untuk tabel `jenis_nilai`
--
ALTER TABLE `jenis_nilai`
  ADD CONSTRAINT `jenis_nilai_ibfk_1` FOREIGN KEY (`id_nilai`) REFERENCES `nilai` (`id_nilai`),
  ADD CONSTRAINT `jenis_nilai_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`),
  ADD CONSTRAINT `jenis_nilai_ibfk_3` FOREIGN KEY (`nis`) REFERENCES `murid` (`nis`),
  ADD CONSTRAINT `jenis_nilai_ibfk_4` FOREIGN KEY (`nuptk`) REFERENCES `guru` (`nuptk`),
  ADD CONSTRAINT `jenis_nilai_ibfk_5` FOREIGN KEY (`kode_pelajaran`) REFERENCES `mata_pelajaran` (`kode_pelajaran`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `murid` (`nis`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`kode_pelajaran`) REFERENCES `mata_pelajaran` (`kode_pelajaran`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `murid` (`nis`),
  ADD CONSTRAINT `pengguna_ibfk_2` FOREIGN KEY (`nuptk`) REFERENCES `guru` (`nuptk`),
  ADD CONSTRAINT `pengguna_ibfk_3` FOREIGN KEY (`id_wali`) REFERENCES `wali_murid` (`id_wali`),
  ADD CONSTRAINT `pengguna_ibfk_4` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `wali_murid`
--
ALTER TABLE `wali_murid`
  ADD CONSTRAINT `wali_murid_ibfk_1` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

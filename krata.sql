-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2020 pada 06.25
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(12) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `username_admin` varchar(25) NOT NULL,
  `password_admin` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `role`) VALUES
(1, 'arul', 'arul', 'arul', 'Manager'),
(2, 'admin', 'admin', 'admin', 'administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `no_dokumen` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kategori_dokumen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `no_dokumen`, `keterangan`, `kategori_dokumen`) VALUES
(0, 'SM01', 'Surat Antar Barang', 'Surat Masuk'),
(1, 'SM02', 'Surat Lamaran Kerja', 'Surat Masuk\r\n'),
(2, 'SK01', 'Surat Perjanjian Barang', 'Surat Keluar'),
(5, 'SM03', 'Surat Perjalanan', 'Surat Masuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(3) NOT NULL,
  `nama_karyawan` varchar(25) NOT NULL,
  `alamat_karyawan` varchar(100) NOT NULL,
  `gaji` int(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `gaji`, `jabatan`) VALUES
(1, 'Rinaldi', 'solo', 1000000, 'Sales'),
(2, 'aril', 'solobaru', 500000, 'Office Boy'),
(3, 'tukul', 'klaten', 500000, 'pembantu'),
(6, 'Arwana', 'Mburi dewe', 500000, 'sopir'),
(7, 'Ajid', 'Klaten', 400000, 'Kenek');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(255) NOT NULL,
  `tarif` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Jakarta', 15000),
(2, 'Papua', 90000),
(3, 'Bali', 50000),
(4, 'Padang', 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(12) NOT NULL,
  `email_pelanggan` varchar(255) NOT NULL,
  `password_pelanggan` varchar(25) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `notlp_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `notlp_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'arul@rinaldi.com', '1234', 'arul', '09808080', 'Desa.krg Layung Kec.Sukra'),
(2, 'anana@na.com', '1234', 'ana', '089898989898', 'nanana'),
(3, 'rey@ymail.com', '1234', 'rey', '08989898989', 'bojong'),
(4, 'kaburran@mail.com', '1234', 'kabur kaburan', '08989898989', 'flores ntt'),
(5, 'kabur@mail.com', '1234', 'kabur', '08989898989', 'flores ntb'),
(6, 'rool@mail.com', '1234', 'rool', '08123456789', 'Nusa Dua Bali Blok Kanan No.10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`) VALUES
(9, 3, 1, '2019-12-09', 1510000, 'Jakarta', 10000, 'Desa.krg Layung Kec.Sukra'),
(11, 3, 1, '2019-12-09', 2010000, 'Jakarta', 10000, 'Desa.krg Layung Kec.Sukra'),
(14, 4, 2, '2019-12-10', 1890000, 'Papua', 90000, 'Desa.krg Layung Kec.Sukra'),
(20, 1, 0, '2020-06-06', 5000000, '', 0, 'kakakkakak'),
(21, 1, 0, '2020-06-06', 1000000, '', 0, ''),
(22, 1, 2, '2020-06-23', 540000, 'Papua', 90000, 'Desa.krg Layung Kec.Sukra'),
(23, 6, 3, '2020-06-24', 170000, 'Bali', 50000, 'Nusa Dua Bali No. 10 Blok kanan samping alfamart');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(5, 4, 7, 1),
(6, 5, 5, 1),
(7, 6, 5, 1),
(8, 7, 1, 1),
(9, 8, 4, 1),
(10, 9, 1, 1),
(11, 10, 1, 3),
(12, 11, 4, 2),
(13, 12, 4, 1),
(14, 12, 6, 1),
(15, 13, 1, 1),
(16, 13, 3, 1),
(17, 14, 7, 2),
(18, 15, 4, 1),
(19, 16, 4, 2),
(20, 16, 1, 1),
(21, 17, 5, 1),
(22, 18, 5, 1),
(23, 20, 9, 1),
(24, 21, 4, 1),
(25, 22, 5, 3),
(26, 23, 24, 1),
(27, 23, 30, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengluaran`
--

CREATE TABLE `pengluaran` (
  `id_pengluaran` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `Jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengluaran`
--

INSERT INTO `pengluaran` (`id_pengluaran`, `keterangan`, `Jumlah`) VALUES
(1, 'Hosting', 300000),
(3, 'Peralatan Kantor', 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(50) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(23, 'Tudung Saji', 34000, 300, 'tudung saji.jpg', 'Deskripsi Kerajinan Tangan Rotan Natural - Tudung Saji OVAL - 37x30x14cm\r\nDapat digunakan sebagai penutup makanan\r\n\r\nSpesifikasi\r\nUkuran : panjang 37 x 30 x 14cm\r\nWarna : coklat', 5),
(24, 'Keranjang Sepeda Rotan', 70000, 2500, 'keranjang.jpg', 'Deskripsi Kerajinan Tangan Rotan - Keranjang Sepeda Depan Serbaguna 26x25x25 cm\r\nDapat digunakan sebagai :\r\n- Aksesoris atau Hiasan / Dekorasi Unik Rumah\r\n- Tempat meletakkan berbagai macam benda / Keranjang serba guna', 9),
(25, 'Cangkir Bambu', 20000, 300, 'cangkir bambu.jpg', 'Spesifikasi :\r\n- diarmeter -+ 6-7cm\r\n- Tinggi -+ 10cm\r\n- bahan Bambu\r\n\r\nCocok Buat Hiasan Rumah dan Bisa Juga Buat Ngopi !', 9),
(26, 'Sapu Lidi', 10000, 200, 'download.jpg', 'Sapu Lidi cocok untuk menyapu halaman rumah anda\r\ndipilih dari lidi pilihan terjamin kualitasnya', 10),
(27, 'Miniatur Sepeda Rotan', 50000, 1000, 'sepeda rotan.jpg', 'Cocok untuk hiasan rumah, maupun dekorasi ruang tamu anda\r\nDapat digunakan sebagai :\r\n- Aksesoris atau Hiasan / Dekorasi Unik Rumah\r\nSpesifikasi\r\nUkuran : 23 x 13 x 20cm\r\nWarna : Coklat', 10),
(28, 'Sarung Lampu Rotan', 112000, 700, 'tempat lampu.jpg', 'Cocok untuk di jadikan hiasan lampu dirumah anda\r\nSpesifikasi\r\nUkuran : 37 x 37 x 27cm\r\nWarna : Coklat', 5),
(30, 'Kepala Monyet Batok Kelapa', 50000, 1000, 'kepala monyet.jpg', 'Kerajinan tangan kepala monyet terbuat dari batok kelapa', 999),
(32, 'Boneka Harry Potter Rajut', 120000, 10, 'boneka harry.jpeg', 'Boneka harry potter dari rajut\r\nDimensi	:	8 x 4 x 8 (cm)', 10),
(33, 'Tali Jam Kulit Sapi Asli', 150000, 10, 'tali jam kulit.jpg', 'Tali jam tangan kulit asli yang bermaterialkan kulit asli. Sangat cocok bagi anda yang menyukai keunikan dan elegan.\r\nDimensi:\r\n- panjang 25 cm\r\n- lebar : 20 mm\r\n\r\nWarna :\r\n-coklat', 5),
(34, 'Ukiran Siluet Singa', 500000, 500, 'ukiran singa.jpg', 'Ukiran yang sangat cocok dipajang di dinding rumah untuk menambah elegan pada ruangan\r\nDimensi :	40 x 5 x 40 (cm)', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `pengluaran`
--
ALTER TABLE `pengluaran`
  ADD PRIMARY KEY (`id_pengluaran`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pengluaran`
--
ALTER TABLE `pengluaran`
  MODIFY `id_pengluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

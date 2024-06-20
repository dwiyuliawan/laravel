-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2024 pada 16.57
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
-- Database: `db_foto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'zahra', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2024-06-18 21:28:18', '18062024232757p.jpg'),
(3, 'zahra', 'zahra', '81dc9bdb52d04dc20036dbd8313ed055', '2024-06-18 21:33:05', '18062024232757p.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`, `id`) VALUES
(1, 'ME', 'gome@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`, `id`) VALUES
(1, 'Jl. KH. Hasyim Asyari, Desa Cikeusal-lor, Kec. Ketanggungan, Brebes, Jawa Tengah, Indonesia,', 'dazazart007@gmail.com', '08213517362', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(11) NOT NULL,
  `nama_galery` varchar(100) NOT NULL,
  `foto_galery` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id_galery`, `nama_galery`, `foto_galery`, `id`) VALUES
(4, 'Prewed1', '13062024003755c.jpg', 0),
(5, 'preweding2', '13062024003852c.jpg', 0),
(6, 'prewedding3', '13062024004115c.jpg', 0),
(7, 'prewedding4', '13062024004301p.jpg', 0),
(8, 'prewedding5', '13062024004328c.jpg', 0),
(9, 'prewedding6', '13062024004417p.jpg', 0),
(10, 'prewedding7', '13062024004441p.jpg', 0),
(11, 'prewedding8', '13062024004543p.jpg', 0),
(12, 'prewedding9', '13062024004621p.jpg', 0),
(13, 'prewedding10', '13062024004643p.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`) VALUES
(2, 'anwarfuad', 'anwarfuad0987@gmail.com', 'ca097fc1399797a495f608422b4bc806', '089524173746', 'adiwerna rt 17 rw 8 '),
(3, 'agus', 'agus123@gmail.com', 'd90f589c12540210b6bee57c127ec9e4', '089524173744', 'jl salak'),
(4, 'dwi', 'dwiyuliawan25@gmail.com', '202cb962ac59075b964b07152d234b70', '08985673325', 'desa dukuh tengah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_paket` text NOT NULL,
  `foto_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`, `ket_paket`, `foto_paket`) VALUES
(4, 'Wisuda', 1500000, 'Paket wisuda ini bisa di peruntukan untuk perorangan, jurusan, atau semua wisudawan sekaligus. Dengan tambahan 2 destinasi spot foto menjadikan momen wisuda mu menjadi lebih bermakna.', '13062024173619].jpg'),
(5, 'Lamaran', 800000, 'bagi muda mudi yang ingin melangsungkan lamaran paket lamaran ini sangat cocok untuk mengabadikan momen saklar tersebut.', '14062024012309].jpg'),
(6, 'Prewediing', 1000000, 'Paket preweding sangat cocok untuk kamu yang ingin mengabadikan momen sebelum pernikahan', '14062024012713].jpg'),
(7, 'Jalan-jalan', 500000, 'Bagi kamu yang ingin mengabadikan momen di destinasi wisata paket ini cocok untuk km pilih.', '14062024013119].jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '											<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">This is Therms and Conditions</span></p><p align=\"justify\"><br></p>											'),
(5, 'Rekening', 'rekening', '																																																							123456789 Bank BRI a/n ANA AMINATUZ ZAHRA											'),
(2, 'Privacy Policy', 'privacy', '											<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This is Privacy Policy</span>'),
(3, 'Tentang Kami', 'aboutus', '																																												<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Kami menyediakan berbagai macam paket jasa fotografi untuk anda</span>'),
(11, 'FAQs', 'faqs', '																																																																		<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara booking paket jasa fotografi disini?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1 : Pertama anda harus mendaftar terlebih dahulu sebagai member melalui menu yang telah disediakan.</span></br><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">2 : Lalu masuk ke halaman Dashboard.</span></br><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">3 : Pilih menu daftar paket.</span></br><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">4 : Pilih Paket sesuai kebutuhan.</span></br><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">5 : Klik tombol Booking.</span></br><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">6 : Atur tanggal dan jam yang di inginkan.</span></br><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">7 : Setelah Booking berhasil, Upload bukti pembayaran.</span>\r\n</div>																																																																		');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `stt_trx` varchar(50) NOT NULL,
  `tgl_take` date NOT NULL,
  `jam_take` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_bayar` text NOT NULL,
  `ubah_tgl` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trx`, `email`, `id_paket`, `tgl_trx`, `stt_trx`, `tgl_take`, `jam_take`, `catatan`, `tgl_bayar`, `bukti_bayar`, `ubah_tgl`) VALUES
('18062024230946', 'dwiyuliawan25@gmail.com', 7, '2024-06-18', 'Menunggu Konfirmasi', '2024-12-05', '10:00', 'Ketemu di pasar banjar jam 10', '2024-06-19', '19062024041649Screenshot_2024-06-19-04-12-10-856_id.co.bri.brimo[1].jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indeks untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

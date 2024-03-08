-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Feb 2024 pada 08.46
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandvikasset_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_address` varchar(255) NOT NULL,
  `about_email` varchar(60) NOT NULL,
  `about_telephone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_address`, `about_email`, `about_telephone`) VALUES
(1, 'PT. Sandvik SMC, Kuala Kencana, Light Industrial Park, Timika, Papua, Indonesia 99920', 'email.domain@sandvik.com', '(+62) 000 - 0000 - 0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(4, 'Internship', 'internship');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text,
  `comment_status` int(11) DEFAULT '0',
  `comment_parent` int(11) DEFAULT '0',
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_docking`
--

CREATE TABLE `tbl_docking` (
  `id_docking` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `user_di` varchar(100) NOT NULL,
  `locations` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_handphone`
--

CREATE TABLE `tbl_handphone` (
  `id_handphone` int(11) NOT NULL,
  `street_address` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `departement` varchar(250) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `email` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hdd`
--

CREATE TABLE `tbl_hdd` (
  `id_hdd` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_headset`
--

CREATE TABLE `tbl_headset` (
  `id_headset` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_home`
--

CREATE TABLE `tbl_home` (
  `home_id` int(11) NOT NULL,
  `home_caption_1` varchar(200) DEFAULT NULL,
  `home_caption_2` varchar(200) DEFAULT NULL,
  `home_bg_heading` varchar(50) DEFAULT NULL,
  `home_bg_testimonial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_home`
--

INSERT INTO `tbl_home` (`home_id`, `home_caption_1`, `home_caption_2`, `home_bg_heading`, `home_bg_testimonial`) VALUES
(1, 'SANDVIK ASSET MANAGEMENT', 'Sandvik Asset Management, make it easy to manage all data property.', 'ad8i13814.jpg', 'PicsArt_07-17-11_26_292.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ht`
--

CREATE TABLE `tbl_ht` (
  `id_ht` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `type_ht` varchar(150) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ipclock`
--

CREATE TABLE `tbl_ipclock` (
  `id_ipclock` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `po` varchar(100) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `locations` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `nama_jenis`) VALUES
(6, 'Aktif'),
(7, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keyboard`
--

CREATE TABLE `tbl_keyboard` (
  `id_keyboard` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laptop`
--

CREATE TABLE `tbl_laptop` (
  `id_laptop` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `laptop_date` date NOT NULL,
  `laptop_model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `hard_disk` varchar(150) NOT NULL,
  `processor` varchar(200) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_laptop`
--

INSERT INTO `tbl_laptop` (`id_laptop`, `assets_number`, `assets_name`, `laptop_date`, `laptop_model`, `brand`, `user_di`, `serial_number`, `mac_address`, `hard_disk`, `processor`, `operating_system`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANLD001', 'IDUPC575', '2023-10-09', 'T440', 'Lenovo', 'fafa', 'PC032D0Q', 'dadw2', '119.12 GB', 'Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz, 2501 MHz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lcdprojector`
--

CREATE TABLE `tbl_lcdprojector` (
  `id_lcdprojector` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `lcd_projector` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_monitor`
--

CREATE TABLE `tbl_monitor` (
  `id_monitor` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `monitor_date` date NOT NULL,
  `monitor_model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_navbar`
--

CREATE TABLE `tbl_navbar` (
  `navbar_id` int(11) NOT NULL,
  `navbar_name` varchar(50) DEFAULT NULL,
  `navbar_slug` varchar(200) DEFAULT NULL,
  `navbar_parent_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_navbar`
--

INSERT INTO `tbl_navbar` (`navbar_id`, `navbar_name`, `navbar_slug`, `navbar_parent_id`) VALUES
(1, 'Home', NULL, 0),
(15, 'News', 'blog', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_network`
--

CREATE TABLE `tbl_network` (
  `id_network` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `type_network` varchar(150) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_orbit`
--

CREATE TABLE `tbl_orbit` (
  `id_orbit` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `po` varchar(100) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `imei` varchar(100) NOT NULL,
  `locations` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pc`
--

CREATE TABLE `tbl_pc` (
  `id_pc` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `pc_date` date NOT NULL,
  `pc_model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `hard_disk` varchar(150) NOT NULL,
  `processor` varchar(200) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text,
  `post_contents` longtext,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(10, 'Internship Student', '', '<p style=\"text-align: center; \"><img src=\"http://localhost/sandvikasset/assets/images/d6e9b4ed3d9dc8abc33b8ce8c2fef0431.jpg\" class=\"img-thumbnail\" style=\"width: 100%;\"><br></p><p style=\"text-align: center; \"><br></p><p><span style=\"color: rgb(66, 66, 66);\">Hi! my name is ahmad ruslandia, i am a one-month summer intern at sandvik in Light Insdustrial park.</span></p><p><span style=\"color: rgb(66, 66, 66);\"><br></span></p><p><span style=\"color: rgb(66, 66, 66);\">I was 21 years old and staying in Timika for the job summer, i will then be going to studies in Makassar where iam currently studying computer science at Universitas Muslim Indonesia.</span></p><p><span style=\"color: rgb(66, 66, 66);\"> What iam enjoys about working in Sandvik (IT Support) is the enthusiasm of the team being eager to help interns to learn new things.</span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><br></p>', 'd6e9b4ed3d9dc8abc33b8ce8c2fef043.jpg', '2023-07-28 15:19:23', '2023-10-02 00:32:11', 4, '', 'internship-student', 1, 27, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL,
  `view_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(1, '2019-04-06 13:33:39', '::1', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_printer`
--

CREATE TABLE `tbl_printer` (
  `id_printer` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_scanner`
--

CREATE TABLE `tbl_scanner` (
  `id_scanner` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text,
  `site_favicon` varchar(50) DEFAULT NULL,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_logo_big` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_favicon`, `site_logo_header`, `site_logo_footer`, `site_logo_big`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`) VALUES
(1, 'SANDIVIK - ASSET 2020', 'Home', 'We are forward thinkers, driven by our passion to continuosly innovate smarter solutions and enable importants shifts.', 'Picsart_23-07-27_12-53-35-584.jpg', 'logo.png', 'logo.png', 'nwdn_file_temp_16097665861841.jpg', '#', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tablet`
--

CREATE TABLE `tbl_tablet` (
  `id_tablet` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `tablet_date` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `hard_disk` varchar(150) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tags`
--

CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `id_tv` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ups`
--

CREATE TABLE `tbl_ups` (
  `id_ups` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `type_ups` varchar(150) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_di` varchar(100) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_number` varchar(30) NOT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_area` varchar(100) NOT NULL,
  `user_division` varchar(255) NOT NULL,
  `user_room` varchar(50) NOT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_di`, `user_name`, `user_number`, `user_email`, `user_password`, `user_area`, `user_division`, `user_room`, `user_level`, `user_status`, `user_photo`) VALUES
(3, '13020200002', 'Ahmad Ruslandia Papua', '+6281200003388', 'rusland@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Highland', 'IT', 'Office', '1', '1', '68131940d12491591327a0b75a8a0c43.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541430, '2023-12-14 15:13:10', '::1', 'Chrome'),
(541431, '2023-12-24 10:49:43', '::1', 'Chrome'),
(541432, '2024-01-04 03:19:44', '::1', 'Chrome'),
(541433, '2024-02-04 07:44:04', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wifi`
--

CREATE TABLE `tbl_wifi` (
  `id_wifi` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks untuk tabel `tbl_docking`
--
ALTER TABLE `tbl_docking`
  ADD PRIMARY KEY (`id_docking`);

--
-- Indeks untuk tabel `tbl_handphone`
--
ALTER TABLE `tbl_handphone`
  ADD PRIMARY KEY (`id_handphone`);

--
-- Indeks untuk tabel `tbl_hdd`
--
ALTER TABLE `tbl_hdd`
  ADD PRIMARY KEY (`id_hdd`);

--
-- Indeks untuk tabel `tbl_headset`
--
ALTER TABLE `tbl_headset`
  ADD PRIMARY KEY (`id_headset`);

--
-- Indeks untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indeks untuk tabel `tbl_ht`
--
ALTER TABLE `tbl_ht`
  ADD PRIMARY KEY (`id_ht`);

--
-- Indeks untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `tbl_keyboard`
--
ALTER TABLE `tbl_keyboard`
  ADD PRIMARY KEY (`id_keyboard`);

--
-- Indeks untuk tabel `tbl_laptop`
--
ALTER TABLE `tbl_laptop`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Indeks untuk tabel `tbl_lcdprojector`
--
ALTER TABLE `tbl_lcdprojector`
  ADD PRIMARY KEY (`id_lcdprojector`);

--
-- Indeks untuk tabel `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  ADD PRIMARY KEY (`id_monitor`);

--
-- Indeks untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  ADD PRIMARY KEY (`navbar_id`);

--
-- Indeks untuk tabel `tbl_network`
--
ALTER TABLE `tbl_network`
  ADD PRIMARY KEY (`id_network`);

--
-- Indeks untuk tabel `tbl_pc`
--
ALTER TABLE `tbl_pc`
  ADD PRIMARY KEY (`id_pc`);

--
-- Indeks untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indeks untuk tabel `tbl_printer`
--
ALTER TABLE `tbl_printer`
  ADD PRIMARY KEY (`id_printer`);

--
-- Indeks untuk tabel `tbl_scanner`
--
ALTER TABLE `tbl_scanner`
  ADD PRIMARY KEY (`id_scanner`);

--
-- Indeks untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indeks untuk tabel `tbl_tablet`
--
ALTER TABLE `tbl_tablet`
  ADD PRIMARY KEY (`id_tablet`);

--
-- Indeks untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indeks untuk tabel `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`id_tv`);

--
-- Indeks untuk tabel `tbl_ups`
--
ALTER TABLE `tbl_ups`
  ADD PRIMARY KEY (`id_ups`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indeks untuk tabel `tbl_wifi`
--
ALTER TABLE `tbl_wifi`
  ADD PRIMARY KEY (`id_wifi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_docking`
--
ALTER TABLE `tbl_docking`
  MODIFY `id_docking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_handphone`
--
ALTER TABLE `tbl_handphone`
  MODIFY `id_handphone` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_hdd`
--
ALTER TABLE `tbl_hdd`
  MODIFY `id_hdd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_headset`
--
ALTER TABLE `tbl_headset`
  MODIFY `id_headset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ht`
--
ALTER TABLE `tbl_ht`
  MODIFY `id_ht` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_keyboard`
--
ALTER TABLE `tbl_keyboard`
  MODIFY `id_keyboard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_laptop`
--
ALTER TABLE `tbl_laptop`
  MODIFY `id_laptop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_lcdprojector`
--
ALTER TABLE `tbl_lcdprojector`
  MODIFY `id_lcdprojector` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  MODIFY `id_monitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_network`
--
ALTER TABLE `tbl_network`
  MODIFY `id_network` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pc`
--
ALTER TABLE `tbl_pc`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `tbl_printer`
--
ALTER TABLE `tbl_printer`
  MODIFY `id_printer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_scanner`
--
ALTER TABLE `tbl_scanner`
  MODIFY `id_scanner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_tablet`
--
ALTER TABLE `tbl_tablet`
  MODIFY `id_tablet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `id_tv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_ups`
--
ALTER TABLE `tbl_ups`
  MODIFY `id_ups` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541434;

--
-- AUTO_INCREMENT untuk tabel `tbl_wifi`
--
ALTER TABLE `tbl_wifi`
  MODIFY `id_wifi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

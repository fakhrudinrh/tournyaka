-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2021 pada 11.42
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tournyaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '2c151e2a544677e9f368ae92912b942c', '2021-09-15 10:51:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'fakhrudinhusaini@gmail.com', 1, '2021-09-14 15:47:17', 1),
(2, '::1', 'fakhrudinhusaini@gmail.com', NULL, '2021-09-14 16:22:20', 0),
(3, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-14 16:22:31', 1),
(4, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-14 16:22:56', 1),
(5, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-14 16:24:46', 1),
(6, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-14 16:26:57', 1),
(7, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-14 16:58:33', 1),
(8, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-15 06:07:31', 1),
(9, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-15 06:16:28', 1),
(10, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-15 07:19:40', 1),
(11, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-15 07:32:14', 1),
(12, '::1', 'fakhrudinhusaini@mhs.itenas.ac.id', NULL, '2021-09-15 07:34:00', 0),
(13, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-15 07:34:11', 1),
(14, '::1', 'fakhrudinhusaini@gmail.com1', NULL, '2021-09-15 07:34:30', 0),
(15, '::1', 'fakhrudinhusaini@gmail.com', NULL, '2021-09-15 07:34:41', 0),
(16, '::1', 'fakhrudinhusaini@gmail.com', NULL, '2021-09-15 07:43:49', 0),
(17, '::1', 'fakhrudinhusaini@mhs.itenas.ac.id', NULL, '2021-09-15 07:44:17', 0),
(18, '::1', 'fakhrudinhusaini@gmail.com', 2, '2021-09-15 10:14:29', 1),
(19, '::1', 'fakhrudinhusaini@gmail.com', 4, '2021-09-15 10:51:35', 1),
(20, '::1', 'fakhrudin', NULL, '2021-11-01 05:28:11', 0),
(21, '::1', 'fakhrudinhusaini@gmail.com', 5, '2021-11-01 05:30:51', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinasi`
--

CREATE TABLE `destinasi` (
  `id` int(11) NOT NULL,
  `nm_destinasi` varchar(50) DEFAULT NULL,
  `desc_destinasi` text DEFAULT NULL,
  `img_destinasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `destinasi`
--

INSERT INTO `destinasi` (`id`, `nm_destinasi`, `desc_destinasi`, `img_destinasi`) VALUES
(1, 'Pantai Timur dan Barat Pangandaran', 'Pantai Timur dan Barat Pangandaran merupakan tempat yang sering dikunjungi oleh para wisatawan, apabila anda menyukai keindahan sunrise, pantai timur pangandaran merupakan tempat yang sangat cocok dikunjungi untuk melihat terbitnya matahari sekitar pukul 5 - 6 pagi dan apabila anda menyukai keindahan sunset anda bisa melihatnya dari Pantai Barat Pangandaran sekitar pukul 5 - 6 sore. Selain itu, anda bisa bermain papan seluncur maupun volley pantai di sekitaran Pantai Barat Pangandaran.Terdapat beberapa tempat kuliner khas Pangandaran, tempat penginapan, maupun tempat oleh - oleh disekitaran Pantai Timur dan Barat Pangandaran ini.', '1O2A9901.jpg'),
(2, 'Pantai Pasir Putih', 'Pantai Pasir Putih Pangandaran memiliki keindahan alam yang mempesona, untuk menuju pantai pasir putih anda bisa melewati cagar alam dengan berjalan kaki, ataupun menaiki perahu wisata dari pantai barat. Anda bisa melakukan aktivitas snorkelling di pantai pasir putih ini melihat keindahan bawah laut. Selain itu, anda bisa melihat dan mengabadikan momen kapal ilegal fishing MV Viking Lagos yang ditenggelamkan oleh Menteri Kelautan dan Perikanan Susi Pudjiastuti.', '1O2A9975.jpg'),
(3, 'Pantai Batu Karas', 'Pantai Batu Karas terletak tidak jauh dari Pantai Timur dan Barat Pangandaran, dekat dengan objek wisata air Green Canyon. Keindahan Pantai Batu Karas tidak diragukan lagi, pengunjung yang berlibur ke Pangandaran wajib mengunjungi pantai batu karas, suasana pantai batu karas yang menenangkan jiwa. Ombak pada Pantai Batu Karas sangat cocok untuk anda yang hobi bermain surfing. Anda bisa membawa ataupun menyewa papan surfing di Pantai Batu Karas ini Pantai Batu Karas ini dijuluki sebagai surganya para peselancar. Selain itu, Pantai Batu Karas merupakan spot favorit untuk mendirikan tenda di pinggir pantai. Namun, apabila anda tidak ingin mendirikan tenda terdapat penginapan seperti villa, guest house, maupun hotel pada pantai batu karas ini.', '1O2A0629.jpg'),
(4, 'Pantai Batu Hiu', 'Pantai Batu Hiu merupakan tempat favorit para wisatawan. Dinamakan “Pantai Batu Hiu” karena dipinggir pantai terdapat batu karang yang menyerupai “Sirip Hiu”. Pantai Batu Hiu ini pula dijuluki sebagai “”Tanah Lot” nya Pangandaran. Pantai Batu Hiu cocok untuk anda yang ingin besantai karena suasana pada pantai batu hiu yang mendukung, terdapat banyak pepohonan dan gazebo. Banyak spot foto yang menarik pada Pantai Batu Hiu ini sehingga Pantai Batu Hiu ini wajib masuk list wisata ketika anda berlibur ke Pangandaran.', '1O2A0902.jpg'),
(5, 'Pantai Madasari', 'Pesona pantai madasari tidak kalah jauh dengan pesona pantai - pantai lainnya yang terdapat di Pangandaran. Ibaratnya, pantai madasari ini sebagai pantai penutup di kala berlibur ke Pangandaran. Terletak di desa Cimerak, Kabupaten Pangandaran. Anda bisa mendaki batu karang untuk melihat pesona laut dari atas. Selain pantai batu karas, pantai madasari ini juga menjadi spot favorit wisatawan untuk camping, banyak para wisatawan yang mendirikan camp di pinggir pantai madasari karena suasana pantai tersebut yang mendukung sekaligus menunggu untuk melihat keindahan sunset dan sunrise pada pantai madasari ini.', '1O2A0284.jpg'),
(6, 'Citumang Body Rafting', 'Objek wisata citumang berada di desa bojong, kecamatan parigi, kabupaten Pangandaran. Objek wisata ini kurang lebih 15km dari pantai barat Pangandaran, memiliki pesona yang tidak kalah jauh dengan green canyon. Para wisatawan bisa melakukan aktivitas body rafting ataupun sekedar menikmati keindahan alam sekitar. Citumang sangat cocok untuk menghilangkan kepenatan para wisatawan karena suara air yang menenangkan jiwa.', '1O2A1247.jpg');

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
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1631647735, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `user_img` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_img`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'fakhrudinhusaini@gmail.com', 'fakhrudin', 'fakhrudin rizky husaini', 'default.svg', '$2y$10$znfPb8eFOwe8SDK89BgYyevUyqS0yhZ2DN3e48KWx3zHxRYAFFnVW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-01 05:30:42', '2021-11-01 05:30:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

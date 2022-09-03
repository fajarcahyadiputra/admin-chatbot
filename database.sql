-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table whatsapp_api.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table whatsapp_api.message_replies
CREATE TABLE IF NOT EXISTS `message_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci,
  `number_destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('media','text') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.message_replies: ~230 rows (approximately)
DELETE FROM `message_replies`;
/*!40000 ALTER TABLE `message_replies` DISABLE KEYS */;
INSERT INTO `message_replies` (`id`, `message`, `number_destination`, `type`, `keyword`, `link_media`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'list penyakit', '62895378889471', 'text', NULL, NULL, NULL, '2022-07-15 21:52:17', '2022-07-15 21:52:17'),
	(2, 'foto', '62895378889471', 'media', NULL, 'public/media/EL6ZEC78BCbSh6Mo1YonCHSZNhrk2PCXMoWGGSvI.png', NULL, '2022-07-15 21:54:15', '2022-07-15 21:54:15'),
	(3, 'list penyakit', '62895378889471', 'text', NULL, NULL, NULL, '2022-07-15 22:01:12', '2022-07-15 22:01:12'),
	(4, NULL, '62895378889471', 'text', NULL, NULL, NULL, '2022-07-15 22:09:38', '2022-07-15 22:09:38'),
	(5, NULL, '62895378889471', 'text', NULL, NULL, NULL, '2022-07-15 22:09:18', '2022-07-15 22:09:18'),
	(6, NULL, '62895378889471', 'media', 'foto', 'http://localhost:8000/storage/media/EL6ZEC78BCbSh6Mo1YonCHSZNhrk2PCXMoWGGSvI.png', NULL, '2022-07-15 22:17:34', '2022-07-15 22:17:34'),
	(7, NULL, '62895378889471', 'text', 'Asep', NULL, NULL, '2022-07-15 22:18:07', '2022-07-15 22:18:07'),
	(8, NULL, '62895378889471', 'text', '', NULL, NULL, '2022-07-15 22:35:56', '2022-07-15 22:35:56'),
	(9, NULL, '62895378889471', 'text', 'Hh', NULL, NULL, '2022-07-15 23:17:51', '2022-07-15 23:17:51'),
	(10, NULL, '62895378889471', 'media', 'foto', 'http://localhost:8000/storage/media/EL6ZEC78BCbSh6Mo1YonCHSZNhrk2PCXMoWGGSvI.png', NULL, '2022-07-15 23:18:26', '2022-07-15 23:18:26'),
	(11, NULL, '62895378889471', 'text', 'Jdnd', NULL, NULL, '2022-07-15 23:18:32', '2022-07-15 23:18:32'),
	(12, NULL, '62895378889471', 'media', 'foto', 'http://localhost:8000/storage/media/EL6ZEC78BCbSh6Mo1YonCHSZNhrk2PCXMoWGGSvI.png', NULL, '2022-07-16 13:01:38', '2022-07-16 13:01:38'),
	(13, 'Menu bot\r\n\r\nlist penyakit\r\ncara pakai\r\ncovid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-16 13:01:04', '2022-07-16 13:01:04'),
	(14, 'berikut adalah daftar penyakit yang tersedia :\r\n\r\nflu\r\nparu-paru\r\nusus\r\njantung\r\nmata\r\nkulit', '62895378889471', 'text', 'list penyakit', NULL, NULL, '2022-07-16 13:01:03', '2022-07-16 13:01:03'),
	(15, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, arti kata, cari lokasi\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-16 13:03:53', '2022-07-16 13:03:53'),
	(16, 'berikut adalah daftar penyakit yang tersedia :\r\n\r\nflu\r\nparu-paru\r\nusus\r\njantung\r\nmata\r\nkulit', '62895378889471', 'text', 'list penyakit', NULL, NULL, '2022-07-16 13:03:07', '2022-07-16 13:03:07'),
	(17, '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', '62895378889471', 'text', 'paru-paru', NULL, NULL, '2022-07-16 13:03:42', '2022-07-16 13:03:42'),
	(18, NULL, '6281807793051', 'text', 'Hay', NULL, NULL, '2022-07-16 13:07:23', '2022-07-16 13:07:23'),
	(19, NULL, '62895378889471', 'text', 'Skripsi skripsi skripsi ehh ke sandung', NULL, NULL, '2022-07-16 13:32:54', '2022-07-16 13:32:54'),
	(20, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, arti kata, cari lokasi\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-16 13:37:53', '2022-07-16 13:37:53'),
	(21, NULL, '62895378889471', 'text', 'covid19', NULL, NULL, '2022-07-16 13:38:50', '2022-07-16 13:38:50'),
	(22, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, arti kata, cari lokasi\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-16 14:04:12', '2022-07-16 14:04:12'),
	(23, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, arti kata, cari lokasi\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-16 14:08:50', '2022-07-16 14:08:50'),
	(24, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', 'covid19', NULL, NULL, '2022-07-16 14:09:13', '2022-07-16 14:09:13'),
	(25, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, arti kata, cari lokasi\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-16 14:10:22', '2022-07-16 14:10:22'),
	(26, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', 'covid19', NULL, NULL, '2022-07-16 14:10:22', '2022-07-16 14:10:22'),
	(27, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:12:42', '2022-07-17 21:12:42'),
	(28, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:14:40', '2022-07-17 21:14:40'),
	(29, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:15:13', '2022-07-17 21:15:13'),
	(30, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:15:10', '2022-07-17 21:15:10'),
	(31, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:16:31', '2022-07-17 21:16:31'),
	(32, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:18:31', '2022-07-17 21:18:31'),
	(33, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', 'covid19', NULL, NULL, '2022-07-17 21:18:36', '2022-07-17 21:18:36'),
	(34, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:20:48', '2022-07-17 21:20:48'),
	(35, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 21:21:37', '2022-07-17 21:21:37'),
	(36, 'https://covid19.go.id/feed/masyarakat-umum', '62895378889471', 'text', 'edukasi covid19', NULL, NULL, '2022-07-17 21:36:24', '2022-07-17 21:36:24'),
	(37, 'https://covid19.go.id/feed/masyarakat-umum', '62895378889471', 'text', 'edukasi covid19', NULL, NULL, '2022-07-17 21:38:59', '2022-07-17 21:38:59'),
	(38, 'https://covid19.go.id/feed/masyarakat-umum', '62895378889471', 'text', 'edukasi covid19', NULL, NULL, '2022-07-17 21:41:59', '2022-07-17 21:41:59'),
	(39, 'kasus covid19 harian', '62895378889471', 'text', 'kasus covid-19 harian', NULL, NULL, '2022-07-17 22:25:32', '2022-07-17 22:25:32'),
	(40, 'kasus covid19 harian', '62895378889471', 'text', 'kasus covid-19 harian', NULL, NULL, '2022-07-17 22:27:47', '2022-07-17 22:27:47'),
	(41, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 22:29:18', '2022-07-17 22:29:18'),
	(42, 'kasus covid19 harian', '62895378889471', 'text', 'kasus covid-19 harian', NULL, NULL, '2022-07-17 22:29:21', '2022-07-17 22:29:21'),
	(43, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 22:49:43', '2022-07-17 22:49:43'),
	(44, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 22:59:57', '2022-07-17 22:59:57'),
	(45, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 23:00:38', '2022-07-17 23:00:38'),
	(46, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 23:24:30', '2022-07-17 23:24:30'),
	(47, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 23:27:05', '2022-07-17 23:27:05'),
	(48, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n\r\n#> list penyakit\r\n#> cara pakai\r\n#> covid19\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 23:28:30', '2022-07-17 23:28:30'),
	(49, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-17 23:32:26', '2022-07-17 23:32:26'),
	(50, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-20 10:59:47', '2022-07-20 10:59:47'),
	(51, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', 'covid19', NULL, NULL, '2022-07-20 11:32:53', '2022-07-20 11:32:53'),
	(52, 'berikut adalah daftar penyakit yang tersedia :\r\n\r\nflu\r\nparu-paru\r\nusus\r\njantung\r\nmata\r\nkulit', '62895378889471', 'text', 'list penyakit', NULL, NULL, '2022-07-20 11:40:14', '2022-07-20 11:40:14'),
	(53, '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', '62895378889471', 'text', 'paru-paru', NULL, NULL, '2022-07-20 11:40:21', '2022-07-20 11:40:21'),
	(54, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 10:36:38', '2022-07-22 10:36:38'),
	(55, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 10:39:18', '2022-07-22 10:39:18'),
	(56, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 10:40:39', '2022-07-22 10:40:39'),
	(57, 'coming soon ....', '62895378889471', 'text', '1', NULL, NULL, '2022-07-22 10:40:45', '2022-07-22 10:40:45'),
	(58, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '2', NULL, NULL, '2022-07-22 10:40:50', '2022-07-22 10:40:50'),
	(59, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', '3', NULL, NULL, '2022-07-22 10:41:10', '2022-07-22 10:41:10'),
	(60, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '2', NULL, NULL, '2022-07-22 10:42:40', '2022-07-22 10:42:40'),
	(61, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 13:32:40', '2022-07-22 13:32:40'),
	(62, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 13:33:34', '2022-07-22 13:33:34'),
	(63, 'coming soon ....', '62895378889471', 'text', '1', NULL, NULL, '2022-07-22 13:40:29', '2022-07-22 13:40:29'),
	(64, 'coming soon ....', '62895378889471', 'text', '1', NULL, NULL, '2022-07-22 13:43:20', '2022-07-22 13:43:20'),
	(65, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 14:57:32', '2022-07-22 14:57:32'),
	(66, 'Hi, Selamat siang\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana,\r\nsecara umum saya baru bisa: info hari dan jam, jadwal sholat, berhitung, list penyakit, info covid-19, info atau edukasi tentang penyakit tertentu\r\n\r\ncontoh ucapannya sepert ini\r\n', '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 15:02:37', '2022-07-22 15:02:37'),
	(67, 'coming soon ....', '62895378889471', 'text', '1', NULL, NULL, '2022-07-22 15:14:40', '2022-07-22 15:14:40'),
	(68, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '2', NULL, NULL, '2022-07-22 15:14:46', '2022-07-22 15:14:46'),
	(69, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 22:45:53', '2022-07-22 22:45:53'),
	(70, NULL, '62895378889471', 'media', '12', 'http://localhost:8000/storage/media/I47UTwS7q8TTBJmUphfXKx9qXssoHDSpUzHnUEJD.pdf', NULL, '2022-07-22 22:46:01', '2022-07-22 22:46:01'),
	(71, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:46:22', '2022-07-22 22:46:22'),
	(72, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:47:36', '2022-07-22 22:47:36'),
	(73, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:48:46', '2022-07-22 22:48:46'),
	(74, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:49:34', '2022-07-22 22:49:34'),
	(75, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:50:13', '2022-07-22 22:50:13'),
	(76, 'poli gigi', '62895378889471', 'text', '15', NULL, NULL, '2022-07-22 22:50:21', '2022-07-22 22:50:21'),
	(77, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:53:01', '2022-07-22 22:53:01'),
	(78, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-22 22:53:32', '2022-07-22 22:53:32'),
	(79, 'poli gigi', '62895378889471', 'text', '15', NULL, NULL, '2022-07-22 22:54:10', '2022-07-22 22:54:10'),
	(80, NULL, '62895378889471', 'text', 'ee', NULL, NULL, '2022-07-22 22:54:48', '2022-07-22 22:54:48'),
	(81, 'Vaksin', '62895378889471', 'text', '18', NULL, NULL, '2022-07-22 22:55:13', '2022-07-22 22:55:13'),
	(82, 'lansia', '62895378889471', 'text', '16', NULL, NULL, '2022-07-22 22:55:30', '2022-07-22 22:55:30'),
	(83, 'coming soon ....', '62895378889471', 'text', '1', NULL, NULL, '2022-07-22 22:57:18', '2022-07-22 22:57:18'),
	(84, 'lansia', '62895378889471', 'text', '16', NULL, NULL, '2022-07-22 22:57:25', '2022-07-22 22:57:25'),
	(85, 'coming soon ....', '62895378889471', 'text', '1', NULL, NULL, '2022-07-22 22:58:19', '2022-07-22 22:58:19'),
	(86, NULL, '62895378889471', 'text', 'k', NULL, NULL, '2022-07-22 23:02:56', '2022-07-22 23:02:56'),
	(87, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '2', NULL, NULL, '2022-07-22 23:03:08', '2022-07-22 23:03:08'),
	(88, 'kasus covid19 harian', '62895378889471', 'text', '7', NULL, NULL, '2022-07-22 23:03:14', '2022-07-22 23:03:14'),
	(89, 'kasus covid19 harian', '62895378889471', 'text', '7', NULL, NULL, '2022-07-22 23:05:37', '2022-07-22 23:05:37'),
	(90, 'kasus covid19 harian', '62895378889471', 'text', '7', NULL, NULL, '2022-07-22 23:06:37', '2022-07-22 23:06:37'),
	(91, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:06:49', '2022-07-22 23:06:49'),
	(92, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '2', NULL, NULL, '2022-07-22 23:06:53', '2022-07-22 23:06:53'),
	(93, 'kasus covid19 harian', '62895378889471', 'text', '7', NULL, NULL, '2022-07-22 23:06:58', '2022-07-22 23:06:58'),
	(94, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:08:25', '2022-07-22 23:08:25'),
	(95, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:09:04', '2022-07-22 23:09:04'),
	(96, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:14:11', '2022-07-22 23:14:11'),
	(97, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:14:33', '2022-07-22 23:14:33'),
	(98, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:16:43', '2022-07-22 23:16:43'),
	(99, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:18:38', '2022-07-22 23:18:38'),
	(100, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:20:28', '2022-07-22 23:20:28'),
	(101, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:23:41', '2022-07-22 23:23:41'),
	(102, 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', '62895378889471', 'text', '28', NULL, NULL, '2022-07-22 23:23:45', '2022-07-22 23:23:45'),
	(103, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-07-22 23:26:08', '2022-07-22 23:26:08'),
	(104, 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', '62895378889471', 'text', '28', NULL, NULL, '2022-07-22 23:26:12', '2022-07-22 23:26:12'),
	(105, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-22 23:27:55', '2022-07-22 23:27:55'),
	(106, NULL, '62895378889471', 'text', 'Selama ini di belakang google itu CV daun jati? 🤣', NULL, NULL, '2022-07-23 11:04:33', '2022-07-23 11:04:33'),
	(107, NULL, '62895378889471', 'text', 'Selama ini ternyata di belakang google itu CV daun jati? 🤣', NULL, NULL, '2022-07-23 11:04:33', '2022-07-23 11:04:33'),
	(108, NULL, '6283877710691', 'text', '🚴‍♀🚴‍♀🚴‍♀', NULL, NULL, '2022-07-23 11:04:33', '2022-07-23 11:04:33'),
	(109, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '6283877710691', 'text', '', NULL, NULL, '2022-07-23 11:04:33', '2022-07-23 11:04:33'),
	(110, NULL, '62895378889471', 'text', 'm', NULL, NULL, '2022-07-23 15:21:21', '2022-07-23 15:21:21'),
	(111, NULL, '62895378889471', 'text', 'menu', NULL, NULL, '2022-07-23 15:21:25', '2022-07-23 15:21:25'),
	(112, 'poli umum', '62895378889471', 'text', '14', NULL, NULL, '2022-07-23 15:21:31', '2022-07-23 15:21:31'),
	(113, 'Hari jumat, kuota terbatas', '62895378889471', 'text', '21', NULL, NULL, '2022-07-23 15:21:37', '2022-07-23 15:21:37'),
	(114, NULL, '6289619512789', 'text', 'Menu', NULL, NULL, '2022-07-23 15:38:46', '2022-07-23 15:38:46'),
	(115, 'coming soon ....', '6289619512789', 'text', '1', NULL, NULL, '2022-07-23 15:39:24', '2022-07-23 15:39:24'),
	(116, 'poli gigi', '6289619512789', 'text', '15', NULL, NULL, '2022-07-23 15:39:59', '2022-07-23 15:39:59'),
	(117, 'poli umum', '6289619512789', 'text', '14', NULL, NULL, '2022-07-23 15:44:58', '2022-07-23 15:44:58'),
	(118, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '62895378889471', 'text', '', NULL, NULL, '2022-07-23 15:47:36', '2022-07-23 15:47:36'),
	(119, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '62895378889471', 'text', '', NULL, NULL, '2022-07-26 08:59:38', '2022-07-26 08:59:38'),
	(120, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '62895378889471', 'text', '', NULL, NULL, '2022-07-26 08:59:38', '2022-07-26 08:59:38'),
	(121, NULL, '62895378889471', 'text', 'Save the reservation successfully, booking code GM2207261G5U with Sequence number 00084', NULL, NULL, '2022-07-26 10:03:39', '2022-07-26 10:03:39'),
	(122, NULL, '62895378889471', 'text', 'https://open.spotify.com/track/5hwh37sTi84MVhCBMWzhGE?si=7YJWyegnTruzurQIzJ1m9g', NULL, NULL, '2022-07-27 09:04:15', '2022-07-27 09:04:15'),
	(123, NULL, '62895378889471', 'text', 'https://open.spotify.com/track/0zMzyHAeMvwq5CRstru1Fp?si=33PBDYKARSG42D8YPCGBHw', NULL, NULL, '2022-07-27 09:04:15', '2022-07-27 09:04:15'),
	(124, NULL, '62895378889471', 'text', 'https://open.spotify.com/track/0OW1M1qshZQ6x4KRqingyz?si=IjVi6rHdSROosAdoCQ7mLA', NULL, NULL, '2022-07-27 09:04:15', '2022-07-27 09:04:15'),
	(125, NULL, '62895378889471', 'text', 'https://open.spotify.com/track/1yvMUkIOTeUNtNWlWRgANS?si=aa_2a77QRKm4OdLPkiab2Q', NULL, NULL, '2022-07-27 09:04:15', '2022-07-27 09:04:15'),
	(126, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '62895378889471', 'text', '', NULL, NULL, '2022-07-27 09:04:15', '2022-07-27 09:04:15'),
	(127, NULL, '6283877710691', 'text', '🥱', NULL, NULL, '2022-07-27 09:04:15', '2022-07-27 09:04:15'),
	(128, NULL, '62895378889471', 'text', 'Vaksin', NULL, NULL, '2022-07-27 09:08:34', '2022-07-27 09:08:34'),
	(129, '<p>silakan ketikan keyword yang tersedia di menu bot.</p>\r\n<p>contoh1 : covid19 ( nanti akan tampil menu lagi, untuk keyword covid19)</p>\r\n<p>contoh2 : list penyakit ( nanti akan tampil list dari penyakit yg tersedia, untuk di cari infromasi nya</p>', '62895378889471', 'text', '4', NULL, NULL, '2022-07-27 09:08:41', '2022-07-27 09:08:41'),
	(130, NULL, '6281310154447', 'text', 'Menu', NULL, NULL, '2022-08-22 12:42:35', '2022-08-22 12:42:35'),
	(131, 'coba', '6281310154447', 'text', '34', NULL, NULL, '2022-08-22 12:42:51', '2022-08-22 12:42:51'),
	(132, 'poli umum', '6281310154447', 'text', '1', NULL, NULL, '2022-08-22 12:43:11', '2022-08-22 12:43:11'),
	(133, '-', '6281310154447', 'text', '9', NULL, NULL, '2022-08-22 12:43:25', '2022-08-22 12:43:25'),
	(134, NULL, '6285782638575', 'text', 'Ngga juga', NULL, NULL, '2022-08-22 12:44:21', '2022-08-22 12:44:21'),
	(135, 'Berikut adalah list layanan laboraturium di puskesmas padurenan.\r\n\r\n-Pemeriksaan skrining triple eliminasi ibu hamil (HbsAg, HIV, Sifilis)\r\n-Pemeriksaan Hb, Asam urat, Cholesterol, Gula Darah, HCG urin (Test Pack)\r\n-Pemeriksaan HIV pasien Tb \r\n-Pemeriksaan CATIN (HIV, Sifilis)', '6281310154447', 'text', '21', NULL, NULL, '2022-08-22 12:44:22', '2022-08-22 12:44:22'),
	(136, NULL, '6281310154447', 'text', 'Menu', NULL, NULL, '2022-08-22 12:44:50', '2022-08-22 12:44:50'),
	(137, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '6281310154447', 'text', '7', NULL, NULL, '2022-08-22 12:44:59', '2022-08-22 12:44:59'),
	(138, NULL, '6281808745746', 'text', '🤔', NULL, NULL, '2022-08-22 12:45:15', '2022-08-22 12:45:15'),
	(139, NULL, '6285782638575', 'text', '🙃', NULL, NULL, '2022-08-22 12:45:25', '2022-08-22 12:45:25'),
	(140, NULL, '6281808745746', 'text', '🤔🤔🤔🤔🤔🤔', NULL, NULL, '2022-08-22 12:45:27', '2022-08-22 12:45:27'),
	(141, NULL, '6285782638575', 'text', 'Asik juga game nya', NULL, NULL, '2022-08-22 12:45:35', '2022-08-22 12:45:35'),
	(142, NULL, '6285782638575', 'text', 'Widih hebat game nya', NULL, NULL, '2022-08-22 12:45:44', '2022-08-22 12:45:44'),
	(143, 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', '6281808745746', 'text', '4', NULL, NULL, '2022-08-22 12:45:59', '2022-08-22 12:45:59'),
	(144, 'poli umum', '6285782638575', 'text', '1', NULL, NULL, '2022-08-22 12:45:59', '2022-08-22 12:45:59'),
	(145, 'coming soon ....', '6285782638575', 'text', '8', NULL, NULL, '2022-08-22 12:46:16', '2022-08-22 12:46:16'),
	(146, 'Bisa, persyaratan yang perlu dibawa : Fotokopi KTP atau KIA', '6285782638575', 'text', '10', NULL, NULL, '2022-08-22 12:46:36', '2022-08-22 12:46:36'),
	(147, NULL, '6285782638575', 'text', 'Saya ga pnya anak gmna dok', NULL, NULL, '2022-08-22 12:46:53', '2022-08-22 12:46:53'),
	(148, NULL, '6285782638575', 'text', 'Asek', NULL, NULL, '2022-08-22 12:46:58', '2022-08-22 12:46:58'),
	(149, NULL, '6285782638575', 'text', 'Hayo ajjh trus', NULL, NULL, '2022-08-22 12:47:03', '2022-08-22 12:47:03'),
	(150, NULL, '6285782638575', 'text', 'Lagi lagi', NULL, NULL, '2022-08-22 12:47:08', '2022-08-22 12:47:08'),
	(151, NULL, '6285782638575', 'text', '.', NULL, NULL, '2022-08-22 12:47:11', '2022-08-22 12:47:11'),
	(152, 'coba', '6285782638575', 'text', '34', NULL, NULL, '2022-08-22 12:49:08', '2022-08-22 12:49:08'),
	(153, NULL, '6285782638575', 'text', 'Udah di coba tapi ga ada hasil', NULL, NULL, '2022-08-22 12:50:03', '2022-08-22 12:50:03'),
	(154, NULL, '6285782638575', 'text', 'Bodo ah', NULL, NULL, '2022-08-22 12:50:14', '2022-08-22 12:50:14'),
	(155, NULL, '6285782638575', 'text', 'Bodo', NULL, NULL, '2022-08-22 12:50:18', '2022-08-22 12:50:18'),
	(156, NULL, '6289603801318', 'text', 'Mama, bapak, kakak, Abang udah pada d telpon.. tinggal kakak ketiga sama adek ini yang belum 😅😅', NULL, NULL, '2022-08-22 12:51:43', '2022-08-22 12:51:43'),
	(157, NULL, '6288294744259', 'text', 'Anjas bot', NULL, NULL, '2022-08-22 12:52:50', '2022-08-22 12:52:50'),
	(158, NULL, '6288294744259', 'text', 'Wkkwkw', NULL, NULL, '2022-08-22 12:52:50', '2022-08-22 12:52:50'),
	(159, NULL, '6288294744259', 'text', 'No pribadi di jadiin bot', NULL, NULL, '2022-08-22 12:52:56', '2022-08-22 12:52:56'),
	(160, NULL, '6288294744259', 'text', 'Astaga', NULL, NULL, '2022-08-22 12:52:57', '2022-08-22 12:52:57'),
	(161, NULL, '62895617757730', 'text', 'Haha backend gua mau pake laravel', NULL, NULL, '2022-08-22 12:53:03', '2022-08-22 12:53:03'),
	(162, NULL, '6288294744259', 'text', 'Bang fajar, itu except group nya nyalain oi', NULL, NULL, '2022-08-22 12:53:16', '2022-08-22 12:53:16'),
	(163, NULL, '6287881701270', 'text', '😄', NULL, NULL, '2022-08-22 12:53:30', '2022-08-22 12:53:30'),
	(164, NULL, '6281283919203', 'text', 'Part 1', NULL, NULL, '2022-08-22 12:53:47', '2022-08-22 12:53:47'),
	(165, 'poli umum', '6285782638575', 'text', '1', NULL, NULL, '2022-08-22 12:53:56', '2022-08-22 12:53:56'),
	(166, NULL, '6285782638575', 'text', 'Cek', NULL, NULL, '2022-08-22 12:53:59', '2022-08-22 12:53:59'),
	(167, NULL, '6285782638575', 'text', 'Long', NULL, NULL, '2022-08-22 12:54:02', '2022-08-22 12:54:02'),
	(168, NULL, '6285782638575', 'text', 'Abis di cek', NULL, NULL, '2022-08-22 12:54:08', '2022-08-22 12:54:08'),
	(169, NULL, '6281322799123', 'text', 'apa', NULL, NULL, '2022-08-22 12:54:08', '2022-08-22 12:54:08'),
	(170, NULL, '6285782638575', 'text', 'Gua colong🤣', NULL, NULL, '2022-08-22 12:54:23', '2022-08-22 12:54:23'),
	(171, NULL, '6281283919203', 'text', 'Part 2', NULL, NULL, '2022-08-22 12:54:50', '2022-08-22 12:54:50'),
	(172, NULL, '6281282416460', 'text', '🙁☹️ motor tua, jajan dulu☹️', NULL, NULL, '2022-08-22 12:54:58', '2022-08-22 12:54:58'),
	(173, NULL, '6281283919203', 'text', 'Part 3', NULL, NULL, '2022-08-22 12:55:16', '2022-08-22 12:55:16'),
	(174, NULL, '6281283919203', 'text', 'part 4', NULL, NULL, '2022-08-22 12:55:34', '2022-08-22 12:55:34'),
	(175, NULL, '6281283919203', 'text', 'Neng farah', NULL, NULL, '2022-08-22 12:55:50', '2022-08-22 12:55:50'),
	(176, NULL, '6281283919203', 'text', 'Alhamdulillah lancar semua, bagus2 inovatif dan kerenn...\n\nSangat membanggakan🥰', NULL, NULL, '2022-08-22 12:56:39', '2022-08-22 12:56:39'),
	(177, NULL, '6281394914194', 'text', 'Waalaikumsalam iya oke mas silahkan di update ya,', NULL, NULL, '2022-08-22 12:57:02', '2022-08-22 12:57:02'),
	(178, NULL, '6287775917904', 'text', 'punya siapa', NULL, NULL, '2022-08-22 13:03:10', '2022-08-22 13:03:10'),
	(179, NULL, '6287775917904', 'text', 'apaan si ini', NULL, NULL, '2022-08-22 13:03:42', '2022-08-22 13:03:42'),
	(180, 'lansia', '6281394914194', 'text', '5', NULL, NULL, '2022-08-22 13:03:49', '2022-08-22 13:03:49'),
	(181, 'poli umum', '6281394914194', 'text', '1', NULL, NULL, '2022-08-22 13:04:01', '2022-08-22 13:04:01'),
	(182, NULL, '6288294744259', 'text', 'Bot itu', NULL, NULL, '2022-08-22 13:04:20', '2022-08-22 13:04:20'),
	(183, 'Bisa, persyaratan yang perlu dibawa : Fotokopi KTP atau KIA', '6281394914194', 'text', '10', NULL, NULL, '2022-08-22 13:04:22', '2022-08-22 13:04:22'),
	(184, NULL, '6281283919203', 'text', 'Emaknya yg pada tegang...🤣', NULL, NULL, '2022-08-22 13:04:24', '2022-08-22 13:04:24'),
	(185, NULL, '6289603259712', 'text', 'Ma pren', NULL, NULL, '2022-08-22 13:04:28', '2022-08-22 13:04:28'),
	(186, NULL, '6288294744259', 'text', 'Bang fajar, bikin bot pake no pribadi nha', NULL, NULL, '2022-08-22 13:04:33', '2022-08-22 13:04:33'),
	(187, NULL, '6288294744259', 'text', 'Nya', NULL, NULL, '2022-08-22 13:04:34', '2022-08-22 13:04:34'),
	(188, NULL, '6288294744259', 'text', 'Pea wkwk', NULL, NULL, '2022-08-22 13:04:36', '2022-08-22 13:04:36'),
	(189, NULL, '6287775917904', 'text', 'hapus ganggu !!!', NULL, NULL, '2022-08-22 13:04:44', '2022-08-22 13:04:44'),
	(190, NULL, '6289603259712', 'text', 'Si pajar botnya kaga danta🤣', NULL, NULL, '2022-08-22 13:04:56', '2022-08-22 13:04:56'),
	(191, NULL, '6288294744259', 'text', 'Makanya wkwk', NULL, NULL, '2022-08-22 13:05:02', '2022-08-22 13:05:02'),
	(192, NULL, '6288294744259', 'text', 'Bukan nya di matiin, klo ke grup nya', NULL, NULL, '2022-08-22 13:05:13', '2022-08-22 13:05:13'),
	(193, NULL, '6281283919203', 'text', '2 ruang sekaligus..😀', NULL, NULL, '2022-08-22 13:05:37', '2022-08-22 13:05:37'),
	(194, 'poli umum', '6281394914194', 'text', '1', NULL, NULL, '2022-08-22 13:08:17', '2022-08-22 13:08:17'),
	(195, 'coba', '6281394914194', 'text', '35', NULL, NULL, '2022-08-22 13:08:32', '2022-08-22 13:08:32'),
	(196, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '6281394914194', 'text', '6', NULL, NULL, '2022-08-22 13:10:28', '2022-08-22 13:10:28'),
	(197, 'berikut adalah daftar penyakit yang tersedia :\r\n\r\nparu-paru\r\nmata', '6281394914194', 'text', '12', NULL, NULL, '2022-08-22 13:10:35', '2022-08-22 13:10:35'),
	(198, NULL, '6281394914194', 'text', 'paru paru', NULL, NULL, '2022-08-22 13:11:41', '2022-08-22 13:11:41'),
	(199, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '6281586981402', 'text', '', NULL, NULL, '2022-08-22 13:19:00', '2022-08-22 13:19:00'),
	(200, 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', '6281586981402', 'text', '', NULL, NULL, '2022-08-22 13:19:36', '2022-08-22 13:19:36'),
	(201, NULL, '62895378889471', 'text', 'Cc', NULL, NULL, '2022-08-27 16:05:42', '2022-08-27 16:05:42'),
	(202, 'poli umum', '62895378889471', 'text', '1', NULL, NULL, '2022-08-27 16:06:01', '2022-08-27 16:06:01'),
	(203, NULL, '62895378889471', 'text', 'J', NULL, NULL, '2022-08-27 16:06:42', '2022-08-27 16:06:42'),
	(204, NULL, '62895378889471', 'text', 'Bb', NULL, NULL, '2022-08-27 16:07:34', '2022-08-27 16:07:34'),
	(205, NULL, '62895378889471', 'text', 'P', NULL, NULL, '2022-08-27 16:15:45', '2022-08-27 16:15:45'),
	(206, 'poli umum', '62895378889471', 'text', '1', NULL, NULL, '2022-08-27 16:15:50', '2022-08-27 16:15:50'),
	(207, NULL, '62895378889471', 'text', 'P', NULL, NULL, '2022-08-27 16:24:33', '2022-08-27 16:24:33'),
	(208, NULL, '62895378889471', 'text', 'Dd', NULL, NULL, '2022-08-27 16:25:48', '2022-08-27 16:25:48'),
	(209, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:19:22', '2022-09-03 14:19:22'),
	(210, 'poli umum', '62895378889471', 'text', '1', NULL, NULL, '2022-09-03 14:19:46', '2022-09-03 14:19:46'),
	(211, 'poli gigi', '62895378889471', 'text', '2', NULL, NULL, '2022-09-03 14:19:57', '2022-09-03 14:19:57'),
	(212, 'Apotik', '62895378889471', 'text', '3', NULL, NULL, '2022-09-03 14:20:07', '2022-09-03 14:20:07'),
	(213, 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', '62895378889471', 'text', '4', NULL, NULL, '2022-09-03 14:20:20', '2022-09-03 14:20:20'),
	(214, 'lansia', '62895378889471', 'text', '5', NULL, NULL, '2022-09-03 14:20:26', '2022-09-03 14:20:26'),
	(215, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', '6', NULL, NULL, '2022-09-03 14:20:31', '2022-09-03 14:20:31'),
	(216, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', '6', NULL, NULL, '2022-09-03 14:23:20', '2022-09-03 14:23:20'),
	(217, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', '6', NULL, NULL, '2022-09-03 14:23:50', '2022-09-03 14:23:50'),
	(218, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', '6', NULL, NULL, '2022-09-03 14:26:28', '2022-09-03 14:26:28'),
	(219, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:27:05', '2022-09-03 14:27:05'),
	(220, 'poli umum', '62895378889471', 'text', '1', NULL, NULL, '2022-09-03 14:27:10', '2022-09-03 14:27:10'),
	(221, '-', '62895378889471', 'text', '11', NULL, NULL, '2022-09-03 14:27:53', '2022-09-03 14:27:53'),
	(222, 'Berikut adalah list layanan laboraturium di puskesmas padurenan.\r\n\r\n-Pemeriksaan skrining triple eliminasi ibu hamil (HbsAg, HIV, Sifilis)\r\n-Pemeriksaan Hb, Asam urat, Cholesterol, Gula Darah, HCG urin (Test Pack)\r\n-Pemeriksaan HIV pasien Tb \r\n-Pemeriksaan CATIN (HIV, Sifilis)', '62895378889471', 'text', '12', NULL, NULL, '2022-09-03 14:28:07', '2022-09-03 14:28:07'),
	(223, 'Bisa, persyaratan yang perlu dibawa : Fotokopi KTP atau KIA', '62895378889471', 'text', '13', NULL, NULL, '2022-09-03 14:28:16', '2022-09-03 14:28:16'),
	(224, 'Membawa kartu identitas KK/KTP dan BPJS', '62895378889471', 'text', '14', NULL, NULL, '2022-09-03 14:28:23', '2022-09-03 14:28:23'),
	(225, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:28:48', '2022-09-03 14:28:48'),
	(226, 'Apotik', '62895378889471', 'text', '3', NULL, NULL, '2022-09-03 14:28:51', '2022-09-03 14:28:51'),
	(227, 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', '62895378889471', 'text', '4', NULL, NULL, '2022-09-03 14:28:57', '2022-09-03 14:28:57'),
	(228, 'lansia', '62895378889471', 'text', '5', NULL, NULL, '2022-09-03 14:29:07', '2022-09-03 14:29:07'),
	(229, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', '6', NULL, NULL, '2022-09-03 14:29:13', '2022-09-03 14:29:13'),
	(230, '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', '62895378889471', 'text', '18', NULL, NULL, '2022-09-03 14:29:20', '2022-09-03 14:29:20'),
	(231, 'mata ....', '62895378889471', 'text', '19', NULL, NULL, '2022-09-03 14:29:35', '2022-09-03 14:29:35'),
	(232, 'Mata adalah bagian penting dari kesehatan Anda.Ada banyak hal yang dapat Anda lakukan untuk menjaga kesehatan dan pastikan Anda melihat yang terbaik. Ikuti langkah-langkah sederhana untuk menjaga kesehatan mata juga menjadi tahun emas Anda.\r\n\r\n- *Melakukan pemeriksaan mata yang komprehensif*. Anda mungkin berpikir mata Anda akan baik-baik saja atau beranggapan bahwa mata Anda sehat, tetapi mengunjungi dokter mata untuk pemeriksaan mata yang komprehensif adalah satu-satunya cara untuk meyakinkan tidak ada masalah pada mata Anda. Setelah pemeriksaan, banyak yang tidak menyadari bahwa penyakit mata yang umum seperti glaukoma, penyakit mata yang diakibatkan riwayat diabetes dan degenerasi makula terkait usia seringkali tidak memiliki tanda-tanda peringatan.\r\n- *Mengetahui riwayat kesehatan keluarga Anda.* Tanyakanpada anggota keluarga Anda tentang riwayat kesehatan mata mereka. Ini penting untuk mengetahui apakah seseorang telah didiagnosis dengan penyakit yang turun-temurun. Ini akan membantu untuk menentukan apakah Anda berada pada risiko tinggi untuk penyakit mata.\r\n- *Pilih makanan yang baik untuk melindungi penglihatan Anda.* Anda pernah mendengar wortel baik untuk mata Anda. Tapi makanan yang kaya akan buah-buahan dan sayuran, terutama sayuran hijau seperti bayam, kangkung, sangat penting untuk menjaga kesehatan mata. Penelitian juga telah menunjukkan ada manfaat kesehatan mata dari ikan yang tinggi omega- 3 asam lemak, seperti salmon, tuna, dan halibut.\r\n- *Menjaga berat badan.* Kelebihan berat badan atau obesitas meningkatkan risiko terkena diabetes dan kondisi sistemik lainnya, yang dapat menyebabkan kehilangan penglihatan, seperti penyakit mata diabetes atau glaukoma. Jika Anda mengalami kesulitan mempertahankan berat badan yang sehat, berbicara dengan dokter Anda.\r\n- *Pakailah kacamata pelindung.* Pakailah kacamata pelindung saat berolahraga atau melakukan kegiatan di sekitar rumah. Kacamata pelindung dirancang khusus untuk memberikan perlindungan yang tepat untuk aktivitas tertentu. Lensa kacamata pelindung terbuat dari polikarbonat, yaitu 10 kali lebih kuat dari plastik lainnya.\r\n- *Berhenti merokok atau jangan pernah memulai.* Merokok adalah salah satu faktor yang menyebabkan pengaruh buruk bagi mata Anda. Penelitian telah menghubungkan perilaku merokok dengan peningkatan risiko pengembangkan degenerasi terkait usia makula, katarak, dan kerusakan saraf optik, yang semuanya dapat menyebabkan kebutaan.\r\n- *Berikan waktu istirahat bagi mata Anda.* Jika Anda menghabiskan banyak waktu di depan komputer atau fokus pada satu hal, Anda kadang-kadang lupa untuk berkedip dan mata Anda bisa lelah. Cobalah aturan 20-20-20: Setiap 20 menit, melihat jauh sekitar 20 meter di depan Anda selama 20 detik. Hal ini dapat membantu mengurangi kelelahan mata.\r\n- *Bersihkan tangan dan lensa kontak Anda.* Untuk menghindari risiko infeksi, selalu mencuci tangan Anda secara menyeluruh sebelum menempatkan atau mengambil lensa kontak Anda. Pastikan untuk mensterilkan lensa kontak seperti yang diperintahkan dan menggantinya sesuai waktunya.', '62895378889471', 'text', '19', NULL, NULL, '2022-09-03 14:33:48', '2022-09-03 14:33:48'),
	(233, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:34:01', '2022-09-03 14:34:01'),
	(234, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '7', NULL, NULL, '2022-09-03 14:34:05', '2022-09-03 14:34:05'),
	(235, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:36:25', '2022-09-03 14:36:25'),
	(236, 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', '62895378889471', 'text', '7', NULL, NULL, '2022-09-03 14:36:29', '2022-09-03 14:36:29'),
	(237, 'kasus covid19 harian', '62895378889471', 'text', '20', NULL, NULL, '2022-09-03 14:36:44', '2022-09-03 14:36:44'),
	(238, 'https://covid19.go.id/feed/masyarakat-umum', '62895378889471', 'text', '21', NULL, NULL, '2022-09-03 14:36:52', '2022-09-03 14:36:52'),
	(239, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:37:03', '2022-09-03 14:37:03'),
	(240, 'coming soon ....', '62895378889471', 'text', '8', NULL, NULL, '2022-09-03 14:37:07', '2022-09-03 14:37:07'),
	(241, '2 fotokopi KTP calon pengantin, fotokopi surat dari KUA', '62895378889471', 'text', '22', NULL, NULL, '2022-09-03 14:37:12', '2022-09-03 14:37:12'),
	(242, 'Minggu ke 2 dan 3 (info lebih lanjut hubungi kader per wilayah)', '62895378889471', 'text', '23', NULL, NULL, '2022-09-03 14:37:17', '2022-09-03 14:37:17'),
	(243, 'Setiap hari jumat (ambil no antrian kusus imunisasi, kuota terbatas)', '62895378889471', 'text', '24', NULL, NULL, '2022-09-03 14:37:23', '2022-09-03 14:37:23'),
	(244, 'Hari jumat, kouta terbatas', '62895378889471', 'text', '25', NULL, NULL, '2022-09-03 14:37:29', '2022-09-03 14:37:29'),
	(245, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:37:36', '2022-09-03 14:37:36'),
	(246, 'Vaksin', '62895378889471', 'text', '9', NULL, NULL, '2022-09-03 14:37:39', '2022-09-03 14:37:39'),
	(247, 'Silahkan datang ke lantai 2 Puskesmas ke ruang Aula bagian konsultasi sertifikat', '62895378889471', 'text', '26', NULL, NULL, '2022-09-03 14:37:45', '2022-09-03 14:37:45'),
	(248, 'Opsss, masih belum tersedia', '62895378889471', 'text', '27', NULL, NULL, '2022-09-03 14:37:50', '2022-09-03 14:37:50'),
	(249, NULL, '62895378889471', 'text', 'Menu', NULL, NULL, '2022-09-03 14:37:59', '2022-09-03 14:37:59'),
	(250, NULL, '62895378889471', 'text', 'screenshot user interface whatsapp bot.zip', NULL, NULL, '2022-09-03 14:40:00', '2022-09-03 14:40:00');
/*!40000 ALTER TABLE `message_replies` ENABLE KEYS */;

-- Dumping structure for table whatsapp_api.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.migrations: ~10 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2014_10_12_000000_create_users_table', 1),
	(9, '2014_10_12_100000_create_password_resets_table', 1),
	(10, '2019_08_19_000000_create_failed_jobs_table', 1),
	(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(12, '2022_07_09_072815_create_whatsapp_replies_table', 1),
	(13, '2022_07_09_073426_create_message_replies_table', 1),
	(14, '2022_07_10_132906_add_column_in_whatsapp_replies_table', 1),
	(15, '2022_07_10_150318_add_column_in_whatsapp_replies_table', 2),
	(16, '2022_07_22_032628_add_column_in_whatsapp_replies_table', 3),
	(18, '2022_07_22_082754_add_column_roll_sub_in_whatsapp_replies_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table whatsapp_api.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table whatsapp_api.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table whatsapp_api.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `picture`, `isActive`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'fajar', 'fajar@gmail.com', NULL, '$2y$10$7x.BxdWV2.dWmfPL2bxeh.gHWQHFrsk37qS.veZH8j.pTT4PPL1ga', 'public/images/NImVpiq7r0Cgs4VjKiaQKPEmAR7jHTYeRACp7hyR.png', '1', NULL, NULL, '2022-07-10 15:23:36', '2022-07-10 15:23:36'),
	(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$o0q.OPrxxmoNgp3WdivBZ.dUvPD0m5eBjzeI88eMa1WLk3MaO6.OG', 'public/images/mBnvuPDsoOlW7E611KA151NCdJv43KhxU7PI1N6j.png', '1', NULL, NULL, '2022-07-25 14:01:30', '2022-08-28 13:26:00'),
	(7, 'fajarcahyadiputra', 'fajarcahyadiputra@gmail.com', NULL, '$2y$10$CL08Z79u.qjgaZmPZbO/HuR0K/YLurNZiEC2G8sk/arxn7pxLj8Aq', 'public/images/uO57Co2BOxSvqEzTL8qKrpcE5rIDu1GpAZGSBb4K.png', '1', NULL, NULL, '2022-08-24 05:29:21', '2022-08-24 05:29:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table whatsapp_api.whatsapp_replies
CREATE TABLE IF NOT EXISTS `whatsapp_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` bigint(20) NOT NULL DEFAULT '0',
  `master_id` int(10) DEFAULT NULL,
  `type` enum('media','text') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `roll_sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `link_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `whatsapp_replies_keyword_unique` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_api.whatsapp_replies: ~27 rows (approximately)
DELETE FROM `whatsapp_replies`;
/*!40000 ALTER TABLE `whatsapp_replies` DISABLE KEYS */;
INSERT INTO `whatsapp_replies` (`id`, `keyword`, `master_id`, `type`, `roll_sub`, `name`, `text`, `link_media`, `isActive`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(7, 0, NULL, 'text', 'menu', 'menu', 'Hi, Selamat {waktu}\r\n\r\nSementara ini saya baru bisa merespon pertanyaan Anda secara sederhana. Mungkin kedepannya aku akan belajar lagi, supaya bisa menanggepi pertanyaan-pertnyaan lebih banyak lagi.\r\n\r\ninfo : hanya ketikan nomer menu, yang ingin anda tanyakan.\r\n\r\ncontoh ucapannya sepert ini :\r\n', NULL, '1', NULL, '2022-07-15 06:35:21', '2022-07-15 06:35:21'),
	(10, 18, 18, 'text', 'sub1', 'paru-paru', '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', NULL, '1', NULL, '2022-07-15 06:48:30', '2022-07-15 06:48:30'),
	(14, 7, 0, 'text', 'master', 'covid-19', 'Untuk pertanyaan tentang covid19, mungkin ada bisa lihat list keyword yang tersedia di bawah :\r\n\r\n#> kasus covid19\r\n#> rumah sakit rujukan\r\n#> edukasi\r\n#> tanya jawab\r\n#> berita', NULL, '1', NULL, '2022-07-16 07:01:47', '2022-07-16 07:01:47'),
	(15, 21, 14, 'text', 'sub1', 'Edukasi covid-19', 'https://covid19.go.id/feed/masyarakat-umum', NULL, '1', NULL, '2022-07-16 07:12:08', '2022-07-16 07:12:08'),
	(16, 20, 14, 'text', 'sub1', 'Kasus covid-19 harian', 'kasus covid19 harian', NULL, '1', NULL, '2022-07-17 15:11:11', '2022-07-17 15:11:11'),
	(17, 8, 0, 'text', 'master', 'KIA', 'coming soon ....', NULL, '1', NULL, '2022-07-22 03:24:14', '2022-07-22 03:24:14'),
	(18, 6, 0, 'text', 'master', 'Informasi Dan Edukasi Kesehatan', 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', NULL, '1', NULL, '2022-07-22 03:34:18', '2022-07-22 03:34:18'),
	(20, 19, 18, 'text', 'sub1', 'Penyakit Mata', 'Mata adalah bagian penting dari kesehatan Anda.Ada banyak hal yang dapat Anda lakukan untuk menjaga kesehatan dan pastikan Anda melihat yang terbaik. Ikuti langkah-langkah sederhana untuk menjaga kesehatan mata juga menjadi tahun emas Anda.\r\n\r\n- *Melakukan pemeriksaan mata yang komprehensif*. Anda mungkin berpikir mata Anda akan baik-baik saja atau beranggapan bahwa mata Anda sehat, tetapi mengunjungi dokter mata untuk pemeriksaan mata yang komprehensif adalah satu-satunya cara untuk meyakinkan tidak ada masalah pada mata Anda. Setelah pemeriksaan, banyak yang tidak menyadari bahwa penyakit mata yang umum seperti glaukoma, penyakit mata yang diakibatkan riwayat diabetes dan degenerasi makula terkait usia seringkali tidak memiliki tanda-tanda peringatan.\r\n- *Mengetahui riwayat kesehatan keluarga Anda.* Tanyakanpada anggota keluarga Anda tentang riwayat kesehatan mata mereka. Ini penting untuk mengetahui apakah seseorang telah didiagnosis dengan penyakit yang turun-temurun. Ini akan membantu untuk menentukan apakah Anda berada pada risiko tinggi untuk penyakit mata.\r\n- *Pilih makanan yang baik untuk melindungi penglihatan Anda.* Anda pernah mendengar wortel baik untuk mata Anda. Tapi makanan yang kaya akan buah-buahan dan sayuran, terutama sayuran hijau seperti bayam, kangkung, sangat penting untuk menjaga kesehatan mata. Penelitian juga telah menunjukkan ada manfaat kesehatan mata dari ikan yang tinggi omega- 3 asam lemak, seperti salmon, tuna, dan halibut.\r\n- *Menjaga berat badan.* Kelebihan berat badan atau obesitas meningkatkan risiko terkena diabetes dan kondisi sistemik lainnya, yang dapat menyebabkan kehilangan penglihatan, seperti penyakit mata diabetes atau glaukoma. Jika Anda mengalami kesulitan mempertahankan berat badan yang sehat, berbicara dengan dokter Anda.\r\n- *Pakailah kacamata pelindung.* Pakailah kacamata pelindung saat berolahraga atau melakukan kegiatan di sekitar rumah. Kacamata pelindung dirancang khusus untuk memberikan perlindungan yang tepat untuk aktivitas tertentu. Lensa kacamata pelindung terbuat dari polikarbonat, yaitu 10 kali lebih kuat dari plastik lainnya.\r\n- *Berhenti merokok atau jangan pernah memulai.* Merokok adalah salah satu faktor yang menyebabkan pengaruh buruk bagi mata Anda. Penelitian telah menghubungkan perilaku merokok dengan peningkatan risiko pengembangkan degenerasi terkait usia makula, katarak, dan kerusakan saraf optik, yang semuanya dapat menyebabkan kebutaan.\r\n- *Berikan waktu istirahat bagi mata Anda.* Jika Anda menghabiskan banyak waktu di depan komputer atau fokus pada satu hal, Anda kadang-kadang lupa untuk berkedip dan mata Anda bisa lelah. Cobalah aturan 20-20-20: Setiap 20 menit, melihat jauh sekitar 20 meter di depan Anda selama 20 detik. Hal ini dapat membantu mengurangi kelelahan mata.\r\n- *Bersihkan tangan dan lensa kontak Anda.* Untuk menghindari risiko infeksi, selalu mencuci tangan Anda secara menyeluruh sebelum menempatkan atau mengambil lensa kontak Anda. Pastikan untuk mensterilkan lensa kontak seperti yang diperintahkan dan menggantinya sesuai waktunya.', NULL, '1', NULL, '2022-07-22 14:41:55', '2022-07-22 14:41:55'),
	(21, 1, 0, 'text', 'master', 'Poli Umum', 'poli umum', NULL, '1', NULL, '2022-07-22 15:15:00', '2022-07-22 15:15:00'),
	(22, 2, 0, 'text', 'master', 'Poli Gigi', 'poli gigi', NULL, '1', NULL, '2022-07-22 15:15:37', '2022-07-22 15:15:37'),
	(23, 5, 0, 'text', 'master', 'Lansia', 'lansia', NULL, '1', NULL, '2022-07-22 15:16:06', '2022-07-22 15:16:06'),
	(24, 3, 0, 'text', 'master', 'Apotik', 'Apotik', NULL, '1', NULL, '2022-07-22 15:16:56', '2022-07-22 15:16:56'),
	(25, 9, 0, 'text', 'master', 'Vaksin', 'Vaksin', NULL, '1', NULL, '2022-07-22 15:17:50', '2022-07-22 15:17:50'),
	(26, 24, 17, 'text', 'sub1', 'Jadwal Imunisasi', 'Setiap hari jumat (ambil no antrian kusus imunisasi, kuota terbatas)', NULL, '1', NULL, '2022-07-22 15:26:27', '2022-07-22 15:26:27'),
	(27, 26, 25, 'text', 'sub1', 'Konsultasi sertifikat?', 'Silahkan datang ke lantai 2 Puskesmas ke ruang Aula bagian konsultasi sertifikat', NULL, '1', NULL, '2022-07-22 15:27:21', '2022-07-22 15:27:21'),
	(28, 11, 21, 'text', 'sub1', 'Jadwal pelayanan TB dan Pengambilan Obat TB?', '-', NULL, '1', NULL, '2022-07-22 15:28:11', '2022-08-15 09:53:38'),
	(29, 22, 17, 'text', 'sub1', 'Persyaratan Catin?', '2 fotokopi KTP calon pengantin, fotokopi surat dari KUA', NULL, '1', NULL, '2022-07-22 15:29:53', '2022-07-22 15:29:53'),
	(30, 12, 21, 'text', 'sub1', 'Layanan laboraturium ada apa aja?', 'Berikut adalah list layanan laboraturium di puskesmas padurenan.\r\n\r\n-Pemeriksaan skrining triple eliminasi ibu hamil (HbsAg, HIV, Sifilis)\r\n-Pemeriksaan Hb, Asam urat, Cholesterol, Gula Darah, HCG urin (Test Pack)\r\n-Pemeriksaan HIV pasien Tb \r\n-Pemeriksaan CATIN (HIV, Sifilis)', NULL, '1', NULL, '2022-07-22 15:31:23', '2022-07-22 15:31:23'),
	(31, 13, 21, 'text', 'sub1', 'Surat sehat untuk sekolah atau pun kerja bisa tidak?', 'Bisa, persyaratan yang perlu dibawa : Fotokopi KTP atau KIA', NULL, '1', NULL, '2022-07-22 15:32:11', '2022-07-22 15:32:11'),
	(32, 14, 21, 'text', 'sub1', 'Persyaratan pendaftaran pasien baru/lama?', 'Membawa kartu identitas KK/KTP dan BPJS', NULL, '1', NULL, '2022-07-22 15:33:15', '2022-07-22 15:33:15'),
	(33, 16, 22, 'text', 'sub1', 'Poli gigi melayani pembersihan karang gigi tdk?', 'Mungkin untuk sekrang belum bisa', NULL, '1', NULL, '2022-07-22 15:33:50', '2022-07-22 15:33:50'),
	(34, 15, 22, 'text', 'sub1', 'Pelayanan dokter gigi?', 'Senin - Sabtu jam 08.00 - 10.00, kuota terbatas', NULL, '1', NULL, '2022-07-22 15:34:23', '2022-07-22 15:34:23'),
	(35, 4, 0, 'text', 'master', 'Nomer Darurat', 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', NULL, '1', NULL, '2022-07-22 16:23:27', '2022-07-22 16:23:27'),
	(36, 23, 17, 'text', 'sub1', 'Jadwal USG', 'Minggu ke 2 dan 3 (info lebih lanjut hubungi kader per wilayah)', NULL, '1', NULL, '2022-08-15 10:04:55', '2022-08-15 10:04:55'),
	(37, 25, 17, 'text', 'sub1', 'Jadwal suntik TT (Tetanus Toksoid)? *imunisasi*', 'Hari jumat, kouta terbatas', NULL, '1', NULL, '2022-08-15 10:07:57', '2022-08-15 10:52:14'),
	(38, 27, 25, 'text', 'sub1', 'Ketersediaan vaksin', 'Opsss, masih belum tersedia', NULL, '1', NULL, '2022-08-15 10:16:43', '2022-08-15 10:16:43');
/*!40000 ALTER TABLE `whatsapp_replies` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

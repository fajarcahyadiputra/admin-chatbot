-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.33 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk whatsapp_api
CREATE DATABASE IF NOT EXISTS `whatsapp_api` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `whatsapp_api`;

-- membuang struktur untuk table whatsapp_api.failed_jobs
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

-- Membuang data untuk tabel whatsapp_api.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table whatsapp_api.message_replies
CREATE TABLE IF NOT EXISTS `message_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci,
  `number_destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('media','text') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel whatsapp_api.message_replies: ~14 rows (lebih kurang)
/*!40000 ALTER TABLE `message_replies` DISABLE KEYS */;
INSERT INTO `message_replies` (`id`, `message`, `number_destination`, `type`, `question`, `keyword`, `link_media`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(279, 'poli umum', '62895378889471', 'text', 'Poli Umum', '1', NULL, NULL, '2022-09-15 14:58:48', '2022-09-15 14:58:48'),
	(280, '-', '62895378889471', 'text', 'Jadwal pelayanan TB dan Pengambilan Obat TB?', '11', NULL, NULL, '2022-09-15 15:02:53', '2022-09-15 15:02:53'),
	(281, 'Berikut adalah list layanan laboraturium di puskesmas padurenan.\r\n\r\n-Pemeriksaan skrining triple eliminasi ibu hamil (HbsAg, HIV, Sifilis)\r\n-Pemeriksaan Hb, Asam urat, Cholesterol, Gula Darah, HCG urin (Test Pack)\r\n-Pemeriksaan HIV pasien Tb \r\n-Pemeriksaan CATIN (HIV, Sifilis)', '62895378889471', 'text', 'Layanan laboraturium ada apa aja?', '12', NULL, NULL, '2022-09-15 15:02:56', '2022-09-15 15:02:56'),
	(282, 'Berikut adalah list layanan laboraturium di puskesmas padurenan.\r\n\r\n-Pemeriksaan skrining triple eliminasi ibu hamil (HbsAg, HIV, Sifilis)\r\n-Pemeriksaan Hb, Asam urat, Cholesterol, Gula Darah, HCG urin (Test Pack)\r\n-Pemeriksaan HIV pasien Tb \r\n-Pemeriksaan CATIN (HIV, Sifilis)', '62895378889471', 'text', 'Layanan laboraturium ada apa aja?', '12', NULL, NULL, '2022-09-15 15:02:58', '2022-09-15 15:02:58'),
	(283, 'Untuk sekarang belum terasedia untuk pertanyaan tentang apotik', '62895378889471', 'text', 'Apotik', '3', NULL, NULL, '2022-09-15 15:03:14', '2022-09-15 15:03:14'),
	(284, 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', '62895378889471', 'text', 'Nomer Darurat', '4', NULL, NULL, '2022-09-15 15:03:21', '2022-09-15 15:03:21'),
	(285, 'Untuk sekarang belum terasedia untuk pertanyaan tentang lansia', '62895378889471', 'text', 'Lansia', '5', NULL, NULL, '2022-09-15 15:03:27', '2022-09-15 15:03:27'),
	(286, 'silakan anda masukan angak di bawah ini untuk menanyakan informasi atau edukasi yang anda minta.\r\n\r\n10 => List Penyakit Yang Tersedia', '62895378889471', 'text', 'Informasi Dan Edukasi Kesehatan', '6', NULL, NULL, '2022-09-15 15:03:30', '2022-09-15 15:03:30'),
	(287, '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', '62895378889471', 'text', 'paru-paru', '18', NULL, NULL, '2022-09-15 15:03:33', '2022-09-15 15:03:33'),
	(288, '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', '62895378889471', 'text', 'paru-paru', '18', NULL, NULL, '2022-09-15 15:03:36', '2022-09-15 15:03:36'),
	(289, '*Apa itu Penyakit Paru-paru?*\r\n\r\nParu-paru adalah bagian dari sistem pernapasan. Fungsinya adalah memasok oksigen dan mengeluarkan udara kotor agar seluruh sistem dan organ tubuh dapat berfungsi dengan baik. Paru-paru terletak di kedua sisi dada. Keduanya dipisahkan oleh mediastinum (rongga yang berisi esofagus, trakea, dan jantung), dan dilindungi oleh tulang rusuk.\r\nPenyakit paru-paru adalah kondisi yang membuat paru-paru tidak dapat berfungsi secara normal. Beberapa yang paling umum, di antaranya asma, penyakit paru obstruktif kronis (PPOK), pneumonia, tuberkulosis, dan kanker paru. Penyakit tersebut dapat berasal dari genetik, kebiasaan merokok, polusi udara, dan paparan bahan kimia di tempat kerja. Penyakit-penyakit ini umumnya menunjukkan gejala yaitu sulit bernapas, batuk kronis, mengi, dan nyeri dada. Kondisi yang sudah parah dapat menyebabkan pasien batuk berdarah, infeksi kronis yang tidak sembuh setelah diobati, dan kegagalan pernapasan.\r\n\r\n*Penyebab Penyakit Paru-paru*\r\n\r\nSebagian besar penyakit paru-paru disebabkan oleh merokok. Asap rokok mengandung racun yang mengganggu kinerja tubuh dalam menyaring udara yang masuk dan keluar dari paru-paru. Rokok pun dapat merusak silia (struktur mikroskopis yang bertugas membuang debu dan kotoran dari udara yang terhirup) dan memproduksi lendir berlebih. Hal ini menyebabkan penumpukan zat racun di dalam paru-paru.\r\nPaparan asap rokok dalam jangka waktu yang lama dapat menyebabkan kerusakan yang tidak dapat diperbaiki pada struktur paru-paru. Akibatnya, paru-paru tak dapat menyalurkan oksigen pada darah dengan baik, sehingga penderita menjadi sulit bernapas dan mengalami gejala lain.\r\n\r\n\r\nkeyword penyakit di dalam paru-pau, untuk lebih detail tentang penyakit paru-paru :\r\n\r\nasma\r\nbronkitis kronis\r\nemfisema\r\njaringan paru-paru\r\n', '62895378889471', 'text', 'paru-paru', '18', NULL, NULL, '2022-09-15 15:03:38', '2022-09-15 15:03:38'),
	(290, 'Mata adalah bagian penting dari kesehatan Anda.Ada banyak hal yang dapat Anda lakukan untuk menjaga kesehatan dan pastikan Anda melihat yang terbaik. Ikuti langkah-langkah sederhana untuk menjaga kesehatan mata juga menjadi tahun emas Anda.\r\n\r\n- *Melakukan pemeriksaan mata yang komprehensif*. Anda mungkin berpikir mata Anda akan baik-baik saja atau beranggapan bahwa mata Anda sehat, tetapi mengunjungi dokter mata untuk pemeriksaan mata yang komprehensif adalah satu-satunya cara untuk meyakinkan tidak ada masalah pada mata Anda. Setelah pemeriksaan, banyak yang tidak menyadari bahwa penyakit mata yang umum seperti glaukoma, penyakit mata yang diakibatkan riwayat diabetes dan degenerasi makula terkait usia seringkali tidak memiliki tanda-tanda peringatan.\r\n- *Mengetahui riwayat kesehatan keluarga Anda.* Tanyakanpada anggota keluarga Anda tentang riwayat kesehatan mata mereka. Ini penting untuk mengetahui apakah seseorang telah didiagnosis dengan penyakit yang turun-temurun. Ini akan membantu untuk menentukan apakah Anda berada pada risiko tinggi untuk penyakit mata.\r\n- *Pilih makanan yang baik untuk melindungi penglihatan Anda.* Anda pernah mendengar wortel baik untuk mata Anda. Tapi makanan yang kaya akan buah-buahan dan sayuran, terutama sayuran hijau seperti bayam, kangkung, sangat penting untuk menjaga kesehatan mata. Penelitian juga telah menunjukkan ada manfaat kesehatan mata dari ikan yang tinggi omega- 3 asam lemak, seperti salmon, tuna, dan halibut.\r\n- *Menjaga berat badan.* Kelebihan berat badan atau obesitas meningkatkan risiko terkena diabetes dan kondisi sistemik lainnya, yang dapat menyebabkan kehilangan penglihatan, seperti penyakit mata diabetes atau glaukoma. Jika Anda mengalami kesulitan mempertahankan berat badan yang sehat, berbicara dengan dokter Anda.\r\n- *Pakailah kacamata pelindung.* Pakailah kacamata pelindung saat berolahraga atau melakukan kegiatan di sekitar rumah. Kacamata pelindung dirancang khusus untuk memberikan perlindungan yang tepat untuk aktivitas tertentu. Lensa kacamata pelindung terbuat dari polikarbonat, yaitu 10 kali lebih kuat dari plastik lainnya.\r\n- *Berhenti merokok atau jangan pernah memulai.* Merokok adalah salah satu faktor yang menyebabkan pengaruh buruk bagi mata Anda. Penelitian telah menghubungkan perilaku merokok dengan peningkatan risiko pengembangkan degenerasi terkait usia makula, katarak, dan kerusakan saraf optik, yang semuanya dapat menyebabkan kebutaan.\r\n- *Berikan waktu istirahat bagi mata Anda.* Jika Anda menghabiskan banyak waktu di depan komputer atau fokus pada satu hal, Anda kadang-kadang lupa untuk berkedip dan mata Anda bisa lelah. Cobalah aturan 20-20-20: Setiap 20 menit, melihat jauh sekitar 20 meter di depan Anda selama 20 detik. Hal ini dapat membantu mengurangi kelelahan mata.\r\n- *Bersihkan tangan dan lensa kontak Anda.* Untuk menghindari risiko infeksi, selalu mencuci tangan Anda secara menyeluruh sebelum menempatkan atau mengambil lensa kontak Anda. Pastikan untuk mensterilkan lensa kontak seperti yang diperintahkan dan menggantinya sesuai waktunya.', '62895378889471', 'text', 'Penyakit Mata', '19', NULL, NULL, '2022-09-15 15:03:40', '2022-09-15 15:03:40'),
	(291, NULL, '62895378889471', 'media', 'coba', '28', 'http://localhost:8000/storage/media/GgizxpqtxdI2YZkFH6tGlAaFFODwiknYs2FK8ONn.png', NULL, '2022-09-15 15:42:49', '2022-09-15 15:42:49'),
	(292, 'poli umum', '62895378889471', 'text', 'Poli Umum', '1', NULL, NULL, '2022-09-15 19:41:33', '2022-09-15 19:41:33'),
	(293, NULL, '62895378889471', 'media', 'Layanan laboraturium ada apa aja?', '12', 'http://localhost:8000/storage/media/1_2.png', NULL, '2022-09-15 19:41:36', '2022-09-15 19:41:36');
/*!40000 ALTER TABLE `message_replies` ENABLE KEYS */;

-- membuang struktur untuk table whatsapp_api.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel whatsapp_api.migrations: ~10 rows (lebih kurang)
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
	(18, '2022_07_22_082754_add_column_roll_sub_in_whatsapp_replies_table', 4),
	(19, '2022_09_15_070049_add_column_at_users_table', 5),
	(20, '2022_09_15_075016_add_question_column_at_message_replies_table', 6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table whatsapp_api.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel whatsapp_api.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table whatsapp_api.personal_access_tokens
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

-- Membuang data untuk tabel whatsapp_api.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table whatsapp_api.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('superadmin','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
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

-- Membuang data untuk tabel whatsapp_api.users: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `picture`, `isActive`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(2, 'superadmin', 'superadmin@gmail.com', 'superadmin', NULL, '$2y$10$o0q.OPrxxmoNgp3WdivBZ.dUvPD0m5eBjzeI88eMa1WLk3MaO6.OG', 'public/images/Wkq6RraL51oAl5jO7RQdxCXGlg9MjFt6NldZOzWK.jpg', '1', NULL, NULL, '2022-07-25 14:01:30', '2022-09-04 17:50:21'),
	(7, 'fajarcahyadiputra', 'fajarcahyadiputra@gmail.com', 'admin', NULL, '$2y$10$CL08Z79u.qjgaZmPZbO/HuR0K/YLurNZiEC2G8sk/arxn7pxLj8Aq', 'public/images/mViMOMEx8w4tcxd43YLauPWdJNjM19ku0gnLVNUZ.png', '1', NULL, NULL, '2022-08-24 05:29:21', '2022-09-04 17:51:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- membuang struktur untuk table whatsapp_api.whatsapp_replies
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel whatsapp_api.whatsapp_replies: ~26 rows (lebih kurang)
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
	(23, 5, 0, 'text', 'master', 'Lansia', 'Untuk sekarang belum terasedia untuk pertanyaan tentang lansia', NULL, '1', NULL, '2022-07-22 15:16:06', '2022-07-22 15:16:06'),
	(24, 3, 0, 'text', 'master', 'Apotik', 'Untuk sekarang belum terasedia untuk pertanyaan tentang apotik', NULL, '1', NULL, '2022-07-22 15:16:56', '2022-07-22 15:16:56'),
	(25, 9, 0, 'text', 'master', 'Vaksin', 'Vaksin', NULL, '1', NULL, '2022-07-22 15:17:50', '2022-07-22 15:17:50'),
	(26, 24, 17, 'text', 'sub1', 'Jadwal Imunisasi', 'Setiap hari jumat (ambil no antrian kusus imunisasi, kuota terbatas)', NULL, '1', NULL, '2022-07-22 15:26:27', '2022-07-22 15:26:27'),
	(27, 26, 25, 'text', 'sub1', 'Konsultasi sertifikat?', 'Silahkan datang ke lantai 2 Puskesmas ke ruang Aula bagian konsultasi sertifikat', NULL, '1', NULL, '2022-07-22 15:27:21', '2022-07-22 15:27:21'),
	(28, 11, 21, 'text', 'sub1', 'Jadwal pelayanan TB dan Pengambilan Obat TB?', '-', NULL, '1', NULL, '2022-07-22 15:28:11', '2022-08-15 09:53:38'),
	(29, 22, 17, 'text', 'sub1', 'Persyaratan Catin?', '2 fotokopi KTP calon pengantin, fotokopi surat dari KUA', NULL, '1', NULL, '2022-07-22 15:29:53', '2022-07-22 15:29:53'),
	(30, 12, 21, 'media', 'sub1', 'Layanan laboraturium ada apa aja?', 'Berikut adalah list layanan laboraturium di puskesmas padurenan.\r\n\r\n-Pemeriksaan skrining triple eliminasi ibu hamil (HbsAg, HIV, Sifilis)\r\n-Pemeriksaan Hb, Asam urat, Cholesterol, Gula Darah, HCG urin (Test Pack)\r\n-Pemeriksaan HIV pasien Tb \r\n-Pemeriksaan CATIN (HIV, Sifilis)', 'public/media/1_2.png', '1', NULL, '2022-07-22 15:31:23', '2022-07-22 15:31:23'),
	(31, 13, 21, 'text', 'sub1', 'Surat sehat untuk sekolah atau pun kerja bisa tidak?', 'Bisa, persyaratan yang perlu dibawa : Fotokopi KTP atau KIA', NULL, '1', NULL, '2022-07-22 15:32:11', '2022-07-22 15:32:11'),
	(32, 14, 21, 'text', 'sub1', 'Persyaratan pendaftaran pasien baru/lama?', 'Membawa kartu identitas KK/KTP dan BPJS', NULL, '1', NULL, '2022-07-22 15:33:15', '2022-07-22 15:33:15'),
	(33, 16, 22, 'text', 'sub1', 'Poli gigi melayani pembersihan karang gigi tdk?', 'Mungkin untuk sekrang belum bisa', NULL, '1', NULL, '2022-07-22 15:33:50', '2022-07-22 15:33:50'),
	(34, 15, 22, 'text', 'sub1', 'Pelayanan dokter gigi?', 'Senin - Sabtu jam 08.00 - 10.00, kuota terbatas', NULL, '1', NULL, '2022-07-22 15:34:23', '2022-07-22 15:34:23'),
	(35, 4, 0, 'text', 'master', 'Nomer Darurat', 'Nomor telepon darurat yg perlu anda ketahui:\r\n- Emergency Call: 112\r\n- Ambulan: 118 atau 119\r\n- Pemadam kebakaran: 113\r\n- Polisi: 110\r\n- SAR/BASARNAS: 115\r\n- Posko bencana alam: 129\r\n- PLN: 123\r\n\r\nnomor-nomor lain yang perlu juga dicatat:\r\n- KOMNAS HAM: 021-3925230\r\n- KOMNAS Perempuan: 021-3903963\r\n- KPAI: 021-319015', NULL, '1', NULL, '2022-07-22 16:23:27', '2022-07-22 16:23:27'),
	(36, 23, 17, 'text', 'sub1', 'Jadwal USG', 'Minggu ke 2 dan 3 (info lebih lanjut hubungi kader per wilayah)', NULL, '1', NULL, '2022-08-15 10:04:55', '2022-08-15 10:04:55'),
	(37, 25, 17, 'text', 'sub1', 'Jadwal suntik TT (Tetanus Toksoid)? *imunisasi*', 'Hari jumat, kouta terbatas', NULL, '1', NULL, '2022-08-15 10:07:57', '2022-08-15 10:52:14'),
	(38, 27, 25, 'text', 'sub1', 'Ketersediaan vaksin', 'Opsss, masih belum tersedia', NULL, '1', NULL, '2022-08-15 10:16:43', '2022-08-15 10:16:43'),
	(39, 28, 0, 'media', 'master', 'coba', NULL, 'public/media/GgizxpqtxdI2YZkFH6tGlAaFFODwiknYs2FK8ONn.png', '1', '2022-09-15 08:50:15', '2022-09-15 08:42:00', '2022-09-15 08:50:15');
/*!40000 ALTER TABLE `whatsapp_replies` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 02 May 2023, 10:37:00
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16;

--
-- Tablo döküm verisi `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mikail', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Mustafacan', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `authors_id` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `writer_id` (`authors_id`),
  KEY `writer_id_2` (`authors_id`),
  KEY `writer_id_3` (`authors_id`),
  KEY `writer_id_4` (`authors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf16;

--
-- Tablo döküm verisi `books`
--

INSERT INTO `books` (`id`, `name`, `authors_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(2, 'musfatacankitap1', 2, '2023-05-02 06:43:52', NULL, NULL),
(3, 'musfatacankitap2', 2, NULL, NULL, NULL),
(4, 'mikailkitap1', 1, NULL, NULL, NULL),
(5, 'mikailkitap2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(4, 'default', '{\"uuid\":\"0908a06d-bfde-421c-af7d-98054d42f34c\",\"displayName\":\"App\\\\Jobs\\\\BookDeleteJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\BookDeleteJob\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\BookDeleteJob\\\":11:{s:26:\\\"\\u0000App\\\\Jobs\\\\BookDeleteJob\\u0000id\\\";s:1:\\\"2\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"},\"telescope_uuid\":\"9911f14c-dd9c-468c-b868-fecb5b6b4026\"}', 0, NULL, 1683023418, 1683023418);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `log_type` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf16;

--
-- Tablo döküm verisi `logs`
--

INSERT INTO `logs` (`id`, `log_type`, `created_at`, `updated_at`) VALUES
(7, 'books_update', '2023-05-02 07:30:04', '2023-05-02 07:30:04'),
(6, 'books_update', '2023-05-02 06:47:46', '2023-05-02 06:47:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `telescope_entries`
--

DROP TABLE IF EXISTS `telescope_entries`;
CREATE TABLE IF NOT EXISTS `telescope_entries` (
  `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9911f06a-63e3-4261-99ab-51fc608f7bb2', '9911f06a-6c2c-4195-aee0-3cbc5d632603', 'aa19ae6174928375055dc0a77a1a6bd7', 1, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":712,\"message\":\"SQLSTATE[42000]: Syntax error or access violation: 1071 Specified key was too long; max key length is 1000 bytes (SQL: alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`))\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":672},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":502},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Blueprint.php\",\"line\":109},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":364},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":227},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":58},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":472},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":394},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":403},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":202},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":167},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":112},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":86},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":606},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":98},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":40},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":93},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":37},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":653},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":136},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":298},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":121},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":1040},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":301},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":171},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Application.php\",\"line\":94},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":129},{\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\artisan\",\"line\":37}],\"line_preview\":{\"703\":\"        \\/\\/ took to execute and log the query SQL, bindings and time in our memory.\",\"704\":\"        try {\",\"705\":\"            return $callback($query, $bindings);\",\"706\":\"        }\",\"707\":\"\",\"708\":\"        \\/\\/ If an exception occurs when attempting to run a query, we\'ll format the error\",\"709\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"710\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"711\":\"        catch (Exception $e) {\",\"712\":\"            throw new QueryException(\",\"713\":\"                $query, $this->prepareBindings($bindings), $e\",\"714\":\"            );\",\"715\":\"        }\",\"716\":\"    }\",\"717\":\"\",\"718\":\"    \\/**\",\"719\":\"     * Log a query in the connection\'s query log.\",\"720\":\"     *\",\"721\":\"     * @param  string  $query\",\"722\":\"     * @param  array  $bindings\"},\"hostname\":\"DESKTOP-1C1NOQ6\",\"occurrences\":1}', '2023-05-02 10:27:49'),
(2, '9911f06a-4a58-4f45-bde8-854c664f2f2a', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'test\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"4.27\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(3, '9911f06a-4ca9-4d7b-8ede-a0f0a2edd14b', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'test\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(4, '9911f06a-4dbd-4c11-ac92-43dd2c872c45', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.15\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(5, '9911f06a-4e12-4ceb-adc4-d10f60d3f0a8', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.14\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(6, '9911f06a-4e96-4f22-bff6-e041da12fe4b', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.21\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\artisan\",\"line\":37,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(7, '9911f06a-51e4-40f1-b7be-c7791602924b', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"4.27\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":58,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(8, '9911f06a-5994-4ae9-bc6e-6da5268c66aa', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"18.34\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":58,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(9, '9911f06a-5ff9-4c51-b729-b5da6ddaca7f', '9911f06a-6c2c-4195-aee0-3cbc5d632603', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"15.80\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":58,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:27:49'),
(10, '9911f0cb-011e-4117-a02a-82ad968c6198', '9911f0cb-0428-4d54-af98-1f443f9bd047', NULL, 1, 'command', '{\"command\":\"optimize\",\"exit_code\":0,\"arguments\":{\"command\":\"optimize\"},\"options\":{\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:28:53'),
(11, '9911f0d5-7a0d-4bb5-bdd8-ad16e97f2e15', '9911f0d5-80cb-4116-8982-df7a584f5249', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:29:00'),
(12, '9911f0d5-7ff6-4b57-9bfe-68c22a07a296', '9911f0d5-80cb-4116-8982-df7a584f5249', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"112\\\", \\\"Microsoft Edge\\\";v=\\\"112\\\", \\\"Not:A-Brand\\\";v=\\\"99\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/112.0.0.0 Safari\\/537.36 Edg\\/112.0.1722.64\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"tr,en;q=0.9,en-GB;q=0.8,en-US;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IldodFhwUlpudjBmMUtNMzNTdFo1RXc9PSIsInZhbHVlIjoiS3VHaWpRSVZ0clRIcE4wMVhwVzNDNHJRZlpMZk5JN0k4Zk91NFZkMUhkYkxLS2NVeDFmazdZUkRYMXRsTWpvLzNvSWV6c2N2L25adnBsdjRpMmZWdmdoNmVUd2x6NCs5NTF1TkZpcDNZbHpLNGlKMGdIV0ZxWmlQR1hwaWp1d3QiLCJtYWMiOiI3YTk2ZTdjOWE4YTA3ZTZiODFmMWZjZjZlN2MyOTJmNTk0MzhkNzI2ZjA0MDE2MmJiOTA3YmUwNDFmYjQ5M2I5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImltS3B2WVExcDZpNUhFUVVxbzU3b2c9PSIsInZhbHVlIjoiVDlBNHIvTlZZcHkvamY5aGlablhsRnJTRmdCMVRxNnVIWGZJWWlFbm9NYXVnWkY0N0JEL0FQZzNHSG9RL2R2MmNCRFYrcXVreVBEbDlDdFBQTDAvTUVPVzE4NlZpdDBMV3VJeVQvc1RNSVpvQkJKcUlUdUFOUFBURmhTMDRHdTMiLCJtYWMiOiI0NWQ3YzJiNDgzOGRmZWFlNzJhZjM0NDJiMmJhNDIzZTExMWE5Mzg2MDcxY2Y3ZWI2NDc3YTMyNjEzZTY2NzMwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"DRht1hqlOaRmlJuU8AdFIdh6qMjq71NXgEOH3Qqg\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":92,\"memory\":4,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:29:00'),
(13, '9911f120-5345-4c63-987c-b47901924ccd', '9911f120-5c69-4921-a296-34bbd5762a56', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:29:49'),
(14, '9911f120-593a-46ec-8180-0cd64a8d395f', '9911f120-5c69-4921-a296-34bbd5762a56', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"books\",\"value\":[{\"id\":2,\"name\":\"kitap1\",\"authors_id\":2,\"updated_at\":\"2023-05-02T09:43:52.000000Z\",\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}},{\"id\":3,\"name\":\"musfatacankitap2\",\"authors_id\":2,\"updated_at\":null,\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}}],\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:29:49'),
(15, '9911f120-5b6e-4f41-b527-e401c6fcaff4', '9911f120-5c69-4921-a296-34bbd5762a56', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":1,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:29:49'),
(16, '9911f120-5be1-43bc-a32b-6ba99a105ed6', '9911f120-5c69-4921-a296-34bbd5762a56', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/testapi\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\UdereyController@index\",\"middleware\":[\"api\"],\"headers\":{\"content-type\":\"application\\/json\",\"user-agent\":\"PostmanRuntime\\/7.32.2\",\"accept\":\"*\\/*\",\"postman-token\":\"821c3665-f177-4aa2-bcbd-d375052b1bc1\",\"host\":\"127.0.0.1:8000\",\"accept-encoding\":\"gzip, deflate, br\",\"connection\":\"keep-alive\",\"content-length\":\"29\"},\"payload\":{\"name\":\"kitap1\"},\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"name\":\"kitap1\",\"authors_id\":2,\"updated_at\":\"2023-05-02T09:43:52.000000Z\",\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}},{\"id\":3,\"name\":\"musfatacankitap2\",\"authors_id\":2,\"updated_at\":null,\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}}],\"duration\":63,\"memory\":2,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:29:49'),
(17, '9911f137-076d-4030-be9d-6b846c539f4d', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":1,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(18, '9911f137-1587-4696-96f4-3d4125272038', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `books` where `books`.`id` = \'2\' limit 1\",\"time\":\"27.07\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\app\\\\Http\\\\Controllers\\\\Api\\\\UdereyController.php\",\"line\":34,\"hash\":\"2c21631eaa8d44e284aef72fbb2455ae\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(19, '9911f137-15f9-4d57-844b-62ac4e785499', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Books\",\"count\":1,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(20, '9911f137-1881-4a71-b9c6-0be4cc3c96ec', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `logs` (`log_type`, `updated_at`, `created_at`) values (\'books_update\', \'2023-05-02 10:30:04\', \'2023-05-02 10:30:04\')\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\app\\\\Listeners\\\\createLogs.php\",\"line\":34,\"hash\":\"d457a6c0bf92efaaa0608b39996672f9\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(21, '9911f137-1918-492a-bb96-7738f26e7ed0', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Logs:7\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(22, '9911f137-199e-4dbf-9e39-c29894c3dcaa', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'event', '{\"name\":\"App\\\\Events\\\\BooksUpdate\",\"payload\":{\"socket\":null},\"listeners\":[{\"name\":\"App\\\\Listeners\\\\createLogs@handle\",\"queued\":false}],\"broadcast\":false,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(23, '9911f137-1b3e-434b-96bb-1480e2c2290f', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":2,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(24, '9911f137-1bbc-48ba-b906-e1d2e98b2e01', '9911f137-1c7d-4393-a1a7-99660aa84642', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/testapi\\/2\",\"method\":\"PUT\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\UdereyController@update\",\"middleware\":[\"api\"],\"headers\":{\"content-type\":\"application\\/json\",\"user-agent\":\"PostmanRuntime\\/7.32.2\",\"accept\":\"*\\/*\",\"postman-token\":\"4e75f6df-493a-4580-b244-9ac28e8350ab\",\"host\":\"127.0.0.1:8000\",\"accept-encoding\":\"gzip, deflate, br\",\"connection\":\"keep-alive\",\"content-length\":\"29\"},\"payload\":{\"name\":\"kitap1\"},\"session\":[],\"response_status\":200,\"response\":{\"id\":2,\"name\":\"kitap1\",\"authors_id\":2,\"updated_at\":\"2023-05-02T09:43:52.000000Z\",\"created_at\":null,\"deleted_at\":null},\"duration\":110,\"memory\":2,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:04'),
(25, '9911f14c-d8ba-45e2-9f9d-ee58caf84d09', '9911f14c-e4d7-4af0-9635-238ec96490d0', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":2,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:18'),
(26, '9911f14c-dd9c-468c-b868-fecb5b6b4026', '9911f14c-e4d7-4af0-9635-238ec96490d0', NULL, 1, 'job', '{\"status\":\"pending\",\"connection\":\"database\",\"queue\":\"default\",\"name\":\"App\\\\Jobs\\\\BookDeleteJob\",\"tries\":null,\"timeout\":null,\"data\":{\"id\":\"2\",\"job\":null,\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"chainCatchCallbacks\":null,\"delay\":null,\"afterCommit\":null,\"middleware\":[],\"chained\":[]},\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:18'),
(27, '9911f14c-e302-413c-980e-cbba6b7e82c3', '9911f14c-e4d7-4af0-9635-238ec96490d0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values (\'default\', 0, null, 1683023418, 1683023418, \'{\\\\\\\"uuid\\\\\\\":\\\\\\\"0908a06d-bfde-421c-af7d-98054d42f34c\\\\\\\",\\\\\\\"displayName\\\\\\\":\\\\\\\"App\\\\\\\\Jobs\\\\\\\\BookDeleteJob\\\\\\\",\\\\\\\"job\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Queue\\\\\\\\CallQueuedHandler@call\\\\\\\",\\\\\\\"maxTries\\\\\\\":null,\\\\\\\"maxExceptions\\\\\\\":null,\\\\\\\"failOnTimeout\\\\\\\":false,\\\\\\\"backoff\\\\\\\":null,\\\\\\\"timeout\\\\\\\":null,\\\\\\\"retryUntil\\\\\\\":null,\\\\\\\"data\\\\\\\":{\\\\\\\"commandName\\\\\\\":\\\\\\\"App\\\\\\\\Jobs\\\\\\\\BookDeleteJob\\\\\\\",\\\\\\\"command\\\\\\\":\\\\\\\"O:22:\\\\\\\\\\\"App\\\\\\\\Jobs\\\\\\\\BookDeleteJob\\\\\\\\\\\":11:{s:26:\\\\\\\\\\\"\\\\u0000App\\\\\\\\Jobs\\\\\\\\BookDeleteJob\\\\u0000id\\\\\\\\\\\";s:1:\\\\\\\\\\\"2\\\\\\\\\\\";s:3:\\\\\\\\\\\"job\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"connection\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"queue\\\\\\\\\\\";N;s:15:\\\\\\\\\\\"chainConnection\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"chainQueue\\\\\\\\\\\";N;s:19:\\\\\\\\\\\"chainCatchCallbacks\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"delay\\\\\\\\\\\";N;s:11:\\\\\\\\\\\"afterCommit\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"middleware\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"chained\\\\\\\\\\\";a:0:{}}\\\\\\\"},\\\\\\\"telescope_uuid\\\\\\\":\\\\\\\"9911f14c-dd9c-468c-b868-fecb5b6b4026\\\\\\\"}\')\",\"time\":\"11.75\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\testrest\\\\example-app\\\\app\\\\Http\\\\Controllers\\\\Api\\\\UdereyController.php\",\"line\":51,\"hash\":\"dcb5bc575158ce02a6c28ed0691de7a9\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:18'),
(28, '9911f14c-e3bf-4040-95e9-d2be83f002fc', '9911f14c-e4d7-4af0-9635-238ec96490d0', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":3,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:18'),
(29, '9911f14c-e445-4f56-b736-bf4913949d1b', '9911f14c-e4d7-4af0-9635-238ec96490d0', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/testapi\\/2\",\"method\":\"DELETE\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\UdereyController@destroy\",\"middleware\":[\"api\"],\"headers\":{\"content-type\":\"application\\/json\",\"user-agent\":\"PostmanRuntime\\/7.32.2\",\"accept\":\"*\\/*\",\"postman-token\":\"9397ad44-c162-4572-bba6-17fe7efbcfd2\",\"host\":\"127.0.0.1:8000\",\"accept-encoding\":\"gzip, deflate, br\",\"connection\":\"keep-alive\",\"content-length\":\"29\"},\"payload\":{\"name\":\"kitap1\"},\"session\":[],\"response_status\":200,\"response\":\"Empty Response\",\"duration\":60,\"memory\":2,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:30:18'),
(30, '9911f301-f7fa-43fb-b86d-31cdadb8168d', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(31, '9911f302-0079-4380-9276-bacab13a0e50', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"books\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(32, '9911f302-08b9-403d-942d-5a5d08c56d82', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `books`\",\"time\":\"4.99\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\edurey_case\\\\example-app\\\\app\\\\Http\\\\Controllers\\\\Api\\\\UdereyController.php\",\"line\":21,\"hash\":\"2c62fac1399b04dd6a64c6a4bc88b9df\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(33, '9911f302-08f2-41aa-a422-6f9bbe50da19', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Books\",\"count\":2,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(34, '9911f302-0b0c-4bb2-b3a1-1954f0c5ef0b', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `authors` where `authors`.`id` in (2)\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\Users\\\\Ayanm\\\\OneDrive\\\\Masa\\u00fcst\\u00fc\\\\edurey_case\\\\example-app\\\\app\\\\Http\\\\Controllers\\\\Api\\\\UdereyController.php\",\"line\":21,\"hash\":\"f42163ca36e9fc2ea8127d77f21c0dda\",\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(35, '9911f302-0b41-4dc6-aa29-a50bc843e514', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Authors\",\"count\":1,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(36, '9911f302-0be5-48ae-98e9-be246c3fd98e', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'cache', '{\"type\":\"set\",\"key\":\"books\",\"value\":[{\"id\":2,\"name\":\"kitap1\",\"authors_id\":2,\"updated_at\":\"2023-05-02T09:43:52.000000Z\",\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}},{\"id\":3,\"name\":\"musfatacankitap2\",\"authors_id\":2,\"updated_at\":null,\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}}],\"expiration\":3600,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(37, '9911f302-0e98-46af-bd2d-ed0677fcd92b', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":1,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04'),
(38, '9911f302-0ee5-4cad-8876-7f59ea535059', '9911f302-0fb2-4aa0-b2bb-2085c6d48bdd', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/testapi\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\UdereyController@index\",\"middleware\":[\"api\"],\"headers\":{\"content-type\":\"application\\/json\",\"user-agent\":\"PostmanRuntime\\/7.32.2\",\"accept\":\"*\\/*\",\"postman-token\":\"266e9639-2f2b-4af3-a8b4-28130f8a568e\",\"host\":\"127.0.0.1:8000\",\"accept-encoding\":\"gzip, deflate, br\",\"connection\":\"keep-alive\",\"content-length\":\"29\"},\"payload\":{\"name\":\"kitap1\"},\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"name\":\"kitap1\",\"authors_id\":2,\"updated_at\":\"2023-05-02T09:43:52.000000Z\",\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}},{\"id\":3,\"name\":\"musfatacankitap2\",\"authors_id\":2,\"updated_at\":null,\"created_at\":null,\"deleted_at\":null,\"authors\":{\"id\":2,\"name\":\"Mustafacan\",\"created_at\":\"-000001-11-30T00:00:00.000000Z\",\"updated_at\":\"-000001-11-30T00:00:00.000000Z\",\"deleted_at\":\"0000-00-00 00:00:00\"}}],\"duration\":253,\"memory\":10,\"hostname\":\"DESKTOP-1C1NOQ6\"}', '2023-05-02 10:35:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

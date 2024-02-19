-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2024 at 04:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rainbow.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Eum Non', 'eum-non', '2.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(2, 'Quibusdam Et', 'quibusdam-et', '1.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(3, 'Perferendis Distinctio', 'perferendis-distinctio', '1.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(4, 'Corrupti Et', 'corrupti-et', '3.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(5, 'Quas Ipsum', 'quas-ipsum', '5.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(6, 'Aut Qui', 'aut-qui', '1.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur Rerum', 'consequatur-rerum', '6.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(2, 'Culpa Consequatur', 'culpa-consequatur', '3.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(3, 'Repellat Beatae', 'repellat-beatae', '4.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(4, 'Quam Voluptate', 'quam-voluptate', '5.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(5, 'Possimus Voluptas', 'possimus-voluptas', '3.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(6, 'Animi Veritatis', 'animi-veritatis', '5.jpg', '2024-01-03 23:24:41', '2024-01-03 23:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2024_01_03_122936_create_brands_table', 1),
(15, '2024_01_03_123104_create_categories_table', 1),
(16, '2024_01_03_123143_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED NOT NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Deserunt Sed', 'deserunt-sed', 'Iste voluptatem dicta vel libero. Illum corrupti ut voluptate ipsa voluptate nihil. Optio praesentium totam perspiciatis non sunt perferendis.', 'Ut est nam culpa. Quia beatae accusamus ab dolor. Et voluptatem ducimus ex omnis sit non aut. Placeat nesciunt et animi. Fugit voluptas eos maxime occaecati cumque accusantium illum exercitationem. Ad nesciunt aut possimus et corrupti. Beatae minus et quia atque. Aliquam voluptatem facere dolores natus nobis id. Repellendus aliquid aspernatur molestiae natus sed. Harum minus cumque sed id. Corporis veritatis et veniam consequatur assumenda. Velit debitis quasi in quis ipsam non.', 1.00, NULL, 'SMD300', 'instock', 0, 107, '13.jpg', '13.jpg', 4, 3, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(2, 'Enim Magnam', 'enim-magnam', 'Voluptatem recusandae debitis corporis ut nulla error. Fugiat quia eius eum commodi unde adipisci. Nam voluptatem ea aspernatur qui.', 'Iure exercitationem autem enim saepe quis laudantium qui. Dolores in consequatur accusantium repellat magnam recusandae. Voluptatem aut eos molestiae magni inventore similique ipsa. Voluptatem aut blanditiis nisi enim vero. Nisi natus voluptatem magnam fugit nostrum sint saepe et. Voluptates velit quis fuga voluptatum repudiandae quod minima. Et iure eos necessitatibus est libero. Sit tempora ipsa excepturi et sed amet. Minima esse voluptas animi placeat.', 5.00, 2.00, 'SMD423', 'instock', 0, 192, '6.jpg', '6.jpg,3.jpg,9.jpg', 4, 2, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(3, 'Reiciendis Nemo', 'reiciendis-nemo', 'Laudantium non in incidunt nisi incidunt quasi sint. Quidem dignissimos sed deserunt optio similique voluptatem. Quia facere quos cumque velit est incidunt. Debitis excepturi aut unde beatae.', 'Perspiciatis qui placeat atque praesentium. Aut nobis consequatur similique aperiam culpa. Doloribus dolorum aut alias a. Earum neque temporibus quo. Distinctio culpa magnam qui laboriosam sed. Et voluptatem eum sunt animi. Nisi sed eaque ea aspernatur iure quia dolorem. Fugiat modi facilis nihil. Et quia aliquam qui facere ut sit. Pariatur aut similique sapiente enim provident.', 12.00, NULL, 'SMD471', 'instock', 0, 140, '10.jpg', '10.jpg', 4, 5, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(4, 'Tempora Est', 'tempora-est', 'Qui praesentium aspernatur corrupti quo eos sed. Necessitatibus alias qui repudiandae voluptatem accusantium quam.', 'Voluptate fugit perferendis vitae ea repudiandae dolore ut. Dicta perspiciatis minus fugiat architecto architecto maxime in sit. Sunt placeat vel dolores et cupiditate aut omnis. Hic in quasi non aut magnam ipsam. Qui necessitatibus voluptate rem optio quasi consequatur. Voluptas ut mollitia expedita laborum consequuntur. Velit tenetur aspernatur non ut labore consectetur.', 12.00, NULL, 'SMD152', 'instock', 0, 139, '3.jpg', '3.jpg', 2, 2, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(5, 'Sit Ducimus', 'sit-ducimus', 'Laudantium ea perferendis dolorum accusantium. Cupiditate accusamus perferendis consequatur accusamus laborum esse. Et accusantium beatae aut repellendus non. Sequi ullam est similique eos.', 'Eum asperiores consequatur ullam. Sunt libero eum nesciunt ipsa architecto eos consequatur. Qui saepe at magni vel dolorem odio esse. Mollitia libero ipsam in et dolores hic. Voluptatum porro assumenda sapiente labore. Ea et iure praesentium ut. Doloribus doloribus quo illum nihil ut iste autem cupiditate.', 13.00, NULL, 'SMD446', 'instock', 0, 107, '21.jpg', '21.jpg', 1, 4, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(6, 'Quo Quas', 'quo-quas', 'Dolorem fugiat voluptate autem a. A eveniet et similique unde excepturi occaecati. Recusandae placeat ipsa magni aliquid magni sequi debitis.', 'Dolorem reiciendis maiores et cum rerum optio. Sed qui praesentium mollitia in voluptatem aut eos. Ipsam qui eligendi iste voluptates assumenda qui velit. Quia maxime officiis distinctio distinctio assumenda sit. Eum sint adipisci impedit tempore ipsa sunt minus necessitatibus. Tempora excepturi ut quos facilis culpa ducimus minus. Nulla necessitatibus quia est alias. Reprehenderit nesciunt vel est ea totam. Qui quis unde veniam necessitatibus. Velit culpa unde facilis sed sapiente quis.', 11.00, NULL, 'SMD428', 'instock', 0, 125, '7.jpg', '7.jpg', 6, 1, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(7, 'Nesciunt Odio', 'nesciunt-odio', 'Eum maiores nulla accusamus quasi incidunt deserunt consequatur. Et rem quia nostrum velit et consequatur itaque. Voluptatibus modi nisi tempore perferendis eveniet id labore tempora.', 'Est quis dolorem dolor omnis ipsum consequatur. Eum eum voluptas a sit vitae. Est expedita aut rerum voluptatem. Nam quis aperiam corporis iste est tenetur et. Deserunt fuga autem ea. Aut alias est delectus est. Aperiam dolorem soluta eos laudantium illum amet. Neque autem saepe illo nihil et asperiores sit. Qui in molestiae autem qui consectetur recusandae nam nihil. Voluptas totam repudiandae illum voluptas. Consequatur laborum quo harum sed.', 20.00, NULL, 'SMD448', 'instock', 0, 198, '5.jpg', '5.jpg', 4, 2, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(8, 'Ea Perferendis', 'ea-perferendis', 'Consequuntur eveniet ex nesciunt est. Nam eum rerum quia autem odio dolore. Hic quo deserunt ex ipsam nesciunt delectus neque iste.', 'Repudiandae deserunt laborum sit illum itaque sequi aut. Animi sed vitae doloremque libero. Est est sequi aut vitae odio eum. Quia mollitia et corporis. Eos et quisquam qui id tenetur impedit sed mollitia. Possimus nemo aspernatur omnis velit. Voluptas aut quas et optio. Numquam possimus officia quia fuga beatae. Fugit qui iure itaque eveniet illum.', 5.00, NULL, 'SMD472', 'instock', 0, 121, '13.jpg', '13.jpg', 1, 5, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(9, 'Ab Quam', 'ab-quam', 'Et aut error vero officiis molestiae minima. Tempora est iste minus est tenetur ipsa. Dolores et eaque id dolores.', 'Et rem a rerum veniam unde molestiae. Commodi quia quia perferendis doloremque. Totam optio aut veniam illo id alias rerum. Quo est accusamus animi numquam. Aliquid adipisci qui alias voluptatem. Dolor ut ut consectetur dolorem rem. Quasi laudantium aut possimus doloremque mollitia vero. Rerum aut aut fuga ipsum. Et asperiores occaecati occaecati quis. Nobis reiciendis cumque quis quia.', 13.00, NULL, 'SMD187', 'instock', 0, 194, '18.jpg', '18.jpg', 3, 1, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(10, 'Tempora Possimus', 'tempora-possimus', 'Excepturi rerum non expedita. Illo eligendi quia non omnis. Voluptatum non molestias nobis.', 'Tempora dolores nihil nisi suscipit et at. Possimus quis quia excepturi aut. Impedit corrupti impedit et totam esse placeat excepturi qui. Atque nihil voluptatum fugit sit vero. Exercitationem dolore minima dolor tempora. Eligendi non optio quae veritatis asperiores sapiente. Ut qui voluptatibus nesciunt. Repudiandae ut id deleniti provident. Nisi nihil et fugit. Veniam tempore quam vel quo aut consequatur.', 5.00, NULL, 'SMD272', 'instock', 0, 149, '18.jpg', '18.jpg', 3, 1, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(11, 'Ut Quis', 'ut-quis', 'Quo consequatur deserunt suscipit molestiae sit officia. Minima ipsum harum nihil beatae temporibus rerum voluptatem eos. Unde quas id aspernatur id. Numquam commodi eveniet excepturi earum et.', 'Voluptas quia maiores recusandae exercitationem quas. Reiciendis inventore voluptatibus aut dolore nesciunt accusantium reprehenderit. Ipsam a rerum esse placeat quia. Incidunt omnis quaerat consequuntur possimus laudantium maiores. Ullam et eveniet quia voluptatibus rerum voluptas. Et placeat officia a. Dolorem nemo quasi doloremque voluptatem. Ab pariatur voluptatem et et excepturi deleniti.', 21.00, NULL, 'SMD347', 'instock', 0, 164, '6.jpg', '6.jpg', 3, 1, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(12, 'Molestias At', 'molestias-at', 'Non sed quidem et recusandae omnis. Sit ex omnis aliquam corrupti molestiae voluptate.', 'Voluptatem et veniam dicta in magnam ipsam. Tempore non ullam consectetur magnam optio sed debitis cupiditate. Iste porro voluptatem sequi distinctio mollitia accusantium temporibus sint. Eum ducimus omnis aperiam est cum. Ullam eum autem at cum quam hic nemo. Laboriosam dolorem sit atque esse suscipit voluptas consequatur enim. Labore praesentium perferendis soluta itaque sunt. Nulla sed quo tempore amet. Dicta numquam corporis assumenda aliquam. Occaecati eum minus suscipit numquam.', 6.00, NULL, 'SMD314', 'instock', 0, 200, '1.jpg', '1.jpg', 1, 4, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(13, 'Et Voluptates', 'et-voluptates', 'Et eveniet autem quasi odio eum eveniet. Et sequi voluptate et quis consequatur facere ipsam. Doloribus non dolore minus qui vero. Id necessitatibus nesciunt qui praesentium magni et.', 'Quam fuga minima repellendus saepe ducimus. At dolorem et aut unde sunt nesciunt sunt. Illo incidunt in consequatur. Ut a nobis tempora perferendis ab cum. Architecto perspiciatis et consequatur eaque ut veritatis voluptas. Veritatis accusantium fuga perspiciatis excepturi facere voluptatum. Nam laborum enim optio cupiditate.', 18.00, NULL, 'SMD420', 'instock', 0, 156, '22.jpg', '22.jpg', 3, 5, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(14, 'Aut Et', 'aut-et', 'Dicta quisquam culpa in incidunt cumque. Veritatis deleniti voluptates laborum reiciendis. Dolorum hic inventore iste voluptatem. Voluptatibus dolores dolorem ut inventore sequi omnis nihil.', 'Id reiciendis voluptates a in dolores nobis ut. Vel eos facilis aliquid. Amet doloremque vitae error. Inventore labore recusandae et laborum tempore iusto ut. Dolorem omnis perspiciatis eligendi ad enim voluptas sunt. Voluptatem commodi doloribus eos nobis. Accusamus et repudiandae qui enim nihil voluptatem dignissimos. Deserunt excepturi velit qui minima. Officiis odit et sunt voluptates assumenda et minus.', 10.00, NULL, 'SMD258', 'instock', 0, 198, '24.jpg', '24.jpg', 6, 3, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(15, 'Dolore Sed', 'dolore-sed', 'Quod amet maxime occaecati saepe. Et recusandae esse iusto officiis accusamus ut. Sit dolores nemo repellat qui labore corrupti.', 'Voluptatem recusandae eligendi harum minus. Adipisci porro quasi fuga aperiam qui rerum libero. Tempore porro possimus pariatur ullam explicabo et est. Alias rem nam et nesciunt quod accusantium. Repudiandae dolor alias deleniti odio deserunt dolorem laudantium. Molestiae amet repudiandae quidem. In sunt rerum aliquid omnis quae ut. Quasi est voluptatum maiores aut.', 7.00, NULL, 'SMD147', 'instock', 0, 182, '1.jpg', '1.jpg', 2, 6, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(16, 'Ipsa Voluptatum', 'ipsa-voluptatum', 'Autem possimus natus voluptatem quasi minus perferendis temporibus. Tempore quo voluptas deleniti vero laudantium dolore hic. Unde nobis dolorem expedita numquam alias quas.', 'Ipsum exercitationem non alias eius vero. Illo voluptas vel sit architecto dicta numquam. Et quas animi eaque et assumenda. Excepturi modi eum a provident blanditiis. In cum consequatur vel incidunt enim dignissimos eum. Molestiae suscipit voluptatem qui dicta molestias. Est officia tenetur dolorem quia. Occaecati eum non earum eius. In autem consequatur totam occaecati ea. Dolor fugiat corporis ipsum aut nisi distinctio. Ut et voluptatem alias quia dolorem blanditiis fugiat.', 20.00, NULL, 'SMD233', 'instock', 0, 187, '23.jpg', '23.jpg', 6, 5, '2024-01-03 23:24:41', '2024-01-03 23:24:41'),
(17, 'Atque Non', 'atque-non', 'Dignissimos odio aut neque eveniet. Repellat atque ut velit pariatur in blanditiis omnis. Sint adipisci pariatur nostrum expedita praesentium. Tenetur sequi est ut aspernatur.', 'Eos suscipit ullam dolore culpa. Nulla quia odit commodi qui rem voluptatem. Laudantium architecto repellendus dolore eos exercitationem nobis velit. Consequatur eveniet quis tempora qui voluptatem ut iste. Mollitia voluptatem odit rerum magni nisi. Qui quia beatae consequatur voluptatum aut molestias harum. Praesentium minus ut cupiditate. Dolorum libero illum error officiis excepturi aut. Iste voluptatum veniam voluptas quia est et. Quia corporis quisquam qui qui quo.', 12.00, NULL, 'SMD391', 'instock', 0, 103, '2.jpg', '2.jpg', 4, 6, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(18, 'Sed Voluptas', 'sed-voluptas', 'Animi deserunt neque voluptas ipsam laudantium sapiente. Nihil quisquam atque quasi non voluptas. Hic officia ut repellat tenetur architecto suscipit animi.', 'Iure consectetur totam repudiandae inventore qui officia. Nisi beatae amet dolores eos vitae voluptatum. Dolor quam veritatis dicta quidem aut. Consequuntur cumque est ullam autem in enim voluptatibus placeat. Harum fugit odio porro quia modi. Corporis quasi sed autem. Adipisci eos et et. Natus ut optio sit itaque aut porro eos cumque. Doloremque odio et ut quibusdam adipisci et. Accusamus placeat nulla rem dolore nihil. Vel ipsa repellat minus quaerat voluptatum.', 22.00, NULL, 'SMD486', 'instock', 0, 164, '10.jpg', '10.jpg', 5, 1, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(19, 'Ad Reiciendis', 'ad-reiciendis', 'Sunt consequatur sunt sit. Praesentium est sequi necessitatibus similique. Ut explicabo itaque aut enim dolor atque consequatur unde.', 'Adipisci voluptas ut illum id minima odio. Debitis sunt aut atque delectus illo quaerat. Quia nihil rerum amet est occaecati placeat voluptatem quaerat. Cumque maiores molestias quisquam fugit. Molestiae in tempora occaecati amet dolorem omnis. Similique voluptatem ipsam repellat soluta aut deleniti aliquid doloribus. Aut aut voluptatem accusantium corrupti expedita odio. Eum ducimus minus aliquid repudiandae beatae reiciendis.', 4.00, 2.00, 'SMD283', 'instock', 0, 181, '16.jpg', '16.jpg', 6, 1, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(20, 'Error Voluptatum', 'error-voluptatum', 'Assumenda sed qui sed dolorem omnis error. A itaque ullam asperiores voluptatem dolor expedita voluptate beatae. Et sequi vitae et consequatur ipsum.', 'Nobis architecto quod quibusdam eum vel vitae. Autem recusandae eum impedit accusantium facere. A magnam sunt cupiditate cum possimus est. In veniam natus qui et reprehenderit aut porro. Voluptatem autem quam quia velit consectetur qui consequatur. Autem assumenda mollitia et iste. Sit voluptatem eum eos ducimus sapiente et in qui. Eligendi cumque odio minima natus error. Labore quaerat nobis quis tempore ab et cumque.', 16.00, NULL, 'SMD470', 'instock', 0, 171, '19.jpg', '19.jpg', 1, 5, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(21, 'Exercitationem Sunt', 'exercitationem-sunt', 'Et laudantium asperiores ipsa quae qui deleniti. Dolorem dolor quod exercitationem tenetur adipisci sunt voluptas.', 'Dolor sed et velit blanditiis ipsam ab. Consequuntur omnis in natus eum reprehenderit voluptatem. Perspiciatis vel harum dolores deserunt. Possimus quibusdam quod sed ut harum ut harum. Suscipit velit excepturi ut veritatis nostrum id. Hic voluptatibus eaque repellat ex recusandae eaque. Et odio quia nisi dicta. Consequatur quibusdam iure qui est voluptate. Omnis ea veniam qui nisi.', 4.00, NULL, 'SMD442', 'instock', 0, 133, '2.jpg', '2.jpg', 1, 6, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(22, 'Exercitationem Doloremque', 'exercitationem-doloremque', 'Et rerum quisquam quia sunt et. Iure ut cupiditate quis unde eum hic. Dolore explicabo sed quia et repellat voluptatem. Et aut veritatis unde et vel voluptatem.', 'Corporis placeat inventore ipsum provident accusamus nulla nobis. Alias consequatur enim dolorem distinctio et sed sint amet. Ea perferendis molestias minima ex illo ut molestiae. Ratione facilis eaque rerum earum expedita repudiandae. Aliquam error distinctio repellat est. Ab occaecati et consequuntur. Consectetur ipsam cupiditate earum ut. Et ea rerum quia et placeat consequatur. Impedit consectetur cum inventore sequi velit quibusdam. Vero voluptatibus dolores et et hic sit.', 11.00, NULL, 'SMD148', 'instock', 0, 124, '22.jpg', '22.jpg', 4, 1, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(23, 'Non Numquam', 'non-numquam', 'Consequuntur aut omnis rem laborum itaque ut rerum. Debitis sed repellat fugiat praesentium repellat. Id dignissimos dignissimos minima esse dolorem.', 'Sed ut et eveniet omnis quibusdam praesentium. Non officiis aut dolorem et earum quo. Facilis et non et voluptatem ipsam. Consequuntur natus odit ut voluptate. Vitae enim aut explicabo id ea. Est nostrum qui et voluptate aspernatur qui nulla. Alias qui officia nobis. Quaerat excepturi quidem mollitia id. Enim aut et veniam aut ullam. Ullam optio possimus rerum enim mollitia. Nulla molestiae eaque qui.', 17.00, NULL, 'SMD397', 'instock', 0, 169, '10.jpg', '10.jpg', 4, 4, '2024-01-03 23:24:42', '2024-01-03 23:24:42'),
(24, 'Quisquam Expedita', 'quisquam-expedita', 'Qui ipsa expedita neque dolor. Dolorem maxime sint maiores suscipit perferendis ea sunt autem. Nisi soluta velit quaerat est aut ab. Dolore reprehenderit qui sunt quisquam delectus esse.', 'In aut autem officiis ad. Veritatis error non consequatur quo labore non accusantium laboriosam. Dolores nostrum est rerum quis consequuntur culpa ratione. Suscipit ducimus aliquid et quos nemo ipsam quae. Facilis vel nulla libero expedita. Dignissimos illo consectetur et optio sed maiores. Et voluptatum aut nihil laborum optio dolorem. Distinctio excepturi animi hic ipsa vel facere.', 6.00, NULL, 'SMD165', 'instock', 0, 126, '24.jpg', '24.jpg', 4, 5, '2024-01-03 23:24:42', '2024-01-03 23:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `usertype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$qBBkzx0UWPbQDa6zKMExNedWLLyYMP8fx0NPWgdFlAWA1IzxXck4K', 'ADMIN', NULL, '2024-01-05 03:28:28', '2024-01-05 03:28:28'),
(2, 'user', 'user@gmail.com', NULL, '$2y$12$PuHqEQ1HoxiGlE8BLPk9jey/H1aT4.EGCP1uwj3Vzlvg5d23ne7q2', 'user', NULL, '2024-01-06 09:24:35', '2024-01-06 09:24:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

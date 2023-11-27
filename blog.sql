-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Nov 2023 pada 18.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(2, 'Personal', 'personal', '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(3, 'Web Design', 'web-design', '2023-11-27 10:00:58', '2023-11-27 10:00:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_11_07_141443_create_posts_table', 1),
(13, '2023_11_08_015022_create_books_table', 1),
(14, '2023_11_08_025443_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Veritatis facere quis et repellat quia consequatur.', 'enim-minima-et-aut-accusamus-et-enim-ipsum', 'Nisi ut fuga voluptatum architecto nam veritatis alias. Hic rerum nam incidunt qui voluptas voluptatem et et. Et a qui quos provident et. Placeat aut optio non iusto ut iste provident.', '<p>Earum perspiciatis odio eum explicabo eveniet dolores. Exercitationem sit qui consectetur. Rem et quia beatae quod illo rerum expedita. Nam et ipsum voluptatem provident excepturi ut laboriosam.</p><p>Fugit a sed voluptatum expedita. Suscipit itaque voluptas quis similique. Voluptatum sed explicabo et sit dolorem repudiandae. Praesentium ad voluptas eligendi mollitia suscipit tempora eos.</p><p>Velit voluptas ut ipsa molestias. Velit aut iure quasi excepturi. Veniam est minima culpa est provident. Autem eum libero incidunt temporibus recusandae sit.</p><p>Cum est in excepturi nihil. Quo praesentium autem occaecati inventore ex placeat. Omnis et rem error repellendus facere pariatur. Aut soluta earum qui a aperiam laboriosam. Possimus itaque ut magnam corrupti.</p><p>Non dolorem esse incidunt voluptatum ab quo fuga suscipit. Consequatur qui nesciunt perferendis unde error repellat quisquam. Quisquam quo a ad aut animi laborum. Accusantium quaerat amet qui ab quis mollitia nisi.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(2, 3, 2, 'Similique repudiandae dignissimos sint dicta qui sunt.', 'architecto-illum-dolor-corporis-delectus-eos-omnis-molestias-sit', 'A minima ut ipsum sit consequuntur molestiae sint. Voluptas aut quia sit qui. Laborum consequatur quia hic tempore iste modi dolores.', '<p>Nisi vitae in ea molestiae nobis. Repellendus optio accusamus ex mollitia laborum veniam consequatur. Facilis omnis voluptatem architecto suscipit.</p><p>Voluptatem id sint delectus voluptatem tempora eos. Molestiae excepturi harum laboriosam voluptates. Aut non reprehenderit a ut. Nam et et amet qui aut consequuntur vel totam.</p><p>Nemo sed impedit fugit est non nisi. Est accusantium corporis aut. Saepe consectetur officiis ducimus tempora aperiam autem cum. Voluptatem sed optio reprehenderit laudantium sit autem.</p><p>Quia dolor veniam facilis laboriosam tempore. Molestiae accusantium illum ut consequatur repellendus ad. Consequatur ut suscipit id nulla. Voluptas dolores labore molestiae.</p><p>Magni et vel qui porro autem. Nam quidem ea ut cumque cupiditate. Excepturi voluptate sunt voluptas exercitationem et corrupti rerum. Inventore tempora ut ea.</p><p>Praesentium enim praesentium ut magni ut possimus reprehenderit. Fugiat mollitia laboriosam iure quibusdam ducimus perspiciatis. Consequatur perspiciatis doloremque quaerat.</p><p>Aut tempora nobis soluta velit dignissimos dolores qui. Qui adipisci ut voluptatibus sit doloremque in. Voluptas autem est corporis. Eum amet facilis corrupti vel.</p><p>Non totam deleniti quisquam voluptatem magni placeat labore aut. Rem soluta quis aut esse tempore. Perferendis cumque consequatur quis sit necessitatibus facere ducimus debitis. Libero ab dignissimos maiores et aliquid ut nihil. Deserunt tenetur laboriosam harum sit molestiae eligendi perspiciatis.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(3, 2, 2, 'Consequatur necessitatibus repellendus.', 'non-qui-dolorum-non-autem-a-et', 'Accusamus ut rerum quia quidem qui enim. Quaerat animi omnis quibusdam reiciendis ut. Ullam ut tempora delectus nam qui. Ut natus ut et a quia cum at.', '<p>Explicabo corporis similique autem nostrum. Provident amet sed nulla aspernatur saepe. Qui in vitae sed. Enim voluptas dolore alias.</p><p>Enim velit expedita labore similique repudiandae ducimus veritatis. Qui recusandae magnam mollitia dolorem. Est ipsum reiciendis deserunt repudiandae odio nihil quae.</p><p>Sed earum tempora reprehenderit voluptas. Exercitationem quo nostrum est omnis porro praesentium tenetur. Sed possimus molestias facilis quisquam dolor. Quia ipsam reiciendis sed non.</p><p>Autem enim rem asperiores dicta et possimus. Eaque consequatur repellat amet fugit labore qui. Ipsam amet facilis nisi sint impedit sed sit.</p><p>Consequatur doloribus quia soluta exercitationem praesentium. Harum voluptate temporibus nulla placeat fuga earum.</p><p>Pariatur molestiae quae ullam in tempora amet et. Tenetur eveniet error minima ut qui officia. Explicabo perspiciatis qui rerum et.</p><p>A aut nisi excepturi quod aut ipsum et. Est autem temporibus consectetur est temporibus quisquam. Necessitatibus in odio ea at accusamus dolor nam.</p><p>In pariatur aliquam et aliquid. Assumenda dolor voluptate voluptas illum aspernatur quis aut. Et et perspiciatis eveniet recusandae sunt possimus. Incidunt ullam reiciendis vel.</p><p>Illum et debitis reprehenderit accusamus repellendus nesciunt. Earum officia beatae corrupti temporibus voluptates. Deserunt illo sed quos.</p><p>Vitae sit distinctio eaque. Minima pariatur ut asperiores. Possimus eveniet harum iusto hic iste reiciendis impedit. Et dolorem incidunt eos aliquid ea.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(4, 1, 1, 'At dolores.', 'aut-rem-aut-itaque-consequatur-veniam-ut', 'Doloremque dolorum eos incidunt. Qui eos sed omnis rerum vel explicabo et perspiciatis. Ea dolor qui voluptates vel iure id ducimus.', '<p>Modi nobis omnis expedita facilis expedita quia. Inventore quia sint quo sit et. Et et sunt doloribus.</p><p>Dolor ut ut rerum ipsam commodi omnis ea. Error aut vel et id qui et. Facere sit excepturi ad et harum architecto.</p><p>At ratione similique nihil. Et aut iste est adipisci et. Non repellendus quaerat iure doloribus.</p><p>Architecto autem doloribus ut fuga ut. Aperiam dolorem qui mollitia nemo. Fugit fugit suscipit animi quasi similique qui autem.</p><p>Voluptate sunt sit ut enim alias. Corrupti dolores rerum quia dicta. Rerum impedit dolorum magnam molestias nobis vitae quo. Rem unde enim assumenda quis.</p><p>Recusandae adipisci velit animi ut tempora tempore. Doloribus voluptatem vel voluptate esse. Recusandae suscipit quis corrupti dolores neque aut ut. Sit dolores non rerum in esse.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(5, 1, 3, 'Quaerat voluptatem odio.', 'eum-autem-sequi-odit-praesentium-quae', 'Sit alias ipsam nobis et aperiam nulla. Assumenda ducimus quae optio assumenda beatae esse delectus. Sint necessitatibus sit in accusantium.', '<p>Placeat fugiat quia modi et quos. Itaque ad perferendis maiores perferendis aut officia commodi.</p><p>Rerum ad ex animi eos est id. Porro aut eum ipsam sit dicta. Illum nemo suscipit sunt veritatis alias sint ipsum. Quo aperiam sequi voluptatem quos dolor.</p><p>Recusandae occaecati exercitationem similique ut. Optio occaecati et et aut. Qui officiis commodi ipsum ratione rem. Autem atque qui eligendi dolorem veniam perferendis incidunt sed.</p><p>Qui quo voluptatem placeat quis. Tenetur qui dolorem perferendis dolore accusamus repellendus. Veniam sed sed maxime aut suscipit similique quis. Vero autem reprehenderit ut sed.</p><p>Dolores autem et quis. Perferendis adipisci magnam perspiciatis atque sapiente voluptatem vel. Dolorem est aperiam cupiditate alias earum expedita quasi. Voluptatem inventore aut molestias quisquam rem quis accusantium.</p><p>Animi nihil aliquid enim dolor ipsum. Exercitationem repellat architecto quasi. Quisquam saepe non consequuntur laboriosam autem.</p><p>Autem dolor et ducimus ut autem. Eum aut unde fugit voluptate dolorum est explicabo. Ut saepe tempore non cupiditate voluptas. Alias qui recusandae ut distinctio incidunt facere inventore. In quia consectetur veritatis qui.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(6, 3, 1, 'Et exercitationem et et.', 'quia-inventore-qui-sed-voluptas-quaerat-aspernatur', 'Similique ut eum neque dolor voluptatem eos. Laboriosam nemo suscipit minus recusandae. Exercitationem ut placeat eum necessitatibus.', '<p>Sed quia officia a sit. Necessitatibus numquam voluptas tenetur. Unde aliquid quidem omnis ex deleniti ad facilis.</p><p>Animi ratione quia omnis cum in. Facere aut dolor laboriosam velit ducimus. A sed pariatur tempore ipsum id praesentium.</p><p>Necessitatibus nulla adipisci corrupti nostrum. Veritatis consequatur tenetur veniam unde illum. Id dolorem necessitatibus atque repellat. Nam illum nemo provident in inventore commodi sit.</p><p>Neque impedit eligendi minima. Magnam qui laboriosam et voluptas nulla delectus. Deserunt optio adipisci fugit sequi perspiciatis. Ea pariatur quidem possimus quod omnis dicta.</p><p>Ipsam vitae et voluptas. Exercitationem enim molestiae sit quaerat quis a. Ut sed eos et.</p><p>Sequi et deleniti eos aliquid exercitationem impedit unde. Consectetur consectetur quaerat commodi incidunt qui quos aspernatur ab. Neque omnis cum et. Iste assumenda et soluta ipsum repudiandae. Nesciunt sed repellendus et neque reiciendis qui autem.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(7, 3, 1, 'Voluptatem ducimus molestias sint.', 'quis-qui-voluptas-veniam-vitae', 'Ut illum doloremque dolorem dolorem et et. Omnis quas animi perferendis harum asperiores quia blanditiis.', '<p>Ut suscipit enim dicta. Et incidunt illum magni et sit doloremque ut. Fugiat enim quod totam voluptatem maiores qui incidunt.</p><p>Dolore iste dolor quo laboriosam rerum praesentium. Beatae nobis nam tempora labore. Dolor similique eligendi a quos.</p><p>Temporibus expedita voluptatem aut repudiandae. Alias sunt blanditiis voluptatem quia. Esse nobis doloribus natus omnis rem. Est cumque est voluptas placeat culpa.</p><p>Qui quo dolores reiciendis ipsam aut quibusdam necessitatibus. Mollitia voluptas sapiente nemo. Quia eius eum exercitationem est numquam autem eum aspernatur. Fugit laudantium ducimus eos.</p><p>Ducimus occaecati dolorem consequatur nihil quidem. Minus nobis sint et velit. Sequi consequatur placeat pariatur molestiae eveniet ut pariatur.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(8, 2, 1, 'Architecto est minus at inventore veniam.', 'expedita-suscipit-magni-molestias-ut', 'Fuga commodi debitis porro eaque exercitationem. Explicabo qui debitis ipsam sed iure rerum ipsa sed.', '<p>Ut quisquam rem quaerat eum quos ullam quod. Ut et quae maxime qui temporibus fugiat. Commodi nesciunt non perspiciatis fuga assumenda. Provident illum reprehenderit porro veritatis qui aliquam asperiores.</p><p>Sed voluptatem modi velit molestiae repellendus fuga. Voluptatum nisi vel consequatur et. Distinctio aut odio ut et. Qui quisquam sunt consequatur.</p><p>Quod nemo qui ratione accusamus eum sed delectus qui. Accusamus distinctio ab quas sequi nisi et.</p><p>Ut sit fugiat nesciunt aut aliquid et. Dolorem ea voluptatum velit. Eum deserunt non quo omnis.</p><p>Exercitationem labore delectus eaque. A doloremque magni atque in. Repellendus itaque eum expedita accusantium velit aut. Id sapiente atque voluptas voluptate.</p><p>Sed doloremque qui aut beatae id amet possimus. Non architecto nihil sed ut repudiandae officiis autem. Cupiditate dolor totam sed fuga.</p><p>Placeat excepturi et perspiciatis ut alias eligendi. Unde earum veniam nesciunt illum sunt nihil iure itaque. Omnis nostrum molestiae eaque ducimus cum officiis. Quo numquam est omnis mollitia.</p><p>Facilis asperiores ipsam suscipit. Accusamus sunt earum aut magnam amet alias. Et consequatur consequuntur inventore nihil ut laboriosam ipsum quia. Sint eum quia quibusdam consequatur quam.</p><p>Tenetur autem aut dolorum cum corporis est. Dolor tempore voluptatum et dolorem vel labore delectus sint.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(9, 3, 3, 'Sed molestias et.', 'vel-consequuntur-sit-ex-consequatur-accusamus-dolores-eveniet-voluptatem', 'Itaque facilis occaecati numquam similique. Quos ut aut fugiat. Consequuntur eaque id dolor architecto deserunt minus.', '<p>Debitis placeat non vero. Quo sed ipsum voluptate voluptatem neque. Voluptatibus fugiat dicta iusto enim consequatur et. Illo dolorum reprehenderit qui nulla expedita. Esse voluptatem aut veritatis dolor aut eos molestiae sint.</p><p>Aliquam beatae dolor quo iste est suscipit. Fugit sit et aut atque. Cupiditate quos possimus et fugiat ducimus in consequatur. Rerum ducimus voluptas necessitatibus dolores sed non laborum. Quo et architecto voluptatum minima iste quam.</p><p>Ipsam molestiae earum veniam eos quod architecto porro. Autem voluptas deleniti rerum adipisci tempora id nemo. Nulla sed quod iure totam nisi. Autem sed eos sapiente et perferendis.</p><p>Similique optio beatae temporibus exercitationem accusamus eos aliquam dolorum. Aspernatur officiis ut dolor libero exercitationem. Doloribus sequi et est voluptas ipsum ut. Voluptatem qui magnam hic est.</p><p>Ut omnis et eum voluptates sint repellat. Quia reiciendis ducimus officia veniam rerum sit. Aliquam inventore voluptas doloremque aut dolor eveniet illum.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(10, 2, 1, 'In neque.', 'mollitia-ut-omnis-nulla-omnis-non-vel', 'Voluptate aliquam iste voluptatem in. Commodi esse neque laboriosam quas dolor in. Aspernatur qui harum ad commodi voluptas. Necessitatibus ex sequi voluptatibus omnis.', '<p>Et blanditiis labore asperiores aut in atque laborum corporis. Cum est perferendis aliquam culpa. Ad quia ea error nisi est modi.</p><p>Adipisci dolorum enim tempora mollitia fugiat. Ad facere est aut qui est adipisci. Est est blanditiis qui similique sit iusto aut. Eveniet est et optio voluptatem architecto mollitia.</p><p>Rerum enim iure distinctio et aut. In fugiat alias voluptas unde consequuntur fugiat. Quaerat quasi suscipit voluptatibus repellendus et. Minus unde saepe nihil asperiores.</p><p>Rerum fuga in facere qui dolorem. Et maxime expedita perspiciatis tenetur ab et. Ut corrupti quam voluptas iste asperiores. Quidem id natus a commodi.</p><p>Sint esse eveniet quas voluptas. Accusamus ipsam voluptatem eligendi qui sint. Unde voluptates minima in dolorem ut.</p><p>Laudantium sit asperiores cupiditate vel necessitatibus eaque. Provident perferendis dolor qui quo. Voluptatem mollitia omnis sequi. Eaque est quisquam vero dolor.</p><p>Suscipit suscipit fugiat et temporibus enim. Nisi ducimus aspernatur architecto officia cumque velit. Sint cupiditate ipsam quasi hic est cumque aliquam. Delectus blanditiis non rerum ut amet nam.</p><p>Repellendus ut facere tenetur dignissimos est est exercitationem. Illo occaecati nam qui aut ut. Sint esse qui aliquam mollitia. Beatae est officiis qui molestiae aut consequatur.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(11, 2, 1, 'Laudantium rem.', 'enim-culpa-voluptas-praesentium-odit-porro', 'Earum sit tenetur culpa autem voluptas. Maxime perferendis deleniti praesentium reprehenderit. Sunt excepturi neque aut id eius necessitatibus voluptatem.', '<p>Ullam omnis qui illo optio. Earum facilis labore sequi sit molestiae. Cumque deserunt consequatur voluptatem voluptatem.</p><p>Distinctio dolor ratione ut nihil dolore. Doloribus eos laboriosam necessitatibus architecto ut. Quasi tempore sint quia qui. Commodi deserunt molestias ut et.</p><p>Sit qui odio doloribus quia necessitatibus et quidem. Voluptatum quasi porro commodi assumenda vel suscipit commodi. Vero non itaque quo nemo.</p><p>Ducimus illo facere voluptas suscipit quod quia enim. Qui voluptatum doloremque culpa ea vitae. Eos mollitia dolore accusamus qui beatae. Repellat molestias quo id totam.</p><p>Velit non magnam placeat perspiciatis quas nam. Est culpa aliquid dolore quo dolorum et. Doloremque et eaque et doloribus. Quia illo nesciunt distinctio repellendus.</p><p>Est praesentium reprehenderit consequatur ut. Repudiandae veniam vel quasi labore nostrum autem. Reprehenderit aut veritatis rerum eveniet aliquid placeat.</p><p>Esse dicta aut dolore amet amet minus illum. Dolor qui rerum quia non aut consectetur. Deleniti quasi distinctio dolores qui aut.</p><p>A modi quaerat dolor officiis. Et explicabo voluptatibus ut modi tempore necessitatibus. Quae quia sint id quasi quo aperiam.</p><p>Non voluptatibus et modi adipisci et ipsum. Odio pariatur est laudantium. Voluptatem deserunt velit ut unde.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(12, 2, 2, 'Labore sequi qui ut.', 'non-harum-id-dolore-asperiores', 'Rerum totam sint quis. Recusandae consectetur explicabo nesciunt architecto rerum mollitia. Quos alias repellendus quis repellat vero qui voluptatem. Fugiat dicta sit vel ut atque.', '<p>Voluptatem iure nobis exercitationem aut facilis nihil qui. Facilis numquam dolores aliquam reiciendis nisi. Qui eos assumenda perferendis assumenda. Id et voluptatem et dolorem et sunt. Et ipsam laboriosam vel aliquid non ratione.</p><p>Perferendis eaque delectus est nobis enim. Aspernatur excepturi tempore suscipit. Omnis ea aut error asperiores consequatur illum tenetur. Quo voluptatem tenetur nesciunt est impedit est aut fugiat.</p><p>Quisquam fuga ratione aut eveniet nisi est ab. Suscipit sed nesciunt id deserunt illo eaque. Aut est at praesentium commodi quae adipisci dolorum. Et eligendi a reiciendis natus.</p><p>Magni at quisquam ullam. Minus incidunt sapiente molestias molestias doloremque. Alias est numquam nobis qui accusamus. Magnam eaque dolores facilis animi saepe deleniti.</p><p>Cupiditate quae facilis cupiditate dignissimos consectetur eveniet dolorem. Harum consequatur architecto est rem id velit officiis. Aut nesciunt et magni a quis.</p><p>Amet quos consequuntur magni ut quidem error voluptas. Distinctio culpa voluptatum voluptatem distinctio ex recusandae.</p><p>Exercitationem voluptatibus atque dignissimos autem quia quia facere id. Dicta minima eos et aperiam optio. Rerum delectus pariatur vitae enim mollitia quidem doloribus. Id aliquid et totam.</p><p>Vel odio aut quia occaecati praesentium ipsa. Et voluptatem aut quisquam beatae blanditiis ducimus. Quis eos aspernatur quidem sit aspernatur.</p><p>Est repellat corrupti culpa itaque saepe. Quia eligendi maiores cupiditate laborum. Pariatur repellat quia est.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(13, 2, 1, 'Cum dolorum ullam perferendis.', 'ab-impedit-quaerat-ad-dolor-ipsam', 'Ut nam est expedita dolor. Consectetur qui voluptas rem molestiae qui maiores et. Labore sed suscipit ut nulla ea. Voluptas ratione eum expedita et similique nesciunt. Accusamus delectus consequatur est.', '<p>Ut natus voluptatem repellat sit mollitia. Vel ex et et et incidunt omnis incidunt. Dolorum soluta et et et. Fugiat et dolores minima nobis soluta ut.</p><p>Alias magni velit quis et ea. Aut ut asperiores qui quia et non. Ipsa quis earum sed aperiam placeat repudiandae nobis illum.</p><p>Et labore dolor animi iusto quo odit voluptate. Ex provident quis molestias laborum laborum doloribus. Corporis tempore voluptas doloribus quo.</p><p>Ut voluptatem qui eos quia. Illo quasi consequatur pariatur perspiciatis placeat facilis. Sit aliquid illo fuga nobis. Ad nisi ducimus et est nulla libero. Minus aut officia sed doloremque.</p><p>Eaque nesciunt dolorem assumenda doloribus excepturi quia ipsam. Vel quia enim sunt ea in. Omnis consequatur ipsam id expedita voluptatibus. Tenetur aut maiores magni voluptate. Et enim optio beatae quis eaque id quibusdam pariatur.</p><p>Odit porro sunt mollitia quia praesentium aut. Omnis ipsum fuga asperiores consequuntur aliquid dolorem aut error. Id totam sint voluptatum vel. Tenetur qui iusto sit a.</p><p>Odit cumque ut exercitationem esse neque repellat eaque. Doloribus quaerat impedit cum ut. Similique et voluptatem maiores pariatur. Ea quod consectetur ut ab quo.</p><p>Impedit explicabo officiis aut alias corporis culpa. Omnis expedita accusantium id vitae sed. Provident enim quia in doloremque explicabo.</p><p>Quae earum pariatur voluptatum voluptas quas sapiente aliquid. Et ut sint vel ut sapiente. In aut non minus voluptas vel.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(14, 2, 1, 'Beatae ab vero.', 'deserunt-molestiae-quo-voluptatem-aliquam-molestias-est-eveniet', 'Et dolore nisi consequatur dolores aut quia. Recusandae et voluptatem rerum reiciendis ea fuga aut. Doloremque autem quia sit accusamus labore perspiciatis consequuntur. Animi iste tempora occaecati voluptatem voluptatem.', '<p>Est dolor id incidunt veniam atque omnis. Dolorem quis voluptas blanditiis totam ad. Architecto dolor veritatis ad quia.</p><p>Et qui ut aliquid in nihil vitae dolore. Voluptates unde natus animi minus iste. Praesentium quia recusandae voluptatibus eos consequatur qui laborum non. Mollitia enim quas nulla laboriosam quis officia.</p><p>Nesciunt reiciendis laborum repellendus voluptatem. Sed nostrum numquam nihil modi. Nihil beatae ratione harum a quis dignissimos aut.</p><p>Pariatur velit nesciunt animi porro iste. Odit provident accusamus voluptatibus. Deleniti dolorem amet non. Cum saepe ut optio quo inventore.</p><p>Eos necessitatibus animi magni distinctio dolorum illum suscipit. Qui voluptatem id magnam maxime eum numquam consequatur. Molestias delectus esse dolorem aut.</p><p>Cumque voluptas omnis hic ex accusamus maxime. Tempore unde consequatur aut nesciunt et repellat. Delectus consequuntur ad voluptates magni.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(15, 2, 3, 'Cumque et.', 'id-cumque-rem-et-modi-soluta-itaque-ipsum', 'Eaque iure illo nobis amet. Doloremque quis molestiae vero eveniet voluptas numquam.', '<p>Iste numquam asperiores sed et sed perspiciatis. Officiis est et reiciendis laboriosam. Architecto aspernatur sunt autem et est possimus sit laborum. Ut officiis odit rerum doloremque qui facilis.</p><p>Nostrum quae dolorem quibusdam voluptates ut sint. Quia ut dolor vitae voluptas neque.</p><p>Cumque veniam in blanditiis tempora qui. Quis et voluptas similique ratione est id.</p><p>Tenetur veritatis velit libero omnis excepturi molestiae doloribus. Natus nihil omnis mollitia doloribus nihil ipsum. Omnis et ut nihil alias tempore.</p><p>Nisi harum non sapiente vel recusandae. Voluptas molestiae sint et dolorem aliquid fuga veritatis laudantium. Quas qui qui exercitationem.</p><p>Eos doloribus voluptas odit architecto nihil rerum quidem deleniti. Autem harum numquam quidem quae velit voluptatem voluptas distinctio. Commodi aut sunt ut vel exercitationem cum.</p><p>Minima debitis enim velit minus dolorem est in. Exercitationem nulla quae fuga maxime. Quos laudantium enim et enim.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(16, 3, 2, 'Enim et et quam quia id.', 'repellendus-neque-rerum-mollitia-sed-doloremque-enim', 'Ut enim distinctio assumenda aut enim. Asperiores laboriosam placeat totam unde. Nemo rerum reprehenderit fugit ut tenetur sed.', '<p>Ut quia ut ut. Id quibusdam beatae veritatis dolor nihil ea aut. Quam veniam libero adipisci accusamus.</p><p>Aliquam enim perspiciatis amet dignissimos ut. Sunt dicta rem illo perspiciatis nemo doloremque necessitatibus qui. Non amet qui amet earum non. Et commodi sunt rerum ipsam maiores.</p><p>Qui aliquam sint aut et ad. Repellat aut nesciunt similique dolorum iusto officia possimus. Debitis qui sapiente aliquam vel nihil magnam earum. Ut porro quod molestias accusamus.</p><p>Voluptates exercitationem placeat sequi tenetur minima qui minima. Et iusto blanditiis nihil impedit. Nihil dolore autem magni vitae et ipsum. Libero aut ab illum vero.</p><p>Quidem recusandae in aut ratione vel omnis. Vero excepturi totam aliquam dolorem. Et nesciunt non ducimus atque perferendis ducimus sunt.</p><p>Iste non architecto minima quaerat. Sed aut quia quia voluptatem sed et. Doloribus facere qui nulla dolorem eveniet.</p><p>Consequatur rerum esse error sapiente. Et aut delectus ut voluptatem dolorum quae sed. Expedita ea similique ut quia quod ut incidunt. Neque deleniti autem eum facere unde. Quod illo voluptas et ducimus quaerat rerum.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(17, 1, 2, 'Pariatur similique consequatur.', 'eum-voluptas-et-rerum-officiis-reiciendis', 'Fugit adipisci quibusdam consequuntur vel. Ut animi at dicta et quo minima. Earum repudiandae quibusdam alias dolores rerum. Enim sequi neque officiis iure sunt.', '<p>Libero consequatur ipsum impedit veritatis qui. Est laboriosam neque ratione veritatis et vel. Modi molestiae dolor et quod iste alias. Fugiat repellat quia eius aut voluptatem cumque officia. Et veniam commodi inventore alias dolores.</p><p>Sunt autem enim vel temporibus saepe cum molestias quam. Rem ad sed ipsa nihil commodi. Occaecati deserunt rerum officia. Facere eaque ullam placeat omnis distinctio.</p><p>Qui officia ut est quod ut dolorem doloremque qui. Cupiditate aperiam voluptatem sit quibusdam fuga. Voluptatem molestias sed ab eos quasi placeat sed. Deleniti ex vel magni voluptas earum.</p><p>Et omnis quaerat et officiis. Numquam ad earum excepturi voluptatem voluptatum sed. Ullam dicta quae esse quidem accusamus.</p><p>Ea laboriosam magni aliquid. Quis autem fugiat mollitia. Omnis rerum consequatur voluptas ipsam a rerum libero unde.</p><p>Qui modi sunt iusto dolores ullam. Porro ex excepturi maxime ullam. Pariatur est odit dignissimos vel.</p><p>Quis nisi harum ut. Sunt mollitia et qui est. Autem numquam nobis quia facere qui maxime.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(18, 3, 3, 'Repellat qui esse aut beatae.', 'dolorum-velit-ducimus-cumque-consequatur', 'Deserunt vitae dignissimos iste iusto officiis quaerat. Sunt similique modi et perferendis.', '<p>Nihil eos sapiente dolores in placeat ab. Omnis ut fuga ullam sit provident hic error. Hic qui nesciunt inventore qui porro officia.</p><p>Laborum corrupti unde sint ut aliquam ea. Inventore iure aut architecto debitis. Aut expedita fugit ut ex doloremque ea in voluptas.</p><p>A hic quo velit accusamus repellat. Aliquid beatae quod suscipit officiis est sed optio eaque. Dolores consequuntur voluptas alias fuga. Quidem voluptatem corrupti beatae et esse aut occaecati. Est delectus ea incidunt aspernatur dolore.</p><p>Accusantium ut cupiditate eos maxime omnis qui aut. Fuga non alias ex ad ratione magni. Explicabo quibusdam nisi laboriosam tempora doloremque quo expedita. Quisquam voluptatem ut maxime ex qui.</p><p>Rerum blanditiis deleniti modi eum est et earum. Ut dignissimos voluptate sed hic voluptates. Voluptatem ipsum voluptatum fugit odit praesentium.</p><p>Provident asperiores similique tempore eius. Quo nam doloremque corrupti distinctio fuga dolore sed. Omnis deleniti aut non vel. Praesentium sunt minima impedit quas.</p><p>Aut id nihil et voluptates aut ut. Ut a omnis expedita. A vel aut qui ab.</p><p>Minima tenetur voluptatem reiciendis quia molestiae aut autem. Dolores enim tenetur totam suscipit. Explicabo exercitationem dolores est minima blanditiis molestiae beatae. Est rem excepturi culpa officiis modi.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(19, 1, 1, 'Soluta recusandae.', 'est-modi-sed-non-voluptates-sint-et-molestiae', 'Placeat beatae ex qui nihil autem necessitatibus. Vel facere esse ab suscipit. Dolor nemo molestiae eveniet et provident totam asperiores. Qui sunt est porro excepturi qui sunt eos.', '<p>Occaecati voluptates dolorem quam. Ex non aut aliquid aliquam optio asperiores ut. Adipisci corporis atque voluptas necessitatibus quia ut ut. Eaque beatae quidem a natus officiis neque fuga.</p><p>Fugit nemo delectus saepe quia. Harum in perferendis sit temporibus ut. Aspernatur in et illum in.</p><p>Vel deleniti voluptatem doloremque vero vel. Sint voluptatem sed aut dignissimos explicabo quod exercitationem eum.</p><p>Excepturi delectus corporis sit laboriosam. Voluptatem quam harum est porro dolor enim officiis. Aut blanditiis eos dolores omnis consequatur tempora. Voluptatem quos expedita ea eius nesciunt mollitia minima. Expedita et possimus blanditiis praesentium quod autem aliquid.</p><p>Eos minus voluptas ad numquam ipsam et eaque error. Eaque atque dolore rem. Doloremque voluptates dolor velit molestias.</p><p>Rem aut non officia ullam eos. Reprehenderit aut laboriosam possimus et dignissimos a iste. Quos asperiores aut ut ea blanditiis dolores. Laboriosam velit porro excepturi dolorem.</p><p>Quos ea unde omnis qui eaque architecto. Ut recusandae perferendis unde. Autem facere ipsum quis vel molestias eveniet provident aut. Omnis nesciunt est itaque et dolorem est deleniti ipsam.</p><p>Vel nulla necessitatibus dolores nihil. Ratione et quis nesciunt non. Ut non amet molestiae qui rerum.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(20, 2, 3, 'Cumque sit excepturi molestiae.', 'explicabo-ut-ut-placeat-aut', 'Architecto aliquid iusto deserunt eum ducimus et at. Aut cumque labore aut autem. Debitis qui aspernatur est dolorem est illo modi eum. Animi repudiandae sunt aut consequatur et qui est.', '<p>Possimus vel mollitia quidem et sit minus. Eligendi quis ea quod magnam voluptatem dolores laudantium. Et ad quia inventore rerum at magni blanditiis.</p><p>Voluptatem pariatur aut ipsa tempore. Molestias sequi dolorem aliquam. Sed nemo aspernatur quas qui eveniet. Voluptatem eum ea voluptate voluptatem autem qui fugiat.</p><p>Voluptatum ut molestias dolor eum. Nulla aut totam autem delectus. Aut iusto occaecati et rerum et natus rerum eius.</p><p>Distinctio qui atque dolor debitis. Reiciendis vero suscipit repellat unde quidem vitae. A maxime aliquid amet reprehenderit nihil quasi non et.</p><p>Dolores voluptates voluptate facere temporibus aperiam voluptas sed. Facere laboriosam inventore illo deleniti id architecto. Tenetur minus ut facilis ullam officia.</p><p>Quisquam quis velit omnis suscipit ipsa laboriosam nisi illum. Blanditiis illo et eum placeat sunt dolorem nulla. Nobis sit quae optio qui.</p><p>Quo assumenda aspernatur et et tempore molestiae officia. Ipsam distinctio accusantium quidem et. Architecto sint molestias nihil nesciunt possimus harum quam atque. Sunt error excepturi similique adipisci non veritatis sunt.</p>', NULL, '2023-11-27 10:00:58', '2023-11-27 10:00:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cornelia Halimah', 'safina.kusmawati', 'narpati.ina@example.net', '2023-11-27 10:00:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oBXfcQKF7U', '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(2, 'Zamira Permata', 'lamar84', 'devi36@example.com', '2023-11-27 10:00:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CqlTMAm1AJ', '2023-11-27 10:00:58', '2023-11-27 10:00:58'),
(3, 'Puspa Usamah', 'kanda65', 'fitriani.simanjuntak@example.com', '2023-11-27 10:00:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xmsjDEYlBO', '2023-11-27 10:00:58', '2023-11-27 10:00:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

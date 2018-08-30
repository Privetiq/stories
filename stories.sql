-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 30 2018 г., 15:48
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stories`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_aiowps_events`
--

CREATE TABLE `wpus_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_aiowps_failed_logins`
--

CREATE TABLE `wpus_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_aiowps_global_meta`
--

CREATE TABLE `wpus_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_aiowps_login_activity`
--

CREATE TABLE `wpus_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_aiowps_login_activity`
--

INSERT INTO `wpus_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'myschooladmin', '2018-08-29 09:27:53', '0000-00-00 00:00:00', '127.0.0.1', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_aiowps_login_lockdown`
--

CREATE TABLE `wpus_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_aiowps_permanent_block`
--

CREATE TABLE `wpus_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_commentmeta`
--

CREATE TABLE `wpus_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_comments`
--

CREATE TABLE `wpus_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_links`
--

CREATE TABLE `wpus_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_options`
--

CREATE TABLE `wpus_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_options`
--

INSERT INTO `wpus_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://stories.loc', 'yes'),
(2, 'home', 'http://stories.loc', 'yes'),
(3, 'blogname', 'Школьные истории', 'yes'),
(4, 'blogdescription', 'Тільки нікому не кажи', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nbilanenko@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', '', 'yes'),
(15, 'mailserver_login', '', 'yes'),
(16, 'mailserver_pass', '', 'yes'),
(17, 'mailserver_port', '0', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:37:\"super-socializer/super_socializer.php\";i:3;s:37:\"user-role-editor/user-role-editor.php\";i:4;s:45:\"user-submitted-posts/user-submitted-posts.php\";i:5;s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";i:7;s:21:\"wp-ulike/wp-ulike.php\";}', 'yes'),
(34, 'category_base', '/tema', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'privetiq', 'yes'),
(41, 'stylesheet', 'privetiq', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '/hashtag', 'yes'),
(55, 'show_avatars', '', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:8:\"Теми\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wpus_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'uk', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"post_theme\";a:1:{i:0;s:12:\"categories-3\";}s:4:\"tags\";a:1:{i:0;s:11:\"tag_cloud-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:8:\"Теги\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:8:{i:1535633629;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535636124;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535657724;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535700959;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535702029;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535702883;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535706070;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535450171;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(126, '_site_transient_timeout_browser_61082fc9c192de563bde4f89002ce53b', '1536046560', 'no'),
(127, '_site_transient_browser_61082fc9c192de563bde4f89002ce53b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"61.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(148, 'wpp_settings_config', 'a:2:{s:5:\"stats\";a:7:{s:5:\"range\";s:9:\"last7days\";s:9:\"time_unit\";s:4:\"hour\";s:13:\"time_quantity\";i:24;s:8:\"order_by\";s:5:\"views\";s:5:\"limit\";s:2:\"10\";s:9:\"post_type\";s:4:\"post\";s:9:\"freshness\";b:0;}s:5:\"tools\";a:7:{s:4:\"ajax\";b:0;s:3:\"css\";s:1:\"0\";s:4:\"link\";a:1:{s:6:\"target\";s:6:\"_blank\";}s:9:\"thumbnail\";a:4:{s:6:\"source\";s:8:\"featured\";s:5:\"field\";s:0:\"\";s:6:\"resize\";b:0;s:7:\"default\";s:0:\"\";}s:3:\"log\";a:3:{s:5:\"level\";i:1;s:5:\"limit\";i:0;s:13:\"expires_after\";i:180;}s:5:\"cache\";a:2:{s:6:\"active\";b:1;s:8:\"interval\";a:2:{s:4:\"time\";s:6:\"minute\";s:5:\"value\";i:1;}}s:8:\"sampling\";a:2:{s:6:\"active\";b:0;s:4:\"rate\";i:100;}}}', 'yes'),
(149, 'recently_activated', 'a:1:{s:43:\"likebtn-like-button/likebtn_like_button.php\";i:1535442625;}', 'yes'),
(150, 'widget_wpp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'wpp_ver', '4.1.2', 'yes'),
(152, '_transient_timeout_plugin_slugs', '1535621133', 'no'),
(153, '_transient_plugin_slugs', 'a:8:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:37:\"super-socializer/super_socializer.php\";i:4;s:37:\"user-role-editor/user-role-editor.php\";i:5;s:45:\"user-submitted-posts/user-submitted-posts.php\";i:6;s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";i:7;s:21:\"wp-ulike/wp-ulike.php\";}', 'no'),
(154, 'classic-editor-replace', 'replace', 'yes'),
(1059, 'widget_likebtnlikebuttonmostlikedwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1060, 'widget_likebtnlikebuttonmostlikedbyuserwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1063, 'wp_ulike_dbVersion', '1.5', 'yes'),
(1064, 'wp_ulike_general', 'a:13:{s:11:\"button_type\";s:5:\"image\";s:11:\"button_text\";s:4:\"Like\";s:13:\"button_text_u\";s:5:\"Liked\";s:10:\"button_url\";i:0;s:12:\"button_url_u\";i:0;s:15:\"permission_text\";s:0:\"\";s:10:\"login_type\";s:6:\"button\";s:10:\"login_text\";s:0:\"\";s:13:\"format_number\";i:0;s:13:\"notifications\";i:1;s:9:\"anonymise\";i:0;s:11:\"like_notice\";s:27:\"Дякую зай лайк!\";s:13:\"unlike_notice\";s:37:\"Ми видалили ваш лайк\";}', 'yes'),
(1065, 'wp_ulike_posts', 'a:10:{s:5:\"theme\";s:14:\"wpulike-robeen\";s:12:\"auto_display\";i:0;s:21:\"auto_display_position\";s:6:\"bottom\";s:20:\"google_rich_snippets\";i:1;s:21:\"only_registered_users\";i:0;s:14:\"logging_method\";s:5:\"by_ip\";s:15:\"users_liked_box\";i:0;s:27:\"users_liked_box_avatar_size\";d:32;s:15:\"number_of_users\";d:10;s:24:\"users_liked_box_template\";s:149:\"<div class=\"wp-ulike-likers-list\">%START_WHILE%<span class=\"wp-ulike-liker\"><a href=\"#\" title=\"%USER_NAME%\">%USER_AVATAR%</a></span>%END_WHILE%</div>\";}', 'yes'),
(1066, 'wp_ulike_comments', 'a:9:{s:5:\"theme\";s:14:\"wpulike-robeen\";s:12:\"auto_display\";i:0;s:21:\"auto_display_position\";s:6:\"bottom\";s:21:\"only_registered_users\";i:0;s:14:\"logging_method\";s:5:\"by_ip\";s:15:\"users_liked_box\";i:0;s:27:\"users_liked_box_avatar_size\";d:32;s:15:\"number_of_users\";d:10;s:24:\"users_liked_box_template\";s:149:\"<div class=\"wp-ulike-likers-list\">%START_WHILE%<span class=\"wp-ulike-liker\"><a href=\"#\" title=\"%USER_NAME%\">%USER_AVATAR%</a></span>%END_WHILE%</div>\";}', 'yes'),
(1067, 'wp_ulike_buddypress', 'a:0:{}', 'yes'),
(1068, 'wp_ulike_bbpress', 'a:0:{}', 'yes'),
(1069, 'wp_ulike_customize', 'a:9:{s:12:\"custom_style\";i:0;s:6:\"btn_bg\";s:0:\"\";s:10:\"btn_border\";s:0:\"\";s:9:\"btn_color\";s:0:\"\";s:10:\"counter_bg\";s:0:\"\";s:14:\"counter_border\";s:0:\"\";s:13:\"counter_color\";s:0:\"\";s:17:\"loading_animation\";i:0;s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(1070, 'widget_wp_ulike', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1073, 'aiowpsec_db_version', '1.9', 'yes'),
(1074, 'aio_wp_security_configs', 'a:87:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:20:\"nbilanenko@gmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"qnbbvrm82kywezn2a3pr\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"zad156m4q22tkntem179\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:20:\"nbilanenko@gmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:20:\"nbilanenko@gmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";}', 'yes'),
(1078, 'wp-ulike-notice-dismissed', '1', 'yes'),
(1081, 'usp_options', 'a:70:{s:11:\"usp_version\";i:20180822;s:8:\"usp_name\";s:4:\"hide\";s:9:\"usp_email\";s:4:\"show\";s:7:\"usp_url\";s:4:\"hide\";s:9:\"usp_title\";s:4:\"show\";s:8:\"usp_tags\";s:4:\"optn\";s:12:\"usp_category\";s:4:\"show\";s:11:\"usp_content\";s:4:\"show\";s:12:\"custom_field\";s:4:\"hide\";s:11:\"usp_captcha\";s:4:\"hide\";s:13:\"usp_recaptcha\";s:4:\"show\";s:10:\"usp_images\";s:4:\"hide\";s:16:\"usp_form_version\";s:6:\"custom\";s:14:\"usp_include_js\";i:1;s:15:\"usp_display_url\";s:0:\"\";s:13:\"usp_post_type\";s:4:\"post\";s:15:\"number-approved\";i:-1;s:12:\"redirect-url\";s:0:\"\";s:15:\"success-message\";s:107:\"Дякуємо за вашу історію. Після перевірки ми її опублікуємо\";s:13:\"error-message\";s:15:\"Помилка!\";s:16:\"usp_form_content\";s:0:\"\";s:13:\"titles_unique\";i:1;s:20:\"custom_checkbox_name\";s:0:\"\";s:19:\"custom_checkbox_err\";s:0:\"\";s:20:\"custom_checkbox_text\";s:0:\"\";s:10:\"categories\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}s:14:\"usp_use_cat_id\";s:0:\"\";s:6:\"author\";s:1:\"1\";s:11:\"custom_name\";s:0:\"\";s:12:\"custom_label\";s:0:\"\";s:12:\"usp_question\";s:7:\"1 + 1 =\";s:12:\"usp_response\";s:1:\"2\";s:16:\"recaptcha_public\";s:40:\"6Lcc12wUAAAAAFD3Q1P13ekNbYrMbo62RxqtVGFs\";s:17:\"recaptcha_private\";s:40:\"6Lcc12wUAAAAAO0NMEHUFkgGG47apbKKHpW-RDv2\";s:16:\"usp_email_alerts\";i:1;s:14:\"usp_email_html\";i:1;s:17:\"usp_email_address\";s:20:\"nbilanenko@gmail.com\";s:14:\"usp_email_from\";s:20:\"nbilanenko@gmail.com\";s:19:\"email_alert_subject\";s:81:\"Создали пост: %%post_title%% мыло мерзавца: %%user_email%%\";s:19:\"email_alert_message\";s:87:\"Содержит в себе:\r\n%%post_content%%\r\n\r\nПосмотреть:\r\n%%edit_link%%\";s:14:\"upload-message\";s:0:\"\";s:15:\"usp_add_another\";s:0:\"\";s:10:\"min-images\";i:0;s:10:\"max-images\";i:0;s:15:\"min-image-width\";i:0;s:16:\"min-image-height\";i:0;s:15:\"max-image-width\";i:0;s:16:\"max-image-height\";i:0;s:19:\"auto_display_images\";s:7:\"disable\";s:17:\"auto_image_markup\";s:130:\"<a href=\"%%full%%\"><img src=\"%%thumb%%\" width=\"%%width%%\" height=\"%%height%%\" alt=\"%%title%%\" style=\"display:inline-block\" /></a> \";s:18:\"auto_display_email\";s:7:\"disable\";s:17:\"auto_email_markup\";s:43:\"<p><a href=\"mailto:%%email%%\">Email</a></p>\";s:16:\"auto_display_url\";s:7:\"disable\";s:15:\"auto_url_markup\";s:32:\"<p><a href=\"%%url%%\">URL</a></p>\";s:19:\"auto_display_custom\";s:7:\"disable\";s:18:\"auto_custom_markup\";s:60:\"<p>%%custom_label%% : %%custom_name%% : %%custom_value%%</p>\";s:13:\"version_alert\";i:0;s:15:\"default_options\";i:0;s:10:\"usp_casing\";i:0;s:14:\"usp_use_author\";i:0;s:11:\"usp_use_url\";i:0;s:11:\"usp_use_cat\";i:0;s:19:\"usp_richtext_editor\";i:0;s:19:\"usp_featured_images\";i:0;s:16:\"disable_required\";i:0;s:17:\"enable_shortcodes\";i:0;s:19:\"disable_ip_tracking\";i:0;s:15:\"logged_in_users\";i:0;s:14:\"disable_author\";i:0;s:15:\"custom_checkbox\";i:0;}', 'yes'),
(1084, 'user_role_editor', 'a:8:{s:11:\"ure_version\";s:4:\"4.45\";s:15:\"show_admin_role\";i:0;s:17:\"ure_caps_readable\";s:1:\"1\";s:24:\"ure_show_deprecated_caps\";s:1:\"1\";s:23:\"ure_confirm_role_update\";s:1:\"1\";s:14:\"edit_user_caps\";s:1:\"1\";s:18:\"caps_columns_quant\";i:1;s:24:\"count_users_without_role\";s:1:\"1\";}', 'yes'),
(1085, 'wpus_backup_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'no'),
(1086, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(1089, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.0\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1535443681;}', 'yes'),
(1090, 'wpseo_titles', 'a:65:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(1091, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(1092, 'wpseo_flush_rewrite', '1', 'yes'),
(1093, '_transient_timeout_wpseo_link_table_inaccessible', '1566979683', 'no'),
(1094, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(1095, '_transient_timeout_wpseo_meta_table_inaccessible', '1566979683', 'no'),
(1096, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(1102, 'the_champ_general', 'a:6:{s:13:\"footer_script\";s:1:\"1\";s:15:\"combined_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:18:\"browser_msg_enable\";s:1:\"1\";s:11:\"browser_msg\";s:77:\"Ваш браузер блокує деякі можливості сайту\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(1103, 'the_champ_login', 'a:16:{s:5:\"title\";s:25:\"Login with your Social ID\";s:19:\"email_error_message\";s:50:\"Email you entered is already registered or invalid\";s:6:\"avatar\";i:1;s:14:\"email_required\";i:1;s:14:\"password_email\";i:1;s:20:\"new_user_admin_email\";i:1;s:16:\"email_popup_text\";s:70:\"Please enter a valid email address. You might be required to verify it\";s:13:\"enableAtLogin\";i:1;s:16:\"enableAtRegister\";i:1;s:15:\"enableAtComment\";i:1;s:9:\"scl_title\";s:65:\"Link your social account to login to your account at this website\";s:12:\"link_account\";i:1;s:11:\"gdpr_enable\";i:1;s:18:\"privacy_policy_url\";s:0:\"\";s:25:\"privacy_policy_optin_text\";s:71:\"I agree to my personal data being stored and used as per Privacy Policy\";s:15:\"ppu_placeholder\";s:14:\"Privacy Policy\";}', 'yes'),
(1104, 'the_champ_facebook', 'a:19:{s:16:\"commenting_order\";s:36:\"wordpress,facebook,googleplus,disqus\";s:16:\"commenting_label\";s:13:\"Leave a reply\";s:11:\"enable_post\";s:1:\"1\";s:11:\"enable_page\";s:1:\"1\";s:13:\"commenting_id\";s:0:\"\";s:24:\"label_wordpress_comments\";s:16:\"Default Comments\";s:23:\"label_facebook_comments\";s:17:\"Facebook Comments\";s:25:\"label_googleplus_comments\";s:11:\"G+ Comments\";s:21:\"label_disqus_comments\";s:15:\"Disqus Comments\";s:17:\"enable_fbcomments\";s:1:\"1\";s:12:\"urlToComment\";s:0:\"\";s:13:\"comment_width\";s:0:\"\";s:13:\"comment_color\";s:5:\"light\";s:16:\"comment_numposts\";s:0:\"\";s:15:\"comment_orderby\";s:6:\"social\";s:12:\"comment_lang\";s:5:\"ru_RU\";s:16:\"gpcomments_width\";s:0:\"\";s:14:\"gpcomments_url\";s:0:\"\";s:12:\"dq_shortname\";s:0:\"\";}', 'yes'),
(1105, 'the_champ_sharing', 'a:64:{s:6:\"enable\";s:1:\"1\";s:24:\"horizontal_sharing_shape\";s:5:\"round\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:5:\"round\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:20:\"Поділитися\";s:18:\"instagram_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:2:{i:0;s:8:\"facebook\";i:1;s:8:\"Telegram\";}s:21:\"hor_sharing_alignment\";s:4:\"left\";s:19:\"tweet_count_service\";s:14:\"opensharecount\";s:15:\"vertical_enable\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:21:\"vertical_re_providers\";a:2:{i:0;s:8:\"facebook\";i:1;s:8:\"Telegram\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:28:\"vertical_tweet_count_service\";s:14:\"opensharecount\";s:21:\"vertical_screen_width\";s:3:\"783\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:8:\"language\";s:5:\"ru_RU\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";}', 'yes'),
(1106, 'the_champ_counter', 'a:4:{s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:9:\"alignment\";s:4:\"left\";}', 'yes'),
(1107, 'the_champ_ss_version', '7.12.1', 'yes'),
(1108, 'widget_thechamplogin', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1109, 'widget_thechamphorizontalsharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1110, 'widget_thechampverticalsharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1111, 'widget_thechamphorizontalcounter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1112, 'widget_thechampverticalcounter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1113, 'widget_thechampfollow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1114, 'heateor_ss_gdpr_notification_read', '1', 'yes'),
(1115, 'heateor_ss_browser_notification_read', '1', 'yes'),
(1116, 'rewrite_rules', 'a:97:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:43:\"tema/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"tema/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:19:\"tema/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:31:\"tema/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"tema/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:48:\"hashtag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:43:\"hashtag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:24:\"hashtag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:36:\"hashtag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:18:\"hashtag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(1117, 'wpseo_sitemap_1_cache_validator', '3pzVE', 'no'),
(1118, 'wpseo_sitemap_post_cache_validator', '3pzVG', 'no'),
(1119, 'wpseo_sitemap_category_cache_validator', '3pzVJ', 'no'),
(1123, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:1:{i:1;a:3:{s:13:\"wpseo_focuskw\";s:21:\"Без рубрики\";s:13:\"wpseo_linkdex\";s:2:\"15\";s:19:\"wpseo_content_score\";s:2:\"60\";}}}', 'yes');
INSERT INTO `wpus_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1127, 'wpseo_sitemap_page_cache_validator', '5d7oz', 'no'),
(1143, 'wpulike_lastvisit', '2018-08-30 10:08:33', 'yes'),
(1148, 'new_admin_email', 'nbilanenko@gmail.com', 'yes'),
(1174, 'wpp_rand', '33cd8f74815e281156943c45caf756df', 'yes'),
(1177, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/uk/wordpress-4.9.8.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/uk/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535614562;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(1179, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535614192;s:7:\"checked\";a:1:{s:8:\"privetiq\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1184, 'current_theme', 'Privetiq', 'yes'),
(1185, 'theme_mods_privetiq', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1186, 'theme_switched', '', 'yes'),
(1189, 'wpseo_sitemap_post_tag_cache_validator', '3pzVL', 'no'),
(1190, 'wpseo_sitemap_10_cache_validator', '3J6wT', 'no'),
(1224, 'wpseo_sitemap_14_cache_validator', '2WMNt', 'no'),
(1230, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535614192;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:5:\"4.3.6\";s:33:\"classic-editor/classic-editor.php\";s:3:\"0.4\";s:37:\"super-socializer/super_socializer.php\";s:6:\"7.12.1\";s:37:\"user-role-editor/user-role-editor.php\";s:4:\"4.45\";s:45:\"user-submitted-posts/user-submitted-posts.php\";s:8:\"20180822\";s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";s:5:\"4.1.2\";s:21:\"wp-ulike/wp-ulike.php\";s:5:\"3.5.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.3.6\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1750045\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1750045\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1750404\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1751803\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"super-socializer/super_socializer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/super-socializer\";s:4:\"slug\";s:16:\"super-socializer\";s:6:\"plugin\";s:37:\"super-socializer/super_socializer.php\";s:11:\"new_version\";s:6:\"7.12.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/super-socializer/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/super-socializer.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/super-socializer/assets/icon-128x128.png?rev=1866723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/super-socializer/assets/banner-772x250.png?rev=1866718\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:4:\"4.45\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/user-role-editor.4.45.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"user-submitted-posts/user-submitted-posts.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/user-submitted-posts\";s:4:\"slug\";s:20:\"user-submitted-posts\";s:6:\"plugin\";s:45:\"user-submitted-posts/user-submitted-posts.php\";s:11:\"new_version\";s:8:\"20180822\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/user-submitted-posts/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/user-submitted-posts.20180822.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/user-submitted-posts/assets/icon-256x256.png?rev=1475972\";s:2:\"1x\";s:73:\"https://ps.w.org/user-submitted-posts/assets/icon-128x128.png?rev=1475972\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/user-submitted-posts/assets/banner-1544x500.jpg?rev=1392443\";s:2:\"1x\";s:75:\"https://ps.w.org/user-submitted-posts/assets/banner-772x250.jpg?rev=1392443\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/wordpress-popular-posts\";s:4:\"slug\";s:23:\"wordpress-popular-posts\";s:6:\"plugin\";s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/wordpress-popular-posts/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/wordpress-popular-posts.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/wordpress-popular-posts/assets/icon-256x256.png?rev=1232659\";s:2:\"1x\";s:76:\"https://ps.w.org/wordpress-popular-posts/assets/icon-128x128.png?rev=1232659\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/wordpress-popular-posts/assets/banner-772x250.png?rev=1130670\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"wp-ulike/wp-ulike.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/wp-ulike\";s:4:\"slug\";s:8:\"wp-ulike\";s:6:\"plugin\";s:21:\"wp-ulike/wp-ulike.php\";s:11:\"new_version\";s:5:\"3.5.0\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wp-ulike/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-ulike.3.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wp-ulike/assets/icon-256x256.png?rev=1080373\";s:2:\"1x\";s:61:\"https://ps.w.org/wp-ulike/assets/icon-128x128.png?rev=1080373\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-ulike/assets/banner-1544x500.png?rev=1277060\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-ulike/assets/banner-772x250.png?rev=1080373\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1234, 'wpseo_sitemap_16_cache_validator', '3bTv8', 'no'),
(1240, 'wpseo_sitemap_18_cache_validator', '3puEl', 'no'),
(1262, 'category_children', 'a:0:{}', 'yes'),
(1267, '_transient_timeout_users_online', '1535634983', 'no'),
(1268, '_transient_users_online', 'a:1:{i:0;a:3:{s:7:\"user_id\";i:1;s:13:\"last_activity\";i:1535640383;s:10:\"ip_address\";s:9:\"127.0.0.1\";}}', 'no'),
(1271, '_site_transient_timeout_theme_roots', '1535615991', 'no'),
(1272, '_site_transient_theme_roots', 'a:1:{s:8:\"privetiq\";s:7:\"/themes\";}', 'no'),
(1281, '_transient_timeout_wp_ulike_get_top_likers', '1535702926', 'no'),
(1282, '_transient_wp_ulike_get_top_likers', 'a:1:{i:0;O:8:\"stdClass\":3:{s:7:\"user_id\";s:1:\"1\";s:7:\"SumUser\";s:1:\"3\";s:2:\"ip\";s:9:\"127.0.0.1\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_popularpostsdata`
--

CREATE TABLE `wpus_popularpostsdata` (
  `postid` bigint(20) NOT NULL,
  `day` datetime NOT NULL,
  `last_viewed` datetime NOT NULL,
  `pageviews` bigint(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_popularpostsdata`
--

INSERT INTO `wpus_popularpostsdata` (`postid`, `day`, `last_viewed`, `pageviews`) VALUES
(3, '2018-08-29 17:42:48', '2018-08-29 17:52:28', 10),
(8, '2018-08-28 18:09:04', '2018-08-30 14:46:36', 56),
(12, '2018-08-30 14:41:48', '2018-08-30 14:46:28', 3),
(18, '2018-08-29 11:33:19', '2018-08-30 09:29:51', 40),
(23, '2018-08-30 14:37:33', '2018-08-30 14:41:39', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_popularpostssummary`
--

CREATE TABLE `wpus_popularpostssummary` (
  `ID` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `pageviews` bigint(20) NOT NULL DEFAULT '1',
  `view_date` date NOT NULL,
  `view_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_popularpostssummary`
--

INSERT INTO `wpus_popularpostssummary` (`ID`, `postid`, `pageviews`, `view_date`, `view_datetime`) VALUES
(1, 8, 1, '2018-08-28', '2018-08-28 18:09:04'),
(2, 8, 1, '2018-08-28', '2018-08-28 18:10:39'),
(3, 8, 1, '2018-08-28', '2018-08-28 18:11:42'),
(4, 8, 1, '2018-08-28', '2018-08-28 18:12:15'),
(5, 8, 1, '2018-08-28', '2018-08-28 18:12:54'),
(6, 8, 1, '2018-08-29', '2018-08-29 09:27:29'),
(7, 8, 1, '2018-08-29', '2018-08-29 09:28:08'),
(8, 8, 1, '2018-08-29', '2018-08-29 09:28:30'),
(9, 8, 1, '2018-08-29', '2018-08-29 09:28:42'),
(10, 8, 1, '2018-08-29', '2018-08-29 09:28:54'),
(11, 8, 1, '2018-08-29', '2018-08-29 09:29:24'),
(12, 8, 1, '2018-08-29', '2018-08-29 09:30:18'),
(13, 8, 1, '2018-08-29', '2018-08-29 09:34:38'),
(14, 8, 1, '2018-08-29', '2018-08-29 09:35:00'),
(15, 8, 1, '2018-08-29', '2018-08-29 09:35:33'),
(16, 8, 1, '2018-08-29', '2018-08-29 09:35:57'),
(17, 8, 1, '2018-08-29', '2018-08-29 09:37:31'),
(18, 8, 1, '2018-08-29', '2018-08-29 09:40:56'),
(19, 8, 1, '2018-08-29', '2018-08-29 09:41:08'),
(20, 8, 1, '2018-08-29', '2018-08-29 09:41:26'),
(21, 8, 1, '2018-08-29', '2018-08-29 09:44:41'),
(22, 8, 1, '2018-08-29', '2018-08-29 09:44:54'),
(23, 8, 1, '2018-08-29', '2018-08-29 09:45:02'),
(24, 8, 1, '2018-08-29', '2018-08-29 09:47:44'),
(25, 8, 1, '2018-08-29', '2018-08-29 09:54:37'),
(26, 8, 1, '2018-08-29', '2018-08-29 09:56:54'),
(27, 8, 1, '2018-08-29', '2018-08-29 10:22:47'),
(28, 8, 1, '2018-08-29', '2018-08-29 11:13:08'),
(29, 8, 1, '2018-08-29', '2018-08-29 11:13:16'),
(30, 8, 1, '2018-08-29', '2018-08-29 11:13:55'),
(31, 8, 1, '2018-08-29', '2018-08-29 11:14:12'),
(32, 18, 1, '2018-08-29', '2018-08-29 11:33:19'),
(33, 18, 1, '2018-08-29', '2018-08-29 11:34:04'),
(34, 18, 1, '2018-08-29', '2018-08-29 11:34:54'),
(35, 18, 1, '2018-08-29', '2018-08-29 11:35:34'),
(36, 18, 1, '2018-08-29', '2018-08-29 11:44:57'),
(37, 18, 1, '2018-08-29', '2018-08-29 12:37:39'),
(38, 18, 1, '2018-08-29', '2018-08-29 12:39:29'),
(39, 18, 1, '2018-08-29', '2018-08-29 12:39:35'),
(40, 18, 1, '2018-08-29', '2018-08-29 12:41:03'),
(41, 18, 1, '2018-08-29', '2018-08-29 12:41:15'),
(42, 18, 1, '2018-08-29', '2018-08-29 12:41:25'),
(43, 18, 1, '2018-08-29', '2018-08-29 12:42:21'),
(44, 18, 1, '2018-08-29', '2018-08-29 12:42:49'),
(45, 18, 1, '2018-08-29', '2018-08-29 12:43:20'),
(46, 18, 1, '2018-08-29', '2018-08-29 12:43:53'),
(47, 18, 1, '2018-08-29', '2018-08-29 12:44:04'),
(48, 18, 1, '2018-08-29', '2018-08-29 12:44:10'),
(49, 18, 1, '2018-08-29', '2018-08-29 12:46:34'),
(50, 18, 1, '2018-08-29', '2018-08-29 12:46:48'),
(51, 18, 1, '2018-08-29', '2018-08-29 12:47:12'),
(52, 18, 1, '2018-08-29', '2018-08-29 12:49:48'),
(53, 18, 1, '2018-08-29', '2018-08-29 12:50:18'),
(54, 18, 1, '2018-08-29', '2018-08-29 12:52:02'),
(55, 18, 1, '2018-08-29', '2018-08-29 12:53:21'),
(56, 18, 1, '2018-08-29', '2018-08-29 12:53:44'),
(57, 18, 1, '2018-08-29', '2018-08-29 12:54:04'),
(58, 18, 1, '2018-08-29', '2018-08-29 12:54:59'),
(59, 18, 1, '2018-08-29', '2018-08-29 12:55:51'),
(60, 18, 1, '2018-08-29', '2018-08-29 13:02:40'),
(61, 18, 1, '2018-08-29', '2018-08-29 13:05:22'),
(62, 18, 1, '2018-08-29', '2018-08-29 13:10:54'),
(63, 18, 1, '2018-08-29', '2018-08-29 13:11:12'),
(64, 18, 1, '2018-08-29', '2018-08-29 14:33:56'),
(65, 18, 1, '2018-08-29', '2018-08-29 15:43:21'),
(66, 8, 1, '2018-08-29', '2018-08-29 16:34:07'),
(67, 8, 1, '2018-08-29', '2018-08-29 16:41:54'),
(68, 18, 1, '2018-08-29', '2018-08-29 17:19:56'),
(69, 18, 1, '2018-08-29', '2018-08-29 17:22:47'),
(70, 18, 1, '2018-08-29', '2018-08-29 17:23:26'),
(71, 18, 1, '2018-08-29', '2018-08-29 17:39:45'),
(72, 3, 1, '2018-08-29', '2018-08-29 17:42:48'),
(73, 3, 1, '2018-08-29', '2018-08-29 17:44:22'),
(74, 3, 1, '2018-08-29', '2018-08-29 17:45:51'),
(75, 3, 1, '2018-08-29', '2018-08-29 17:46:58'),
(76, 3, 1, '2018-08-29', '2018-08-29 17:47:17'),
(77, 3, 1, '2018-08-29', '2018-08-29 17:47:42'),
(78, 3, 1, '2018-08-29', '2018-08-29 17:48:02'),
(79, 3, 1, '2018-08-29', '2018-08-29 17:48:26'),
(80, 3, 1, '2018-08-29', '2018-08-29 17:51:18'),
(81, 3, 1, '2018-08-29', '2018-08-29 17:52:28'),
(82, 8, 1, '2018-08-29', '2018-08-29 17:52:40'),
(83, 18, 1, '2018-08-29', '2018-08-29 18:00:44'),
(84, 18, 1, '2018-08-30', '2018-08-30 09:29:51'),
(85, 8, 1, '2018-08-30', '2018-08-30 14:29:06'),
(86, 8, 1, '2018-08-30', '2018-08-30 14:29:26'),
(87, 8, 1, '2018-08-30', '2018-08-30 14:29:41'),
(88, 8, 1, '2018-08-30', '2018-08-30 14:30:02'),
(89, 8, 1, '2018-08-30', '2018-08-30 14:30:14'),
(90, 8, 1, '2018-08-30', '2018-08-30 14:30:49'),
(91, 8, 1, '2018-08-30', '2018-08-30 14:31:06'),
(92, 8, 1, '2018-08-30', '2018-08-30 14:31:14'),
(93, 8, 1, '2018-08-30', '2018-08-30 14:31:26'),
(94, 8, 1, '2018-08-30', '2018-08-30 14:32:24'),
(95, 8, 1, '2018-08-30', '2018-08-30 14:33:03'),
(96, 8, 1, '2018-08-30', '2018-08-30 14:33:54'),
(97, 8, 1, '2018-08-30', '2018-08-30 14:34:39'),
(98, 8, 1, '2018-08-30', '2018-08-30 14:35:08'),
(99, 8, 1, '2018-08-30', '2018-08-30 14:35:21'),
(100, 8, 1, '2018-08-30', '2018-08-30 14:36:20'),
(101, 8, 1, '2018-08-30', '2018-08-30 14:37:02'),
(102, 23, 1, '2018-08-30', '2018-08-30 14:37:33'),
(103, 8, 1, '2018-08-30', '2018-08-30 14:38:29'),
(104, 8, 1, '2018-08-30', '2018-08-30 14:38:54'),
(105, 8, 1, '2018-08-30', '2018-08-30 14:39:45'),
(106, 8, 1, '2018-08-30', '2018-08-30 14:40:26'),
(107, 23, 1, '2018-08-30', '2018-08-30 14:41:39'),
(108, 12, 1, '2018-08-30', '2018-08-30 14:41:48'),
(109, 12, 1, '2018-08-30', '2018-08-30 14:44:19'),
(110, 12, 1, '2018-08-30', '2018-08-30 14:46:28'),
(111, 8, 1, '2018-08-30', '2018-08-30 14:46:36');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_postmeta`
--

CREATE TABLE `wpus_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_postmeta`
--

INSERT INTO `wpus_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 3, '_edit_lock', '1535616768:1'),
(8, 3, '_edit_last', '1'),
(9, 3, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(10, 3, '_yoast_wpseo_content_score', '30'),
(11, 2, '_edit_lock', '1535446723:1'),
(12, 2, '_edit_last', '1'),
(13, 2, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(14, 2, '_yoast_wpseo_content_score', '30'),
(15, 8, '_edit_last', '1'),
(16, 8, '_edit_lock', '1535472394:1'),
(17, 8, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(18, 8, '_yoast_wpseo_content_score', '90'),
(19, 10, 'is_submission', '1'),
(20, 10, 'usp-post-id', '10'),
(21, 10, 'user_submit_name', 'myschooladmin'),
(22, 10, 'user_submit_email', 'nbilanenko@gmail.com'),
(23, 10, 'user_submit_ip', '127.0.0.1'),
(24, 10, '_edit_lock', '1535472428:1'),
(25, 10, '_edit_last', '1'),
(27, 10, '_yoast_wpseo_primary_category', ''),
(28, 10, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(29, 12, 'is_submission', '1'),
(30, 12, 'usp-post-id', '12'),
(31, 12, 'user_submit_name', 'myschooladmin'),
(32, 12, 'user_submit_email', 'zzzbenedict3zzz@gmail.com'),
(33, 12, 'user_submit_ip', '127.0.0.1'),
(34, 12, '_edit_lock', '1535527632:1'),
(35, 14, 'is_submission', '1'),
(36, 14, 'usp-post-id', '14'),
(37, 14, 'user_submit_name', 'myschooladmin'),
(38, 14, 'user_submit_email', 'nbilanenko@gmail.com'),
(39, 14, 'user_submit_ip', '127.0.0.1'),
(40, 12, '_edit_last', '1'),
(42, 12, '_yoast_wpseo_primary_category', ''),
(43, 12, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(44, 12, '_yoast_wpseo_content_score', '90'),
(45, 14, '_edit_lock', '1535527649:1'),
(46, 14, '_edit_last', '1'),
(48, 14, '_yoast_wpseo_primary_category', ''),
(49, 14, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(50, 14, '_yoast_wpseo_content_score', '90'),
(51, 16, 'is_submission', '1'),
(52, 16, 'usp-post-id', '16'),
(53, 16, 'user_submit_name', 'myschooladmin'),
(54, 16, 'user_submit_email', 'ladynastytym@gmail.com'),
(55, 16, 'user_submit_ip', '127.0.0.1'),
(56, 16, '_edit_lock', '1535557187:1'),
(57, 16, '_edit_last', '1'),
(59, 16, '_yoast_wpseo_primary_category', ''),
(60, 16, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(61, 18, 'is_submission', '1'),
(62, 18, 'usp-post-id', '18'),
(63, 18, 'user_submit_name', 'myschooladmin'),
(64, 18, 'user_submit_email', 'nbilanenko@gmail.com'),
(65, 18, 'user_submit_ip', '127.0.0.1'),
(66, 18, '_edit_lock', '1535553917:1'),
(67, 18, '_edit_last', '1'),
(69, 18, '_yoast_wpseo_primary_category', ''),
(70, 18, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(71, 18, '_yoast_wpseo_content_score', '30'),
(74, 18, '_wp_old_slug', 'lorem12'),
(75, 18, '_liked', '0'),
(76, 16, '_liked', '1'),
(77, 12, '_liked', '1'),
(78, 14, '_liked', '0'),
(79, 23, 'is_submission', '1'),
(80, 23, 'usp-post-id', '23'),
(81, 23, 'user_submit_name', 'myschooladmin'),
(82, 23, 'user_submit_email', 'nbilanenko@gmail.com'),
(83, 23, 'user_submit_ip', '127.0.0.1'),
(84, 23, '_edit_lock', '1535632286:1'),
(85, 23, '_edit_last', '1'),
(87, 23, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_posts`
--

CREATE TABLE `wpus_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_posts`
--

INSERT INTO `wpus_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-08-28 10:35:23', '2018-08-28 07:35:23', '', 'Головна', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-28 10:57:08', '2018-08-28 08:57:08', '', 0, 'http://stories.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-28 10:35:23', '2018-08-28 07:35:23', '<strong>Користуючись Сайтом </strong><strong><a href=\"https://secrets.1plus1.ua\">https://secrets.1plus1.ua</a></strong><strong>  Ви автоматично підтверджуєте свою згоду з наведеними нижче правилами користування Сайтом. У разі, якщо Вам не виповнилось 18 років, використання сайту Вами автоматично підтверждує згоду Ваших батьків (опікунів/піклувальників) з цими Правилами. </strong>\r\n\r\n<strong> </strong>\r\n\r\n<strong>Правила користування Сайтом </strong>https://secrets.1plus1.ua<strong>. </strong>\r\n\r\n<strong> </strong>\r\n\r\nЦі Правила створені з метою впорядкування користування сайтом https://secrets.1plus1.ua (далі за текстом Сайт). Правила є обов\'язковими для виконання всіма Користувачами Сайту. У разі, якщо Ви незгодні із нижчезазначеними Правилами, не використовуйте Сайт.\r\n\r\nУвага, у разі якщо Вам не виповнилось 18 років, повідомте своїх батьків (опікунів/піклувальників) про те, що Ви користуєтесь даним Сайтом та запросіть їх ознайомитись з даними правилами.\r\n\r\n&nbsp;\r\n<ol>\r\n 	<li><strong>Користування сайтом.</strong></li>\r\n</ol>\r\n&nbsp;\r\n\r\nВикористання Сайту  автоматично означає Вашу згоду з даними Правилами. Користувач, приймаючи умови, викладені в цих Правилах, зобов\'язується їх дотримуватись або припинити використання Сайту. Користувач підтверджує, що він є правоздатним і дієздатним.\r\n\r\nУ разі , якщо Користувач не є повнолітньою особою, відповідальність  за його дії  несуть батьки (опікуни, піклувальники).\r\n\r\nУ разі якщо на думку батьків (опікунів, піклувальників) користування сайту є небажаним для неповнолітнього Користувача чи/або може завдати шкоди його моральному та/чи духовному розвитку, батьки (опікуни, піклувальники ) мають право обмежити доступ гаджетів дитини до Сайту.\r\n\r\n&nbsp;\r\n\r\n<em>Примітка: згідно ч.2  ст.150 Сімейного кодексу України батьки зобов’язані піклуватись про здоров’я дитини і її фізичний, духовний та моральний розвиток. </em>\r\n\r\n&nbsp;\r\n<ol>\r\n 	<li><strong>Публікація історій Користувачів  на Сайті</strong></li>\r\n</ol>\r\n&nbsp;\r\n\r\nКористувачі Сайту мають право присилати на електронну адресу адміністрації Сайту <a href=\"mailto:school.secrets@1plus1.tv\">school.secrets@1plus1.tv</a> текстові матеріали (надалі Історії) , для подальшого розміщення  на сайті.\r\n\r\n&nbsp;\r\n\r\nВимоги до Історій:\r\n\r\n&nbsp;\r\n\r\nВсі   текстові матеріали (Історії) надані  Користувачами для розміщення на Сайті  відображають виключно думку Користувачів, що їх надали. Адміністрація Сайту не поділяє і не підтримує ці думки, і не є гарантом відповідності розміщених Історій дійсності та  законодавству України. Історії не мають містити посилання на реальних осіб, місця подій, назву закладів та міст. у разі якщо у Історії  на думку Адміністрації Сайту буде міститися  вищезазначена інформація, Адміністрація залишає за собою право видалити/та або замінити такі посилання на вигадані.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту здійснює премодерацію та редагування наданих  Користувачами Історій, а також перевіряє зміст цих Історій і здійснює перевірку Історій (файлів) на відповідність стилю та концепції Сайту, наявність шкідливого програмного забезпечення (вірусів) здатного завдати шкоди вашому комп\'ютеру, але не несе відповідальність у випадку отримання вами даних  вірусів з Сайту.\r\n\r\n&nbsp;\r\n\r\nУсі надані для розміщення Історій вважаються власністю Користувачів що їх розмістили до тих пір, поки не буде підстав вважати інакше. Надсилаючи Історії для розміщення  Користувач гарантує, що він є власником всіх та будь-яких  авторських   прав на Історію.\r\n\r\nКористувачі Сайту не отримують жодних прав на використання матеріалів, розміщених іншими Користувачами, і несуть повну відповідальність перед власником Історії за їх неправомірне використання.\r\n\r\n&nbsp;\r\n\r\nВсі Історії, надані Користувачами, надаються іншим Користувачам виключно для приватного перегляду на сторінках Сайту та поширення на своїх сторінках в соціальних мережах з правом подальшого репосту (повторної публікації)  в соціальних мережах іншими користувачами. . Користувачі Сайту не мають права копіювати, відтворювати, поширювати, передавати, транслювати, відображати, ліцензувати або іншим чином використовувати будь-які Історії, розміщені на Сайті крім способів використання, зазначених у даному пункті Правил.\r\n\r\n&nbsp;\r\n\r\nНадсилаючи Історію для розміщення на Сайті Користувач надає Сайту безоплатне право на використання, оприлюднення, відтворення, розповсюдження, створення похідних робіт, відображення та виконання з правом передачі таких прав третім особам на території всіх країни Світу протягом всього строку дії авторських прав на  Історії згідно умов даних Правил.\r\n\r\nНадаючи Історії для розміщення на Сайті Користувач автоматично надає згоду на їх використання шляхом розміщення в мережі Інтернет (в тому числі соціальних мережах), на здійснення редагування, переробку та/чи адаптацію,  зміну чи видалення всіх даних, що можуть ідентифікувати Користувача чи інших осіб згадуваних в Історії, створення інших Об’єктів авторського права з використанням наданих Користувачем Історій.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту має право без повідомлення Користувача і пояснення причин в будь-який час видалити будь-які Історії (файли) з Сайту, в тому числі Історії (файли) можуть бути видалені в випадку   скарг на їх розміщення від третіх осіб. У разі виникнення будь-яких претензій третіх осіб щодо порушення будь-яких авторських прав, інших майнових та/або немайнових прав, Користувач зобов\'язаний в повному обсязі відшкодувати збитки Сайту.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту не несе відповідальності за використання (як правомірне, так і неправомірне) третіми особами Історій, розміщених на Сайті, включаючи їх відтворення та розповсюдження, здійснені як в рамках ресурсу, так і іншими можливими способами, а також за будь-які наслідки подібного використання Історій.\r\n\r\n&nbsp;\r\n\r\nРішення щодо відповідності Історій  вимогам даним Правил приймає Модератор і/або Адміністратор Сайту на свій розсуд і має повноваження редагувати,  блокувати, переміщати, закривати або видаляти матеріал.\r\n\r\n&nbsp;\r\n<ol start=\"3\">\r\n 	<li><strong> Права Адміністрації Сайту</strong></li>\r\n</ol>\r\nАдміністрація залишає за собою право:\r\n\r\n- Блокувати і видаляти Історії, якщо ці Історії не відповідають вимогам і тематиці Сайту;\r\n\r\n- видаляти будь-які Історії  на власний розсуд та/або за наявності претензій щодо порушення авторських   прав;\r\n\r\n- Змінювати дані Правила та/або будь-які умови використання ресурсу без повідомлення  користувачів. Зміни до Правил будуть опубліковані на сторінках Сайту.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<ol start=\"4\">\r\n 	<li><strong> Гарантії Користувача</strong></li>\r\n</ol>\r\nКористувач, гарантує, що всі Історії, надані для розміщення на Сайті,   є оригінальними, Він є законним власником всіх авторських прав на Історії, і надсилаючи їх на адресу Адміністрації Сайту правомірно надає  Сайту належні йому права на використання Історій у відповідності до умов цих Правил.\r\n\r\nНадані відповідно до цих Правил права вільні від зобов\'язань перед третіми особами. Історії не містять  будь-яких матеріалів, що порушують авторське право, інші права інтелектуальної власності, договірні права, цивільно-правові права та/або інші права третіх осіб.\r\n\r\nдо Користувача немає і не передбачається ніяких претензій або позовів з боку третіх осіб, які могли б прямо або побічно вплинути на отримані Сайтом згідно з цими Правилами права та повноваження.\r\n\r\nАдміністрація Сайту може використовувати Історії без отримання додаткових дозволів від Користувача та/або будь-яких третіх осіб і без здійснення будь-яких виплат Користувачу та/або будь-яким третім особам та без зазначення Автора чи будь-яких даних про Автора, що були надані ним при надсиланні Історії.\r\n\r\nУ разі пред\'явлення Адміністрації Сайту та/або Користувачу претензій та/або позовів, безпосередньо пов\'язаних з використанням Історій, наданих  Користувачем, недотриманням Користувачем Правил користування Сайтом Користувач зобов\'язується самостійно (без залучення Адміністрації Сайту) врегулювати їх від свого імені і несе відповідальність за такими претензіями та/або позовами своїми силами і за свій рахунок. У разі якщо внаслідок задоволення пред\'явлених Сайту та/або Користувачу претензій та/або позовів, безпосередньо пов\'язаних з укладанням та/або виконанням Сайтом Договору, використанням Історій, недотриманням Користувачем цих  Правил, Сайту будуть нанесені збитки, Користувач зобов\'язується відшкодувати Сайту такі збитки в повному обсязі (включаючи упущену вигоду).\r\n\r\nКористувач гарантує що надіслані ним файли не <strong> </strong>містять вірусів або будь-яких інших програмних продуктів що містять шкідливий код.\r\n\r\n&nbsp;\r\n<ol start=\"5\">\r\n 	<li><strong> Інші умови</strong></li>\r\n</ol>\r\nКористувач, використовуючи Сайт тим самим автоматично підтверджує, що ознайомився та погоджується з умовами цих Правил, які вважаються підписаними Користувачем по факту користування сайтом   і жодна із умов цих Правил не суперечить інтересам Користувача.\r\n\r\nЗгідно з цими Правилами Користувач не набуває права вимоги щодо оплати Адміністрацією Сайту наданих прав інтелектуальної власності.\r\n\r\nВикористання тим чи іншим способом Історій, наданих Користувачем, є правом, а не зобов\'язанням Адміністрації Сайту, і ми не несемо ніякої відповідальності перед Користувачем за невикористання таких Історій.\r\n\r\nРесурс має право на власний розсуд вирішувати питання про зазначення імені Користувача при використанні Історій згідно з умовами цього Договору.\r\n<ol start=\"6\">\r\n 	<li><strong> Порушення</strong></li>\r\n</ol>\r\nПорушенням даних Правил вважається надання  будь-яких матеріалів, що підпадають під категорії: матеріали інформаційного характеру, які порушують права третіх осіб на патент, торговий знак, комерційну таємницю, авторські права або інші права власності;\r\n\r\n&nbsp;\r\n<ol start=\"7\">\r\n 	<li><strong> Відповідальність Адміністрації Сайту</strong></li>\r\n</ol>\r\nАдміністрація Сайту не гарантує відповідність Сайту цілям і очікуванням Користувача, його безперебійну і безпомилкову роботу, а також збереження наданих  Користувачем Історій(файлів).\r\n\r\nАдміністрація Ресурсу залишає за собою право, без попереднього повідомлення, видалити будь-які (файли) з Сайту або тимчасово обмежити доступ до них. Адміністрація не несе відповідальності за неможливість використання в повному обсязі функцій Сайту.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту має право розміщувати рекламні оголошення на розміщених Історіях та/або на сторінках Сайту, розміщувати засоби для підрахунку кількості переглядів Історій Користувачами Сайту, створювати інші сервіси на сторінках Сайту з розміщеними на них Історіями.\r\n\r\nАдміністрація ресурсу не дає жодних гарантій щодо доступності Сайту у всіх країнах Світу. Користувачі Ресурсу несуть повну відповідальність за дотримання законодавства України та міжнародного законодавства при використанні Сайту.\r\n\r\n&nbsp;\r\n<ol start=\"8\">\r\n 	<li><strong> Права на використання Історій </strong></li>\r\n</ol>\r\nКористувач, надаючи Історії для публікації на Сайті, передає Адміністрації Сайту майнові права на використання Історій, а саме:\r\n\r\n- Право на оприлюднення (випуск у світ, розкриття публіці), тобто право вчиняти дії, які вперше роблять Історії, доступним для публіки шляхом опублікування, публічного виконання, публічного показу (тобто право на демонстрацію його оригіналів (складових частин) або примірників будь-яким способом необмеженому колу осіб), публічної демонстрації, публічного повідомлення і т.п.\r\n\r\n- Права на публічний показ і публічне сповіщення (доведення до загального відома) надісланих Користувачем Історій будь-яким візуальним способом та/або для будь-якого використання за допомогою   засобів мережі Інтернет);\r\n\r\n- Право доводити до загального відома публіки надіслані файли, таким чином, що її представники можуть отримувати доступ до Історій з будь-якого місця та у будь-який час за власним вибором, включаючи право на використання Історій в мережі Інтернет (включаючи відтворення та розповсюдження) будь-яким чином та будь-яким способом;\r\n\r\n- Право на самостійне здійснення   очищення Історій  від будь-яких видів реклами, на зміну  (оформлення, тексту) та інших дій що є переробкою та /адаптацією Історій;\r\n\r\n- Право здійснювати накладення графічного зображення товарного знаку (логотипів) Адміністрації Сайтів, а також Рекламодавців чи Спонсорів;\r\n\r\n- Право на повторне оприлюднення Історій , якщо воно здійснюється іншою організацією, ніж та, яка здійснила перше оприлюднення;\r\n\r\n- Дія прав наданих Користувачем згідно даних Правил розповсюджується на території  країн всього світу;\r\n\r\n- Права передаються Користувачем Сайту з моменту надсилання  Користувачем Історії на  електронну адресу <a href=\"mailto:school.secrets@1plus1.tv\">school.secrets@1plus1.tv</a> на весь термін дії авторського права відповідно до чинного законодавства про авторське право .\r\n\r\n&nbsp;\r\n<ol start=\"9\">\r\n 	<li><strong> Порушення авторських прав</strong></li>\r\n</ol>\r\nЯкщо Користувач  вважає, що його захищена авторськими правами Історія опубліковано на Сайті без дозволу, або порушено його авторські, суміжні та/чи інші права, - має право особисто або через уповноваженого представника надіслати сповіщення про порушення його авторських прав з наданням підтвердження факту порушення.\r\n\r\n<strong>Застерігаємо, що надсилання неправдивих (необґрунтованих) претензій може призвести до блокування дії Вашого облікового запису. </strong>\r\n\r\nМи приймаємо сповіщення про порушення авторських прав <a href=\"http://www.youtube.com/yt/copyright/uk/copyright-complaint-requirements.html\">у довільній формі</a>, надіслані <a href=\"http://www.youtube.com/yt/copyright/uk/copyright-contact-info.html\">поштою, факсом або електронною поштою</a>.\r\n\r\n&nbsp;', 'Правила користування сайтом', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-29 17:52:16', '2018-08-29 15:52:16', '', 0, 'http://stories.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-28 10:36:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-28 10:36:00', '0000-00-00 00:00:00', '', 0, 'http://stories.loc/?p=4', 0, 'post', '', 0),
(6, 1, '2018-08-28 11:16:39', '2018-08-28 08:16:39', '<h2>Кто мы</h2>\r\nНаш адрес сайта: http://stories.loc.\r\n<h2>Какие персональные данные мы собираем и с какой целью</h2>\r\n<h3>Комментарии</h3>\r\nЕсли посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.\r\n\r\nАнонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.\r\n<h3>Медиафайлы</h3>\r\nЕсли вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.\r\n<h3>Формы контактов</h3>\r\n<h3>Куки</h3>\r\nЕсли вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.\r\n\r\nЕсли у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.\r\n\r\nПри входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.\r\n\r\nПри редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.\r\n<h3>Встраиваемое содержимое других вебсайтов</h3>\r\nСтатьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.\r\n\r\nЭти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.\r\n<h3>Веб-аналитика</h3>\r\n<h2>С кем мы делимся вашими данными</h2>\r\n<h2>Как долго мы храним ваши данные</h2>\r\nЕсли вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.\r\n\r\nДля пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.\r\n<h2>Какие у вас права на ваши данные</h2>\r\nПри наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.\r\n<h2>Куда мы отправляем ваши данные</h2>\r\nКомментарии пользователей могут проверяться автоматическим сервисом определения спама.\r\n<h2>Ваша контактная информация</h2>\r\n<h2>Дополнительная информация</h2>\r\n<h3>Как мы защищаем ваши данные</h3>\r\n<h3>Какие принимаются процедуры против взлома данных</h3>\r\n<h3>От каких третьих сторон мы получаем данные</h3>\r\n<h3>Какие автоматические решения принимаются на основе данных пользователей</h3>\r\n<h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-28 11:16:39', '2018-08-28 08:16:39', '', 3, 'http://stories.loc/2018/08/28/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-08-28 10:57:08', '2018-08-28 08:57:08', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-28 10:57:08', '2018-08-28 08:57:08', '', 2, 'http://stories.loc/2018/08/28/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-08-28 11:03:41', '2018-08-28 09:03:41', '<h1>Ваша істрія</h1>\r\nВсякі правила, умови та побажання..банк сейчас вовсю внедряет прием оплаты бесконтактными картами Виза и Мастеркард. Учитесь у крупнейших игроков, как это делать «правильно».\r\nВо-первых, терминал для работы с картами выглядит точно так же как и пять лет назад. Мясистый\r\nтакой калькулятор с термопринтером.', 'Додати історію', '', 'publish', 'closed', 'closed', '', 'add', '', '', '2018-08-28 18:08:50', '2018-08-28 16:08:50', '', 0, 'http://stories.loc/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-08-28 11:03:41', '2018-08-28 09:03:41', '<h1>Ваша істрія</h1>\r\nВсякі правила, умови та побажання..банк сейчас вовсю внедряет прием оплаты бесконтактными картами Виза и Мастеркард. Учитесь у крупнейших игроков, как это делать «правильно».\r\nВо-первых, терминал для работы с картами выглядит точно так же как и пять лет назад. Мясистый\r\nтакой калькулятор с термопринтером.', 'Додати історію', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-08-28 11:03:41', '2018-08-28 09:03:41', '', 8, 'http://stories.loc/2018/08/28/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-08-28 12:30:35', '2018-08-28 10:30:35', 'В школі я кохав одну дівчину, і ми навіть зустрічались більше року, але потім вона почала мутити з іншим хлопцем. Оце так курвисько! Тварина! Як можна було?', 'Моя історія', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d1%8f-%d1%96%d1%81%d1%82%d0%be%d1%80%d1%96%d1%8f', '', '', '2018-08-28 12:30:35', '2018-08-28 10:30:35', '', 0, 'http://stories.loc/?p=10', 0, 'post', '', 0),
(11, 1, '2018-08-28 12:28:18', '2018-08-28 10:28:18', 'В школі я кохав одну дівчину, і ми навіть зустрічались більше року, але потім вона почала мутити з іншим хлопцем. Оце так курвисько! Тварина! Як можна було?', 'Моя історія', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-08-28 12:28:18', '2018-08-28 10:28:18', '', 10, 'http://stories.loc/thanks/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-08-29 09:29:29', '2018-08-29 07:29:29', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam aut commodi cum, deserunt explicabo facilis fugiat, fugit iste minus neque quam quidem reiciendis sint sit temporibus ullam voluptatibus voluptatum! A assumenda, blanditiis deleniti in inventore iusto laudantium officia placeat quia, quisquam, recusandae sequi vel! Debitis impedit itaque iure quidem quo quos sed tenetur veritatis. Accusamus ad aliquid, asperiores debitis fuga libero maiores sit tenetur. Alias dicta dolor et ex reprehenderit. Ab asperiores at commodi, debitis dolor dolorem dolorum ducimus, error exercitationem facilis impedit inventore ipsum itaque laborum maxime minus, modi molestiae molestias mollitia officia officiis perspiciatis quasi quo tempore.', 'Lorem ipsun', '', 'publish', 'closed', 'closed', '', 'lorem-ipsun', '', '', '2018-08-29 09:29:29', '2018-08-29 07:29:29', '', 0, 'http://stories.loc/?p=12', 0, 'post', '', 0),
(13, 1, '2018-08-29 09:28:38', '2018-08-29 07:28:38', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam aut commodi cum, deserunt explicabo facilis fugiat, fugit iste minus neque quam quidem reiciendis sint sit temporibus ullam voluptatibus voluptatum! A assumenda, blanditiis deleniti in inventore iusto laudantium officia placeat quia, quisquam, recusandae sequi vel! Debitis impedit itaque iure quidem quo quos sed tenetur veritatis. Accusamus ad aliquid, asperiores debitis fuga libero maiores sit tenetur. Alias dicta dolor et ex reprehenderit. Ab asperiores at commodi, debitis dolor dolorem dolorum ducimus, error exercitationem facilis impedit inventore ipsum itaque laborum maxime minus, modi molestiae molestias mollitia officia officiis perspiciatis quasi quo tempore.', 'Lorem ipsun', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-08-29 09:28:38', '2018-08-29 07:28:38', '', 12, 'http://stories.loc/thanks/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-08-29 09:29:44', '2018-08-29 07:29:44', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam aut commodi cum, deserunt explicabo facilis fugiat, fugit iste minus neque quam quidem reiciendis sint sit temporibus ullam voluptatibus voluptatum! A assumenda, blanditiis deleniti in inventore iusto laudantium officia placeat quia, quisquam, recusandae sequi vel! Debitis impedit itaque iure quidem quo quos sed tenetur veritatis. Accusamus ad aliquid, asperiores debitis fuga libero maiores sit tenetur. Alias dicta dolor et ex reprehenderit. Ab asperiores at commodi, debitis dolor dolorem dolorum ducimus, error exercitationem facilis impedit inventore ipsum itaque laborum maxime minus, modi molestiae molestias mollitia officia officiis perspiciatis quasi quo tempore.', 'lorem 2', '', 'publish', 'closed', 'closed', '', 'lorem-2', '', '', '2018-08-29 09:29:44', '2018-08-29 07:29:44', '', 0, 'http://stories.loc/?p=14', 0, 'post', '', 0),
(15, 1, '2018-08-29 09:29:21', '2018-08-29 07:29:21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam aut commodi cum, deserunt explicabo facilis fugiat, fugit iste minus neque quam quidem reiciendis sint sit temporibus ullam voluptatibus voluptatum! A assumenda, blanditiis deleniti in inventore iusto laudantium officia placeat quia, quisquam, recusandae sequi vel! Debitis impedit itaque iure quidem quo quos sed tenetur veritatis. Accusamus ad aliquid, asperiores debitis fuga libero maiores sit tenetur. Alias dicta dolor et ex reprehenderit. Ab asperiores at commodi, debitis dolor dolorem dolorum ducimus, error exercitationem facilis impedit inventore ipsum itaque laborum maxime minus, modi molestiae molestias mollitia officia officiis perspiciatis quasi quo tempore.', 'lorem 2', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-08-29 09:29:21', '2018-08-29 07:29:21', '', 14, 'http://stories.loc/thanks/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-08-29 10:23:00', '2018-08-29 08:23:00', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur cumque expedita odit. Delectus dolorum ea, eum id inventore natus nisi, officia placeat quam, repellendus sit totam ut! Ad adipisci aliquam aperiam blanditiis corporis culpa cum cumque cupiditate delectus dolorem eligendi est exercitationem expedita hic, laborum minima odit quas rem repellendus sed sunt suscipit ut vero voluptas voluptate. Animi commodi debitis doloremque doloribus eum excepturi facere illo molestiae nam, numquam omnis quaerat sapiente ut. Accusamus alias architecto dolores earum, eveniet, explicabo, illo iure minima nostrum nulla praesentium provident sed unde voluptas voluptatem. Architecto doloremque id inventore, itaque perferendis quae quas.', 'lorem', '', 'publish', 'closed', 'closed', '', 'lorem', '', '', '2018-08-29 10:23:00', '2018-08-29 08:23:00', '', 0, 'http://stories.loc/?p=16', 0, 'post', '', 0),
(17, 1, '2018-08-29 10:22:43', '2018-08-29 08:22:43', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur cumque expedita odit. Delectus dolorum ea, eum id inventore natus nisi, officia placeat quam, repellendus sit totam ut! Ad adipisci aliquam aperiam blanditiis corporis culpa cum cumque cupiditate delectus dolorem eligendi est exercitationem expedita hic, laborum minima odit quas rem repellendus sed sunt suscipit ut vero voluptas voluptate. Animi commodi debitis doloremque doloribus eum excepturi facere illo molestiae nam, numquam omnis quaerat sapiente ut. Accusamus alias architecto dolores earum, eveniet, explicabo, illo iure minima nostrum nulla praesentium provident sed unde voluptas voluptatem. Architecto doloremque id inventore, itaque perferendis quae quas.', 'lorem', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-08-29 10:22:43', '2018-08-29 08:22:43', '', 16, 'http://stories.loc/thanks/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-08-29 11:14:29', '2018-08-29 09:14:29', 'Один очень крупный банк сейчас вовсю внедряет прием оплаты бесконтактными картами Виза и Мастеркард. Учитесь у крупнейших игроков, как это делать «правильно».\r\nВо-первых, терминал для работы с картами выглядит точно так же как и пять лет назад. Мясистый такой калькулятор с термопринтером..', 'очень коммерческая тайна', '', 'publish', 'closed', 'closed', '', 'taina', '', '', '2018-08-29 16:47:29', '2018-08-29 14:47:29', '', 0, 'http://stories.loc/?p=18', 0, 'post', '', 0),
(19, 1, '2018-08-29 11:14:08', '2018-08-29 09:14:08', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, accusamus, ad asperiores aut dolore dolorem ea earum esse eum modi neque non quis quisquam quo quod repudiandae sit, temporibus ullam velit vero. Accusantium ad, architecto distinctio, eveniet facilis illo inventore iste minima nemo, nesciunt odio sed veritatis. Ad aspernatur culpa cumque deleniti fugiat hic inventore itaque, molestiae praesentium provident quam ratione reprehenderit sed, tempore ut? Corporis fugit itaque iusto magnam officia perspiciatis quam, voluptates? Accusamus aliquam assumenda consequatur eius explicabo impedit maiores nisi optio placeat quae repudiandae, sapiente, temporibus vel veniam veritatis, vero voluptatibus! Aliquid asperiores delectus deleniti distinctio et harum impedit, minima nulla! Animi commodi consectetur cupiditate debitis dolor doloremque enim error ex excepturi in laborum maiores, nostrum possimus quibusdam quis ratione rem suscipit vel velit veritatis. A est et fugit harum quam ratione, tempore vitae. Aspernatur cumque earum expedita illo incidunt inventore nisi omnis optio perspiciatis porro quas ratione, ullam voluptas. Adipisci beatae delectus deserunt in, incidunt magni neque nesciunt, optio quisquam saepe sed tenetur vero vitae. Cumque distinctio dolorum earum enim error est facilis, fuga harum iste itaque iusto labore laboriosam libero minima mollitia nemo neque nihil non obcaecati, odio odit officiis quam, quas reiciendis rem similique sunt suscipit ullam ut voluptates. A ab, culpa deleniti ea, harum ipsum laborum laudantium maiores maxime odit omnis optio quasi saepe temporibus ut voluptatem voluptatibus. Alias enim eos fuga fugit illum, labore nam obcaecati officiis perspiciatis praesentium quae quod, quos temporibus unde vitae! Ad, alias asperiores blanditiis, consectetur culpa facere minus modi nulla odio praesentium sequi, suscipit. Amet atque corporis cum cumque cupiditate ea enim est, et explicabo illo in ipsa, laboriosam nam necessitatibus nihil nobis, non nulla quibusdam recusandae sapiente veritatis vero vitae! Ab at est veniam. Ab accusantium aspernatur blanditiis dolores excepturi, fugit incidunt laborum necessitatibus nihil nostrum perspiciatis placeat possimus quae recusandae rem reprehenderit rerum! Atque culpa dolorem ipsa iste iure porro quas quos sed ut? Animi aut autem, cumque deleniti deserunt dicta distinctio dolor dolorem eligendi excepturi id illo labore laudantium maiores nisi obcaecati officia optio praesentium quas rem sapiente tempore ullam unde velit voluptas voluptate voluptates voluptatum. Aut culpa cum delectus eaque earum eius est expedita impedit incidunt iste magnam, magni officiis optio, perspiciatis quae quos ratione recusandae rem sapiente ut? Assumenda, dolor ex explicabo id ipsum iusto labore quidem sapiente sed voluptas! Animi ducimus fuga ipsum iure laudantium, libero necessitatibus officiis optio, porro quam recusandae repudiandae suscipit unde? Ad assumenda delectus eaque esse fugit, id incidunt ipsum maxime nemo numquam officia, rerum voluptatum! A ab aliquam asperiores assumenda culpa deleniti dicta dolor dolores dolorum eum, facere illo ipsam laborum minus nemo nesciunt nostrum omnis perspiciatis recusandae reprehenderit repudiandae saepe sint soluta sunt tempora tenetur totam ullam. Ab alias architecto asperiores aspernatur, assumenda consectetur consequuntur cumque dolorem eaque fuga fugiat illo iure laudantium mollitia necessitatibus nihil nisi obcaecati perspiciatis quae quidem quisquam quos repellendus rerum saepe sed similique tempora tenetur unde veritatis voluptatum! Facilis, quis, repudiandae! A blanditiis corporis culpa cum cupiditate delectus dolores, expedita illum, ipsa iusto molestiae nesciunt nostrum provident quae quibusdam quis quos repellat saepe sapiente sed soluta veniam, vitae? Aspernatur ipsam, sit? Asperiores quisquam, repellat? Accusamus aliquam debitis deleniti doloribus ipsa libero optio, rerum? A ab adipisci aliquid animi asperiores assumenda deserunt, dolorem dolores eveniet iusto mollitia nemo nobis officia reprehenderit voluptatibus. Alias, deserunt dolor dolore ea, ex illum in ipsa itaque nesciunt nobis perferendis porro provident quaerat, reiciendis reprehenderit tempore vero! Ad neque, tempore! Accusantium amet aspernatur at consectetur debitis dolorem dolorum eius, eligendi incidunt inventore ipsa ipsum libero maiores nobis nulla odit perspiciatis possimus quasi, quisquam quo quod ratione repellat unde velit voluptates. Architecto asperiores autem dicta eum neque obcaecati repellat. Culpa cum delectus doloribus esse hic illum maxime, nesciunt odit porro ullam. Aperiam atque aut commodi consequatur magnam maxime neque, nihil, nostrum officiis quasi repudiandae rerum soluta unde. Aliquid debitis doloremque earum eveniet id laudantium, magni nobis quasi quidem repudiandae. Aperiam at aut blanditiis commodi cupiditate, dolore facilis nisi odio possimus reiciendis soluta sunt. Cupiditate deserunt, eos iste nostrum quo tempore vel? Accusantium aliquam aperiam corporis culpa cupiditate debitis dolor dolore doloribus, ea eius esse, eum eveniet explicabo impedit inventore iusto laboriosam minima nesciunt numquam perspiciatis possimus, quae quisquam rem saepe sint tempore veritatis vitae? Animi consequatur culpa dolor esse eum, exercitationem expedita explicabo facere facilis incidunt inventore ipsum iste itaque labore maiores, maxime molestias odio odit omnis pariatur provident quaerat quidem, quis totam ullam veniam voluptatem voluptates. Aperiam hic illo inventore non nostrum. Aperiam debitis dolores facere iste laboriosam nihil tempore voluptas. A accusantium ad alias animi atque commodi consequuntur corporis cum delectus dolorum fuga, fugit hic id iure nemo non odio omnis optio praesentium quam quibusdam quidem ratione tempore ullam veniam veritatis voluptate voluptatem? A ad alias, aspernatur consequatur cum cupiditate delectus dignissimos ducimus est facilis iste, neque nostrum officia placeat quibusdam quidem, reiciendis repellat tenetur vel voluptatibus! Adipisci aspernatur commodi corporis, deleniti deserunt dolores ducimus facere laudantium modi neque obcaecati quae quam quas quisquam reprehenderit tempora tenetur unde ut. Aperiam, aut consequatur dolore eos expedita fugiat magni odio, omnis perferendis porro, quia repellat repellendus sunt. Atque consequatur doloribus, eligendi eveniet ex, ipsum itaque minima molestiae mollitia nemo odio officia pariatur perspiciatis quo similique sint tempore unde veniam? A ab, aut autem cumque cupiditate deleniti dicta dolore earum eligendi exercitationem explicabo fugiat fugit laborum libero modi nemo nesciunt nobis nulla numquam odio porro possimus praesentium quasi, quod reiciendis sed sint sunt tenetur totam veritatis? Adipisci, amet delectus deleniti eaque, eos, et eum facilis fugit id illo laudantium maiores maxime minima minus molestias natus numquam pariatur provident quia quos recusandae sequi soluta tenetur ut velit veritatis voluptates voluptatibus. Animi atque consequatur cupiditate delectus dolor est et eum, ex facere harum ipsam iusto maiores maxime mollitia nam, nihil nostrum omnis pariatur praesentium quidem quod quos ratione repellat sequi tempora tenetur, totam ullam veniam vitae voluptatem! Accusantium animi architecto atque, blanditiis, consequatur, delectus ducimus eveniet fugit inventore minima numquam officiis possimus praesentium quod recusandae rem velit veniam voluptas?', 'lorem12', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-08-29 11:14:08', '2018-08-29 09:14:08', '', 18, 'http://stories.loc/thanks/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-08-29 16:47:17', '2018-08-29 14:47:17', 'Один очень крупный банк сейчас вовсю внедряет прием оплаты бесконтактными картами Виза и Мастеркард. Учитесь у крупнейших игроков, как это делать «правильно».\r\nВо-первых, терминал для работы с картами выглядит точно так же как и пять лет назад. Мясистый такой калькулятор с термопринтером..', 'очень коммерческая тайна', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-08-29 16:47:17', '2018-08-29 14:47:17', '', 18, 'http://stories.loc/thanks/18-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpus_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(21, 1, '2018-08-29 17:42:41', '2018-08-29 15:42:41', '<strong>Користуючись Сайтом </strong><strong><a href=\"https://secrets.1plus1.ua\">https://secrets.1plus1.ua</a></strong><strong>  Ви автоматично підтверджуєте свою згоду з наведеними нижче правилами користування Сайтом. У разі, якщо Вам не виповнилось 18 років, використання сайту Вами автоматично підтверждує згоду Ваших батьків (опікунів/піклувальників) з цими Правилами. </strong>\r\n\r\n<strong> </strong>\r\n\r\n<strong>Правила користування Сайтом </strong>https://secrets.1plus1.ua<strong>. </strong>\r\n\r\n<strong> </strong>\r\n\r\nЦі Правила створені з метою впорядкування користування сайтом https://secrets.1plus1.ua (далі за текстом Сайт). Правила є обов\'язковими для виконання всіма Користувачами Сайту. У разі, якщо Ви незгодні із нижчезазначеними Правилами, не використовуйте Сайт.\r\n\r\nУвага, у разі якщо Вам не виповнилось 18 років, повідомте своїх батьків (опікунів/піклувальників) про те, що Ви користуєтесь даним Сайтом та запросіть їх ознайомитись з даними правилами.\r\n\r\n&nbsp;\r\n<ol>\r\n 	<li><strong>Користування сайтом.</strong></li>\r\n</ol>\r\n&nbsp;\r\n\r\nВикористання Сайту  автоматично означає Вашу згоду з даними Правилами. Користувач, приймаючи умови, викладені в цих Правилах, зобов\'язується їх дотримуватись або припинити використання Сайту. Користувач підтверджує, що він є правоздатним і дієздатним.\r\n\r\nУ разі , якщо Користувач не є повнолітньою особою, відповідальність  за його дії  несуть батьки (опікуни, піклувальники).\r\n\r\nУ разі якщо на думку батьків (опікунів, піклувальників) користування сайту є небажаним для неповнолітнього Користувача чи/або може завдати шкоди його моральному та/чи духовному розвитку, батьки (опікуни, піклувальники ) мають право обмежити доступ гаджетів дитини до Сайту.\r\n\r\n&nbsp;\r\n\r\n<em>Примітка: згідно ч.2  ст.150 Сімейного кодексу України батьки зобов’язані піклуватись про здоров’я дитини і її фізичний, духовний та моральний розвиток. </em>\r\n\r\n&nbsp;\r\n<ol>\r\n 	<li><strong>Публікація історій Користувачів  на Сайті</strong></li>\r\n</ol>\r\n&nbsp;\r\n\r\nКористувачі Сайту мають право присилати на електронну адресу адміністрації Сайту <a href=\"mailto:school.secrets@1plus1.tv\">school.secrets@1plus1.tv</a> текстові матеріали (надалі Історії) , для подальшого розміщення  на сайті.\r\n\r\n&nbsp;\r\n\r\nВимоги до Історій:\r\n\r\n&nbsp;\r\n\r\nВсі   текстові матеріали (Історії) надані  Користувачами для розміщення на Сайті  відображають виключно думку Користувачів, що їх надали. Адміністрація Сайту не поділяє і не підтримує ці думки, і не є гарантом відповідності розміщених Історій дійсності та  законодавству України. Історії не мають містити посилання на реальних осіб, місця подій, назву закладів та міст. у разі якщо у Історії  на думку Адміністрації Сайту буде міститися  вищезазначена інформація, Адміністрація залишає за собою право видалити/та або замінити такі посилання на вигадані.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту здійснює премодерацію та редагування наданих  Користувачами Історій, а також перевіряє зміст цих Історій і здійснює перевірку Історій (файлів) на відповідність стилю та концепції Сайту, наявність шкідливого програмного забезпечення (вірусів) здатного завдати шкоди вашому комп\'ютеру, але не несе відповідальність у випадку отримання вами даних  вірусів з Сайту.\r\n\r\n&nbsp;\r\n\r\nУсі надані для розміщення Історій вважаються власністю Користувачів що їх розмістили до тих пір, поки не буде підстав вважати інакше. Надсилаючи Історії для розміщення  Користувач гарантує, що він є власником всіх та будь-яких  авторських   прав на Історію.\r\n\r\nКористувачі Сайту не отримують жодних прав на використання матеріалів, розміщених іншими Користувачами, і несуть повну відповідальність перед власником Історії за їх неправомірне використання.\r\n\r\n&nbsp;\r\n\r\nВсі Історії, надані Користувачами, надаються іншим Користувачам виключно для приватного перегляду на сторінках Сайту та поширення на своїх сторінках в соціальних мережах з правом подальшого репосту (повторної публікації)  в соціальних мережах іншими користувачами. . Користувачі Сайту не мають права копіювати, відтворювати, поширювати, передавати, транслювати, відображати, ліцензувати або іншим чином використовувати будь-які Історії, розміщені на Сайті крім способів використання, зазначених у даному пункті Правил.\r\n\r\n&nbsp;\r\n\r\nНадсилаючи Історію для розміщення на Сайті Користувач надає Сайту безоплатне право на використання, оприлюднення, відтворення, розповсюдження, створення похідних робіт, відображення та виконання з правом передачі таких прав третім особам на території всіх країни Світу протягом всього строку дії авторських прав на  Історії згідно умов даних Правил.\r\n\r\nНадаючи Історії для розміщення на Сайті Користувач автоматично надає згоду на їх використання шляхом розміщення в мережі Інтернет (в тому числі соціальних мережах), на здійснення редагування, переробку та/чи адаптацію,  зміну чи видалення всіх даних, що можуть ідентифікувати Користувача чи інших осіб згадуваних в Історії, створення інших Об’єктів авторського права з використанням наданих Користувачем Історій.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту має право без повідомлення Користувача і пояснення причин в будь-який час видалити будь-які Історії (файли) з Сайту, в тому числі Історії (файли) можуть бути видалені в випадку   скарг на їх розміщення від третіх осіб. У разі виникнення будь-яких претензій третіх осіб щодо порушення будь-яких авторських прав, інших майнових та/або немайнових прав, Користувач зобов\'язаний в повному обсязі відшкодувати збитки Сайту.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту не несе відповідальності за використання (як правомірне, так і неправомірне) третіми особами Історій, розміщених на Сайті, включаючи їх відтворення та розповсюдження, здійснені як в рамках ресурсу, так і іншими можливими способами, а також за будь-які наслідки подібного використання Історій.\r\n\r\n&nbsp;\r\n\r\nРішення щодо відповідності Історій  вимогам даним Правил приймає Модератор і/або Адміністратор Сайту на свій розсуд і має повноваження редагувати,  блокувати, переміщати, закривати або видаляти матеріал.\r\n\r\n&nbsp;\r\n<ol start=\"3\">\r\n 	<li><strong> Права Адміністрації Сайту</strong></li>\r\n</ol>\r\nАдміністрація залишає за собою право:\r\n\r\n- Блокувати і видаляти Історії, якщо ці Історії не відповідають вимогам і тематиці Сайту;\r\n\r\n- видаляти будь-які Історії  на власний розсуд та/або за наявності претензій щодо порушення авторських   прав;\r\n\r\n- Змінювати дані Правила та/або будь-які умови використання ресурсу без повідомлення  користувачів. Зміни до Правил будуть опубліковані на сторінках Сайту.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<ol start=\"4\">\r\n 	<li><strong> Гарантії Користувача</strong></li>\r\n</ol>\r\nКористувач, гарантує, що всі Історії, надані для розміщення на Сайті,   є оригінальними, Він є законним власником всіх авторських прав на Історії, і надсилаючи їх на адресу Адміністрації Сайту правомірно надає  Сайту належні йому права на використання Історій у відповідності до умов цих Правил.\r\n\r\nНадані відповідно до цих Правил права вільні від зобов\'язань перед третіми особами. Історії не містять  будь-яких матеріалів, що порушують авторське право, інші права інтелектуальної власності, договірні права, цивільно-правові права та/або інші права третіх осіб.\r\n\r\nдо Користувача немає і не передбачається ніяких претензій або позовів з боку третіх осіб, які могли б прямо або побічно вплинути на отримані Сайтом згідно з цими Правилами права та повноваження.\r\n\r\nАдміністрація Сайту може використовувати Історії без отримання додаткових дозволів від Користувача та/або будь-яких третіх осіб і без здійснення будь-яких виплат Користувачу та/або будь-яким третім особам та без зазначення Автора чи будь-яких даних про Автора, що були надані ним при надсиланні Історії.\r\n\r\nУ разі пред\'явлення Адміністрації Сайту та/або Користувачу претензій та/або позовів, безпосередньо пов\'язаних з використанням Історій, наданих  Користувачем, недотриманням Користувачем Правил користування Сайтом Користувач зобов\'язується самостійно (без залучення Адміністрації Сайту) врегулювати їх від свого імені і несе відповідальність за такими претензіями та/або позовами своїми силами і за свій рахунок. У разі якщо внаслідок задоволення пред\'явлених Сайту та/або Користувачу претензій та/або позовів, безпосередньо пов\'язаних з укладанням та/або виконанням Сайтом Договору, використанням Історій, недотриманням Користувачем цих  Правил, Сайту будуть нанесені збитки, Користувач зобов\'язується відшкодувати Сайту такі збитки в повному обсязі (включаючи упущену вигоду).\r\n\r\nКористувач гарантує що надіслані ним файли не <strong> </strong>містять вірусів або будь-яких інших програмних продуктів що містять шкідливий код.\r\n\r\n&nbsp;\r\n<ol start=\"5\">\r\n 	<li><strong> Інші умови</strong></li>\r\n</ol>\r\nКористувач, використовуючи Сайт тим самим автоматично підтверджує, що ознайомився та погоджується з умовами цих Правил, які вважаються підписаними Користувачем по факту користування сайтом   і жодна із умов цих Правил не суперечить інтересам Користувача.\r\n\r\nЗгідно з цими Правилами Користувач не набуває права вимоги щодо оплати Адміністрацією Сайту наданих прав інтелектуальної власності.\r\n\r\nВикористання тим чи іншим способом Історій, наданих Користувачем, є правом, а не зобов\'язанням Адміністрації Сайту, і ми не несемо ніякої відповідальності перед Користувачем за невикористання таких Історій.\r\n\r\nРесурс має право на власний розсуд вирішувати питання про зазначення імені Користувача при використанні Історій згідно з умовами цього Договору.\r\n<ol start=\"6\">\r\n 	<li><strong> Порушення</strong></li>\r\n</ol>\r\nПорушенням даних Правил вважається надання  будь-яких матеріалів, що підпадають під категорії: матеріали інформаційного характеру, які порушують права третіх осіб на патент, торговий знак, комерційну таємницю, авторські права або інші права власності;\r\n\r\n&nbsp;\r\n<ol start=\"7\">\r\n 	<li><strong> Відповідальність Адміністрації Сайту</strong></li>\r\n</ol>\r\nАдміністрація Сайту не гарантує відповідність Сайту цілям і очікуванням Користувача, його безперебійну і безпомилкову роботу, а також збереження наданих  Користувачем Історій(файлів).\r\n\r\nАдміністрація Ресурсу залишає за собою право, без попереднього повідомлення, видалити будь-які (файли) з Сайту або тимчасово обмежити доступ до них. Адміністрація не несе відповідальності за неможливість використання в повному обсязі функцій Сайту.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту має право розміщувати рекламні оголошення на розміщених Історіях та/або на сторінках Сайту, розміщувати засоби для підрахунку кількості переглядів Історій Користувачами Сайту, створювати інші сервіси на сторінках Сайту з розміщеними на них Історіями.\r\n\r\nАдміністрація ресурсу не дає жодних гарантій щодо доступності Сайту у всіх країнах Світу. Користувачі Ресурсу несуть повну відповідальність за дотримання законодавства України та міжнародного законодавства при використанні Сайту.\r\n\r\n&nbsp;\r\n<ol start=\"8\">\r\n 	<li><strong> Права на використання Історій </strong></li>\r\n</ol>\r\nКористувач, надаючи Історії для публікації на Сайті, передає Адміністрації Сайту майнові права на використання Історій, а саме:\r\n\r\n- Право на оприлюднення (випуск у світ, розкриття публіці), тобто право вчиняти дії, які вперше роблять Історії, доступним для публіки шляхом опублікування, публічного виконання, публічного показу (тобто право на демонстрацію його оригіналів (складових частин) або примірників будь-яким способом необмеженому колу осіб), публічної демонстрації, публічного повідомлення і т.п.\r\n\r\n- Права на публічний показ і публічне сповіщення (доведення до загального відома) надісланих Користувачем Історій будь-яким візуальним способом та/або для будь-якого використання за допомогою   засобів мережі Інтернет);\r\n\r\n- Право доводити до загального відома публіки надіслані файли, таким чином, що її представники можуть отримувати доступ до Історій з будь-якого місця та у будь-який час за власним вибором, включаючи право на використання Історій в мережі Інтернет (включаючи відтворення та розповсюдження) будь-яким чином та будь-яким способом;\r\n\r\n- Право на самостійне здійснення   очищення Історій  від будь-яких видів реклами, на зміну  (оформлення, тексту) та інших дій що є переробкою та /адаптацією Історій;\r\n\r\n- Право здійснювати накладення графічного зображення товарного знаку (логотипів) Адміністрації Сайтів, а також Рекламодавців чи Спонсорів;\r\n\r\n- Право на повторне оприлюднення Історій , якщо воно здійснюється іншою організацією, ніж та, яка здійснила перше оприлюднення;\r\n\r\n- Дія прав наданих Користувачем згідно даних Правил розповсюджується на території  країн всього світу;\r\n\r\n- Права передаються Користувачем Сайту з моменту надсилання  Користувачем Історії на  електронну адресу <a href=\"mailto:school.secrets@1plus1.tv\">school.secrets@1plus1.tv</a> на весь термін дії авторського права відповідно до чинного законодавства про авторське право .\r\n\r\n&nbsp;\r\n<ol start=\"9\">\r\n 	<li><strong> Порушення авторських прав</strong></li>\r\n</ol>\r\nЯкщо Користувач  вважає, що його захищена авторськими правами Історія опубліковано на Сайті без дозволу, або порушено його авторські, суміжні та/чи інші права, - має право особисто або через уповноваженого представника надіслати сповіщення про порушення його авторських прав з наданням підтвердження факту порушення.\r\n\r\n<strong>Застерігаємо, що надсилання неправдивих (необґрунтованих) претензій може призвести до блокування дії Вашого облікового запису. </strong>\r\n\r\nМи приймаємо сповіщення про порушення авторських прав <a href=\"http://www.youtube.com/yt/copyright/uk/copyright-complaint-requirements.html\">у довільній формі</a>, надіслані <a href=\"http://www.youtube.com/yt/copyright/uk/copyright-contact-info.html\">поштою, факсом або електронною поштою</a>.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-29 17:42:41', '2018-08-29 15:42:41', '', 3, 'http://stories.loc/thanks/3-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-29 17:52:16', '2018-08-29 15:52:16', '<strong>Користуючись Сайтом </strong><strong><a href=\"https://secrets.1plus1.ua\">https://secrets.1plus1.ua</a></strong><strong>  Ви автоматично підтверджуєте свою згоду з наведеними нижче правилами користування Сайтом. У разі, якщо Вам не виповнилось 18 років, використання сайту Вами автоматично підтверждує згоду Ваших батьків (опікунів/піклувальників) з цими Правилами. </strong>\r\n\r\n<strong> </strong>\r\n\r\n<strong>Правила користування Сайтом </strong>https://secrets.1plus1.ua<strong>. </strong>\r\n\r\n<strong> </strong>\r\n\r\nЦі Правила створені з метою впорядкування користування сайтом https://secrets.1plus1.ua (далі за текстом Сайт). Правила є обов\'язковими для виконання всіма Користувачами Сайту. У разі, якщо Ви незгодні із нижчезазначеними Правилами, не використовуйте Сайт.\r\n\r\nУвага, у разі якщо Вам не виповнилось 18 років, повідомте своїх батьків (опікунів/піклувальників) про те, що Ви користуєтесь даним Сайтом та запросіть їх ознайомитись з даними правилами.\r\n\r\n&nbsp;\r\n<ol>\r\n 	<li><strong>Користування сайтом.</strong></li>\r\n</ol>\r\n&nbsp;\r\n\r\nВикористання Сайту  автоматично означає Вашу згоду з даними Правилами. Користувач, приймаючи умови, викладені в цих Правилах, зобов\'язується їх дотримуватись або припинити використання Сайту. Користувач підтверджує, що він є правоздатним і дієздатним.\r\n\r\nУ разі , якщо Користувач не є повнолітньою особою, відповідальність  за його дії  несуть батьки (опікуни, піклувальники).\r\n\r\nУ разі якщо на думку батьків (опікунів, піклувальників) користування сайту є небажаним для неповнолітнього Користувача чи/або може завдати шкоди його моральному та/чи духовному розвитку, батьки (опікуни, піклувальники ) мають право обмежити доступ гаджетів дитини до Сайту.\r\n\r\n&nbsp;\r\n\r\n<em>Примітка: згідно ч.2  ст.150 Сімейного кодексу України батьки зобов’язані піклуватись про здоров’я дитини і її фізичний, духовний та моральний розвиток. </em>\r\n\r\n&nbsp;\r\n<ol>\r\n 	<li><strong>Публікація історій Користувачів  на Сайті</strong></li>\r\n</ol>\r\n&nbsp;\r\n\r\nКористувачі Сайту мають право присилати на електронну адресу адміністрації Сайту <a href=\"mailto:school.secrets@1plus1.tv\">school.secrets@1plus1.tv</a> текстові матеріали (надалі Історії) , для подальшого розміщення  на сайті.\r\n\r\n&nbsp;\r\n\r\nВимоги до Історій:\r\n\r\n&nbsp;\r\n\r\nВсі   текстові матеріали (Історії) надані  Користувачами для розміщення на Сайті  відображають виключно думку Користувачів, що їх надали. Адміністрація Сайту не поділяє і не підтримує ці думки, і не є гарантом відповідності розміщених Історій дійсності та  законодавству України. Історії не мають містити посилання на реальних осіб, місця подій, назву закладів та міст. у разі якщо у Історії  на думку Адміністрації Сайту буде міститися  вищезазначена інформація, Адміністрація залишає за собою право видалити/та або замінити такі посилання на вигадані.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту здійснює премодерацію та редагування наданих  Користувачами Історій, а також перевіряє зміст цих Історій і здійснює перевірку Історій (файлів) на відповідність стилю та концепції Сайту, наявність шкідливого програмного забезпечення (вірусів) здатного завдати шкоди вашому комп\'ютеру, але не несе відповідальність у випадку отримання вами даних  вірусів з Сайту.\r\n\r\n&nbsp;\r\n\r\nУсі надані для розміщення Історій вважаються власністю Користувачів що їх розмістили до тих пір, поки не буде підстав вважати інакше. Надсилаючи Історії для розміщення  Користувач гарантує, що він є власником всіх та будь-яких  авторських   прав на Історію.\r\n\r\nКористувачі Сайту не отримують жодних прав на використання матеріалів, розміщених іншими Користувачами, і несуть повну відповідальність перед власником Історії за їх неправомірне використання.\r\n\r\n&nbsp;\r\n\r\nВсі Історії, надані Користувачами, надаються іншим Користувачам виключно для приватного перегляду на сторінках Сайту та поширення на своїх сторінках в соціальних мережах з правом подальшого репосту (повторної публікації)  в соціальних мережах іншими користувачами. . Користувачі Сайту не мають права копіювати, відтворювати, поширювати, передавати, транслювати, відображати, ліцензувати або іншим чином використовувати будь-які Історії, розміщені на Сайті крім способів використання, зазначених у даному пункті Правил.\r\n\r\n&nbsp;\r\n\r\nНадсилаючи Історію для розміщення на Сайті Користувач надає Сайту безоплатне право на використання, оприлюднення, відтворення, розповсюдження, створення похідних робіт, відображення та виконання з правом передачі таких прав третім особам на території всіх країни Світу протягом всього строку дії авторських прав на  Історії згідно умов даних Правил.\r\n\r\nНадаючи Історії для розміщення на Сайті Користувач автоматично надає згоду на їх використання шляхом розміщення в мережі Інтернет (в тому числі соціальних мережах), на здійснення редагування, переробку та/чи адаптацію,  зміну чи видалення всіх даних, що можуть ідентифікувати Користувача чи інших осіб згадуваних в Історії, створення інших Об’єктів авторського права з використанням наданих Користувачем Історій.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту має право без повідомлення Користувача і пояснення причин в будь-який час видалити будь-які Історії (файли) з Сайту, в тому числі Історії (файли) можуть бути видалені в випадку   скарг на їх розміщення від третіх осіб. У разі виникнення будь-яких претензій третіх осіб щодо порушення будь-яких авторських прав, інших майнових та/або немайнових прав, Користувач зобов\'язаний в повному обсязі відшкодувати збитки Сайту.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту не несе відповідальності за використання (як правомірне, так і неправомірне) третіми особами Історій, розміщених на Сайті, включаючи їх відтворення та розповсюдження, здійснені як в рамках ресурсу, так і іншими можливими способами, а також за будь-які наслідки подібного використання Історій.\r\n\r\n&nbsp;\r\n\r\nРішення щодо відповідності Історій  вимогам даним Правил приймає Модератор і/або Адміністратор Сайту на свій розсуд і має повноваження редагувати,  блокувати, переміщати, закривати або видаляти матеріал.\r\n\r\n&nbsp;\r\n<ol start=\"3\">\r\n 	<li><strong> Права Адміністрації Сайту</strong></li>\r\n</ol>\r\nАдміністрація залишає за собою право:\r\n\r\n- Блокувати і видаляти Історії, якщо ці Історії не відповідають вимогам і тематиці Сайту;\r\n\r\n- видаляти будь-які Історії  на власний розсуд та/або за наявності претензій щодо порушення авторських   прав;\r\n\r\n- Змінювати дані Правила та/або будь-які умови використання ресурсу без повідомлення  користувачів. Зміни до Правил будуть опубліковані на сторінках Сайту.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<ol start=\"4\">\r\n 	<li><strong> Гарантії Користувача</strong></li>\r\n</ol>\r\nКористувач, гарантує, що всі Історії, надані для розміщення на Сайті,   є оригінальними, Він є законним власником всіх авторських прав на Історії, і надсилаючи їх на адресу Адміністрації Сайту правомірно надає  Сайту належні йому права на використання Історій у відповідності до умов цих Правил.\r\n\r\nНадані відповідно до цих Правил права вільні від зобов\'язань перед третіми особами. Історії не містять  будь-яких матеріалів, що порушують авторське право, інші права інтелектуальної власності, договірні права, цивільно-правові права та/або інші права третіх осіб.\r\n\r\nдо Користувача немає і не передбачається ніяких претензій або позовів з боку третіх осіб, які могли б прямо або побічно вплинути на отримані Сайтом згідно з цими Правилами права та повноваження.\r\n\r\nАдміністрація Сайту може використовувати Історії без отримання додаткових дозволів від Користувача та/або будь-яких третіх осіб і без здійснення будь-яких виплат Користувачу та/або будь-яким третім особам та без зазначення Автора чи будь-яких даних про Автора, що були надані ним при надсиланні Історії.\r\n\r\nУ разі пред\'явлення Адміністрації Сайту та/або Користувачу претензій та/або позовів, безпосередньо пов\'язаних з використанням Історій, наданих  Користувачем, недотриманням Користувачем Правил користування Сайтом Користувач зобов\'язується самостійно (без залучення Адміністрації Сайту) врегулювати їх від свого імені і несе відповідальність за такими претензіями та/або позовами своїми силами і за свій рахунок. У разі якщо внаслідок задоволення пред\'явлених Сайту та/або Користувачу претензій та/або позовів, безпосередньо пов\'язаних з укладанням та/або виконанням Сайтом Договору, використанням Історій, недотриманням Користувачем цих  Правил, Сайту будуть нанесені збитки, Користувач зобов\'язується відшкодувати Сайту такі збитки в повному обсязі (включаючи упущену вигоду).\r\n\r\nКористувач гарантує що надіслані ним файли не <strong> </strong>містять вірусів або будь-яких інших програмних продуктів що містять шкідливий код.\r\n\r\n&nbsp;\r\n<ol start=\"5\">\r\n 	<li><strong> Інші умови</strong></li>\r\n</ol>\r\nКористувач, використовуючи Сайт тим самим автоматично підтверджує, що ознайомився та погоджується з умовами цих Правил, які вважаються підписаними Користувачем по факту користування сайтом   і жодна із умов цих Правил не суперечить інтересам Користувача.\r\n\r\nЗгідно з цими Правилами Користувач не набуває права вимоги щодо оплати Адміністрацією Сайту наданих прав інтелектуальної власності.\r\n\r\nВикористання тим чи іншим способом Історій, наданих Користувачем, є правом, а не зобов\'язанням Адміністрації Сайту, і ми не несемо ніякої відповідальності перед Користувачем за невикористання таких Історій.\r\n\r\nРесурс має право на власний розсуд вирішувати питання про зазначення імені Користувача при використанні Історій згідно з умовами цього Договору.\r\n<ol start=\"6\">\r\n 	<li><strong> Порушення</strong></li>\r\n</ol>\r\nПорушенням даних Правил вважається надання  будь-яких матеріалів, що підпадають під категорії: матеріали інформаційного характеру, які порушують права третіх осіб на патент, торговий знак, комерційну таємницю, авторські права або інші права власності;\r\n\r\n&nbsp;\r\n<ol start=\"7\">\r\n 	<li><strong> Відповідальність Адміністрації Сайту</strong></li>\r\n</ol>\r\nАдміністрація Сайту не гарантує відповідність Сайту цілям і очікуванням Користувача, його безперебійну і безпомилкову роботу, а також збереження наданих  Користувачем Історій(файлів).\r\n\r\nАдміністрація Ресурсу залишає за собою право, без попереднього повідомлення, видалити будь-які (файли) з Сайту або тимчасово обмежити доступ до них. Адміністрація не несе відповідальності за неможливість використання в повному обсязі функцій Сайту.\r\n\r\n&nbsp;\r\n\r\nАдміністрація Сайту має право розміщувати рекламні оголошення на розміщених Історіях та/або на сторінках Сайту, розміщувати засоби для підрахунку кількості переглядів Історій Користувачами Сайту, створювати інші сервіси на сторінках Сайту з розміщеними на них Історіями.\r\n\r\nАдміністрація ресурсу не дає жодних гарантій щодо доступності Сайту у всіх країнах Світу. Користувачі Ресурсу несуть повну відповідальність за дотримання законодавства України та міжнародного законодавства при використанні Сайту.\r\n\r\n&nbsp;\r\n<ol start=\"8\">\r\n 	<li><strong> Права на використання Історій </strong></li>\r\n</ol>\r\nКористувач, надаючи Історії для публікації на Сайті, передає Адміністрації Сайту майнові права на використання Історій, а саме:\r\n\r\n- Право на оприлюднення (випуск у світ, розкриття публіці), тобто право вчиняти дії, які вперше роблять Історії, доступним для публіки шляхом опублікування, публічного виконання, публічного показу (тобто право на демонстрацію його оригіналів (складових частин) або примірників будь-яким способом необмеженому колу осіб), публічної демонстрації, публічного повідомлення і т.п.\r\n\r\n- Права на публічний показ і публічне сповіщення (доведення до загального відома) надісланих Користувачем Історій будь-яким візуальним способом та/або для будь-якого використання за допомогою   засобів мережі Інтернет);\r\n\r\n- Право доводити до загального відома публіки надіслані файли, таким чином, що її представники можуть отримувати доступ до Історій з будь-якого місця та у будь-який час за власним вибором, включаючи право на використання Історій в мережі Інтернет (включаючи відтворення та розповсюдження) будь-яким чином та будь-яким способом;\r\n\r\n- Право на самостійне здійснення   очищення Історій  від будь-яких видів реклами, на зміну  (оформлення, тексту) та інших дій що є переробкою та /адаптацією Історій;\r\n\r\n- Право здійснювати накладення графічного зображення товарного знаку (логотипів) Адміністрації Сайтів, а також Рекламодавців чи Спонсорів;\r\n\r\n- Право на повторне оприлюднення Історій , якщо воно здійснюється іншою організацією, ніж та, яка здійснила перше оприлюднення;\r\n\r\n- Дія прав наданих Користувачем згідно даних Правил розповсюджується на території  країн всього світу;\r\n\r\n- Права передаються Користувачем Сайту з моменту надсилання  Користувачем Історії на  електронну адресу <a href=\"mailto:school.secrets@1plus1.tv\">school.secrets@1plus1.tv</a> на весь термін дії авторського права відповідно до чинного законодавства про авторське право .\r\n\r\n&nbsp;\r\n<ol start=\"9\">\r\n 	<li><strong> Порушення авторських прав</strong></li>\r\n</ol>\r\nЯкщо Користувач  вважає, що його захищена авторськими правами Історія опубліковано на Сайті без дозволу, або порушено його авторські, суміжні та/чи інші права, - має право особисто або через уповноваженого представника надіслати сповіщення про порушення його авторських прав з наданням підтвердження факту порушення.\r\n\r\n<strong>Застерігаємо, що надсилання неправдивих (необґрунтованих) претензій може призвести до блокування дії Вашого облікового запису. </strong>\r\n\r\nМи приймаємо сповіщення про порушення авторських прав <a href=\"http://www.youtube.com/yt/copyright/uk/copyright-complaint-requirements.html\">у довільній формі</a>, надіслані <a href=\"http://www.youtube.com/yt/copyright/uk/copyright-contact-info.html\">поштою, факсом або електронною поштою</a>.\r\n\r\n&nbsp;', 'Правила користування сайтом', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-29 17:52:16', '2018-08-29 15:52:16', '', 3, 'http://stories.loc/thanks/3-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-08-30 14:33:42', '2018-08-30 12:33:42', 'Спасибо вам за внимание', 'Заголовок', '', 'publish', 'closed', 'closed', '', '%d0%b7%d0%b0%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%be%d0%ba', '', '', '2018-08-30 14:33:42', '2018-08-30 12:33:42', '', 0, 'http://stories.loc/?p=23', 0, 'post', '', 0),
(24, 1, '2018-08-30 14:32:59', '2018-08-30 12:32:59', 'Спасибо вам за внимание', 'Заголовок', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-08-30 14:32:59', '2018-08-30 12:32:59', '', 23, 'http://stories.loc/thanks/23-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_termmeta`
--

CREATE TABLE `wpus_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_terms`
--

CREATE TABLE `wpus_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_terms`
--

INSERT INTO `wpus_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Вдячність', 'thanks', 0),
(2, 'Нещасливе кохання', 'withoutlove', 0),
(3, 'Школа моєї мрії', 'perfectschool', 0),
(4, 'кохання', '%d0%ba%d0%be%d1%85%d0%b0%d0%bd%d0%bd%d1%8f', 0),
(5, 'любов', '%d0%bb%d1%8e%d0%b1%d0%be%d0%b2', 0),
(6, 'біль', '%d0%b1%d1%96%d0%bb%d1%8c', 0),
(7, 'lorem', 'lorem', 0),
(8, 'ipsun', 'ipsun', 0),
(9, 'lol', 'lol', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_term_relationships`
--

CREATE TABLE `wpus_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_term_relationships`
--

INSERT INTO `wpus_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(10, 2, 0),
(10, 4, 0),
(10, 5, 0),
(10, 6, 0),
(12, 1, 0),
(12, 7, 0),
(12, 8, 0),
(14, 3, 0),
(14, 7, 0),
(14, 8, 0),
(16, 2, 0),
(18, 2, 0),
(18, 7, 0),
(18, 9, 0),
(23, 1, 0),
(23, 7, 0),
(23, 9, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_term_taxonomy`
--

CREATE TABLE `wpus_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_term_taxonomy`
--

INSERT INTO `wpus_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Тема вдячності', 0, 2),
(2, 2, 'category', 'Тема нещасливого кохання', 0, 3),
(3, 3, 'category', 'Тема школи моєї мрії', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 4),
(8, 8, 'post_tag', '', 0, 2),
(9, 9, 'post_tag', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_ulike`
--

CREATE TABLE `wpus_ulike` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wpus_ulike`
--

INSERT INTO `wpus_ulike` (`id`, `post_id`, `date_time`, `ip`, `user_id`, `status`) VALUES
(1, 18, '2018-08-29 17:55:33', '127.0.0.1', '1', 'unlike'),
(2, 16, '2018-08-29 17:55:36', '127.0.0.1', '1', 'like'),
(3, 12, '2018-08-29 18:03:11', '127.0.0.1', '1', 'like'),
(4, 14, '2018-08-30 11:20:57', '127.0.0.1', '1', 'unlike');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_ulike_activities`
--

CREATE TABLE `wpus_ulike_activities` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_ulike_comments`
--

CREATE TABLE `wpus_ulike_comments` (
  `id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_ulike_forums`
--

CREATE TABLE `wpus_ulike_forums` (
  `id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_usermeta`
--

CREATE TABLE `wpus_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_usermeta`
--

INSERT INTO `wpus_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'myschooladmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpus_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpus_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"05d185855d4ead59fd5775361d51c9ac3b376fcf0b704831950c82f6fca43f6e\";a:4:{s:10:\"expiration\";i:1535614558;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1535441758;}s:64:\"5873f8faaba54be087a769a6f539e0b4ed205099fc657f09ac5faf973df457d8\";a:4:{s:10:\"expiration\";i:1535700473;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1535527673;}}'),
(17, 1, 'wpus_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wpus_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:161:\"Don\'t miss your crawl errors: <a href=\"http://stories.loc/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:215:\"<strong>Huge SEO Issue: You\'re blocking access to robots.</strong> You must <a href=\"http://stories.loc/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(20, 1, 'wpus_user-settings', 'editor=tinymce'),
(21, 1, 'wpus_user-settings-time', '1535557358'),
(22, 1, '_yoast_wpseo_profile_updated', '1535450172'),
(23, 1, 'last_login_time', '2018-08-29 09:27:53');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_users`
--

CREATE TABLE `wpus_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_users`
--

INSERT INTO `wpus_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'myschooladmin', '$P$BHD19PdLShPB5biqtYbSFdQf6smc6r0', 'myschooladmin', 'nbilanenko@gmail.com', '', '2018-08-28 07:35:22', '', 0, 'myschooladmin');

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_yoast_seo_links`
--

CREATE TABLE `wpus_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpus_yoast_seo_meta`
--

CREATE TABLE `wpus_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wpus_yoast_seo_meta`
--

INSERT INTO `wpus_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(5, 0, 0),
(8, 0, 0),
(10, 0, 0),
(12, 0, 0),
(14, 0, 0),
(16, 0, 0),
(18, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wpus_aiowps_events`
--
ALTER TABLE `wpus_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_aiowps_failed_logins`
--
ALTER TABLE `wpus_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_aiowps_global_meta`
--
ALTER TABLE `wpus_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Индексы таблицы `wpus_aiowps_login_activity`
--
ALTER TABLE `wpus_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_aiowps_login_lockdown`
--
ALTER TABLE `wpus_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_aiowps_permanent_block`
--
ALTER TABLE `wpus_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_commentmeta`
--
ALTER TABLE `wpus_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpus_comments`
--
ALTER TABLE `wpus_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wpus_links`
--
ALTER TABLE `wpus_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wpus_options`
--
ALTER TABLE `wpus_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wpus_popularpostsdata`
--
ALTER TABLE `wpus_popularpostsdata`
  ADD PRIMARY KEY (`postid`);

--
-- Индексы таблицы `wpus_popularpostssummary`
--
ALTER TABLE `wpus_popularpostssummary`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `postid` (`postid`),
  ADD KEY `view_date` (`view_date`),
  ADD KEY `view_datetime` (`view_datetime`);

--
-- Индексы таблицы `wpus_postmeta`
--
ALTER TABLE `wpus_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpus_posts`
--
ALTER TABLE `wpus_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wpus_termmeta`
--
ALTER TABLE `wpus_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpus_terms`
--
ALTER TABLE `wpus_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wpus_term_relationships`
--
ALTER TABLE `wpus_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wpus_term_taxonomy`
--
ALTER TABLE `wpus_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wpus_ulike`
--
ALTER TABLE `wpus_ulike`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_ulike_activities`
--
ALTER TABLE `wpus_ulike_activities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_ulike_comments`
--
ALTER TABLE `wpus_ulike_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_ulike_forums`
--
ALTER TABLE `wpus_ulike_forums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wpus_usermeta`
--
ALTER TABLE `wpus_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpus_users`
--
ALTER TABLE `wpus_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wpus_yoast_seo_links`
--
ALTER TABLE `wpus_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Индексы таблицы `wpus_yoast_seo_meta`
--
ALTER TABLE `wpus_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wpus_aiowps_events`
--
ALTER TABLE `wpus_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_aiowps_failed_logins`
--
ALTER TABLE `wpus_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_aiowps_global_meta`
--
ALTER TABLE `wpus_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_aiowps_login_activity`
--
ALTER TABLE `wpus_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wpus_aiowps_login_lockdown`
--
ALTER TABLE `wpus_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_aiowps_permanent_block`
--
ALTER TABLE `wpus_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_commentmeta`
--
ALTER TABLE `wpus_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_comments`
--
ALTER TABLE `wpus_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_links`
--
ALTER TABLE `wpus_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_options`
--
ALTER TABLE `wpus_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1302;

--
-- AUTO_INCREMENT для таблицы `wpus_popularpostssummary`
--
ALTER TABLE `wpus_popularpostssummary`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT для таблицы `wpus_postmeta`
--
ALTER TABLE `wpus_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `wpus_posts`
--
ALTER TABLE `wpus_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wpus_termmeta`
--
ALTER TABLE `wpus_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_terms`
--
ALTER TABLE `wpus_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wpus_term_taxonomy`
--
ALTER TABLE `wpus_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wpus_ulike`
--
ALTER TABLE `wpus_ulike`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wpus_ulike_activities`
--
ALTER TABLE `wpus_ulike_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_ulike_comments`
--
ALTER TABLE `wpus_ulike_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_ulike_forums`
--
ALTER TABLE `wpus_ulike_forums`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpus_usermeta`
--
ALTER TABLE `wpus_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wpus_users`
--
ALTER TABLE `wpus_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wpus_yoast_seo_links`
--
ALTER TABLE `wpus_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 12:18 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `countryclub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `st_commentmeta`
--

CREATE TABLE `st_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_comments`
--

CREATE TABLE `st_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_comments`
--

INSERT INTO `st_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-27 06:31:45', '2023-06-27 06:31:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `st_links`
--

CREATE TABLE `st_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_options`
--

CREATE TABLE `st_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_options`
--

INSERT INTO `st_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/project/country-club-chitlang', 'yes'),
(2, 'home', 'http://localhost/project/country-club-chitlang', 'yes'),
(3, 'blogname', 'Country Club Chitlang', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tashika@digisoft.com.np', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:225:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"rooms/?$\";s:25:\"index.php?post_type=rooms\";s:38:\"rooms/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=rooms&feed=$matches[1]\";s:33:\"rooms/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=rooms&feed=$matches[1]\";s:25:\"rooms/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=rooms&paged=$matches[1]\";s:8:\"menus/?$\";s:25:\"index.php?post_type=menus\";s:38:\"menus/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=menus&feed=$matches[1]\";s:33:\"menus/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=menus&feed=$matches[1]\";s:25:\"menus/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=menus&paged=$matches[1]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:12:\"amenities/?$\";s:29:\"index.php?post_type=amenities\";s:42:\"amenities/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=amenities&feed=$matches[1]\";s:37:\"amenities/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=amenities&feed=$matches[1]\";s:29:\"amenities/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=amenities&paged=$matches[1]\";s:11:\"partners/?$\";s:28:\"index.php?post_type=partners\";s:41:\"partners/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=partners&feed=$matches[1]\";s:36:\"partners/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=partners&feed=$matches[1]\";s:28:\"partners/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=partners&paged=$matches[1]\";s:10:\"reviews/?$\";s:27:\"index.php?post_type=reviews\";s:40:\"reviews/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=reviews&feed=$matches[1]\";s:35:\"reviews/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=reviews&feed=$matches[1]\";s:27:\"reviews/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=reviews&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"rooms/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"rooms/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"rooms/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"rooms/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"rooms/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"rooms/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"rooms/([^/]+)/embed/?$\";s:38:\"index.php?rooms=$matches[1]&embed=true\";s:26:\"rooms/([^/]+)/trackback/?$\";s:32:\"index.php?rooms=$matches[1]&tb=1\";s:46:\"rooms/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?rooms=$matches[1]&feed=$matches[2]\";s:41:\"rooms/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?rooms=$matches[1]&feed=$matches[2]\";s:34:\"rooms/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?rooms=$matches[1]&paged=$matches[2]\";s:41:\"rooms/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?rooms=$matches[1]&cpage=$matches[2]\";s:30:\"rooms/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?rooms=$matches[1]&page=$matches[2]\";s:22:\"rooms/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"rooms/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"rooms/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"rooms/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"rooms/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"rooms/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"menus/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"menus/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"menus/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"menus/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"menus/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"menus/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"menus/([^/]+)/embed/?$\";s:38:\"index.php?menus=$matches[1]&embed=true\";s:26:\"menus/([^/]+)/trackback/?$\";s:32:\"index.php?menus=$matches[1]&tb=1\";s:46:\"menus/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?menus=$matches[1]&feed=$matches[2]\";s:41:\"menus/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?menus=$matches[1]&feed=$matches[2]\";s:34:\"menus/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?menus=$matches[1]&paged=$matches[2]\";s:41:\"menus/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?menus=$matches[1]&cpage=$matches[2]\";s:30:\"menus/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?menus=$matches[1]&page=$matches[2]\";s:22:\"menus/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"menus/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"menus/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"menus/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"menus/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"menus/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"amenities/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"amenities/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"amenities/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"amenities/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"amenities/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"amenities/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"amenities/([^/]+)/embed/?$\";s:42:\"index.php?amenities=$matches[1]&embed=true\";s:30:\"amenities/([^/]+)/trackback/?$\";s:36:\"index.php?amenities=$matches[1]&tb=1\";s:50:\"amenities/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?amenities=$matches[1]&feed=$matches[2]\";s:45:\"amenities/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?amenities=$matches[1]&feed=$matches[2]\";s:38:\"amenities/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?amenities=$matches[1]&paged=$matches[2]\";s:45:\"amenities/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?amenities=$matches[1]&cpage=$matches[2]\";s:34:\"amenities/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?amenities=$matches[1]&page=$matches[2]\";s:26:\"amenities/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"amenities/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"amenities/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"amenities/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"amenities/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"amenities/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"partners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"partners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"partners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"partners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"partners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"partners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"partners/([^/]+)/embed/?$\";s:41:\"index.php?partners=$matches[1]&embed=true\";s:29:\"partners/([^/]+)/trackback/?$\";s:35:\"index.php?partners=$matches[1]&tb=1\";s:49:\"partners/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?partners=$matches[1]&feed=$matches[2]\";s:44:\"partners/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?partners=$matches[1]&feed=$matches[2]\";s:37:\"partners/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&paged=$matches[2]\";s:44:\"partners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&cpage=$matches[2]\";s:33:\"partners/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?partners=$matches[1]&page=$matches[2]\";s:25:\"partners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"partners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"partners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"partners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"partners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"partners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"reviews/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"reviews/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"reviews/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviews/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviews/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"reviews/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"reviews/([^/]+)/embed/?$\";s:40:\"index.php?reviews=$matches[1]&embed=true\";s:28:\"reviews/([^/]+)/trackback/?$\";s:34:\"index.php?reviews=$matches[1]&tb=1\";s:48:\"reviews/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?reviews=$matches[1]&feed=$matches[2]\";s:43:\"reviews/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?reviews=$matches[1]&feed=$matches[2]\";s:36:\"reviews/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?reviews=$matches[1]&paged=$matches[2]\";s:43:\"reviews/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?reviews=$matches[1]&cpage=$matches[2]\";s:32:\"reviews/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?reviews=$matches[1]&page=$matches[2]\";s:24:\"reviews/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"reviews/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"reviews/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviews/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviews/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"reviews/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:11:\"acf/acf.php\";i:1;s:65:\"album-and-image-gallery-plus-lightbox/album-and-image-gallery.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'country-club', 'yes'),
(41, 'stylesheet', 'country-club', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'st_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1688376707;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688409107;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688409108;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688452326;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688453478;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:14:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"6.1.3\";s:7:\"version\";s:5:\"6.1.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"6.0.5\";s:7:\"version\";s:5:\"6.0.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.9.7\";s:7:\"version\";s:5:\"5.9.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.8.7\";s:7:\"version\";s:5:\"5.8.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.9\";s:7:\"version\";s:5:\"5.7.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.6.11.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.6.11.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.11-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.6.11-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.6.11\";s:7:\"version\";s:6:\"5.6.11\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.5.12.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.5.12.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.12-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.5.12-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.5.12\";s:7:\"version\";s:6:\"5.5.12\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:9;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.4.13.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.4.13.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.13-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.4.13-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.4.13\";s:7:\"version\";s:6:\"5.4.13\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:10;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.3.15.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.3.15.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.15-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.3.15-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.3.15\";s:7:\"version\";s:6:\"5.3.15\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:11;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.2.18.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.2.18.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.18-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.2.18-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.2.18\";s:7:\"version\";s:6:\"5.2.18\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:12;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.1.16.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.1.16.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.16-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.1.16-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.1.16\";s:7:\"version\";s:6:\"5.1.16\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:13;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.0.19.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.0.19.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.19-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.0.19-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.0.19\";s:7:\"version\";s:6:\"5.0.19\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1688365909;s:15:\"version_checked\";s:6:\"4.9.23\";s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1688373170;s:7:\"checked\";a:1:{s:12:\"country-club\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1688452320', 'no'),
(121, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(136, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1687847617;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(137, 'current_theme', '', 'yes'),
(138, 'theme_mods_country-club', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:1:{s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";i:1687949683;}', 'yes'),
(146, 'acf_version', '5.3.8.1', 'yes'),
(173, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"4.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1687942578;s:7:\"version\";s:3:\"4.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(174, 'cf7dp_ui_theme', 'smoothness', 'yes'),
(216, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(220, '_transient_timeout_acf_pro_get_remote_info', '1688406718', 'no');
INSERT INTO `st_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(221, '_transient_acf_pro_get_remote_info', 'a:19:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"6.1.7\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:155:\"<a href=\"https://wpengine.com/?utm_source=wordpress.org&utm_medium=referral&utm_campaign=plugin_directory&utm_content=advanced_custom_fields\">WP Engine</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";s:6:\"tested\";s:5:\"6.2.2\";s:5:\"added\";s:10:\"2023-02-23\";s:12:\"last_updated\";s:10:\"2023-06-27\";s:11:\"description\";s:5200:\"<p>Advanced Custom Fields (ACF) turns WordPress sites into a fully-fledged content management system by giving you all the tools to do more with your data.</p>\n\n<p>Use the ACF plugin to take full control of your WordPress edit screens, custom field data, and more.</p>\n\n<p><strong>Add fields on demand.</strong></p>\n<p>The ACF field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons! Whether it’s something simple like adding an “author” field to a book review post, or something more complex like the structured data needs of an ecommerce site or marketplace, ACF makes adding fields to your content model easy.</p>\n\n<p><strong>Add them anywhere.</strong></p>\n<p>Fields can be added all over WordPress including posts, pages, users, taxonomy terms, media, comments and even custom options pages! It couldn’t be simpler to bring structure to the WordPress content creation experience.</p>\n\n<p><strong>Show them everywhere.</strong></p>\n<p>Load and display your custom field values in any theme template file with our hassle-free, developer friendly functions! Whether you need to display a single value or generate content based on a more complex query, the out-of-the-box functions of ACF make templating a dream for developers of all levels of experience.</p>\n\n<p><strong>Any Content, Fast.</strong></p>\n<p>Turning WordPress into a true content management system is not just about custom fields. Creating new custom post types and taxonomies is an essential part of building custom WordPress sites. Registering post types and taxonomies is now possible right in the ACF UI, speeding up the content modeling workflow without the need to touch code or use another plugin.</p>\n\n<p><strong>Simply beautiful and intentionally accessible.</strong></p>\n<p>For content creators and those tasked with data entry, the field user experience is as intuitive as they could desire while fitting neatly into the native WordPress experience. Accessibility standards are regularly reviewed and applied, ensuring ACF is able to empower as close to anyone as possible.</p>\n\n<p><strong>Documentation and developer guides.</strong></p>\n<p>Over 10 plus years of vibrant community contribution alongside an ongoing commitment to clear documentation means that you’ll be able to find the guidance you need to build what you want.</p>\n\n<h4>Features</h4>\n<ul>\n<li>Simple & Intuitive</li>\n<li>Powerful Functions</li>\n<li>Over 30 Field Types</li>\n<li>Extensive Documentation</li>\n<li>Millions of Users</li>\n</ul>\n\n<h4>Links</h4>\n<ul>\n<li><a href=\"https://advancedcustomfields.com/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">Website</a></li>\n<li><a href=\"https://advancedcustomfields.com/resources/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">Documentation</a></li>\n<li><a href=\"https://support.advancedcustomfields.com\">Support</a></li>\n<li><a href=\"https://advancedcustomfields.com/pro/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">ACF PRO</a></li>\n</ul>\n\n<h4>PRO</h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility. The ACF PRO plugin features:</p>\n\n<ul>\n<li>The <a href=\"https://www.advancedcustomfields.com/resources/repeater/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Repeater Field</a> allows you to create a set of sub fields which can be repeated again, and again, and again.</li>\n<li><a href=\"https://www.advancedcustomfields.com/resources/blocks/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">ACF Blocks</a>, a powerful PHP-based framework for developing custom block types for the WordPress Block Editor (aka Gutenberg).</li>\n<li>Define, create, and manage content with the <a href=\"https://www.advancedcustomfields.com/resources/flexible-content/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Flexible Content Field</a>, which provides for multiple layout and sub field options.</li>\n<li>Use the <a href=\"https://www.advancedcustomfields.com/resources/options-page/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Options Page</a> feature to add custom admin pages to edit ACF fields.</li>\n<li>Build fully customisable image galleries with the <a href=\"https://www.advancedcustomfields.com/resources/gallery/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Gallery Field</a>.</li>\n<li>Unlock a more efficient workflow for managing field settings by reusing existing fields and field groups on demand with the <a href=\"https://www.advancedcustomfields.com/resources/clone/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Clone Field</a>.</li>\n</ul>\n\n<p><a href=\"https://advancedcustomfields.com/pro/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Pro%20Upgrade\">Upgrade to ACF PRO</a></p>\";s:12:\"installation\";s:645:\"<p>From your WordPress dashboard</p>\n\n<ol>\n<li><strong>Visit</strong> Plugins > Add New</li>\n<li><strong>Search</strong> for \"Advanced Custom Fields\" or “ACF”</li>\n<li><strong>Install and Activate</strong> Advanced Custom Fields from your Plugins page</li>\n<li><strong>Click</strong> on the new menu item \"ACF\" and create your first custom field group, or register a custom post type or taxonomy.</li>\n<li><strong>Read</strong> the documentation to <a href=\"https://advancedcustomfields.com/resources/getting-started-with-acf/?utm_source=wordpress.org&utm_medium=free%20plugin%20listing&utm_campaign=ACF%20Website\">get started</a></li>\n</ol>\";s:9:\"changelog\";s:9036:\"<h4>6.1.7</h4>\n<p><em>Release Date 27th June 2023</em></p>\n\n<ul>\n<li>New - Added new capability settings for ACF taxonomies</li>\n<li>Enhancement - Added a new <code>acf/field_group/auto_add_first_field</code> filter which can be used to prevent new field groups from automatically adding a field</li>\n<li>Enhancement - Field setting labels now have standard capitalization in the field group editor</li>\n<li>Enhancement - Clone field now has a tutorial link</li>\n<li>Enhancement - \"Exclude From Search\" CPT setting now has an improved description</li>\n<li>Enhancement - The <code>acf_get_posts()</code> function now has <code>acf/acf_get_posts/args</code> and <code>acf/acf_get_posts/results</code> filters</li>\n<li>Enhancement - Added a new <code>acf/options_page/save</code> action hook that gets fired during save of ACF Options Pages</li>\n<li>Fix - Taxonomies are now initialized before post types, preventing some permalink issues</li>\n<li>Fix - Increased the taxonomy slug maximum length to 32 characters</li>\n<li>Fix - Extra tabs are no longer added to PHP exports with field settings containing multiple lines</li>\n<li>Fix - ACF admin assets now load when editing profile and users for a multisite network</li>\n<li>Fix - Blocks with recursive <code>render_callback</code> functions will no longer crash the editor</li>\n<li>Fix - JSON files now end in a new line for better compatibility with code editors</li>\n<li>i18n - <code>layout(s)</code> strings in Flexible Content fields are now translatable</li>\n<li>i18n - Updated Polish translations</li>\n</ul>\n\n<h4>6.1.6</h4>\n<p><em>Release Date 4th May 2023</em></p>\n\n<ul>\n<li>Security Fix - This release resolves an XSS vulnerability in ACF’s admin pages (Thanks to Rafie Muhammad for the responsible disclosure)</li>\n<li>Fix - Duplicating fields in a new field group with field setting tabs disabled now behaves correctly</li>\n</ul>\n\n<h4>6.1.5</h4>\n<p><em>Release Date 2nd May 2023</em></p>\n\n<ul>\n<li>Enhancement - Creating a new field group from the post-save actions for a post type or taxonomy will automatically populate the field group title</li>\n<li>Enhancement - Empty values in list tables now display as a dash, rather than blank</li>\n<li>Enhancement - The <code>Generate PHP</code> export tool for field groups now displays the code wrapped in the <code>acf/include_fields</code> action hook to match the recommended way of using <code>acf_add_local_field_group</code>, and the code is formatted correctly</li>\n<li>Enhancement - Post count and Term count values in list tables now link through to the matching posts or terms</li>\n<li>Enhancement - Added post-save actions to post type and taxonomies to create another</li>\n<li>Enhancement - Selecting existing taxonomies when registering a Custom Post Type is now available in the Basic settings section rather than Advanced</li>\n<li>Fix - <code>Exclude From Search</code> setting for custom post types now behaves correctly</li>\n<li>Fix - Duplicating fields with sub fields no longer results in JS errors</li>\n<li>Fix - Select2 field settings now render correctly when duplicating fields</li>\n<li>Fix - Checkbox fields allowing custom values which use integer keys can now be updated over the REST API</li>\n<li>Fix - Using the <code>No Permalink</code> rewrite setting for post type will no longer generate PHP warnings</li>\n<li>Fix - The <code>minimum rows not met</code> validation message for the Repeater field type now correctly states the minimum rows are not met</li>\n<li>Fix - The Range field type no longer cuts off three digit values</li>\n<li>Fix - <code>Created on</code> and <code>Delete Field Group</code> now correctly only appear on the Group Settings tab of a field group</li>\n<li>Fix - Padding for field settings tabs is now correct</li>\n<li>i18n - Updated all PRO translation files, removing legacy free strings which are now handled through <a href=\"https://translate.wordpress.org/projects/wp-plugins/advanced-custom-fields/stable/\">translate.wordpress.org</a></li>\n<li>i18n - Updated PRO translations with the latest contributions from <a href=\"https://github.com/AdvancedCustomFields/acf/tree/master/lang/pro\">GitHub</a> (Thanks to @MilenDalchev, @Xilonz and @wiliamjk)</li>\n</ul>\n<p>* Switched to v2 of the Blocks API for WordPress 5.6+</p>\n<p>* Block preloading now enabled by default</p>\n<p>* Block preloading now supports blocks set to \"Edit\" mode</p>\n<p>* Add support for full height alignment setting</p>\n<ul>\n<li>Enhancement - Added setting to color picker field to enable an opacity slider</li>\n<li>Enhancement - Allow deletion of first field group location rule if multiple rules have been added thanks to Arthur Shlain</li>\n<li>Fix - Fixed vulnerability with <code>acf_shortcode()</code> where users with subscriber role could view arbitrary ACF data, thanks to Keitaro Yamazaki</li>\n<li>Fix - Fixed vulnerability where users with subscriber role could move fields and view field groups, thanks to Keitaro Yamazaki</li>\n<li>Fix - Fixed issue where fields in legacy widgets weren\'t saving in new widget block editor</li>\n<li>Fix - Fixed issue with custom field validation in scheduled posts</li>\n<li>Fix - Fixed warnings thrown by clone field if the cloned field group is empty</li>\n<li>Fix - Fixed issue where Select2 search input wouldn\'t have focus in WordPress 5.8+</li>\n<li>Fix - Fixed issue with Select2 value sorting when Yoast SEO is installed</li>\n<li>Fix - Fixed deprecation warnings in block editor in WordPress 5.6+</li>\n<li>i18n - Updated Swedish translation thanks to Erik Betshammar</li>\n</ul>\n<p>* Added toolbar across all ACF admin pages.</p>\n<p>* Added new table columns: Description, Key, Location, Local JSON.</p>\n<p>* Added popup modal to review Local JSON changes before sync.</p>\n<p>* Added visual representation of where Field Groups will appear.</p>\n<p>* Added new help tab.</p>\n<p>* Simplified layout.</p>\n<ul>\n<li>Enhancement - New ACF Blocks features.</li>\n</ul>\n<p>* Added support for Inner Blocks.</p>\n<p>* Added new \"jsx\" setting.</p>\n<p>* Added new \"align_text\" settings.</p>\n<p>* Added new \"align_content\" settings.</p>\n<ul>\n<li>Enhancement - Added duplicate functionality for Repeater and Flexible Content fields.</li>\n<li>Enhancement - Added PHP validation support for Gutenberg.</li>\n<li>Enhancement - Added ability to bypass confirmation tooltips (just hold shift).</li>\n<li>Enhancement - Local JSON files now save back to their loaded source path (not \"save_json\" setting).</li>\n<li>Tweak - Replaced all custom icons with dashicons.</li>\n<li>Tweak - Changed custom post status label from \"Inactive\" to \"Disabled\".</li>\n<li>Tweak - Improved styling of metaboxes positioned in the block editor sidebar.</li>\n<li>Fix - Improved AJAX request efficiency when editing block className or anchor attributes.</li>\n<li>Fix - Fixed bug causing unresponsive WYSIWYG fields after moving a block via the up/down arrows.</li>\n<li>Fix - Fixed bug causing HTML to jump between multiple instances of the same Reusable Block.</li>\n<li>Fix - Fixed bug sometimes displaying validation errors when saving a draft.</li>\n<li>Fix - Fixed bug breaking Image field UI when displaying a scaled portrait attachment.</li>\n<li>Fix - Fixed bug in Link field incorrectly treating the \"Cancel\" button as \"Submit\".</li>\n<li>Fix - Fixed bug where a sub field within a collapsed Repeater row did not grow to the full available width.</li>\n<li>Fix - Ensured all archive URLs shown in the Page Link field dropdown are unique.</li>\n<li>Fix - Fixed bug causing incorrect conditional logic settings on nested fields when duplicating a Field Group.</li>\n<li>Fix - Fixed bug causing license activation issues with some password management browser extensions.</li>\n<li>Dev - Major improvements to <code>ACF_Location</code> class.</li>\n<li>Dev - Refactored all location classes to optimize performance.</li>\n<li>Dev - Extracted core JavaScript from \"acf-input.js\" into a separate \"acf.js\" file.</li>\n<li>Dev - Field Group export now shows \"active\" attribute as bool instead of int.</li>\n<li>Dev - Added filter \"acf/get_object_type\" to customize WP object information such as \"label\" and \"icon\".</li>\n<li>Dev - Added action \"acf/admin_print_uploader_scripts\" fired when printing uploader (WP media) scripts in the footer.</li>\n<li>Dev - Added filters \"acf/pre_load_attachment\" and \"acf/load_attachment\" to customize attachment details.</li>\n<li>Dev - Added filter \"acf/admin/toolbar\" to customize the admin toolbar items.</li>\n<li>Dev - Added new JS actions \"duplicate_fields\" and \"duplicate_field\" fired when duplicating a row.</li>\n<li>i18n - Changed Croatian locale code from \"hr_HR to \"hr\".</li>\n<li>i18n - Updated Portuguese translation thanks to Pedro Mendonça.</li>\n<li>i18n - Updated French Canadian translation thanks to Bérenger Zyla.</li>\n<li>i18n - Updated French translation thanks to Maxime Bernard-Jacquet.</li>\n<li>i18n - Updated German translations thanks to Ralf Koller.</li>\n</ul>\n\n<p><a href=\"https://www.advancedcustomfields.com/changelog/\">View the full changelog</a></p>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:173:{i:0;s:5:\"6.1.6\";i:1;s:5:\"6.1.5\";i:2;s:5:\"6.1.4\";i:3;s:5:\"6.1.3\";i:4;s:5:\"6.1.2\";i:5;s:5:\"6.1.1\";i:6;s:11:\"6.1.0-beta1\";i:7;s:12:\"6.1.0-alpha1\";i:8;s:5:\"6.1.0\";i:9;s:5:\"6.0.7\";i:10;s:5:\"6.0.6\";i:11;s:5:\"6.0.5\";i:12;s:5:\"6.0.4\";i:13;s:5:\"6.0.3\";i:14;s:5:\"6.0.2\";i:15;s:5:\"6.0.1\";i:16;s:11:\"6.0.0-beta1\";i:17;s:12:\"6.0.0-alpha4\";i:18;s:12:\"6.0.0-alpha3\";i:19;s:12:\"6.0.0-alpha2\";i:20;s:12:\"6.0.0-alpha1\";i:21;s:9:\"6.0.0-RC3\";i:22;s:9:\"6.0.0-RC2\";i:23;s:9:\"6.0.0-RC1\";i:24;s:5:\"6.0.0\";i:25;s:5:\"5.9.9\";i:26;s:5:\"5.9.8\";i:27;s:5:\"5.9.7\";i:28;s:5:\"5.9.6\";i:29;s:5:\"5.9.5\";i:30;s:5:\"5.9.4\";i:31;s:5:\"5.9.3\";i:32;s:5:\"5.9.2\";i:33;s:5:\"5.9.1\";i:34;s:11:\"5.9.0-beta5\";i:35;s:11:\"5.9.0-beta4\";i:36;s:11:\"5.9.0-beta3\";i:37;s:11:\"5.9.0-beta2\";i:38;s:11:\"5.9.0-beta1\";i:39;s:9:\"5.9.0-RC1\";i:40;s:5:\"5.9.0\";i:41;s:5:\"5.8.9\";i:42;s:5:\"5.8.8\";i:43;s:5:\"5.8.7\";i:44;s:5:\"5.8.6\";i:45;s:5:\"5.8.5\";i:46;s:5:\"5.8.4\";i:47;s:5:\"5.8.3\";i:48;s:5:\"5.8.2\";i:49;s:6:\"5.8.14\";i:50;s:6:\"5.8.13\";i:51;s:6:\"5.8.12\";i:52;s:6:\"5.8.11\";i:53;s:5:\"5.8.1\";i:54;s:13:\"5.8.0-beta4.1\";i:55;s:11:\"5.8.0-beta4\";i:56;s:11:\"5.8.0-beta3\";i:57;s:11:\"5.8.0-beta2\";i:58;s:11:\"5.8.0-beta1\";i:59;s:9:\"5.8.0-RC2\";i:60;s:9:\"5.8.0-RC1\";i:61;s:5:\"5.8.0\";i:62;s:5:\"5.7.9\";i:63;s:5:\"5.7.8\";i:64;s:5:\"5.7.7\";i:65;s:5:\"5.7.6\";i:66;s:5:\"5.7.5\";i:67;s:5:\"5.7.4\";i:68;s:5:\"5.7.3\";i:69;s:5:\"5.7.2\";i:70;s:6:\"5.7.13\";i:71;s:6:\"5.7.12\";i:72;s:6:\"5.7.10\";i:73;s:5:\"5.7.1\";i:74;s:5:\"5.7.0\";i:75;s:5:\"5.6.9\";i:76;s:5:\"5.6.8\";i:77;s:5:\"5.6.7\";i:78;s:5:\"5.6.6\";i:79;s:5:\"5.6.5\";i:80;s:5:\"5.6.4\";i:81;s:5:\"5.6.3\";i:82;s:5:\"5.6.2\";i:83;s:6:\"5.6.10\";i:84;s:5:\"5.6.1\";i:85;s:11:\"5.6.0-beta2\";i:86;s:11:\"5.6.0-beta1\";i:87;s:9:\"5.6.0-RC2\";i:88;s:9:\"5.6.0-RC1\";i:89;s:5:\"5.6.0\";i:90;s:5:\"5.5.9\";i:91;s:5:\"5.5.7\";i:92;s:5:\"5.5.5\";i:93;s:5:\"5.5.3\";i:94;s:5:\"5.5.2\";i:95;s:6:\"5.5.14\";i:96;s:6:\"5.5.13\";i:97;s:6:\"5.5.12\";i:98;s:6:\"5.5.11\";i:99;s:6:\"5.5.10\";i:100;s:5:\"5.5.1\";i:101;s:5:\"5.5.0\";i:102;s:5:\"5.4.8\";i:103;s:5:\"5.4.7\";i:104;s:5:\"5.4.6\";i:105;s:5:\"5.4.5\";i:106;s:5:\"5.4.4\";i:107;s:5:\"5.4.3\";i:108;s:5:\"5.4.2\";i:109;s:5:\"5.4.1\";i:110;s:5:\"5.4.0\";i:111;s:5:\"5.3.9\";i:112;s:5:\"5.3.8\";i:113;s:5:\"5.3.7\";i:114;s:5:\"5.3.6\";i:115;s:5:\"5.3.5\";i:116;s:5:\"5.3.4\";i:117;s:5:\"5.3.3\";i:118;s:5:\"5.3.2\";i:119;s:6:\"5.3.10\";i:120;s:5:\"5.3.1\";i:121;s:5:\"5.3.0\";i:122;s:5:\"5.2.9\";i:123;s:5:\"5.2.8\";i:124;s:5:\"5.2.7\";i:125;s:5:\"5.2.6\";i:126;s:5:\"5.2.5\";i:127;s:5:\"5.2.4\";i:128;s:5:\"5.2.3\";i:129;s:5:\"5.2.2\";i:130;s:5:\"5.2.1\";i:131;s:5:\"5.2.0\";i:132;s:6:\"5.12.6\";i:133;s:6:\"5.12.5\";i:134;s:6:\"5.12.4\";i:135;s:6:\"5.12.3\";i:136;s:6:\"5.12.2\";i:137;s:6:\"5.12.1\";i:138;s:10:\"5.12-beta2\";i:139;s:10:\"5.12-beta1\";i:140;s:8:\"5.12-RC1\";i:141;s:4:\"5.12\";i:142;s:6:\"5.11.4\";i:143;s:6:\"5.11.3\";i:144;s:6:\"5.11.2\";i:145;s:6:\"5.11.1\";i:146;s:8:\"5.11-RC1\";i:147;s:4:\"5.11\";i:148;s:6:\"5.10.2\";i:149;s:6:\"5.10.1\";i:150;s:10:\"5.10.0-RC2\";i:151;s:10:\"5.10.0-RC1\";i:152;s:4:\"5.10\";i:153;s:5:\"5.1.9\";i:154;s:5:\"5.1.8\";i:155;s:5:\"5.1.7\";i:156;s:5:\"5.1.6\";i:157;s:5:\"5.1.5\";i:158;s:5:\"5.1.4\";i:159;s:5:\"5.1.3\";i:160;s:5:\"5.1.2\";i:161;s:5:\"5.1.1\";i:162;s:5:\"5.1.0\";i:163;s:5:\"5.0.9\";i:164;s:5:\"5.0.8\";i:165;s:5:\"5.0.7\";i:166;s:5:\"5.0.6\";i:167;s:5:\"5.0.5\";i:168;s:5:\"5.0.4\";i:169;s:5:\"5.0.3\";i:170;s:5:\"5.0.2\";i:171;s:5:\"5.0.1\";i:172;s:5:\"5.0.0\";}s:13:\"release_dates\";a:64:{s:5:\"6.1.7\";s:8:\"20230627\";s:5:\"6.1.6\";s:8:\"20230504\";s:5:\"6.1.5\";s:8:\"20230502\";s:5:\"6.1.4\";s:8:\"20230412\";s:5:\"6.1.3\";s:8:\"20230405\";s:5:\"6.1.2\";s:8:\"20230404\";s:5:\"6.1.1\";s:8:\"20230403\";s:5:\"6.1.0\";s:8:\"20230403\";s:5:\"6.0.7\";s:8:\"20230118\";s:5:\"6.0.6\";s:8:\"20221213\";s:5:\"6.0.5\";s:8:\"20221118\";s:5:\"6.0.4\";s:8:\"20221108\";s:5:\"6.0.3\";s:8:\"20221018\";s:5:\"6.0.2\";s:8:\"20220929\";s:5:\"6.0.1\";s:8:\"20220928\";s:5:\"6.0.0\";s:8:\"20220921\";s:6:\"5.12.6\";s:8:\"20230504\";s:6:\"5.12.5\";s:8:\"20230403\";s:6:\"5.12.4\";s:8:\"20221018\";s:6:\"5.12.3\";s:8:\"20220714\";s:6:\"5.12.2\";s:8:\"20220406\";s:6:\"5.12.1\";s:8:\"20220323\";s:4:\"5.12\";s:8:\"20220223\";s:6:\"5.11.4\";s:8:\"20211202\";s:6:\"5.11.3\";s:8:\"20211124\";s:6:\"5.11.2\";s:8:\"20211124\";s:6:\"5.11.1\";s:8:\"20211118\";s:4:\"5.11\";s:8:\"20211110\";s:6:\"5.10.2\";s:8:\"20210831\";s:6:\"5.10.1\";s:8:\"20210826\";s:4:\"5.10\";s:8:\"20210825\";s:5:\"5.9.9\";s:8:\"20210720\";s:5:\"5.9.8\";s:8:\"20210708\";s:5:\"5.9.7\";s:8:\"20210622\";s:5:\"5.9.6\";s:8:\"20210520\";s:5:\"5.9.5\";s:8:\"20210211\";s:5:\"5.9.4\";s:8:\"20210114\";s:5:\"5.9.3\";s:8:\"20201103\";s:5:\"5.9.2\";s:8:\"20201029\";s:5:\"5.9.1\";s:8:\"20200908\";s:5:\"5.9.0\";s:8:\"20200817\";s:6:\"5.8.14\";s:8:\"20200813\";s:6:\"5.8.13\";s:8:\"20200810\";s:6:\"5.8.12\";s:8:\"20200610\";s:6:\"5.8.11\";s:8:\"20200512\";s:6:\"5.8.10\";s:8:\"20200512\";s:5:\"5.8.9\";s:8:\"20200326\";s:5:\"5.8.8\";s:8:\"20200304\";s:5:\"5.8.7\";s:8:\"20191112\";s:5:\"5.8.6\";s:8:\"20191024\";s:5:\"5.8.5\";s:8:\"20191008\";s:5:\"5.8.4\";s:8:\"20190903\";s:5:\"5.8.3\";s:8:\"20190807\";s:5:\"5.8.2\";s:8:\"20190715\";s:5:\"5.8.1\";s:8:\"20190603\";s:5:\"5.8.0\";s:8:\"20190508\";s:6:\"5.7.13\";s:8:\"20190306\";s:6:\"5.7.12\";s:8:\"20190215\";s:6:\"5.7.11\";s:8:\"20190211\";s:6:\"5.7.10\";s:8:\"20190116\";s:5:\"5.7.9\";s:8:\"20181217\";s:5:\"5.7.8\";s:8:\"20181207\";s:5:\"5.7.7\";s:8:\"20181001\";s:5:\"5.7.6\";s:8:\"20180912\";}}', 'no'),
(225, 'category_children', 'a:0:{}', 'yes'),
(230, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688365912;s:7:\"checked\";a:13:{s:11:\"acf/acf.php\";s:7:\"5.3.8.1\";s:65:\"album-and-image-gallery-plus-lightbox/album-and-image-gallery.php\";s:5:\"1.1.2\";s:45:\"auto-post-expiration/auto-post-expiration.php\";s:5:\"1.0.0\";s:35:\"awesome-weather/awesome-weather.php\";s:3:\"2.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"4.8\";s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";s:5:\"2.6.0\";s:31:\"popup-builder/popup-builder.php\";s:4:\"3.71\";s:35:\"protect-uploads/protect-uploads.php\";s:3:\"0.4\";s:39:\"si-captcha-for-wordpress/si-captcha.php\";s:5:\"3.0.2\";s:24:\"simple-lightbox/main.php\";s:5:\"2.6.0\";s:20:\"onucyzxtjw/index.php\";s:7:\"1.3.3.7\";s:39:\"wp-file-manager/file_folder_manager.php\";s:5:\"7.1.7\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"6.3.12\";}s:8:\"response\";a:6:{s:65:\"album-and-image-gallery-plus-lightbox/album-and-image-gallery.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:51:\"w.org/plugins/album-and-image-gallery-plus-lightbox\";s:4:\"slug\";s:37:\"album-and-image-gallery-plus-lightbox\";s:6:\"plugin\";s:65:\"album-and-image-gallery-plus-lightbox/album-and-image-gallery.php\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/album-and-image-gallery-plus-lightbox/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/album-and-image-gallery-plus-lightbox.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:90:\"https://ps.w.org/album-and-image-gallery-plus-lightbox/assets/icon-128x128.png?rev=2584107\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:92:\"https://ps.w.org/album-and-image-gallery-plus-lightbox/assets/banner-772x250.png?rev=2680562\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"popup-builder/popup-builder.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/popup-builder\";s:4:\"slug\";s:13:\"popup-builder\";s:6:\"plugin\";s:31:\"popup-builder/popup-builder.php\";s:11:\"new_version\";s:6:\"4.1.14\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/popup-builder/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/popup-builder.4.1.14.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/popup-builder/assets/icon-128x128.gif?rev=2698840\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/popup-builder/assets/banner-772x250.jpg?rev=2698842\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";s:6:\"tested\";s:5:\"6.1.3\";s:12:\"requires_php\";s:5:\"5.3.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"protect-uploads/protect-uploads.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/protect-uploads\";s:4:\"slug\";s:15:\"protect-uploads\";s:6:\"plugin\";s:35:\"protect-uploads/protect-uploads.php\";s:11:\"new_version\";s:5:\"0.5.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/protect-uploads/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/protect-uploads.0.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/protect-uploads/assets/icon-256x256.png?rev=2779778\";s:2:\"1x\";s:68:\"https://ps.w.org/protect-uploads/assets/icon-128x128.png?rev=2779778\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/protect-uploads/assets/banner-1544x500.png?rev=2779778\";s:2:\"1x\";s:70:\"https://ps.w.org/protect-uploads/assets/banner-772x250.png?rev=2779778\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";s:6:\"tested\";s:5:\"6.0.5\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"wp-file-manager/file_folder_manager.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/wp-file-manager\";s:4:\"slug\";s:15:\"wp-file-manager\";s:6:\"plugin\";s:39:\"wp-file-manager/file_folder_manager.php\";s:11:\"new_version\";s:5:\"7.1.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-file-manager/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-file-manager.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-file-manager/assets/icon-128x128.png?rev=2491299\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-file-manager/assets/banner-772x250.jpg?rev=2491299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"9.0.19\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.gif?rev=2765589\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.gif?rev=2765589\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-google-maps/assets/banner-1544x500.png?rev=2745267\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.png?rev=2746397\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}s:14:\"upgrade_notice\";s:78:\"<p>Please update to 9.0.19 or above for the latest stability improvements.</p>\";}s:11:\"acf/acf.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:3:\"acf\";s:6:\"plugin\";s:11:\"acf/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:7:\"package\";s:0:\"\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:45:\"auto-post-expiration/auto-post-expiration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/auto-post-expiration\";s:4:\"slug\";s:20:\"auto-post-expiration\";s:6:\"plugin\";s:45:\"auto-post-expiration/auto-post-expiration.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/auto-post-expiration/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/auto-post-expiration.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/auto-post-expiration/assets/icon-256x256.png?rev=2923404\";s:2:\"1x\";s:73:\"https://ps.w.org/auto-post-expiration/assets/icon-256x256.png?rev=2923404\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/auto-post-expiration/assets/banner-772x250.png?rev=2923404\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.8\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:24:\"simple-lightbox/main.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/simple-lightbox\";s:4:\"slug\";s:15:\"simple-lightbox\";s:6:\"plugin\";s:24:\"simple-lightbox/main.php\";s:11:\"new_version\";s:5:\"2.9.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/simple-lightbox/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/simple-lightbox.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/simple-lightbox.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";a:0:{}}}}', 'no'),
(239, '_site_transient_timeout_theme_roots', '1688374969', 'no'),
(240, '_site_transient_theme_roots', 'a:1:{s:12:\"country-club\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `st_postmeta`
--

CREATE TABLE `st_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_postmeta`
--

INSERT INTO `st_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1687847536'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 1, '_wp_trash_meta_status', 'publish'),
(7, 1, '_wp_trash_meta_time', '1687847560'),
(8, 1, '_wp_desired_post_slug', 'hello-world'),
(9, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(10, 7, '_edit_last', '1'),
(11, 7, '_wp_page_template', 'main-page.php'),
(12, 7, '_edit_lock', '1687860390:1'),
(13, 9, '_edit_last', '1'),
(14, 9, '_edit_lock', '1688365521:1'),
(15, 11, '_wp_attached_file', '2023/06/image01.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2023/06/image01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image01-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image01-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image01-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2023/06/image02.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:944;s:4:\"file\";s:19:\"2023/06/image02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image02-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image02-768x354.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image02-1024x472.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:472;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 7, 'images', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}'),
(20, 7, '_images', 'field_649a88c3bf628'),
(21, 13, '_edit_last', '1'),
(22, 13, '_wp_page_template', 'about-page.php'),
(23, 13, '_edit_lock', '1688123633:1'),
(24, 15, '_wp_attached_file', '2023/06/image01-1.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2023/06/image01-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image01-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"image01-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"image01-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 16, '_wp_attached_file', '2023/06/image01-2.jpg'),
(27, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2023/06/image01-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image01-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image01-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"image01-2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"image01-2-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 17, '_wp_attached_file', '2023/06/about02.jpg'),
(29, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2023/06/about02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about02-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"about02-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"about02-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 18, '_wp_attached_file', '2023/06/image01-3.jpg'),
(31, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2023/06/image01-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image01-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image01-3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"image01-3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"image01-3-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 19, '_wp_attached_file', '2023/06/image01-4.jpg'),
(33, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2023/06/image01-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image01-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image01-4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"image01-4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"image01-4-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 20, '_wp_attached_file', '2023/06/image03.jpg'),
(35, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:19:\"2023/06/image03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image03-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image03-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image03-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"SUNIEL\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 21, '_wp_attached_file', '2023/06/lunch.jpg'),
(37, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:17:\"2023/06/lunch.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lunch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lunch-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 13, '_thumbnail_id', '18'),
(39, 22, '_edit_last', '1'),
(40, 22, '_edit_lock', '1688365776:1'),
(41, 24, '_wp_attached_file', '2023/06/why_choose01.jpg'),
(42, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:24:\"2023/06/why_choose01.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"why_choose01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"why_choose01-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"why_choose01-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 25, 'image', '24'),
(44, 25, '_image', 'field_649aa172c6ef1'),
(45, 13, 'image', '24'),
(46, 13, '_image', 'field_649aa172c6ef1'),
(47, 26, 'image', '24'),
(48, 26, '_image', 'field_649aa172c6ef1'),
(49, 27, '_edit_last', '1'),
(50, 27, '_edit_lock', '1687855734:1'),
(51, 28, '_wp_attached_file', '2023/06/aagoda.png'),
(52, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2023/06/aagoda.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"aagoda-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 27, '_thumbnail_id', '29'),
(54, 29, '_wp_attached_file', '2023/06/logo-agoda.png'),
(55, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:182;s:4:\"file\";s:22:\"2023/06/logo-agoda.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-agoda-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-agoda-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 30, '_edit_last', '1'),
(57, 30, '_edit_lock', '1687855755:1'),
(58, 31, '_wp_attached_file', '2023/06/logo-booking.png'),
(59, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:279;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2023/06/logo-booking.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-booking-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 30, '_thumbnail_id', '31'),
(61, 32, '_edit_last', '1'),
(62, 32, '_edit_lock', '1687855774:1'),
(63, 33, '_wp_attached_file', '2023/06/logo-expedia.png'),
(64, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:134;s:4:\"file\";s:24:\"2023/06/logo-expedia.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-expedia-150x134.png\";s:5:\"width\";i:150;s:6:\"height\";i:134;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-expedia-300x101.png\";s:5:\"width\";i:300;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 32, '_thumbnail_id', '33'),
(66, 34, '_edit_last', '1'),
(67, 34, '_edit_lock', '1687855795:1'),
(68, 35, '_wp_attached_file', '2023/06/logo-tripadvisor.png'),
(69, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:94;s:4:\"file\";s:28:\"2023/06/logo-tripadvisor.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-tripadvisor-150x94.png\";s:5:\"width\";i:150;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"logo-tripadvisor-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 34, '_thumbnail_id', '35'),
(71, 36, '_edit_last', '1'),
(72, 36, '_edit_lock', '1687855806:1'),
(73, 36, '_thumbnail_id', '31'),
(74, 36, '_wp_trash_meta_status', 'publish'),
(75, 36, '_wp_trash_meta_time', '1687856058'),
(76, 36, '_wp_desired_post_slug', 'test'),
(77, 37, '_edit_last', '1'),
(78, 37, '_edit_lock', '1687859049:1'),
(79, 42, '_wp_attached_file', '2023/06/why_choose.jpg'),
(80, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:22:\"2023/06/why_choose.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"why_choose-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"why_choose-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"why_choose-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 43, 'image', '24'),
(82, 43, '_image', 'field_649aa172c6ef1'),
(83, 43, 'image_one', '42'),
(84, 43, '_image_one', 'field_649aa3f069d50'),
(85, 43, 'image_two', ''),
(86, 43, '_image_two', 'field_649aa3fe69d51'),
(87, 43, 'summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(88, 43, '_summary', 'field_649aa40c69d52'),
(89, 43, 'why_choose_us', ''),
(90, 43, '_why_choose_us', 'field_649aa46469d53'),
(91, 13, 'image_one', '42'),
(92, 13, '_image_one', 'field_649aa3f069d50'),
(93, 13, 'image_two', '177'),
(94, 13, '_image_two', 'field_649aa3fe69d51'),
(95, 13, 'summary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores saepe culpa soluta officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem laborum, eveniet maxime est officia. Sit, similique. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores saepe culpa soluta officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem laborum, officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem eveniet maxime est officia. Sit, similique.'),
(96, 13, '_summary', 'field_649aad2fd08df'),
(97, 13, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(98, 13, '_why_choose_us', 'field_649aa46469d53'),
(101, 45, 'image', '24'),
(102, 45, '_image', 'field_649aa172c6ef1'),
(103, 45, 'image_one', '42'),
(104, 45, '_image_one', 'field_649aa3f069d50'),
(105, 45, 'image_two', '44'),
(106, 45, '_image_two', 'field_649aa3fe69d51'),
(107, 45, 'summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(108, 45, '_summary', 'field_649aa40c69d52'),
(109, 45, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(110, 45, '_why_choose_us', 'field_649aa46469d53'),
(111, 46, 'image', '24'),
(112, 46, '_image', 'field_649aa172c6ef1'),
(113, 46, 'image_one', '42'),
(114, 46, '_image_one', 'field_649aa3f069d50'),
(115, 46, 'image_two', '44'),
(116, 46, '_image_two', 'field_649aa3fe69d51'),
(117, 46, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(118, 46, '_our_features_summary', 'field_649aa40c69d52'),
(119, 46, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(120, 46, '_why_choose_us', 'field_649aa46469d53'),
(121, 13, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(122, 13, '_our_features_summary', 'field_649aa40c69d52'),
(123, 48, 'image', '24'),
(124, 48, '_image', 'field_649aa172c6ef1'),
(125, 48, 'visitors', '1920 +'),
(126, 48, '_visitors', 'field_649aa5c4b2785'),
(127, 48, 'image_one', '42'),
(128, 48, '_image_one', 'field_649aa3f069d50'),
(129, 48, 'image_two', '44'),
(130, 48, '_image_two', 'field_649aa3fe69d51'),
(131, 48, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(132, 48, '_our_features_summary', 'field_649aa40c69d52'),
(133, 48, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(134, 48, '_why_choose_us', 'field_649aa46469d53'),
(135, 13, 'visitors', '1950 +'),
(136, 13, '_visitors', 'field_649aa5c4b2785'),
(137, 49, 'image', '24'),
(138, 49, '_image', 'field_649aa172c6ef1'),
(139, 49, 'visitors', '1950 +'),
(140, 49, '_visitors', 'field_649aa5c4b2785'),
(141, 49, 'image_one', '42'),
(142, 49, '_image_one', 'field_649aa3f069d50'),
(143, 49, 'image_two', '44'),
(144, 49, '_image_two', 'field_649aa3fe69d51'),
(145, 49, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(146, 49, '_our_features_summary', 'field_649aa40c69d52'),
(147, 49, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(148, 49, '_why_choose_us', 'field_649aa46469d53'),
(149, 50, '_edit_last', '1'),
(150, 50, '_edit_lock', '1687942422:1'),
(151, 50, '_thumbnail_id', '18'),
(152, 50, '_wp_page_template', 'contact-page.php'),
(153, 53, '_edit_last', '1'),
(154, 53, '_edit_lock', '1687857808:1'),
(155, 61, 'phone', '974-1803874'),
(156, 61, '_phone', 'field_649aa79ca86a2'),
(157, 61, 'email', 'countryclubchitlang09@gmail.com'),
(158, 61, '_email', 'field_649aa7a6a86a3'),
(159, 61, 'address', 'Chitlang-9 Thaha municipality Makawanpur, Nepa, Nepal'),
(160, 61, '_address', 'field_649aa7aca86a4'),
(161, 61, 'facebook', 'https://www.facebook.com/'),
(162, 61, '_facebook', 'field_649aa7b6a86a5'),
(163, 61, 'instagram', 'https://www.instagram.com/'),
(164, 61, '_instagram', 'field_649aa7bda86a6'),
(165, 61, 'youtube', 'https://www.youtube.com/'),
(166, 61, '_youtube', 'field_649aa7cea86a7'),
(167, 61, 'twitter', 'https://www.twitter.com/'),
(168, 61, '_twitter', 'field_649aa7d6a86a8'),
(169, 50, 'phone', '974-1803874'),
(170, 50, '_phone', 'field_649aa79ca86a2'),
(171, 50, 'email', 'countryclubchitlang09@gmail.com'),
(172, 50, '_email', 'field_649aa7a6a86a3'),
(173, 50, 'address', 'Chitlang-9 Thaha municipality Makawanpur, Nepa, Nepal'),
(174, 50, '_address', 'field_649aa7aca86a4'),
(175, 50, 'facebook', 'https://www.facebook.com/'),
(176, 50, '_facebook', 'field_649aa7b6a86a5'),
(177, 50, 'instagram', 'https://www.instagram.com/'),
(178, 50, '_instagram', 'field_649aa7bda86a6'),
(179, 50, 'youtube', 'https://www.youtube.com/'),
(180, 50, '_youtube', 'field_649aa7cea86a7'),
(181, 50, 'twitter', 'https://www.twitter.com/'),
(182, 50, '_twitter', 'field_649aa7d6a86a8'),
(183, 62, 'phone', '974-1803874'),
(184, 62, '_phone', 'field_649aa79ca86a2'),
(185, 62, 'email', 'countryclubchitlang09@gmail.com'),
(186, 62, '_email', 'field_649aa7a6a86a3'),
(187, 62, 'address', 'Chitlang-9 Thaha municipality Makawanpur, Nepa, Nepal'),
(188, 62, '_address', 'field_649aa7aca86a4'),
(189, 62, 'facebook', 'https://www.facebook.com/'),
(190, 62, '_facebook', 'field_649aa7b6a86a5'),
(191, 62, 'instagram', 'https://www.instagram.com/'),
(192, 62, '_instagram', 'field_649aa7bda86a6'),
(193, 62, 'youtube', 'https://www.youtube.com/'),
(194, 62, '_youtube', 'field_649aa7cea86a7'),
(195, 62, 'twitter', 'https://www.twitter.com/'),
(196, 62, '_twitter', 'field_649aa7d6a86a8'),
(197, 63, 'phone', '974-1803874'),
(198, 63, '_phone', 'field_649aa79ca86a2'),
(199, 63, 'email', 'countryclubchitlang09@gmail.com'),
(200, 63, '_email', 'field_649aa7a6a86a3'),
(201, 63, 'address', 'Chitlang-9 Thaha municipality Makawanpur, Nepa, Nepal'),
(202, 63, '_address', 'field_649aa7aca86a4'),
(203, 63, 'facebook', 'https://www.facebook.com/'),
(204, 63, '_facebook', 'field_649aa7b6a86a5'),
(205, 63, 'instagram', 'https://www.instagram.com/'),
(206, 63, '_instagram', 'field_649aa7bda86a6'),
(207, 63, 'youtube', 'https://www.youtube.com/'),
(208, 63, '_youtube', 'field_649aa7cea86a7'),
(209, 63, 'twitter', 'https://www.twitter.com/'),
(210, 63, '_twitter', 'field_649aa7d6a86a8'),
(211, 66, 'phone', '974-1803874'),
(212, 66, '_phone', 'field_649aa79ca86a2'),
(213, 66, 'email', 'countryclubchitlang09@gmail.com'),
(214, 66, '_email', 'field_649aa7a6a86a3'),
(215, 66, 'address', 'Chitlang-9 Thaha municipality Makawanpur, Nepa, Nepal'),
(216, 66, '_address', 'field_649aa7aca86a4'),
(217, 66, 'facebook', 'https://www.facebook.com/'),
(218, 66, '_facebook', 'field_649aa7b6a86a5'),
(219, 66, 'instagram', 'https://www.instagram.com/'),
(220, 66, '_instagram', 'field_649aa7bda86a6'),
(221, 66, 'youtube', 'https://www.youtube.com/'),
(222, 66, '_youtube', 'field_649aa7cea86a7'),
(223, 66, 'twitter', 'https://www.twitter.com/'),
(224, 66, '_twitter', 'field_649aa7d6a86a8'),
(225, 68, 'phone', '974-1803874'),
(226, 68, '_phone', 'field_649aa79ca86a2'),
(227, 68, 'email', 'countryclubchitlang09@gmail.com'),
(228, 68, '_email', 'field_649aa7a6a86a3'),
(229, 68, 'address', 'Chitlang-9 Thaha municipality Makawanpur, Nepa, Nepal'),
(230, 68, '_address', 'field_649aa7aca86a4'),
(231, 68, 'facebook', 'https://www.facebook.com/'),
(232, 68, '_facebook', 'field_649aa7b6a86a5'),
(233, 68, 'instagram', 'https://www.instagram.com/'),
(234, 68, '_instagram', 'field_649aa7bda86a6'),
(235, 68, 'youtube', 'https://www.youtube.com/'),
(236, 68, '_youtube', 'field_649aa7cea86a7'),
(237, 68, 'twitter', 'https://www.twitter.com/'),
(238, 68, '_twitter', 'field_649aa7d6a86a8'),
(239, 68, 'map_link', 'https://www.google.com/maps/dir//Country+club+chitlang+Chitlang+44100/@27.6416867,85.16275,14z/data=!4m5!4m4!1m0!1m2!1m1!1s0x39eb3bf036bb09ef:0xa2cf13f94f025b4c'),
(240, 68, '_map_link', 'field_649aab1813020'),
(241, 50, 'map_link', 'https://www.google.com/maps/dir//Country+club+chitlang+Chitlang+44100/@27.6416867,85.16275,14z/data=!4m5!4m4!1m0!1m2!1m1!1s0x39eb3bf036bb09ef:0xa2cf13f94f025b4c'),
(242, 50, '_map_link', 'field_649aab1813020'),
(243, 69, '_edit_last', '1'),
(244, 69, '_edit_lock', '1688365499:1'),
(245, 71, 'summary', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.'),
(246, 71, '_summary', 'field_649aad2fd08df'),
(247, 71, 'image', '24'),
(248, 71, '_image', 'field_649aa172c6ef1'),
(249, 71, 'visitors', '1950 +'),
(250, 71, '_visitors', 'field_649aa5c4b2785'),
(251, 71, 'image_one', '42'),
(252, 71, '_image_one', 'field_649aa3f069d50'),
(253, 71, 'image_two', '44'),
(254, 71, '_image_two', 'field_649aa3fe69d51'),
(255, 71, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(256, 71, '_our_features_summary', 'field_649aa40c69d52'),
(257, 71, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(258, 71, '_why_choose_us', 'field_649aa46469d53'),
(259, 72, 'summary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores saepe culpa soluta officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem laborum, eveniet maxime est officia. Sit, similique. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores saepe culpa soluta officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem laborum, officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem eveniet maxime est officia. Sit, similique.'),
(260, 72, '_summary', 'field_649aad2fd08df'),
(261, 72, 'image', '24'),
(262, 72, '_image', 'field_649aa172c6ef1'),
(263, 72, 'visitors', '1950 +'),
(264, 72, '_visitors', 'field_649aa5c4b2785'),
(265, 72, 'image_one', '42'),
(266, 72, '_image_one', 'field_649aa3f069d50'),
(267, 72, 'image_two', '44'),
(268, 72, '_image_two', 'field_649aa3fe69d51'),
(269, 72, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(270, 72, '_our_features_summary', 'field_649aa40c69d52'),
(271, 72, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(272, 72, '_why_choose_us', 'field_649aa46469d53'),
(273, 73, '_edit_last', '1'),
(274, 73, '_edit_lock', '1688365527:1'),
(275, 76, '_wp_attached_file', '2023/06/about01.jpg'),
(276, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:944;s:4:\"file\";s:19:\"2023/06/about01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about01-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"about01-768x354.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"about01-1024x472.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:472;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 77, 'images', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}'),
(278, 77, '_images', 'field_649a88c3bf628'),
(279, 77, 'image_one', '76'),
(280, 77, '_image_one', 'field_649aaf3c78256'),
(281, 77, 'image_two', '76'),
(282, 77, '_image_two', 'field_649aaf4678257'),
(283, 7, 'image_one', '76'),
(284, 7, '_image_one', 'field_649aaf3c78256'),
(285, 7, 'image_two', '76'),
(286, 7, '_image_two', 'field_649aaf4678257'),
(287, 78, '_edit_last', '1'),
(288, 78, '_edit_lock', '1687861020:1'),
(289, 78, '_thumbnail_id', '28'),
(290, 81, '_edit_last', '1'),
(291, 81, '_edit_lock', '1687861808:1'),
(292, 81, '_thumbnail_id', '28'),
(293, 82, '_edit_last', '1'),
(294, 82, '_edit_lock', '1687861024:1'),
(295, 82, '_thumbnail_id', '28'),
(296, 83, '_edit_last', '1'),
(297, 83, '_edit_lock', '1687860937:1'),
(298, 78, 'title', 'Satisfied with Service'),
(299, 78, '_title', 'field_649ab747f8fad'),
(300, 81, 'title', 'Heaven of Hospitality'),
(301, 81, '_title', 'field_649ab747f8fad'),
(302, 82, 'title', 'My Favorite Place'),
(303, 82, '_title', 'field_649ab747f8fad'),
(304, 85, '_edit_last', '1'),
(305, 85, '_edit_lock', '1687861554:1'),
(306, 85, '_thumbnail_id', '15'),
(307, 85, '_wp_page_template', 'testimonial-page.php'),
(308, 87, '_edit_last', '1'),
(309, 87, '_edit_lock', '1687934501:1'),
(310, 88, '_wp_attached_file', '2023/06/restaurant1.jpg'),
(311, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:944;s:6:\"height\";i:2048;s:4:\"file\";s:23:\"2023/06/restaurant1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"restaurant1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"restaurant1-138x300.jpg\";s:5:\"width\";i:138;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"restaurant1-768x1666.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1666;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"restaurant1-472x1024.jpg\";s:5:\"width\";i:472;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 87, '_thumbnail_id', '88'),
(313, 89, '_edit_last', '1'),
(314, 89, '_edit_lock', '1687934550:1'),
(315, 90, '_wp_attached_file', '2023/06/event.jpg'),
(316, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1155;s:4:\"file\";s:17:\"2023/06/event.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"event-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"event-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"event-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"event-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 91, '_wp_attached_file', '2023/06/image04.jpg'),
(318, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:944;s:4:\"file\";s:19:\"2023/06/image04.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image04-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image04-768x354.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image04-1024x472.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:472;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 89, '_thumbnail_id', '90'),
(320, 92, '_edit_last', '1'),
(321, 92, '_edit_lock', '1687937902:1'),
(322, 92, '_thumbnail_id', '91'),
(323, 93, '_edit_last', '1'),
(324, 93, '_edit_lock', '1687934380:1'),
(325, 93, '_wp_page_template', 'default'),
(326, 96, '_edit_last', '1'),
(327, 96, '_edit_lock', '1687933573:1'),
(328, 96, '_wp_trash_meta_status', 'draft'),
(329, 96, '_wp_trash_meta_time', '1687933580'),
(330, 96, '_wp_desired_post_slug', ''),
(331, 98, '_edit_last', '1'),
(332, 98, '_edit_lock', '1687933467:1'),
(333, 98, '_thumbnail_id', '16'),
(334, 99, '_edit_last', '1'),
(335, 99, '_edit_lock', '1687933497:1'),
(336, 99, '_thumbnail_id', '24'),
(337, 99, '_wp_trash_meta_status', 'publish'),
(338, 99, '_wp_trash_meta_time', '1687933650'),
(339, 99, '_wp_desired_post_slug', 'testtwo'),
(340, 98, '_wp_trash_meta_status', 'publish'),
(341, 98, '_wp_trash_meta_time', '1687933650'),
(342, 98, '_wp_desired_post_slug', 'test'),
(343, 93, '_thumbnail_id', '76'),
(344, 100, '_edit_last', '1'),
(345, 100, '_edit_lock', '1687940908:1'),
(346, 101, '_wp_attached_file', '2023/06/wifi.png'),
(347, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:248;s:4:\"file\";s:16:\"2023/06/wifi.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wifi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"wifi-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 100, '_thumbnail_id', '101'),
(349, 102, '_edit_last', '1'),
(350, 102, '_edit_lock', '1687941020:1'),
(351, 103, '_wp_attached_file', '2023/06/parking.png'),
(352, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:19:\"2023/06/parking.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 102, '_thumbnail_id', '103'),
(354, 104, '_edit_last', '1'),
(355, 104, '_edit_lock', '1687941016:1'),
(356, 105, '_wp_attached_file', '2023/06/parking-1.png'),
(357, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:21:\"2023/06/parking-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 104, '_thumbnail_id', '105'),
(359, 106, '_edit_last', '1'),
(360, 106, '_edit_lock', '1687941119:1'),
(361, 107, '_wp_attached_file', '2023/06/room.png'),
(362, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2023/06/room.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 108, '_wp_attached_file', '2023/06/dish.png'),
(364, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2023/06/dish.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(365, 106, '_thumbnail_id', '108'),
(366, 109, '_edit_last', '1'),
(367, 109, '_edit_lock', '1687941209:1'),
(368, 110, '_wp_attached_file', '2023/06/child-play-room.png'),
(369, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:27:\"2023/06/child-play-room.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"child-play-room-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 109, '_thumbnail_id', '110'),
(371, 111, '_edit_last', '1'),
(372, 111, '_edit_lock', '1687941387:1'),
(373, 112, '_wp_attached_file', '2023/06/hall.png'),
(374, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2023/06/hall.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hall-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hall-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 113, '_wp_attached_file', '2023/06/hall-1.png'),
(376, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2023/06/hall-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hall-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hall-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 111, '_thumbnail_id', '113'),
(378, 114, '_edit_last', '1'),
(379, 114, '_edit_lock', '1687941482:1'),
(380, 114, '_thumbnail_id', '103'),
(381, 114, '_wp_trash_meta_status', 'publish'),
(382, 114, '_wp_trash_meta_time', '1687941628'),
(383, 114, '_wp_desired_post_slug', 'room-test'),
(384, 115, '_edit_last', '1'),
(385, 115, '_edit_lock', '1687942572:1'),
(386, 115, '_thumbnail_id', '12'),
(387, 115, '_wp_page_template', 'book_now-page.php'),
(388, 117, '_form', '<div class=\"booking_block\">\n                                    <h3>Booking</h3>\n                                    <div class=\"row\">\n                                        <div class=\"col-md-6\">\n                                            <div class=\"mb-3 d-flex flex-column\">\n                                                <label class=\"form-label\">Arrival Date</label>[date* arrival class:form-control \"Arrival Date\"] \n                                            </div>\n                                        </div>\n                                        <div class=\"col-md-6\">\n                                            <div class=\"mb-3 d-flex flex-column\">\n                                                <label class=\"form-label\">Depature Date</label>[date* depature class:form-control \"Depature Date\"] \n                                            </div>\n                                        </div>\n                                    </div>\n                                    <div class=\"row\">\n                                        <div class=\"col-md-6\">\n                                            <div class=\"d-flex flex-column\">\n                                                <label class=\"form-label\">Adult</label>\n                                                <div class=\"div_input\">\n                                                    [number* adult min:1 max:25 class:form-control placeholder \"0\"]   \n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class=\"col-md-6\">\n                                            <div class=\"d-flex flex-column\">\n                                                <label class=\"form-label\">Children</label>\n                                                <div class=\"div_input\">\n                                                    [number* children min:0 max:25 class:form-control placeholder \"0\"]\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class=\"personal_block\">\n                                    <h3>Personal </h3>\n                                    <div class=\"row\">\n                                        <div class=\"col-md-6\">\n                                            <div class=\"mb-3 d-flex flex-column\">\n                                                <label class=\"form-label\">Name</label>[text* fullname class:form-control placeholder \"Name\"]\n                                            </div>\n                                        </div>\n                                        <div class=\"col-md-6\">\n                                            <div class=\"mb-3 d-flex flex-column\">\n                                                <label class=\"form-label\">Address</label>[text* address class:form-control placeholder \"Address\"] \n                                            </div>\n                                        </div>\n                                    </div>\n                                    <div class=\"row\">\n                                        <div class=\"col-md-6\">\n                                            <div class=\"mb-3 d-flex flex-column\">\n                                                <label class=\"form-label\">Contact No.</label>[tel* phone class:form-control placeholder \"Contact No.\"] \n                                            </div>\n                                        </div>\n                                        <div class=\"col-md-6\">\n                                            <div class=\"mb-3 d-flex flex-column\">\n                                                <label class=\"form-label\">Email</label>[email* email class:form-control placeholder \"Email\"]\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <label class=\"form-label\">Message</label>[textarea* message class:form-control placeholder \"Message\"]  \n[submit class:submit_btn \"Book\"]  \n                                </div>\n                            </div>\n                        </div>'),
(389, 117, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"Room Booking from \"[fullname]\"\";s:6:\"sender\";s:36:\"[fullname] <tashika@digisoft.com.np>\";s:9:\"recipient\";s:23:\"tashika@digisoft.com.np\";s:4:\"body\";s:343:\"Arrival: [arrival] | Departure: [depature]\nAdult Guest: [adult]\nChild Guest: [children]\nName: [fullname]\nEmail: [email]\nAddress: [address]\nPhone: [phone]\nMessage: [message]\n\n-- \nThis e-mail was sent from a booking form on a Country Club Chitlang\nChitlang-9 Thaha municipality Makawanpur, Nepa, Nepal\n974-1803874\ncountryclubchitlang09@gmail.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `st_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(390, 117, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:38:\"Country Club Chitlang \"[your-subject]\"\";s:6:\"sender\";s:47:\"Country Club Chitlang <tashika@digisoft.com.np>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:148:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Country Club Chitlang (http://localhost/project/country-club-chitlang)\";s:18:\"additional_headers\";s:33:\"Reply-To: tashika@digisoft.com.np\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(391, 117, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:22:\"Invalid date supplied.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(392, 117, '_additional_settings', ''),
(393, 117, '_locale', 'en_US'),
(417, 119, '_edit_last', '1'),
(418, 119, '_edit_lock', '1687950826:1'),
(419, 119, '_thumbnail_id', '15'),
(420, 119, '_wp_page_template', 'photo-page.php'),
(421, 121, '_edit_last', '1'),
(422, 121, '_edit_lock', '1687951088:1'),
(423, 122, '_wp_attached_file', '2023/06/about01-1.jpg'),
(424, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:944;s:4:\"file\";s:21:\"2023/06/about01-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"about01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"about01-1-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"about01-1-768x354.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"about01-1-1024x472.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:472;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 123, '_wp_attached_file', '2023/06/about02-1.jpg'),
(426, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2023/06/about02-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"about02-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"about02-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"about02-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"about02-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(427, 124, '_wp_attached_file', '2023/06/why_choose-1.jpg'),
(428, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:24:\"2023/06/why_choose-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"why_choose-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"why_choose-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"why_choose-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(429, 125, '_wp_attached_file', '2023/06/why_choose01-1.jpg'),
(430, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:26:\"2023/06/why_choose01-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"why_choose01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"why_choose01-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"why_choose01-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(431, 121, '_aigpl_gallery_imgs', 'a:4:{i:0;s:3:\"122\";i:1;s:3:\"123\";i:2;s:3:\"124\";i:3;s:3:\"125\";}'),
(432, 121, '_thumbnail_id', '90'),
(433, 127, '_edit_last', '1'),
(434, 127, '_edit_lock', '1687953734:1'),
(435, 127, '_aigpl_gallery_imgs', 'a:3:{i:0;s:3:\"124\";i:1;s:2:\"21\";i:2;s:2:\"88\";}'),
(436, 127, '_thumbnail_id', '20'),
(437, 128, '_edit_last', '1'),
(438, 128, '_edit_lock', '1688104423:1'),
(439, 128, '_thumbnail_id', '17'),
(440, 128, '_wp_page_template', 'blog-page.php'),
(441, 130, '_edit_last', '1'),
(442, 130, '_edit_lock', '1688104632:1'),
(443, 132, '_wp_attached_file', '2023/06/blog01.jpg'),
(444, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:901;s:4:\"file\";s:18:\"2023/06/blog01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog01-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog01-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"blog01-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(445, 131, '_edit_last', '1'),
(446, 131, '_thumbnail_id', '182'),
(449, 131, '_edit_lock', '1688126750:1'),
(450, 134, '_edit_last', '1'),
(451, 134, '_edit_lock', '1688126543:1'),
(452, 135, '_wp_attached_file', '2023/06/blog02.jpg'),
(453, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:644;s:4:\"file\";s:18:\"2023/06/blog02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog02-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog02-768x483.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:483;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"blog02-1024x644.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(454, 134, '_thumbnail_id', '181'),
(457, 137, '_edit_last', '1'),
(458, 137, '_edit_lock', '1688126123:1'),
(459, 138, '_wp_attached_file', '2023/06/blog03.jpg'),
(460, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:956;s:4:\"file\";s:18:\"2023/06/blog03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog03-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog03-768x489.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:489;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"blog03-1024x653.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:653;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(461, 137, '_thumbnail_id', '179'),
(466, 130, '_wp_trash_meta_status', 'draft'),
(467, 130, '_wp_trash_meta_time', '1688105670'),
(468, 130, '_wp_desired_post_slug', ''),
(473, 144, '_edit_last', '1'),
(474, 144, '_edit_lock', '1688106395:1'),
(475, 144, '_thumbnail_id', '11'),
(476, 144, '_wp_page_template', 'menu-page.php'),
(477, 148, '_edit_last', '1'),
(478, 148, '_edit_lock', '1688119567:1'),
(479, 155, '_edit_last', '1'),
(480, 155, '_edit_lock', '1688119330:1'),
(481, 156, '_wp_attached_file', '2023/06/menu03.jpg'),
(482, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:220;s:4:\"file\";s:18:\"2023/06/menu03.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"menu03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(483, 155, '_thumbnail_id', '156'),
(484, 155, 'available', '24 hours'),
(485, 155, '_available', 'field_649e76fac14cf'),
(486, 155, 'food_menus', '5'),
(487, 155, '_food_menus', 'field_649e7700c14d0'),
(488, 157, '_edit_last', '1'),
(489, 157, '_edit_lock', '1688119539:1'),
(490, 158, '_wp_attached_file', '2023/06/lunch-1.jpg'),
(491, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:19:\"2023/06/lunch-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"lunch-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"lunch-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(492, 157, '_thumbnail_id', '158'),
(493, 157, 'available', '24 hours'),
(494, 157, '_available', 'field_649e76fac14cf'),
(495, 157, 'food_menus', '5'),
(496, 157, '_food_menus', 'field_649e7700c14d0'),
(497, 159, '_edit_last', '1'),
(498, 159, '_edit_lock', '1688121056:1'),
(499, 160, '_wp_attached_file', '2023/06/dessert.jpg'),
(500, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:454;s:4:\"file\";s:19:\"2023/06/dessert.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dessert-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dessert-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(501, 159, '_thumbnail_id', '160'),
(502, 159, 'available', '24 hours'),
(503, 159, '_available', 'field_649e76fac14cf'),
(504, 159, 'food_menus', '5'),
(505, 159, '_food_menus', 'field_649e7700c14d0'),
(506, 161, '_edit_last', '1'),
(507, 161, '_edit_lock', '1688110843:1'),
(508, 161, '_thumbnail_id', '11'),
(509, 161, 'available', ''),
(510, 161, '_available', 'field_649e76fac14cf'),
(511, 161, 'food_menus', '0'),
(512, 161, '_food_menus', 'field_649e7700c14d0'),
(513, 161, '_wp_trash_meta_status', 'publish'),
(514, 161, '_wp_trash_meta_time', '1688110990'),
(515, 161, '_wp_desired_post_slug', 'dinner'),
(516, 162, '_wp_attached_file', '2023/06/menu01.png'),
(517, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:142;s:6:\"height\";i:142;s:4:\"file\";s:18:\"2023/06/menu01.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(518, 163, '_wp_attached_file', '2023/06/image02-1.jpg'),
(519, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:490;s:4:\"file\";s:21:\"2023/06/image02-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image02-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image02-1-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(520, 164, '_wp_attached_file', '2023/06/tuscan.jpg'),
(521, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:490;s:4:\"file\";s:18:\"2023/06/tuscan.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tuscan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tuscan-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(522, 155, 'food_menus_0_title', 'Cachapas Queso'),
(523, 155, '_food_menus_0_title', 'field_649e7716c14d1'),
(524, 155, 'food_menus_0_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(525, 155, '_food_menus_0_food_summary', 'field_649e771dc14d2'),
(526, 155, 'food_menus_0_price', '$50'),
(527, 155, '_food_menus_0_price', 'field_649e772cc14d3'),
(528, 155, 'food_menus_0_image', '162'),
(529, 155, '_food_menus_0_image', 'field_649e7731c14d4'),
(530, 155, 'food_menus_1_title', 'Perica Arepa'),
(531, 155, '_food_menus_1_title', 'field_649e7716c14d1'),
(532, 155, 'food_menus_1_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(533, 155, '_food_menus_1_food_summary', 'field_649e771dc14d2'),
(534, 155, 'food_menus_1_price', '$60'),
(535, 155, '_food_menus_1_price', 'field_649e772cc14d3'),
(536, 155, 'food_menus_1_image', '156'),
(537, 155, '_food_menus_1_image', 'field_649e7731c14d4'),
(538, 155, 'food_menus_2_title', 'Coconut Chia Bowl'),
(539, 155, '_food_menus_2_title', 'field_649e7716c14d1'),
(540, 155, 'food_menus_2_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(541, 155, '_food_menus_2_food_summary', 'field_649e771dc14d2'),
(542, 155, 'food_menus_2_price', '$70'),
(543, 155, '_food_menus_2_price', 'field_649e772cc14d3'),
(544, 155, 'food_menus_2_image', '163'),
(545, 155, '_food_menus_2_image', 'field_649e7731c14d4'),
(546, 155, 'food_menus_3_title', 'Gazpacho'),
(547, 155, '_food_menus_3_title', 'field_649e7716c14d1'),
(548, 155, 'food_menus_3_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(549, 155, '_food_menus_3_food_summary', 'field_649e771dc14d2'),
(550, 155, 'food_menus_3_price', '$50'),
(551, 155, '_food_menus_3_price', 'field_649e772cc14d3'),
(552, 155, 'food_menus_3_image', '164'),
(553, 155, '_food_menus_3_image', 'field_649e7731c14d4'),
(554, 155, 'food_menus_4_title', ' Cachapas Queso'),
(555, 155, '_food_menus_4_title', 'field_649e7716c14d1'),
(556, 155, 'food_menus_4_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(557, 155, '_food_menus_4_food_summary', 'field_649e771dc14d2'),
(558, 155, 'food_menus_4_price', '$50'),
(559, 155, '_food_menus_4_price', 'field_649e772cc14d3'),
(560, 155, 'food_menus_4_image', '162'),
(561, 155, '_food_menus_4_image', 'field_649e7731c14d4'),
(562, 157, 'food_menus_0_title', 'Cachapas Queso'),
(563, 157, '_food_menus_0_title', 'field_649e7716c14d1'),
(564, 157, 'food_menus_0_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(565, 157, '_food_menus_0_food_summary', 'field_649e771dc14d2'),
(566, 157, 'food_menus_0_price', '$70'),
(567, 157, '_food_menus_0_price', 'field_649e772cc14d3'),
(568, 157, 'food_menus_0_image', '162'),
(569, 157, '_food_menus_0_image', 'field_649e7731c14d4'),
(570, 157, 'food_menus_1_title', 'Perica Arepa'),
(571, 157, '_food_menus_1_title', 'field_649e7716c14d1'),
(572, 157, 'food_menus_1_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(573, 157, '_food_menus_1_food_summary', 'field_649e771dc14d2'),
(574, 157, 'food_menus_1_price', '$60'),
(575, 157, '_food_menus_1_price', 'field_649e772cc14d3'),
(576, 157, 'food_menus_1_image', '156'),
(577, 157, '_food_menus_1_image', 'field_649e7731c14d4'),
(578, 157, 'food_menus_2_title', 'Coconut Chia Bowl'),
(579, 157, '_food_menus_2_title', 'field_649e7716c14d1'),
(580, 157, 'food_menus_2_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(581, 157, '_food_menus_2_food_summary', 'field_649e771dc14d2'),
(582, 157, 'food_menus_2_price', '$50'),
(583, 157, '_food_menus_2_price', 'field_649e772cc14d3'),
(584, 157, 'food_menus_2_image', '163'),
(585, 157, '_food_menus_2_image', 'field_649e7731c14d4'),
(586, 157, 'food_menus_3_title', 'Gazpacho'),
(587, 157, '_food_menus_3_title', 'field_649e7716c14d1'),
(588, 157, 'food_menus_3_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(589, 157, '_food_menus_3_food_summary', 'field_649e771dc14d2'),
(590, 157, 'food_menus_3_price', '$40'),
(591, 157, '_food_menus_3_price', 'field_649e772cc14d3'),
(592, 157, 'food_menus_3_image', '164'),
(593, 157, '_food_menus_3_image', 'field_649e7731c14d4'),
(594, 157, 'food_menus_4_title', 'Cachapas Queso'),
(595, 157, '_food_menus_4_title', 'field_649e7716c14d1'),
(596, 157, 'food_menus_4_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(597, 157, '_food_menus_4_food_summary', 'field_649e771dc14d2'),
(598, 157, 'food_menus_4_price', '$50'),
(599, 157, '_food_menus_4_price', 'field_649e772cc14d3'),
(600, 157, 'food_menus_4_image', '162'),
(601, 157, '_food_menus_4_image', 'field_649e7731c14d4'),
(602, 159, 'food_menus_0_title', 'Cachapas Queso'),
(603, 159, '_food_menus_0_title', 'field_649e7716c14d1'),
(604, 159, 'food_menus_0_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(605, 159, '_food_menus_0_food_summary', 'field_649e771dc14d2'),
(606, 159, 'food_menus_0_price', '$80'),
(607, 159, '_food_menus_0_price', 'field_649e772cc14d3'),
(608, 159, 'food_menus_0_image', '162'),
(609, 159, '_food_menus_0_image', 'field_649e7731c14d4'),
(610, 159, 'food_menus_1_title', 'Perica Arepa'),
(611, 159, '_food_menus_1_title', 'field_649e7716c14d1'),
(612, 159, 'food_menus_1_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(613, 159, '_food_menus_1_food_summary', 'field_649e771dc14d2'),
(614, 159, 'food_menus_1_price', '$50'),
(615, 159, '_food_menus_1_price', 'field_649e772cc14d3'),
(616, 159, 'food_menus_1_image', '156'),
(617, 159, '_food_menus_1_image', 'field_649e7731c14d4'),
(618, 159, 'food_menus_2_title', 'Coconut Chia Bowl'),
(619, 159, '_food_menus_2_title', 'field_649e7716c14d1'),
(620, 159, 'food_menus_2_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(621, 159, '_food_menus_2_food_summary', 'field_649e771dc14d2'),
(622, 159, 'food_menus_2_price', '$55'),
(623, 159, '_food_menus_2_price', 'field_649e772cc14d3'),
(624, 159, 'food_menus_2_image', '163'),
(625, 159, '_food_menus_2_image', 'field_649e7731c14d4'),
(626, 159, 'food_menus_3_title', 'Gazpacho'),
(627, 159, '_food_menus_3_title', 'field_649e7716c14d1'),
(628, 159, 'food_menus_3_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(629, 159, '_food_menus_3_food_summary', 'field_649e771dc14d2'),
(630, 159, 'food_menus_3_price', '$60'),
(631, 159, '_food_menus_3_price', 'field_649e772cc14d3'),
(632, 159, 'food_menus_3_image', '164'),
(633, 159, '_food_menus_3_image', 'field_649e7731c14d4'),
(634, 159, 'food_menus_4_title', 'Cachapas Queso'),
(635, 159, '_food_menus_4_title', 'field_649e7716c14d1'),
(636, 159, 'food_menus_4_food_summary', 'Chilled tomato, cucumber, garlic, red pepper soup.'),
(637, 159, '_food_menus_4_food_summary', 'field_649e771dc14d2'),
(638, 159, 'food_menus_4_price', '$78'),
(639, 159, '_food_menus_4_price', 'field_649e772cc14d3'),
(640, 159, 'food_menus_4_image', '162'),
(641, 159, '_food_menus_4_image', 'field_649e7731c14d4'),
(642, 166, '_menu_item_type', 'post_type'),
(643, 166, '_menu_item_menu_item_parent', '0'),
(644, 166, '_menu_item_object_id', '7'),
(645, 166, '_menu_item_object', 'page'),
(646, 166, '_menu_item_target', ''),
(647, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(648, 166, '_menu_item_xfn', ''),
(649, 166, '_menu_item_url', ''),
(651, 167, '_menu_item_type', 'post_type'),
(652, 167, '_menu_item_menu_item_parent', '0'),
(653, 167, '_menu_item_object_id', '93'),
(654, 167, '_menu_item_object', 'page'),
(655, 167, '_menu_item_target', ''),
(656, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(657, 167, '_menu_item_xfn', ''),
(658, 167, '_menu_item_url', ''),
(659, 167, '_menu_item_orphaned', '1688121466'),
(660, 168, '_menu_item_type', 'post_type'),
(661, 168, '_menu_item_menu_item_parent', '0'),
(662, 168, '_menu_item_object_id', '13'),
(663, 168, '_menu_item_object', 'page'),
(664, 168, '_menu_item_target', ''),
(665, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(666, 168, '_menu_item_xfn', ''),
(667, 168, '_menu_item_url', ''),
(669, 169, '_menu_item_type', 'post_type'),
(670, 169, '_menu_item_menu_item_parent', '176'),
(671, 169, '_menu_item_object_id', '128'),
(672, 169, '_menu_item_object', 'page'),
(673, 169, '_menu_item_target', ''),
(674, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 169, '_menu_item_xfn', ''),
(676, 169, '_menu_item_url', ''),
(678, 170, '_menu_item_type', 'post_type'),
(679, 170, '_menu_item_menu_item_parent', '0'),
(680, 170, '_menu_item_object_id', '115'),
(681, 170, '_menu_item_object', 'page'),
(682, 170, '_menu_item_target', ''),
(683, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(684, 170, '_menu_item_xfn', ''),
(685, 170, '_menu_item_url', ''),
(687, 171, '_menu_item_type', 'post_type'),
(688, 171, '_menu_item_menu_item_parent', '0'),
(689, 171, '_menu_item_object_id', '50'),
(690, 171, '_menu_item_object', 'page'),
(691, 171, '_menu_item_target', ''),
(692, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 171, '_menu_item_xfn', ''),
(694, 171, '_menu_item_url', ''),
(696, 172, '_menu_item_type', 'post_type'),
(697, 172, '_menu_item_menu_item_parent', '0'),
(698, 172, '_menu_item_object_id', '7'),
(699, 172, '_menu_item_object', 'page'),
(700, 172, '_menu_item_target', ''),
(701, 172, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 172, '_menu_item_xfn', ''),
(703, 172, '_menu_item_url', ''),
(704, 172, '_menu_item_orphaned', '1688121468'),
(705, 173, '_menu_item_type', 'post_type'),
(706, 173, '_menu_item_menu_item_parent', '0'),
(707, 173, '_menu_item_object_id', '144'),
(708, 173, '_menu_item_object', 'page'),
(709, 173, '_menu_item_target', ''),
(710, 173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 173, '_menu_item_xfn', ''),
(712, 173, '_menu_item_url', ''),
(714, 174, '_menu_item_type', 'post_type'),
(715, 174, '_menu_item_menu_item_parent', '176'),
(716, 174, '_menu_item_object_id', '119'),
(717, 174, '_menu_item_object', 'page'),
(718, 174, '_menu_item_target', ''),
(719, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 174, '_menu_item_xfn', ''),
(721, 174, '_menu_item_url', ''),
(723, 175, '_menu_item_type', 'post_type'),
(724, 175, '_menu_item_menu_item_parent', '0'),
(725, 175, '_menu_item_object_id', '85'),
(726, 175, '_menu_item_object', 'page'),
(727, 175, '_menu_item_target', ''),
(728, 175, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 175, '_menu_item_xfn', ''),
(730, 175, '_menu_item_url', ''),
(732, 176, '_menu_item_type', 'custom'),
(733, 176, '_menu_item_menu_item_parent', '0'),
(734, 176, '_menu_item_object_id', '176'),
(735, 176, '_menu_item_object', 'custom'),
(736, 176, '_menu_item_target', ''),
(737, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 176, '_menu_item_xfn', ''),
(739, 176, '_menu_item_url', 'http://ss'),
(741, 177, '_wp_attached_file', '2023/06/why_choose02.jpg'),
(742, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2040;s:6:\"height\";i:1536;s:4:\"file\";s:24:\"2023/06/why_choose02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"why_choose02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"why_choose02-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"why_choose02-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"why_choose02-1024x771.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:771;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(743, 178, 'summary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores saepe culpa soluta officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem laborum, eveniet maxime est officia. Sit, similique. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores saepe culpa soluta officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem laborum, officiis dolore! Voluptatem minus eius delectus ullam id fugiat earum dolorem eveniet maxime est officia. Sit, similique.'),
(744, 178, '_summary', 'field_649aad2fd08df'),
(745, 178, 'image', '24'),
(746, 178, '_image', 'field_649aa172c6ef1'),
(747, 178, 'visitors', '1950 +'),
(748, 178, '_visitors', 'field_649aa5c4b2785'),
(749, 178, 'image_one', '42'),
(750, 178, '_image_one', 'field_649aa3f069d50'),
(751, 178, 'image_two', '177'),
(752, 178, '_image_two', 'field_649aa3fe69d51'),
(753, 178, 'our_features_summary', 'At Country Club Chitlang, we understand the different expectations of visitors. We feel elated when you come back for the second time!'),
(754, 178, '_our_features_summary', 'field_649aa40c69d52'),
(755, 178, 'why_choose_us', '<ul>\r\n 	<li>Exceptional Service</li>\r\n 	<li>Prime Location</li>\r\n 	<li>Luxurious Accommodations</li>\r\n 	<li>Unparalleled Facilities</li>\r\n 	<li>Impeccable Attention to Detail</li>\r\n 	<li>Exclusive Rewards Program</li>\r\n 	<li>Sustainability and Eco-Friendliness</li>\r\n 	<li>Exceptional Value</li>\r\n 	<li>Positive Guest Reviews</li>\r\n</ul>'),
(756, 178, '_why_choose_us', 'field_649aa46469d53'),
(757, 179, '_wp_attached_file', '2023/06/rohan-reddy-Y3u0xBXhGtY-unsplash.jpg'),
(758, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:44:\"2023/06/rohan-reddy-Y3u0xBXhGtY-unsplash.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"rohan-reddy-Y3u0xBXhGtY-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"rohan-reddy-Y3u0xBXhGtY-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"rohan-reddy-Y3u0xBXhGtY-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"rohan-reddy-Y3u0xBXhGtY-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 180, '_wp_attached_file', '2023/06/sanjay-hona-2Q2dpVPY6XU-unsplash.jpg'),
(762, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:44:\"2023/06/sanjay-hona-2Q2dpVPY6XU-unsplash.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"sanjay-hona-2Q2dpVPY6XU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"sanjay-hona-2Q2dpVPY6XU-unsplash-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"sanjay-hona-2Q2dpVPY6XU-unsplash-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"sanjay-hona-2Q2dpVPY6XU-unsplash-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 181, '_wp_attached_file', '2023/06/shutterstock_154582769-17052019074121.jpg'),
(766, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:49:\"2023/06/shutterstock_154582769-17052019074121.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"shutterstock_154582769-17052019074121-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"shutterstock_154582769-17052019074121-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"shutterstock_154582769-17052019074121-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"shutterstock_154582769-17052019074121-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(771, 182, '_wp_attached_file', '2023/06/tourist-take-pictures-at-poonhill-2.jpg'),
(772, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1201;s:4:\"file\";s:47:\"2023/06/tourist-take-pictures-at-poonhill-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"tourist-take-pictures-at-poonhill-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"tourist-take-pictures-at-poonhill-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"tourist-take-pictures-at-poonhill-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"tourist-take-pictures-at-poonhill-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 50D\";s:7:\"caption\";s:186:\"Chinese tourists take pictures at poon hill which is at a altitude of 3210m.The number of tourists has increased in the annapurna region.Poon hill,myagdi,Nepal.Post photo Bijaya Neupaneq\";s:17:\"created_timestamp\";s:10:\"1325847259\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(773, 183, '_edit_last', '1'),
(774, 183, '_edit_lock', '1688368274:1'),
(775, 184, '_wp_attached_file', '2023/07/deluxe.jpg'),
(776, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1005;s:6:\"height\";i:752;s:4:\"file\";s:18:\"2023/07/deluxe.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"deluxe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"deluxe-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"deluxe-768x575.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(777, 183, '_thumbnail_id', '184'),
(778, 185, '_edit_last', '1'),
(779, 185, '_edit_lock', '1688368609:1'),
(780, 186, '_wp_attached_file', '2023/07/standard.jpg'),
(781, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1542;s:4:\"file\";s:20:\"2023/07/standard.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"standard-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"standard-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"standard-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"standard-1024x771.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:771;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 185, '_thumbnail_id', '186'),
(783, 187, '_edit_last', '1'),
(784, 187, '_edit_lock', '1688365899:1'),
(785, 184, '_wp_old_slug', 'deluxe'),
(786, 183, 'summary', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit'),
(787, 183, '_summary', 'field_649aad2fd08df'),
(788, 183, 'price', '$160 per night'),
(789, 183, '_price', 'field_64a26a991e9c5'),
(790, 183, 'beds', 'Standard'),
(791, 183, '_beds', 'field_64a26ac51e9c6'),
(792, 183, 'room_size', '870 sq ft / 132 sq m'),
(793, 183, '_room_size', 'field_64a26acc1e9c7'),
(794, 183, 'occupancy', '1 adults (3 children)'),
(795, 183, '_occupancy', 'field_64a26ae11e9c8'),
(796, 183, 'view', 'Mountain VIEW'),
(797, 183, '_view', 'field_64a26ae91e9c9'),
(798, 183, 'images', 'a:2:{i:0;s:3:\"186\";i:1;s:3:\"184\";}'),
(799, 183, '_images', 'field_649a88c3bf628'),
(800, 183, 'image', '11'),
(801, 183, '_image', 'field_649aa172c6ef1'),
(802, 197, '_wp_attached_file', '2023/07/dailyhousekeeping-1.png'),
(803, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:31:\"2023/07/dailyhousekeeping-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"dailyhousekeeping-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"dailyhousekeeping-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(804, 198, '_wp_attached_file', '2023/07/electricitybackup.png'),
(805, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2023/07/electricitybackup.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"electricitybackup-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"electricitybackup-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(806, 199, '_wp_attached_file', '2023/07/hair-drayer.png'),
(807, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2023/07/hair-drayer.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"hair-drayer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"hair-drayer-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(808, 200, '_wp_attached_file', '2023/07/individualRouter.png'),
(809, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2023/07/individualRouter.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"individualRouter-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"individualRouter-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(810, 201, '_wp_attached_file', '2023/07/iron.png'),
(811, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2023/07/iron.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"iron-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"iron-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(812, 202, '_wp_attached_file', '2023/07/king-size-bade.png'),
(813, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2023/07/king-size-bade.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"king-size-bade-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"king-size-bade-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(814, 203, '_wp_attached_file', '2023/07/slippers.png'),
(815, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2023/07/slippers.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slippers-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slippers-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(816, 204, '_wp_attached_file', '2023/07/toiletries.png'),
(817, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2023/07/toiletries.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"toiletries-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"toiletries-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(818, 183, 'room_facilities_0_title', 'Electricity Backup'),
(819, 183, '_room_facilities_0_title', 'field_64a26bc1167e4'),
(820, 183, 'room_facilities_0_image', '198'),
(821, 183, '_room_facilities_0_image', 'field_64a26bd0167e5'),
(822, 183, 'room_facilities_1_title', 'Toiletries'),
(823, 183, '_room_facilities_1_title', 'field_64a26bc1167e4'),
(824, 183, 'room_facilities_1_image', '204'),
(825, 183, '_room_facilities_1_image', 'field_64a26bd0167e5'),
(826, 183, 'room_facilities_2_title', 'Hair Dryer'),
(827, 183, '_room_facilities_2_title', 'field_64a26bc1167e4'),
(828, 183, 'room_facilities_2_image', '199'),
(829, 183, '_room_facilities_2_image', 'field_64a26bd0167e5'),
(830, 183, 'room_facilities_3_title', 'Iron plus Board'),
(831, 183, '_room_facilities_3_title', 'field_64a26bc1167e4'),
(832, 183, 'room_facilities_3_image', '201'),
(833, 183, '_room_facilities_3_image', 'field_64a26bd0167e5'),
(834, 183, 'room_facilities_4_title', 'Slippers'),
(835, 183, '_room_facilities_4_title', 'field_64a26bc1167e4'),
(836, 183, 'room_facilities_4_image', '203'),
(837, 183, '_room_facilities_4_image', 'field_64a26bd0167e5'),
(838, 183, 'room_facilities_5_title', 'King Size Bed'),
(839, 183, '_room_facilities_5_title', 'field_64a26bc1167e4'),
(840, 183, 'room_facilities_5_image', '202'),
(841, 183, '_room_facilities_5_image', 'field_64a26bd0167e5'),
(842, 183, 'room_facilities_6_title', 'Individual Router'),
(843, 183, '_room_facilities_6_title', 'field_64a26bc1167e4'),
(844, 183, 'room_facilities_6_image', '200'),
(845, 183, '_room_facilities_6_image', 'field_64a26bd0167e5'),
(846, 183, 'room_facilities_7_title', 'Daily Housekeeping'),
(847, 183, '_room_facilities_7_title', 'field_64a26bc1167e4'),
(848, 183, 'room_facilities_7_image', '197'),
(849, 183, '_room_facilities_7_image', 'field_64a26bd0167e5'),
(850, 183, 'room_facilities', '8'),
(851, 183, '_room_facilities', 'field_64a26bb2167e3'),
(852, 185, 'summary', 'Our hotel offers 30 Deluxe room, 5 Standard room .'),
(853, 185, '_summary', 'field_649aad2fd08df'),
(854, 185, 'images', 'a:2:{i:0;s:3:\"184\";i:1;s:3:\"186\";}'),
(855, 185, '_images', 'field_649a88c3bf628'),
(856, 185, 'price', '$100 Per Night'),
(857, 185, '_price', 'field_64a26a991e9c5'),
(858, 185, 'beds', 'Standard'),
(859, 185, '_beds', 'field_64a26ac51e9c6'),
(860, 185, 'room_size', '700 sq ft / 100 sq m'),
(861, 185, '_room_size', 'field_64a26acc1e9c7'),
(862, 185, 'occupancy', '2 Adults'),
(863, 185, '_occupancy', 'field_64a26ae11e9c8'),
(864, 185, 'view', 'Beach View'),
(865, 185, '_view', 'field_64a26ae91e9c9'),
(866, 185, 'room_facilities', '8'),
(867, 185, '_room_facilities', 'field_64a26bb2167e3'),
(868, 185, 'image', '11'),
(869, 185, '_image', 'field_649aa172c6ef1'),
(870, 186, '_wp_old_slug', 'standard'),
(871, 185, 'room_facilities_0_title', 'Electricity Backup'),
(872, 185, '_room_facilities_0_title', 'field_64a26bc1167e4'),
(873, 185, 'room_facilities_0_image', '198'),
(874, 185, '_room_facilities_0_image', 'field_64a26bd0167e5'),
(875, 185, 'room_facilities_1_title', 'Hair Dryer'),
(876, 185, '_room_facilities_1_title', 'field_64a26bc1167e4'),
(877, 185, 'room_facilities_1_image', '199'),
(878, 185, '_room_facilities_1_image', 'field_64a26bd0167e5'),
(879, 185, 'room_facilities_2_title', 'Individual Router'),
(880, 185, '_room_facilities_2_title', 'field_64a26bc1167e4'),
(881, 185, 'room_facilities_2_image', '200'),
(882, 185, '_room_facilities_2_image', 'field_64a26bd0167e5'),
(883, 185, 'room_facilities_3_title', 'Iron plus Board'),
(884, 185, '_room_facilities_3_title', 'field_64a26bc1167e4'),
(885, 185, 'room_facilities_3_image', '201'),
(886, 185, '_room_facilities_3_image', 'field_64a26bd0167e5'),
(887, 185, 'room_facilities_4_title', 'Slippers'),
(888, 185, '_room_facilities_4_title', 'field_64a26bc1167e4'),
(889, 185, 'room_facilities_4_image', '203'),
(890, 185, '_room_facilities_4_image', 'field_64a26bd0167e5'),
(891, 185, 'room_facilities_5_title', 'King Size Bed'),
(892, 185, '_room_facilities_5_title', 'field_64a26bc1167e4');
INSERT INTO `st_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(893, 185, 'room_facilities_5_image', '202'),
(894, 185, '_room_facilities_5_image', 'field_64a26bd0167e5'),
(895, 185, 'room_facilities_6_title', 'Toiletries'),
(896, 185, '_room_facilities_6_title', 'field_64a26bc1167e4'),
(897, 185, 'room_facilities_6_image', '204'),
(898, 185, '_room_facilities_6_image', 'field_64a26bd0167e5'),
(899, 185, 'room_facilities_7_title', 'Daily Housekeeping'),
(900, 185, '_room_facilities_7_title', 'field_64a26bc1167e4'),
(901, 185, 'room_facilities_7_image', '197'),
(902, 185, '_room_facilities_7_image', 'field_64a26bd0167e5'),
(903, 205, '_edit_last', '1'),
(904, 205, '_edit_lock', '1688369583:1'),
(905, 205, '_thumbnail_id', '177'),
(906, 205, 'summary', ''),
(907, 205, '_summary', 'field_649aad2fd08df'),
(908, 205, 'images', ''),
(909, 205, '_images', 'field_649a88c3bf628'),
(910, 205, 'price', ''),
(911, 205, '_price', 'field_64a26a991e9c5'),
(912, 205, 'beds', ''),
(913, 205, '_beds', 'field_64a26ac51e9c6'),
(914, 205, 'room_size', ''),
(915, 205, '_room_size', 'field_64a26acc1e9c7'),
(916, 205, 'occupancy', ''),
(917, 205, '_occupancy', 'field_64a26ae11e9c8'),
(918, 205, 'view', ''),
(919, 205, '_view', 'field_64a26ae91e9c9'),
(920, 205, 'room_facilities', '0'),
(921, 205, '_room_facilities', 'field_64a26bb2167e3'),
(922, 205, 'image', ''),
(923, 205, '_image', 'field_649aa172c6ef1'),
(924, 205, '_wp_trash_meta_status', 'publish'),
(925, 205, '_wp_trash_meta_time', '1688369730'),
(926, 205, '_wp_desired_post_slug', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `st_posts`
--

CREATE TABLE `st_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_posts`
--

INSERT INTO `st_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-27 06:31:45', '2023-06-27 06:31:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-06-27 06:32:41', '2023-06-27 06:32:41', '', 0, 'http://localhost/project/country-club-chitlang/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-27 06:31:45', '2023-06-27 06:31:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/project/country-club-chitlang/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-27 06:32:16', '2023-06-27 06:32:16', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-27 06:31:45', '2023-06-27 06:31:45', '<h2>Who we are</h2><p>Our website address is: http://localhost/project/country-club-chitlang.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-06-27 06:31:45', '2023-06-27 06:31:45', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-06-27 06:32:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-27 06:32:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/country-club-chitlang/?p=4', 0, 'post', '', 0),
(5, 1, '2023-06-27 06:32:16', '2023-06-27 06:32:16', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/project/country-club-chitlang/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-27 06:32:16', '2023-06-27 06:32:16', '', 2, 'http://localhost/project/country-club-chitlang/2023/06/27/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2023-06-27 06:32:41', '2023-06-27 06:32:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-27 06:32:41', '2023-06-27 06:32:41', '', 1, 'http://localhost/project/country-club-chitlang/2023/06/27/1-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2023-06-27 06:53:10', '2023-06-27 06:53:10', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-06-27 09:45:38', '2023-06-27 09:45:38', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-06-27 06:53:10', '2023-06-27 06:53:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-27 06:53:10', '2023-06-27 06:53:10', '', 7, 'http://localhost/project/country-club-chitlang/2023/06/27/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2023-06-27 06:59:31', '2023-06-27 06:59:31', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"main-page.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"rooms\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'group_649a88bf1de30', '', '', '2023-07-03 06:27:43', '2023-07-03 06:27:43', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2023-06-27 06:59:32', '2023-06-27 06:59:32', 'a:17:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"preview_size\";s:9:\"thumbnail\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Images', 'images', 'publish', 'closed', 'closed', '', 'field_649a88c3bf628', '', '', '2023-06-27 06:59:32', '2023-06-27 06:59:32', '', 9, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2023-06-27 07:00:34', '2023-06-27 07:00:34', '', 'image01', '', 'inherit', 'open', 'closed', '', 'image01', '', '', '2023-07-03 07:14:27', '2023-07-03 07:14:27', '', 7, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image01.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2023-06-27 07:00:35', '2023-06-27 07:00:35', '', 'image02', '', 'inherit', 'open', 'closed', '', 'image02', '', '', '2023-06-27 07:00:35', '2023-06-27 07:00:35', '', 7, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image02.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2023-06-27 08:25:25', '2023-06-27 08:25:25', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-06-30 11:01:41', '2023-06-30 11:01:41', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-06-27 08:25:25', '2023-06-27 08:25:25', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 08:25:25', '2023-06-27 08:25:25', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2023-06-27 08:36:55', '2023-06-27 08:36:55', '', 'image01', '', 'inherit', 'open', 'closed', '', 'image01-2', '', '', '2023-06-27 08:36:55', '2023-06-27 08:36:55', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2023-06-27 08:37:57', '2023-06-27 08:37:57', '', 'image01', '', 'inherit', 'open', 'closed', '', 'image01-3', '', '', '2023-06-27 08:37:57', '2023-06-27 08:37:57', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image01-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2023-06-27 08:39:23', '2023-06-27 08:39:23', '', 'about02', '', 'inherit', 'open', 'closed', '', 'about02', '', '', '2023-06-27 08:39:23', '2023-06-27 08:39:23', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/about02.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2023-06-27 08:39:57', '2023-06-27 08:39:57', '', 'image01', '', 'inherit', 'open', 'closed', '', 'image01-4', '', '', '2023-06-27 08:39:57', '2023-06-27 08:39:57', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image01-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2023-06-27 08:40:35', '2023-06-27 08:40:35', '', 'image01', '', 'inherit', 'open', 'closed', '', 'image01-5', '', '', '2023-06-27 08:40:35', '2023-06-27 08:40:35', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image01-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2023-06-27 08:40:51', '2023-06-27 08:40:51', '', 'image03', '', 'inherit', 'open', 'closed', '', 'image03', '', '', '2023-06-27 08:40:51', '2023-06-27 08:40:51', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image03.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2023-06-27 08:41:01', '2023-06-27 08:41:01', '', 'lunch', '', 'inherit', 'open', 'closed', '', 'lunch', '', '', '2023-06-27 08:41:01', '2023-06-27 08:41:01', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/lunch.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2023-06-27 08:44:52', '2023-06-27 08:44:52', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"about-page.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"rooms\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'group_649aa16e28caf', '', '', '2023-07-03 06:31:58', '2023-07-03 06:31:58', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2023-06-27 08:44:52', '2023-06-27 08:44:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_649aa172c6ef1', '', '', '2023-06-27 08:44:52', '2023-06-27 08:44:52', '', 22, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2023-06-27 08:46:28', '2023-06-27 08:46:28', '', 'why_choose01', '', 'inherit', 'open', 'closed', '', 'why_choose01', '', '', '2023-06-27 08:46:31', '2023-06-27 08:46:31', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/why_choose01.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2023-06-27 08:46:35', '2023-06-27 08:46:35', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 08:46:35', '2023-06-27 08:46:35', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2023-06-27 08:48:08', '2023-06-27 08:48:08', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 08:48:08', '2023-06-27 08:48:08', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2023-06-27 08:50:57', '2023-06-27 08:50:57', '', 'Agoda', '', 'publish', 'closed', 'closed', '', 'agoda', '', '', '2023-06-27 08:51:16', '2023-06-27 08:51:16', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=partners&#038;p=27', 0, 'partners', '', 0),
(28, 1, '2023-06-27 08:50:52', '2023-06-27 08:50:52', '', 'aagoda', '', 'inherit', 'open', 'closed', '', 'aagoda', '', '', '2023-06-27 08:50:52', '2023-06-27 08:50:52', '', 27, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/aagoda.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2023-06-27 08:51:11', '2023-06-27 08:51:11', '', 'logo-agoda', '', 'inherit', 'open', 'closed', '', 'logo-agoda', '', '', '2023-06-27 08:51:11', '2023-06-27 08:51:11', '', 27, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/logo-agoda.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2023-06-27 08:51:37', '2023-06-27 08:51:37', '', 'Booking', '', 'publish', 'closed', 'closed', '', 'booking', '', '', '2023-06-27 08:51:37', '2023-06-27 08:51:37', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=partners&#038;p=30', 0, 'partners', '', 0),
(31, 1, '2023-06-27 08:51:34', '2023-06-27 08:51:34', '', 'logo-booking', '', 'inherit', 'open', 'closed', '', 'logo-booking', '', '', '2023-06-27 08:51:34', '2023-06-27 08:51:34', '', 30, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/logo-booking.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2023-06-27 08:51:54', '2023-06-27 08:51:54', '', 'Expedia', '', 'publish', 'closed', 'closed', '', 'expedia', '', '', '2023-06-27 08:51:54', '2023-06-27 08:51:54', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=partners&#038;p=32', 0, 'partners', '', 0),
(33, 1, '2023-06-27 08:51:51', '2023-06-27 08:51:51', '', 'logo-expedia', '', 'inherit', 'open', 'closed', '', 'logo-expedia', '', '', '2023-06-27 08:51:51', '2023-06-27 08:51:51', '', 32, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/logo-expedia.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2023-06-27 08:52:17', '2023-06-27 08:52:17', '', 'Trip advisor', '', 'publish', 'closed', 'closed', '', 'trip-advisor', '', '', '2023-06-27 08:52:17', '2023-06-27 08:52:17', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=partners&#038;p=34', 0, 'partners', '', 0),
(35, 1, '2023-06-27 08:52:14', '2023-06-27 08:52:14', '', 'logo-tripadvisor', '', 'inherit', 'open', 'closed', '', 'logo-tripadvisor', '', '', '2023-06-27 08:52:14', '2023-06-27 08:52:14', '', 34, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/logo-tripadvisor.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2023-06-27 08:52:28', '2023-06-27 08:52:28', '', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2023-06-27 08:54:18', '2023-06-27 08:54:18', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=partners&#038;p=36', 0, 'partners', '', 0),
(37, 1, '2023-06-27 08:57:37', '2023-06-27 08:57:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"about-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Our Features', 'our-features', 'publish', 'closed', 'closed', '', 'group_649aa3d1cc9f0', '', '', '2023-06-27 09:03:10', '2023-06-27 09:03:10', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2023-06-27 08:57:37', '2023-06-27 08:57:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image One', 'image_one', 'publish', 'closed', 'closed', '', 'field_649aa3f069d50', '', '', '2023-06-27 09:03:10', '2023-06-27 09:03:10', '', 37, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
(39, 1, '2023-06-27 08:57:37', '2023-06-27 08:57:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Two', 'image_two', 'publish', 'closed', 'closed', '', 'field_649aa3fe69d51', '', '', '2023-06-27 09:03:10', '2023-06-27 09:03:10', '', 37, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&#038;p=39', 2, 'acf-field', '', 0),
(40, 1, '2023-06-27 08:57:37', '2023-06-27 08:57:37', 'a:12:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Our Features Summary', 'our_features_summary', 'publish', 'closed', 'closed', '', 'field_649aa40c69d52', '', '', '2023-06-27 09:03:10', '2023-06-27 09:03:10', '', 37, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&#038;p=40', 3, 'acf-field', '', 0),
(41, 1, '2023-06-27 08:57:37', '2023-06-27 08:57:37', 'a:9:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;}', 'Why Choose us', 'why_choose_us', 'publish', 'closed', 'closed', '', 'field_649aa46469d53', '', '', '2023-06-27 09:03:10', '2023-06-27 09:03:10', '', 37, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&#038;p=41', 4, 'acf-field', '', 0),
(42, 1, '2023-06-27 08:58:08', '2023-06-27 08:58:08', '', 'why_choose', '', 'inherit', 'open', 'closed', '', 'why_choose', '', '', '2023-06-27 08:58:11', '2023-06-27 08:58:11', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/why_choose.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2023-06-27 08:58:37', '2023-06-27 08:58:37', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 08:58:37', '2023-06-27 08:58:37', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2023-06-27 08:59:45', '2023-06-27 08:59:45', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 08:59:45', '2023-06-27 08:59:45', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2023-06-27 09:01:37', '2023-06-27 09:01:37', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 09:01:37', '2023-06-27 09:01:37', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2023-06-27 09:03:10', '2023-06-27 09:03:10', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Visitors', 'visitors', 'publish', 'closed', 'closed', '', 'field_649aa5c4b2785', '', '', '2023-06-27 09:03:10', '2023-06-27 09:03:10', '', 37, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2023-06-27 09:04:07', '2023-06-27 09:04:07', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 09:04:07', '2023-06-27 09:04:07', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2023-06-27 09:04:21', '2023-06-27 09:04:21', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 09:04:21', '2023-06-27 09:04:21', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2023-06-27 09:09:16', '2023-06-27 09:09:16', '<iframe class=\"w-100 my-4\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14137.712821173349!2d85.15225306010153!3d27.642220500222972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb3bf036bb09ef%3A0xa2cf13f94f025b4c!2sCountry%20club%20chitlang!5e0!3m2!1sen!2snp!4v1687773529981!5m2!1sen!2snp\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-page', '', '', '2023-06-27 09:27:03', '2023-06-27 09:27:03', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=50', 0, 'page', '', 0),
(51, 1, '2023-06-27 09:09:16', '2023-06-27 09:09:16', '', 'Contact Page', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:09:16', '2023-06-27 09:09:16', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2023-06-27 09:10:38', '2023-06-27 09:10:38', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:10:38', '2023-06-27 09:10:38', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"contact-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_649aa79764419', '', '', '2023-06-27 09:25:50', '2023-06-27 09:25:50', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_649aa79ca86a2', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_649aa7a6a86a3', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_649aa7aca86a4', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_649aa7b6a86a5', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=57', 3, 'acf-field', '', 0),
(58, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_649aa7bda86a6', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=58', 4, 'acf-field', '', 0),
(59, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_649aa7cea86a7', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=59', 5, 'acf-field', '', 0),
(60, 1, '2023-06-27 09:12:13', '2023-06-27 09:12:13', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_649aa7d6a86a8', '', '', '2023-06-27 09:12:13', '2023-06-27 09:12:13', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=60', 6, 'acf-field', '', 0),
(61, 1, '2023-06-27 09:14:06', '2023-06-27 09:14:06', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:14:06', '2023-06-27 09:14:06', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2023-06-27 09:14:49', '2023-06-27 09:14:49', '<iframe class=\"w-100 my-4\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14137.712821173349!2d85.15225306010153!3d27.642220500222972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb3bf036bb09ef%3A0xa2cf13f94f025b4c!2sCountry%20club%20chitlang!5e0!3m2!1sen!2snp!4v1687773529981!5m2!1sen!2snp\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:14:49', '2023-06-27 09:14:49', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2023-06-27 09:21:42', '2023-06-27 09:21:42', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:21:42', '2023-06-27 09:21:42', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2023-06-27 09:23:33', '2023-06-27 09:23:33', '<iframe class=\"w-100 my-4\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14137.712821173349!2d85.15225306010153!3d27.642220500222972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb3bf036bb09ef%3A0xa2cf13f94f025b4c!2sCountry%20club%20chitlang!5e0!3m2!1sen!2snp!4v1687773529981!5m2!1sen!2snp\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2023-06-27 09:23:33', '2023-06-27 09:23:33', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2023-06-27 09:24:33', '2023-06-27 09:24:33', '<iframe class=\"w-100 my-4\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14137.712821173349!2d85.15225306010153!3d27.642220500222972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb3bf036bb09ef%3A0xa2cf13f94f025b4c!2sCountry%20club%20chitlang!5e0!3m2!1sen!2snp!4v1687773529981!5m2!1sen!2snp\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:24:33', '2023-06-27 09:24:33', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2023-06-27 09:25:50', '2023-06-27 09:25:50', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Map Link', 'map_link', 'publish', 'closed', 'closed', '', 'field_649aab1813020', '', '', '2023-06-27 09:25:50', '2023-06-27 09:25:50', '', 53, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=67', 7, 'acf-field', '', 0),
(68, 1, '2023-06-27 09:26:15', '2023-06-27 09:26:15', '<iframe class=\"w-100 my-4\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14137.712821173349!2d85.15225306010153!3d27.642220500222972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb3bf036bb09ef%3A0xa2cf13f94f025b4c!2sCountry%20club%20chitlang!5e0!3m2!1sen!2snp!4v1687773529981!5m2!1sen!2snp\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Contact', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-27 09:26:15', '2023-06-27 09:26:15', '', 50, 'http://localhost/project/country-club-chitlang/2023/06/27/50-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2023-06-27 09:35:27', '2023-06-27 09:35:27', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"about-page.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"rooms\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'group_649aad2b58187', '', '', '2023-07-03 06:27:22', '2023-07-03 06:27:22', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2023-06-27 09:35:27', '2023-06-27 09:35:27', 'a:12:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'field_649aad2fd08df', '', '', '2023-06-27 09:35:27', '2023-06-27 09:35:27', '', 69, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2023-06-27 09:35:51', '2023-06-27 09:35:51', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 09:35:51', '2023-06-27 09:35:51', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2023-06-27 09:39:02', '2023-06-27 09:39:02', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-27 09:39:02', '2023-06-27 09:39:02', '', 13, 'http://localhost/project/country-club-chitlang/2023/06/27/13-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2023-06-27 09:43:52', '2023-06-27 09:43:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"main-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Images', 'images', 'publish', 'closed', 'closed', '', 'group_649aaf389ef7f', '', '', '2023-06-27 09:43:53', '2023-06-27 09:43:53', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2023-06-27 09:43:53', '2023-06-27 09:43:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image One', 'image_one', 'publish', 'closed', 'closed', '', 'field_649aaf3c78256', '', '', '2023-06-27 09:43:53', '2023-06-27 09:43:53', '', 73, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2023-06-27 09:43:53', '2023-06-27 09:43:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Two', 'image_two', 'publish', 'closed', 'closed', '', 'field_649aaf4678257', '', '', '2023-06-27 09:43:53', '2023-06-27 09:43:53', '', 73, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2023-06-27 09:45:18', '2023-06-27 09:45:18', '', 'about01', '', 'inherit', 'open', 'closed', '', 'about01', '', '', '2023-06-27 09:45:32', '2023-06-27 09:45:32', '', 7, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/about01.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2023-06-27 09:45:38', '2023-06-27 09:45:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-27 09:45:38', '2023-06-27 09:45:38', '', 7, 'http://localhost/project/country-club-chitlang/2023/06/27/7-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2023-06-27 10:09:28', '2023-06-27 10:09:28', 'Country Club Chitlang is a captivating resort that seamlessly blends local charm, exceptional comfort, and immersive cultural experiences. The hospitality is outstanding, making you feel instantly at home. With its grandeur and breathtaking surroundings. Thank you for an unforgettable experience!', 'Sachin Kumar Jha', '', 'publish', 'closed', 'closed', '', 'sachin-kumar-jha', '', '', '2023-06-27 10:18:21', '2023-06-27 10:18:21', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=reviews&#038;p=78', 0, 'reviews', '', 0),
(79, 1, '2023-06-27 10:14:21', '2023-06-27 10:14:21', 'Country Club Chitlang is a captivating resort that seamlessly blends local charm, exceptional comfort, and immersive cultural experiences. The hospitality is outstanding, making you feel instantly at home. With its grandeur and breathtaking surroundings. Thank you for an unforgettable experience!', 'Sachin Kumar Jha', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2023-06-27 10:14:21', '2023-06-27 10:14:21', '', 78, 'http://localhost/project/country-club-chitlang/2023/06/27/78-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2023-06-27 10:14:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-27 10:14:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=reviews&p=80', 0, 'reviews', '', 0);
INSERT INTO `st_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(81, 1, '2023-06-27 10:16:48', '2023-06-27 10:16:48', 'Country Club Chitlang is a heaven of exceptional hospitality. The staff\'s warmth and attentiveness create an unforgettable experience. The resort\'s charming ambiance and cozy accommodations offer a delightful retreat. Country Club Chitlang provides a truly immersive and enriching stay.', 'Tashika Singh', '', 'publish', 'closed', 'closed', '', 'tashika-singh', '', '', '2023-06-27 10:30:08', '2023-06-27 10:30:08', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=reviews&#038;p=81', 0, 'reviews', '', 0),
(82, 1, '2023-06-27 10:17:24', '2023-06-27 10:17:24', 'I had a pleasant stay in this Hotel. The location and the premises are fine. I recommend my friends to have a visit and stay here at least once with family.', 'Rahul Sharma', '', 'publish', 'closed', 'closed', '', 'rahul-sharma', '', '', '2023-06-27 10:19:18', '2023-06-27 10:19:18', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=reviews&#038;p=82', 0, 'reviews', '', 0),
(83, 1, '2023-06-27 10:18:00', '2023-06-27 10:18:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sub Heading', 'sub-heading', 'publish', 'closed', 'closed', '', 'group_649ab73f85ec6', '', '', '2023-06-27 10:18:00', '2023-06-27 10:18:00', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2023-06-27 10:18:00', '2023-06-27 10:18:00', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_649ab747f8fad', '', '', '2023-06-27 10:18:00', '2023-06-27 10:18:00', '', 83, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2023-06-27 10:21:18', '2023-06-27 10:21:18', '', 'Review', '', 'publish', 'closed', 'closed', '', 'review', '', '', '2023-06-27 10:21:19', '2023-06-27 10:21:19', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=85', 0, 'page', '', 0),
(86, 1, '2023-06-27 10:21:19', '2023-06-27 10:21:19', '', 'Review', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2023-06-27 10:21:19', '2023-06-27 10:21:19', '', 85, 'http://localhost/project/country-club-chitlang/2023/06/27/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2023-06-28 05:50:16', '2023-06-28 05:50:16', 'Discover a culinary paradise at our resort\'s restaurant. With a menu that blends global flavors and local ingredients, we cater to every taste. Sit back and enjoy the stunning views as you dine in our relaxing ambiance, be it indoors or on our charming outdoor terrace. Enhance your meal with a selection from our carefully curated wine collection. From intimate gatherings to grand celebrations,  Country Club is perfect for any occasion. Make a reservation and let us treat you to an unforgettable dining experience at Country Club Chitlang.', 'Restaurant', '', 'publish', 'closed', 'closed', '', 'restaurant', '', '', '2023-06-28 06:43:11', '2023-06-28 06:43:11', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=services&#038;p=87', 0, 'services', '', 0),
(88, 1, '2023-06-28 05:50:11', '2023-06-28 05:50:11', '', 'restaurant1', '', 'inherit', 'open', 'closed', '', 'restaurant1', '', '', '2023-06-28 05:50:11', '2023-06-28 05:50:11', '', 87, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/restaurant1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2023-06-28 06:02:23', '2023-06-28 06:02:23', 'Elevate your special events at Country Club\'s stunning venue. Whether you\'re planning a birthday celebration, anniversary, or corporate gathering, our dedicated team is here to make your occasion truly memorable. With versatile event spaces, we can accommodate both intimate gatherings and larger-scale events. Our expert event planners will work closely with you to customize every detail, ensuring a seamless and personalized experience. From exquisite catering options to state-of-the-art audiovisual equipment, we have everything you need to create an unforgettable event. Trust us to bring your vision to life here. Contact us today to start planning your next event.', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2023-06-28 06:44:35', '2023-06-28 06:44:35', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=services&#038;p=89', 0, 'services', '', 0),
(90, 1, '2023-06-28 06:01:12', '2023-06-28 06:01:12', '', 'event', '', 'inherit', 'open', 'closed', '', 'event', '', '', '2023-06-28 06:01:12', '2023-06-28 06:01:12', '', 89, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/event.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2023-06-28 06:02:08', '2023-06-28 06:02:08', '', 'image04', '', 'inherit', 'open', 'closed', '', 'image04', '', '', '2023-06-28 06:02:08', '2023-06-28 06:02:08', '', 89, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image04.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2023-06-28 06:02:39', '2023-06-28 06:02:39', 'Discover the perfect venue for your special event at Country Club. Our spacious and versatile halls provide an ideal setting for weddings, conferences, galas, and more. With elegant decor and customizable layouts, we can accommodate both small and large gatherings. Our dedicated event team will assist you in planning every aspect, from seating arrangements to audiovisual setup, ensuring a seamless and memorable experience for you and your guests. With exceptional catering options and state-of-the-art facilities, our halls are designed to exceed your expectations. Choose us for a truly remarkable event. Contact us today to book our exquisite halls for your upcoming occasion.', 'Hall', '', 'publish', 'closed', 'closed', '', 'hall', '', '', '2023-06-28 06:45:28', '2023-06-28 06:45:28', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=services&#038;p=92', 0, 'services', '', 0),
(93, 1, '2023-06-28 06:03:24', '2023-06-28 06:03:24', 'Experience luxury with our hotel\'s top-notch facilities and personalized services for an unforgettable stay.', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-06-28 06:35:58', '2023-06-28 06:35:58', '', 7, 'http://localhost/project/country-club-chitlang/?page_id=93', 0, 'page', '', 0),
(94, 1, '2023-06-28 06:03:24', '2023-06-28 06:03:24', '', 'Services', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2023-06-28 06:03:24', '2023-06-28 06:03:24', '', 93, 'http://localhost/project/country-club-chitlang/2023/06/28/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2023-06-28 06:03:43', '2023-06-28 06:03:43', 'Experience luxury with our hotel\'s top-notch facilities and personalized services for an unforgettable stay.', 'Services', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2023-06-28 06:03:43', '2023-06-28 06:03:43', '', 93, 'http://localhost/project/country-club-chitlang/2023/06/28/93-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2023-06-28 06:26:20', '2023-06-28 06:26:20', '', 'Test', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-06-28 06:26:20', '2023-06-28 06:26:20', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=96', 0, 'page', '', 0),
(97, 1, '2023-06-28 06:26:20', '2023-06-28 06:26:20', '', 'Test', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2023-06-28 06:26:20', '2023-06-28 06:26:20', '', 96, 'http://localhost/project/country-club-chitlang/2023/06/28/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2023-06-28 06:26:36', '2023-06-28 06:26:36', '', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2023-06-28 06:27:30', '2023-06-28 06:27:30', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=services&#038;p=98', 0, 'services', '', 0),
(99, 1, '2023-06-28 06:27:07', '2023-06-28 06:27:07', '', 'Testtwo', '', 'trash', 'closed', 'closed', '', 'testtwo__trashed', '', '', '2023-06-28 06:27:30', '2023-06-28 06:27:30', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=services&#038;p=99', 0, 'services', '', 0),
(100, 1, '2023-06-28 08:20:49', '2023-06-28 08:20:49', 'We provide 24/7 free Wi-Fi for your comfort stay in our Hotel.', 'Free Wifi', '', 'publish', 'closed', 'closed', '', 'free-wifi', '', '', '2023-06-28 08:29:53', '2023-06-28 08:29:53', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=100', 0, 'amenities', '', 0),
(101, 1, '2023-06-28 08:20:45', '2023-06-28 08:20:45', '', 'wifi', '', 'inherit', 'open', 'closed', '', 'wifi', '', '', '2023-06-28 08:20:45', '2023-06-28 08:20:45', '', 100, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/wifi.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2023-06-28 08:32:07', '2023-06-28 08:32:07', 'We have sufficient and safe parking area in the compound of Hotel.', 'Parking', '', 'publish', 'closed', 'closed', '', 'parking', '', '', '2023-06-28 08:32:07', '2023-06-28 08:32:07', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=102', 0, 'amenities', '', 0),
(103, 1, '2023-06-28 08:32:04', '2023-06-28 08:32:04', '', 'parking', '', 'inherit', 'open', 'closed', '', 'parking', '', '', '2023-06-28 08:32:04', '2023-06-28 08:32:04', '', 102, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/parking.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2023-06-28 08:32:29', '2023-06-28 08:32:29', 'First come first serve is the best policy to book your stay with us.', 'Room Booking', '', 'publish', 'closed', 'closed', '', 'room-booking', '', '', '2023-06-28 08:32:39', '2023-06-28 08:32:39', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=104', 0, 'amenities', '', 0),
(105, 1, '2023-06-28 08:32:27', '2023-06-28 08:32:27', '', 'parking', '', 'inherit', 'open', 'closed', '', 'parking-2', '', '', '2023-06-28 08:32:27', '2023-06-28 08:32:27', '', 104, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/parking-1.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2023-06-28 08:34:14', '2023-06-28 08:34:14', 'We cook the hygienic and healthy food in resort, which you want to order.', 'Delicious Food', '', 'publish', 'closed', 'closed', '', 'delicious-food', '', '', '2023-06-28 08:34:18', '2023-06-28 08:34:18', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=106', 0, 'amenities', '', 0),
(107, 1, '2023-06-28 08:33:31', '2023-06-28 08:33:31', '', 'room', '', 'inherit', 'open', 'closed', '', 'room', '', '', '2023-06-28 08:33:31', '2023-06-28 08:33:31', '', 106, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/room.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2023-06-28 08:34:11', '2023-06-28 08:34:11', '', 'dish', '', 'inherit', 'open', 'closed', '', 'dish', '', '', '2023-06-28 08:34:11', '2023-06-28 08:34:11', '', 106, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/dish.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2023-06-28 08:35:45', '2023-06-28 08:35:45', 'We have indoor game tools of children, they will use it in the hotel.', 'Child Play Room', '', 'publish', 'closed', 'closed', '', 'child-play-room', '', '', '2023-06-28 08:35:45', '2023-06-28 08:35:45', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=109', 0, 'amenities', '', 0),
(110, 1, '2023-06-28 08:35:31', '2023-06-28 08:35:31', '', 'child-play-room', '', 'inherit', 'open', 'closed', '', 'child-play-room', '', '', '2023-06-28 08:35:31', '2023-06-28 08:35:31', '', 109, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/child-play-room.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2023-06-28 08:36:35', '2023-06-28 08:36:35', '\"Spacious and well-equipped conference room in a premier hotel, designed to inspire productivity and collaboration.\"', 'Conference Room', '', 'publish', 'closed', 'closed', '', 'conference-room', '', '', '2023-06-28 08:36:35', '2023-06-28 08:36:35', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=111', 0, 'amenities', '', 0),
(112, 1, '2023-06-28 08:36:20', '2023-06-28 08:36:20', '', 'hall', '', 'inherit', 'open', 'closed', '', 'hall-2', '', '', '2023-06-28 08:36:20', '2023-06-28 08:36:20', '', 111, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/hall.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2023-06-28 08:36:29', '2023-06-28 08:36:29', '', 'hall', '', 'inherit', 'open', 'closed', '', 'hall-3', '', '', '2023-06-28 08:36:29', '2023-06-28 08:36:29', '', 111, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/hall-1.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2023-06-28 08:39:07', '2023-06-28 08:39:07', '', 'Room Test', '', 'trash', 'closed', 'closed', '', 'room-test__trashed', '', '', '2023-06-28 08:40:28', '2023-06-28 08:40:28', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=amenities&#038;p=114', 0, 'amenities', '', 0),
(115, 1, '2023-06-28 08:49:37', '2023-06-28 08:49:37', '[contact-form-7 id=\"117\" title=\"Booking\"]', 'Booking', '', 'publish', 'closed', 'closed', '', 'booking', '', '', '2023-06-28 08:57:35', '2023-06-28 08:57:35', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=115', 0, 'page', '', 0),
(116, 1, '2023-06-28 08:49:37', '2023-06-28 08:49:37', '', 'Booking', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-28 08:49:37', '2023-06-28 08:49:37', '', 115, 'http://localhost/project/country-club-chitlang/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2023-06-28 08:56:18', '2023-06-28 08:56:18', '<div class=\"booking_block\">\r\n                                    <h3>Booking</h3>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"mb-3 d-flex flex-column\">\r\n                                                <label class=\"form-label\">Arrival Date</label>[date* arrival class:form-control \"Arrival Date\"] \r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"mb-3 d-flex flex-column\">\r\n                                                <label class=\"form-label\">Depature Date</label>[date* depature class:form-control \"Depature Date\"] \r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"d-flex flex-column\">\r\n                                                <label class=\"form-label\">Adult</label>\r\n                                                <div class=\"div_input\">\r\n                                                    [number* adult min:1 max:25 class:form-control placeholder \"0\"]   \r\n                                                </div>\r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"d-flex flex-column\">\r\n                                                <label class=\"form-label\">Children</label>\r\n                                                <div class=\"div_input\">\r\n                                                    [number* children min:0 max:25 class:form-control placeholder \"0\"]\r\n                                                </div>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"personal_block\">\r\n                                    <h3>Personal </h3>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"mb-3 d-flex flex-column\">\r\n                                                <label class=\"form-label\">Name</label>[text* fullname class:form-control placeholder \"Name\"]\r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"mb-3 d-flex flex-column\">\r\n                                                <label class=\"form-label\">Address</label>[text* address class:form-control placeholder \"Address\"] \r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"mb-3 d-flex flex-column\">\r\n                                                <label class=\"form-label\">Contact No.</label>[tel* phone class:form-control placeholder \"Contact No.\"] \r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"mb-3 d-flex flex-column\">\r\n                                                <label class=\"form-label\">Email</label>[email* email class:form-control placeholder \"Email\"]\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <label class=\"form-label\">Message</label>[textarea* message class:form-control placeholder \"Message\"]  \r\n[submit class:submit_btn \"Book\"]  \r\n                                </div>\r\n                            </div>\r\n                        </div>\n1\nRoom Booking from \"[fullname]\"\n[fullname] <tashika@digisoft.com.np>\ntashika@digisoft.com.np\nArrival: [arrival] | Departure: [depature]\r\nAdult Guest: [adult]\r\nChild Guest: [children]\r\nName: [fullname]\r\nEmail: [email]\r\nAddress: [address]\r\nPhone: [phone]\r\nMessage: [message]\r\n\r\n-- \r\nThis e-mail was sent from a booking form on a Country Club Chitlang\r\nChitlang-9 Thaha municipality Makawanpur, Nepa, Nepal\r\n974-1803874\r\ncountryclubchitlang09@gmail.com\n\n\n\n\n\nCountry Club Chitlang \"[your-subject]\"\nCountry Club Chitlang <tashika@digisoft.com.np>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Country Club Chitlang (http://localhost/project/country-club-chitlang)\nReply-To: tashika@digisoft.com.np\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nInvalid date supplied.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Booking', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-06-28 11:01:43', '2023-06-28 11:01:43', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=wpcf7_contact_form&#038;p=117', 0, 'wpcf7_contact_form', '', 0),
(118, 1, '2023-06-28 08:57:35', '2023-06-28 08:57:35', '[contact-form-7 id=\"117\" title=\"Booking\"]', 'Booking', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-28 08:57:35', '2023-06-28 08:57:35', '', 115, 'http://localhost/project/country-club-chitlang/115-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2023-06-28 11:05:31', '2023-06-28 11:05:31', '[aigpl-gallery-album]', 'Photos', '', 'publish', 'closed', 'closed', '', 'photos', '', '', '2023-06-28 11:15:02', '2023-06-28 11:15:02', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=119', 0, 'page', '', 0),
(120, 1, '2023-06-28 11:05:31', '2023-06-28 11:05:31', '', 'Photos', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-28 11:05:31', '2023-06-28 11:05:31', '', 119, 'http://localhost/project/country-club-chitlang/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2023-06-28 11:14:21', '2023-06-28 11:14:21', '', 'Country Club Chitlang', '', 'publish', 'closed', 'closed', '', 'country-club-chitlang', '', '', '2023-06-28 11:16:20', '2023-06-28 11:16:20', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=aigpl_gallery&#038;p=121', 0, 'aigpl_gallery', '', 0),
(122, 1, '2023-06-28 11:14:14', '2023-06-28 11:14:14', '', 'about01', '', 'inherit', 'open', 'closed', '', 'about01-2', '', '', '2023-06-28 11:14:14', '2023-06-28 11:14:14', '', 121, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/about01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2023-06-28 11:14:15', '2023-06-28 11:14:15', '', 'about02', '', 'inherit', 'open', 'closed', '', 'about02-2', '', '', '2023-06-28 11:14:15', '2023-06-28 11:14:15', '', 121, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/about02-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2023-06-28 11:14:16', '2023-06-28 11:14:16', '', 'why_choose', '', 'inherit', 'open', 'closed', '', 'why_choose-2', '', '', '2023-06-28 11:14:16', '2023-06-28 11:14:16', '', 121, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/why_choose-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2023-06-28 11:14:17', '2023-06-28 11:14:17', '', 'why_choose01', '', 'inherit', 'open', 'closed', '', 'why_choose01-2', '', '', '2023-06-28 11:14:17', '2023-06-28 11:14:17', '', 121, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/why_choose01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2023-06-28 11:15:02', '2023-06-28 11:15:02', '[aigpl-gallery-album]', 'Photos', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-28 11:15:02', '2023-06-28 11:15:02', '', 119, 'http://localhost/project/country-club-chitlang/119-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2023-06-28 11:24:23', '2023-06-28 11:24:23', '', 'Restaurant', '', 'publish', 'closed', 'closed', '', 'restaurant', '', '', '2023-06-28 11:24:36', '2023-06-28 11:24:36', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=aigpl_gallery&#038;p=127', 0, 'aigpl_gallery', '', 0),
(128, 1, '2023-06-30 05:52:33', '2023-06-30 05:52:33', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-06-30 05:52:33', '2023-06-30 05:52:33', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=128', 0, 'page', '', 0),
(129, 1, '2023-06-30 05:52:33', '2023-06-30 05:52:33', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2023-06-30 05:52:33', '2023-06-30 05:52:33', '', 128, 'http://localhost/project/country-club-chitlang/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2023-06-30 06:14:30', '2023-06-30 06:14:30', '', 'Tourist activity slowly picking up in Nepal as covid restrictions are eased', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2023-06-30 06:14:30', '2023-06-30 06:14:30', '', 0, 'http://localhost/project/country-club-chitlang/?p=130', 0, 'post', '', 0),
(131, 1, '2023-06-30 06:01:32', '2023-06-30 06:01:32', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?', 'Tourist activity slowly picking up in Nepal as covid restrictions are eased', '', 'publish', 'open', 'open', '', 'tourist-activity-slowly-picking-up-in-nepal-as-covid-restrictions-are-eased', '', '', '2023-06-30 12:05:58', '2023-06-30 12:05:58', '', 0, 'http://localhost/project/country-club-chitlang/?p=131', 0, 'post', '', 0),
(132, 1, '2023-06-30 06:01:28', '2023-06-30 06:01:28', '', 'blog01', '', 'inherit', 'open', 'closed', '', 'blog01', '', '', '2023-06-30 06:01:28', '2023-06-30 06:01:28', '', 131, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/blog01.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2023-06-30 06:01:32', '2023-06-30 06:01:32', '', 'Tourist activity slowly picking up in Nepal as covid restrictions are eased', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-06-30 06:01:32', '2023-06-30 06:01:32', '', 131, 'http://localhost/project/country-club-chitlang/131-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2023-06-30 06:02:37', '2023-06-30 06:02:37', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?', 'Nepal Welcomes 237,000 foreigners in 6 month as the tourism...', '', 'publish', 'open', 'open', '', 'nepal-welcomes-237000-foreigners-in-6-month-as-the-tourism', '', '', '2023-06-30 12:04:30', '2023-06-30 12:04:30', '', 0, 'http://localhost/project/country-club-chitlang/?p=134', 0, 'post', '', 0),
(135, 1, '2023-06-30 06:02:33', '2023-06-30 06:02:33', '', 'blog02', '', 'inherit', 'open', 'closed', '', 'blog02', '', '', '2023-06-30 06:02:33', '2023-06-30 06:02:33', '', 134, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/blog02.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2023-06-30 06:02:37', '2023-06-30 06:02:37', '', 'Nepal Welcomes 237,000 foreigners in 6 month as the tourism...', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2023-06-30 06:02:37', '2023-06-30 06:02:37', '', 134, 'http://localhost/project/country-club-chitlang/134-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2023-06-30 06:03:01', '2023-06-30 06:03:01', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?', 'Prime Destination to Celebrate New Year in …', '', 'publish', 'open', 'open', '', 'prime-destination-to-celebrate-new-year-in', '', '', '2023-06-30 11:56:47', '2023-06-30 11:56:47', '', 0, 'http://localhost/project/country-club-chitlang/?p=137', 0, 'post', '', 0),
(138, 1, '2023-06-30 06:02:56', '2023-06-30 06:02:56', '', 'blog03', '', 'inherit', 'open', 'closed', '', 'blog03', '', '', '2023-06-30 06:02:56', '2023-06-30 06:02:56', '', 137, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/blog03.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2023-06-30 06:03:01', '2023-06-30 06:03:01', '', 'Prime Destination to Celebrate New Year in …', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2023-06-30 06:03:01', '2023-06-30 06:03:01', '', 137, 'http://localhost/project/country-club-chitlang/137-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2023-06-30 06:14:12', '2023-06-30 06:14:12', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?', 'Prime Destination to Celebrate New Year in …', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2023-06-30 06:14:12', '2023-06-30 06:14:12', '', 137, 'http://localhost/project/country-club-chitlang/137-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2023-06-30 06:14:30', '2023-06-30 06:14:30', '', 'Tourist activity slowly picking up in Nepal as covid restrictions are eased', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2023-06-30 06:14:30', '2023-06-30 06:14:30', '', 130, 'http://localhost/project/country-club-chitlang/130-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2023-06-30 06:14:38', '2023-06-30 06:14:38', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?', 'Tourist activity slowly picking up in Nepal as covid restrictions are eased', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-06-30 06:14:38', '2023-06-30 06:14:38', '', 131, 'http://localhost/project/country-club-chitlang/131-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2023-06-30 06:14:52', '2023-06-30 06:14:52', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa alias nobis dolore, perferendis incidunt unde asperiores maxime atque tempore ullam reprehenderit dignissimos ratione dolorum ex recusandae. Veniam inventore asperiores mollitia?', 'Nepal Welcomes 237,000 foreigners in 6 month as the tourism...', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2023-06-30 06:14:52', '2023-06-30 06:14:52', '', 134, 'http://localhost/project/country-club-chitlang/134-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2023-06-30 06:26:11', '2023-06-30 06:26:11', '', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2023-06-30 06:26:11', '2023-06-30 06:26:11', '', 0, 'http://localhost/project/country-club-chitlang/?page_id=144', 0, 'page', '', 0),
(145, 1, '2023-06-30 06:26:11', '2023-06-30 06:26:11', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2023-06-30 06:26:11', '2023-06-30 06:26:11', '', 144, 'http://localhost/project/country-club-chitlang/144-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2023-06-30 06:29:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-30 06:29:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&p=146', 0, 'acf-field-group', '', 0),
(147, 1, '2023-06-30 06:30:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-30 06:30:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&p=147', 0, 'acf-field-group', '', 0),
(148, 1, '2023-06-30 06:33:36', '2023-06-30 06:33:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"menus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Menu', 'menu', 'publish', 'closed', 'closed', '', 'group_649e76f62a678', '', '', '2023-06-30 10:08:16', '2023-06-30 10:08:16', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=148', 0, 'acf-field-group', '', 0),
(149, 1, '2023-06-30 06:33:36', '2023-06-30 06:33:36', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Available', 'available', 'publish', 'closed', 'closed', '', 'field_649e76fac14cf', '', '', '2023-06-30 06:33:36', '2023-06-30 06:33:36', '', 148, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=149', 0, 'acf-field', '', 0),
(150, 1, '2023-06-30 06:33:36', '2023-06-30 06:33:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Food Menus', 'food_menus', 'publish', 'closed', 'closed', '', 'field_649e7700c14d0', '', '', '2023-06-30 06:33:36', '2023-06-30 06:33:36', '', 148, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=150', 1, 'acf-field', '', 0),
(151, 1, '2023-06-30 06:33:36', '2023-06-30 06:33:36', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_649e7716c14d1', '', '', '2023-06-30 06:33:36', '2023-06-30 06:33:36', '', 150, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=151', 0, 'acf-field', '', 0),
(152, 1, '2023-06-30 06:33:36', '2023-06-30 06:33:36', 'a:12:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Food Summary', 'food_summary', 'publish', 'closed', 'closed', '', 'field_649e771dc14d2', '', '', '2023-06-30 10:08:16', '2023-06-30 10:08:16', '', 150, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&#038;p=152', 1, 'acf-field', '', 0),
(153, 1, '2023-06-30 06:33:36', '2023-06-30 06:33:36', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_649e772cc14d3', '', '', '2023-06-30 06:33:36', '2023-06-30 06:33:36', '', 150, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=153', 2, 'acf-field', '', 0),
(154, 1, '2023-06-30 06:33:37', '2023-06-30 06:33:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_649e7731c14d4', '', '', '2023-06-30 06:33:37', '2023-06-30 06:33:37', '', 150, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=154', 3, 'acf-field', '', 0),
(155, 1, '2023-06-30 06:39:16', '2023-06-30 06:39:16', '', 'Breakfast', '', 'publish', 'closed', 'closed', '', 'breakfast', '', '', '2023-06-30 09:59:55', '2023-06-30 09:59:55', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=menus&#038;p=155', 0, 'menus', '', 0),
(156, 1, '2023-06-30 06:39:45', '2023-06-30 06:39:45', '', 'menu03', '', 'inherit', 'open', 'closed', '', 'menu03', '', '', '2023-06-30 09:58:11', '2023-06-30 09:58:11', '', 155, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/menu03.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2023-06-30 07:17:32', '2023-06-30 07:17:32', '', 'Lunch', '', 'publish', 'closed', 'closed', '', 'lunch', '', '', '2023-06-30 10:07:24', '2023-06-30 10:07:24', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=menus&#038;p=157', 0, 'menus', '', 0),
(158, 1, '2023-06-30 07:17:27', '2023-06-30 07:17:27', '', 'lunch', '', 'inherit', 'open', 'closed', '', 'lunch-2', '', '', '2023-06-30 07:17:27', '2023-06-30 07:17:27', '', 157, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/lunch-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2023-06-30 07:18:18', '2023-06-30 07:18:18', '', 'Dessert', '', 'publish', 'closed', 'closed', '', 'desert', '', '', '2023-06-30 10:10:52', '2023-06-30 10:10:52', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=menus&#038;p=159', 0, 'menus', '', 0),
(160, 1, '2023-06-30 07:18:13', '2023-06-30 07:18:13', '', 'dessert', '', 'inherit', 'open', 'closed', '', 'dessert', '', '', '2023-06-30 07:18:13', '2023-06-30 07:18:13', '', 159, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/dessert.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2023-06-30 07:42:48', '2023-06-30 07:42:48', '', 'Dinner', '', 'trash', 'closed', 'closed', '', 'dinner__trashed', '', '', '2023-06-30 07:43:10', '2023-06-30 07:43:10', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=menus&#038;p=161', 0, 'menus', '', 0),
(162, 1, '2023-06-30 09:57:40', '2023-06-30 09:57:40', '', 'menu01', '', 'inherit', 'open', 'closed', '', 'menu01', '', '', '2023-06-30 09:57:40', '2023-06-30 09:57:40', '', 155, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/menu01.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2023-06-30 09:58:47', '2023-06-30 09:58:47', '', 'image02', '', 'inherit', 'open', 'closed', '', 'image02-2', '', '', '2023-06-30 09:58:50', '2023-06-30 09:58:50', '', 155, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/image02-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2023-06-30 09:59:11', '2023-06-30 09:59:11', '', 'tuscan', '', 'inherit', 'open', 'closed', '', 'tuscan', '', '', '2023-06-30 10:08:54', '2023-06-30 10:08:54', '', 155, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/tuscan.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2023-06-30 10:09:35', '2023-06-30 10:09:35', '', 'Dessert', '', 'inherit', 'closed', 'closed', '', '159-autosave-v1', '', '', '2023-06-30 10:09:35', '2023-06-30 10:09:35', '', 159, 'http://localhost/project/country-club-chitlang/159-autosave-v1/', 0, 'revision', '', 0),
(166, 1, '2023-06-30 10:38:52', '2023-06-30 10:38:52', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=166', 1, 'nav_menu_item', '', 0),
(167, 1, '2023-06-30 10:37:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-30 10:37:46', '0000-00-00 00:00:00', '', 7, 'http://localhost/project/country-club-chitlang/?p=167', 1, 'nav_menu_item', '', 0),
(168, 1, '2023-06-30 10:38:52', '2023-06-30 10:38:52', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=168', 2, 'nav_menu_item', '', 0),
(169, 1, '2023-06-30 10:38:53', '2023-06-30 10:38:53', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=169', 6, 'nav_menu_item', '', 0),
(170, 1, '2023-06-30 10:38:54', '2023-06-30 10:38:54', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2023-06-30 10:39:03', '2023-06-30 10:39:03', '', 0, 'http://localhost/project/country-club-chitlang/?p=170', 9, 'nav_menu_item', '', 0),
(171, 1, '2023-06-30 10:38:54', '2023-06-30 10:38:54', ' ', '', '', 'publish', 'closed', 'closed', '', '171', '', '', '2023-06-30 10:39:03', '2023-06-30 10:39:03', '', 0, 'http://localhost/project/country-club-chitlang/?p=171', 8, 'nav_menu_item', '', 0),
(172, 1, '2023-06-30 10:37:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-30 10:37:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/country-club-chitlang/?p=172', 1, 'nav_menu_item', '', 0),
(173, 1, '2023-06-30 10:38:53', '2023-06-30 10:38:53', ' ', '', '', 'publish', 'closed', 'closed', '', '173', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=173', 3, 'nav_menu_item', '', 0),
(174, 1, '2023-06-30 10:38:54', '2023-06-30 10:38:54', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=174', 7, 'nav_menu_item', '', 0),
(175, 1, '2023-06-30 10:38:53', '2023-06-30 10:38:53', ' ', '', '', 'publish', 'closed', 'closed', '', '175', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=175', 4, 'nav_menu_item', '', 0),
(176, 1, '2023-06-30 10:38:53', '2023-06-30 10:38:53', '', 'Update', '', 'publish', 'closed', 'closed', '', 'update', '', '', '2023-06-30 10:39:02', '2023-06-30 10:39:02', '', 0, 'http://localhost/project/country-club-chitlang/?p=176', 5, 'nav_menu_item', '', 0),
(177, 1, '2023-06-30 11:01:36', '2023-06-30 11:01:36', '', 'why_choose02', '', 'inherit', 'open', 'closed', '', 'why_choose02', '', '', '2023-06-30 11:01:38', '2023-06-30 11:01:38', '', 13, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/why_choose02.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2023-06-30 11:01:41', '2023-06-30 11:01:41', '<div class=\"section_sub section_margin\">\r\n<h2>Our Resort has been present for over 10 years.</h2>\r\n</div>\r\n<div class=\"readmore__content\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolores, cupiditate adipisci architecto nobis provident aliquid, unde atque quisquam, vitae alias neque quia debitis laudantium quasi totam ullam. Voluptate, alias.\r\n\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-30 11:01:41', '2023-06-30 11:01:41', '', 13, 'http://localhost/project/country-club-chitlang/13-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2023-06-30 11:56:40', '2023-06-30 11:56:40', '', 'rohan-reddy-Y3u0xBXhGtY-unsplash', '', 'inherit', 'open', 'closed', '', 'rohan-reddy-y3u0xbxhgty-unsplash', '', '', '2023-06-30 11:56:40', '2023-06-30 11:56:40', '', 137, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/rohan-reddy-Y3u0xBXhGtY-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2023-06-30 11:58:11', '2023-06-30 11:58:11', '', 'sanjay-hona-2Q2dpVPY6XU-unsplash', '', 'inherit', 'open', 'closed', '', 'sanjay-hona-2q2dpvpy6xu-unsplash', '', '', '2023-06-30 11:58:11', '2023-06-30 11:58:11', '', 131, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/sanjay-hona-2Q2dpVPY6XU-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2023-06-30 12:03:57', '2023-06-30 12:03:57', '', 'shutterstock_154582769-17052019074121', '', 'inherit', 'open', 'closed', '', 'shutterstock_154582769-17052019074121', '', '', '2023-06-30 12:03:57', '2023-06-30 12:03:57', '', 131, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/shutterstock_154582769-17052019074121.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2023-06-30 12:05:54', '2023-06-30 12:05:54', '', 'tourist-take-pictures-at-poonhill-(2)', 'Chinese tourists take pictures at poon hill which is at a altitude of 3210m.The number of tourists has increased in the annapurna region.Poon hill,myagdi,Nepal.Post photo Bijaya Neupaneq', 'inherit', 'open', 'closed', '', 'tourist-take-pictures-at-poonhill-2', '', '', '2023-06-30 12:05:54', '2023-06-30 12:05:54', '', 131, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/06/tourist-take-pictures-at-poonhill-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2023-07-03 06:03:44', '2023-07-03 06:03:44', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis exercitationem recusandae eos et iusto possimus quidem, natus tempore sapiente ex quo ullam sed laboriosam itaque assumenda dolore commodi necessitatibus fugit?', 'Deluxe', '', 'publish', 'closed', 'closed', '', 'deluxe', '', '', '2023-07-03 06:58:42', '2023-07-03 06:58:42', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=rooms&#038;p=183', 0, 'rooms', '', 0),
(184, 1, '2023-07-03 06:03:40', '2023-07-03 06:03:40', '', 'deluxe', '', 'inherit', 'open', 'closed', '', 'deluxe-2', '', '', '2023-07-03 06:31:14', '2023-07-03 06:31:14', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/deluxe.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `st_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(185, 1, '2023-07-03 06:04:17', '2023-07-03 06:04:17', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis exercitationem recusandae eos et iusto possimus quidem, natus tempore sapiente ex quo ullam sed laboriosam itaque assumenda dolore commodi necessitatibus fugit?', 'Standard', '', 'publish', 'closed', 'closed', '', 'standard', '', '', '2023-07-03 07:16:40', '2023-07-03 07:16:40', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=rooms&#038;p=185', 0, 'rooms', '', 0),
(186, 1, '2023-07-03 06:04:11', '2023-07-03 06:04:11', '', 'standard', '', 'inherit', 'open', 'closed', '', 'standard-2', '', '', '2023-07-03 07:14:21', '2023-07-03 07:14:21', '', 185, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/standard.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2023-07-03 06:30:14', '2023-07-03 06:30:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"rooms\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Accomodation', 'accomodation', 'publish', 'closed', 'closed', '', 'group_64a26a8935cfe', '', '', '2023-07-03 06:34:00', '2023-07-03 06:34:00', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=acf-field-group&#038;p=187', 0, 'acf-field-group', '', 0),
(188, 1, '2023-07-03 06:30:14', '2023-07-03 06:30:14', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_64a26a991e9c5', '', '', '2023-07-03 06:30:14', '2023-07-03 06:30:14', '', 187, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=188', 0, 'acf-field', '', 0),
(189, 1, '2023-07-03 06:30:14', '2023-07-03 06:30:14', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Beds', 'beds', 'publish', 'closed', 'closed', '', 'field_64a26ac51e9c6', '', '', '2023-07-03 06:30:14', '2023-07-03 06:30:14', '', 187, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=189', 1, 'acf-field', '', 0),
(190, 1, '2023-07-03 06:30:14', '2023-07-03 06:30:14', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Room Size', 'room_size', 'publish', 'closed', 'closed', '', 'field_64a26acc1e9c7', '', '', '2023-07-03 06:30:14', '2023-07-03 06:30:14', '', 187, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=190', 2, 'acf-field', '', 0),
(191, 1, '2023-07-03 06:30:14', '2023-07-03 06:30:14', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Occupancy', 'occupancy', 'publish', 'closed', 'closed', '', 'field_64a26ae11e9c8', '', '', '2023-07-03 06:30:14', '2023-07-03 06:30:14', '', 187, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=191', 3, 'acf-field', '', 0),
(192, 1, '2023-07-03 06:30:14', '2023-07-03 06:30:14', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'View', 'view', 'publish', 'closed', 'closed', '', 'field_64a26ae91e9c9', '', '', '2023-07-03 06:30:14', '2023-07-03 06:30:14', '', 187, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=192', 4, 'acf-field', '', 0),
(193, 1, '2023-07-03 06:33:03', '2023-07-03 06:33:03', '<h5>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis exercitationem recusandae eos et iusto possimus quidem, natus tempore sapiente ex quo ullam sed laboriosam itaque assumenda dolore commodi necessitatibus fugit?</h5>', 'Deluxe', '', 'inherit', 'closed', 'closed', '', '183-autosave-v1', '', '', '2023-07-03 06:33:03', '2023-07-03 06:33:03', '', 183, 'http://localhost/project/country-club-chitlang/183-autosave-v1/', 0, 'revision', '', 0),
(194, 1, '2023-07-03 06:34:00', '2023-07-03 06:34:00', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Room Facilities', 'room_facilities', 'publish', 'closed', 'closed', '', 'field_64a26bb2167e3', '', '', '2023-07-03 06:34:00', '2023-07-03 06:34:00', '', 187, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=194', 5, 'acf-field', '', 0),
(195, 1, '2023-07-03 06:34:00', '2023-07-03 06:34:00', 'a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_64a26bc1167e4', '', '', '2023-07-03 06:34:00', '2023-07-03 06:34:00', '', 194, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=195', 0, 'acf-field', '', 0),
(196, 1, '2023-07-03 06:34:00', '2023-07-03 06:34:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_64a26bd0167e5', '', '', '2023-07-03 06:34:00', '2023-07-03 06:34:00', '', 194, 'http://localhost/project/country-club-chitlang/?post_type=acf-field&p=196', 1, 'acf-field', '', 0),
(197, 1, '2023-07-03 06:34:49', '2023-07-03 06:34:49', '', 'dailyhousekeeping-1', '', 'inherit', 'open', 'closed', '', 'dailyhousekeeping-1', '', '', '2023-07-03 07:15:37', '2023-07-03 07:15:37', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/dailyhousekeeping-1.png', 0, 'attachment', 'image/png', 0),
(198, 1, '2023-07-03 06:34:50', '2023-07-03 06:34:50', '', 'electricitybackup', '', 'inherit', 'open', 'closed', '', 'electricitybackup', '', '', '2023-07-03 06:34:50', '2023-07-03 06:34:50', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/electricitybackup.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2023-07-03 06:34:51', '2023-07-03 06:34:51', '', 'hair-drayer', '', 'inherit', 'open', 'closed', '', 'hair-drayer', '', '', '2023-07-03 06:34:51', '2023-07-03 06:34:51', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/hair-drayer.png', 0, 'attachment', 'image/png', 0),
(200, 1, '2023-07-03 06:34:51', '2023-07-03 06:34:51', '', 'individualRouter', '', 'inherit', 'open', 'closed', '', 'individualrouter', '', '', '2023-07-03 06:34:51', '2023-07-03 06:34:51', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/individualRouter.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2023-07-03 06:34:52', '2023-07-03 06:34:52', '', 'iron', '', 'inherit', 'open', 'closed', '', 'iron', '', '', '2023-07-03 06:34:52', '2023-07-03 06:34:52', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/iron.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2023-07-03 06:34:53', '2023-07-03 06:34:53', '', 'king-size-bade', '', 'inherit', 'open', 'closed', '', 'king-size-bade', '', '', '2023-07-03 06:34:53', '2023-07-03 06:34:53', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/king-size-bade.png', 0, 'attachment', 'image/png', 0),
(203, 1, '2023-07-03 06:34:53', '2023-07-03 06:34:53', '', 'slippers', '', 'inherit', 'open', 'closed', '', 'slippers', '', '', '2023-07-03 06:34:53', '2023-07-03 06:34:53', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/slippers.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2023-07-03 06:34:54', '2023-07-03 06:34:54', '', 'toiletries', '', 'inherit', 'open', 'closed', '', 'toiletries', '', '', '2023-07-03 06:34:54', '2023-07-03 06:34:54', '', 183, 'http://localhost/project/country-club-chitlang/wp-content/uploads/2023/07/toiletries.png', 0, 'attachment', 'image/png', 0),
(205, 1, '2023-07-03 07:19:23', '2023-07-03 07:19:23', '', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2023-07-03 07:35:30', '2023-07-03 07:35:30', '', 0, 'http://localhost/project/country-club-chitlang/?post_type=rooms&#038;p=205', 0, 'rooms', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `st_termmeta`
--

CREATE TABLE `st_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_terms`
--

CREATE TABLE `st_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_terms`
--

INSERT INTO `st_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Partners', 'partners', 0),
(3, 'Reviews', 'reviews', 0),
(4, 'Services', 'services', 0),
(5, 'Amenities', 'amenities', 0),
(6, 'Blogs', 'blogs', 0),
(7, 'Menus', 'menus', 0),
(8, 'Main menu', 'main-menu', 0),
(9, 'Accomodations', 'accomodations', 0);

-- --------------------------------------------------------

--
-- Table structure for table `st_term_relationships`
--

CREATE TABLE `st_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_term_relationships`
--

INSERT INTO `st_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(30, 2, 0),
(32, 2, 0),
(34, 2, 0),
(36, 2, 0),
(78, 3, 0),
(81, 3, 0),
(82, 3, 0),
(87, 4, 0),
(89, 4, 0),
(92, 4, 0),
(98, 4, 0),
(99, 4, 0),
(100, 5, 0),
(102, 5, 0),
(104, 5, 0),
(106, 5, 0),
(109, 5, 0),
(111, 5, 0),
(114, 5, 0),
(130, 1, 0),
(131, 6, 0),
(134, 6, 0),
(137, 6, 0),
(155, 7, 0),
(157, 7, 0),
(159, 7, 0),
(161, 7, 0),
(166, 8, 0),
(168, 8, 0),
(169, 8, 0),
(170, 8, 0),
(171, 8, 0),
(173, 8, 0),
(174, 8, 0),
(175, 8, 0),
(176, 8, 0),
(183, 9, 0),
(185, 9, 0),
(205, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `st_term_taxonomy`
--

CREATE TABLE `st_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_term_taxonomy`
--

INSERT INTO `st_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 6),
(6, 6, 'category', '', 0, 3),
(7, 7, 'category', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 9),
(9, 9, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `st_usermeta`
--

CREATE TABLE `st_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_usermeta`
--

INSERT INTO `st_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'st_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'st_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"0f8e549cf3802bb6d279de8a13790aa28162f7ede8d89919ae8937a098044ba0\";a:4:{s:10:\"expiration\";i:1689057118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687847518;}s:64:\"476cba1511d48602d525ad1a77ce88db5988b01b8878dab5ca81d22b52fa37d3\";a:4:{s:10:\"expiration\";i:1688536340;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688363540;}}'),
(17, 1, 'st_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'st_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'st_user-settings-time', '1688126206'),
(20, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:201:\"acf-group_649aa79764419,acf-group_649aad2b58187,acf-group_649aa16e28caf,acf-group_649aa3d1cc9f0,acf-group_649a88bf1de30,acf-group_649aaf389ef7f,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_page', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:12:{i:0;s:23:\"acf-group_649ab73f85ec6\";i:1;s:23:\"acf-group_649aa79764419\";i:2;s:23:\"acf-group_649aad2b58187\";i:3;s:23:\"acf-group_649aa16e28caf\";i:4;s:23:\"acf-group_649aa3d1cc9f0\";i:5;s:23:\"acf-group_649a88bf1de30\";i:6;s:23:\"acf-group_649aaf389ef7f\";i:7;s:10:\"postcustom\";i:8;s:16:\"commentstatusdiv\";i:9;s:11:\"commentsdiv\";i:10;s:7:\"slugdiv\";i:11;s:9:\"authordiv\";}'),
(24, 1, 'acf_user_settings', 'a:0:{}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:19:\"add-post-type-menus\";i:1;s:22:\"add-post-type-services\";i:2;s:23:\"add-post-type-amenities\";i:3;s:22:\"add-post-type-partners\";i:4;s:21:\"add-post-type-reviews\";i:5;s:12:\"add-post_tag\";}'),
(27, 1, 'meta-box-order_rooms', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:34:\"submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:223:\"acf-group_649aad2b58187,acf-group_649aa79764419,acf-group_649aaf389ef7f,acf-group_649e76f62a678,acf-group_649aa3d1cc9f0,acf-group_649a88bf1de30,acf-group_64a26a8935cfe,acf-group_649aa16e28caf,acf-group_649ab73f85ec6,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'screen_layout_rooms', '2');

-- --------------------------------------------------------

--
-- Table structure for table `st_users`
--

CREATE TABLE `st_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_users`
--

INSERT INTO `st_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7yC63EEbT4ANNtiKv8vyHb9IdY1hX0', 'admin', 'tashika@digisoft.com.np', '', '2023-06-27 06:31:44', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `st_commentmeta`
--
ALTER TABLE `st_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `st_comments`
--
ALTER TABLE `st_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `st_links`
--
ALTER TABLE `st_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `st_options`
--
ALTER TABLE `st_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `st_postmeta`
--
ALTER TABLE `st_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `st_posts`
--
ALTER TABLE `st_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `st_termmeta`
--
ALTER TABLE `st_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `st_terms`
--
ALTER TABLE `st_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `st_term_relationships`
--
ALTER TABLE `st_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `st_term_taxonomy`
--
ALTER TABLE `st_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `st_usermeta`
--
ALTER TABLE `st_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `st_users`
--
ALTER TABLE `st_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `st_commentmeta`
--
ALTER TABLE `st_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_comments`
--
ALTER TABLE `st_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `st_links`
--
ALTER TABLE `st_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_options`
--
ALTER TABLE `st_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `st_postmeta`
--
ALTER TABLE `st_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT for table `st_posts`
--
ALTER TABLE `st_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `st_termmeta`
--
ALTER TABLE `st_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_terms`
--
ALTER TABLE `st_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `st_term_taxonomy`
--
ALTER TABLE `st_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `st_usermeta`
--
ALTER TABLE `st_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `st_users`
--
ALTER TABLE `st_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

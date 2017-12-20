-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 05:31 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toystole`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_check_pincode_p`
--

CREATE TABLE `wp_check_pincode_p` (
  `id` int(11) NOT NULL,
  `pincode` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `dod` int(11) NOT NULL,
  `cod` varchar(250) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'rating', '3'),
(2, 3, 'verified', '0'),
(3, 4, 'rating', '5'),
(4, 4, 'verified', '0'),
(5, 5, 'rating', '5'),
(6, 5, 'verified', '0'),
(7, 6, 'rating', '4'),
(8, 6, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-09-20 18:07:59', '2017-09-20 18:07:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 75, 'WooCommerce', '', '', '', '2017-09-20 19:28:13', '2017-09-20 19:28:13', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 16, 'Jayesh Jayesh', 'jayrenapara1997@gmial.com', '', '::1', '2017-09-20 19:29:44', '2017-09-20 19:29:44', 'Good', 0, '1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', 0, 2),
(4, 27, 'toystole.admin', 'jayrenapara1997@gmail.com', '', '::1', '2017-09-30 16:12:58', '2017-09-30 16:12:58', 'hi!', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0', '', 0, 1),
(5, 27, 'toystole.admin', 'jayrenapara1997@gmail.com', '', '::1', '2017-09-30 16:13:24', '2017-09-30 16:13:24', 'Heloo!', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0', '', 0, 1),
(6, 21, 'toystole.admin', 'jayrenapara1997@gmail.com', '', '::1', '2017-09-30 17:20:33', '2017-09-30 17:20:33', 'hi', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0', '', 0, 1),
(7, 123, 'WooCommerce', '', '', '', '2017-09-30 17:22:35', '2017-09-30 17:22:35', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 124, 'WooCommerce', '', '', '', '2017-10-01 04:56:49', '2017-10-01 04:56:49', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 127, 'WooCommerce', '', '', '', '2017-10-07 17:43:50', '2017-10-07 17:43:50', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/toystole', 'yes'),
(2, 'home', 'http://localhost/toystole', 'yes'),
(3, 'blogname', 'ToyStole', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jayrenapara1997@gmail.com', 'yes'),
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
(22, 'posts_per_page', '8', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:76:\"custom-frontend-login-registration-form/frontend-login-registration-form.php\";i:2;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:61:\"C:\\xampp\\htdocs\\toystole/wp-content/themes/toystole/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'toystole', 'yes'),
(41, 'stylesheet', 'toystole', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:15:\"About Toy Stole\";s:4:\"text\";s:148:\"The languages only differ in their grammar, their pronunciation and their most common words.\r\n\r\nPhone: +91 99784 60382\r\n\r\nEmail: company@example.com\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '29', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:21:\"sidebar-footer-area-1\";a:1:{i:0;s:6:\"text-2\";}s:21:\"sidebar-footer-area-2\";a:1:{i:0;s:32:\"woocommerce_product_categories-2\";}s:21:\"sidebar-footer-area-3\";a:1:{i:0;s:32:\"woocommerce_top_rated_products-2\";}s:21:\"sidebar-footer-area-4\";a:1:{i:0;s:10:\"nav_menu-2\";}s:30:\"shop-isle-sidebar-shop-archive\";a:5:{i:0;s:8:\"search-2\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:32:\"woocommerce_product_categories-3\";i:3;s:27:\"woocommerce_rating_filter-2\";i:4;s:33:\"woocommerce_layered_nav_filters-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:11:\"Quick links\";s:8:\"nav_menu\";i:18;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:9:{i:1513185504;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1513188482;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1513188483;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1513188520;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513189066;a:2:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513189219;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513209600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1514894400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1505931159;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(117, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1513181905;s:7:\"checked\";a:1:{s:8:\"toystole\";s:6:\"1.1.20\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(122, 'current_theme', 'Toy Stole', 'yes'),
(123, 'theme_mods_toystole', 'a:17:{i:0;b:0;s:16:\"shop_isle_slider\";s:643:\"[{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/slide1.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_59c2af99bac18\"},{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/slide2.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_59c2af99bac18\"},{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/slide3.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_59c2af99bac18\"}]\";s:17:\"shop_isle_banners\";s:871:\"[{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/uploads\\/2017\\/09\\/offer2.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"shop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/uploads\\/2017\\/09\\/offer2.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"shop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"text\":\"undefined\",\"link\":\"\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/uploads\\/2017\\/09\\/offer2.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"customizer-repeater-59cfcef231b54\",\"shortcode\":\"undefined\",\"description\":\"undefined\"}]\";s:17:\"shop_isle_socials\";s:917:\"[{\"icon_value\":\"social_facebook\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"shop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_twitter\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"shop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_dribbble\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"shop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_skype\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"shop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"}]\";s:22:\"shop_isle_team_members\";s:1082:\"[{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/team1.jpg\",\"text\":\"Eva Bean\",\"subtext\":\"Developer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_59c2af9a04dff\"},{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/team2.jpg\",\"text\":\"Maria Woods\",\"subtext\":\"Designer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_59c2af9a04dff\"},{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/team3.jpg\",\"text\":\"Booby Stone\",\"subtext\":\"Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_59c2af9a04dff\"},{\"image_url\":\"http:\\/\\/localhost\\/toystole\\/wp-content\\/themes\\/toystole\\/assets\\/images\\/team4.jpg\",\"text\":\"Anna Neaga\",\"subtext\":\"Art Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_59c2af9a04dff\"}]\";s:20:\"shop_isle_advantages\";s:623:\"[{\"icon_value\":\"icon_lightbulb\",\"text\":\"Ideas and concepts\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_59c2af9a153bb\"},{\"icon_value\":\"icon_tools\",\"text\":\"Designs & interfaces\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_59c2af9a153bb\"},{\"icon_value\":\"icon_cogs\",\"text\":\"Highly customizable\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_59c2af9a153bb\"},{\"icon_value\":\"icon_like\",\"text\":\"Easy to use\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_59c2af9a153bb\"}]\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:15;s:6:\"footer\";i:18;}s:25:\"shop_isle_big_title_title\";s:9:\"Toy Stole\";s:28:\"shop_isle_big_title_subtitle\";s:16:\"Toy Stole Offer \";s:12:\"header_image\";s:74:\"http://localhost/toystole/wp-content/uploads/2017/09/cropped-banner1-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:106;s:3:\"url\";s:74:\"http://localhost/toystole/wp-content/uploads/2017/09/cropped-banner1-1.jpg\";s:13:\"thumbnail_url\";s:74:\"http://localhost/toystole/wp-content/uploads/2017/09/cropped-banner1-1.jpg\";s:6:\"height\";i:280;s:5:\"width\";i:1200;}s:25:\"shop_isle_big_title_image\";s:66:\"http://localhost/toystole/wp-content/uploads/2017/09/banner1-1.jpg\";s:23:\"shop_isle_banners_title\";s:0:\"\";s:19:\"shop_isle_copyright\";s:0:\"\";s:18:\"shop_isle_404_text\";s:79:\"The requested URL was not found on this server.<br /> That is all we          .\";s:22:\"shop_isle_banners_hide\";s:0:\"\";}', 'yes'),
(124, 'theme_switched', '', 'yes'),
(125, 'shop_isle_wporg_flag', 'true', 'yes'),
(126, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"262\";s:6:\"height\";s:3:\"325\";s:4:\"crop\";i:1;}', 'yes'),
(127, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"555\";s:6:\"height\";s:3:\"688\";s:4:\"crop\";i:1;}', 'yes'),
(128, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";s:4:\"crop\";i:0;}', 'yes'),
(129, 'shop_isle_migrate_translation', '1', 'yes'),
(131, 'shop_isle_section_order_migrate', 'yes', 'yes'),
(132, '_transient_timeout_plugin_slugs', '1506107606', 'no'),
(133, '_transient_plugin_slugs', 'a:6:{i:0;s:19:\"akismet/akismet.php\";i:1;s:76:\"custom-frontend-login-registration-form/frontend-login-registration-form.php\";i:2;s:9:\"hello.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:57:\"woocommerce-check-pincode-zipcode-for-shipping/plugin.php\";i:5;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";}', 'no'),
(134, 'recently_activated', 'a:1:{s:57:\"woocommerce-check-pincode-zipcode-for-shipping/plugin.php\";i:1506021205;}', 'yes'),
(138, 'woocommerce_default_country', 'IN:GJ', 'yes'),
(139, 'woocommerce_allowed_countries', 'all', 'yes'),
(140, 'woocommerce_all_except_countries', '', 'yes'),
(141, 'woocommerce_specific_allowed_countries', '', 'yes'),
(142, 'woocommerce_ship_to_countries', '', 'yes'),
(143, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(144, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(145, 'woocommerce_calc_taxes', 'yes', 'yes'),
(146, 'woocommerce_demo_store', 'no', 'yes'),
(147, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(148, 'woocommerce_currency', 'INR', 'yes'),
(149, 'woocommerce_currency_pos', 'left', 'yes'),
(150, 'woocommerce_price_thousand_sep', ',', 'yes'),
(151, 'woocommerce_price_decimal_sep', '.', 'yes'),
(152, 'woocommerce_price_num_decimals', '2', 'yes'),
(153, 'woocommerce_weight_unit', 'kg', 'yes'),
(154, 'woocommerce_dimension_unit', 'cm', 'yes'),
(155, 'woocommerce_enable_reviews', 'yes', 'yes'),
(156, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(157, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(158, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(159, 'woocommerce_review_rating_required', 'yes', 'no'),
(160, 'woocommerce_shop_page_id', '5', 'yes'),
(161, 'woocommerce_shop_page_display', '', 'yes'),
(162, 'woocommerce_category_archive_display', '', 'yes'),
(163, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(164, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(165, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(166, 'woocommerce_manage_stock', 'yes', 'yes'),
(167, 'woocommerce_hold_stock_minutes', '60', 'no'),
(168, 'woocommerce_notify_low_stock', 'yes', 'no'),
(169, 'woocommerce_notify_no_stock', 'yes', 'no'),
(170, 'woocommerce_stock_email_recipient', 'jayrenapara1997@gmail.com', 'no'),
(171, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(172, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(173, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(174, 'woocommerce_stock_format', '', 'yes'),
(175, 'woocommerce_file_download_method', 'force', 'no'),
(176, 'woocommerce_downloads_require_login', 'no', 'no'),
(177, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(178, 'woocommerce_prices_include_tax', 'no', 'yes'),
(179, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(180, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(181, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(182, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(183, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(184, 'woocommerce_tax_display_cart', 'excl', 'no'),
(185, 'woocommerce_price_display_suffix', '', 'yes'),
(186, 'woocommerce_tax_total_display', 'itemized', 'no'),
(187, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(188, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(189, 'woocommerce_ship_to_destination', 'billing', 'no'),
(190, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(191, 'woocommerce_enable_coupons', 'yes', 'yes'),
(192, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(193, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(194, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(195, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(196, 'woocommerce_cart_page_id', '6', 'yes'),
(197, 'woocommerce_checkout_page_id', '7', 'yes'),
(198, 'woocommerce_terms_page_id', '', 'no'),
(199, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(200, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(201, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(202, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(203, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(204, 'woocommerce_myaccount_page_id', '8', 'yes'),
(205, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(206, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(207, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(208, 'woocommerce_registration_generate_username', 'yes', 'no'),
(209, 'woocommerce_registration_generate_password', 'no', 'no'),
(210, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(211, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(212, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(213, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(214, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(215, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(216, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(217, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(218, 'woocommerce_email_from_name', 'ToyStole', 'no'),
(219, 'woocommerce_email_from_address', 'jayrenapara1997@gmail.com', 'no'),
(220, 'woocommerce_email_header_image', '', 'no'),
(221, 'woocommerce_email_footer_text', 'ToyStole - Powered by WooCommerce', 'no'),
(222, 'woocommerce_email_base_color', '#96588a', 'no'),
(223, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(224, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(225, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(226, 'woocommerce_api_enabled', 'yes', 'yes'),
(233, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(236, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(237, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Active filters\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(240, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Filter by price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(241, 'widget_woocommerce_product_categories', 'a:3:{i:2;a:7:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}i:3;a:7:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_woocommerce_top_rated_products', 'a:2:{i:2;a:2:{s:5:\"title\";s:18:\"Top rated products\";s:6:\"number\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Average rating\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'woocommerce_db_version', '3.1.1', 'yes'),
(251, 'woocommerce_version', '3.1.1', 'yes'),
(253, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(255, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(256, '_transient_timeout_geoip_::1', '1506536310', 'no'),
(257, '_transient_geoip_::1', '', 'no'),
(260, '_transient_timeout_geoip_0.0.0.0', '1506536339', 'no'),
(261, '_transient_geoip_0.0.0.0', '', 'no'),
(262, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(263, 'woocommerce_stripe_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(264, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";s:25:\"jayrenapara1997@gmail.com\";}', 'yes'),
(265, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(266, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(267, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(268, '_transient_shipping-transient-version', '1507398286', 'yes'),
(271, '_transient_product_query-transient-version', '1506792033', 'yes'),
(277, 'wc_ppec_version', '1.4.3', 'yes'),
(279, '_transient_product-transient-version', '1506787857', 'yes'),
(281, '_transient_timeout_wc_addons_sections', '1506536793', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(282, '_transient_wc_addons_sections', 'O:8:\"stdClass\":10:{s:8:\"featured\";O:8:\"stdClass\":2:{s:5:\"title\";s:8:\"Featured\";s:8:\"endpoint\";s:59:\"https://d3t0oesq8995hv.cloudfront.net/section/featured.json\";}s:7:\"popular\";O:8:\"stdClass\":2:{s:5:\"title\";s:7:\"Popular\";s:8:\"endpoint\";s:58:\"https://d3t0oesq8995hv.cloudfront.net/section/popular.json\";}s:16:\"payment_gateways\";O:8:\"stdClass\":2:{s:5:\"title\";s:16:\"Payment Gateways\";s:8:\"endpoint\";s:67:\"https://d3t0oesq8995hv.cloudfront.net/section/payment_gateways.json\";}s:16:\"shipping_methods\";O:8:\"stdClass\":2:{s:5:\"title\";s:16:\"Shipping Methods\";s:8:\"endpoint\";s:67:\"https://d3t0oesq8995hv.cloudfront.net/section/shipping_methods.json\";}s:13:\"import_export\";O:8:\"stdClass\":2:{s:5:\"title\";s:13:\"Import/Export\";s:8:\"endpoint\";s:64:\"https://d3t0oesq8995hv.cloudfront.net/section/import_export.json\";}s:10:\"accounting\";O:8:\"stdClass\":2:{s:5:\"title\";s:10:\"Accounting\";s:8:\"endpoint\";s:61:\"https://d3t0oesq8995hv.cloudfront.net/section/accounting.json\";}s:9:\"marketing\";O:8:\"stdClass\":2:{s:5:\"title\";s:9:\"Marketing\";s:8:\"endpoint\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/section/marketing.json\";}s:7:\"product\";O:8:\"stdClass\":2:{s:5:\"title\";s:8:\"Products\";s:8:\"endpoint\";s:58:\"https://d3t0oesq8995hv.cloudfront.net/section/product.json\";}s:4:\"free\";O:8:\"stdClass\":2:{s:5:\"title\";s:4:\"Free\";s:8:\"endpoint\";s:55:\"https://d3t0oesq8995hv.cloudfront.net/section/free.json\";}s:11:\"third_party\";O:8:\"stdClass\":2:{s:5:\"title\";s:11:\"Third-party\";s:8:\"endpoint\";s:62:\"https://d3t0oesq8995hv.cloudfront.net/section/third_party.json\";}}', 'no'),
(283, '_transient_timeout_wc_addons_featured', '1506536794', 'no'),
(284, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:9:\"From: $79\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}}}}}', 'no'),
(301, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(311, 'product_cat_children', 'a:0:{}', 'yes'),
(337, '_transient_timeout_wc_upgrade_notice_3.1.1', '1506021300', 'no'),
(338, '_transient_wc_upgrade_notice_3.1.1', '', 'no'),
(349, '_transient_orders-transient-version', '1507398227', 'yes'),
(354, '_transient_timeout_wc_cbp_1ee41c75121c4238c2489d5728c46f10', '1508527785', 'no'),
(355, '_transient_wc_cbp_1ee41c75121c4238c2489d5728c46f10', 'a:2:{i:0;i:21;i:1;i:21;}', 'no'),
(381, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1506031887', 'no'),
(382, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4378;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2503;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2375;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2304;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1833;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1604;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1593;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1440;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1357;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1353;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1345;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1280;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1273;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1135;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1057;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1050;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:998;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:945;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:817;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:815;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:811;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:774;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:772;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:670;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:669;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:664;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:655;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:646;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:645;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:637;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:624;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:610;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:595;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:594;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:589;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:584;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:577;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:576;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:561;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:557;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:543;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:535;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:524;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:519;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:505;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:502;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:495;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:488;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:477;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:475;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:474;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:470;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:449;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:445;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:442;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:440;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:440;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:435;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:421;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:410;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:407;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:405;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:405;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:401;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:396;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:385;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:383;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:381;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:370;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:353;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:344;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:340;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:332;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:332;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:331;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:330;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:330;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:327;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:326;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:323;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:321;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:321;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:313;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:302;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:300;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:293;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:293;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:292;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:287;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:286;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:284;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:284;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:279;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:277;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:274;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:274;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:272;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:271;}}', 'no'),
(486, '_transient_timeout_wc_related_27', '1506874405', 'no'),
(487, '_transient_wc_related_27', 'a:3:{i:0;s:2:\"21\";i:1;s:2:\"23\";i:2;s:2:\"25\";}', 'no'),
(488, '_transient_timeout_wc_cbp_c4baf37953686f68ddfccefc8ab6b6e3', '1509379979', 'no'),
(489, '_transient_wc_cbp_c4baf37953686f68ddfccefc8ab6b6e3', 'a:0:{}', 'no'),
(502, '_transient_timeout__woocommerce_helper_subscriptions', '1506791139', 'no'),
(503, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(504, '_transient_timeout__woocommerce_helper_updates', '1506833440', 'no'),
(505, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1506790239;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(526, '_transient_timeout_wc_related_16', '1506882579', 'no'),
(527, '_transient_wc_related_16', 'a:0:{}', 'no'),
(529, '_transient_timeout_wc_related_54', '1506920123', 'no'),
(530, '_transient_wc_related_54', 'a:3:{i:0;s:2:\"17\";i:1;s:2:\"19\";i:2;s:2:\"56\";}', 'no'),
(578, '_transient_timeout_wc_related_9', '1507484399', 'no'),
(579, '_transient_wc_related_9', 'a:0:{}', 'no'),
(580, '_transient_timeout_wc_related_21', '1507484426', 'no'),
(581, '_transient_wc_related_21', 'a:3:{i:0;s:2:\"23\";i:1;s:2:\"25\";i:2;s:2:\"27\";}', 'no'),
(586, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"5\";s:14:\"total_comments\";i:5;s:3:\"all\";i:5;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(591, '_transient_timeout_wc_shipping_method_count_0_1507398286', '1509990298', 'no'),
(592, '_transient_wc_shipping_method_count_0_1507398286', '0', 'no'),
(601, '_transient_timeout_wc_term_counts', '1513790703', 'no'),
(602, '_transient_wc_term_counts', 'a:2:{i:16;s:1:\"4\";i:17;s:1:\"4\";}', 'no'),
(608, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.9\";s:7:\"version\";s:3:\"4.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.9\";s:7:\"version\";s:3:\"4.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1513181904;s:15:\"version_checked\";s:5:\"4.8.3\";s:12:\"translations\";a:0:{}}', 'no'),
(610, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"jayrenapara1997@gmail.com\";s:7:\"version\";s:5:\"4.8.3\";s:9:\"timestamp\";i:1511198725;}', 'no'),
(611, '_transient_timeout_external_ip_address_192.168.0.3', '1511804630', 'no'),
(612, '_transient_external_ip_address_192.168.0.3', '175.100.170.253', 'no'),
(613, '_site_transient_timeout_browser_6a6af6ca7cf9fc7984bf5ac20b788639', '1511804693', 'no'),
(614, '_site_transient_browser_6a6af6ca7cf9fc7984bf5ac20b788639', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"53.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(619, '_transient_timeout_wc_low_stock_count', '1513791896', 'no'),
(620, '_transient_wc_low_stock_count', '0', 'no'),
(621, '_transient_timeout_wc_outofstock_count', '1513791897', 'no'),
(622, '_transient_wc_outofstock_count', '0', 'no'),
(640, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1513181905;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"4.9\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"4.9\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.4.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389\";s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";s:7:\"default\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389\";s:7:\"default\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:76:\"custom-frontend-login-registration-form/frontend-login-registration-form.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:53:\"w.org/plugins/custom-frontend-login-registration-form\";s:4:\"slug\";s:39:\"custom-frontend-login-registration-form\";s:6:\"plugin\";s:76:\"custom-frontend-login-registration-form/frontend-login-registration-form.php\";s:11:\"new_version\";s:4:\"1.01\";s:3:\"url\";s:70:\"https://wordpress.org/plugins/custom-frontend-login-registration-form/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/custom-frontend-login-registration-form.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(641, '_transient_timeout_external_ip_address_::1', '1513786704', 'no'),
(642, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(644, '_site_transient_timeout_theme_roots', '1513183705', 'no'),
(645, '_site_transient_theme_roots', 'a:1:{s:8:\"toystole\";s:7:\"/themes\";}', 'no'),
(646, '_transient_timeout_wc_report_sales_by_date', '1513268952', 'no'),
(647, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"598ac5bc188ecfe8f7c40fc9fa735230\";a:0:{}s:32:\"4c735c7cebd9074870e7c54ddbcf66ab\";a:0:{}s:32:\"241c9c7fb75388db0a5eee17cef6b6a8\";a:0:{}s:32:\"6784895203bd8a14d3db35056bfbebb4\";N;s:32:\"8a8d6c408e514523e9e0917bc8e45126\";a:0:{}s:32:\"0a927c8582e8739fde7aa9379fe04692\";a:0:{}s:32:\"5cf884b73346b1360862ed6a53e7a8f2\";a:0:{}s:32:\"13117efd2182ac86c117786939b9f3e1\";a:0:{}}', 'no'),
(648, '_transient_timeout_wc_admin_report', '1513268952', 'no'),
(649, '_transient_wc_admin_report', 'a:1:{s:32:\"5a2c027922a63ed66dfb562d7e504ae0\";a:0:{}}', 'no'),
(650, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1513225754', 'no'),
(651, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(652, '_transient_is_multi_author', '0', 'yes'),
(653, 'woocommerce_permalinks', 'a:4:{s:13:\"category_base\";s:0:\"\";s:8:\"tag_base\";s:0:\"\";s:14:\"attribute_base\";s:0:\"\";s:12:\"product_base\";s:0:\"\";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pincode_setting_p`
--

CREATE TABLE `wp_pincode_setting_p` (
  `id` int(11) NOT NULL,
  `del_help_text` text NOT NULL,
  `cod_help_text` text NOT NULL,
  `cod_msg1` text NOT NULL,
  `cod_msg2` text NOT NULL,
  `error_msg` text NOT NULL,
  `del_date` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `s_s` int(11) NOT NULL,
  `s_s1` int(11) NOT NULL,
  `cod_p` int(11) NOT NULL,
  `delv_by_cart` int(11) NOT NULL,
  `val_checkout` int(11) NOT NULL,
  `bgcolor` varchar(250) NOT NULL,
  `textcolor` varchar(250) NOT NULL,
  `bordercolor` varchar(250) NOT NULL,
  `buttoncolor` varchar(250) NOT NULL,
  `buttontcolor` varchar(250) NOT NULL,
  `ttbordercolor` varchar(250) NOT NULL,
  `ttbagcolor` varchar(250) NOT NULL,
  `tttextcolor` varchar(250) NOT NULL,
  `devbytcolor` varchar(250) NOT NULL,
  `codtcolor` varchar(250) NOT NULL,
  `datecolor` varchar(250) NOT NULL,
  `codmsgcolor` varchar(250) NOT NULL,
  `errormsgcolor` varchar(250) NOT NULL,
  `image_size` varchar(250) NOT NULL,
  `image_size1` varchar(250) NOT NULL,
  `tt_c_image_size` varchar(250) NOT NULL,
  `tt_c_image_size1` varchar(250) NOT NULL,
  `help_image` text NOT NULL,
  `tt_c_image` text NOT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_pincode_setting_p`
--

INSERT INTO `wp_pincode_setting_p` (`id`, `del_help_text`, `cod_help_text`, `cod_msg1`, `cod_msg2`, `error_msg`, `del_date`, `cod`, `s_s`, `s_s1`, `cod_p`, `delv_by_cart`, `val_checkout`, `bgcolor`, `textcolor`, `bordercolor`, `buttoncolor`, `buttontcolor`, `ttbordercolor`, `ttbagcolor`, `tttextcolor`, `devbytcolor`, `codtcolor`, `datecolor`, `codmsgcolor`, `errormsgcolor`, `image_size`, `image_size1`, `tt_c_image_size`, `tt_c_image_size1`, `help_image`, `tt_c_image`, `date_time`) VALUES
(1, 'Delivery Date Help Text', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '#f4f2f2', '#737070', '', '#a46497', '#ffffff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 9, '_wc_review_count', '0'),
(5, 9, '_wc_rating_count', 'a:0:{}'),
(6, 9, '_wc_average_rating', '0'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1506787487:1'),
(18, 9, '_sku', ''),
(19, 9, '_regular_price', '500'),
(20, 9, '_sale_price', ''),
(21, 9, '_sale_price_dates_from', ''),
(22, 9, '_sale_price_dates_to', ''),
(23, 9, 'total_sales', '1'),
(24, 9, '_tax_status', 'taxable'),
(25, 9, '_tax_class', ''),
(26, 9, '_manage_stock', 'no'),
(27, 9, '_backorders', 'no'),
(28, 9, '_sold_individually', 'no'),
(29, 9, '_weight', ''),
(30, 9, '_length', ''),
(31, 9, '_width', ''),
(32, 9, '_height', ''),
(33, 9, '_upsell_ids', 'a:0:{}'),
(34, 9, '_crosssell_ids', 'a:0:{}'),
(35, 9, '_purchase_note', ''),
(36, 9, '_default_attributes', 'a:0:{}'),
(37, 9, '_virtual', 'no'),
(38, 9, '_downloadable', 'no'),
(39, 9, '_product_image_gallery', '100,99,98'),
(40, 9, '_download_limit', '-1'),
(41, 9, '_download_expiry', '-1'),
(42, 9, '_stock', NULL),
(43, 9, '_stock_status', 'instock'),
(44, 9, '_product_version', '3.1.1'),
(45, 9, '_price', '500'),
(46, 14, '_wc_review_count', '0'),
(47, 14, '_wc_rating_count', 'a:0:{}'),
(48, 14, '_wc_average_rating', '0'),
(49, 14, '_edit_last', '1'),
(50, 14, '_edit_lock', '1506787629:1'),
(54, 14, '_sku', ''),
(55, 14, '_regular_price', '800'),
(56, 14, '_sale_price', '550'),
(57, 14, '_sale_price_dates_from', ''),
(58, 14, '_sale_price_dates_to', ''),
(59, 14, 'total_sales', '0'),
(60, 14, '_tax_status', 'taxable'),
(61, 14, '_tax_class', ''),
(62, 14, '_manage_stock', 'no'),
(63, 14, '_backorders', 'no'),
(64, 14, '_sold_individually', 'no'),
(65, 14, '_weight', ''),
(66, 14, '_length', ''),
(67, 14, '_width', ''),
(68, 14, '_height', ''),
(69, 14, '_upsell_ids', 'a:0:{}'),
(70, 14, '_crosssell_ids', 'a:0:{}'),
(71, 14, '_purchase_note', ''),
(72, 14, '_default_attributes', 'a:0:{}'),
(73, 14, '_virtual', 'no'),
(74, 14, '_downloadable', 'no'),
(75, 14, '_product_image_gallery', '101,97'),
(76, 14, '_download_limit', '-1'),
(77, 14, '_download_expiry', '-1'),
(78, 14, '_stock', NULL),
(79, 14, '_stock_status', 'instock'),
(80, 14, '_product_version', '3.1.1'),
(81, 14, '_price', '550'),
(82, 16, '_wc_review_count', '1'),
(83, 16, '_wc_rating_count', 'a:1:{i:3;i:1;}'),
(84, 16, '_wc_average_rating', '3.00'),
(85, 16, '_edit_last', '1'),
(86, 16, '_edit_lock', '1506787629:1'),
(88, 16, '_sku', ''),
(89, 16, '_regular_price', '150'),
(90, 16, '_sale_price', ''),
(91, 16, '_sale_price_dates_from', ''),
(92, 16, '_sale_price_dates_to', ''),
(93, 16, 'total_sales', '0'),
(94, 16, '_tax_status', 'taxable'),
(95, 16, '_tax_class', ''),
(96, 16, '_manage_stock', 'no'),
(97, 16, '_backorders', 'no'),
(98, 16, '_sold_individually', 'no'),
(99, 16, '_weight', ''),
(100, 16, '_length', ''),
(101, 16, '_width', ''),
(102, 16, '_height', ''),
(103, 16, '_upsell_ids', 'a:0:{}'),
(104, 16, '_crosssell_ids', 'a:0:{}'),
(105, 16, '_purchase_note', ''),
(106, 16, '_default_attributes', 'a:0:{}'),
(107, 16, '_virtual', 'no'),
(108, 16, '_downloadable', 'no'),
(109, 16, '_product_image_gallery', '91,101'),
(110, 16, '_download_limit', '-1'),
(111, 16, '_download_expiry', '-1'),
(112, 16, '_stock', NULL),
(113, 16, '_stock_status', 'instock'),
(114, 16, '_product_version', '3.1.1'),
(115, 16, '_price', '150'),
(116, 17, '_wc_review_count', '0'),
(117, 17, '_wc_rating_count', 'a:0:{}'),
(118, 17, '_wc_average_rating', '0'),
(119, 17, '_edit_last', '1'),
(120, 17, '_edit_lock', '1506787628:1'),
(124, 17, '_sku', ''),
(125, 17, '_regular_price', '1000'),
(126, 17, '_sale_price', '400'),
(127, 17, '_sale_price_dates_from', ''),
(128, 17, '_sale_price_dates_to', ''),
(129, 17, 'total_sales', '0'),
(130, 17, '_tax_status', 'taxable'),
(131, 17, '_tax_class', ''),
(132, 17, '_manage_stock', 'no'),
(133, 17, '_backorders', 'no'),
(134, 17, '_sold_individually', 'no'),
(135, 17, '_weight', ''),
(136, 17, '_length', ''),
(137, 17, '_width', ''),
(138, 17, '_height', ''),
(139, 17, '_upsell_ids', 'a:0:{}'),
(140, 17, '_crosssell_ids', 'a:0:{}'),
(141, 17, '_purchase_note', ''),
(142, 17, '_default_attributes', 'a:0:{}'),
(143, 17, '_virtual', 'no'),
(144, 17, '_downloadable', 'no'),
(145, 17, '_product_image_gallery', '94,99'),
(146, 17, '_download_limit', '-1'),
(147, 17, '_download_expiry', '-1'),
(148, 17, '_stock', NULL),
(149, 17, '_stock_status', 'instock'),
(150, 17, '_product_version', '3.1.1'),
(151, 17, '_price', '400'),
(152, 19, '_wc_review_count', '0'),
(153, 19, '_wc_rating_count', 'a:0:{}'),
(154, 19, '_wc_average_rating', '0'),
(155, 19, '_edit_last', '1'),
(156, 19, '_edit_lock', '1506787628:1'),
(160, 19, '_sku', ''),
(161, 19, '_regular_price', '500'),
(162, 19, '_sale_price', ''),
(163, 19, '_sale_price_dates_from', ''),
(164, 19, '_sale_price_dates_to', ''),
(165, 19, 'total_sales', '0'),
(166, 19, '_tax_status', 'taxable'),
(167, 19, '_tax_class', ''),
(168, 19, '_manage_stock', 'no'),
(169, 19, '_backorders', 'no'),
(170, 19, '_sold_individually', 'no'),
(171, 19, '_weight', ''),
(172, 19, '_length', ''),
(173, 19, '_width', ''),
(174, 19, '_height', ''),
(175, 19, '_upsell_ids', 'a:0:{}'),
(176, 19, '_crosssell_ids', 'a:0:{}'),
(177, 19, '_purchase_note', ''),
(178, 19, '_default_attributes', 'a:0:{}'),
(179, 19, '_virtual', 'no'),
(180, 19, '_downloadable', 'no'),
(181, 19, '_product_image_gallery', '92,91'),
(182, 19, '_download_limit', '-1'),
(183, 19, '_download_expiry', '-1'),
(184, 19, '_stock', NULL),
(185, 19, '_stock_status', 'instock'),
(186, 19, '_product_version', '3.1.1'),
(187, 19, '_price', '500'),
(188, 21, '_wc_review_count', '1'),
(189, 21, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(190, 21, '_wc_average_rating', '4.00'),
(191, 21, '_edit_last', '1'),
(192, 21, '_edit_lock', '1506787627:1'),
(196, 21, '_sku', ''),
(197, 21, '_regular_price', '800'),
(198, 21, '_sale_price', ''),
(199, 21, '_sale_price_dates_from', ''),
(200, 21, '_sale_price_dates_to', ''),
(201, 21, 'total_sales', '6'),
(202, 21, '_tax_status', 'taxable'),
(203, 21, '_tax_class', ''),
(204, 21, '_manage_stock', 'no'),
(205, 21, '_backorders', 'no'),
(206, 21, '_sold_individually', 'no'),
(207, 21, '_weight', ''),
(208, 21, '_length', ''),
(209, 21, '_width', ''),
(210, 21, '_height', ''),
(211, 21, '_upsell_ids', 'a:0:{}'),
(212, 21, '_crosssell_ids', 'a:0:{}'),
(213, 21, '_purchase_note', ''),
(214, 21, '_default_attributes', 'a:0:{}'),
(215, 21, '_virtual', 'no'),
(216, 21, '_downloadable', 'no'),
(217, 21, '_product_image_gallery', '96,94'),
(218, 21, '_download_limit', '-1'),
(219, 21, '_download_expiry', '-1'),
(220, 21, '_stock', NULL),
(221, 21, '_stock_status', 'instock'),
(222, 21, '_product_version', '3.1.1'),
(223, 21, '_price', '800'),
(224, 23, '_wc_review_count', '0'),
(225, 23, '_wc_rating_count', 'a:0:{}'),
(226, 23, '_wc_average_rating', '0'),
(227, 23, '_edit_last', '1'),
(228, 23, '_edit_lock', '1506787626:1'),
(232, 23, '_sku', ''),
(233, 23, '_regular_price', '150'),
(234, 23, '_sale_price', '100'),
(235, 23, '_sale_price_dates_from', ''),
(236, 23, '_sale_price_dates_to', ''),
(237, 23, 'total_sales', '0'),
(238, 23, '_tax_status', 'taxable'),
(239, 23, '_tax_class', ''),
(240, 23, '_manage_stock', 'no'),
(241, 23, '_backorders', 'no'),
(242, 23, '_sold_individually', 'no'),
(243, 23, '_weight', ''),
(244, 23, '_length', ''),
(245, 23, '_width', ''),
(246, 23, '_height', ''),
(247, 23, '_upsell_ids', 'a:0:{}'),
(248, 23, '_crosssell_ids', 'a:0:{}'),
(249, 23, '_purchase_note', ''),
(250, 23, '_default_attributes', 'a:0:{}'),
(251, 23, '_virtual', 'no'),
(252, 23, '_downloadable', 'no'),
(253, 23, '_product_image_gallery', '97,96'),
(254, 23, '_download_limit', '-1'),
(255, 23, '_download_expiry', '-1'),
(256, 23, '_stock', NULL),
(257, 23, '_stock_status', 'instock'),
(258, 23, '_product_version', '3.1.1'),
(259, 23, '_price', '100'),
(260, 25, '_wc_review_count', '0'),
(261, 25, '_wc_rating_count', 'a:0:{}'),
(262, 25, '_wc_average_rating', '0'),
(263, 25, '_edit_last', '1'),
(264, 25, '_edit_lock', '1506787626:1'),
(268, 25, '_sku', ''),
(269, 25, '_regular_price', '500'),
(270, 25, '_sale_price', ''),
(271, 25, '_sale_price_dates_from', ''),
(272, 25, '_sale_price_dates_to', ''),
(273, 25, 'total_sales', '0'),
(274, 25, '_tax_status', 'taxable'),
(275, 25, '_tax_class', ''),
(276, 25, '_manage_stock', 'no'),
(277, 25, '_backorders', 'no'),
(278, 25, '_sold_individually', 'no'),
(279, 25, '_weight', ''),
(280, 25, '_length', ''),
(281, 25, '_width', ''),
(282, 25, '_height', ''),
(283, 25, '_upsell_ids', 'a:0:{}'),
(284, 25, '_crosssell_ids', 'a:0:{}'),
(285, 25, '_purchase_note', ''),
(286, 25, '_default_attributes', 'a:0:{}'),
(287, 25, '_virtual', 'no'),
(288, 25, '_downloadable', 'no'),
(289, 25, '_product_image_gallery', '102,93'),
(290, 25, '_download_limit', '-1'),
(291, 25, '_download_expiry', '-1'),
(292, 25, '_stock', NULL),
(293, 25, '_stock_status', 'instock'),
(294, 25, '_product_version', '3.1.1'),
(295, 25, '_price', '500'),
(296, 27, '_wc_review_count', '2'),
(297, 27, '_wc_rating_count', 'a:1:{i:5;i:2;}'),
(298, 27, '_wc_average_rating', '5.00'),
(299, 27, '_edit_last', '1'),
(300, 27, '_edit_lock', '1506787481:1'),
(302, 27, '_sku', ''),
(303, 27, '_regular_price', '800'),
(304, 27, '_sale_price', '555'),
(305, 27, '_sale_price_dates_from', ''),
(306, 27, '_sale_price_dates_to', ''),
(307, 27, 'total_sales', '0'),
(308, 27, '_tax_status', 'taxable'),
(309, 27, '_tax_class', ''),
(310, 27, '_manage_stock', 'no'),
(311, 27, '_backorders', 'no'),
(312, 27, '_sold_individually', 'no'),
(313, 27, '_weight', ''),
(314, 27, '_length', ''),
(315, 27, '_width', ''),
(316, 27, '_height', ''),
(317, 27, '_upsell_ids', 'a:0:{}'),
(318, 27, '_crosssell_ids', 'a:0:{}'),
(319, 27, '_purchase_note', ''),
(320, 27, '_default_attributes', 'a:0:{}'),
(321, 27, '_virtual', 'no'),
(322, 27, '_downloadable', 'no'),
(323, 27, '_product_image_gallery', '98,97'),
(324, 27, '_download_limit', '-1'),
(325, 27, '_download_expiry', '-1'),
(326, 27, '_stock', NULL),
(327, 27, '_stock_status', 'instock'),
(328, 27, '_product_version', '3.1.1'),
(329, 27, '_price', '555'),
(332, 29, '_edit_last', '1'),
(333, 29, '_wp_page_template', 'default'),
(334, 29, '_edit_lock', '1506787662:1'),
(335, 31, '_menu_item_type', 'custom'),
(336, 31, '_menu_item_menu_item_parent', '0'),
(337, 31, '_menu_item_object_id', '31'),
(338, 31, '_menu_item_object', 'custom'),
(339, 31, '_menu_item_target', ''),
(340, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(341, 31, '_menu_item_xfn', ''),
(342, 31, '_menu_item_url', 'http://localhost/toystole/'),
(343, 31, '_menu_item_orphaned', '1505932541'),
(344, 32, '_menu_item_type', 'post_type'),
(345, 32, '_menu_item_menu_item_parent', '0'),
(346, 32, '_menu_item_object_id', '6'),
(347, 32, '_menu_item_object', 'page'),
(348, 32, '_menu_item_target', ''),
(349, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(350, 32, '_menu_item_xfn', ''),
(351, 32, '_menu_item_url', ''),
(352, 32, '_menu_item_orphaned', '1505932541'),
(353, 33, '_menu_item_type', 'post_type'),
(354, 33, '_menu_item_menu_item_parent', '0'),
(355, 33, '_menu_item_object_id', '7'),
(356, 33, '_menu_item_object', 'page'),
(357, 33, '_menu_item_target', ''),
(358, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 33, '_menu_item_xfn', ''),
(360, 33, '_menu_item_url', ''),
(361, 33, '_menu_item_orphaned', '1505932542'),
(362, 34, '_menu_item_type', 'post_type'),
(363, 34, '_menu_item_menu_item_parent', '0'),
(364, 34, '_menu_item_object_id', '29'),
(365, 34, '_menu_item_object', 'page'),
(366, 34, '_menu_item_target', ''),
(367, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(368, 34, '_menu_item_xfn', ''),
(369, 34, '_menu_item_url', ''),
(370, 34, '_menu_item_orphaned', '1505932543'),
(371, 35, '_menu_item_type', 'post_type'),
(372, 35, '_menu_item_menu_item_parent', '0'),
(373, 35, '_menu_item_object_id', '8'),
(374, 35, '_menu_item_object', 'page'),
(375, 35, '_menu_item_target', ''),
(376, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(377, 35, '_menu_item_xfn', ''),
(378, 35, '_menu_item_url', ''),
(379, 35, '_menu_item_orphaned', '1505932543'),
(380, 36, '_menu_item_type', 'post_type'),
(381, 36, '_menu_item_menu_item_parent', '0'),
(382, 36, '_menu_item_object_id', '2'),
(383, 36, '_menu_item_object', 'page'),
(384, 36, '_menu_item_target', ''),
(385, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(386, 36, '_menu_item_xfn', ''),
(387, 36, '_menu_item_url', ''),
(388, 36, '_menu_item_orphaned', '1505932543'),
(389, 37, '_menu_item_type', 'post_type'),
(390, 37, '_menu_item_menu_item_parent', '0'),
(391, 37, '_menu_item_object_id', '5'),
(392, 37, '_menu_item_object', 'page'),
(393, 37, '_menu_item_target', ''),
(394, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(395, 37, '_menu_item_xfn', ''),
(396, 37, '_menu_item_url', ''),
(397, 37, '_menu_item_orphaned', '1505932544'),
(398, 39, '_menu_item_type', 'custom'),
(399, 39, '_menu_item_menu_item_parent', '0'),
(400, 39, '_menu_item_object_id', '39'),
(401, 39, '_menu_item_object', 'custom'),
(402, 39, '_menu_item_target', ''),
(403, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(404, 39, '_menu_item_xfn', ''),
(405, 39, '_menu_item_url', 'http://localhost/toystole/'),
(406, 39, '_menu_item_orphaned', '1505932554'),
(407, 40, '_menu_item_type', 'post_type'),
(408, 40, '_menu_item_menu_item_parent', '0'),
(409, 40, '_menu_item_object_id', '6'),
(410, 40, '_menu_item_object', 'page'),
(411, 40, '_menu_item_target', ''),
(412, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(413, 40, '_menu_item_xfn', ''),
(414, 40, '_menu_item_url', ''),
(415, 40, '_menu_item_orphaned', '1505932555'),
(416, 41, '_menu_item_type', 'post_type'),
(417, 41, '_menu_item_menu_item_parent', '0'),
(418, 41, '_menu_item_object_id', '7'),
(419, 41, '_menu_item_object', 'page'),
(420, 41, '_menu_item_target', ''),
(421, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(422, 41, '_menu_item_xfn', ''),
(423, 41, '_menu_item_url', ''),
(424, 41, '_menu_item_orphaned', '1505932555'),
(425, 42, '_menu_item_type', 'post_type'),
(426, 42, '_menu_item_menu_item_parent', '0'),
(427, 42, '_menu_item_object_id', '29'),
(428, 42, '_menu_item_object', 'page'),
(429, 42, '_menu_item_target', ''),
(430, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(431, 42, '_menu_item_xfn', ''),
(432, 42, '_menu_item_url', ''),
(433, 42, '_menu_item_orphaned', '1505932556'),
(434, 43, '_menu_item_type', 'post_type'),
(435, 43, '_menu_item_menu_item_parent', '0'),
(436, 43, '_menu_item_object_id', '8'),
(437, 43, '_menu_item_object', 'page'),
(438, 43, '_menu_item_target', ''),
(439, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(440, 43, '_menu_item_xfn', ''),
(441, 43, '_menu_item_url', ''),
(442, 43, '_menu_item_orphaned', '1505932557'),
(443, 44, '_menu_item_type', 'post_type'),
(444, 44, '_menu_item_menu_item_parent', '0'),
(445, 44, '_menu_item_object_id', '2'),
(446, 44, '_menu_item_object', 'page'),
(447, 44, '_menu_item_target', ''),
(448, 45, '_menu_item_type', 'custom'),
(449, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(450, 45, '_menu_item_menu_item_parent', '0'),
(451, 44, '_menu_item_xfn', ''),
(452, 45, '_menu_item_object_id', '45'),
(453, 44, '_menu_item_url', ''),
(454, 45, '_menu_item_object', 'custom'),
(455, 44, '_menu_item_orphaned', '1505932557'),
(456, 45, '_menu_item_target', ''),
(457, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(458, 46, '_menu_item_type', 'post_type'),
(459, 45, '_menu_item_xfn', ''),
(460, 46, '_menu_item_menu_item_parent', '0'),
(461, 45, '_menu_item_url', 'http://localhost/toystole/'),
(462, 46, '_menu_item_object_id', '5'),
(463, 45, '_menu_item_orphaned', '1505932558'),
(464, 46, '_menu_item_object', 'page'),
(465, 46, '_menu_item_target', ''),
(466, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(467, 47, '_menu_item_type', 'post_type'),
(468, 46, '_menu_item_xfn', ''),
(469, 47, '_menu_item_menu_item_parent', '0'),
(470, 46, '_menu_item_url', ''),
(471, 47, '_menu_item_object_id', '6'),
(472, 46, '_menu_item_orphaned', '1505932558'),
(473, 47, '_menu_item_object', 'page'),
(474, 47, '_menu_item_target', ''),
(475, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(476, 47, '_menu_item_xfn', ''),
(477, 47, '_menu_item_url', ''),
(478, 47, '_menu_item_orphaned', '1505932559'),
(479, 48, '_menu_item_type', 'post_type'),
(480, 48, '_menu_item_menu_item_parent', '0'),
(481, 48, '_menu_item_object_id', '7'),
(482, 48, '_menu_item_object', 'page'),
(483, 48, '_menu_item_target', ''),
(484, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(485, 48, '_menu_item_xfn', ''),
(486, 48, '_menu_item_url', ''),
(487, 48, '_menu_item_orphaned', '1505932559'),
(488, 49, '_menu_item_type', 'post_type'),
(489, 49, '_menu_item_menu_item_parent', '0'),
(490, 49, '_menu_item_object_id', '29'),
(491, 49, '_menu_item_object', 'page'),
(492, 49, '_menu_item_target', ''),
(493, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(494, 49, '_menu_item_xfn', ''),
(495, 49, '_menu_item_url', ''),
(497, 50, '_menu_item_type', 'post_type'),
(498, 50, '_menu_item_menu_item_parent', '0'),
(499, 50, '_menu_item_object_id', '8'),
(500, 50, '_menu_item_object', 'page'),
(501, 50, '_menu_item_target', ''),
(502, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(503, 50, '_menu_item_xfn', ''),
(504, 50, '_menu_item_url', ''),
(506, 51, '_menu_item_type', 'post_type'),
(507, 51, '_menu_item_menu_item_parent', '0'),
(508, 51, '_menu_item_object_id', '2'),
(509, 51, '_menu_item_object', 'page'),
(510, 51, '_menu_item_target', ''),
(511, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(512, 51, '_menu_item_xfn', ''),
(513, 51, '_menu_item_url', ''),
(514, 51, '_menu_item_orphaned', '1505932560'),
(515, 52, '_menu_item_type', 'post_type'),
(516, 52, '_menu_item_menu_item_parent', '0'),
(517, 52, '_menu_item_object_id', '5'),
(518, 52, '_menu_item_object', 'page'),
(519, 52, '_menu_item_target', ''),
(520, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(521, 52, '_menu_item_xfn', ''),
(522, 52, '_menu_item_url', ''),
(526, 54, '_wc_review_count', '0'),
(527, 54, '_wc_rating_count', 'a:0:{}'),
(528, 54, '_wc_average_rating', '0'),
(529, 54, '_edit_last', '1'),
(530, 54, '_edit_lock', '1506787480:1'),
(534, 54, '_sku', ''),
(535, 54, '_regular_price', '1000'),
(536, 54, '_sale_price', ''),
(537, 54, '_sale_price_dates_from', ''),
(538, 54, '_sale_price_dates_to', ''),
(539, 54, 'total_sales', '8'),
(540, 54, '_tax_status', 'taxable'),
(541, 54, '_tax_class', ''),
(542, 54, '_manage_stock', 'no'),
(543, 54, '_backorders', 'no'),
(544, 54, '_sold_individually', 'no'),
(545, 54, '_weight', ''),
(546, 54, '_length', ''),
(547, 54, '_width', ''),
(548, 54, '_height', ''),
(549, 54, '_upsell_ids', 'a:0:{}'),
(550, 54, '_crosssell_ids', 'a:0:{}'),
(551, 54, '_purchase_note', ''),
(552, 54, '_default_attributes', 'a:0:{}'),
(553, 54, '_virtual', 'no'),
(554, 54, '_downloadable', 'no'),
(555, 54, '_product_image_gallery', '102,100'),
(556, 54, '_download_limit', '-1'),
(557, 54, '_download_expiry', '-1'),
(558, 54, '_stock', NULL),
(559, 54, '_stock_status', 'instock'),
(560, 54, '_product_version', '3.1.1'),
(561, 54, '_price', '1000'),
(562, 56, '_wc_review_count', '0'),
(563, 56, '_wc_rating_count', 'a:0:{}'),
(564, 56, '_wc_average_rating', '0'),
(567, 56, '_edit_last', '1'),
(569, 56, '_sku', ''),
(570, 56, '_regular_price', '800'),
(571, 56, '_sale_price', ''),
(572, 56, '_sale_price_dates_from', ''),
(573, 56, '_sale_price_dates_to', ''),
(574, 56, 'total_sales', '0'),
(575, 56, '_tax_status', 'taxable'),
(576, 56, '_tax_class', ''),
(577, 56, '_manage_stock', 'no'),
(578, 56, '_backorders', 'no'),
(579, 56, '_sold_individually', 'no'),
(580, 56, '_weight', ''),
(581, 56, '_length', ''),
(582, 56, '_width', ''),
(583, 56, '_height', ''),
(584, 56, '_upsell_ids', 'a:0:{}'),
(585, 56, '_crosssell_ids', 'a:0:{}'),
(586, 56, '_purchase_note', ''),
(587, 56, '_default_attributes', 'a:0:{}'),
(588, 56, '_virtual', 'no'),
(589, 56, '_downloadable', 'no'),
(590, 56, '_product_image_gallery', '98,99'),
(591, 56, '_download_limit', '-1'),
(592, 56, '_download_expiry', '-1'),
(593, 56, '_stock', NULL),
(594, 56, '_stock_status', 'instock'),
(595, 56, '_product_version', '3.1.1'),
(596, 56, '_price', '800'),
(597, 56, '_edit_lock', '1506796370:1'),
(598, 58, '_menu_item_type', 'custom'),
(599, 58, '_menu_item_menu_item_parent', '0'),
(600, 58, '_menu_item_object_id', '58'),
(601, 58, '_menu_item_object', 'custom'),
(602, 58, '_menu_item_target', ''),
(603, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(604, 58, '_menu_item_xfn', ''),
(605, 58, '_menu_item_url', '#'),
(616, 60, '_menu_item_type', 'custom'),
(617, 60, '_menu_item_menu_item_parent', '0'),
(618, 60, '_menu_item_object_id', '60'),
(619, 60, '_menu_item_object', 'custom'),
(620, 60, '_menu_item_target', ''),
(621, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 60, '_menu_item_xfn', ''),
(623, 60, '_menu_item_url', '#'),
(632, 65, '_edit_last', '1'),
(633, 65, '_wp_page_template', 'default'),
(634, 65, '_edit_lock', '1505935583:1'),
(635, 67, '_menu_item_type', 'post_type'),
(636, 67, '_menu_item_menu_item_parent', '0'),
(637, 67, '_menu_item_object_id', '65'),
(638, 67, '_menu_item_object', 'page'),
(639, 67, '_menu_item_target', ''),
(640, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(641, 67, '_menu_item_xfn', ''),
(642, 67, '_menu_item_url', ''),
(646, 75, '_order_key', 'wc_order_59c2c14819d74'),
(647, 75, '_customer_user', '2'),
(648, 75, '_payment_method', 'cod'),
(649, 75, '_payment_method_title', 'Cash on delivery'),
(650, 75, '_transaction_id', ''),
(651, 75, '_customer_ip_address', '::1'),
(652, 75, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/60.0.3112.113 safari/537.36'),
(653, 75, '_created_via', 'checkout'),
(654, 75, '_date_completed', ''),
(655, 75, '_completed_date', ''),
(656, 75, '_date_paid', ''),
(657, 75, '_paid_date', ''),
(658, 75, '_cart_hash', 'ebc0eba0c20b8561fd4f587f8d7cf94d'),
(659, 75, '_billing_first_name', 'Jayesh'),
(660, 75, '_billing_last_name', 'Renapara'),
(661, 75, '_billing_company', 'Company'),
(662, 75, '_billing_address_1', 'Adrress Line 1'),
(663, 75, '_billing_address_2', 'Address line 1'),
(664, 75, '_billing_city', 'Ahmedabad'),
(665, 75, '_billing_state', 'GJ'),
(666, 75, '_billing_postcode', '360002'),
(667, 75, '_billing_country', 'IN'),
(668, 75, '_billing_email', 'jayrenapara1997@gmial.com'),
(669, 75, '_billing_phone', '787878787878'),
(670, 75, '_shipping_first_name', ''),
(671, 75, '_shipping_last_name', ''),
(672, 75, '_shipping_company', ''),
(673, 75, '_shipping_address_1', ''),
(674, 75, '_shipping_address_2', ''),
(675, 75, '_shipping_city', ''),
(676, 75, '_shipping_state', ''),
(677, 75, '_shipping_postcode', ''),
(678, 75, '_shipping_country', ''),
(679, 75, '_order_currency', 'INR'),
(680, 75, '_cart_discount', '0'),
(681, 75, '_cart_discount_tax', '0'),
(682, 75, '_order_shipping', '0'),
(683, 75, '_order_shipping_tax', '0'),
(684, 75, '_order_tax', '0'),
(685, 75, '_order_total', '800.00'),
(686, 75, '_order_version', '3.1.1'),
(687, 75, '_prices_include_tax', 'no'),
(688, 75, '_billing_address_index', 'Jayesh Renapara Company Adrress Line 1 Address line 1 Ahmedabad GJ 360002 IN jayrenapara1997@gmial.com 787878787878'),
(689, 75, '_shipping_address_index', '        '),
(690, 75, '_shipping_method', ''),
(691, 75, '_download_permissions_granted', 'yes'),
(692, 75, '_recorded_sales', 'yes'),
(693, 75, '_recorded_coupon_usage_counts', 'yes'),
(694, 75, '_order_stock_reduced', 'yes'),
(695, 76, '_edit_last', '1'),
(696, 76, '_wp_page_template', 'default'),
(697, 76, '_edit_lock', '1506020159:1'),
(707, 83, '_menu_item_type', 'post_type'),
(708, 83, '_menu_item_menu_item_parent', '0'),
(709, 83, '_menu_item_object_id', '6'),
(710, 83, '_menu_item_object', 'page'),
(711, 83, '_menu_item_target', ''),
(712, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(713, 83, '_menu_item_xfn', ''),
(714, 83, '_menu_item_url', ''),
(715, 83, '_menu_item_orphaned', '1506360925'),
(716, 85, '_menu_item_type', 'post_type'),
(717, 85, '_menu_item_menu_item_parent', '0'),
(718, 85, '_menu_item_object_id', '29'),
(719, 85, '_menu_item_object', 'page'),
(720, 85, '_menu_item_target', ''),
(721, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(722, 85, '_menu_item_xfn', ''),
(723, 85, '_menu_item_url', ''),
(725, 86, '_menu_item_type', 'post_type'),
(726, 86, '_menu_item_menu_item_parent', '0'),
(727, 86, '_menu_item_object_id', '7'),
(728, 86, '_menu_item_object', 'page'),
(729, 86, '_menu_item_target', ''),
(730, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(731, 86, '_menu_item_xfn', ''),
(732, 86, '_menu_item_url', ''),
(734, 87, '_menu_item_type', 'post_type'),
(735, 87, '_menu_item_menu_item_parent', '0'),
(736, 87, '_menu_item_object_id', '6'),
(737, 87, '_menu_item_object', 'page'),
(738, 87, '_menu_item_target', ''),
(739, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(740, 87, '_menu_item_xfn', ''),
(741, 87, '_menu_item_url', ''),
(743, 88, '_menu_item_type', 'post_type'),
(744, 88, '_menu_item_menu_item_parent', '0'),
(745, 88, '_menu_item_object_id', '5'),
(746, 88, '_menu_item_object', 'page'),
(747, 88, '_menu_item_target', ''),
(748, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(749, 88, '_menu_item_xfn', ''),
(750, 88, '_menu_item_url', ''),
(755, 91, '_wp_attached_file', '2017/09/01.jpg'),
(756, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2017/09/01.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"01-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"01-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"01-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"01-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"01-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"01-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"01-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"01-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(757, 92, '_wp_attached_file', '2017/09/02.jpg'),
(758, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2042;s:6:\"height\";i:1380;s:4:\"file\";s:14:\"2017/09/02.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"02-768x519.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"02-1024x692.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:692;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"02-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"02-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"02-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"02-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"02-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"02-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"02-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(759, 93, '_wp_attached_file', '2017/09/03.jpg'),
(760, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:14:\"2017/09/03.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"03-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"03-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"03-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"03-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"03-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"03-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"03-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"03-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 94, '_wp_attached_file', '2017/09/04.jpg'),
(762, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:682;s:4:\"file\";s:14:\"2017/09/04.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"04-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"04-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"04-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"04-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"04-555x682.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"04-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"04-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"04-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"04-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 95, '_wp_attached_file', '2017/09/05.jpg'),
(764, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:930;s:6:\"height\";i:817;s:4:\"file\";s:14:\"2017/09/05.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"05-300x264.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"05-768x675.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"05-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"05-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"05-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"05-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"05-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"05-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"05-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 96, '_wp_attached_file', '2017/09/06.jpeg'),
(766, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:2000;s:4:\"file\";s:15:\"2017/09/06.jpeg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"06-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"06-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"06-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"06-1024x1024.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"06-83x103.jpeg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"06-262x325.jpeg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"06-555x688.jpeg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:15:\"06-750x500.jpeg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:15:\"06-360x235.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:15:\"06-500x500.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:13:\"06-58x72.jpeg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(767, 97, '_wp_attached_file', '2017/09/07.jpeg'),
(768, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2017/09/07.jpeg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"07-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"07-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"07-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"07-83x103.jpeg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"07-262x325.jpeg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"07-555x688.jpeg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:15:\"07-750x500.jpeg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:15:\"07-360x235.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:15:\"07-500x500.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:13:\"07-58x72.jpeg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(769, 98, '_wp_attached_file', '2017/09/08.jpg'),
(770, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1024;s:4:\"file\";s:14:\"2017/09/08.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"08-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"08-768x524.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:524;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"08-1024x699.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"08-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"08-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"08-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"08-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"08-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"08-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"08-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(771, 99, '_wp_attached_file', '2017/09/09.jpg'),
(772, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:14:\"2017/09/09.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"09-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"09-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"09-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"09-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"09-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(773, 100, '_wp_attached_file', '2017/09/10.jpg'),
(774, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:14:\"2017/09/10.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"10-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"10-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"10-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"10-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"10-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"10-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"10-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"10-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:19:\"© 2015 Mattel Inc.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(775, 101, '_wp_attached_file', '2017/09/11.jpg'),
(776, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:14:\"2017/09/11.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"11-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"11-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"11-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"11-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"11-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"11-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"11-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(777, 102, '_wp_attached_file', '2017/09/12.jpg'),
(778, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:768;s:4:\"file\";s:14:\"2017/09/12.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"12-768x590.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:590;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"12-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"12-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"12-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:14:\"12-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:14:\"12-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:14:\"12-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:12:\"12-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(779, 56, '_thumbnail_id', '91'),
(780, 54, '_thumbnail_id', '102'),
(781, 27, '_thumbnail_id', '101'),
(782, 25, '_thumbnail_id', '100'),
(783, 23, '_thumbnail_id', '98'),
(784, 21, '_thumbnail_id', '97'),
(785, 19, '_thumbnail_id', '96'),
(786, 17, '_thumbnail_id', '94'),
(787, 16, '_thumbnail_id', '93'),
(788, 14, '_thumbnail_id', '92'),
(789, 9, '_thumbnail_id', '101'),
(790, 104, '_wp_attached_file', '2017/09/banner1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(791, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:395;s:4:\"file\";s:19:\"2017/09/banner1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner1-300x85.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner1-768x217.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner1-1024x289.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"banner1-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"banner1-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"banner1-555x395.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:19:\"banner1-750x395.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:19:\"banner1-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-500x395.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:17:\"banner1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(792, 105, '_wp_attached_file', '2017/09/cropped-banner1.jpg'),
(793, 105, '_wp_attachment_context', 'custom-header'),
(794, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:338;s:4:\"file\";s:27:\"2017/09/cropped-banner1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-banner1-300x85.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-768x216.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-banner1-1024x288.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-banner1-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-555x338.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-750x338.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-500x338.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:25:\"cropped-banner1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(797, 106, '_wp_attached_file', '2017/09/cropped-banner1-1.jpg'),
(798, 106, '_wp_attachment_context', 'custom-header'),
(799, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:280;s:4:\"file\";s:29:\"2017/09/cropped-banner1-1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-banner1-1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-768x179.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-banner1-1-1024x239.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-banner1-1-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-262x280.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-555x280.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-750x280.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-banner1-1-500x280.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:27:\"cropped-banner1-1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(800, 106, '_wp_attachment_custom_header_last_used_toystole', '1506789291'),
(801, 106, '_wp_attachment_is_custom_header', 'toystole'),
(804, 107, '_wp_attached_file', '2017/09/banner1-1.jpg'),
(805, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:395;s:4:\"file\";s:21:\"2017/09/banner1-1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner1-1-300x85.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banner1-1-768x217.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"banner1-1-1024x289.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner1-1-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner1-1-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banner1-1-555x395.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"banner1-1-750x395.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"banner1-1-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner1-1-500x395.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"banner1-1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(814, 112, '_wp_attached_file', '2017/09/offer1.jpg'),
(815, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:325;s:6:\"height\";i:155;s:4:\"file\";s:18:\"2017/09/offer1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"offer1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"offer1-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"offer1-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"offer1-262x155.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:16:\"offer1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(826, 119, '_wp_attached_file', '2017/09/offer2.jpg'),
(827, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2017/09/offer2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"offer2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"offer2-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"offer2-262x160.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:16:\"offer2-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(828, 120, '_wp_attached_file', '2017/09/offer3.jpg'),
(829, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:725;s:6:\"height\";i:350;s:4:\"file\";s:18:\"2017/09/offer3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"offer3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"offer3-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"offer3-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"offer3-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"offer3-555x350.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:18:\"offer3-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:18:\"offer3-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:16:\"offer3-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(834, 123, '_order_key', 'wc_order_59cfd2d35d8fc'),
(835, 123, '_customer_user', '1'),
(836, 123, '_payment_method', 'bacs'),
(837, 123, '_payment_method_title', 'Direct bank transfer'),
(838, 123, '_transaction_id', ''),
(839, 123, '_customer_ip_address', '::1'),
(840, 123, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.3; wow64; rv:53.0) gecko/20100101 firefox/53.0'),
(841, 123, '_created_via', 'checkout'),
(842, 123, '_date_completed', ''),
(843, 123, '_completed_date', ''),
(844, 123, '_date_paid', ''),
(845, 123, '_paid_date', ''),
(846, 123, '_cart_hash', '34d815995234dd4a5174a85b8d01e121'),
(847, 123, '_billing_first_name', 'jayesh'),
(848, 123, '_billing_last_name', 'patel'),
(849, 123, '_billing_company', 'toystole'),
(850, 123, '_billing_address_1', 'test'),
(851, 123, '_billing_address_2', 'testt'),
(852, 123, '_billing_city', 'ahme'),
(853, 123, '_billing_state', 'GJ'),
(854, 123, '_billing_postcode', '300600'),
(855, 123, '_billing_country', 'IN'),
(856, 123, '_billing_email', 'jayrenapara1997@gmail.com'),
(857, 123, '_billing_phone', '9978460382'),
(858, 123, '_shipping_first_name', ''),
(859, 123, '_shipping_last_name', ''),
(860, 123, '_shipping_company', ''),
(861, 123, '_shipping_address_1', ''),
(862, 123, '_shipping_address_2', ''),
(863, 123, '_shipping_city', ''),
(864, 123, '_shipping_state', ''),
(865, 123, '_shipping_postcode', ''),
(866, 123, '_shipping_country', ''),
(867, 123, '_order_currency', 'INR'),
(868, 123, '_cart_discount', '0'),
(869, 123, '_cart_discount_tax', '0'),
(870, 123, '_order_shipping', '0'),
(871, 123, '_order_shipping_tax', '0'),
(872, 123, '_order_tax', '0'),
(873, 123, '_order_total', '3400.00'),
(874, 123, '_order_version', '3.1.1'),
(875, 123, '_prices_include_tax', 'no'),
(876, 123, '_billing_address_index', 'jayesh patel toystole test testt ahme GJ 300600 IN jayrenapara1997@gmail.com 9978460382'),
(877, 123, '_shipping_address_index', '        '),
(878, 123, '_shipping_method', ''),
(879, 123, '_recorded_sales', 'yes'),
(880, 123, '_recorded_coupon_usage_counts', 'yes'),
(881, 123, '_order_stock_reduced', 'yes'),
(882, 124, '_order_key', 'wc_order_59d0758c54adf'),
(883, 124, '_customer_user', '0'),
(884, 124, '_payment_method', 'cod'),
(885, 124, '_payment_method_title', 'Cash on delivery'),
(886, 124, '_transaction_id', ''),
(887, 124, '_customer_ip_address', '::1'),
(888, 124, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.3; wow64; rv:53.0) gecko/20100101 firefox/53.0'),
(889, 124, '_created_via', 'checkout'),
(890, 124, '_date_completed', ''),
(891, 124, '_completed_date', ''),
(892, 124, '_date_paid', ''),
(893, 124, '_paid_date', ''),
(894, 124, '_cart_hash', '7963c42deef21100956d82043a8e6516'),
(895, 124, '_billing_first_name', 'jayesh'),
(896, 124, '_billing_last_name', 'patel'),
(897, 124, '_billing_company', 'toystole'),
(898, 124, '_billing_address_1', 'test'),
(899, 124, '_billing_address_2', 'testt'),
(900, 124, '_billing_city', 'ahme'),
(901, 124, '_billing_state', 'SB'),
(902, 124, '_billing_postcode', '300600'),
(903, 124, '_billing_country', 'ID'),
(904, 124, '_billing_email', 'toyshop.admin@gmail.com'),
(905, 124, '_billing_phone', '9978460382'),
(906, 124, '_shipping_first_name', ''),
(907, 124, '_shipping_last_name', ''),
(908, 124, '_shipping_company', ''),
(909, 124, '_shipping_address_1', ''),
(910, 124, '_shipping_address_2', ''),
(911, 124, '_shipping_city', ''),
(912, 124, '_shipping_state', ''),
(913, 124, '_shipping_postcode', ''),
(914, 124, '_shipping_country', ''),
(915, 124, '_order_currency', 'INR'),
(916, 124, '_cart_discount', '0'),
(917, 124, '_cart_discount_tax', '0'),
(918, 124, '_order_shipping', '0'),
(919, 124, '_order_shipping_tax', '0'),
(920, 124, '_order_tax', '0'),
(921, 124, '_order_total', '7800.00'),
(922, 124, '_order_version', '3.1.1'),
(923, 124, '_prices_include_tax', 'no'),
(924, 124, '_billing_address_index', 'jayesh patel toystole test testt ahme SB 300600 ID toyshop.admin@gmail.com 9978460382'),
(925, 124, '_shipping_address_index', '        '),
(926, 124, '_shipping_method', ''),
(927, 124, '_download_permissions_granted', 'yes'),
(928, 124, '_recorded_sales', 'yes'),
(929, 124, '_recorded_coupon_usage_counts', 'yes'),
(930, 124, '_order_stock_reduced', 'yes'),
(931, 127, '_order_key', 'wc_order_59d9124e8c9bf'),
(932, 127, '_customer_user', '1'),
(933, 127, '_payment_method', 'bacs'),
(934, 127, '_payment_method_title', 'Direct bank transfer'),
(935, 127, '_transaction_id', ''),
(936, 127, '_customer_ip_address', '::1'),
(937, 127, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.3; wow64; rv:53.0) gecko/20100101 firefox/53.0'),
(938, 127, '_created_via', 'checkout'),
(939, 127, '_date_completed', ''),
(940, 127, '_completed_date', ''),
(941, 127, '_date_paid', ''),
(942, 127, '_paid_date', ''),
(943, 127, '_cart_hash', 'b1fbc645d3de679b0f74045e540e685e'),
(944, 127, '_billing_first_name', 'jayesh'),
(945, 127, '_billing_last_name', 'patel'),
(946, 127, '_billing_company', 'toystole'),
(947, 127, '_billing_address_1', 'test'),
(948, 127, '_billing_address_2', 'testt'),
(949, 127, '_billing_city', 'ahme'),
(950, 127, '_billing_state', 'GJ'),
(951, 127, '_billing_postcode', '300600'),
(952, 127, '_billing_country', 'IN'),
(953, 127, '_billing_email', 'jayrenapara1997@gmail.com'),
(954, 127, '_billing_phone', '9978460382'),
(955, 127, '_shipping_first_name', 'jayesh'),
(956, 127, '_shipping_last_name', 'patel'),
(957, 127, '_shipping_company', 'toystole'),
(958, 127, '_shipping_address_1', 'test'),
(959, 127, '_shipping_address_2', 'testt'),
(960, 127, '_shipping_city', 'ahme'),
(961, 127, '_shipping_state', 'GJ'),
(962, 127, '_shipping_postcode', '300600'),
(963, 127, '_shipping_country', 'IN'),
(964, 127, '_order_currency', 'INR'),
(965, 127, '_cart_discount', '0'),
(966, 127, '_cart_discount_tax', '0'),
(967, 127, '_order_shipping', '0'),
(968, 127, '_order_shipping_tax', '0'),
(969, 127, '_order_tax', '0'),
(970, 127, '_order_total', '1300.00'),
(971, 127, '_order_version', '3.1.1'),
(972, 127, '_prices_include_tax', 'no'),
(973, 127, '_billing_address_index', 'jayesh patel toystole test testt ahme GJ 300600 IN jayrenapara1997@gmail.com 9978460382'),
(974, 127, '_shipping_address_index', 'jayesh patel toystole test testt ahme GJ 300600 IN'),
(975, 127, '_shipping_method', ''),
(976, 127, '_recorded_sales', 'yes'),
(977, 127, '_recorded_coupon_usage_counts', 'yes'),
(978, 127, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-09-20 18:07:59', '2017-09-20 18:07:59', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-09-20 18:07:59', '2017-09-20 18:07:59', '', 0, 'http://localhost/toystole/?p=1', 0, 'post', '', 1),
(2, 1, '2017-09-20 18:07:59', '2017-09-20 18:07:59', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/toystole/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-09-20 18:07:59', '2017-09-20 18:07:59', '', 0, 'http://localhost/toystole/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-09-20 18:18:15', '2017-09-20 18:18:15', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-09-20 18:18:15', '2017-09-20 18:18:15', '', 0, 'http://localhost/toystole/shop/', 0, 'page', '', 0),
(6, 1, '2017-09-20 18:18:15', '2017-09-20 18:18:15', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-09-20 18:18:15', '2017-09-20 18:18:15', '', 0, 'http://localhost/toystole/cart/', 0, 'page', '', 0),
(7, 1, '2017-09-20 18:18:16', '2017-09-20 18:18:16', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-09-20 18:18:16', '2017-09-20 18:18:16', '', 0, 'http://localhost/toystole/checkout/', 0, 'page', '', 0),
(8, 1, '2017-09-20 18:18:16', '2017-09-20 18:18:16', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-09-20 18:18:16', '2017-09-20 18:18:16', '', 0, 'http://localhost/toystole/my-account/', 0, 'page', '', 0),
(9, 1, '2017-09-20 18:23:23', '2017-09-20 18:23:23', 'Mauris placerat vitae lorem gravida viverra. Mauris in fringilla ex. Nulla facilisi. Etiam scelerisque tincidunt quam facilisis lobortis. In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero', 'educational toys & learning toys', 'Mauris placerat vitae lorem gravida viverra. Mauris in fringilla ex. Nulla facilisi. Etiam scelerisque tincidunt quam facilisis lobortis. In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero', 'publish', 'open', 'closed', '', 'educational-toys-learning-toys', '', '', '2017-09-30 16:06:16', '2017-09-30 16:06:16', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=9', 0, 'product', '', 0),
(14, 1, '2017-09-20 18:24:47', '2017-09-20 18:24:47', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'FurReal Friends Plays With Me Kitty Toy', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'furreal-friends-plays-with-me-kitty-toy', '', '', '2017-09-30 16:05:49', '2017-09-30 16:05:49', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=14', 0, 'product', '', 0),
(16, 1, '2017-09-20 18:25:59', '2017-09-20 18:25:59', '<div class=\"woocommerce-product-details__short-description\">\r\n<ul>\r\n 	<li>In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.</li>\r\n 	<li>\r\n<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero\r\n\r\n<strong>on malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.</strong>\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div></div>\r\n</form></li>\r\n</ul>\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'Best Kids & Toddler Toys & Games', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'best-kids-toddler-toys-games', '', '', '2017-09-30 16:05:26', '2017-09-30 16:05:26', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=16', 0, 'product', '', 1),
(17, 1, '2017-09-20 18:27:48', '2017-09-20 18:27:48', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\">\r\n<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</div>\r\n</form>', 'Preschool Toys', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'preschool-toys', '', '', '2017-09-30 16:05:06', '2017-09-30 16:05:06', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=17', 0, 'product', '', 0),
(19, 1, '2017-09-20 18:30:33', '2017-09-20 18:30:33', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'Educational Toys & Learning Toys', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'educational-toys-learning-toys-2', '', '', '2017-09-30 16:04:42', '2017-09-30 16:04:42', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=19', 0, 'product', '', 0),
(21, 1, '2017-09-20 18:31:43', '2017-09-20 18:31:43', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\">\r\n<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</div>\r\n</form>', 'Buy Baby Toys & Toddler Toys at Low', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'buy-baby-toys-toddler-toys-at-low', '', '', '2017-09-30 16:04:18', '2017-09-30 16:04:18', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=21', 0, 'product', '', 1),
(23, 1, '2017-09-20 18:32:24', '2017-09-20 18:32:24', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'Buy Baby Toys & Toddler Toys at Low', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'buy-baby-toys-toddler-toys-at-low-2', '', '', '2017-09-30 16:03:53', '2017-09-30 16:03:53', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=23', 0, 'product', '', 0),
(25, 1, '2017-09-20 18:33:04', '2017-09-20 18:33:04', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'Toy Story Collection', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'toy-story-collection', '', '', '2017-09-30 16:03:18', '2017-09-30 16:03:18', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=25', 0, 'product', '', 0),
(27, 1, '2017-09-20 18:33:53', '2017-09-20 18:33:53', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'Toy Story', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nIn malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.\r\n\r\n</div>\r\n<form class=\"cart\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div id=\"my_custom_checkout_field\" class=\"pin_div\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'toy-story', '', '', '2017-09-30 16:02:52', '2017-09-30 16:02:52', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=27', 0, 'product', '', 2),
(29, 1, '2017-09-20 18:35:22', '2017-09-20 18:35:22', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-09-20 18:35:22', '2017-09-20 18:35:22', '', 0, 'http://localhost/toystole/?page_id=29', 0, 'page', '', 0),
(30, 1, '2017-09-20 18:35:22', '2017-09-20 18:35:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-09-20 18:35:22', '2017-09-20 18:35:22', '', 29, 'http://localhost/toystole/2017/09/20/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-09-20 18:35:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2017-09-20 18:35:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2017-09-20 18:35:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-09-20 18:35:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2017-09-20 18:35:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2017-09-20 18:35:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2017-09-20 18:35:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=37', 1, 'nav_menu_item', '', 0),
(39, 1, '2017-09-20 18:35:54', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2017-09-20 18:35:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2017-09-20 18:35:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2017-09-20 18:35:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2017-09-20 18:35:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2017-09-20 18:35:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2017-09-20 18:35:57', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2017-09-20 18:35:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2017-09-20 18:35:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2017-09-20 18:35:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:35:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2017-09-20 18:36:27', '2017-09-20 18:36:27', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2017-09-25 17:34:23', '2017-09-25 17:34:23', '', 0, 'http://localhost/toystole/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2017-09-20 18:36:27', '2017-09-20 18:36:27', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2017-09-25 17:34:23', '2017-09-25 17:34:23', '', 0, 'http://localhost/toystole/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2017-09-20 18:36:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-20 18:36:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2017-09-20 18:36:27', '2017-09-20 18:36:27', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2017-09-25 17:34:23', '2017-09-25 17:34:23', '', 0, 'http://localhost/toystole/?p=52', 2, 'nav_menu_item', '', 0),
(54, 1, '2017-09-20 18:43:45', '2017-09-20 18:43:45', '<div class=\"container product-main-content\">\r\n<div id=\"product-53\" class=\"post-53 product type-product status-publish has-post-thumbnail product_cat-clothing product_cat-dresses first instock shipping-taxable purchasable product-type-simple\">\r\n<div class=\"woocommerce-tabs wc-tabs-wrapper\">\r\n<div id=\"tab-description\" class=\"woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab\" role=\"tabpanel\" aria-labelledby=\"tab-title-description\">\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'SURPLUS OVERALLS', '<div class=\"container product-main-content\">\r\n<div id=\"product-53\" class=\"post-53 product type-product status-publish has-post-thumbnail product_cat-clothing product_cat-dresses first instock shipping-taxable purchasable product-type-simple\">\r\n<div class=\"woocommerce-tabs wc-tabs-wrapper\">\r\n<div id=\"tab-description\" class=\"woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab\" role=\"tabpanel\" aria-labelledby=\"tab-title-description\">\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'publish', 'open', 'closed', '', 'surplus-overalls', '', '', '2017-09-30 16:02:19', '2017-09-30 16:02:19', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=54', 0, 'product', '', 0),
(56, 1, '2017-09-20 18:44:56', '2017-09-20 18:44:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'MAUVE DRESS', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'mauve-dress', '', '', '2017-09-30 16:10:56', '2017-09-30 16:10:56', '', 0, 'http://localhost/toystole/?post_type=product&#038;p=56', 0, 'product', '', 0),
(58, 1, '2017-09-20 19:03:18', '2017-09-20 19:03:18', '', 'privacy policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2017-09-25 19:07:13', '2017-09-25 19:07:13', '', 0, 'http://localhost/toystole/?p=58', 5, 'nav_menu_item', '', 0),
(60, 1, '2017-09-20 19:03:19', '2017-09-20 19:03:19', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-09-25 19:07:13', '2017-09-25 19:07:13', '', 0, 'http://localhost/toystole/?p=60', 6, 'nav_menu_item', '', 0),
(65, 1, '2017-09-20 19:14:28', '2017-09-20 19:14:28', '[cflrf_registration_form]', 'Sign-up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2017-09-20 19:26:23', '2017-09-20 19:26:23', '', 0, 'http://localhost/toystole/?page_id=65', 0, 'page', '', 0),
(66, 1, '2017-09-20 19:14:28', '2017-09-20 19:14:28', '', 'Sign-up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-09-20 19:14:28', '2017-09-20 19:14:28', '', 65, 'http://localhost/toystole/2017/09/20/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-09-20 19:14:48', '2017-09-20 19:14:48', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2017-09-25 17:34:23', '2017-09-25 17:34:23', '', 0, 'http://localhost/toystole/?p=67', 4, 'nav_menu_item', '', 0),
(69, 1, '2017-09-20 19:18:18', '2017-09-20 19:18:18', '[cflrf_registration_form]', 'Sign-up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-09-20 19:18:18', '2017-09-20 19:18:18', '', 65, 'http://localhost/toystole/2017/09/20/65-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-09-20 19:19:16', '2017-09-20 19:19:16', '<h3>Sign Up\r\n[cflrf_registration_form]</h3>', 'Sign-up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-09-20 19:19:16', '2017-09-20 19:19:16', '', 65, 'http://localhost/toystole/2017/09/20/65-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-09-20 19:19:49', '2017-09-20 19:19:49', '[cflrf_registration_form]', 'Sign-up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-09-20 19:19:49', '2017-09-20 19:19:49', '', 65, 'http://localhost/toystole/2017/09/20/65-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-09-20 19:26:10', '2017-09-20 19:26:10', '[cflrf_custom_login_form]\r\n\r\n[cflrf_registration_form]', 'Sign-up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-09-20 19:26:10', '2017-09-20 19:26:10', '', 65, 'http://localhost/toystole/2017/09/20/65-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-09-20 19:26:23', '2017-09-20 19:26:23', '[cflrf_registration_form]', 'Sign-up', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-09-20 19:26:23', '2017-09-20 19:26:23', '', 65, 'http://localhost/toystole/2017/09/20/65-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-09-20 19:28:08', '2017-09-20 19:28:08', '', 'Order &ndash; September 20, 2017 @ 07:28 PM', '', 'wc-processing', 'open', 'closed', 'order_59c2c1481c485', 'order-sep-20-2017-0728-pm', '', '', '2017-09-20 19:28:11', '2017-09-20 19:28:11', '', 0, 'http://localhost/toystole/?post_type=shop_order&#038;p=75', 0, 'shop_order', '', 1),
(76, 1, '2017-09-21 18:56:07', '2017-09-21 18:56:07', '<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<ul>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n</ul>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-09-21 18:57:37', '2017-09-21 18:57:37', '', 0, 'http://localhost/toystole/?page_id=76', 0, 'page', '', 0),
(77, 1, '2017-09-21 18:56:04', '2017-09-21 18:56:04', '', 'About', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-09-21 18:56:04', '2017-09-21 18:56:04', '', 76, 'http://localhost/toystole/2017/09/21/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-09-21 18:57:32', '2017-09-21 18:57:32', '<h2>What is Lorem Ipsum?</h2>\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n<ul>\n 	<li>standard dummy text ever since the 1500s,</li>\n 	<li>standard dummy text ever since the 1500s,</li>\n 	<li></li>\n</ul>', 'About', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2017-09-21 18:57:32', '2017-09-21 18:57:32', '', 76, 'http://localhost/toystole/2017/09/21/76-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2017-09-21 18:57:37', '2017-09-21 18:57:37', '<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<ul>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n 	<li>standard dummy text ever since the 1500s,</li>\r\n</ul>', 'About', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-09-21 18:57:37', '2017-09-21 18:57:37', '', 76, 'http://localhost/toystole/2017/09/21/76-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-09-25 17:35:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-25 17:35:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=83', 1, 'nav_menu_item', '', 0),
(85, 1, '2017-09-25 19:07:12', '2017-09-25 19:07:12', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2017-09-25 19:07:12', '2017-09-25 19:07:12', '', 0, 'http://localhost/toystole/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2017-09-25 19:07:13', '2017-09-25 19:07:13', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2017-09-25 19:07:13', '2017-09-25 19:07:13', '', 0, 'http://localhost/toystole/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2017-09-25 19:07:13', '2017-09-25 19:07:13', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2017-09-25 19:07:13', '2017-09-25 19:07:13', '', 0, 'http://localhost/toystole/?p=87', 4, 'nav_menu_item', '', 0),
(88, 1, '2017-09-25 19:07:12', '2017-09-25 19:07:12', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2017-09-25 19:07:12', '2017-09-25 19:07:12', '', 0, 'http://localhost/toystole/?p=88', 2, 'nav_menu_item', '', 0),
(91, 1, '2017-09-30 15:59:19', '2017-09-30 15:59:19', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2017-09-30 15:59:19', '2017-09-30 15:59:19', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/01.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2017-09-30 15:59:51', '2017-09-30 15:59:51', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2017-09-30 15:59:51', '2017-09-30 15:59:51', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/02.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-09-30 15:59:53', '2017-09-30 15:59:53', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2017-09-30 15:59:53', '2017-09-30 15:59:53', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2017-09-30 15:59:55', '2017-09-30 15:59:55', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2017-09-30 15:59:55', '2017-09-30 15:59:55', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/04.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-09-30 15:59:56', '2017-09-30 15:59:56', '', '05', '', 'inherit', 'open', 'closed', '', '05', '', '', '2017-09-30 15:59:56', '2017-09-30 15:59:56', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/05.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2017-09-30 15:59:58', '2017-09-30 15:59:58', '', '06', '', 'inherit', 'open', 'closed', '', '06', '', '', '2017-09-30 15:59:58', '2017-09-30 15:59:58', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/06.jpeg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-09-30 16:00:01', '2017-09-30 16:00:01', '', '07', '', 'inherit', 'open', 'closed', '', '07', '', '', '2017-09-30 16:00:01', '2017-09-30 16:00:01', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/07.jpeg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-09-30 16:00:03', '2017-09-30 16:00:03', '', '08', '', 'inherit', 'open', 'closed', '', '08', '', '', '2017-09-30 16:00:03', '2017-09-30 16:00:03', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/08.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-09-30 16:00:04', '2017-09-30 16:00:04', '', '09', '', 'inherit', 'open', 'closed', '', '09', '', '', '2017-09-30 16:00:04', '2017-09-30 16:00:04', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/09.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2017-09-30 16:00:05', '2017-09-30 16:00:05', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2017-09-30 16:00:05', '2017-09-30 16:00:05', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2017-09-30 16:00:07', '2017-09-30 16:00:07', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2017-09-30 16:00:07', '2017-09-30 16:00:07', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2017-09-30 16:00:08', '2017-09-30 16:00:08', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2017-09-30 16:00:08', '2017-09-30 16:00:08', '', 56, 'http://localhost/toystole/wp-content/uploads/2017/09/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-09-30 16:33:41', '2017-09-30 16:33:41', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2017-09-30 16:33:41', '2017-09-30 16:33:41', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2017-09-30 16:33:53', '2017-09-30 16:33:53', '', 'cropped-banner1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner1-jpg', '', '', '2017-09-30 16:33:53', '2017-09-30 16:33:53', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/cropped-banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2017-09-30 16:34:10', '2017-09-30 16:34:10', '', 'cropped-banner1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-banner1-1-jpg', '', '', '2017-09-30 16:34:10', '2017-09-30 16:34:10', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/cropped-banner1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-09-30 16:41:31', '2017-09-30 16:41:31', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1-2', '', '', '2017-09-30 16:41:31', '2017-09-30 16:41:31', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/banner1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-09-30 16:47:35', '2017-09-30 16:47:35', '', 'offer1', '', 'inherit', 'open', 'closed', '', 'offer1', '', '', '2017-09-30 16:47:35', '2017-09-30 16:47:35', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/offer1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2017-09-30 17:01:13', '2017-09-30 17:01:13', '', 'offer2', '', 'inherit', 'open', 'closed', '', 'offer2', '', '', '2017-09-30 17:01:13', '2017-09-30 17:01:13', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/offer2.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2017-09-30 17:02:50', '2017-09-30 17:02:50', '', 'offer3', '', 'inherit', 'open', 'closed', '', 'offer3', '', '', '2017-09-30 17:02:50', '2017-09-30 17:02:50', '', 0, 'http://localhost/toystole/wp-content/uploads/2017/09/offer3.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-09-30 17:22:27', '2017-09-30 17:22:27', '', 'Order &ndash; September 30, 2017 @ 05:22 PM', 'test', 'wc-on-hold', 'open', 'closed', 'order_59cfd2d35fe3c', 'order-sep-30-2017-0522-pm', '', '', '2017-09-30 17:22:31', '2017-09-30 17:22:31', '', 0, 'http://localhost/toystole/?post_type=shop_order&#038;p=123', 0, 'shop_order', '', 1),
(124, 1, '2017-10-01 04:56:44', '2017-10-01 04:56:44', '', 'Order &ndash; October 1, 2017 @ 04:56 AM', '', 'wc-processing', 'open', 'closed', 'order_59d0758c54d99', 'order-oct-01-2017-0456-am', '', '', '2017-10-01 04:56:46', '2017-10-01 04:56:46', '', 0, 'http://localhost/toystole/?post_type=shop_order&#038;p=124', 0, 'shop_order', '', 1),
(127, 1, '2017-10-07 17:43:42', '2017-10-07 17:43:42', '', 'Order &ndash; October 7, 2017 @ 05:43 PM', '', 'wc-on-hold', 'open', 'closed', 'order_59d9124e91a4c', 'order-oct-07-2017-0543-pm', '', '', '2017-10-07 17:43:46', '2017-10-07 17:43:46', '', 0, 'http://localhost/toystole/?post_type=shop_order&#038;p=127', 0, 'shop_order', '', 1),
(131, 1, '2017-12-13 16:29:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-13 16:29:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/toystole/?p=131', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '0'),
(4, 17, 'order', '0'),
(5, 17, 'display_type', ''),
(6, 17, 'thumbnail_id', '0'),
(7, 16, 'product_count_product_cat', '4'),
(8, 17, 'product_count_product_cat', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Top Menu', 'top-menu', 0),
(16, 'New Collection', 'new-collection', 0),
(17, 'Toy Story', 'toy-story', 0),
(18, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(14, 2, 0),
(16, 2, 0),
(16, 12, 0),
(17, 2, 0),
(17, 16, 0),
(19, 2, 0),
(19, 16, 0),
(21, 2, 0),
(21, 13, 0),
(21, 17, 0),
(23, 2, 0),
(23, 17, 0),
(25, 2, 0),
(25, 17, 0),
(27, 2, 0),
(27, 14, 0),
(27, 17, 0),
(49, 15, 0),
(50, 15, 0),
(52, 15, 0),
(54, 2, 0),
(54, 16, 0),
(56, 2, 0),
(56, 16, 0),
(58, 18, 0),
(60, 18, 0),
(67, 15, 0),
(85, 18, 0),
(86, 18, 0),
(87, 18, 0),
(88, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 11),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 1),
(13, 13, 'product_visibility', '', 0, 1),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'nav_menu', '', 0, 4),
(16, 16, 'product_cat', '', 0, 4),
(17, 17, 'product_cat', '', 0, 4),
(18, 18, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'toystole.admin'),
(2, 1, 'first_name', 'jayesh'),
(3, 1, 'last_name', 'patel'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '131'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1505935152'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '18'),
(22, 2, 'nickname', 'Jay'),
(23, 2, 'first_name', 'Jayesh'),
(24, 2, 'last_name', 'Renapara'),
(25, 2, 'description', 'About'),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(33, 2, 'wp_user_level', '0'),
(34, 2, 'session_tokens', 'a:2:{s:64:\"97156a90eb4595f51e7eec72af5ed4dec84a28320d2aaf0403beb8c485993c83\";a:4:{s:10:\"expiration\";i:1506108122;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505935322;}s:64:\"76ca0345f41275ae147f2540a8c08c96cc39daa23458ddf8e2bc4fddb42244e7\";a:4:{s:10:\"expiration\";i:1506108422;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\";s:5:\"login\";i:1505935622;}}'),
(36, 2, 'last_update', '1505935687'),
(37, 2, 'billing_first_name', 'Jayesh'),
(38, 2, 'billing_last_name', 'Renapara'),
(39, 2, 'billing_company', 'Company'),
(40, 2, 'billing_address_1', 'Adrress Line 1'),
(41, 2, 'billing_address_2', 'Address line 1'),
(42, 2, 'billing_city', 'Ahmedabad'),
(43, 2, 'billing_state', 'GJ'),
(44, 2, 'billing_postcode', '360002'),
(45, 2, 'billing_country', 'IN'),
(46, 2, 'billing_email', 'jayrenapara1997@gmial.com'),
(47, 2, 'billing_phone', '787878787878'),
(48, 2, 'shipping_method', ''),
(49, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(50, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(52, 1, 'closedpostboxes_product', 'a:0:{}'),
(53, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(54, 1, 'last_update', '1507398221'),
(55, 1, 'billing_first_name', 'jayesh'),
(56, 1, 'billing_last_name', 'patel'),
(57, 1, 'billing_company', 'toystole'),
(58, 1, 'billing_address_1', 'test'),
(59, 1, 'billing_address_2', 'testt'),
(60, 1, 'billing_city', 'ahme'),
(61, 1, 'billing_state', 'GJ'),
(62, 1, 'billing_postcode', '300600'),
(63, 1, 'billing_country', 'IN'),
(64, 1, 'billing_email', 'jayrenapara1997@gmail.com'),
(65, 1, 'billing_phone', '9978460382'),
(67, 3, 'nickname', 'testt'),
(68, 3, 'first_name', 'teat1'),
(69, 3, 'last_name', 'test2'),
(70, 3, 'description', 'testing'),
(71, 3, 'rich_editing', 'true'),
(72, 3, 'comment_shortcuts', 'false'),
(73, 3, 'admin_color', 'fresh'),
(74, 3, 'use_ssl', '0'),
(75, 3, 'show_admin_bar_front', 'true'),
(76, 3, 'locale', ''),
(77, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(78, 3, 'wp_user_level', '0'),
(79, 4, 'nickname', 'testt12'),
(80, 4, 'first_name', 'teat12'),
(81, 4, 'last_name', 'test21'),
(82, 4, 'description', 'testing12'),
(83, 4, 'rich_editing', 'true'),
(84, 4, 'comment_shortcuts', 'false'),
(85, 4, 'admin_color', 'fresh'),
(86, 4, 'use_ssl', '0'),
(87, 4, 'show_admin_bar_front', 'true'),
(88, 4, 'locale', ''),
(89, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(90, 4, 'wp_user_level', '0'),
(96, 1, 'shipping_first_name', 'jayesh'),
(97, 1, 'shipping_last_name', 'patel'),
(98, 1, 'shipping_company', 'toystole'),
(99, 1, 'shipping_address_1', 'test'),
(100, 1, 'shipping_address_2', 'testt'),
(101, 1, 'shipping_city', 'ahme'),
(102, 1, 'shipping_state', 'GJ'),
(103, 1, 'shipping_postcode', '300600'),
(104, 1, 'shipping_country', 'IN'),
(105, 1, 'shipping_method', ''),
(106, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"c74d97b01eae257e44aa9d5bade97baf\";a:9:{s:10:\"product_id\";i:16;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:150;s:13:\"line_subtotal\";i:150;s:8:\"line_tax\";i:0;s:17:\"line_subtotal_tax\";i:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}}'),
(107, 1, 'session_tokens', 'a:1:{s:64:\"3011390871db3b17dcad8b64388a2f7faa22653150b01f783338dfe2a7b14197\";a:4:{s:10:\"expiration\";i:1513355351;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1513182551;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'toystole.admin', '$P$BWljWcVIhblkoOPwRtGLn3RTHMa89L1', 'toystole-admin', 'jayrenapara1997@gmail.com', '', '2017-09-20 18:07:57', '', 0, 'toystole.admin'),
(2, 'jayesh.renapara', '$P$BodgDdybb6.nZaaLiQXezRGEmki7bv0', 'jayesh-renapara', 'jayrenapara1997@gmial.com', '', '2017-09-20 19:20:50', '', 0, 'Jayesh Jayesh'),
(3, 'test', '$P$BbrmWPGPWc0THWhZaADuDvKz2SQz0W/', 'test', 'test@gmail.com', 'http://test', '2017-09-30 17:39:46', '', 0, 'teat1 test2'),
(4, 'test12', '$P$BJoLgazZ3bzMd39iTBOlny2HskAPjA/', 'test12', 'test1@gmail.com', 'http://test12', '2017-09-30 17:42:02', '', 0, 'teat12 test21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '21'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '800'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '800'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '54'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '1000'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '1000'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, '_product_id', '21'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '3'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '2400'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '2400'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(28, 4, '_product_id', '21'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '1'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '800'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '800'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(37, 5, '_product_id', '54'),
(38, 5, '_variation_id', '0'),
(39, 5, '_qty', '7'),
(40, 5, '_tax_class', ''),
(41, 5, '_line_subtotal', '7000'),
(42, 5, '_line_subtotal_tax', '0'),
(43, 5, '_line_total', '7000'),
(44, 5, '_line_tax', '0'),
(45, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(46, 6, '_product_id', '9'),
(47, 6, '_variation_id', '0'),
(48, 6, '_qty', '1'),
(49, 6, '_tax_class', ''),
(50, 6, '_line_subtotal', '500'),
(51, 6, '_line_subtotal_tax', '0'),
(52, 6, '_line_total', '500'),
(53, 6, '_line_tax', '0'),
(54, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(55, 7, '_product_id', '21'),
(56, 7, '_variation_id', '0'),
(57, 7, '_qty', '1'),
(58, 7, '_tax_class', ''),
(59, 7, '_line_subtotal', '800'),
(60, 7, '_line_subtotal_tax', '0'),
(61, 7, '_line_total', '800'),
(62, 7, '_line_tax', '0'),
(63, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Buy Baby Toys & Toddler Toys at Low', 'line_item', 75),
(2, 'SURPLUS OVERALLS', 'line_item', 123),
(3, 'Buy Baby Toys & Toddler Toys at Low', 'line_item', 123),
(4, 'Buy Baby Toys & Toddler Toys at Low', 'line_item', 124),
(5, 'SURPLUS OVERALLS', 'line_item', 124),
(6, 'educational toys & learning toys', 'line_item', 127),
(7, 'Buy Baby Toys & Toddler Toys at Low', 'line_item', 127);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(105, '1', 'a:19:{s:8:\"customer\";s:774:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:6:\"300600\";s:4:\"city\";s:4:\"ahme\";s:9:\"address_1\";s:4:\"test\";s:7:\"address\";s:4:\"test\";s:9:\"address_2\";s:5:\"testt\";s:5:\"state\";s:2:\"GJ\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"300600\";s:13:\"shipping_city\";s:4:\"ahme\";s:18:\"shipping_address_1\";s:4:\"test\";s:16:\"shipping_address\";s:4:\"test\";s:18:\"shipping_address_2\";s:5:\"testt\";s:14:\"shipping_state\";s:2:\"GJ\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:6:\"jayesh\";s:9:\"last_name\";s:5:\"patel\";s:7:\"company\";s:8:\"toystole\";s:5:\"phone\";s:10:\"9978460382\";s:5:\"email\";s:25:\"jayrenapara1997@gmail.com\";s:19:\"shipping_first_name\";s:6:\"jayesh\";s:18:\"shipping_last_name\";s:5:\"patel\";s:16:\"shipping_company\";s:8:\"toystole\";}\";s:4:\"cart\";s:305:\"a:1:{s:32:\"c74d97b01eae257e44aa9d5bade97baf\";a:9:{s:10:\"product_id\";i:16;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:150;s:13:\"line_subtotal\";i:150;s:8:\"line_tax\";i:0;s:17:\"line_subtotal_tax\";i:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:23:\"coupon_discount_amounts\";s:6:\"a:0:{}\";s:27:\"coupon_discount_tax_amounts\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:19:\"cart_contents_total\";i:150;s:5:\"total\";i:0;s:8:\"subtotal\";i:150;s:15:\"subtotal_ex_tax\";i:150;s:9:\"tax_total\";i:0;s:5:\"taxes\";s:6:\"a:0:{}\";s:14:\"shipping_taxes\";s:6:\"a:0:{}\";s:13:\"discount_cart\";i:0;s:17:\"discount_cart_tax\";i:0;s:14:\"shipping_total\";i:0;s:18:\"shipping_tax_total\";i:0;s:9:\"fee_total\";i:0;s:4:\"fees\";s:6:\"a:0:{}\";}', 1513267188);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_check_pincode_p`
--
ALTER TABLE `wp_check_pincode_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_pincode_setting_p`
--
ALTER TABLE `wp_pincode_setting_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_check_pincode_p`
--
ALTER TABLE `wp_check_pincode_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `wp_pincode_setting_p`
--
ALTER TABLE `wp_pincode_setting_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

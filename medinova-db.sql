-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 07:57 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medinova`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-10-01 06:52:19', '2022-10-01 06:52:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/medinova', 'yes'),
(2, 'home', 'http://localhost/medinova', 'yes'),
(3, 'blogname', 'Medinova Hospital Website', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pobitro.me@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:184:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"service/?$\";s:28:\"index.php?post_type=services\";s:40:\"service/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:35:\"service/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:27:\"service/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:9:\"doctor/?$\";s:27:\"index.php?post_type=doctors\";s:39:\"doctor/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=doctors&feed=$matches[1]\";s:34:\"doctor/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=doctors&feed=$matches[1]\";s:26:\"doctor/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=doctors&paged=$matches[1]\";s:10:\"package/?$\";s:27:\"index.php?post_type=package\";s:40:\"package/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=package&feed=$matches[1]\";s:35:\"package/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=package&feed=$matches[1]\";s:27:\"package/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=package&paged=$matches[1]\";s:14:\"testimonial/?$\";s:31:\"index.php?post_type=testimonial\";s:44:\"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:39:\"testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:31:\"testimonial/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=testimonial&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:48:\"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:43:\"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"doctor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"doctor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"doctor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"doctor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"doctor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"doctor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"doctor/([^/]+)/embed/?$\";s:40:\"index.php?doctors=$matches[1]&embed=true\";s:27:\"doctor/([^/]+)/trackback/?$\";s:34:\"index.php?doctors=$matches[1]&tb=1\";s:47:\"doctor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?doctors=$matches[1]&feed=$matches[2]\";s:42:\"doctor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?doctors=$matches[1]&feed=$matches[2]\";s:35:\"doctor/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?doctors=$matches[1]&paged=$matches[2]\";s:42:\"doctor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?doctors=$matches[1]&cpage=$matches[2]\";s:31:\"doctor/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?doctors=$matches[1]&page=$matches[2]\";s:23:\"doctor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"doctor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"doctor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"doctor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"doctor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"doctor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"package/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"package/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"package/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"package/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"package/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"package/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"package/([^/]+)/embed/?$\";s:40:\"index.php?package=$matches[1]&embed=true\";s:28:\"package/([^/]+)/trackback/?$\";s:34:\"index.php?package=$matches[1]&tb=1\";s:48:\"package/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?package=$matches[1]&feed=$matches[2]\";s:43:\"package/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?package=$matches[1]&feed=$matches[2]\";s:36:\"package/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?package=$matches[1]&paged=$matches[2]\";s:43:\"package/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?package=$matches[1]&cpage=$matches[2]\";s:32:\"package/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?package=$matches[1]&page=$matches[2]\";s:24:\"package/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"package/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"package/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"package/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"package/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"package/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:32:\"testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:52:\"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:47:\"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:40:\"testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:47:\"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:36:\"testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:28:\"testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=31&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:35:\"classic-widgets/classic-widgets.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'medinova', 'yes'),
(41, 'stylesheet', 'medinova', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '31', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1680159139', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:5:\"ftr_1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1668235939;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1668235940;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1668235954;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1668235957;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1668322339;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1664607389;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', '', 'yes'),
(155, 'theme_mods_medinova', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:12:\"primary-menu\";i:2;s:11:\"footer-menu\";i:3;}s:18:\"custom_css_post_id\";i:77;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'recovery_mode_email_last_sent', '1666090757', 'yes'),
(187, 'recently_activated', 'a:0:{}', 'yes'),
(205, 'my_framework', 'a:2:{s:8:\"opt-text\";s:0:\"\";s:12:\"opt-textarea\";s:0:\"\";}', 'yes'),
(206, '_prefix_my_options', 'a:220:{s:8:\"opt-text\";s:0:\"\";s:12:\"opt-textarea\";s:0:\"\";s:10:\"opt-upload\";s:0:\"\";s:12:\"opt-switcher\";s:0:\"\";s:9:\"opt-color\";s:7:\"#3498db\";s:12:\"opt-checkbox\";s:0:\"\";s:9:\"opt-radio\";s:3:\"yes\";s:10:\"opt-select\";s:0:\"\";s:16:\"opt-image-select\";s:5:\"opt-1\";s:14:\"opt-background\";s:0:\"\";s:8:\"opt-icon\";s:0:\"\";s:12:\"opt-alt-text\";s:0:\"\";s:16:\"opt-alt-textarea\";s:0:\"\";s:10:\"opt-text-1\";s:0:\"\";s:10:\"opt-text-2\";s:33:\"This is default value bla bla bla\";s:10:\"opt-text-3\";s:0:\"\";s:10:\"opt-text-4\";s:0:\"\";s:10:\"opt-text-5\";s:39:\"readonly text field, can not be changed\";s:10:\"opt-text-6\";s:3:\"abc\";s:10:\"opt-text-7\";s:0:\"\";s:10:\"opt-text-8\";s:0:\"\";s:14:\"opt-textarea-1\";s:0:\"\";s:14:\"opt-textarea-2\";s:33:\"This is default value bla bla bla\";s:14:\"opt-textarea-3\";s:0:\"\";s:14:\"opt-textarea-4\";s:0:\"\";s:14:\"opt-textarea-5\";s:0:\"\";s:14:\"opt-textarea-6\";s:0:\"\";s:12:\"opt-select-1\";s:0:\"\";s:12:\"opt-select-2\";s:5:\"opt-2\";s:12:\"opt-select-3\";s:0:\"\";s:12:\"opt-select-4\";a:2:{i:0;s:5:\"opt-2\";i:1;s:5:\"opt-3\";}s:12:\"opt-select-5\";s:0:\"\";s:12:\"opt-select-6\";s:0:\"\";s:12:\"opt-select-7\";a:3:{i:0;s:5:\"opt-1\";i:1;s:5:\"opt-2\";i:2;s:5:\"opt-3\";}s:12:\"opt-select-8\";s:0:\"\";s:12:\"opt-select-9\";s:0:\"\";s:13:\"opt-select-10\";s:0:\"\";s:13:\"opt-select-11\";s:0:\"\";s:13:\"opt-select-12\";s:0:\"\";s:13:\"opt-select-13\";s:0:\"\";s:13:\"opt-select-14\";s:0:\"\";s:13:\"opt-select-15\";s:0:\"\";s:13:\"opt-select-16\";s:0:\"\";s:13:\"opt-select-17\";s:0:\"\";s:13:\"opt-select-18\";s:0:\"\";s:13:\"opt-select-19\";s:0:\"\";s:13:\"opt-select-20\";s:0:\"\";s:13:\"opt-select-21\";s:0:\"\";s:14:\"opt-checkbox-1\";s:0:\"\";s:14:\"opt-checkbox-2\";b:1;s:14:\"opt-checkbox-3\";s:0:\"\";s:14:\"opt-checkbox-4\";s:0:\"\";s:14:\"opt-checkbox-5\";a:2:{i:0;s:5:\"opt-1\";i:1;s:5:\"opt-2\";}s:14:\"opt-checkbox-6\";s:0:\"\";s:14:\"opt-checkbox-7\";s:0:\"\";s:14:\"opt-checkbox-8\";s:0:\"\";s:11:\"opt-radio-1\";s:0:\"\";s:11:\"opt-radio-2\";s:5:\"opt-2\";s:11:\"opt-radio-3\";s:0:\"\";s:11:\"opt-radio-4\";s:0:\"\";s:11:\"opt-radio-5\";s:0:\"\";s:11:\"opt-radio-6\";s:0:\"\";s:14:\"opt-repeater-1\";s:0:\"\";s:14:\"opt-repeater-2\";a:2:{i:0;a:1:{s:8:\"opt-text\";s:14:\"Text default 1\";}i:1;a:1:{s:8:\"opt-text\";s:14:\"Text default 2\";}}s:14:\"opt-repeater-3\";a:1:{i:0;a:3:{s:12:\"opt-switcher\";b:0;s:9:\"opt-color\";s:7:\"#3498db\";s:8:\"opt-text\";s:14:\"Text default 1\";}}s:14:\"opt-repeater-4\";a:2:{i:0;a:1:{s:8:\"opt-text\";s:14:\"Text default 1\";}i:1;a:1:{s:8:\"opt-text\";s:14:\"Text default 2\";}}s:14:\"opt-repeater-6\";a:1:{i:0;a:2:{s:8:\"opt-text\";s:14:\"Text default 1\";s:23:\"opt-repeater-6-nested-1\";a:2:{i:0;a:1:{s:8:\"opt-text\";s:14:\"Text default 1\";}i:1;a:1:{s:8:\"opt-text\";s:14:\"Text default 2\";}}}}s:11:\"opt-group-1\";s:0:\"\";s:11:\"opt-group-2\";a:2:{i:0;a:3:{s:8:\"opt-text\";s:11:\"Some text 1\";s:12:\"opt-switcher\";b:1;s:12:\"opt-textarea\";s:23:\"Some textarea content 1\";}i:1;a:3:{s:8:\"opt-text\";s:11:\"Some text 2\";s:12:\"opt-switcher\";b:0;s:12:\"opt-textarea\";s:23:\"Some textarea content 2\";}}s:11:\"opt-group-3\";a:2:{i:0;a:2:{s:8:\"opt-text\";s:14:\"Limited text 1\";s:12:\"opt-textarea\";s:26:\"Limited textarea content 1\";}i:1;a:2:{s:8:\"opt-text\";s:14:\"Limited text 2\";s:12:\"opt-textarea\";s:26:\"Limited textarea content 2\";}}s:11:\"opt-group-4\";a:2:{i:0;a:2:{s:8:\"opt-text\";s:11:\"WP Editor 1\";s:10:\"opt-editor\";s:16:\"Editor content 1\";}i:1;a:2:{s:8:\"opt-text\";s:11:\"WP Editor 2\";s:10:\"opt-editor\";s:16:\"Editor content 2\";}}s:11:\"opt-group-5\";a:2:{i:0;a:2:{s:8:\"opt-text\";s:11:\"Top Level 1\";s:22:\"opt-group-5-sublevel-1\";a:2:{i:0;a:2:{s:8:\"opt-text\";s:11:\"Sub Level 1\";s:22:\"opt-group-5-sublevel-2\";a:2:{i:0;a:1:{s:8:\"opt-text\";s:15:\"Sub Sub Level 1\";}i:1;a:1:{s:8:\"opt-text\";s:15:\"Sub Sub Level 2\";}}}i:1;a:1:{s:8:\"opt-text\";s:11:\"Sub Level 2\";}}}i:1;a:1:{s:8:\"opt-text\";s:11:\"Top Level 2\";}}s:11:\"opt-group-6\";a:1:{i:0;a:2:{s:8:\"opt-text\";s:11:\"Some text 1\";s:20:\"opt-group-6-repeater\";a:2:{i:0;a:1:{s:8:\"opt-text\";s:11:\"Some text 1\";}i:1;a:1:{s:8:\"opt-text\";s:11:\"Some text 2\";}}}}s:11:\"opt-group-7\";a:2:{i:0;a:3:{s:8:\"opt-text\";s:11:\"Some text 1\";s:12:\"opt-switcher\";b:1;s:12:\"opt-textarea\";s:23:\"Some textarea content 1\";}i:1;a:3:{s:8:\"opt-text\";s:11:\"Some text 2\";s:12:\"opt-switcher\";b:0;s:12:\"opt-textarea\";s:23:\"Some textarea content 2\";}}s:11:\"opt-group-8\";a:2:{i:0;a:3:{s:8:\"opt-text\";s:11:\"Some text 1\";s:12:\"opt-switcher\";b:1;s:12:\"opt-textarea\";s:23:\"Some textarea content 1\";}i:1;a:3:{s:8:\"opt-text\";s:11:\"Some text 2\";s:12:\"opt-switcher\";b:0;s:12:\"opt-textarea\";s:23:\"Some textarea content 2\";}}s:11:\"opt-group-9\";a:2:{i:0;a:3:{s:8:\"opt-name\";s:4:\"John\";s:11:\"opt-surname\";s:3:\"Doe\";s:12:\"opt-textarea\";s:10:\"Textarea 1\";}i:1;a:3:{s:8:\"opt-name\";s:4:\"Jane\";s:11:\"opt-surname\";s:3:\"Doe\";s:12:\"opt-textarea\";s:10:\"Textarea 1\";}}s:12:\"opt-group-10\";a:2:{i:0;a:2:{s:8:\"opt-text\";s:6:\"Text 1\";s:12:\"opt-textarea\";s:10:\"Textarea 1\";}i:1;a:2:{s:8:\"opt-text\";s:6:\"Text 2\";s:12:\"opt-textarea\";s:10:\"Textarea 1\";}}s:15:\"opt-accordion-1\";s:0:\"\";s:15:\"opt-accordion-2\";a:6:{s:10:\"opt-text-1\";s:28:\"This is text 1 default value\";s:10:\"opt-text-2\";s:28:\"This is text 2 default value\";s:11:\"opt-color-1\";s:7:\"#1e73be\";s:11:\"opt-color-2\";s:7:\"#ffbc00\";s:14:\"opt-textarea-1\";s:32:\"This is textarea 1 default value\";s:14:\"opt-textarea-2\";s:32:\"This is textarea 2 default value\";}s:11:\"accordion_3\";s:0:\"\";s:12:\"opt-tabbed-1\";s:0:\"\";s:12:\"opt-tabbed-2\";a:6:{s:10:\"opt-text-1\";s:28:\"This is text 1 default value\";s:10:\"opt-text-2\";s:28:\"This is text 2 default value\";s:11:\"opt-color-1\";s:7:\"#1e73be\";s:11:\"opt-color-2\";s:7:\"#ffbc00\";s:14:\"opt-textarea-1\";s:32:\"This is textarea 1 default value\";s:14:\"opt-textarea-2\";s:32:\"This is textarea 2 default value\";}s:14:\"opt-fieldset-1\";s:0:\"\";s:14:\"opt-fieldset-2\";a:3:{s:9:\"opt-color\";s:7:\"#1e73be\";s:8:\"opt-text\";s:26:\"This is text default value\";s:12:\"opt-textarea\";s:30:\"This is textarea default value\";}s:11:\"opt-media-1\";s:0:\"\";s:11:\"opt-media-2\";s:0:\"\";s:11:\"opt-media-3\";s:0:\"\";s:11:\"opt-media-4\";s:0:\"\";s:11:\"opt-media-5\";s:0:\"\";s:11:\"opt-media-6\";s:0:\"\";s:12:\"opt-upload-1\";s:0:\"\";s:12:\"opt-upload-2\";s:0:\"\";s:12:\"opt-upload-3\";s:0:\"\";s:12:\"opt-upload-4\";s:0:\"\";s:12:\"opt-upload-5\";s:0:\"\";s:12:\"opt-upload-6\";s:0:\"\";s:13:\"opt-gallery-1\";s:0:\"\";s:13:\"opt-gallery-2\";s:0:\"\";s:17:\"opt-code-editor-1\";s:0:\"\";s:13:\"code_editor_2\";s:97:\"<div class=\"wrapper\">\n  <h1>Hello world</h1>\n  <p>Lorem <strong>ipsum</strong> dollar.</p>\n</div>\";s:17:\"opt-code-editor-2\";s:154:\";(function( $, window, document, undefined ) {\n  \"use strict\";\n\n  $(document).ready( function() {\n\n    // do stuff\n\n  });\n\n})( jQuery, window, document );\";s:17:\"opt-code-editor-3\";s:133:\".wrapper {\n  font-family: \"Open Sans\";\n  font-size: 13px;\n  width: 250px;\n  height: 100px;\n  color: #fff;\n  background-color: #555;\n}\";s:15:\"opt-wp-editor-1\";s:0:\"\";s:15:\"opt-wp-editor-2\";s:0:\"\";s:15:\"opt-wp-editor-3\";s:0:\"\";s:15:\"opt-wp-editor-4\";s:0:\"\";s:11:\"opt-color-1\";s:0:\"\";s:11:\"opt-color-2\";s:7:\"#3498db\";s:11:\"opt-color-3\";s:20:\"rgba(255,255,0,0.25)\";s:11:\"opt-color-4\";s:11:\"transparent\";s:16:\"opt-link-color-1\";s:0:\"\";s:16:\"opt-link-color-2\";a:2:{s:5:\"color\";s:7:\"#1e73be\";s:5:\"hover\";s:7:\"#259ded\";}s:16:\"opt-link-color-3\";s:0:\"\";s:17:\"opt-color-group-1\";s:0:\"\";s:17:\"opt-color-group-2\";s:0:\"\";s:17:\"opt-color-group-3\";a:5:{s:7:\"color-1\";s:7:\"#000100\";s:7:\"color-2\";s:7:\"#002642\";s:7:\"color-3\";s:7:\"#ffce4b\";s:7:\"color-4\";s:7:\"#ff595e\";s:7:\"color-5\";s:7:\"#0052cc\";}s:13:\"opt-palette-1\";s:5:\"set-1\";s:13:\"opt-palette-2\";s:5:\"set-3\";s:13:\"opt-palette-3\";s:5:\"set-1\";s:16:\"opt-background-1\";s:0:\"\";s:16:\"opt-background-2\";a:5:{s:16:\"background-color\";s:7:\"#e80000\";s:19:\"background-position\";s:13:\"center center\";s:17:\"background-repeat\";s:8:\"repeat-x\";s:21:\"background-attachment\";s:5:\"fixed\";s:15:\"background-size\";s:5:\"cover\";}s:16:\"opt-background-3\";a:10:{s:16:\"background-color\";s:7:\"#009e44\";s:25:\"background-gradient-color\";s:7:\"#81d742\";s:29:\"background-gradient-direction\";s:6:\"135deg\";s:19:\"background-position\";s:13:\"center center\";s:17:\"background-repeat\";s:8:\"repeat-x\";s:21:\"background-attachment\";s:5:\"fixed\";s:15:\"background-size\";s:5:\"cover\";s:17:\"background-origin\";s:10:\"border-box\";s:15:\"background-clip\";s:11:\"padding-box\";s:21:\"background-blend-mode\";s:6:\"normal\";}s:16:\"opt-typography-1\";s:0:\"\";s:16:\"opt-typography-2\";a:10:{s:11:\"font-family\";s:6:\"Barlow\";s:11:\"font-weight\";s:3:\"600\";s:6:\"subset\";s:9:\"latin-ext\";s:4:\"type\";s:6:\"google\";s:10:\"text-align\";s:6:\"center\";s:14:\"text-transform\";s:10:\"capitalize\";s:9:\"font-size\";s:2:\"18\";s:11:\"line-height\";s:2:\"20\";s:14:\"letter-spacing\";s:2:\"-1\";s:5:\"color\";s:7:\"#009e44\";}s:16:\"opt-typography-3\";a:4:{s:11:\"font-family\";s:4:\"Lato\";s:11:\"font-weight\";s:3:\"900\";s:6:\"subset\";s:5:\"latin\";s:4:\"type\";s:6:\"google\";}s:16:\"opt-typography-4\";a:2:{s:11:\"font-family\";s:15:\"Old Standard TT\";s:4:\"type\";s:6:\"google\";}s:16:\"opt-dimensions-1\";s:0:\"\";s:16:\"opt-dimensions-2\";a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"250\";s:4:\"unit\";s:2:\"px\";}s:16:\"opt-dimensions-3\";a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:2:\"50\";s:4:\"unit\";s:1:\"%\";}s:16:\"opt-dimensions-4\";s:0:\"\";s:16:\"opt-dimensions-5\";s:0:\"\";s:16:\"opt-dimensions-6\";s:0:\"\";s:16:\"opt-dimensions-7\";s:0:\"\";s:13:\"opt-spacing-1\";s:0:\"\";s:13:\"opt-spacing-2\";a:5:{s:3:\"top\";s:2:\"50\";s:5:\"right\";s:3:\"100\";s:6:\"bottom\";s:2:\"50\";s:4:\"left\";s:3:\"100\";s:4:\"unit\";s:2:\"px\";}s:13:\"opt-spacing-3\";s:0:\"\";s:13:\"opt-spacing-4\";s:0:\"\";s:13:\"opt-spacing-5\";s:0:\"\";s:12:\"opt-border-1\";s:0:\"\";s:12:\"opt-border-2\";a:6:{s:3:\"top\";s:1:\"4\";s:5:\"right\";s:1:\"8\";s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:1:\"8\";s:5:\"style\";s:6:\"dashed\";s:5:\"color\";s:7:\"#1e73be\";}s:12:\"opt-border-3\";s:0:\"\";s:12:\"opt-border-4\";s:0:\"\";s:12:\"opt-border-5\";s:0:\"\";s:13:\"opt-spinner-1\";i:25;s:13:\"opt-spinner-2\";i:100;s:13:\"opt-spinner-3\";d:0.5;s:12:\"opt-number-1\";s:0:\"\";s:12:\"opt-number-2\";s:0:\"\";s:12:\"opt-number-3\";i:100;s:12:\"opt-slider-1\";s:0:\"\";s:12:\"opt-slider-2\";i:50;s:12:\"opt-slider-3\";i:75;s:12:\"opt-slider-4\";d:5.5;s:12:\"opt-sorter-1\";a:2:{s:7:\"enabled\";a:3:{s:5:\"opt-1\";s:8:\"Option 1\";s:5:\"opt-2\";s:8:\"Option 2\";s:5:\"opt-3\";s:8:\"Option 3\";}s:8:\"disabled\";a:2:{s:5:\"opt-4\";s:8:\"Option 4\";s:5:\"opt-5\";s:8:\"Option 5\";}}s:12:\"opt-sorter-2\";a:2:{s:7:\"enabled\";a:3:{s:5:\"opt-1\";s:8:\"Option 1\";s:5:\"opt-2\";s:8:\"Option 2\";s:5:\"opt-3\";s:8:\"Option 3\";}s:8:\"disabled\";a:2:{s:5:\"opt-4\";s:8:\"Option 4\";s:5:\"opt-5\";s:8:\"Option 5\";}}s:12:\"opt-sorter-3\";a:1:{s:7:\"enabled\";a:3:{s:5:\"opt-1\";s:8:\"Option 1\";s:5:\"opt-2\";s:8:\"Option 2\";s:5:\"opt-3\";s:8:\"Option 3\";}}s:14:\"opt-sortable-1\";s:0:\"\";s:14:\"opt-sortable-2\";a:3:{s:10:\"opt-text-1\";s:22:\"This is text 1 default\";s:10:\"opt-text-2\";s:22:\"This is text 2 default\";s:10:\"opt-text-3\";s:22:\"This is text 3 default\";}s:14:\"opt-switcher-1\";s:0:\"\";s:14:\"opt-switcher-2\";b:1;s:14:\"opt-switcher-3\";s:0:\"\";s:14:\"opt-switcher-4\";s:0:\"\";s:10:\"opt-icon-1\";s:0:\"\";s:10:\"opt-icon-2\";s:12:\"fas fa-check\";s:9:\"opt-map-1\";s:0:\"\";s:9:\"opt-map-2\";a:4:{s:7:\"address\";s:34:\"New York, United States of America\";s:8:\"latitude\";s:10:\"40.7127281\";s:9:\"longitude\";s:11:\"-74.0060152\";s:4:\"zoom\";s:2:\"12\";}s:15:\"my-address-text\";s:0:\"\";s:9:\"opt-map-3\";s:0:\"\";s:10:\"opt-link-1\";s:0:\"\";s:10:\"opt-link-2\";a:3:{s:3:\"url\";s:29:\"http://codestarframework.com/\";s:4:\"text\";s:18:\"Codestar Framework\";s:6:\"target\";s:6:\"_blank\";}s:10:\"opt-date-1\";s:0:\"\";s:10:\"opt-date-2\";s:0:\"\";s:10:\"opt-date-3\";s:0:\"\";s:10:\"opt-date-4\";s:0:\"\";s:14:\"opt-datetime-1\";s:0:\"\";s:14:\"opt-datetime-2\";s:0:\"\";s:14:\"opt-datetime-3\";s:0:\"\";s:14:\"opt-datetime-4\";s:0:\"\";s:14:\"opt-datetime-5\";s:0:\"\";s:14:\"opt-datetime-6\";s:0:\"\";s:14:\"opt-datetime-7\";s:0:\"\";s:14:\"opt-datetime-8\";s:0:\"\";s:14:\"opt-datetime-9\";s:0:\"\";s:15:\"opt-datetime-10\";s:0:\"\";s:15:\"opt-datetime-11\";s:0:\"\";s:18:\"opt-image-select-1\";s:0:\"\";s:18:\"opt-image-select-2\";s:5:\"opt-4\";s:18:\"opt-image-select-3\";s:0:\"\";s:18:\"opt-image-select-4\";a:4:{i:0;s:5:\"opt-3\";i:1;s:5:\"opt-4\";i:2;s:5:\"opt-5\";i:3;s:5:\"opt-6\";}s:18:\"opt-image-select-5\";s:5:\"opt-1\";s:16:\"opt-button-set-1\";s:0:\"\";s:16:\"opt-button-set-2\";s:0:\"\";s:16:\"opt-button-set-3\";s:8:\"activate\";s:16:\"opt-button-set-4\";s:2:\"on\";s:16:\"opt-button-set-5\";s:0:\"\";s:16:\"opt-button-set-6\";a:2:{i:0;s:5:\"opt-2\";i:1;s:5:\"opt-4\";}s:16:\"opt-button-set-7\";s:0:\"\";s:16:\"opt-button-set-8\";s:0:\"\";s:19:\"opt-depend-switcher\";s:0:\"\";s:15:\"opt-depend-text\";s:0:\"\";s:17:\"opt-depend-select\";s:0:\"\";s:16:\"opt-depend-radio\";s:2:\"no\";s:19:\"opt-depend-checkbox\";s:0:\"\";s:23:\"opt-depend-image-select\";s:5:\"green\";s:27:\"opt-depend-image-select-any\";s:5:\"green\";s:27:\"opt-depend-visible-switcher\";s:0:\"\";s:23:\"opt-depend-visible-text\";s:0:\"\";s:25:\"opt-depend-visible-select\";s:0:\"\";s:21:\"opt-depend-switcher-1\";s:0:\"\";s:19:\"opt-depend-select-1\";s:0:\"\";s:19:\"opt-nested-select-1\";s:0:\"\";s:19:\"opt-nested-select-2\";s:0:\"\";s:19:\"opt-nested-select-3\";s:0:\"\";s:21:\"opt-depend-checkbox-1\";s:0:\"\";s:14:\"opt-validate-1\";s:15:\"info@domain.com\";s:14:\"opt-validate-2\";s:6:\"123456\";s:14:\"opt-validate-3\";s:17:\"Lorem ipsum value\";s:14:\"opt-validate-4\";s:28:\"http://codestarframework.com\";s:14:\"opt-sanitize-1\";s:0:\"\";s:14:\"opt-sanitize-2\";s:0:\"\";}', 'yes'),
(220, '_medinova_theme_options', 'a:25:{s:8:\"opt-text\";s:0:\"\";s:12:\"opt-textarea\";s:0:\"\";s:10:\"opt-upload\";s:0:\"\";s:12:\"opt-switcher\";s:0:\"\";s:9:\"opt-color\";s:7:\"#3498db\";s:12:\"opt-checkbox\";s:0:\"\";s:9:\"opt-radio\";s:3:\"yes\";s:10:\"opt-select\";s:0:\"\";s:16:\"opt-image-select\";s:5:\"opt-1\";s:14:\"opt-background\";s:0:\"\";s:8:\"opt-icon\";s:0:\"\";s:12:\"opt-alt-text\";s:0:\"\";s:16:\"opt-alt-textarea\";s:0:\"\";s:5:\"phone\";s:13:\"+0271 837 248\";s:5:\"email\";s:16:\"info@example.com\";s:2:\"fb\";s:20:\"https://facebook.com\";s:7:\"twitter\";s:19:\"https://twitter.com\";s:9:\"instagram\";s:21:\"https://instagram.com\";s:7:\"youtube\";s:19:\"https://youtube.com\";s:14:\"opt-textarea-1\";s:0:\"\";s:14:\"opt-textarea-2\";s:33:\"This is default value bla bla bla\";s:14:\"opt-textarea-3\";s:0:\"\";s:14:\"opt-textarea-4\";s:0:\"\";s:14:\"opt-textarea-5\";s:0:\"\";s:14:\"opt-textarea-6\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(221, 'medinova_theme_options', 'a:62:{s:5:\"phone\";s:15:\"+880 1764787853\";s:5:\"email\";s:20:\"pobitro.me@gmail.com\";s:2:\"fb\";s:30:\"https://facebook.com/mkpobitro\";s:7:\"twitter\";s:29:\"https://twitter.com/mkpobitro\";s:8:\"linkedin\";s:34:\"https://linkedin.com/in/mkpobitro/\";s:9:\"instagram\";s:31:\"https://instagram.com/mkpobitro\";s:7:\"youtube\";s:19:\"https://youtube.com\";s:4:\"logo\";s:8:\"Medinova\";s:10:\"hero-title\";s:19:\"Welcome to Medinova\";s:12:\"hero-tagline\";s:37:\"Best Healthcare Solution In Your City\";s:10:\"hero-btn-1\";s:11:\"Find Doctor\";s:14:\"hero-btn-1-url\";s:1:\"#\";s:10:\"hero-btn-2\";s:10:\"Appoinment\";s:14:\"hero-btn-2-url\";s:29:\"https://pobitro.me/appoinment\";s:10:\"hero-image\";a:8:{s:3:\"url\";s:61:\"http://localhost/medinova/wp-content/uploads/2022/10/hero.jpg\";s:2:\"id\";s:2:\"50\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:4:\"1080\";s:9:\"thumbnail\";s:69:\"http://localhost/medinova/wp-content/uploads/2022/10/hero-150x150.jpg\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:4:\"hero\";s:11:\"description\";s:0:\"\";}s:15:\"about_sec_title\";s:8:\"About Us\";s:16:\"about_short_desc\";s:46:\"Best Medical Care For Yourself and Your Family\";s:15:\"about_long_desc\";s:365:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged\";s:14:\"about_repeater\";a:4:{i:0;a:3:{s:12:\"feature_icon\";s:19:\"fa fa-3x fa-user-md\";s:12:\"feature_type\";s:9:\"Qualified\";s:13:\"feature_title\";s:7:\"Doctors\";}i:1;a:3:{s:12:\"feature_icon\";s:22:\"fa fa-3x fa-procedures\";s:12:\"feature_type\";s:9:\"Emergency\";s:13:\"feature_title\";s:8:\"Services\";}i:2;a:3:{s:12:\"feature_icon\";s:22:\"fa fa-3x fa-microscope\";s:12:\"feature_type\";s:8:\"Accurate\";s:13:\"feature_title\";s:7:\"Testing\";}i:3;a:3:{s:12:\"feature_icon\";s:21:\"fa fa-3x fa-ambulance\";s:12:\"feature_type\";s:4:\"Free\";s:13:\"feature_title\";s:9:\"Ambulance\";}}s:11:\"about_image\";a:8:{s:3:\"url\";s:62:\"http://localhost/medinova/wp-content/uploads/2022/10/about.jpg\";s:2:\"id\";s:2:\"62\";s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"500\";s:9:\"thumbnail\";s:70:\"http://localhost/medinova/wp-content/uploads/2022/10/about-150x150.jpg\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:5:\"about\";s:11:\"description\";s:0:\"\";}s:13:\"service_title\";s:12:\"Our Services\";s:19:\"service_short_title\";s:27:\"Excellent Medical Services \";s:9:\"app_title\";s:18:\"Appoinment Section\";s:11:\"app_tagline\";s:35:\"Make An Appointment For Your Family\";s:8:\"app_desc\";s:319:\"Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing kasd ipsum. Dolor ea et dolore et at sea ea at dolor, justo ipsum duo rebum sea invidunt voluptua. Eos vero eos vero ea et dolore eirmod et. Dolores diam duo invidunt lorem. Elitr ut dolores magna sit. Sea dolore sanctus sed et. Takimata takimata sanctus sed.\";s:9:\"app_btn_1\";s:11:\"Find Doctor\";s:13:\"app_btn_1_url\";s:1:\"#\";s:9:\"app_btn_2\";s:9:\"Read More\";s:13:\"app_btn_2_url\";s:1:\"#\";s:14:\"app_form_title\";s:19:\"Book An Appointment\";s:8:\"dr_title\";s:11:\"Our Doctors\";s:14:\"dr_short_title\";s:34:\"Qualified Healthcare Professionals\";s:13:\"package_title\";s:16:\"Medical Packages\";s:19:\"package_short_title\";s:24:\"Awesome Medical Programs\";s:15:\"dr_search_title\";s:13:\"Find A Doctor\";s:21:\"dr_search_short_title\";s:24:\"Awesome Medical Programs\";s:14:\"dr_search_desc\";s:140:\"Duo ipsum erat stet dolor sea ut nonumy tempor. Tempor duo lorem eos sit sed ipsum takimata ipsum sit est. Ipsum ea voluptua ipsum sit justo\";s:17:\"testimonial_title\";s:11:\"Testimonial\";s:23:\"testimonial_short_title\";s:31:\"Patients Say About Our Services\";s:10:\"blog_title\";s:4:\"Blog\";s:16:\"blog_short_title\";s:29:\"Our Latest Medical Blog Posts\";s:13:\"contact_title\";s:14:\"Any Questions?\";s:19:\"contact_short_title\";s:30:\"Please Feel Free To Contact Us\";s:16:\"contact_location\";s:25:\"123 Street, New York, USA\";s:13:\"contact_phone\";s:14:\"+012 345 67890\";s:13:\"contact_email\";s:16:\"info@example.com\";s:15:\"contact_map_src\";s:382:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29442.953276579778!2d89.03434387782308!3d22.71451629869432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff5dd8cc387413%3A0xf05c8c2849c76277!2sSatkhira!5e0!3m2!1sen!2sbd!4v1666090997336!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\";s:11:\"ftr_title_1\";s:12:\"Get In Touch\";s:8:\"ftr_desc\";s:85:\"No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor sed dolor\";s:12:\"ftr_location\";s:36:\"Satkhira Sadar, Satkhira, Bangladesh\";s:9:\"ftr_email\";s:20:\"pobitro.me@gmail.com\";s:9:\"ftr_phone\";s:15:\"+880 1764787853\";s:11:\"ftr_title_2\";s:11:\"Quick Links\";s:11:\"ftr_title_3\";s:13:\"Popular Links\";s:11:\"ftr_title_4\";s:10:\"Newsletter\";s:16:\"ftr_social_title\";s:9:\"Follow Us\";s:11:\"ftr_twitter\";s:19:\"https://twitter.com\";s:6:\"ftr_fb\";s:20:\"https://facebook.com\";s:12:\"ftr_linkedin\";s:20:\"https://linkedin.com\";s:13:\"ftr_instagram\";s:21:\"https://instagram.com\";s:18:\"ftr_left_copyright\";s:66:\"© <a href=\"https://pobitro.me\">Medinova</a>. All Rights Reserved.\";s:14:\"ftr_right_text\";s:59:\"Designed by <a href=\"https://pobitro.me\">Pobitro Mondal</a>\";}', 'yes'),
(239, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":1}', 'yes'),
(240, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(246, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(497, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(498, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(562, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1665721225;s:7:\"version\";s:5:\"5.6.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(568, 'secret_key', ',beyucyo_| iUWI7t/pq5QwpT x=zDZ)I;n~H^b+:-(3]-/>|2frp-tY1(-5V5*`', 'no'),
(607, 'acf_version', '6.0.2', 'yes'),
(716, 'category_children', 'a:0:{}', 'yes'),
(905, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"pobitro.me@gmail.com\";s:7:\"version\";s:3:\"6.1\";s:9:\"timestamp\";i:1667630646;}', 'no'),
(1022, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.1\";s:7:\"version\";s:3:\"6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1668235401;s:15:\"version_checked\";s:3:\"6.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1046, '_transient_timeout_global_styles_medinova', '1668235459', 'no'),
(1047, '_transient_global_styles_medinova', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(1049, '_site_transient_timeout_theme_roots', '1668237203', 'no'),
(1050, '_site_transient_theme_roots', 'a:5:{s:8:\"medinova\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1051, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1668235405;s:7:\"checked\";a:5:{s:8:\"medinova\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1052, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1668235406;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:3:\"6.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:8:\"0.8.8.10\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.8.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.2\";s:29:\"acf-extended/acf-extended.php\";s:8:\"0.8.8.10\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 9, '_edit_last', '1'),
(4, 9, '_edit_lock', '1665759100:1'),
(7, 13, '_edit_last', '1'),
(8, 13, '_edit_lock', '1665760318:1'),
(9, 15, '_edit_last', '1'),
(10, 15, '_edit_lock', '1665761839:1'),
(11, 16, '_edit_last', '1'),
(14, 16, '_edit_lock', '1664701240:1'),
(15, 19, '_edit_last', '1'),
(18, 19, '_edit_lock', '1664701248:1'),
(19, 21, '_edit_last', '1'),
(22, 21, '_edit_lock', '1664701255:1'),
(23, 23, '_edit_last', '1'),
(24, 23, '_edit_lock', '1664701292:1'),
(79, 31, '_edit_last', '1'),
(80, 31, '_edit_lock', '1665759125:1'),
(81, 33, '_edit_last', '1'),
(82, 33, '_edit_lock', '1664701351:1'),
(83, 35, '_edit_last', '1'),
(84, 35, '_edit_lock', '1664701359:1'),
(85, 37, '_edit_last', '1'),
(86, 37, '_edit_lock', '1664701373:1'),
(114, 42, '_menu_item_type', 'post_type'),
(115, 42, '_menu_item_menu_item_parent', '0'),
(116, 42, '_menu_item_object_id', '31'),
(117, 42, '_menu_item_object', 'page'),
(118, 42, '_menu_item_target', ''),
(119, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 42, '_menu_item_xfn', ''),
(121, 42, '_menu_item_url', ''),
(123, 43, '_menu_item_type', 'post_type'),
(124, 43, '_menu_item_menu_item_parent', '0'),
(125, 43, '_menu_item_object_id', '15'),
(126, 43, '_menu_item_object', 'page'),
(127, 43, '_menu_item_target', ''),
(128, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 43, '_menu_item_xfn', ''),
(130, 43, '_menu_item_url', ''),
(132, 44, '_menu_item_type', 'post_type'),
(133, 44, '_menu_item_menu_item_parent', '0'),
(134, 44, '_menu_item_object_id', '13'),
(135, 44, '_menu_item_object', 'page'),
(136, 44, '_menu_item_target', ''),
(137, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 44, '_menu_item_xfn', ''),
(139, 44, '_menu_item_url', ''),
(150, 46, '_menu_item_type', 'post_type'),
(151, 46, '_menu_item_menu_item_parent', '0'),
(152, 46, '_menu_item_object_id', '9'),
(153, 46, '_menu_item_object', 'page'),
(154, 46, '_menu_item_target', ''),
(155, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 46, '_menu_item_xfn', ''),
(157, 46, '_menu_item_url', ''),
(168, 48, '_menu_item_type', 'custom'),
(169, 48, '_menu_item_menu_item_parent', '0'),
(170, 48, '_menu_item_object_id', '48'),
(171, 48, '_menu_item_object', 'custom'),
(172, 48, '_menu_item_target', ''),
(173, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 48, '_menu_item_xfn', ''),
(175, 48, '_menu_item_url', '#'),
(179, 50, '_wp_attached_file', '2022/10/hero.jpg'),
(180, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2022/10/hero.jpg\";s:8:\"filesize\";i:79874;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"hero-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9618;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"hero-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56752;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5096;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"hero-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36806;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"hero-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103717;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 51, '_wp_attached_file', '2022/10/price-1.jpg'),
(182, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2022/10/price-1.jpg\";s:8:\"filesize\";i:14449;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"price-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13657;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"price-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6833;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 52, '_wp_attached_file', '2022/10/price-2.jpg'),
(184, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2022/10/price-2.jpg\";s:8:\"filesize\";i:14624;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"price-2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13492;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"price-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6969;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 53, '_wp_attached_file', '2022/10/price-3.jpg'),
(186, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2022/10/price-3.jpg\";s:8:\"filesize\";i:14696;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"price-3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13910;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"price-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6480;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 54, '_wp_attached_file', '2022/10/price-4.jpg'),
(188, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2022/10/price-4.jpg\";s:8:\"filesize\";i:16665;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"price-4-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14983;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"price-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7982;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 55, '_wp_attached_file', '2022/10/team-1.jpg'),
(190, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2022/10/team-1.jpg\";s:8:\"filesize\";i:21498;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15383;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5820;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 56, '_wp_attached_file', '2022/10/team-2.jpg'),
(192, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2022/10/team-2.jpg\";s:8:\"filesize\";i:22202;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15909;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6027;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 57, '_wp_attached_file', '2022/10/team-3.jpg'),
(194, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2022/10/team-3.jpg\";s:8:\"filesize\";i:17519;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12859;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4966;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 58, '_wp_attached_file', '2022/10/testimonial-1.jpg'),
(196, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:25:\"2022/10/testimonial-1.jpg\";s:8:\"filesize\";i:5156;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 59, '_wp_attached_file', '2022/10/testimonial-2.jpg'),
(198, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:25:\"2022/10/testimonial-2.jpg\";s:8:\"filesize\";i:5364;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 60, '_wp_attached_file', '2022/10/testimonial-3.jpg'),
(200, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:25:\"2022/10/testimonial-3.jpg\";s:8:\"filesize\";i:5232;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 61, '_wp_attached_file', '2022/10/user.jpg'),
(202, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2022/10/user.jpg\";s:8:\"filesize\";i:3511;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 62, '_wp_attached_file', '2022/10/about.jpg'),
(204, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2022/10/about.jpg\";s:8:\"filesize\";i:48173;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"about-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15327;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7525;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"about-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66286;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 63, '_wp_attached_file', '2022/10/blog-1.jpg'),
(206, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2022/10/blog-1.jpg\";s:8:\"filesize\";i:33043;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"blog-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13417;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"blog-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6627;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"blog-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48762;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 64, '_wp_attached_file', '2022/10/blog-2.jpg'),
(208, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2022/10/blog-2.jpg\";s:8:\"filesize\";i:36561;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"blog-2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13269;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"blog-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6811;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"blog-2-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51598;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 67, '_edit_last', '1'),
(214, 67, '_edit_lock', '1664850409:1'),
(218, 68, '_edit_last', '1'),
(219, 68, '_edit_lock', '1664794139:1'),
(220, 68, 'icon_class', 'fa fa-2x fa-procedures'),
(221, 69, '_edit_last', '1'),
(222, 69, '_edit_lock', '1664794135:1'),
(223, 69, 'icon_class', 'fa fa-2x fa-stethoscope'),
(224, 70, '_edit_last', '1'),
(225, 70, '_edit_lock', '1665251085:1'),
(226, 70, 'icon_class', 'fa fa-2x fa-ambulance'),
(227, 71, '_edit_last', '1'),
(228, 71, '_edit_lock', '1665251085:1'),
(229, 71, 'icon_class', 'fa fa-2x fa-pills'),
(230, 72, '_edit_last', '1'),
(231, 72, '_edit_lock', '1664794120:1'),
(232, 72, 'icon_class', 'fa fa-2x fa-microscope text-white'),
(233, 67, 'icon_class', 'fa fa-2x fa-user-md'),
(234, 42, '_wp_old_date', '2022-10-02'),
(235, 46, '_wp_old_date', '2022-10-02'),
(237, 44, '_wp_old_date', '2022-10-02'),
(238, 48, '_wp_old_date', '2022-10-02'),
(242, 43, '_wp_old_date', '2022-10-02'),
(270, 42, '_wp_old_date', '2022-10-04'),
(271, 46, '_wp_old_date', '2022-10-04'),
(273, 44, '_wp_old_date', '2022-10-04'),
(274, 48, '_wp_old_date', '2022-10-04'),
(276, 43, '_wp_old_date', '2022-10-04'),
(279, 80, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(280, 80, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(281, 80, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(282, 80, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(283, 80, '_additional_settings', ''),
(284, 80, '_locale', 'en_US'),
(285, 81, '_form', '<div class=\"appointment-form row g-3\">\n\n    <div class=\"col-12 col-sm-6\">\n       [select* dept-dropdown id:department class:form-select class:bg-light class:border-0 class:c-field \"Choose Department\" \"Department 1\" \"Department 2\" \"Department 3\"]\n    </div>\n\n    <div class=\"col-12 col-sm-6\">\n       [select* dr-dropdown id:doctor class:form-select class:bg-light class:border-0 class:c-field \"Select Doctor\" \"Doctor 1\" \"Doctor 2\" \"Doctor 3\"]\n    </div>\n\n    <div class=\"col-12 col-sm-6\">\n        [text* app-name class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Name\"]\n    </div>\n\n\n    <div class=\"col-12 col-sm-6\">\n        [email* app-email class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Email\"]\n    </div>\n\n    <div class=\"col-12 col-sm-6\">\n        [date date-432 class:form-control class:bg-light class:border-0 class:datetimepicker-input class:c-field placeholder \"Date\"]\n    </div>\n\n    <div class=\"col-12 col-sm-6\">\n        [text* app-time class:form-control class:bg-light class:border-0 class:datetimepicker-input class:c-field placeholder \"Time\"]\n    </div>\n\n    <div class=\"col-12\">\n     [submit id:appointment_id class:btn class:btn-primary class:w-100 class:py-3 \"Make An Appointment\"]\n    </div>\n\n</div>'),
(286, 81, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:213:\"From: [app-name] <[app-email]>\n\nMessage Body:\nDepartment: [dept-dropdown]\nDoctor: [dr-dropdown]\n\nName: [app-name]\n\n[app-time]\n[date-432]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:21:\"Reply-To: [app-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(287, 81, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(288, 81, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(289, 81, '_additional_settings', ''),
(290, 81, '_locale', 'en_US'),
(297, 82, '_wp_trash_meta_status', 'publish'),
(298, 82, '_wp_trash_meta_time', '1665724892'),
(299, 84, '_wp_trash_meta_status', 'publish'),
(300, 84, '_wp_trash_meta_time', '1665724904'),
(305, 86, '_wp_trash_meta_status', 'publish'),
(306, 86, '_wp_trash_meta_time', '1665725686'),
(314, 88, '_edit_last', '1'),
(315, 88, '_edit_lock', '1665728369:1'),
(316, 89, '_edit_last', '1'),
(317, 89, '_edit_lock', '1665731541:1'),
(318, 88, '_thumbnail_id', '55'),
(319, 88, 'doctor_speciality', 'Cardiology Specialist'),
(320, 88, '_doctor_speciality', 'field_6348fcbf1ab0b'),
(321, 88, 'twitter_url', 'https://twitter.com'),
(322, 88, '_twitter_url', 'field_6348fd9a1ab0c'),
(323, 88, 'fb_url', 'https://facebook.com'),
(324, 88, '_fb_url', 'field_6348fe151ab0d'),
(325, 88, 'linkedin_url', 'https://likedin.com'),
(326, 88, '_linkedin_url', 'field_6348fe5c1ab0e'),
(327, 94, '_edit_last', '1'),
(328, 94, '_edit_lock', '1665728557:1'),
(329, 94, '_thumbnail_id', '56'),
(330, 94, 'doctor_speciality', 'Dermatologists'),
(331, 94, '_doctor_speciality', 'field_6348fcbf1ab0b'),
(332, 94, 'twitter_url', 'http://twitter.com'),
(333, 94, '_twitter_url', 'field_6348fd9a1ab0c'),
(334, 94, 'fb_url', 'http://facebook.com'),
(335, 94, '_fb_url', 'field_6348fe151ab0d'),
(336, 94, 'linkedin_url', 'http://linkedin.com'),
(337, 94, '_linkedin_url', 'field_6348fe5c1ab0e'),
(338, 97, '_edit_last', '1'),
(339, 97, '_edit_lock', '1665733907:1'),
(340, 97, '_thumbnail_id', '57'),
(341, 97, 'doctor_speciality', 'Emergency Medicine Specialists'),
(342, 97, '_doctor_speciality', 'field_6348fcbf1ab0b'),
(343, 97, 'twitter_url', 'http://twitter.com'),
(344, 97, '_twitter_url', 'field_6348fd9a1ab0c'),
(345, 97, 'fb_url', 'http://facebook.com'),
(346, 97, '_fb_url', 'field_6348fe151ab0d'),
(347, 97, 'linkedin_url', 'http://linkedin.com'),
(348, 97, '_linkedin_url', 'field_6348fe5c1ab0e'),
(349, 98, '_edit_last', '1'),
(350, 98, '_edit_lock', '1665734327:1'),
(351, 101, '_edit_last', '1'),
(352, 101, '_edit_lock', '1665734814:1'),
(353, 101, 'pricing_amount_per_year', '49'),
(354, 101, '_pricing_amount_per_year', 'field_63490c79d39dd'),
(356, 102, '_edit_last', '1'),
(357, 102, '_edit_lock', '1665734020:1'),
(358, 102, 'pricing_amount_per_year', '99'),
(359, 102, '_pricing_amount_per_year', 'field_63490c79d39dd'),
(360, 102, '_thumbnail_id', '52'),
(361, 103, '_edit_last', '1'),
(362, 103, '_edit_lock', '1665744547:1'),
(363, 103, '_thumbnail_id', '53'),
(364, 103, 'pricing_amount_per_year', '149'),
(365, 103, '_pricing_amount_per_year', 'field_63490c79d39dd'),
(366, 104, '_edit_last', '1'),
(367, 104, '_edit_lock', '1665734002:1'),
(368, 104, 'pricing_amount_per_year', '199'),
(369, 104, '_pricing_amount_per_year', 'field_63490c79d39dd'),
(370, 104, '_thumbnail_id', '54'),
(371, 104, 'package_button_label', 'Apply Now'),
(372, 104, '_package_button_label', 'field_6349108e65592'),
(373, 104, 'button_url', '#'),
(374, 104, '_button_url', 'field_6349111cc462a'),
(375, 104, 'pricing_package_amount', '199'),
(376, 104, '_pricing_package_amount', 'field_63490c79d39dd'),
(377, 104, 'package_type', 'Yearly'),
(378, 104, '_package_type', 'field_63491200282e1'),
(379, 103, 'pricing_package_amount', '149'),
(380, 103, '_pricing_package_amount', 'field_63490c79d39dd'),
(381, 103, 'package_type', 'Monthy'),
(382, 103, '_package_type', 'field_63491200282e1'),
(383, 103, 'package_button_label', 'Apply Now'),
(384, 103, '_package_button_label', 'field_6349108e65592'),
(385, 103, 'button_url', '#'),
(386, 103, '_button_url', 'field_6349111cc462a'),
(387, 102, 'pricing_package_amount', '99'),
(388, 102, '_pricing_package_amount', 'field_63490c79d39dd'),
(389, 102, 'package_type', 'Daily'),
(390, 102, '_package_type', 'field_63491200282e1'),
(391, 102, 'package_button_label', 'Apply Now'),
(392, 102, '_package_button_label', 'field_6349108e65592'),
(393, 102, 'button_url', '#'),
(394, 102, '_button_url', 'field_6349111cc462a'),
(395, 101, 'pricing_package_amount', '49'),
(396, 101, '_pricing_package_amount', 'field_63490c79d39dd'),
(397, 101, 'package_type', 'Monthy'),
(398, 101, '_package_type', 'field_63491200282e1'),
(399, 101, 'package_button_label', 'Apply Now'),
(400, 101, '_package_button_label', 'field_6349108e65592'),
(401, 101, 'button_url', '#'),
(402, 101, '_button_url', 'field_6349111cc462a'),
(403, 101, '_thumbnail_id', '51'),
(404, 109, '_form', '<div class=\"mx-auto\" style=\"width: 100%; max-width: 600px;\">\n    <div class=\"input-group\">\n        [select* select-dropdown id:department class:form-select class:border-primary class:w-25 class:c-field \"Department\" \"Department 1\" \"Department 2\" \"Department 3\"]\n\n        [text* keyword class:form-select class:border-primary class:w-25 class:c-field placeholder \"keyword\"]\n\n        [submit id:appointment_id class:btn class:btn-dark class:border-0 class:w-25 class:py-3 \"Search\"]\n    </div>\n</div>'),
(405, 109, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:141:\"Message Body:\nDepartment: [select-dropdown]\nKeyword: [keyword]\n\n\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(406, 109, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(407, 109, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(408, 109, '_additional_settings', ''),
(409, 109, '_locale', 'en_US'),
(413, 110, '_edit_last', '1'),
(414, 110, '_edit_lock', '1665739116:1'),
(415, 112, '_edit_last', '1'),
(416, 112, '_edit_lock', '1665740832:1'),
(417, 112, '_thumbnail_id', '59'),
(418, 112, 'designation', 'CEO of Google'),
(419, 112, '_designation', 'field_634929ab15f2a'),
(420, 113, '_edit_last', '1'),
(421, 113, '_edit_lock', '1665740623:1'),
(422, 113, '_thumbnail_id', '60'),
(423, 113, 'designation', 'CTO of Medinova'),
(424, 113, '_designation', 'field_634929ab15f2a'),
(425, 114, '_edit_last', '1'),
(426, 114, '_edit_lock', '1665741950:1'),
(427, 114, '_thumbnail_id', '58'),
(428, 114, 'designation', 'Digital Marketer'),
(429, 114, '_designation', 'field_634929ab15f2a'),
(430, 23, '_wp_trash_meta_status', 'draft'),
(431, 23, '_wp_trash_meta_time', '1665742034'),
(432, 23, '_wp_desired_post_slug', ''),
(433, 21, '_wp_trash_meta_status', 'publish'),
(434, 21, '_wp_trash_meta_time', '1665742034'),
(435, 21, '_wp_desired_post_slug', 'testimonial'),
(436, 19, '_wp_trash_meta_status', 'publish'),
(437, 19, '_wp_trash_meta_time', '1665742034'),
(438, 19, '_wp_desired_post_slug', 'the-team'),
(439, 16, '_wp_trash_meta_status', 'publish'),
(440, 16, '_wp_trash_meta_time', '1665742034'),
(441, 16, '_wp_desired_post_slug', 'blog-grid'),
(442, 1, '_wp_trash_meta_status', 'publish'),
(443, 1, '_wp_trash_meta_time', '1665742034'),
(444, 1, '_wp_desired_post_slug', 'hello-world'),
(445, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(446, 116, '_edit_last', '1'),
(447, 116, '_edit_lock', '1665742649:1'),
(450, 116, '_thumbnail_id', '51'),
(453, 119, '_edit_last', '1'),
(454, 119, '_edit_lock', '1665742206:1'),
(455, 119, '_thumbnail_id', '52'),
(460, 121, '_edit_last', '1'),
(461, 121, '_edit_lock', '1665744286:1'),
(467, 123, '_wp_attached_file', '2022/10/blog-3.jpg'),
(468, 123, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2022/10/blog-3.jpg\";s:8:\"filesize\";i:34882;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"blog-3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11465;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"blog-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6514;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(469, 121, '_thumbnail_id', '123'),
(481, 125, '_menu_item_type', 'post_type'),
(482, 125, '_menu_item_menu_item_parent', '0'),
(483, 125, '_menu_item_object_id', '9'),
(484, 125, '_menu_item_object', 'page'),
(485, 125, '_menu_item_target', ''),
(486, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(487, 125, '_menu_item_xfn', ''),
(488, 125, '_menu_item_url', ''),
(490, 126, '_menu_item_type', 'post_type'),
(491, 126, '_menu_item_menu_item_parent', '0'),
(492, 126, '_menu_item_object_id', '33'),
(493, 126, '_menu_item_object', 'page'),
(494, 126, '_menu_item_target', ''),
(495, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 126, '_menu_item_xfn', ''),
(497, 126, '_menu_item_url', ''),
(499, 127, '_menu_item_type', 'post_type'),
(500, 127, '_menu_item_menu_item_parent', '0'),
(501, 127, '_menu_item_object_id', '15'),
(502, 127, '_menu_item_object', 'page'),
(503, 127, '_menu_item_target', ''),
(504, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(505, 127, '_menu_item_xfn', ''),
(506, 127, '_menu_item_url', ''),
(517, 129, '_edit_last', '1'),
(518, 129, '_edit_lock', '1665746123:1'),
(519, 131, '_menu_item_type', 'post_type'),
(520, 131, '_menu_item_menu_item_parent', '0'),
(521, 131, '_menu_item_object_id', '129'),
(522, 131, '_menu_item_object', 'page'),
(523, 131, '_menu_item_target', ''),
(524, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(525, 131, '_menu_item_xfn', ''),
(526, 131, '_menu_item_url', ''),
(528, 132, '_menu_item_type', 'post_type'),
(529, 132, '_menu_item_menu_item_parent', '0'),
(530, 132, '_menu_item_object_id', '31'),
(531, 132, '_menu_item_object', 'page'),
(532, 132, '_menu_item_target', ''),
(533, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(534, 132, '_menu_item_xfn', ''),
(535, 132, '_menu_item_url', ''),
(537, 133, '_wp_trash_meta_status', 'publish'),
(538, 133, '_wp_trash_meta_time', '1665747862'),
(539, 135, '_wp_trash_meta_status', 'publish'),
(540, 135, '_wp_trash_meta_time', '1665747953'),
(541, 137, '_edit_lock', '1665748035:1'),
(542, 137, '_wp_trash_meta_status', 'publish'),
(543, 137, '_wp_trash_meta_time', '1665748064'),
(544, 9, '_wp_page_template', 'page-templates/about.php'),
(545, 31, '_wp_page_template', 'page-templates/homepage.php'),
(547, 42, '_wp_old_date', '2022-10-07'),
(548, 46, '_wp_old_date', '2022-10-07'),
(550, 44, '_wp_old_date', '2022-10-07'),
(551, 48, '_wp_old_date', '2022-10-07'),
(552, 43, '_wp_old_date', '2022-10-07'),
(553, 13, '_wp_page_template', 'page-templates/pricing.php'),
(557, 15, '_wp_page_template', 'page-templates/contact.php'),
(561, 140, '_edit_last', '1'),
(562, 140, '_edit_lock', '1665829098:1'),
(563, 140, '_wp_page_template', 'page-templates/service.php'),
(564, 142, '_menu_item_type', 'post_type'),
(565, 142, '_menu_item_menu_item_parent', '0'),
(566, 142, '_menu_item_object_id', '140'),
(567, 142, '_menu_item_object', 'page'),
(568, 142, '_menu_item_target', ''),
(569, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(570, 142, '_menu_item_xfn', ''),
(571, 142, '_menu_item_url', ''),
(573, 42, '_wp_old_date', '2022-10-14'),
(574, 46, '_wp_old_date', '2022-10-14'),
(575, 44, '_wp_old_date', '2022-10-14'),
(576, 48, '_wp_old_date', '2022-10-14'),
(577, 43, '_wp_old_date', '2022-10-14'),
(578, 144, '_form', '<div class=\"contact-form row g-3\">\n\n    <div class=\"col-12 col-sm-6\">\n        [text* c-name class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Name\"]\n    </div>\n\n\n    <div class=\"col-12 col-sm-6\">\n        [email* c-email class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Email\"]\n    </div>\n\n    <div class=\"col-12\">\n        [text* c-subject class:form-control class:bg-light class:border-0 class:c-field placeholder \"Subject\"]\n    </div>\n\n    <div class=\"col-12\">\n        [textarea c-message class:form-control class:bg-light class:border-0 class:c-field id:cform_message placeholder \"Message\"]\n    </div>\n\n    <div class=\"col-12\">\n     [submit id:cform_id class:btn class:btn-primary class:w-100 class:py-3 \"Send Message\"]\n    </div>\n\n</div>'),
(579, 144, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:178:\"From: [c-name] <[c-email]>\nSubject: [c-subject]\n\nMessage Body:\n\nName: [c-name]\n\nMessage: \n[c-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:19:\"Reply-To: [c-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(580, 144, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <pobitro.me@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(581, 144, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(582, 144, '_additional_settings', ''),
(583, 144, '_locale', 'en_US'),
(589, 145, '_wp_trash_meta_status', 'publish'),
(590, 145, '_wp_trash_meta_time', '1666103966'),
(591, 147, '_wp_trash_meta_status', 'publish'),
(592, 147, '_wp_trash_meta_time', '1666104020'),
(593, 149, '_wp_trash_meta_status', 'publish'),
(594, 149, '_wp_trash_meta_time', '1666104029'),
(595, 151, '_wp_trash_meta_status', 'publish'),
(596, 151, '_wp_trash_meta_time', '1666104040'),
(599, 153, '_wp_trash_meta_status', 'publish'),
(600, 153, '_wp_trash_meta_time', '1666104176'),
(601, 155, '_wp_trash_meta_status', 'publish'),
(602, 155, '_wp_trash_meta_time', '1666104191'),
(603, 157, '_wp_trash_meta_status', 'publish'),
(604, 157, '_wp_trash_meta_time', '1666104392'),
(605, 42, '_wp_old_date', '2022-10-15'),
(606, 46, '_wp_old_date', '2022-10-15'),
(607, 142, '_wp_old_date', '2022-10-15'),
(608, 44, '_wp_old_date', '2022-10-15'),
(609, 48, '_wp_old_date', '2022-10-15'),
(610, 43, '_wp_old_date', '2022-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-10-01 06:52:19', '2022-10-01 06:52:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 0, 'http://localhost/medinova/?p=1', 0, 'post', '', 1),
(2, 1, '2022-10-01 06:52:19', '2022-10-01 06:52:19', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/medinova/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-10-01 06:52:19', '2022-10-01 06:52:19', '', 0, 'http://localhost/medinova/?page_id=2', 0, 'page', '', 0),
(9, 1, '2022-10-02 09:01:43', '2022-10-02 09:01:43', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-10-14 14:33:57', '2022-10-14 14:33:57', '', 0, 'http://localhost/medinova/?page_id=9', 0, 'page', '', 0),
(10, 1, '2022-10-02 09:01:43', '2022-10-02 09:01:43', '', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-10-02 09:01:43', '2022-10-02 09:01:43', '', 9, 'http://localhost/medinova/?p=10', 0, 'revision', '', 0),
(13, 1, '2022-10-02 09:02:00', '2022-10-02 09:02:00', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2022-10-14 15:12:58', '2022-10-14 15:12:58', '', 0, 'http://localhost/medinova/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-10-02 09:02:00', '2022-10-02 09:02:00', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-02 09:02:00', '2022-10-02 09:02:00', '', 13, 'http://localhost/medinova/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-10-02 09:02:27', '2022-10-02 09:02:27', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-10-14 15:17:44', '2022-10-14 15:17:44', '', 0, 'http://localhost/medinova/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-10-02 09:02:55', '2022-10-02 09:02:55', '', 'Blog Grid', '', 'trash', 'open', 'open', '', 'blog-grid__trashed', '', '', '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 0, 'http://localhost/medinova/?p=16', 0, 'post', '', 0),
(17, 1, '2022-10-02 09:02:27', '2022-10-02 09:02:27', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-10-02 09:02:27', '2022-10-02 09:02:27', '', 15, 'http://localhost/medinova/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-10-02 09:02:55', '2022-10-02 09:02:55', '', 'Blog Grid', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-10-02 09:02:55', '2022-10-02 09:02:55', '', 16, 'http://localhost/medinova/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-10-02 09:03:10', '2022-10-02 09:03:10', '', 'The Team', '', 'trash', 'open', 'open', '', 'the-team__trashed', '', '', '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 0, 'http://localhost/medinova/?p=19', 0, 'post', '', 0),
(20, 1, '2022-10-02 09:03:10', '2022-10-02 09:03:10', '', 'The Team', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2022-10-02 09:03:10', '2022-10-02 09:03:10', '', 19, 'http://localhost/medinova/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-10-02 09:03:18', '2022-10-02 09:03:18', '', 'Testimonial', '', 'trash', 'open', 'open', '', 'testimonial__trashed', '', '', '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 0, 'http://localhost/medinova/?p=21', 0, 'post', '', 0),
(22, 1, '2022-10-02 09:03:18', '2022-10-02 09:03:18', '', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-10-02 09:03:18', '2022-10-02 09:03:18', '', 21, 'http://localhost/medinova/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 'Appoinment', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 0, 'http://localhost/medinova/?p=23', 0, 'post', '', 0),
(24, 1, '2022-10-02 09:03:25', '2022-10-02 09:03:25', '', 'Appoinment', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-10-02 09:03:25', '2022-10-02 09:03:25', '', 23, 'http://localhost/medinova/?p=24', 0, 'revision', '', 0),
(31, 1, '2022-10-02 09:04:04', '2022-10-02 09:04:04', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-10-14 14:54:11', '2022-10-14 14:54:11', '', 0, 'http://localhost/medinova/?page_id=31', 0, 'page', '', 0),
(32, 1, '2022-10-02 09:04:04', '2022-10-02 09:04:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-10-02 09:04:04', '2022-10-02 09:04:04', '', 31, 'http://localhost/medinova/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-10-02 09:04:52', '2022-10-02 09:04:52', '', 'Blog Grid', '', 'publish', 'closed', 'closed', '', 'blog-grid', '', '', '2022-10-02 09:04:52', '2022-10-02 09:04:52', '', 0, 'http://localhost/medinova/?page_id=33', 0, 'page', '', 0),
(34, 1, '2022-10-02 09:04:52', '2022-10-02 09:04:52', '', 'Blog Grid', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-10-02 09:04:52', '2022-10-02 09:04:52', '', 33, 'http://localhost/medinova/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-10-02 09:05:01', '2022-10-02 09:05:01', '', 'Testimonial', '', 'publish', 'closed', 'closed', '', 'testimonial', '', '', '2022-10-02 09:05:01', '2022-10-02 09:05:01', '', 0, 'http://localhost/medinova/?page_id=35', 0, 'page', '', 0),
(36, 1, '2022-10-02 09:05:01', '2022-10-02 09:05:01', '', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-10-02 09:05:01', '2022-10-02 09:05:01', '', 35, 'http://localhost/medinova/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-10-02 09:05:15', '2022-10-02 09:05:15', '', 'Appoinment', '', 'publish', 'closed', 'closed', '', 'appoinment', '', '', '2022-10-02 09:05:15', '2022-10-02 09:05:15', '', 0, 'http://localhost/medinova/?page_id=37', 0, 'page', '', 0),
(38, 1, '2022-10-02 09:05:15', '2022-10-02 09:05:15', '', 'Appoinment', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2022-10-02 09:05:15', '2022-10-02 09:05:15', '', 37, 'http://localhost/medinova/?p=38', 0, 'revision', '', 0),
(42, 1, '2022-11-05 06:45:01', '2022-10-02 09:07:08', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2022-11-05 06:45:01', '2022-11-05 06:45:01', '', 0, 'http://localhost/medinova/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2022-11-05 06:45:01', '2022-10-02 09:07:08', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2022-11-05 06:45:01', '2022-11-05 06:45:01', '', 0, 'http://localhost/medinova/?p=43', 6, 'nav_menu_item', '', 0),
(44, 1, '2022-11-05 06:45:01', '2022-10-02 09:07:08', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2022-11-05 06:45:01', '2022-11-05 06:45:01', '', 0, 'http://localhost/medinova/?p=44', 4, 'nav_menu_item', '', 0),
(46, 1, '2022-11-05 06:45:01', '2022-10-02 09:07:08', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2022-11-05 06:45:01', '2022-11-05 06:45:01', '', 0, 'http://localhost/medinova/?p=46', 2, 'nav_menu_item', '', 0),
(48, 1, '2022-11-05 06:45:01', '2022-10-02 09:07:08', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2022-11-05 06:45:01', '2022-11-05 06:45:01', '', 0, 'http://localhost/medinova/?p=48', 5, 'nav_menu_item', '', 0),
(50, 1, '2022-10-02 10:25:57', '2022-10-02 10:25:57', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2022-10-02 10:25:57', '2022-10-02 10:25:57', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 'price-1', '', 'inherit', 'open', 'closed', '', 'price-1', '', '', '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/price-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 'price-2', '', 'inherit', 'open', 'closed', '', 'price-2', '', '', '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/price-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 'price-3', '', 'inherit', 'open', 'closed', '', 'price-3', '', '', '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/price-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 'price-4', '', 'inherit', 'open', 'closed', '', 'price-4', '', '', '2022-10-03 06:18:41', '2022-10-03 06:18:41', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/price-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2022-10-03 06:18:42', '2022-10-03 06:18:42', '', 'team-1', '', 'inherit', 'open', 'closed', '', 'team-1', '', '', '2022-10-03 06:18:42', '2022-10-03 06:18:42', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/team-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2022-10-03 06:18:42', '2022-10-03 06:18:42', '', 'team-2', '', 'inherit', 'open', 'closed', '', 'team-2', '', '', '2022-10-03 06:18:42', '2022-10-03 06:18:42', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/team-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2022-10-03 06:18:42', '2022-10-03 06:18:42', '', 'team-3', '', 'inherit', 'open', 'closed', '', 'team-3', '', '', '2022-10-03 06:18:42', '2022-10-03 06:18:42', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/team-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2022-10-03 06:18:43', '2022-10-03 06:18:43', '', 'testimonial-1', '', 'inherit', 'open', 'closed', '', 'testimonial-1', '', '', '2022-10-03 06:18:43', '2022-10-03 06:18:43', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/testimonial-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2022-10-03 06:18:43', '2022-10-03 06:18:43', '', 'testimonial-2', '', 'inherit', 'open', 'closed', '', 'testimonial-2', '', '', '2022-10-03 06:18:43', '2022-10-03 06:18:43', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/testimonial-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2022-10-03 06:18:43', '2022-10-03 06:18:43', '', 'testimonial-3', '', 'inherit', 'open', 'closed', '', 'testimonial-3', '', '', '2022-10-03 06:18:43', '2022-10-03 06:18:43', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/testimonial-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2022-10-03 06:18:44', '2022-10-03 06:18:44', '', 'user', '', 'inherit', 'open', 'closed', '', 'user', '', '', '2022-10-03 06:18:44', '2022-10-03 06:18:44', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/user.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2022-10-03 06:18:44', '2022-10-03 06:18:44', '', 'about', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2022-10-03 06:18:44', '2022-10-03 06:18:44', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2022-10-03 06:18:44', '2022-10-03 06:18:44', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1', '', '', '2022-10-03 06:18:44', '2022-10-03 06:18:44', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/blog-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2022-10-03 06:18:45', '2022-10-03 06:18:45', '', 'blog-2', '', 'inherit', 'open', 'closed', '', 'blog-2', '', '', '2022-10-03 06:18:45', '2022-10-03 06:18:45', '', 0, 'http://localhost/medinova/wp-content/uploads/2022/10/blog-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2022-10-03 07:54:20', '2022-10-03 07:54:20', 'Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit', 'Emergency Care', '', 'publish', 'closed', 'closed', '', 'emergency-care', '', '', '2022-10-03 10:25:48', '2022-10-03 10:25:48', '', 0, 'http://localhost/medinova/?post_type=services&#038;p=67', 0, 'services', '', 0),
(68, 1, '2022-10-03 07:55:56', '2022-10-03 07:55:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard', 'Operation & Surgery', '', 'publish', 'closed', 'closed', '', 'operation-surgery', '', '', '2022-10-03 10:48:59', '2022-10-03 10:48:59', '', 0, 'http://localhost/medinova/?post_type=services&#038;p=68', 0, 'services', '', 0),
(69, 1, '2022-10-03 07:56:34', '2022-10-03 07:56:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard', 'Outdoor Checkup', '', 'publish', 'closed', 'closed', '', 'outdoor-checkup', '', '', '2022-10-03 10:48:55', '2022-10-03 10:48:55', '', 0, 'http://localhost/medinova/?post_type=services&#038;p=69', 0, 'services', '', 0),
(70, 1, '2022-10-03 07:57:01', '2022-10-03 07:57:01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard', 'Ambulance Service', '', 'publish', 'closed', 'closed', '', 'ambulance-service', '', '', '2022-10-03 10:48:50', '2022-10-03 10:48:50', '', 0, 'http://localhost/medinova/?post_type=services&#038;p=70', 0, 'services', '', 0),
(71, 1, '2022-10-03 07:57:30', '2022-10-03 07:57:30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'Medicine & Pharmacy', '', 'publish', 'closed', 'closed', '', 'medicine-pharmacy', '', '', '2022-10-03 10:48:43', '2022-10-03 10:48:43', '', 0, 'http://localhost/medinova/?post_type=services&#038;p=71', 0, 'services', '', 0),
(72, 1, '2022-10-03 07:57:53', '2022-10-03 07:57:53', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'Blood Testing', '', 'publish', 'closed', 'closed', '', 'blood-testing', '', '', '2022-10-03 10:48:39', '2022-10-03 10:48:39', '', 0, 'http://localhost/medinova/?post_type=services&#038;p=72', 0, 'services', '', 0),
(77, 1, '2022-10-07 15:55:04', '2022-10-07 15:55:04', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 100px !important;\n}', 'medinova', '', 'publish', 'closed', 'closed', '', 'medinova', '', '', '2022-10-18 14:46:32', '2022-10-18 14:46:32', '', 0, 'http://localhost/medinova/2022/10/07/medinova/', 0, 'custom_css', '', 0),
(78, 1, '2022-10-07 15:55:04', '2022-10-07 15:55:04', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-07 15:55:04', '2022-10-07 15:55:04', '', 77, 'http://localhost/medinova/?p=78', 0, 'revision', '', 0),
(80, 1, '2022-10-14 04:20:25', '2022-10-14 04:20:25', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-10-14 04:20:25', '2022-10-14 04:20:25', '', 0, 'http://localhost/medinova/?post_type=wpcf7_contact_form&p=80', 0, 'wpcf7_contact_form', '', 0),
(81, 1, '2022-10-14 04:38:25', '2022-10-14 04:38:25', '<div class=\"appointment-form row g-3\">\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n       [select* dept-dropdown id:department class:form-select class:bg-light class:border-0 class:c-field \"Choose Department\" \"Department 1\" \"Department 2\" \"Department 3\"]\r\n    </div>\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n       [select* dr-dropdown id:doctor class:form-select class:bg-light class:border-0 class:c-field \"Select Doctor\" \"Doctor 1\" \"Doctor 2\" \"Doctor 3\"]\r\n    </div>\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        [text* app-name class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Name\"]\r\n    </div>\r\n\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        [email* app-email class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Email\"]\r\n    </div>\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        [date date-432 class:form-control class:bg-light class:border-0 class:datetimepicker-input class:c-field placeholder \"Date\"]\r\n    </div>\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        [text* app-time class:form-control class:bg-light class:border-0 class:datetimepicker-input class:c-field placeholder \"Time\"]\r\n    </div>\r\n\r\n    <div class=\"col-12\">\r\n     [submit id:appointment_id class:btn class:btn-primary class:w-100 class:py-3 \"Make An Appointment\"]\r\n    </div>\r\n\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\n[_site_admin_email]\nFrom: [app-name] <[app-email]>\r\n\r\nMessage Body:\r\nDepartment: [dept-dropdown]\r\nDoctor: [dr-dropdown]\r\n\r\nName: [app-name]\r\n\r\n[app-time]\r\n[date-432]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [app-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Appointment Form', '', 'publish', 'closed', 'closed', '', 'appointment-form', '', '', '2022-10-18 14:27:49', '2022-10-18 14:27:49', '', 0, 'http://localhost/medinova/?post_type=wpcf7_contact_form&#038;p=81', 0, 'wpcf7_contact_form', '', 0),
(82, 1, '2022-10-14 05:21:32', '2022-10-14 05:21:32', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n.app-dropdown{\\n\\theight: 55px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-14 05:21:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d6f3b58-5d82-4d59-bb61-1d1f1b1cc31e', '', '', '2022-10-14 05:21:32', '2022-10-14 05:21:32', '', 0, 'http://localhost/medinova/2022/10/14/8d6f3b58-5d82-4d59-bb61-1d1f1b1cc31e/', 0, 'customize_changeset', '', 0),
(83, 1, '2022-10-14 05:21:32', '2022-10-14 05:21:32', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n.app-dropdown{\n	height: 55px;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-14 05:21:32', '2022-10-14 05:21:32', '', 77, 'http://localhost/medinova/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-10-14 05:21:44', '2022-10-14 05:21:44', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n/* \\n.app-dropdown{\\n\\theight: 55px;\\n} */\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-14 05:21:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a306a17-2292-491f-bce3-7d206ebe52eb', '', '', '2022-10-14 05:21:44', '2022-10-14 05:21:44', '', 0, 'http://localhost/medinova/2022/10/14/4a306a17-2292-491f-bce3-7d206ebe52eb/', 0, 'customize_changeset', '', 0),
(85, 1, '2022-10-14 05:21:44', '2022-10-14 05:21:44', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n/* \n.app-dropdown{\n	height: 55px;\n} */', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-14 05:21:44', '2022-10-14 05:21:44', '', 77, 'http://localhost/medinova/?p=85', 0, 'revision', '', 0),
(86, 1, '2022-10-14 05:34:46', '2022-10-14 05:34:46', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-14 05:34:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dfb8cd19-889d-4481-88a1-5f466758b409', '', '', '2022-10-14 05:34:46', '2022-10-14 05:34:46', '', 0, 'http://localhost/medinova/2022/10/14/dfb8cd19-889d-4481-88a1-5f466758b409/', 0, 'customize_changeset', '', 0),
(87, 1, '2022-10-14 05:34:46', '2022-10-14 05:34:46', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} ', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-14 05:34:46', '2022-10-14 05:34:46', '', 77, 'http://localhost/medinova/?p=87', 0, 'revision', '', 0),
(88, 1, '2022-10-14 06:15:59', '2022-10-14 06:15:59', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'Jhon Doe', '', 'publish', 'closed', 'closed', '', 'jhon-doe', '', '', '2022-10-14 06:21:42', '2022-10-14 06:21:42', '', 0, 'http://localhost/medinova/?post_type=doctors&#038;p=88', 0, 'doctors', '', 0),
(89, 1, '2022-10-14 06:15:41', '2022-10-14 06:15:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"doctors\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Doctor Information', 'doctor-information', 'publish', 'closed', 'closed', '', 'group_6348fcbee6bd0', '', '', '2022-10-14 06:24:10', '2022-10-14 06:24:10', '', 0, 'http://localhost/medinova/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2022-10-14 06:15:41', '2022-10-14 06:15:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:21:\"Cardiology Specialist\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Doctor Specialty', 'doctor_speciality', 'publish', 'closed', 'closed', '', 'field_6348fcbf1ab0b', '', '', '2022-10-14 06:15:41', '2022-10-14 06:15:41', '', 89, 'http://localhost/medinova/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2022-10-14 06:15:41', '2022-10-14 06:15:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"http://twitter.com\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter URL', 'twitter_url', 'publish', 'closed', 'closed', '', 'field_6348fd9a1ab0c', '', '', '2022-10-14 06:24:10', '2022-10-14 06:24:10', '', 89, 'http://localhost/medinova/?post_type=acf-field&#038;p=91', 1, 'acf-field', '', 0),
(92, 1, '2022-10-14 06:15:41', '2022-10-14 06:15:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:19:\"http://facebook.com\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook URL', 'fb_url', 'publish', 'closed', 'closed', '', 'field_6348fe151ab0d', '', '', '2022-10-14 06:24:10', '2022-10-14 06:24:10', '', 89, 'http://localhost/medinova/?post_type=acf-field&#038;p=92', 2, 'acf-field', '', 0),
(93, 1, '2022-10-14 06:15:41', '2022-10-14 06:15:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:19:\"http://linkedin.com\";s:11:\"placeholder\";s:0:\"\";}', 'Linkedin URL', 'linkedin_url', 'publish', 'closed', 'closed', '', 'field_6348fe5c1ab0e', '', '', '2022-10-14 06:24:10', '2022-10-14 06:24:10', '', 89, 'http://localhost/medinova/?post_type=acf-field&#038;p=93', 3, 'acf-field', '', 0),
(94, 1, '2022-10-14 06:24:58', '2022-10-14 06:24:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'Jane Doe', '', 'publish', 'closed', 'closed', '', 'jane-doe', '', '', '2022-10-14 06:24:58', '2022-10-14 06:24:58', '', 0, 'http://localhost/medinova/?post_type=doctors&#038;p=94', 0, 'doctors', '', 0),
(97, 1, '2022-10-14 06:25:39', '2022-10-14 06:25:39', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Jenny Doe', '', 'publish', 'closed', 'closed', '', 'jenny-doe', '', '', '2022-10-14 06:55:33', '2022-10-14 06:55:33', '', 0, 'http://localhost/medinova/?post_type=doctors&#038;p=97', 0, 'doctors', '', 0),
(98, 1, '2022-10-14 07:17:26', '2022-10-14 07:17:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"package\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Medical Package', 'medical-package', 'publish', 'closed', 'closed', '', 'group_63490c793d182', '', '', '2022-10-14 07:41:18', '2022-10-14 07:41:18', '', 0, 'http://localhost/medinova/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(99, 1, '2022-10-14 07:17:26', '2022-10-14 07:17:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:100;s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Pricing Package Amount', 'pricing_package_amount', 'publish', 'closed', 'closed', '', 'field_63490c79d39dd', '', '', '2022-10-14 07:41:18', '2022-10-14 07:41:18', '', 98, 'http://localhost/medinova/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0),
(101, 1, '2022-10-14 07:19:40', '2022-10-14 07:19:40', 'Emergency Medical Treatment\r\nHighly Experienced Doctors\r\nHighest Success Rate\r\nTelephone Service', 'Pregnancy Care', '', 'publish', 'closed', 'closed', '', 'pregnancy-care', '', '', '2022-10-14 08:01:45', '2022-10-14 08:01:45', '', 0, 'http://localhost/medinova/?post_type=package&#038;p=101', 0, 'package', '', 0),
(102, 1, '2022-10-14 07:21:13', '2022-10-14 07:21:13', 'Emergency Medical Treatment\r\nHighly Experienced Doctors\r\nHighest Success Rate\r\nTelephone Service', 'Health Care', '', 'publish', 'closed', 'closed', '', 'health-care', '', '', '2022-10-14 07:56:01', '2022-10-14 07:56:01', '', 0, 'http://localhost/medinova/?post_type=package&#038;p=102', 0, 'package', '', 0),
(103, 1, '2022-10-14 07:22:13', '2022-10-14 07:22:13', 'Emergency Medical Treatment\r\nHighly Experienced Doctors\r\nHighest Success Rate\r\nTelephone Service', 'Dental Care', '', 'publish', 'closed', 'closed', '', 'dental-care', '', '', '2022-10-14 07:55:32', '2022-10-14 07:55:32', '', 0, 'http://localhost/medinova/?post_type=package&#038;p=103', 0, 'package', '', 0),
(104, 1, '2022-10-14 07:22:46', '2022-10-14 07:22:46', 'Emergency Medical Treatment\r\nHighly Experienced Doctors\r\nHighest Success Rate\r\nTelephone Service', 'Operation & Surgery', '', 'publish', 'closed', 'closed', '', 'operation-surgery', '', '', '2022-10-14 07:55:43', '2022-10-14 07:55:43', '', 0, 'http://localhost/medinova/?post_type=package&#038;p=104', 0, 'package', '', 0),
(105, 1, '2022-10-14 07:34:41', '2022-10-14 07:34:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Apply Now\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Package Button Label', 'package_button_label', 'publish', 'closed', 'closed', '', 'field_6349108e65592', '', '', '2022-10-14 07:41:18', '2022-10-14 07:41:18', '', 98, 'http://localhost/medinova/?post_type=acf-field&#038;p=105', 2, 'acf-field', '', 0),
(106, 1, '2022-10-14 07:37:03', '2022-10-14 07:37:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_6349108e65592\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Button URL', 'button_url', 'publish', 'closed', 'closed', '', 'field_6349111cc462a', '', '', '2022-10-14 07:41:18', '2022-10-14 07:41:18', '', 98, 'http://localhost/medinova/?post_type=acf-field&#038;p=106', 3, 'acf-field', '', 0),
(107, 1, '2022-10-14 07:39:45', '2022-10-14 07:39:45', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_63490c79d39dd\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:6:\"Yearly\";s:6:\"Yearly\";s:6:\"Monthy\";s:6:\"Monthy\";s:5:\"Daily\";s:5:\"Daily\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Package Type', 'package_type', 'publish', 'closed', 'closed', '', 'field_63491200282e1', '', '', '2022-10-14 07:41:18', '2022-10-14 07:41:18', '', 98, 'http://localhost/medinova/?post_type=acf-field&#038;p=107', 1, 'acf-field', '', 0),
(109, 1, '2022-10-14 08:09:22', '2022-10-14 08:09:22', '<div class=\"mx-auto\" style=\"width: 100%; max-width: 600px;\">\r\n    <div class=\"input-group\">\r\n        [select* select-dropdown id:department class:form-select class:border-primary class:w-25 class:c-field \"Department\" \"Department 1\" \"Department 2\" \"Department 3\"]\r\n\r\n        [text* keyword class:form-select class:border-primary class:w-25 class:c-field placeholder \"keyword\"]\r\n\r\n        [submit id:appointment_id class:btn class:btn-dark class:border-0 class:w-25 class:py-3 \"Search\"]\r\n    </div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\n[_site_admin_email]\nMessage Body:\r\nDepartment: [select-dropdown]\r\nKeyword: [keyword]\r\n\r\n\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Search Doctor Form', '', 'publish', 'closed', 'closed', '', 'appointment-form_copy', '', '', '2022-10-18 14:28:53', '2022-10-18 14:28:53', '', 0, 'http://localhost/medinova/?post_type=wpcf7_contact_form&#038;p=109', 0, 'wpcf7_contact_form', '', 0),
(110, 1, '2022-10-14 09:20:09', '2022-10-14 09:20:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Testimonial Fields', 'testimonial-fields', 'publish', 'closed', 'closed', '', 'group_634929ab2421a', '', '', '2022-10-14 09:20:58', '2022-10-14 09:20:58', '', 0, 'http://localhost/medinova/?post_type=acf-field-group&#038;p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2022-10-14 09:20:09', '2022-10-14 09:20:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:10:\"Profession\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Designation', 'designation', 'publish', 'closed', 'closed', '', 'field_634929ab15f2a', '', '', '2022-10-14 09:20:58', '2022-10-14 09:20:58', '', 110, 'http://localhost/medinova/?post_type=acf-field&#038;p=111', 0, 'acf-field', '', 0),
(112, 1, '2022-10-14 09:32:45', '2022-10-14 09:32:45', 'Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat. Erat dolor rebum sit ipsum.', 'Jhon Doe', '', 'publish', 'closed', 'closed', '', 'jhon-doe', '', '', '2022-10-14 09:46:12', '2022-10-14 09:46:12', '', 0, 'http://localhost/medinova/?post_type=testimonial&#038;p=112', 0, 'testimonial', '', 0),
(113, 1, '2022-10-14 09:33:57', '2022-10-14 09:33:57', 'Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat. Erat dolor rebum sit ipsum.', 'Jerry Doe', '', 'publish', 'closed', 'closed', '', 'jerry-doe', '', '', '2022-10-14 09:46:05', '2022-10-14 09:46:05', '', 0, 'http://localhost/medinova/?post_type=testimonial&#038;p=113', 0, 'testimonial', '', 0),
(114, 1, '2022-10-14 09:34:51', '2022-10-14 09:34:51', 'Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat. Erat dolor rebum sit ipsum.', 'Jane Doe', '', 'publish', 'closed', 'closed', '', 'jane-doe', '', '', '2022-10-14 09:48:32', '2022-10-14 09:48:32', '', 0, 'http://localhost/medinova/?post_type=testimonial&#038;p=114', 0, 'testimonial', '', 0),
(115, 1, '2022-10-14 10:07:14', '2022-10-14 10:07:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-10-14 10:07:14', '2022-10-14 10:07:14', '', 1, 'http://localhost/medinova/?p=115', 0, 'revision', '', 0),
(116, 1, '2022-10-14 10:09:58', '2022-10-14 10:09:58', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', \r\n\r\nmaking it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Dolor clita vero elitr sea stet dolor justo  diam', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'publish', 'open', 'open', '', 'dolor-clita-vero-elitr-sea-stet-dolor-justo-diam', '', '', '2022-10-14 10:10:38', '2022-10-14 10:10:38', '', 0, 'http://localhost/medinova/?p=116', 0, 'post', '', 0),
(117, 1, '2022-10-14 10:09:58', '2022-10-14 10:09:58', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', \r\n\r\nmaking it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Dolor clita vero elitr sea stet dolor justo  diam', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2022-10-14 10:09:58', '2022-10-14 10:09:58', '', 116, 'http://localhost/medinova/?p=117', 0, 'revision', '', 0),
(119, 1, '2022-10-14 10:11:59', '2022-10-14 10:11:59', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, \r\n\r\nand a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Lorem ipsum sit dolor amet', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'publish', 'open', 'open', '', 'lorem-ipsum-sit-dolor-amet', '', '', '2022-10-14 10:12:24', '2022-10-14 10:12:24', '', 0, 'http://localhost/medinova/?p=119', 0, 'post', '', 0),
(120, 1, '2022-10-14 10:11:59', '2022-10-14 10:11:59', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, \r\n\r\nand a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Lorem ipsum sit dolor amet', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2022-10-14 10:11:59', '2022-10-14 10:11:59', '', 119, 'http://localhost/medinova/?p=120', 0, 'revision', '', 0),
(121, 1, '2022-10-14 10:13:20', '2022-10-14 10:13:20', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Dolor lorem eos dolor duo et eirmod sea', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'publish', 'open', 'open', '', 'dolor-lorem-eos-dolor-duo-et-eirmod-sea', '', '', '2022-10-14 10:34:52', '2022-10-14 10:34:52', '', 0, 'http://localhost/medinova/?p=121', 0, 'post', '', 0),
(122, 1, '2022-10-14 10:13:20', '2022-10-14 10:13:20', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Dolor lorem eos dolor duo et eirmod sea', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2022-10-14 10:13:20', '2022-10-14 10:13:20', '', 121, 'http://localhost/medinova/?p=122', 0, 'revision', '', 0),
(123, 1, '2022-10-14 10:34:30', '2022-10-14 10:34:30', '', 'blog-3', '', 'inherit', 'open', 'closed', '', 'blog-3', '', '', '2022-10-14 10:34:30', '2022-10-14 10:34:30', '', 121, 'http://localhost/medinova/wp-content/uploads/2022/10/blog-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2022-10-14 11:18:47', '2022-10-14 11:17:06', '', 'About Us', '', 'publish', 'closed', 'closed', '', '125', '', '', '2022-10-14 11:18:47', '2022-10-14 11:18:47', '', 0, 'http://localhost/medinova/?p=125', 2, 'nav_menu_item', '', 0),
(126, 1, '2022-10-14 11:18:47', '2022-10-14 11:17:07', '', 'Latest Blog', '', 'publish', 'closed', 'closed', '', '126', '', '', '2022-10-14 11:18:47', '2022-10-14 11:18:47', '', 0, 'http://localhost/medinova/?p=126', 5, 'nav_menu_item', '', 0),
(127, 1, '2022-10-14 11:18:47', '2022-10-14 11:17:07', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', '127', '', '', '2022-10-14 11:18:47', '2022-10-14 11:18:47', '', 0, 'http://localhost/medinova/?p=127', 6, 'nav_menu_item', '', 0),
(129, 1, '2022-10-14 11:17:26', '2022-10-14 11:17:26', '', 'Meet The Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2022-10-14 11:17:34', '2022-10-14 11:17:34', '', 0, 'http://localhost/medinova/?page_id=129', 0, 'page', '', 0),
(130, 1, '2022-10-14 11:17:26', '2022-10-14 11:17:26', '', 'Meet The Team', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2022-10-14 11:17:26', '2022-10-14 11:17:26', '', 129, 'http://localhost/medinova/?p=130', 0, 'revision', '', 0),
(131, 1, '2022-10-14 11:18:47', '2022-10-14 11:18:47', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2022-10-14 11:18:47', '2022-10-14 11:18:47', '', 0, 'http://localhost/medinova/?p=131', 4, 'nav_menu_item', '', 0),
(132, 1, '2022-10-14 11:18:47', '2022-10-14 11:18:47', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2022-10-14 11:18:47', '2022-10-14 11:18:47', '', 0, 'http://localhost/medinova/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2022-10-14 11:44:22', '2022-10-14 11:44:22', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\nul#menu-footer-menu .nav-item {\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-14 11:44:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4dac8390-c11d-42d8-8980-8be2a9222976', '', '', '2022-10-14 11:44:22', '2022-10-14 11:44:22', '', 0, 'http://localhost/medinova/2022/10/14/4dac8390-c11d-42d8-8980-8be2a9222976/', 0, 'customize_changeset', '', 0),
(134, 1, '2022-10-14 11:44:22', '2022-10-14 11:44:22', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\nul#menu-footer-menu .nav-item {\n    color: #fff;\n    margin-bottom: -10px !important;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-14 11:44:22', '2022-10-14 11:44:22', '', 77, 'http://localhost/medinova/?p=134', 0, 'revision', '', 0),
(135, 1, '2022-10-14 11:45:53', '2022-10-14 11:45:53', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item {\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-14 11:45:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2496ed3f-8c71-4f99-ac20-623c5d6bb1ed', '', '', '2022-10-14 11:45:53', '2022-10-14 11:45:53', '', 0, 'http://localhost/medinova/2022/10/14/2496ed3f-8c71-4f99-ac20-623c5d6bb1ed/', 0, 'customize_changeset', '', 0),
(136, 1, '2022-10-14 11:45:53', '2022-10-14 11:45:53', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item {\n    color: #fff;\n    margin-bottom: -10px !important;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-14 11:45:53', '2022-10-14 11:45:53', '', 77, 'http://localhost/medinova/?p=136', 0, 'revision', '', 0),
(137, 1, '2022-10-14 11:47:44', '2022-10-14 11:47:44', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-14 11:47:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e75b34bc-9e4b-46a6-b241-55cbb8e2a5c9', '', '', '2022-10-14 11:47:44', '2022-10-14 11:47:44', '', 0, 'http://localhost/medinova/?p=137', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(138, 1, '2022-10-14 11:47:44', '2022-10-14 11:47:44', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-14 11:47:44', '2022-10-14 11:47:44', '', 77, 'http://localhost/medinova/?p=138', 0, 'revision', '', 0),
(140, 1, '2022-10-14 15:40:16', '2022-10-14 15:40:16', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2022-10-15 10:20:03', '2022-10-15 10:20:03', '', 0, 'http://localhost/medinova/?page_id=140', 0, 'page', '', 0),
(141, 1, '2022-10-14 15:40:16', '2022-10-14 15:40:16', '', 'Service', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-10-14 15:40:16', '2022-10-14 15:40:16', '', 140, 'http://localhost/medinova/?p=141', 0, 'revision', '', 0),
(142, 1, '2022-11-05 06:45:01', '2022-10-15 10:17:50', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2022-11-05 06:45:01', '2022-11-05 06:45:01', '', 0, 'http://localhost/medinova/?p=142', 3, 'nav_menu_item', '', 0),
(143, 1, '2022-10-15 10:19:51', '2022-10-15 10:19:51', '', 'Services', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-10-15 10:19:51', '2022-10-15 10:19:51', '', 140, 'http://localhost/medinova/?p=143', 0, 'revision', '', 0),
(144, 1, '2022-10-18 14:18:56', '2022-10-18 14:18:56', '<div class=\"contact-form row g-3\">\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        [text* c-name class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Name\"]\r\n    </div>\r\n\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        [email* c-email class:form-control class:bg-light class:border-0 class:c-field placeholder \"Your Email\"]\r\n    </div>\r\n\r\n    <div class=\"col-12\">\r\n        [text* c-subject class:form-control class:bg-light class:border-0 class:c-field placeholder \"Subject\"]\r\n    </div>\r\n\r\n    <div class=\"col-12\">\r\n        [textarea c-message class:form-control class:bg-light class:border-0 class:c-field id:cform_message placeholder \"Message\"]\r\n    </div>\r\n\r\n    <div class=\"col-12\">\r\n     [submit id:cform_id class:btn class:btn-primary class:w-100 class:py-3 \"Send Message\"]\r\n    </div>\r\n\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\n[_site_admin_email]\nFrom: [c-name] <[c-email]>\r\nSubject: [c-subject]\r\n\r\nMessage Body:\r\n\r\nName: [c-name]\r\n\r\nMessage: \r\n[c-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [c-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <pobitro.me@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'contact form', '', 'publish', 'closed', 'closed', '', 'appointment-form_copy-2', '', '', '2022-10-18 14:42:44', '2022-10-18 14:42:44', '', 0, 'http://localhost/medinova/?post_type=wpcf7_contact_form&#038;p=144', 0, 'wpcf7_contact_form', '', 0),
(145, 1, '2022-10-18 14:39:25', '2022-10-18 14:39:25', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_id{\\n\\tmin-height: 400px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:39:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a76e9718-f1a7-442d-8ea6-62a8987382f6', '', '', '2022-10-18 14:39:25', '2022-10-18 14:39:25', '', 0, 'http://localhost/medinova/a76e9718-f1a7-442d-8ea6-62a8987382f6/', 0, 'customize_changeset', '', 0),
(146, 1, '2022-10-18 14:39:25', '2022-10-18 14:39:25', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_id{\n	min-height: 400px;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:39:25', '2022-10-18 14:39:25', '', 77, 'http://localhost/medinova/?p=146', 0, 'revision', '', 0),
(147, 1, '2022-10-18 14:40:20', '2022-10-18 14:40:20', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_message{\\n\\tmin-height: 200px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:40:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '84fc1957-122e-4e40-831a-6b66cf78bccc', '', '', '2022-10-18 14:40:20', '2022-10-18 14:40:20', '', 0, 'http://localhost/medinova/84fc1957-122e-4e40-831a-6b66cf78bccc/', 0, 'customize_changeset', '', 0),
(148, 1, '2022-10-18 14:40:20', '2022-10-18 14:40:20', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 200px;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:40:20', '2022-10-18 14:40:20', '', 77, 'http://localhost/medinova/?p=148', 0, 'revision', '', 0),
(149, 1, '2022-10-18 14:40:29', '2022-10-18 14:40:29', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_message{\\n\\tmin-height: 300px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:40:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b6591324-d757-4bf8-a3cf-df630771c747', '', '', '2022-10-18 14:40:29', '2022-10-18 14:40:29', '', 0, 'http://localhost/medinova/b6591324-d757-4bf8-a3cf-df630771c747/', 0, 'customize_changeset', '', 0),
(150, 1, '2022-10-18 14:40:29', '2022-10-18 14:40:29', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 300px;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:40:29', '2022-10-18 14:40:29', '', 77, 'http://localhost/medinova/?p=150', 0, 'revision', '', 0),
(151, 1, '2022-10-18 14:40:40', '2022-10-18 14:40:40', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_message{\\n\\tmin-height: 300px !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:40:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'edf01eae-a416-4da4-98aa-1590255ce597', '', '', '2022-10-18 14:40:40', '2022-10-18 14:40:40', '', 0, 'http://localhost/medinova/edf01eae-a416-4da4-98aa-1590255ce597/', 0, 'customize_changeset', '', 0),
(152, 1, '2022-10-18 14:40:40', '2022-10-18 14:40:40', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 300px !important;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:40:40', '2022-10-18 14:40:40', '', 77, 'http://localhost/medinova/?p=152', 0, 'revision', '', 0),
(153, 1, '2022-10-18 14:42:56', '2022-10-18 14:42:56', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_message{\\n\\tmin-height: 100px !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:42:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e291a2c4-8abe-4e86-9a35-4f0e2fa956bd', '', '', '2022-10-18 14:42:56', '2022-10-18 14:42:56', '', 0, 'http://localhost/medinova/e291a2c4-8abe-4e86-9a35-4f0e2fa956bd/', 0, 'customize_changeset', '', 0),
(154, 1, '2022-10-18 14:42:56', '2022-10-18 14:42:56', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 100px !important;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:42:56', '2022-10-18 14:42:56', '', 77, 'http://localhost/medinova/?p=154', 0, 'revision', '', 0),
(155, 1, '2022-10-18 14:43:11', '2022-10-18 14:43:11', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_message{\\n\\tmin-height: 200px !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:43:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3407041d-2415-4b19-9fa5-fe9def1a93a9', '', '', '2022-10-18 14:43:11', '2022-10-18 14:43:11', '', 0, 'http://localhost/medinova/3407041d-2415-4b19-9fa5-fe9def1a93a9/', 0, 'customize_changeset', '', 0),
(156, 1, '2022-10-18 14:43:11', '2022-10-18 14:43:11', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 200px !important;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:43:11', '2022-10-18 14:43:11', '', 77, 'http://localhost/medinova/?p=156', 0, 'revision', '', 0),
(157, 1, '2022-10-18 14:46:32', '2022-10-18 14:46:32', '{\n    \"custom_css[medinova]\": {\n        \"value\": \"\\n\\n.menu-primary-menu-container {\\n    margin-left: auto;\\n}\\n\\n\\n.c-field{\\n\\theight: 55px;\\n} \\n\\n\\n/** footer menu **/\\n#menu-footer-menu .nav-item,\\n#menu-footer-menu-1 .nav-item{\\n    color: #fff;\\n    margin-bottom: -10px !important;\\n}\\n\\n\\n\\n#cform_message{\\n\\tmin-height: 100px !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-18 14:46:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4dc2e3f0-b913-4f2c-9c7a-a6702a83dd55', '', '', '2022-10-18 14:46:32', '2022-10-18 14:46:32', '', 0, 'http://localhost/medinova/4dc2e3f0-b913-4f2c-9c7a-a6702a83dd55/', 0, 'customize_changeset', '', 0),
(158, 1, '2022-10-18 14:46:32', '2022-10-18 14:46:32', '\n\n.menu-primary-menu-container {\n    margin-left: auto;\n}\n\n\n.c-field{\n	height: 55px;\n} \n\n\n/** footer menu **/\n#menu-footer-menu .nav-item,\n#menu-footer-menu-1 .nav-item{\n    color: #fff;\n    margin-bottom: -10px !important;\n}\n\n\n\n#cform_message{\n	min-height: 100px !important;\n}', 'medinova', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-10-18 14:46:32', '2022-10-18 14:46:32', '', 77, 'http://localhost/medinova/?p=158', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 1, 0),
(19, 1, 0),
(21, 1, 0),
(23, 1, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(46, 2, 0),
(48, 2, 0),
(116, 1, 0),
(119, 1, 0),
(121, 1, 0),
(125, 3, 0),
(126, 3, 0),
(127, 3, 0),
(131, 3, 0),
(132, 3, 0),
(142, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'medinova'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4f7784b3ee21ae75862798c36c5df75172dbc24002525789fa2d0fdccf3d5f74\";a:4:{s:10:\"expiration\";i:1667803387;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";s:5:\"login\";i:1667630587;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '159'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&posts_list_mode=list&mfold=o'),
(21, 1, 'wp_user-settings-time', '1666105049'),
(22, 1, 'nav_menu_recently_edited', '3'),
(23, 1, 'closedpostboxes_doctors', 'a:0:{}'),
(24, 1, 'metaboxhidden_doctors', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:2:{i:0;s:13:\"trackbacksdiv\";i:1;s:7:\"slugdiv\";}'),
(27, 1, 'edit_page_per_page', '30');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'medinova', '$P$BxRfHM9SNxbG6qnckaXcTzH5MXt.Gz1', 'medinova', 'pobitro.me@gmail.com', 'http://localhost/medinova', '2022-10-01 06:52:19', '', 0, 'medinova');

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1053;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

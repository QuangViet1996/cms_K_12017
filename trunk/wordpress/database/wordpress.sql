-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2017 at 04:40 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-29 05:50:20', '2017-11-29 05:50:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=376 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/wordpress', 'yes'),
(2, 'home', 'http://localhost:82/wordpress', 'yes'),
(3, 'blogname', 'WORDPRESS-TRANNING', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vuamapcankiengan@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:88:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/plugins/akismet/akismet.php";i:2;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
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
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:5:{s:5:"title";s:0:"";s:5:"count";i:1;s:12:"hierarchical";i:1;s:8:"dropdown";i:0;s:6:"number";i:6;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:3;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";i:3;s:10:"archives-2";i:4;s:17:"recent-comments-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1512366621;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512366640;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512368417;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.9";s:12:"last_checked";i:1512358748;}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1512348491;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(176, 'recently_activated', 'a:0:{}', 'yes'),
(180, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(221, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1512356212;s:8:"response";N;}', 'no'),
(278, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1512392040', 'no'),
(279, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(317, '_site_transient_timeout_theme_roots', '1512352589', 'no'),
(318, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(356, '_transient_timeout_plugin_slugs', '1512442612', 'no'),
(357, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:47:"post-tags-and-categories-for-pages/post-tag.php";}', 'no'),
(365, '_transient_timeout_files_d54556c31732f140b66dc6340f6646f2c0bb580d0a666aae80a29a3', '1512360711', 'no'),
(366, '_transient_files_d54556c31732f140b66dc6340f6646f2c0bb580d0a666aae80a29a3', 'a:66:{s:7:"404.php";s:63:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/404.php";s:10:"README.txt";s:66:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/README.txt";s:11:"archive.php";s:67:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/archive.php";s:18:"assets/css/843.css";s:74:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/843.css";s:28:"assets/css/bootstrap.min.css";s:84:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/bootstrap.min.css";s:26:"assets/css/colors-dark.css";s:82:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/colors-dark.css";s:27:"assets/css/editor-style.css";s:83:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/editor-style.css";s:31:"assets/css/font-awesome.min.css";s:87:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/font-awesome.min.css";s:18:"assets/css/ie8.css";s:74:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/ie8.css";s:18:"assets/css/ie9.css";s:74:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/css/ie9.css";s:24:"assets/images/coffee.jpg";s:80:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/coffee.jpg";s:25:"assets/images/divider.png";s:81:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/divider.png";s:26:"assets/images/espresso.jpg";s:82:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/espresso.jpg";s:32:"assets/images/footer-divider.png";s:88:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/footer-divider.png";s:29:"assets/images/footer-logo.png";s:85:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/footer-logo.png";s:24:"assets/images/header.jpg";s:80:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/header.jpg";s:25:"assets/images/payment.png";s:81:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/payment.png";s:26:"assets/images/sandwich.jpg";s:82:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/sandwich.jpg";s:27:"assets/images/svg-icons.svg";s:83:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/images/svg-icons.svg";s:22:"assets/js/bootstrap.js";s:78:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/bootstrap.js";s:26:"assets/js/bootstrap.min.js";s:82:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/bootstrap.min.js";s:31:"assets/js/customize-controls.js";s:87:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/customize-controls.js";s:30:"assets/js/customize-preview.js";s:86:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/customize-preview.js";s:19:"assets/js/global.js";s:75:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/global.js";s:18:"assets/js/html5.js";s:74:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/html5.js";s:26:"assets/js/jquery-1.12.4.js";s:82:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/jquery-1.12.4.js";s:29:"assets/js/jquery-2.1.4.min.js";s:85:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/jquery-2.1.4.min.js";s:28:"assets/js/jquery.scrollTo.js";s:84:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/jquery.scrollTo.js";s:23:"assets/js/navigation.js";s:79:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/navigation.js";s:32:"assets/js/skip-link-focus-fix.js";s:88:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/assets/js/skip-link-focus-fix.js";s:12:"comments.php";s:68:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/comments.php";s:10:"footer.php";s:66:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/footer.php";s:14:"front-page.php";s:70:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/front-page.php";s:13:"functions.php";s:69:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/functions.php";s:10:"header.php";s:66:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/header.php";s:19:"inc/back-compat.php";s:75:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/back-compat.php";s:22:"inc/color-patterns.php";s:78:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/color-patterns.php";s:21:"inc/custom-header.php";s:77:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/custom-header.php";s:18:"inc/customizer.php";s:74:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/customizer.php";s:22:"inc/icon-functions.php";s:78:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/icon-functions.php";s:26:"inc/template-functions.php";s:82:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/template-functions.php";s:21:"inc/template-tags.php";s:77:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/inc/template-tags.php";s:9:"index.php";s:65:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/index.php";s:8:"page.php";s:64:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/page.php";s:7:"rtl.css";s:63:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/rtl.css";s:14:"screenshot.png";s:70:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/screenshot.png";s:10:"search.php";s:66:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/search.php";s:14:"searchform.php";s:70:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/searchform.php";s:11:"sidebar.php";s:67:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/sidebar.php";s:10:"single.php";s:66:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/single.php";s:9:"style.css";s:65:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/style.css";s:40:"template-parts/footer/footer-widgets.php";s:96:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/footer/footer-widgets.php";s:35:"template-parts/footer/site-info.php";s:91:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/footer/site-info.php";s:38:"template-parts/header/header-image.php";s:94:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/header/header-image.php";s:39:"template-parts/header/site-branding.php";s:95:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/header/site-branding.php";s:44:"template-parts/navigation/navigation-top.php";s:100:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/navigation/navigation-top.php";s:49:"template-parts/page/content-front-page-panels.php";s:105:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/page/content-front-page-panels.php";s:42:"template-parts/page/content-front-page.php";s:98:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/page/content-front-page.php";s:36:"template-parts/page/content-page.php";s:92:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/page/content-page.php";s:37:"template-parts/post/content-audio.php";s:93:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-audio.php";s:39:"template-parts/post/content-excerpt.php";s:95:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-excerpt.php";s:39:"template-parts/post/content-gallery.php";s:95:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-gallery.php";s:37:"template-parts/post/content-image.php";s:93:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-image.php";s:36:"template-parts/post/content-none.php";s:92:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-none.php";s:37:"template-parts/post/content-video.php";s:93:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content-video.php";s:31:"template-parts/post/content.php";s:87:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/template-parts/post/content.php";}', 'no'),
(373, '_transient_is_multi_author', '0', 'yes'),
(375, 'category_children', 'a:3:{i:4;a:3:{i:0;i:6;i:1;i:7;i:2;i:8;}i:6;a:1:{i:0;i:9;}i:3;a:1:{i:0;i:10;}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=593 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 6, '_edit_lock', '1511941789:1'),
(3, 6, '_edit_last', '1'),
(4, 8, '_edit_lock', '1511936383:5'),
(5, 9, '_edit_lock', '1511941771:1'),
(6, 9, '_edit_last', '1'),
(7, 10, '_edit_lock', '1511944082:3'),
(8, 10, '_edit_last', '3'),
(9, 12, '_edit_last', '3'),
(10, 12, '_edit_lock', '1511944090:3'),
(11, 14, '_edit_last', '3'),
(12, 14, '_edit_lock', '1511944099:3'),
(13, 16, '_edit_last', '1'),
(14, 16, '_edit_lock', '1511940262:1'),
(15, 18, '_edit_last', '1'),
(16, 18, '_edit_lock', '1511940266:1'),
(17, 20, '_edit_last', '1'),
(18, 20, '_edit_lock', '1511940270:1'),
(19, 22, '_edit_last', '1'),
(20, 22, '_edit_lock', '1511940274:1'),
(21, 24, '_edit_last', '1'),
(22, 24, '_edit_lock', '1511940277:1'),
(23, 26, '_edit_last', '1'),
(24, 26, '_edit_lock', '1511940281:1'),
(25, 29, '_edit_last', '1'),
(26, 29, '_edit_lock', '1511940284:1'),
(27, 28, '_edit_lock', '1511941781:1'),
(28, 28, '_edit_last', '1'),
(29, 31, '_edit_last', '1'),
(30, 31, '_edit_lock', '1511940289:1'),
(31, 33, '_edit_last', '1'),
(32, 33, '_edit_lock', '1511940441:4'),
(33, 37, '_edit_lock', '1511941777:1'),
(34, 37, '_edit_last', '1'),
(35, 38, '_edit_lock', '1511948537:1'),
(36, 38, '_edit_last', '1'),
(37, 39, '_edit_lock', '1511945258:3'),
(38, 39, '_edit_last', '3'),
(39, 40, '_edit_lock', '1511941707:1'),
(40, 40, '_edit_last', '1'),
(41, 42, '_edit_lock', '1511941785:1'),
(42, 1, '_edit_lock', '1511941798:1'),
(43, 42, '_edit_last', '1'),
(44, 43, '_edit_lock', '1511948370:1'),
(45, 43, '_edit_last', '1'),
(46, 44, '_edit_lock', '1511941761:1'),
(47, 44, '_edit_last', '1'),
(48, 46, '_edit_lock', '1511945246:3'),
(49, 46, '_edit_last', '3'),
(50, 48, '_edit_lock', '1511941793:1'),
(51, 48, '_edit_last', '1'),
(52, 50, '_edit_lock', '1511937051:5'),
(53, 2, '_edit_lock', '1511940299:1'),
(89, 84, '_edit_lock', '1511937330:4'),
(96, 87, '_edit_last', '1'),
(97, 87, '_edit_lock', '1511940308:1'),
(244, 2, '_edit_last', '1'),
(245, 111, '_menu_item_type', 'taxonomy'),
(246, 111, '_menu_item_menu_item_parent', '0'),
(247, 111, '_menu_item_object_id', '3'),
(248, 111, '_menu_item_object', 'category'),
(249, 111, '_menu_item_target', ''),
(250, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 111, '_menu_item_xfn', ''),
(252, 111, '_menu_item_url', ''),
(254, 112, '_menu_item_type', 'custom'),
(255, 112, '_menu_item_menu_item_parent', '0'),
(256, 112, '_menu_item_object_id', '112'),
(257, 112, '_menu_item_object', 'custom'),
(258, 112, '_menu_item_target', ''),
(259, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 112, '_menu_item_xfn', ''),
(261, 112, '_menu_item_url', 'http://localhost:82/wordpress/menupage'),
(262, 112, '_menu_item_orphaned', '1511940512'),
(297, 1, '_edit_last', '1'),
(300, 119, '_menu_item_type', 'taxonomy'),
(301, 119, '_menu_item_menu_item_parent', '0'),
(302, 119, '_menu_item_object_id', '4'),
(303, 119, '_menu_item_object', 'category'),
(304, 119, '_menu_item_target', ''),
(305, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(306, 119, '_menu_item_xfn', ''),
(307, 119, '_menu_item_url', ''),
(310, 1, '_wp_desired_post_slug', 'hello-world'),
(311, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(314, 2, '_wp_desired_post_slug', 'sample-page'),
(315, 3, '_wp_trash_meta_status', 'auto-draft'),
(316, 3, '_wp_trash_meta_time', '1512349453'),
(317, 3, '_wp_desired_post_slug', ''),
(318, 4, '_wp_trash_meta_status', 'auto-draft'),
(319, 4, '_wp_trash_meta_time', '1512349453'),
(320, 4, '_wp_desired_post_slug', ''),
(321, 5, '_wp_trash_meta_status', 'auto-draft'),
(322, 5, '_wp_trash_meta_time', '1512349454'),
(323, 5, '_wp_desired_post_slug', ''),
(326, 6, '_wp_desired_post_slug', 'post1'),
(327, 7, '_wp_trash_meta_status', 'auto-draft'),
(328, 7, '_wp_trash_meta_time', '1512349454'),
(329, 7, '_wp_desired_post_slug', ''),
(330, 8, '_wp_trash_meta_status', 'auto-draft'),
(331, 8, '_wp_trash_meta_time', '1512349454'),
(332, 8, '_wp_desired_post_slug', ''),
(335, 9, '_wp_desired_post_slug', 'post-2'),
(338, 10, '_wp_desired_post_slug', 'page-01'),
(341, 12, '_wp_desired_post_slug', 'page-02'),
(344, 14, '_wp_desired_post_slug', 'page-03'),
(347, 16, '_wp_desired_post_slug', 'page-04'),
(350, 18, '_wp_desired_post_slug', 'page-05'),
(353, 20, '_wp_desired_post_slug', 'page-06'),
(356, 22, '_wp_desired_post_slug', 'page-07'),
(359, 24, '_wp_desired_post_slug', 'page-08'),
(362, 26, '_wp_desired_post_slug', 'page-09'),
(365, 28, '_wp_desired_post_slug', 'post-3'),
(368, 29, '_wp_desired_post_slug', 'page-10'),
(371, 31, '_wp_desired_post_slug', 'page-11'),
(374, 33, '_wp_desired_post_slug', 'page-12'),
(375, 36, '_wp_trash_meta_status', 'auto-draft'),
(376, 36, '_wp_trash_meta_time', '1512349456'),
(377, 36, '_wp_desired_post_slug', ''),
(380, 37, '_wp_desired_post_slug', 'post-5'),
(383, 38, '_wp_desired_post_slug', 'post-7'),
(386, 39, '_wp_desired_post_slug', 'post-9'),
(389, 40, '_wp_desired_post_slug', 'post-11'),
(390, 41, '_wp_trash_meta_status', 'auto-draft'),
(391, 41, '_wp_trash_meta_time', '1512349456'),
(392, 41, '_wp_desired_post_slug', ''),
(395, 42, '_wp_desired_post_slug', 'post-4'),
(398, 43, '_wp_desired_post_slug', 'post-6'),
(401, 44, '_wp_desired_post_slug', 'post-8'),
(402, 45, '_wp_trash_meta_status', 'auto-draft'),
(403, 45, '_wp_trash_meta_time', '1512349457'),
(404, 45, '_wp_desired_post_slug', ''),
(407, 46, '_wp_desired_post_slug', 'post-10'),
(408, 47, '_wp_trash_meta_status', 'auto-draft'),
(409, 47, '_wp_trash_meta_time', '1512349457'),
(410, 47, '_wp_desired_post_slug', ''),
(413, 48, '_wp_desired_post_slug', 'post-12'),
(414, 49, '_wp_trash_meta_status', 'auto-draft'),
(415, 49, '_wp_trash_meta_time', '1512349458'),
(416, 49, '_wp_desired_post_slug', ''),
(417, 50, '_wp_trash_meta_status', 'auto-draft'),
(418, 50, '_wp_trash_meta_time', '1512349458'),
(419, 50, '_wp_desired_post_slug', ''),
(420, 51, '_wp_trash_meta_status', 'auto-draft'),
(421, 51, '_wp_trash_meta_time', '1512349458'),
(422, 51, '_wp_desired_post_slug', ''),
(423, 52, '_wp_trash_meta_status', 'auto-draft'),
(424, 52, '_wp_trash_meta_time', '1512349458'),
(425, 52, '_wp_desired_post_slug', ''),
(426, 66, '_wp_trash_meta_status', 'auto-draft'),
(427, 66, '_wp_trash_meta_time', '1512349459'),
(428, 66, '_wp_desired_post_slug', ''),
(429, 73, '_wp_trash_meta_status', 'auto-draft'),
(430, 73, '_wp_trash_meta_time', '1512349459'),
(431, 73, '_wp_desired_post_slug', ''),
(432, 75, '_wp_trash_meta_status', 'auto-draft'),
(433, 75, '_wp_trash_meta_time', '1512349459'),
(434, 75, '_wp_desired_post_slug', ''),
(435, 79, '_wp_trash_meta_status', 'auto-draft'),
(436, 79, '_wp_trash_meta_time', '1512349460'),
(437, 79, '_wp_desired_post_slug', ''),
(438, 84, '_wp_trash_meta_status', 'auto-draft'),
(439, 84, '_wp_trash_meta_time', '1512349460'),
(440, 84, '_wp_desired_post_slug', ''),
(441, 85, '_wp_trash_meta_status', 'auto-draft'),
(442, 85, '_wp_trash_meta_time', '1512349460'),
(443, 85, '_wp_desired_post_slug', ''),
(446, 87, '_wp_desired_post_slug', 'display-page'),
(447, 140, '_edit_last', '7'),
(448, 140, '_edit_lock', '1512355805:7'),
(451, 143, '_edit_last', '7'),
(452, 143, '_edit_lock', '1512349609:7'),
(455, 145, '_edit_last', '7'),
(456, 145, '_edit_lock', '1512349674:7'),
(459, 147, '_edit_last', '7'),
(460, 147, '_edit_lock', '1512357911:7'),
(463, 149, '_edit_last', '7'),
(464, 149, '_edit_lock', '1512349784:7'),
(467, 151, '_edit_last', '7'),
(468, 151, '_edit_lock', '1512349818:7'),
(471, 153, '_edit_last', '7'),
(472, 153, '_edit_lock', '1512354952:7'),
(475, 155, '_edit_last', '7'),
(476, 155, '_edit_lock', '1512357940:7'),
(479, 157, '_edit_last', '7'),
(480, 157, '_edit_lock', '1512349957:7'),
(483, 159, '_edit_last', '7'),
(484, 159, '_edit_lock', '1512349987:7'),
(487, 161, '_edit_last', '7'),
(488, 161, '_edit_lock', '1512355607:7'),
(491, 163, '_edit_last', '7'),
(492, 163, '_edit_lock', '1512350679:7'),
(495, 165, '_edit_last', '7'),
(496, 165, '_edit_lock', '1512357510:7'),
(497, 167, '_edit_last', '7'),
(498, 167, '_edit_lock', '1512350259:7'),
(499, 169, '_edit_last', '7'),
(500, 169, '_edit_lock', '1512350292:7'),
(501, 171, '_edit_last', '7'),
(502, 171, '_edit_lock', '1512350320:7'),
(503, 173, '_edit_last', '7'),
(504, 173, '_edit_lock', '1512350344:7'),
(505, 175, '_edit_last', '7'),
(506, 175, '_edit_lock', '1512350359:7'),
(507, 177, '_edit_last', '7'),
(508, 177, '_edit_lock', '1512350376:7'),
(509, 179, '_edit_last', '7'),
(510, 179, '_edit_lock', '1512350397:7'),
(511, 181, '_edit_last', '7'),
(512, 181, '_edit_lock', '1512350415:7'),
(513, 183, '_edit_last', '7'),
(514, 183, '_edit_lock', '1512357518:7'),
(515, 185, '_edit_last', '7'),
(516, 185, '_edit_lock', '1512350448:7'),
(517, 187, '_edit_last', '7'),
(518, 187, '_edit_lock', '1512350520:7'),
(519, 163, '_wp_trash_meta_status', 'publish'),
(520, 163, '_wp_trash_meta_time', '1512350673'),
(521, 163, '_wp_desired_post_slug', '12-tt-hue-hang-chuc-tieu-thuong-hoang-mang-khi-chu-hui-om-tien-ty-mat-tich'),
(522, 189, '_edit_last', '7'),
(523, 189, '_edit_lock', '1512358748:7'),
(528, 193, '_wp_trash_meta_status', 'publish'),
(529, 193, '_wp_trash_meta_time', '1512350931'),
(554, 153, '_wp_trash_meta_status', 'publish'),
(555, 153, '_wp_trash_meta_time', '1512355096'),
(556, 153, '_wp_desired_post_slug', '7-co-van-an-ninh-my-trung-quoc-nen-manh-tay-voi-trieu-tien'),
(573, 196, '_edit_last', '7'),
(574, 196, '_edit_lock', '1512355812:7'),
(579, 205, '_edit_last', '7'),
(580, 205, '_edit_lock', '1512358390:7'),
(589, 208, '_edit_last', '7'),
(590, 208, '_edit_lock', '1512358534:7');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_overview` varchar(250) DEFAULT NULL,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=210 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_overview`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 5, '2017-11-29 05:50:20', '2017-11-29 05:50:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-12-04 01:04:13', '2017-12-04 01:04:13', '', 0, 'http://localhost:82/wordpress/?p=1', 0, NULL, 'post', '', 1),
(2, 5, '2017-11-29 05:50:20', '2017-11-29 05:50:20', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:82/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'closed', '', 'sample-page__trashed', '', '', '2017-12-04 01:04:13', '2017-12-04 01:04:13', '', 0, 'http://localhost:82/wordpress/?page_id=2', 0, NULL, 'page', '', 0),
(140, 7, '2017-12-04 01:08:17', '2017-12-04 01:08:17', '<div><strong>Lo giá hàng hóa “tát” theo giá điện</strong></div>\r\n<div>Tháng 10 vừa qua, nhà bà Kim Yến (ngụ Q.7, TP.HCM) phải trả tiền điện tổng cộng 870.579 đồng cho mức sử dụng là 395 kWh. Bước sang tháng 12 này, nếu sử dụng cùng số lượng điện như trên thì gia đình bà Kim Yến sẽ phải trả lên gần 930.000 đồng, tăng thêm 60.000 đồng. “Cái tôi sợ hơn là mọi hàng hóa khác cũng sẽ tăng theo giá điện, khi đó tiền chợ hằng ngày bị ảnh hưởng nhiều lần chứ không phải vài chục ngàn đồng riêng tiền điện. Bữa cơm của nhiều người lại nghèo đi”, bà Kim Yến chia sẻ.</div>', '1.Giá điện ''đè'' người tiêu dùng', '', 'publish', 'open', 'open', '', '1-gia-dien-de-nguoi-tieu-dung', '', '', '2017-12-04 02:48:05', '2017-12-04 02:48:05', '', 0, 'http://localhost:82/wordpress/?p=140', 0, 'AAAAAAAAAAAAAAAA', 'post', '', 0),
(142, 7, '2017-12-04 01:08:17', '2017-12-04 01:08:17', '<div><strong>Lo giá hàng hóa “tát” theo giá điện</strong></div>\r\n<div>Tháng 10 vừa qua, nhà bà Kim Yến (ngụ Q.7, TP.HCM) phải trả tiền điện tổng cộng 870.579 đồng cho mức sử dụng là 395 kWh. Bước sang tháng 12 này, nếu sử dụng cùng số lượng điện như trên thì gia đình bà Kim Yến sẽ phải trả lên gần 930.000 đồng, tăng thêm 60.000 đồng. “Cái tôi sợ hơn là mọi hàng hóa khác cũng sẽ tăng theo giá điện, khi đó tiền chợ hằng ngày bị ảnh hưởng nhiều lần chứ không phải vài chục ngàn đồng riêng tiền điện. Bữa cơm của nhiều người lại nghèo đi”, bà Kim Yến chia sẻ.</div>', '1.Giá điện ''đè'' người tiêu dùng', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2017-12-04 01:08:17', '2017-12-04 01:08:17', '', 140, 'http://localhost:82/wordpress/2017/12/04/140-revision-v1/', 0, NULL, 'revision', '', 0),
(143, 7, '2017-12-04 01:09:09', '2017-12-04 01:09:09', '<p class="selectionShareable">Ngày 2/12, Bộ Ngoại giao Triều Tiên tuyên bố Tổng thống Mỹ Donald Trump đang muốn chiến tranh hạt nhân thông qua việc đánh cược hạt nhân cực kỳ nguy hiểm trên bán đảo Triều Tiên. Một ngày sau đó, hãng Thông tấn Trung ương Triều Tiên đăng tải bình luận của báo Rodong Sinmun rằng cuộc tập trận chung giữa Mỹ và Hàn Quốc là hành động khiêu khích nguy hiểm, đẩy khu vực tới bờ vực chiến tranh hạt nhân.</p>\r\n\r\n<div class="selectionShareable" align="center">\r\n<table class="contentimg">\r\n<tbody>\r\n<tr>\r\n<td><a class="swipebox" title="Máy bay tàng hình của Mỹ" href="http://images.vov.vn/w600/uploaded/krb8sl5hrwuly8uzveukg/2017_12_04/21_bpns.jpg"><img class="cms-photo" title="mỹ điều máy bay tàng hình tới tập trận cùng hàn quốc hình 1" src="http://images.vov.vn/w490/uploaded/krb8sl5hrwuly8uzveukg/2017_12_04/21_bpns.jpg" alt="my dieu may bay tang hinh toi tap tran cung han quoc hinh 1" data-photo-original-src="http://images.vov.vn/uploaded/krb8sl5hrwuly8uzveukg/2017_12_04/21_bpns.jpg" data-desc="Máy bay tàng hình của Mỹ" /></a></td>\r\n</tr>\r\n<tr>\r\n<td><em><span class="fig">Máy bay tàng hình của Mỹ</span></em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '2.Mỹ điều máy bay tàng hình tới tập trận cùng Hàn Quốc', '', 'publish', 'open', 'open', '', '2-my-dieu-may-bay-tang-hinh-toi-tap-tran-cung-han-quoc', '', '', '2017-12-04 01:09:09', '2017-12-04 01:09:09', '', 0, 'http://localhost:82/wordpress/?p=143', 0, NULL, 'post', '', 0),
(144, 7, '2017-12-04 01:09:09', '2017-12-04 01:09:09', '<p class="selectionShareable">Ngày 2/12, Bộ Ngoại giao Triều Tiên tuyên bố Tổng thống Mỹ Donald Trump đang muốn chiến tranh hạt nhân thông qua việc đánh cược hạt nhân cực kỳ nguy hiểm trên bán đảo Triều Tiên. Một ngày sau đó, hãng Thông tấn Trung ương Triều Tiên đăng tải bình luận của báo Rodong Sinmun rằng cuộc tập trận chung giữa Mỹ và Hàn Quốc là hành động khiêu khích nguy hiểm, đẩy khu vực tới bờ vực chiến tranh hạt nhân.</p>\r\n\r\n<div class="selectionShareable" align="center">\r\n<table class="contentimg">\r\n<tbody>\r\n<tr>\r\n<td><a class="swipebox" title="Máy bay tàng hình của Mỹ" href="http://images.vov.vn/w600/uploaded/krb8sl5hrwuly8uzveukg/2017_12_04/21_bpns.jpg"><img class="cms-photo" title="mỹ điều máy bay tàng hình tới tập trận cùng hàn quốc hình 1" src="http://images.vov.vn/w490/uploaded/krb8sl5hrwuly8uzveukg/2017_12_04/21_bpns.jpg" alt="my dieu may bay tang hinh toi tap tran cung han quoc hinh 1" data-photo-original-src="http://images.vov.vn/uploaded/krb8sl5hrwuly8uzveukg/2017_12_04/21_bpns.jpg" data-desc="Máy bay tàng hình của Mỹ" /></a></td>\r\n</tr>\r\n<tr>\r\n<td><em><span class="fig">Máy bay tàng hình của Mỹ</span></em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '2.Mỹ điều máy bay tàng hình tới tập trận cùng Hàn Quốc', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-12-04 01:09:09', '2017-12-04 01:09:09', '', 143, 'http://localhost:82/wordpress/2017/12/04/143-revision-v1/', 0, NULL, 'revision', '', 0),
(145, 7, '2017-12-04 01:09:42', '2017-12-04 01:09:42', 'Tháng 8/2017, nhà báo Long Nguyễn, báo<em> Lao Động</em> đưa lên facebook cá nhân dòng trạng thái: <em>“Tương lai đất nước sẽ đi về đâu? Ủng hộ Grab nghĩa là ủng hộ sự lười biếng và trì trệ của giới trẻ. Thay vì động não để khởi nghiệp, để cạnh tranh, để vươn lên, quá đông bạn trẻ giờ đã chọn phương án chạy Grab, coi như một giải pháp an toàn cho hành trình vào đời. Bây giờ thì chưa. Nhưng 10, 20 năm, thậm chí nhiều năm hơn nữa, đất nước này sẽ ngấm…”.</em> Lập tức, quan điểm này nhận được rất nhiều ý kiến bàn luận, trong đó chủ yếu là “gạch, đá”, bởi cho rằng đó là cách nhìn phiến diện, chủ quan, một chiều. Tuy nhiên, ở chiều ngược lại, những người ủng hộ lại thấy đó là một sự khắt khe nhưng sâu rộng cần thiết cho tương lai giới trẻ.', '3.Người trẻ có nên chạy Uber, Grab?', '', 'publish', 'open', 'open', '', '3-nguoi-tre-co-nen-chay-uber-grab', '', '', '2017-12-04 01:09:42', '2017-12-04 01:09:42', '', 0, 'http://localhost:82/wordpress/?p=145', 0, NULL, 'post', '', 0),
(146, 7, '2017-12-04 01:09:42', '2017-12-04 01:09:42', 'Tháng 8/2017, nhà báo Long Nguyễn, báo<em> Lao Động</em> đưa lên facebook cá nhân dòng trạng thái: <em>“Tương lai đất nước sẽ đi về đâu? Ủng hộ Grab nghĩa là ủng hộ sự lười biếng và trì trệ của giới trẻ. Thay vì động não để khởi nghiệp, để cạnh tranh, để vươn lên, quá đông bạn trẻ giờ đã chọn phương án chạy Grab, coi như một giải pháp an toàn cho hành trình vào đời. Bây giờ thì chưa. Nhưng 10, 20 năm, thậm chí nhiều năm hơn nữa, đất nước này sẽ ngấm…”.</em> Lập tức, quan điểm này nhận được rất nhiều ý kiến bàn luận, trong đó chủ yếu là “gạch, đá”, bởi cho rằng đó là cách nhìn phiến diện, chủ quan, một chiều. Tuy nhiên, ở chiều ngược lại, những người ủng hộ lại thấy đó là một sự khắt khe nhưng sâu rộng cần thiết cho tương lai giới trẻ.', '3.Người trẻ có nên chạy Uber, Grab?', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-12-04 01:09:42', '2017-12-04 01:09:42', '', 145, 'http://localhost:82/wordpress/2017/12/04/145-revision-v1/', 0, NULL, 'revision', '', 0),
(147, 7, '2017-12-04 01:11:05', '2017-12-04 01:11:05', '<header class="article-header">\r\n<p class="meta"><span class="author cms-author">MINH NGUYỆT (TTXVN/VIETNAM+)</span> <time datetime="2017-12-04T07:23:20+07:00">04/12/2017 07:23 GMT+7</time><a class="print" href="https://www.vietnamplus.vn/Utilities/Print.aspx?contentid=478059" target="_blank" rel="nofollow noopener"><i class="fa fa-print"></i>Bản in</a></p>\r\n\r\n</header>\r\n<div class="article-body cms-body AdAsia">\r\n<div class="article-photo"><a href="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/troinang.jpg" data-index="0"><img src="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/troinang.jpg" alt="" /></a>Ảnh minh họa. (Nguồn: Vietnam+)</div>\r\n<div id="sas_intextContainer_7105067">\r\n<div id="sas_relDiv_7105067">\r\n<div id="sas_absDiv_7105067">\r\n<div id="sas_player_7105067" class="">\r\n<div class="sas-container sas-linear">\r\n<div class="sas-reset">\r\n<div class="sas-screen sas-floating sas-stretch sas-frame">\r\n<div class="sas-reset"><object id="05035157-b9fb-4959-f033-806585d8b420" data="https://ced-ns.sascdn.com/diff/video/current/libs/swf/standalone-screen.swf" type="application/x-shockwave-flash" name="05035157-b9fb-4959-f033-806585d8b420" width="100%" height="100%" data-mce-fragment="1"></object><video src="https://cdn.adasiaholdings.com/media/sas/video/361859/20170904542.mp4" preload="true" width="300" height="150" data-mce-fragment="1"></video>\r\n<div class="sas-ctrl-clickthrough sas-ctrl-mask"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="sas-resize-triggers"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\nTheo Trung tâm Dự báo Khí tượng Thủy văn Trung ương, do ảnh hưởng của không khí lạnh tăng cường kết hợp với nhiễu động gió Đông trên cao nên từ 4 đến hết ngày 5/12, các tỉnh từ Quảng Bình đến Phú Yên, khu vực Bắc Tây Nguyên có mưa vừa đến mưa to, có nơi mưa rất to.</div>', '4.Miền Bắc nắng ấm, các tỉnh miền Trung mưa rất to gây ngập lụt', '', 'publish', 'open', 'open', '', '4-mien-bac-nang-am-cac-tinh-mien-trung-mua-rat-to-gay-ngap-lut', '', '', '2017-12-04 01:11:05', '2017-12-04 01:11:05', '', 0, 'http://localhost:82/wordpress/?p=147', 0, NULL, 'post', '', 0),
(148, 7, '2017-12-04 01:11:05', '2017-12-04 01:11:05', '<header class="article-header">\r\n<p class="meta"><span class="author cms-author">MINH NGUYỆT (TTXVN/VIETNAM+)</span> <time datetime="2017-12-04T07:23:20+07:00">04/12/2017 07:23 GMT+7</time><a class="print" href="https://www.vietnamplus.vn/Utilities/Print.aspx?contentid=478059" target="_blank" rel="nofollow noopener"><i class="fa fa-print"></i>Bản in</a></p>\r\n\r\n</header>\r\n<div class="article-body cms-body AdAsia">\r\n<div class="article-photo"><a href="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/troinang.jpg" data-index="0"><img src="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/troinang.jpg" alt="" /></a>Ảnh minh họa. (Nguồn: Vietnam+)</div>\r\n<div id="sas_intextContainer_7105067">\r\n<div id="sas_relDiv_7105067">\r\n<div id="sas_absDiv_7105067">\r\n<div id="sas_player_7105067" class="">\r\n<div class="sas-container sas-linear">\r\n<div class="sas-reset">\r\n<div class="sas-screen sas-floating sas-stretch sas-frame">\r\n<div class="sas-reset"><object id="05035157-b9fb-4959-f033-806585d8b420" data="https://ced-ns.sascdn.com/diff/video/current/libs/swf/standalone-screen.swf" type="application/x-shockwave-flash" name="05035157-b9fb-4959-f033-806585d8b420" width="100%" height="100%" data-mce-fragment="1"></object><video src="https://cdn.adasiaholdings.com/media/sas/video/361859/20170904542.mp4" preload="true" width="300" height="150" data-mce-fragment="1"></video>\r\n<div class="sas-ctrl-clickthrough sas-ctrl-mask"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="sas-resize-triggers"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\nTheo Trung tâm Dự báo Khí tượng Thủy văn Trung ương, do ảnh hưởng của không khí lạnh tăng cường kết hợp với nhiễu động gió Đông trên cao nên từ 4 đến hết ngày 5/12, các tỉnh từ Quảng Bình đến Phú Yên, khu vực Bắc Tây Nguyên có mưa vừa đến mưa to, có nơi mưa rất to.</div>', '4.Miền Bắc nắng ấm, các tỉnh miền Trung mưa rất to gây ngập lụt', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2017-12-04 01:11:05', '2017-12-04 01:11:05', '', 147, 'http://localhost:82/wordpress/2017/12/04/147-revision-v1/', 0, NULL, 'revision', '', 0),
(149, 7, '2017-12-04 01:12:06', '2017-12-04 01:12:06', '<div>Tối ngày 3-12, sau khi nhận được tin báo, lực lượng công an Phường Bắc Lý (TP Đồng Hới, tỉnh <a class="cms-relate" href="http://plo.vn/tags/UXXhuqNuZyBCw6xuaA==/quang-binh.html" rel="">Quảng Bình</a>) đến hiện trường để bảo vệ hiện trường, điều tra vụ việc người dân phát hiện một phần chân người bị chôn <a class="cms-relate" href="http://plo.vn/tags/IGTGsOG7m2kgbuG7gW4gbmjDoA==/duoi-nen-nha.html" rel="">dưới nền nhà</a> tại số nhà 48 đường Trường Chinh.</div>\r\n<p class="item-photo" align="center"><a class="photo" href="http://image.plo.vn/w800/uploaded/nguyendo/2017_12_04/xac-nguoi-1_ltpi.jpg" data-desc="Ngôi nhà nơi xảy ra vụ việc." data-index="1"><img class="cms-photo" src="http://image.plo.vn/w800/uploaded/nguyendo/2017_12_04/xac-nguoi-1_ltpi.jpg" alt="Phát hiện một phần thi thể người dưới nền nhà - ảnh 1" data-photo-original-src="http://image.plo.vn/w800/uploaded/nguyendo/2017_12_04/xac-nguoi-1_ltpi.jpg" /></a>\r\n<em class="image_caption"><em>Ngôi nhà nơi xảy ra vụ việc.</em></em></p>\r\n<p align="center">Các nhân kể lại, khoảng 17 giờ 30 chiều cùng ngày, một số công nhân đang thi công đào phá lớp nền nhà cũ để cải tạo lại, đào xuống khoảng 30 cm trước hiên nhà thì tá hỏa khi thấy một phần xương chân người còn mặc nguyên quần vải lộ ra nên báo ngay cho chủ nhà cùng lực lượng chức năng.</p>', '5.Phát hiện một phần thi thể người dưới nền nhà', '', 'publish', 'open', 'open', '', '5-phat-hien-mot-phan-thi-the-nguoi-duoi-nen-nha', '', '', '2017-12-04 01:12:06', '2017-12-04 01:12:06', '', 0, 'http://localhost:82/wordpress/?p=149', 0, NULL, 'post', '', 0),
(150, 7, '2017-12-04 01:12:06', '2017-12-04 01:12:06', '<div>Tối ngày 3-12, sau khi nhận được tin báo, lực lượng công an Phường Bắc Lý (TP Đồng Hới, tỉnh <a class="cms-relate" href="http://plo.vn/tags/UXXhuqNuZyBCw6xuaA==/quang-binh.html" rel="">Quảng Bình</a>) đến hiện trường để bảo vệ hiện trường, điều tra vụ việc người dân phát hiện một phần chân người bị chôn <a class="cms-relate" href="http://plo.vn/tags/IGTGsOG7m2kgbuG7gW4gbmjDoA==/duoi-nen-nha.html" rel="">dưới nền nhà</a> tại số nhà 48 đường Trường Chinh.</div>\r\n<p class="item-photo" align="center"><a class="photo" href="http://image.plo.vn/w800/uploaded/nguyendo/2017_12_04/xac-nguoi-1_ltpi.jpg" data-desc="Ngôi nhà nơi xảy ra vụ việc." data-index="1"><img class="cms-photo" src="http://image.plo.vn/w800/uploaded/nguyendo/2017_12_04/xac-nguoi-1_ltpi.jpg" alt="Phát hiện một phần thi thể người dưới nền nhà - ảnh 1" data-photo-original-src="http://image.plo.vn/w800/uploaded/nguyendo/2017_12_04/xac-nguoi-1_ltpi.jpg" /></a>\r\n<em class="image_caption"><em>Ngôi nhà nơi xảy ra vụ việc.</em></em></p>\r\n<p align="center">Các nhân kể lại, khoảng 17 giờ 30 chiều cùng ngày, một số công nhân đang thi công đào phá lớp nền nhà cũ để cải tạo lại, đào xuống khoảng 30 cm trước hiên nhà thì tá hỏa khi thấy một phần xương chân người còn mặc nguyên quần vải lộ ra nên báo ngay cho chủ nhà cùng lực lượng chức năng.</p>', '5.Phát hiện một phần thi thể người dưới nền nhà', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2017-12-04 01:12:06', '2017-12-04 01:12:06', '', 149, 'http://localhost:82/wordpress/2017/12/04/149-revision-v1/', 0, NULL, 'revision', '', 0),
(151, 7, '2017-12-04 01:12:40', '2017-12-04 01:12:40', '<b>Không tin lời dọa đập ĐTDĐ của cảnh sát trật tự, chàng trai bị tát sấp mặt; tổ lái chạy mô tô bị 3 thanh niên cầm gạch ném, đánh hội đồng ở Đà Nẵng; phẫn nộ kẻ nhỏ hóa chất Trung Quốc làm mít chín, thơm ngon rồi bán trên Sài Gòn. Đó là 3 trong những clip hot nhất ngày.</b>', '6.Không tin lời dọa đập ĐTDĐ của cảnh sát trật tự, chàng trai bị tát sấp mặt', '', 'publish', 'open', 'open', '', '6-khong-tin-loi-doa-dap-dtdd-cua-canh-sat-trat-tu-chang-trai-bi-tat-sap-mat', '', '', '2017-12-04 01:12:40', '2017-12-04 01:12:40', '', 0, 'http://localhost:82/wordpress/?p=151', 0, NULL, 'post', '', 0),
(152, 7, '2017-12-04 01:12:40', '2017-12-04 01:12:40', '<b>Không tin lời dọa đập ĐTDĐ của cảnh sát trật tự, chàng trai bị tát sấp mặt; tổ lái chạy mô tô bị 3 thanh niên cầm gạch ném, đánh hội đồng ở Đà Nẵng; phẫn nộ kẻ nhỏ hóa chất Trung Quốc làm mít chín, thơm ngon rồi bán trên Sài Gòn. Đó là 3 trong những clip hot nhất ngày.</b>', '6.Không tin lời dọa đập ĐTDĐ của cảnh sát trật tự, chàng trai bị tát sấp mặt', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2017-12-04 01:12:40', '2017-12-04 01:12:40', '', 151, 'http://localhost:82/wordpress/2017/12/04/151-revision-v1/', 0, NULL, 'revision', '', 0),
(153, 7, '2017-12-04 01:13:27', '2017-12-04 01:13:27', '<div class="breadcrumb"><span style="font-size: 1.5rem;">Cố vấn an ninh Mỹ: Trung Quốc nên ‘mạnh tay’ với Triều Tiên</span></div>\r\n<div id="main-content-container" class="main-content"><section class="main-article clearfix"><header class="article-hdr">\r\n<div class="meta clearfix">\r\n<div class="pull-left meta-info"><span class="author cms-author">NGỌC ÁNH</span><time>04/12/2017 - 07:09</time><span class="comment-count">0</span></div>\r\n</div>\r\n<div class="article-avatar cms-body">\r\n\r\n<img class="img-responsive cms-photo" title="" src="http://image.ngaynay.vn/645x431/Uploaded/ngocanh/2017_12_04/171102143630_h_r_mcmaster_november_2_2017_02_super_tease_TCGH.jpg" alt="" width="645" data-photo-original-src="http://image.ngaynay.vn/Uploaded/ngocanh/2017_12_04/171102143630_h_r_mcmaster_november_2_2017_02_super_tease_TCGH.jpg" />\r\n\r\n</div>\r\n<div class="summary cms-desc">\r\n<div>(Ngày Nay) - Cố vấn an ninh của Nhà Trắng, ông McMaster cho biết hôm thứ bảy (3/12) rằng Triều Tiên là "mối đe dọa lớn nhất đối với Mỹ" và khả năng chiến tranh với quốc gia này ngày càng tăng cao.</div>\r\n</div>\r\n</header></section></div>', '7.Cố vấn an ninh Mỹ: Trung Quốc nên ‘mạnh tay’ với Triều Tiên', '', 'trash', 'open', 'open', '', '7-co-van-an-ninh-my-trung-quoc-nen-manh-tay-voi-trieu-tien__trashed', '', '', '2017-12-04 02:38:16', '2017-12-04 02:38:16', '', 0, 'http://localhost:82/wordpress/?p=153', 0, NULL, 'post', '', 0),
(154, 7, '2017-12-04 01:13:27', '2017-12-04 01:13:27', '<div class="breadcrumb"><a class="" title="Trang chủ" href="http://ngaynay.vn/">Trang chủ </a> <a class="current" title="Thế giới" href="http://ngaynay.vn/the-gioi/">Thế giới</a></div>\r\n<div id="main-content-container" class="main-content"><section class="main-article clearfix"><header class="article-hdr">\r\n<h1 class="article-title cms-title">Cố vấn an ninh Mỹ: Trung Quốc nên ‘mạnh tay’ với Triều Tiên</h1>\r\n<div class="meta clearfix">\r\n<div class="pull-left meta-info"><span class="author cms-author">NGỌC ÁNH</span><time>04/12/2017 - 07:09</time><span class="comment-count">0</span></div>\r\n</div>\r\n<div class="article-avatar cms-body">\r\n\r\n<img class="img-responsive cms-photo" title="" src="http://image.ngaynay.vn/645x431/Uploaded/ngocanh/2017_12_04/171102143630_h_r_mcmaster_november_2_2017_02_super_tease_TCGH.jpg" alt="" width="645" data-photo-original-src="http://image.ngaynay.vn/Uploaded/ngocanh/2017_12_04/171102143630_h_r_mcmaster_november_2_2017_02_super_tease_TCGH.jpg" />\r\n\r\n</div>\r\n<div class="summary cms-desc">\r\n<div>(Ngày Nay) - Cố vấn an ninh của Nhà Trắng, ông McMaster cho biết hôm thứ bảy (3/12) rằng Triều Tiên là "mối đe dọa lớn nhất đối với Mỹ" và khả năng chiến tranh với quốc gia này ngày càng tăng cao.</div>\r\n</div>\r\n</header></section></div>', '7.Cố vấn an ninh Mỹ: Trung Quốc nên ‘mạnh tay’ với Triều Tiên', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-12-04 01:13:27', '2017-12-04 01:13:27', '', 153, 'http://localhost:82/wordpress/2017/12/04/153-revision-v1/', 0, NULL, 'revision', '', 0),
(155, 7, '2017-12-04 01:14:11', '2017-12-04 01:14:11', 'rên khắp thế giới, các thị trấn và thành phố đang trang hoàng đường phố, nhà cửa với ánh đèn, hoa lá, cây thông Noel và tổ chức tất cả các loại hoạt động trong dịp lễ.\r\n\r\nNhưng tất cả các đồ trang trí màu sắc trên thế giới cũng không thể cạnh tranh với những nét quyến rũ kỳ diệu của Quartier Petit Champlain ở thành phố Quebec, Canada.\r\n\r\n<img class="alignnone size-full wp-image-1874757 aligncenter" src="https://img.saostar.vn/w500/2017/12/04/1874747/c2.jpg" alt="" width="519" />\r\n\r\nĐó là gần như là một xứ sở thần tiên có thật ở Bắc Mỹ. Khu phố này được Yelp xếp hạng 5 sao vì sở hữu các con phố cho những “bức ảnh hoàn hảo”, cửa hàng mua sắm và nhà hàng.\r\n\r\n<!--more-->\r\n\r\nMột cư dân mạng cho hay đó là “một địa điểm kỳ diệu giống như <em>Whoville</em> trong bộ phim của Grinch”. Hãy nhìn vào bức ảnh và bạn chắc chắn sẽ đồng ý.\r\n\r\n<img class="alignnone size-full wp-image-1874759" src="https://img.saostar.vn/w600/2017/12/04/1874747/c3.jpg" alt="" width="796" />', '8.Vẻ đẹp như phim Giáng sinh của một ngôi làng ở Canada', '', 'publish', 'open', 'open', '', '8-ve-dep-nhu-phim-giang-sinh-cua-mot-ngoi-lang-o-canada', '', '', '2017-12-04 01:14:11', '2017-12-04 01:14:11', '', 0, 'http://localhost:82/wordpress/?p=155', 0, NULL, 'post', '', 0),
(156, 7, '2017-12-04 01:14:11', '2017-12-04 01:14:11', 'rên khắp thế giới, các thị trấn và thành phố đang trang hoàng đường phố, nhà cửa với ánh đèn, hoa lá, cây thông Noel và tổ chức tất cả các loại hoạt động trong dịp lễ.\r\n\r\nNhưng tất cả các đồ trang trí màu sắc trên thế giới cũng không thể cạnh tranh với những nét quyến rũ kỳ diệu của Quartier Petit Champlain ở thành phố Quebec, Canada.\r\n\r\n<img class="alignnone size-full wp-image-1874757 aligncenter" src="https://img.saostar.vn/w500/2017/12/04/1874747/c2.jpg" alt="" width="519" />\r\n\r\nĐó là gần như là một xứ sở thần tiên có thật ở Bắc Mỹ. Khu phố này được Yelp xếp hạng 5 sao vì sở hữu các con phố cho những “bức ảnh hoàn hảo”, cửa hàng mua sắm và nhà hàng.\r\n\r\n<!--more-->\r\n\r\nMột cư dân mạng cho hay đó là “một địa điểm kỳ diệu giống như <em>Whoville</em> trong bộ phim của Grinch”. Hãy nhìn vào bức ảnh và bạn chắc chắn sẽ đồng ý.\r\n\r\n<img class="alignnone size-full wp-image-1874759" src="https://img.saostar.vn/w600/2017/12/04/1874747/c3.jpg" alt="" width="796" />', '8.Vẻ đẹp như phim Giáng sinh của một ngôi làng ở Canada', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-12-04 01:14:11', '2017-12-04 01:14:11', '', 155, 'http://localhost:82/wordpress/2017/12/04/155-revision-v1/', 0, NULL, 'revision', '', 0),
(157, 7, '2017-12-04 01:14:57', '2017-12-04 01:14:57', '<p class="the-article-summary cms-desc">Khói lửa bốc lên cuồn cuộn tại căn nhà trên đường Lạc Long Quân, TP.HCM, lúc sáng sớm khiến 3 mẹ con tử vong.</p>\r\n\r\n<div class="the-article-body cms-body">\r\n\r\nThông tin ban đầu, khoảng 5h15 ngày 4/12, người dân nhìn thấy lửa bùng phát tại căn nhà ở địa chỉ 161D Lạc Long Quân phường 3, quận 11, nên hô hoán. Nhiều người tìm cách dập lửa nhưng không thành. Lửa bén nhanh, nhanh chóng bao trùm cả căn nhà.\r\n\r\nNhận tin báo, lực lượng PCCC quận 11 đã điều động nhiều xe chữa cháy cùng hàng chục cán bộ, chiến sĩ đến hiện trường, triển khai dập lửa.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w660/Uploaded/zxgorz/2017_12_04/trai2.jpg" alt="Ba me con tu vong trong can nha chay o Sai Gon hinh anh 1" width="720" height="540" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '9.Ba mẹ con tử vong trong căn nhà cháy ở Sài Gòn', '', 'publish', 'open', 'open', '', '9-ba-me-con-tu-vong-trong-can-nha-chay-o-sai-gon', '', '', '2017-12-04 01:14:57', '2017-12-04 01:14:57', '', 0, 'http://localhost:82/wordpress/?p=157', 0, NULL, 'post', '', 0),
(158, 7, '2017-12-04 01:14:57', '2017-12-04 01:14:57', '<p class="the-article-summary cms-desc">Khói lửa bốc lên cuồn cuộn tại căn nhà trên đường Lạc Long Quân, TP.HCM, lúc sáng sớm khiến 3 mẹ con tử vong.</p>\r\n\r\n<div class="the-article-body cms-body">\r\n\r\nThông tin ban đầu, khoảng 5h15 ngày 4/12, người dân nhìn thấy lửa bùng phát tại căn nhà ở địa chỉ 161D Lạc Long Quân phường 3, quận 11, nên hô hoán. Nhiều người tìm cách dập lửa nhưng không thành. Lửa bén nhanh, nhanh chóng bao trùm cả căn nhà.\r\n\r\nNhận tin báo, lực lượng PCCC quận 11 đã điều động nhiều xe chữa cháy cùng hàng chục cán bộ, chiến sĩ đến hiện trường, triển khai dập lửa.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w660/Uploaded/zxgorz/2017_12_04/trai2.jpg" alt="Ba me con tu vong trong can nha chay o Sai Gon hinh anh 1" width="720" height="540" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '9.Ba mẹ con tử vong trong căn nhà cháy ở Sài Gòn', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-12-04 01:14:57', '2017-12-04 01:14:57', '', 157, 'http://localhost:82/wordpress/2017/12/04/157-revision-v1/', 0, NULL, 'revision', '', 0),
(159, 7, '2017-12-04 01:15:30', '2017-12-04 01:15:30', 'Năm 2017, Triều Tiên phóng tên lửa với tần suất chưa từng có, gồm 3 lần thử ICBM và 2 lần bắn tên lửa bay qua bầu trời Nhật Bản gây quan ngại cho cộng đồng quốc tế.', '10.Những vụ phóng tên lửa gây chấn động của Triều Tiên', '', 'publish', 'open', 'open', '', '10-nhung-vu-phong-ten-lua-gay-chan-dong-cua-trieu-tien', '', '', '2017-12-04 01:15:30', '2017-12-04 01:15:30', '', 0, 'http://localhost:82/wordpress/?p=159', 0, NULL, 'post', '', 0),
(160, 7, '2017-12-04 01:15:30', '2017-12-04 01:15:30', 'Năm 2017, Triều Tiên phóng tên lửa với tần suất chưa từng có, gồm 3 lần thử ICBM và 2 lần bắn tên lửa bay qua bầu trời Nhật Bản gây quan ngại cho cộng đồng quốc tế.', '10.Những vụ phóng tên lửa gây chấn động của Triều Tiên', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2017-12-04 01:15:30', '2017-12-04 01:15:30', '', 159, 'http://localhost:82/wordpress/2017/12/04/159-revision-v1/', 0, NULL, 'revision', '', 0),
(161, 7, '2017-12-04 01:16:01', '2017-12-04 01:16:01', 'Theo công ty kiểm tra tín hiệu không dây Cellular Insights cho biết, họ đã sử dụng thiết bị đo lường chuyên nghiệp được trang bị bốn ăng-ten Vivaldi để mô phỏng hiệu suất LTE ở những khoảng cách khác nhau từ tháp di động với các mô hình iPhone X dùng chip modem của Qualcomm và Intel.\r\n\r\n<span class="img-share"><span id="shareImage-0" class="shareImage"><img src="http://streaming1.danviet.vn/images/2014/share-fb.gif" alt="" width="67" height="20" /> <span title=""><img src="http://streaming1.danviet.vn/images/2014/share-gg.gif" alt="" width="67" height="20" /></span></span><img class="news-image" title="Tốc độ LTE trên iPhone X dùng chip Qualcomm vượt trội so với Intel hình ảnh 1" src="http://streaming1.danviet.vn/upload/4-2017/images/2017-12-03/3-1512300838-width660height372.jpg" alt="toc do lte tren iphone x dung chip qualcomm vuot troi so voi intel hinh anh 1" width="100%" /></span>\r\n\r\n<!--more-->\r\n\r\nCellular Insights bắt đầu với tín hiệu LTE từ mức -85 dBm mạnh mẽ và dần dần giảm mức công suất để mô phỏng việc di chuyển xa một tháp di động vốn có tín hiệu yếu hơn cho đến khi modem bị mất kết nối di động.\r\n\r\nThử nghiệm được thực hiện trên dải LTE Band 4 vốn sử dụng bởi các nhà mạng lớn tại Mỹ, trừ Sprint, cũng như Canada và một phần khu vực Mỹ Latinh. Kết quả cho thấy, iPhone X với modem Intel cho tốc độ tải xuống LTE thấp hơn so với iPhone X với modem Qualcomm.', '11.Tốc độ LTE trên iPhone X dùng chip Qualcomm vượt trội so với Intel', '', 'publish', 'open', 'open', '', '11-toc-do-lte-tren-iphone-x-dung-chip-qualcomm-vuot-troi-so-voi-intel', '', '', '2017-12-04 02:45:28', '2017-12-04 02:45:28', '', 0, 'http://localhost:82/wordpress/?p=161', 0, ' 11111111111111111111', 'post', '', 0),
(162, 7, '2017-12-04 01:16:01', '2017-12-04 01:16:01', 'Theo công ty kiểm tra tín hiệu không dây Cellular Insights cho biết, họ đã sử dụng thiết bị đo lường chuyên nghiệp được trang bị bốn ăng-ten Vivaldi để mô phỏng hiệu suất LTE ở những khoảng cách khác nhau từ tháp di động với các mô hình iPhone X dùng chip modem của Qualcomm và Intel.\r\n\r\n<span class="img-share"><span id="shareImage-0" class="shareImage"><img src="http://streaming1.danviet.vn/images/2014/share-fb.gif" alt="" width="67" height="20" /> <span title=""><img src="http://streaming1.danviet.vn/images/2014/share-gg.gif" alt="" width="67" height="20" /></span></span><img class="news-image" title="Tốc độ LTE trên iPhone X dùng chip Qualcomm vượt trội so với Intel hình ảnh 1" src="http://streaming1.danviet.vn/upload/4-2017/images/2017-12-03/3-1512300838-width660height372.jpg" alt="toc do lte tren iphone x dung chip qualcomm vuot troi so voi intel hinh anh 1" width="100%" /></span>\r\n\r\n<!--more-->\r\n\r\nCellular Insights bắt đầu với tín hiệu LTE từ mức -85 dBm mạnh mẽ và dần dần giảm mức công suất để mô phỏng việc di chuyển xa một tháp di động vốn có tín hiệu yếu hơn cho đến khi modem bị mất kết nối di động.\r\n\r\nThử nghiệm được thực hiện trên dải LTE Band 4 vốn sử dụng bởi các nhà mạng lớn tại Mỹ, trừ Sprint, cũng như Canada và một phần khu vực Mỹ Latinh. Kết quả cho thấy, iPhone X với modem Intel cho tốc độ tải xuống LTE thấp hơn so với iPhone X với modem Qualcomm.', '11.Tốc độ LTE trên iPhone X dùng chip Qualcomm vượt trội so với Intel', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2017-12-04 01:16:01', '2017-12-04 01:16:01', '', 161, 'http://localhost:82/wordpress/2017/12/04/161-revision-v1/', 0, NULL, 'revision', '', 0),
(163, 7, '2017-12-04 01:16:29', '2017-12-04 01:16:29', 'Ông Vỹ thông tin, bà T. tổ chức <em>thu hụi</em> tại <em>chợ Cống</em> đã nhiều năm nay và được các <em>tiểu thương</em> rất tin tưởng vì làm ăn uy tín. Tuy nhiên, nhiều ngày nay các tiểu thương khi tìm đến nhà bà T. thì thấy nhà cửa bà T. luôn khóa kín. Qua dò hỏi thông tin, các tiểu thương hết sức hoang mang khi biết bà T. đã cùng chồng và 2 người con bí mật rời nhà vào miền Nam sinh sống.\r\n<table class="content_image">\r\n<tbody>\r\n<tr>\r\n<td><img class="cms-photo" src="http://image.toquoc.vn/cw660/uploaded/lechung/2017_12_03/toquocvn_vohui_roae.jpg" alt="TT - Huế: Hàng chục tiểu thương hoang mang khi chủ hụi ôm tiền tỷ “mất tích” - ảnh 1" data-photo-original-src="http://static.toquoc.vn/uploaded/lechung/2017_12_03/toquocvn_vohui_roae.jpg" /><span class="note_images cms-photo-caption">Hàng chục tiểu thương tại chợ Cống đồng loạt có đơn tố cáo bà T. ôm tiền hụi bỏ trốn.</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nCho đến thời điểm hiện tại, số tiểu thương buôn bán tại chợ Cống có đơn gửi đến Công an phường Xuân Phú tố cáo hàng chục người đã bị bà T. <em>chiếm đoạt</em> tiền hụi. Người ít thì bị chiếm đoạt vài chục triệu đồng, người nhiều thì lên đến hàng trăm triệu đồng.', '12.TT - Huế: Hàng chục tiểu thương hoang mang khi chủ hụi ôm tiền tỷ “mất tích”', '', 'trash', 'open', 'open', '', '12-tt-hue-hang-chuc-tieu-thuong-hoang-mang-khi-chu-hui-om-tien-ty-mat-tich__trashed', '', '', '2017-12-04 01:24:33', '2017-12-04 01:24:33', '', 0, 'http://localhost:82/wordpress/?p=163', 0, NULL, 'post', '', 0),
(164, 7, '2017-12-04 01:16:29', '2017-12-04 01:16:29', 'Ông Vỹ thông tin, bà T. tổ chức <em>thu hụi</em> tại <em>chợ Cống</em> đã nhiều năm nay và được các <em>tiểu thương</em> rất tin tưởng vì làm ăn uy tín. Tuy nhiên, nhiều ngày nay các tiểu thương khi tìm đến nhà bà T. thì thấy nhà cửa bà T. luôn khóa kín. Qua dò hỏi thông tin, các tiểu thương hết sức hoang mang khi biết bà T. đã cùng chồng và 2 người con bí mật rời nhà vào miền Nam sinh sống.\r\n<table class="content_image">\r\n<tbody>\r\n<tr>\r\n<td><img class="cms-photo" src="http://image.toquoc.vn/cw660/uploaded/lechung/2017_12_03/toquocvn_vohui_roae.jpg" alt="TT - Huế: Hàng chục tiểu thương hoang mang khi chủ hụi ôm tiền tỷ “mất tích” - ảnh 1" data-photo-original-src="http://static.toquoc.vn/uploaded/lechung/2017_12_03/toquocvn_vohui_roae.jpg" /><span class="note_images cms-photo-caption">Hàng chục tiểu thương tại chợ Cống đồng loạt có đơn tố cáo bà T. ôm tiền hụi bỏ trốn.</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nCho đến thời điểm hiện tại, số tiểu thương buôn bán tại chợ Cống có đơn gửi đến Công an phường Xuân Phú tố cáo hàng chục người đã bị bà T. <em>chiếm đoạt</em> tiền hụi. Người ít thì bị chiếm đoạt vài chục triệu đồng, người nhiều thì lên đến hàng trăm triệu đồng.', '12.TT - Huế: Hàng chục tiểu thương hoang mang khi chủ hụi ôm tiền tỷ “mất tích”', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-12-04 01:16:29', '2017-12-04 01:16:29', '', 163, 'http://localhost:82/wordpress/2017/12/04/163-revision-v1/', 0, NULL, 'revision', '', 0),
(165, 7, '2017-12-04 01:19:35', '2017-12-04 01:19:35', 'fffffffffffffffffffffffffffff', '1.pages1', '', 'publish', 'closed', 'closed', '', '1-pages1', '', '', '2017-12-04 02:48:47', '2017-12-04 02:48:47', '', 0, 'http://localhost:82/wordpress/?page_id=165', 0, '   111111111121998414781378462', 'page', '', 0),
(166, 7, '2017-12-04 01:19:35', '2017-12-04 01:19:35', 'fffffffffffffffffffffffffffff', '1.pages1', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2017-12-04 01:19:35', '2017-12-04 01:19:35', '', 165, 'http://localhost:82/wordpress/2017/12/04/165-revision-v1/', 0, NULL, 'revision', '', 0),
(167, 7, '2017-12-04 01:20:01', '2017-12-04 01:20:01', '<strong>thu hàng tỷ đồng tiền hụi rồi bỏ trốn.</strong>', '2.pages2', '', 'publish', 'closed', 'closed', '', '2-pages2', '', '', '2017-12-04 01:20:01', '2017-12-04 01:20:01', '', 0, 'http://localhost:82/wordpress/?page_id=167', 0, NULL, 'page', '', 0),
(168, 7, '2017-12-04 01:20:01', '2017-12-04 01:20:01', '<strong>thu hàng tỷ đồng tiền hụi rồi bỏ trốn.</strong>', '2.pages2', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2017-12-04 01:20:01', '2017-12-04 01:20:01', '', 167, 'http://localhost:82/wordpress/2017/12/04/167-revision-v1/', 0, NULL, 'revision', '', 0),
(169, 7, '2017-12-04 01:20:30', '2017-12-04 01:20:30', 'Phát biểu khi tham dự Diễn đàn Quốc phòng Mỹ Reagan tại Valley, bang California, ông Pompeo nhận định: “Tôi cho rằng những nội dung Tổng thống Trump đăng trên tài khoản Twitter của ông ấy thực sự tạo ảnh hưởng tới khả năng của chúng ta để hiểu được điều gì đang xảy ra ở những nơi khác trên thế giới”.', '3.pages3', '', 'publish', 'closed', 'closed', '', '3-pages3', '', '', '2017-12-04 01:20:30', '2017-12-04 01:20:30', '', 0, 'http://localhost:82/wordpress/?page_id=169', 0, NULL, 'page', '', 0),
(170, 7, '2017-12-04 01:20:30', '2017-12-04 01:20:30', 'Phát biểu khi tham dự Diễn đàn Quốc phòng Mỹ Reagan tại Valley, bang California, ông Pompeo nhận định: “Tôi cho rằng những nội dung Tổng thống Trump đăng trên tài khoản Twitter của ông ấy thực sự tạo ảnh hưởng tới khả năng của chúng ta để hiểu được điều gì đang xảy ra ở những nơi khác trên thế giới”.', '3.pages3', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2017-12-04 01:20:30', '2017-12-04 01:20:30', '', 169, 'http://localhost:82/wordpress/2017/12/04/169-revision-v1/', 0, NULL, 'revision', '', 0),
(171, 7, '2017-12-04 01:21:02', '2017-12-04 01:21:02', 'Phản ứng từ đối thủ của chúng ta liên quan tới những bài đăng đó giúp ta hiểu được vấn đề về kiểm soát và chỉ thị. Những ai đã xem nội dung nào cũng như phương thức mà các nội dung này được quan tâm trên khắp thế giới”, ông Pompeo cho hay.', '4.pages4', '', 'publish', 'closed', 'closed', '', '4-pages4', '', '', '2017-12-04 01:21:02', '2017-12-04 01:21:02', '', 0, 'http://localhost:82/wordpress/?page_id=171', 0, NULL, 'page', '', 0),
(172, 7, '2017-12-04 01:21:02', '2017-12-04 01:21:02', 'Phản ứng từ đối thủ của chúng ta liên quan tới những bài đăng đó giúp ta hiểu được vấn đề về kiểm soát và chỉ thị. Những ai đã xem nội dung nào cũng như phương thức mà các nội dung này được quan tâm trên khắp thế giới”, ông Pompeo cho hay.', '4.pages4', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2017-12-04 01:21:02', '2017-12-04 01:21:02', '', 171, 'http://localhost:82/wordpress/2017/12/04/171-revision-v1/', 0, NULL, 'revision', '', 0),
(173, 7, '2017-12-04 01:21:23', '2017-12-04 01:21:23', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">Sau khi tổ chức Nhà nước Hồi giáo (IS) tự xưng chịu nhiều thất bại tại Syria và Iraq, các nhà phân tích đã đưa ra cảnh báo rằng IS 2.0</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '5.pages5', '', 'publish', 'closed', 'closed', '', '5-pages5', '', '', '2017-12-04 01:21:23', '2017-12-04 01:21:23', '', 0, 'http://localhost:82/wordpress/?page_id=173', 0, NULL, 'page', '', 0),
(174, 7, '2017-12-04 01:21:23', '2017-12-04 01:21:23', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">Sau khi tổ chức Nhà nước Hồi giáo (IS) tự xưng chịu nhiều thất bại tại Syria và Iraq, các nhà phân tích đã đưa ra cảnh báo rằng IS 2.0</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '5.pages5', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2017-12-04 01:21:23', '2017-12-04 01:21:23', '', 173, 'http://localhost:82/wordpress/2017/12/04/173-revision-v1/', 0, NULL, 'revision', '', 0),
(175, 7, '2017-12-04 01:21:41', '2017-12-04 01:21:41', 'hhhhhhhhhhhhh', '6.pages6', '', 'publish', 'closed', 'closed', '', '6-pages6', '', '', '2017-12-04 01:21:41', '2017-12-04 01:21:41', '', 0, 'http://localhost:82/wordpress/?page_id=175', 0, NULL, 'page', '', 0),
(176, 7, '2017-12-04 01:21:41', '2017-12-04 01:21:41', 'hhhhhhhhhhhhh', '6.pages6', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-12-04 01:21:41', '2017-12-04 01:21:41', '', 175, 'http://localhost:82/wordpress/2017/12/04/175-revision-v1/', 0, NULL, 'revision', '', 0),
(177, 7, '2017-12-04 01:21:58', '2017-12-04 01:21:58', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">Hai du khách Mỹ đã bị bắt giữ tại Thái Lan sau khi đăng ảnh khoe mông ngay trước một ngôi đền Phật giáo nổi tiếng tại Bangkok.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '7.pages7', '', 'publish', 'closed', 'closed', '', '7-pages7', '', '', '2017-12-04 01:21:58', '2017-12-04 01:21:58', '', 0, 'http://localhost:82/wordpress/?page_id=177', 0, NULL, 'page', '', 0),
(178, 7, '2017-12-04 01:21:58', '2017-12-04 01:21:58', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">Hai du khách Mỹ đã bị bắt giữ tại Thái Lan sau khi đăng ảnh khoe mông ngay trước một ngôi đền Phật giáo nổi tiếng tại Bangkok.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '7.pages7', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2017-12-04 01:21:58', '2017-12-04 01:21:58', '', 177, 'http://localhost:82/wordpress/2017/12/04/177-revision-v1/', 0, NULL, 'revision', '', 0),
(179, 7, '2017-12-04 01:22:14', '2017-12-04 01:22:14', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">hằm thúc đẩy phong trào tập luyện môn bóng bàn, góp phần nâng cao sức khỏe, kết nối cộng đồng người Việt</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '8.pages8', '', 'publish', 'closed', 'closed', '', '8-pages8', '', '', '2017-12-04 01:22:14', '2017-12-04 01:22:14', '', 0, 'http://localhost:82/wordpress/?page_id=179', 0, NULL, 'page', '', 0),
(180, 7, '2017-12-04 01:22:14', '2017-12-04 01:22:14', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">hằm thúc đẩy phong trào tập luyện môn bóng bàn, góp phần nâng cao sức khỏe, kết nối cộng đồng người Việt</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '8.pages8', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2017-12-04 01:22:14', '2017-12-04 01:22:14', '', 179, 'http://localhost:82/wordpress/2017/12/04/179-revision-v1/', 0, NULL, 'revision', '', 0),
(181, 7, '2017-12-04 01:22:38', '2017-12-04 01:22:38', '<div id="plhMain_NewsDetail1_divNewsOther" class="news">\r\n<ul class="tk01">\r\n 	<li class="other">Ngày 3/12, thượng nghị sĩ đảng Cộng hòa Mỹ Lindsey Graham đã hối thúc Lầu Năm Góc bắt đầu đưa người thân của binh sĩ nước này ra khỏi Hàn Quốc, đồng thời cho rằng cuộc xung đột với Triều Tiên đang trở nên cận kề hơn.</li>\r\n</ul>\r\n</div>\r\n&nbsp;', '9.pages9', '', 'publish', 'closed', 'closed', '', '9-pages9', '', '', '2017-12-04 01:22:38', '2017-12-04 01:22:38', '', 0, 'http://localhost:82/wordpress/?page_id=181', 0, NULL, 'page', '', 0),
(182, 7, '2017-12-04 01:22:38', '2017-12-04 01:22:38', '<div id="plhMain_NewsDetail1_divNewsOther" class="news">\r\n<ul class="tk01">\r\n 	<li class="other">Ngày 3/12, thượng nghị sĩ đảng Cộng hòa Mỹ Lindsey Graham đã hối thúc Lầu Năm Góc bắt đầu đưa người thân của binh sĩ nước này ra khỏi Hàn Quốc, đồng thời cho rằng cuộc xung đột với Triều Tiên đang trở nên cận kề hơn.</li>\r\n</ul>\r\n</div>\r\n&nbsp;', '9.pages9', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2017-12-04 01:22:38', '2017-12-04 01:22:38', '', 181, 'http://localhost:82/wordpress/2017/12/04/181-revision-v1/', 0, NULL, 'revision', '', 0),
(183, 7, '2017-12-04 01:22:56', '2017-12-04 01:22:56', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">đã diễn ra giải bóng bàn "INCENTRA OPEN 2017".</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '10.pages10', '', 'publish', 'closed', 'closed', '', '10-pages10', '', '', '2017-12-04 02:48:51', '2017-12-04 02:48:51', '', 0, 'http://localhost:82/wordpress/?page_id=183', 0, ' AAAAAAAAAAAAAAAA', 'page', '', 0),
(184, 7, '2017-12-04 01:22:56', '2017-12-04 01:22:56', '<div class="rightbar">\r\n<div class="boxcategory">\r\n<ul>\r\n 	<li class="hotcategory">đã diễn ra giải bóng bàn "INCENTRA OPEN 2017".</li>\r\n</ul>\r\n</div>\r\n</div>\r\n&nbsp;', '10.pages10', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2017-12-04 01:22:56', '2017-12-04 01:22:56', '', 183, 'http://localhost:82/wordpress/2017/12/04/183-revision-v1/', 0, NULL, 'revision', '', 0),
(185, 7, '2017-12-04 01:23:10', '2017-12-04 01:23:10', 'gjjsgfjfgdgdfsfdgghshrbvffbfds', '11.pages11', '', 'publish', 'closed', 'closed', '', '11-pages11', '', '', '2017-12-04 01:23:10', '2017-12-04 01:23:10', '', 0, 'http://localhost:82/wordpress/?page_id=185', 0, NULL, 'page', '', 0),
(186, 7, '2017-12-04 01:23:10', '2017-12-04 01:23:10', 'gjjsgfjfgdgdfsfdgghshrbvffbfds', '11.pages11', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2017-12-04 01:23:10', '2017-12-04 01:23:10', '', 185, 'http://localhost:82/wordpress/2017/12/04/185-revision-v1/', 0, NULL, 'revision', '', 0),
(187, 7, '2017-12-04 01:23:37', '2017-12-04 01:23:37', 'Theo Tân hoa xã, trong một tuyên bố, Bộ Quốc phòng Nga cho biết các máy bay ném bom chiến lược của nước này đã tiếp tục không kích các phần tử khủng bố thuộc tổ chức Nhà nước Hồi giáo (IS) tự xưng ở Syria ngày 3/12.', '12.pages12', '', 'publish', 'closed', 'closed', '', '12-pages12', '', '', '2017-12-04 01:23:37', '2017-12-04 01:23:37', '', 0, 'http://localhost:82/wordpress/?page_id=187', 0, NULL, 'page', '', 0),
(188, 7, '2017-12-04 01:23:37', '2017-12-04 01:23:37', 'Theo Tân hoa xã, trong một tuyên bố, Bộ Quốc phòng Nga cho biết các máy bay ném bom chiến lược của nước này đã tiếp tục không kích các phần tử khủng bố thuộc tổ chức Nhà nước Hồi giáo (IS) tự xưng ở Syria ngày 3/12.', '12.pages12', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2017-12-04 01:23:37', '2017-12-04 01:23:37', '', 187, 'http://localhost:82/wordpress/2017/12/04/187-revision-v1/', 0, NULL, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_overview`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(189, 7, '2017-12-04 01:25:11', '2017-12-04 01:25:11', 'heo Tân hoa xã, trong một tuyên bố, Bộ Quốc phòng Nga cho biết các máy bay ném bom chiến lược của nước này đã tiếp tục không kích các phần tử khủng bố thuộc tổ chức Nhà nước Hồi giáo (IS) tự xưng ở Syria ngày 3/12.\r\n\r\n<a href="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" data-index="0"><img src="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" alt="" /></a>\r\n<!--more-->\r\nTheo Bộ Quốc phòng Nga, 6 máy bay ném bom tầm xa Tu-22M3 đã cất cánh từ Nga và phá hủy các kho đạn dược, thiết bị và các thành trì của IS ở khu vực Đông Nam của tỉnh Deir al-Zour.\r\n\r\nCác máy bay này được sự yểm trợ của các máy bay chiến đấu Su-30SM của Nga từ căn cứ không quân Hmeymim ở Syria.', '12.Máy bay ném bom tầm xa Nga oanh tạc kho đạn dược IS ở Deir al-Zour', 'hgjhugkjljkl;kluyiuiu', 'publish', 'open', 'open', '', '12-may-bay-nem-bom-tam-xa-nga-oanh-tac-kho-dan-duoc-is-o-deir-al-zour', '', '', '2017-12-04 02:57:25', '2017-12-04 02:57:25', '', 0, 'http://localhost:82/wordpress/?p=189', 0, ' AAAAAAAA', 'post', '', 0),
(190, 7, '2017-12-04 01:25:11', '2017-12-04 01:25:11', 'heo Tân hoa xã, trong một tuyên bố, Bộ Quốc phòng Nga cho biết các máy bay ném bom chiến lược của nước này đã tiếp tục không kích các phần tử khủng bố thuộc tổ chức Nhà nước Hồi giáo (IS) tự xưng ở Syria ngày 3/12.\r\n\r\n<a href="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" data-index="0"><img src="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" alt="" /></a>\r\n<!--more-->\r\nTheo Bộ Quốc phòng Nga, 6 máy bay ném bom tầm xa Tu-22M3 đã cất cánh từ Nga và phá hủy các kho đạn dược, thiết bị và các thành trì của IS ở khu vực Đông Nam của tỉnh Deir al-Zour.\r\n\r\nCác máy bay này được sự yểm trợ của các máy bay chiến đấu Su-30SM của Nga từ căn cứ không quân Hmeymim ở Syria.', '12.Máy bay ném bom tầm xa Nga oanh tạc kho đạn dược IS ở Deir al-Zour', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-12-04 01:25:11', '2017-12-04 01:25:11', '', 189, 'http://localhost:82/wordpress/2017/12/04/189-revision-v1/', 0, NULL, 'revision', '', 0),
(191, 7, '2017-12-04 01:26:49', '2017-12-04 01:26:49', 'Ông Vỹ thông tin, bà T. tổ chức <em>thu hụi</em> tại <em>chợ Cống</em> đã nhiều năm nay và được các <em>tiểu thương</em> rất tin tưởng vì làm ăn uy tín. Tuy nhiên, nhiều ngày nay các tiểu thương khi tìm đến nhà bà T. thì thấy nhà cửa bà T. luôn khóa kín. Qua dò hỏi thông tin, các tiểu thương hết sức hoang mang khi biết bà T. đã cùng chồng và 2 người con bí mật rời nhà vào miền Nam sinh sống.\r\n<table class="content_image">\r\n<tbody>\r\n<tr>\r\n<td><img class="cms-photo" src="http://image.toquoc.vn/cw660/uploaded/lechung/2017_12_03/toquocvn_vohui_roae.jpg" alt="TT - Huế: Hàng chục tiểu thương hoang mang khi chủ hụi ôm tiền tỷ “mất tích” - ảnh 1" data-photo-original-src="http://static.toquoc.vn/uploaded/lechung/2017_12_03/toquocvn_vohui_roae.jpg" /><span class="note_images cms-photo-caption">Hàng chục tiểu thương tại chợ Cống đồng loạt có đơn tố cáo bà T. ôm tiền hụi bỏ trốn.</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nCho đến thời điểm hiện tại, số tiểu thương buôn bán tại chợ Cống có đơn gửi đến Công an phường Xuân Phú tố cáo hàng chục người đã bị bà T. <em>chiếm đoạt</em> tiền hụi. Người ít thì bị chiếm đoạt vài chục triệu đồng, người nhiều thì lên đến hàng trăm triệu đồng.', '12.TT - Huế: Hàng chục tiểu thương hoang mang khi chủ hụi ôm tiền tỷ “mất tích”', '', 'inherit', 'closed', 'closed', '', '163-autosave-v1', '', '', '2017-12-04 01:26:49', '2017-12-04 01:26:49', '', 163, 'http://localhost:82/wordpress/2017/12/04/163-autosave-v1/', 0, NULL, 'revision', '', 0),
(193, 7, '2017-12-04 01:28:51', '2017-12-04 01:28:51', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjowO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "624128b88409d2b63285dac038bc7e89"\n        },\n        "type": "option",\n        "user_id": 7\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '223262d5-696a-42b5-81d7-ab254957dd85', '', '', '2017-12-04 01:28:51', '2017-12-04 01:28:51', '', 0, 'http://localhost:82/wordpress/2017/12/04/223262d5-696a-42b5-81d7-ab254957dd85/', 0, NULL, 'customize_changeset', '', 0),
(194, 7, '2017-12-04 02:23:44', '2017-12-04 02:23:44', 'heo Tân hoa xã, trong một tuyên bố, Bộ Quốc phòng Nga cho biết các máy bay ném bom chiến lược của nước này đã tiếp tục không kích các phần tử khủng bố thuộc tổ chức Nhà nước Hồi giáo (IS) tự xưng ở Syria ngày 3/12.\r\n\r\n<a href="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" data-index="0"><img src="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" alt="" /></a>\r\n<!--more-->\r\nTheo Bộ Quốc phòng Nga, 6 máy bay ném bom tầm xa Tu-22M3 đã cất cánh từ Nga và phá hủy các kho đạn dược, thiết bị và các thành trì của IS ở khu vực Đông Nam của tỉnh Deir al-Zour.\r\n\r\nCác máy bay này được sự yểm trợ của các máy bay chiến đấu Su-30SM của Nga từ căn cứ không quân Hmeymim ở Syria.', '12.Máy bay ném bom tầm xa Nga oanh tạc kho đạn dược IS ở Deir al-Zour', '', 'inherit', 'closed', 'closed', '', '189-autosave-v1', '', '', '2017-12-04 02:23:44', '2017-12-04 02:23:44', '', 189, 'http://localhost:82/wordpress/2017/12/04/189-autosave-v1/', 0, NULL, 'revision', '', 0),
(195, 7, '2017-12-04 02:35:36', '2017-12-04 02:35:36', '<div class="breadcrumb"><span style="font-size: 1.5rem;">Cố vấn an ninh Mỹ: Trung Quốc nên ‘mạnh tay’ với Triều Tiên</span></div>\r\n<div id="main-content-container" class="main-content"><section class="main-article clearfix"><header class="article-hdr">\r\n<div class="meta clearfix">\r\n<div class="pull-left meta-info"><span class="author cms-author">NGỌC ÁNH</span><time>04/12/2017 - 07:09</time><span class="comment-count">0</span></div>\r\n</div>\r\n<div class="article-avatar cms-body">\r\n\r\n<img class="img-responsive cms-photo" title="" src="http://image.ngaynay.vn/645x431/Uploaded/ngocanh/2017_12_04/171102143630_h_r_mcmaster_november_2_2017_02_super_tease_TCGH.jpg" alt="" width="645" data-photo-original-src="http://image.ngaynay.vn/Uploaded/ngocanh/2017_12_04/171102143630_h_r_mcmaster_november_2_2017_02_super_tease_TCGH.jpg" />\r\n\r\n</div>\r\n<div class="summary cms-desc">\r\n<div>(Ngày Nay) - Cố vấn an ninh của Nhà Trắng, ông McMaster cho biết hôm thứ bảy (3/12) rằng Triều Tiên là "mối đe dọa lớn nhất đối với Mỹ" và khả năng chiến tranh với quốc gia này ngày càng tăng cao.</div>\r\n</div>\r\n</header></section></div>', '7.Cố vấn an ninh Mỹ: Trung Quốc nên ‘mạnh tay’ với Triều Tiên', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-12-04 02:35:36', '2017-12-04 02:35:36', '', 153, 'http://localhost:82/wordpress/2017/12/04/153-revision-v1/', 0, NULL, 'revision', '', 0),
(196, 7, '2017-12-04 02:49:22', '2017-12-04 02:49:22', 'hahahaha', 'Hahahaha', '', 'publish', 'closed', 'closed', '', 'hahahaha', '', '', '2017-12-04 02:49:22', '2017-12-04 02:49:22', '', 0, 'http://localhost:82/wordpress/?page_id=196', 0, ' Hhuhuhuhuhuhu', 'page', '', 0),
(197, 7, '2017-12-04 02:49:22', '2017-12-04 02:49:22', 'hahahaha', 'Hahahaha', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2017-12-04 02:49:22', '2017-12-04 02:49:22', '', 196, 'http://localhost:82/wordpress/2017/12/04/196-revision-v1/', 0, '', 'revision', '', 0),
(198, 7, '2017-12-04 02:53:35', '2017-12-04 02:53:35', 'heo Tân hoa xã, trong một tuyên bố, Bộ Quốc phòng Nga cho biết các máy bay ném bom chiến lược của nước này đã tiếp tục không kích các phần tử khủng bố thuộc tổ chức Nhà nước Hồi giáo (IS) tự xưng ở Syria ngày 3/12.\r\n\r\n<a href="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" data-index="0"><img src="https://img.vietnamplus.vn/t660/Uploaded/ngtmbh/2017_12_04/ttxvn_khongkichIS.jpg" alt="" /></a>\r\n<!--more-->\r\nTheo Bộ Quốc phòng Nga, 6 máy bay ném bom tầm xa Tu-22M3 đã cất cánh từ Nga và phá hủy các kho đạn dược, thiết bị và các thành trì của IS ở khu vực Đông Nam của tỉnh Deir al-Zour.\r\n\r\nCác máy bay này được sự yểm trợ của các máy bay chiến đấu Su-30SM của Nga từ căn cứ không quân Hmeymim ở Syria.', '12.Máy bay ném bom tầm xa Nga oanh tạc kho đạn dược IS ở Deir al-Zour', 'hgjhugkjljkl;kluyiuiu', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-12-04 02:53:35', '2017-12-04 02:53:35', '', 189, 'http://localhost:82/wordpress/2017/12/04/189-revision-v1/', 0, NULL, 'revision', '', 0),
(199, 7, '2017-12-04 02:56:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 02:56:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=199', 0, '', 'post', '', 0),
(200, 7, '2017-12-04 03:24:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 03:24:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=200', 0, '', 'page', '', 0),
(201, 7, '2017-12-04 03:24:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:24:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=201', 0, '', 'post', '', 0),
(202, 7, '2017-12-04 03:28:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:28:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=202', 0, '', 'post', '', 0),
(203, 7, '2017-12-04 03:30:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:30:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=203', 0, '', 'post', '', 0),
(204, 7, '2017-12-04 03:32:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 03:32:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=204', 0, NULL, 'post', '', 0),
(205, 7, '2017-12-04 03:33:41', '2017-12-04 03:33:41', '111', '111', '', 'publish', 'open', 'open', '', '111', '', '', '2017-12-04 03:34:41', '2017-12-04 03:34:41', '', 0, 'http://localhost:82/wordpress/?p=205', 0, '2234234234', 'post', '', 0),
(206, 7, '2017-12-04 03:33:41', '2017-12-04 03:33:41', '111', '111', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2017-12-04 03:33:41', '2017-12-04 03:33:41', '', 205, 'http://localhost:82/wordpress/2017/12/04/205-revision-v1/', 0, NULL, 'revision', '', 0),
(207, 7, '2017-12-04 03:35:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 03:35:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=207', 0, '', 'page', '', 0),
(208, 7, '2017-12-04 03:36:10', '2017-12-04 03:36:10', 'hghfgwghqa efhdsgf', '13.rrrrrrrrrrrrrrrrrrrrrrrrr', '', 'publish', 'open', 'open', '', '13-rrrrrrrrrrrrrrrrrrrrrrrrr', '', '', '2017-12-04 03:36:10', '2017-12-04 03:36:10', '', 0, 'http://localhost:82/wordpress/?p=208', 0, 'ssssssssss', 'post', '', 0),
(209, 7, '2017-12-04 03:36:10', '2017-12-04 03:36:10', 'hghfgwghqa efhdsgf', '13.rrrrrrrrrrrrrrrrrrrrrrrrr', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2017-12-04 03:36:10', '2017-12-04 03:36:10', '', 208, 'http://localhost:82/wordpress/2017/12/04/208-revision-v1/', 0, '', 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu top', 'menu-top', 0),
(3, 'Page', 'page', 0),
(4, 'Post', 'post', 0),
(6, 'Post-a1', 'post-a1', 0),
(7, 'Post-a2', 'post-a2', 0),
(8, 'Post-a3', 'post-a3', 0),
(9, 'Post-b1', 'post-b1', 0),
(10, 'aaaa', 'xxxx', 0),
(11, 'hahahahaha', 'hahahahaha', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(2, 3, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 4, 0),
(7, 1, 0),
(8, 1, 0),
(9, 4, 0),
(10, 3, 0),
(12, 3, 0),
(14, 3, 0),
(16, 3, 0),
(18, 3, 0),
(20, 3, 0),
(22, 3, 0),
(24, 3, 0),
(26, 3, 0),
(28, 4, 0),
(29, 3, 0),
(31, 3, 0),
(33, 3, 0),
(36, 1, 0),
(37, 4, 0),
(38, 4, 0),
(38, 6, 0),
(38, 7, 0),
(38, 8, 0),
(38, 9, 0),
(39, 4, 0),
(39, 6, 0),
(40, 4, 0),
(41, 1, 0),
(42, 4, 0),
(43, 4, 0),
(43, 6, 0),
(43, 10, 0),
(44, 4, 0),
(45, 1, 0),
(46, 4, 0),
(46, 6, 0),
(47, 1, 0),
(48, 4, 0),
(49, 1, 0),
(50, 1, 0),
(51, 1, 0),
(52, 1, 0),
(66, 1, 0),
(73, 1, 0),
(75, 1, 0),
(79, 1, 0),
(84, 1, 0),
(85, 1, 0),
(87, 3, 0),
(111, 2, 0),
(119, 2, 0),
(140, 1, 0),
(143, 1, 0),
(145, 1, 0),
(147, 1, 0),
(149, 1, 0),
(151, 1, 0),
(153, 1, 0),
(155, 1, 0),
(157, 1, 0),
(159, 1, 0),
(161, 1, 0),
(163, 1, 0),
(189, 4, 0),
(189, 6, 0),
(205, 1, 0),
(208, 3, 0),
(208, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 11),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(6, 6, 'category', '', 4, 1),
(7, 7, 'category', '', 4, 0),
(8, 8, 'category', '', 4, 0),
(9, 9, 'category', '', 6, 0),
(10, 10, 'category', '', 3, 1),
(11, 11, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(100, 7, 'nickname', 'admin'),
(101, 7, 'first_name', 'Admin'),
(102, 7, 'last_name', 'Admin'),
(103, 7, 'description', ''),
(104, 7, 'rich_editing', 'true'),
(105, 7, 'syntax_highlighting', 'true'),
(106, 7, 'comment_shortcuts', 'false'),
(107, 7, 'admin_color', 'fresh'),
(108, 7, 'use_ssl', '0'),
(109, 7, 'show_admin_bar_front', 'true'),
(110, 7, 'locale', ''),
(111, 7, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(112, 7, 'wp_user_level', '10'),
(113, 7, 'dismissed_wp_pointers', ''),
(114, 7, 'session_tokens', 'a:3:{s:64:"ea78ded141c12aaa0d65dc666fb1b6e81c9d0a5fe02b92c63dad66a06e2374fc";a:4:{s:10:"expiration";i:1512522160;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512349360;}s:64:"a5349a30f897f01eaa32857a44b9901f42b87cc667262fd248943219a47dc5f1";a:4:{s:10:"expiration";i:1512522186;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512349386;}s:64:"951dd7a29f8b264b859b080fe11d497860d23a09098d4d6da0faf9abe65cafd4";a:4:{s:10:"expiration";i:1512522368;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512349568;}}'),
(115, 7, 'wp_dashboard_quick_press_last_post_id', '199'),
(116, 7, 'closedpostboxes_post', 'a:0:{}'),
(117, 7, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(118, 7, 'wp_user-settings', 'editor=tinymce&mfold=o'),
(119, 7, 'wp_user-settings-time', '1512358529'),
(120, 7, 'meta-box-order_post', 'a:3:{s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:96:"postexcerpt,revisionsdiv,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(121, 7, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(7, 'admin', '$P$Bg/Jkx5G8FhZNYAn7cnSAgJuythv4d/', 'admin', 'admin@gmail.com', '', '2017-12-04 01:02:26', '1512349347:$P$B6tbjQBs67k5aREdLityI54cJI5ZH2/', 0, 'Admin Admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

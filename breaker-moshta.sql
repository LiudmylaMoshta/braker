-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Час створення: Квт 02 2017 р., 09:38
-- Версія сервера: 5.7.17-0ubuntu0.16.04.1
-- Версія PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `breaker-moshta`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-04-01 13:07:11', '2017-04-01 13:07:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_huge_it_videogallery_galleries`
--

CREATE TABLE `wp_huge_it_videogallery_galleries` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) UNSIGNED DEFAULT NULL,
  `sl_width` int(11) UNSIGNED DEFAULT NULL,
  `pause_on_hover` text,
  `videogallery_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `huge_it_sl_effects` text NOT NULL,
  `display_type` int(11) DEFAULT '2',
  `content_per_page` int(11) DEFAULT '5',
  `autoslide` varchar(3) DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wp_huge_it_videogallery_galleries`
--

INSERT INTO `wp_huge_it_videogallery_galleries` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `videogallery_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `huge_it_sl_effects`, `display_type`, `content_per_page`, `autoslide`) VALUES
(2, 'Video Gallery', 375, 600, 'on', 'cubeH', '4000', '1000', 'left', 1, '300', '4', 2, 5, 'on');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_huge_it_videogallery_videos`
--

CREATE TABLE `wp_huge_it_videogallery_videos` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `videogallery_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` varchar(128) DEFAULT NULL,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) UNSIGNED DEFAULT NULL,
  `published_in_sl_width` tinyint(4) UNSIGNED DEFAULT NULL,
  `thumb_url` text,
  `show_controls` varchar(3) DEFAULT 'on',
  `show_info` varchar(3) DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wp_huge_it_videogallery_videos`
--

INSERT INTO `wp_huge_it_videogallery_videos` (`id`, `name`, `videogallery_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`, `thumb_url`, `show_controls`, `show_info`) VALUES
(1, 'People Are Awesome', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://www.youtube.com/embed/yNHyTk2jYNA', 'http://huge-it.com/wordpress-video-gallery-demo-1-content-popup/#plugin_demo_wrapper', 'video', 'on', 0, 1, NULL, NULL, 'on', 'on'),
(2, 'Africa Race', '1', '<ul><li>lorem ipsumdolor sit amet</li><li>lorem ipsum dolor sit amet</li></ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://player.vimeo.com/video/62604342', 'http://huge-it.com/wordpress-video-gallery-demo-2-content-video-slider/#plugin_demo_wrapper', 'video', 'on', 1, 1, NULL, NULL, 'on', 'on'),
(3, 'London City In Motion', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://player.vimeo.com/video/99310168', 'http://huge-it.com/wordpress-video-gallery-demo-3-lightbox-video-gallery/#plugin_demo_wrapper', 'video', 'on', 2, 1, NULL, NULL, 'on', 'on'),
(4, 'Dubai City As You have Never Seen It Before', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h6>Dolor sit amet</h6><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://www.youtube.com/embed/t5vta25jHQI', 'http://huge-it.com/wordpress-video-gallery-demo-4-video-slider/#plugin_demo_wrapper', 'video', 'on', 3, 1, NULL, NULL, 'on', 'on'),
(5, 'Never say no to a Panda !', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://player.vimeo.com/video/15371143', 'http://huge-it.com/wordpress-video-gallery-demo-5-thumbnails/#plugin_demo_wrapper', 'video', 'on', 4, 1, NULL, NULL, 'on', 'on'),
(6, 'INDO-FLU', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>', 'http://player.vimeo.com/video/103151169', 'http://huge-it.com/wordpress-video-gallery-demo-6-custom-thumbnails/#plugin_demo_wrapper', 'video', 'on', 5, 1, NULL, NULL, 'on', 'on'),
(7, 'People Are Awesome Womens Edition', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h6>Lorem Ipsum</h6><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://www.youtube.com/embed/R5avCAn1vs0', 'http://huge-it.com/wordpress-video-gallery-demo-7-block-style-view/#plugin_demo_wrapper', 'video', 'on', 6, 1, NULL, NULL, 'on', 'on'),
(8, 'Norwey', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://player.vimeo.com/video/31022539', 'http://huge-it.com/wordpress-video-gallery-demo-1-content-popup/#plugin_demo_wrapper', 'video', 'on', 7, 1, NULL, NULL, 'on', 'on'),
(9, 'Slow Motion', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'https://www.youtube.com/embed/gb69WX82Hvs', 'http://huge-it.com/wordpress-video-gallery-demo-2-content-video-slider/#plugin_demo_wrapper', 'video', 'on', 7, 1, NULL, NULL, 'on', 'on'),
(10, 'dfsf', '2', 'sdfdsf', 'https://youtu.be/682BIg1yNos', 'https://youtu.be/682BIg1yNos', 'video', 'on', 5, 1, 1, '', 'on', 'on'),
(11, 'Crystallize - Lindsey Stirling (Dubstep Violin Original Song)', '2', '', 'https://youtu.be/aHjpOzsQ9YI', 'https://youtu.be/aHjpOzsQ9YI', 'video', 'on', 4, 1, 1, '', 'on', 'on'),
(12, 'Shadows - Lindsey Stirling (Original Song)', '2', '', 'https://youtu.be/JGCsyshUU-A', 'https://youtu.be/JGCsyshUU-A', 'video', 'on', 3, 1, 1, '', 'on', 'on'),
(13, 'Shadows - Lindsey Stirling (Original Song)', '2', '', 'https://youtu.be/BSLPH9d-jsI', 'https://youtu.be/BSLPH9d-jsI', 'video', 'on', 2, 1, 1, '', 'on', 'on'),
(14, 'Elements - Lindsey Stirling (Dubstep Violin Original Song)', '2', '', 'https://youtu.be/sf6LD2B_kDQ', 'https://youtu.be/sf6LD2B_kDQ', 'video', 'on', 1, 1, 1, '', 'on', 'on'),
(15, '2CELLOS - Game of Thrones [OFFICIAL VIDEO]', '2', '', 'https://youtu.be/DcFpvolRN3w', 'https://youtu.be/DcFpvolRN3w', 'video', 'on', 0, 1, 1, '', 'on', 'on');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/breaker-moshta', 'yes'),
(2, 'home', 'http://localhost/breaker-moshta', 'yes'),
(3, 'blogname', 'breaker-moshta', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'goon2004@ukr.net', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:129:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:20:\"index.php/contact/?$\";s:27:\"index.php?post_type=contact\";s:50:\"index.php/contact/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=contact&feed=$matches[1]\";s:45:\"index.php/contact/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=contact&feed=$matches[1]\";s:37:\"index.php/contact/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=contact&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"index.php/contact/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/contact/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/contact/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/contact/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/contact/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/contact/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/contact/([^/]+)/embed/?$\";s:40:\"index.php?contact=$matches[1]&embed=true\";s:38:\"index.php/contact/([^/]+)/trackback/?$\";s:34:\"index.php?contact=$matches[1]&tb=1\";s:58:\"index.php/contact/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?contact=$matches[1]&feed=$matches[2]\";s:53:\"index.php/contact/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?contact=$matches[1]&feed=$matches[2]\";s:46:\"index.php/contact/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?contact=$matches[1]&paged=$matches[2]\";s:53:\"index.php/contact/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?contact=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/contact/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?contact=$matches[1]&page=$matches[2]\";s:34:\"index.php/contact/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/contact/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/contact/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/contact/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/contact/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/contact/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/director/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/director/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/director/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/director/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/director/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/director/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/director/([^/]+)/embed/?$\";s:48:\"index.php?video_directors=$matches[1]&embed=true\";s:39:\"index.php/director/([^/]+)/trackback/?$\";s:42:\"index.php?video_directors=$matches[1]&tb=1\";s:47:\"index.php/director/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?video_directors=$matches[1]&paged=$matches[2]\";s:54:\"index.php/director/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?video_directors=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/director/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?video_directors=$matches[1]&page=$matches[2]\";s:35:\"index.php/director/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/director/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/director/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/director/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/director/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/director/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:93:\"/home/lucky/geekhub/breaker-moshta/wp-content/plugins/wp-video-lightbox/wp-video-lightbox.php\";i:1;s:85:\"/home/lucky/geekhub/breaker-moshta/wp-content/plugins/gallery-video/video-gallery.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'breaker-moshta', 'yes'),
(41, 'stylesheet', 'breaker-moshta', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:3;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}i:4;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:5;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1491138432;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1491138581;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1491138730;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'nonce_key', 'za<eWZ0X@)04rz<>0TUqdZ}ftqoxdP-]c+0Xssan61,!$)QC0G=`~ Wwo Oe.#`I', 'no'),
(106, 'nonce_salt', 'y2 }tH&=/rwae4yD,Jr}CzzWR<}K_R1k8$b}a?Cb3w`opM[I-B1^`q|1x[+GBv|x', 'no'),
(107, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1491052197;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(110, 'auth_key', '`buhvEl5~AK;,4eZ.Y+0]S9X17,&oyF<:ZDO;Y(skJPwF7!-(]BqwHMS,)$WFH=q', 'no'),
(111, 'auth_salt', 'C6J,[|h#7ywP`IG^oyM/u,J)udUF}~W0-m2-ks},n?vyfB;NQ3>>C}lk<GoGIH#c', 'no'),
(112, 'logged_in_key', 'I;|`x>c0XLoEcZ2f~/${V0tAc+|k5$8vs0LRM.d6]H-+VU`k_<@#U<D{BI<M#Y $', 'no'),
(113, 'logged_in_salt', ',.3oE,/!F(j+*1(3clX!SdoS=z3Mb<Y?U kLOX4T]r%6KC:r@^K8d<Y:Q+eB<=[5', 'no'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.3\";s:7:\"version\";s:5:\"4.7.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1491114338;s:15:\"version_checked\";s:5:\"4.7.3\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_a3fda85cf7919eff4783195b1fb2692e', '1491656839', 'no'),
(124, '_site_transient_browser_a3fda85cf7919eff4783195b1fb2692e', 'a:9:{s:8:\"platform\";s:5:\"Linux\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"57.0.2987.110\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(125, 'can_compress_scripts', '0', 'no'),
(132, '_transient_timeout_plugin_slugs', '1491208845', 'no'),
(133, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:31:\"gallery-video/video-gallery.php\";i:2;s:9:\"hello.php\";}', 'no'),
(145, 'current_theme', 'breaker', 'yes'),
(146, 'theme_mods_breaker-moshta', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:5:\"Menu1\";i:2;}s:15:\"theme_header_bg\";s:81:\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/welcome-background.png\";s:10:\"logo_image\";s:72:\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-icon.png\";s:13:\"image welcome\";s:75:\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-welcome.png\";}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(151, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(155, '_site_transient_timeout_browser_7eb30e157660040b1eb960c7ecc6697f', '1491679496', 'no'),
(156, '_site_transient_browser_7eb30e157660040b1eb960c7ecc6697f', 'a:9:{s:8:\"platform\";s:5:\"Linux\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"57.0.2987.133\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(159, 'recently_activated', 'a:2:{s:31:\"gallery-video/video-gallery.php\";i:1491122445;s:39:\"wp-video-lightbox/wp-video-lightbox.php\";i:1491081971;}', 'yes'),
(163, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1491090417', 'no'),
(164, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4321;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2464;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2352;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:1966;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1812;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1570;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1528;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1418;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1321;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1315;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1300;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1266;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1250;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1075;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1036;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1020;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:978;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:900;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:808;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:775;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:773;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:756;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:747;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:661;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:649;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:642;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:637;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:632;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:632;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:602;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:591;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:583;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:583;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:565;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:563;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:563;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:557;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:551;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:535;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:526;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:519;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:516;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:497;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:494;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:486;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:485;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:477;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:472;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:460;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:458;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:451;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:450;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:441;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:433;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:428;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:425;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:418;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:414;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:404;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:398;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:397;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:394;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:392;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:389;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:388;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:388;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:371;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:365;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:358;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:354;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:342;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:331;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:329;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:328;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:324;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:319;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:317;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:317;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:316;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:313;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:304;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:303;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:289;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:289;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:281;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:281;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:279;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:278;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:277;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:277;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:275;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:269;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:267;}s:14:\"administration\";a:3:{s:4:\"name\";s:14:\"administration\";s:4:\"slug\";s:14:\"administration\";s:5:\"count\";i:265;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:263;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:262;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:260;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:260;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:260;}s:5:\"flash\";a:3:{s:4:\"name\";s:5:\"flash\";s:4:\"slug\";s:5:\"flash\";s:5:\"count\";i:260;}}', 'no'),
(167, 'gallery_video_lightbox_type', 'new_type', 'yes'),
(168, 'gallery_video_lightbox_lightboxView', 'view1', 'yes'),
(169, 'gallery_video_lightbox_speed_new', '600', 'yes'),
(170, 'gallery_video_lightbox_overlayClose_new', 'true', 'yes'),
(171, 'gallery_video_lightbox_loop_new', 'true', 'yes'),
(172, 'gallery_video_disable_right_click', 'off', 'yes'),
(173, 'widget_huge_it_gallery_video_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1491122444;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"3.3\";s:31:\"gallery-video/video-gallery.php\";s:5:\"2.0.9\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.3.3.zip\";}s:31:\"gallery-video/video-gallery.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"53519\";s:4:\"slug\";s:13:\"gallery-video\";s:6:\"plugin\";s:31:\"gallery-video/video-gallery.php\";s:11:\"new_version\";s:5:\"2.0.9\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/gallery-video/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/gallery-video.2.0.9.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}', 'no'),
(178, 'wpvl_plugin_version', '1.8.4', 'yes'),
(179, 'wpvl_enable_jquery', '1', 'yes'),
(180, 'wpvl_enable_prettyPhoto', '1', 'yes'),
(181, 'wpvl_prettyphoto_options', 'O:29:\"WP_Video_Lightbox_prettyPhoto\":21:{s:15:\"animation_speed\";s:4:\"fast\";s:9:\"slideshow\";s:4:\"5000\";s:18:\"autoplay_slideshow\";s:5:\"false\";s:7:\"opacity\";s:4:\"0.80\";s:10:\"show_title\";s:4:\"true\";s:12:\"allow_resize\";s:4:\"true\";s:12:\"allow_expand\";s:4:\"true\";s:13:\"default_width\";s:3:\"640\";s:14:\"default_height\";s:3:\"480\";s:23:\"counter_separator_label\";s:1:\"/\";s:5:\"theme\";s:10:\"pp_default\";s:18:\"horizontal_padding\";s:2:\"20\";s:9:\"hideflash\";s:5:\"false\";s:5:\"wmode\";s:6:\"opaque\";s:8:\"autoplay\";s:5:\"false\";s:5:\"modal\";s:5:\"false\";s:11:\"deeplinking\";s:5:\"false\";s:15:\"overlay_gallery\";s:4:\"true\";s:19:\"overlay_gallery_max\";s:2:\"30\";s:18:\"keyboard_shortcuts\";s:4:\"true\";s:12:\"ie6_fallback\";s:4:\"true\";}', 'yes'),
(184, '_site_transient_timeout_theme_roots', '1491116139', 'no'),
(185, '_site_transient_theme_roots', 'a:9:{s:14:\"breaker-moshta\";s:7:\"/themes\";s:12:\"twentyeleven\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}', 'no'),
(186, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1491114345;s:7:\"checked\";a:9:{s:14:\"breaker-moshta\";s:3:\"1.0\";s:12:\"twentyeleven\";s:3:\"2.3\";s:13:\"twentyfifteen\";s:3:\"1.4\";s:14:\"twentyfourteen\";s:3:\"1.6\";s:15:\"twentyseventeen\";s:3:\"1.0\";s:13:\"twentysixteen\";s:3:\"1.0\";s:9:\"twentyten\";s:3:\"2.1\";s:14:\"twentythirteen\";s:3:\"1.7\";s:12:\"twentytwelve\";s:3:\"1.9\";}s:8:\"response\";a:8:{s:12:\"twentyeleven\";a:4:{s:5:\"theme\";s:12:\"twentyeleven\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentyeleven/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentyeleven.2.5.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip\";}s:9:\"twentyten\";a:4:{s:5:\"theme\";s:9:\"twentyten\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:39:\"https://wordpress.org/themes/twentyten/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/twentyten.2.2.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.2.1.zip\";}s:12:\"twentytwelve\";a:4:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwelve/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwelve.2.2.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(187, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1491157766', 'no'),
(188, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1491157766', 'no'),
(189, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1491114566', 'no'),
(190, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1491157767', 'no'),
(191, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1491157767', 'no'),
(192, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1491114567', 'no'),
(193, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1491157771', 'no'),
(194, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/\'>WordPress 4.7.3 Security and Maintenance Release</a> <span class=\"rss-date\">March 6, 2017</span><div class=\"rssSummary\">WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by sixÂ security issues: Cross-site scripting (XSS) viaÂ media file metadata. Â Reported by Chris AndrÃ¨ Dale, Yorick Koster,Â and Simon P. Briggs. Control characters can trick redirect [&hellip;]</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://heropress.com/heropress-geography-middle-east/\'>HeroPress: HeroPress Geography: The Middle East</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-community-support-shuts-down-wordcamp-netherlands-in-favor-of-city-based-wordcamps\'>WPTavern: WordPress Community Support Shuts Down WordCamp Netherlands in Favor of City-Based WordCamps</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-plugin-directory-redesign-why-so-many-people-feel-their-feedback-was-ignored\'>WPTavern: WordPress Plugin Directory Redesign: Why So Many People Feel Their Feedback Was Ignored</a></li></ul></div><div class=\"rss-widget\"><ul></ul></div>', 'no'),
(203, 'name_directors_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/04/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/04/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(5, 4, '_customize_draft_post_name', 'espresso'),
(6, 5, '_wp_attached_file', '2017/04/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/04/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(9, 5, '_customize_draft_post_name', 'sandwich'),
(10, 6, '_wp_attached_file', '2017/04/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/04/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(13, 6, '_customize_draft_post_name', 'coffee'),
(14, 7, '_customize_draft_post_name', 'home'),
(15, 8, '_thumbnail_id', '5'),
(16, 8, '_customize_draft_post_name', 'about'),
(17, 9, '_thumbnail_id', '4'),
(18, 9, '_customize_draft_post_name', 'contact'),
(19, 10, '_thumbnail_id', '6'),
(20, 10, '_customize_draft_post_name', 'blog'),
(21, 11, '_thumbnail_id', '4'),
(22, 11, '_customize_draft_post_name', 'a-homepage-section'),
(23, 13, '_edit_last', '1'),
(24, 13, '_edit_lock', '1491125625:1'),
(25, 13, '_wp_page_template', 'index.php'),
(26, 15, '_edit_last', '1'),
(27, 15, '_edit_lock', '1491052436:1'),
(28, 16, '_edit_last', '1'),
(29, 16, '_edit_lock', '1491075626:1'),
(30, 16, '_wp_page_template', 'directors.php'),
(31, 19, '_edit_last', '1'),
(32, 19, '_wp_page_template', 'default'),
(33, 19, '_edit_lock', '1491052497:1'),
(34, 21, '_edit_last', '1'),
(35, 21, '_edit_lock', '1491075643:1'),
(36, 21, '_wp_page_template', 'contact.php'),
(37, 21, 'title-ExecutiveProducer', 'EXECUTIVE PRODUCER'),
(38, 21, 'title-NameProducer', 'CHRIS Raser'),
(39, 21, 'address', '850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349'),
(40, 21, 'mail', 'CHRIS@breakerdigital.com'),
(50, 24, '_menu_item_type', 'post_type'),
(51, 24, '_menu_item_menu_item_parent', '0'),
(52, 24, '_menu_item_object_id', '19'),
(53, 24, '_menu_item_object', 'page'),
(54, 24, '_menu_item_target', ''),
(55, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 24, '_menu_item_xfn', ''),
(57, 24, '_menu_item_url', ''),
(59, 25, '_menu_item_type', 'post_type'),
(60, 25, '_menu_item_menu_item_parent', '0'),
(61, 25, '_menu_item_object_id', '16'),
(62, 25, '_menu_item_object', 'page'),
(63, 25, '_menu_item_target', ''),
(64, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 25, '_menu_item_xfn', ''),
(66, 25, '_menu_item_url', ''),
(68, 26, '_menu_item_type', 'post_type'),
(69, 26, '_menu_item_menu_item_parent', '0'),
(70, 26, '_menu_item_object_id', '13'),
(71, 26, '_menu_item_object', 'page'),
(72, 26, '_menu_item_target', ''),
(73, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 26, '_menu_item_xfn', ''),
(75, 26, '_menu_item_url', ''),
(77, 27, '_wp_attached_file', '2017/04/welcome-background.png'),
(78, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:863;s:4:\"file\";s:30:\"2017/04/welcome-background.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"welcome-background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"welcome-background-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"welcome-background-768x442.png\";s:5:\"width\";i:768;s:6:\"height\";i:442;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"welcome-background-1024x589.png\";s:5:\"width\";i:1024;s:6:\"height\";i:589;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 28, '_wp_trash_meta_status', 'publish'),
(80, 28, '_wp_trash_meta_time', '1491053241'),
(81, 29, '_wp_attached_file', '2017/04/logo-icon.png'),
(82, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:48;s:4:\"file\";s:21:\"2017/04/logo-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 30, '_wp_trash_meta_status', 'publish'),
(84, 30, '_wp_trash_meta_time', '1491053260'),
(85, 31, '_wp_attached_file', '2017/04/logo-welcome.png'),
(86, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:707;s:6:\"height\";i:381;s:4:\"file\";s:24:\"2017/04/logo-welcome.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-welcome-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-welcome-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 32, '_wp_trash_meta_status', 'publish'),
(88, 32, '_wp_trash_meta_time', '1491053297'),
(89, 1, '_wp_trash_meta_status', 'publish'),
(90, 1, '_wp_trash_meta_time', '1491053535'),
(91, 1, '_wp_desired_post_slug', 'hello-world'),
(92, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(93, 2, '_wp_trash_meta_status', 'publish'),
(94, 2, '_wp_trash_meta_time', '1491053555'),
(95, 2, '_wp_desired_post_slug', 'sample-page'),
(96, 15, '_wp_trash_meta_status', 'draft'),
(97, 15, '_wp_trash_meta_time', '1491053559'),
(98, 15, '_wp_desired_post_slug', ''),
(99, 36, '_edit_last', '1'),
(100, 36, '_edit_lock', '1491062505:1'),
(101, 37, '_wp_attached_file', '2017/04/2-layers.png'),
(102, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:863;s:4:\"file\";s:20:\"2017/04/2-layers.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"2-layers-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"2-layers-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"2-layers-768x442.png\";s:5:\"width\";i:768;s:6:\"height\";i:442;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"2-layers-1024x589.png\";s:5:\"width\";i:1024;s:6:\"height\";i:589;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 38, '_wp_attached_file', '2017/04/Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ_Ð·Ñ–_Skype.png'),
(104, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:390;s:4:\"file\";s:43:\"2017/04/Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ_Ð·Ñ–_Skype.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ_Ð·Ñ–_Skype-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ_Ð·Ñ–_Skype-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 39, '_wp_attached_file', '2017/04/ca.png'),
(106, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:270;s:4:\"file\";s:14:\"2017/04/ca.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"ca-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"ca-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 40, '_wp_attached_file', '2017/04/directors1.png'),
(108, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:278;s:6:\"height\";i:278;s:4:\"file\";s:22:\"2017/04/directors1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"directors1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 41, '_wp_attached_file', '2017/04/directors2.png'),
(110, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:288;s:6:\"height\";i:288;s:4:\"file\";s:22:\"2017/04/directors2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"directors2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 42, '_wp_attached_file', '2017/04/directors3.png'),
(112, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:275;s:4:\"file\";s:22:\"2017/04/directors3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"directors3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 43, '_wp_attached_file', '2017/04/directors4.png'),
(114, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:288;s:6:\"height\";i:288;s:4:\"file\";s:22:\"2017/04/directors4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"directors4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 44, '_wp_attached_file', '2017/04/directors5.png'),
(116, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:286;s:6:\"height\";i:286;s:4:\"file\";s:22:\"2017/04/directors5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"directors5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 45, '_wp_attached_file', '2017/04/directors-1.jpg'),
(118, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2017/04/directors-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"directors-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"directors-1-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 46, '_wp_attached_file', '2017/04/directors-2.jpg'),
(120, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2017/04/directors-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"directors-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"directors-2-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 47, '_wp_attached_file', '2017/04/directors-3.jpg'),
(122, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2017/04/directors-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"directors-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"directors-3-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 48, '_wp_attached_file', '2017/04/directors-4.jpg'),
(124, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2017/04/directors-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"directors-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"directors-4-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 49, '_wp_attached_file', '2017/04/directors-5.jpg'),
(126, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:635;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2017/04/directors-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"directors-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"directors-5-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 50, '_wp_attached_file', '2017/04/logo-icon-1.png'),
(128, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:48;s:4:\"file\";s:23:\"2017/04/logo-icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 51, '_wp_attached_file', '2017/04/logo-welcome-1.png'),
(130, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:707;s:6:\"height\";i:381;s:4:\"file\";s:26:\"2017/04/logo-welcome-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-welcome-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"logo-welcome-1-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 52, '_wp_attached_file', '2017/04/mt.png'),
(132, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:343;s:6:\"height\";i:269;s:4:\"file\";s:14:\"2017/04/mt.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"mt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"mt-300x235.png\";s:5:\"width\";i:300;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 53, '_wp_attached_file', '2017/04/sa.png'),
(134, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:270;s:4:\"file\";s:14:\"2017/04/sa.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"sa-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"sa-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 54, '_wp_attached_file', '2017/04/welcome-background-1.png'),
(136, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:863;s:4:\"file\";s:32:\"2017/04/welcome-background-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"welcome-background-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"welcome-background-1-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"welcome-background-1-768x442.png\";s:5:\"width\";i:768;s:6:\"height\";i:442;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"welcome-background-1-1024x589.png\";s:5:\"width\";i:1024;s:6:\"height\";i:589;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 36, 'link bio', 'clare + fran BIO'),
(138, 36, '_thumbnail_id', '49'),
(139, 56, '_edit_last', '1'),
(140, 56, '_edit_lock', '1491062414:1'),
(141, 56, 'link bio', 'JUSTIN BRODIN'),
(142, 56, '_thumbnail_id', '48'),
(143, 58, '_edit_last', '1'),
(144, 58, '_edit_lock', '1491062589:1'),
(145, 58, 'link bio', 'lin BIO'),
(146, 58, '_thumbnail_id', '47'),
(147, 60, '_edit_last', '1'),
(148, 60, '_edit_lock', '1491125060:1'),
(149, 60, 'link bio', 'schneider BIO'),
(150, 60, '_thumbnail_id', '46'),
(151, 63, '_edit_last', '1'),
(152, 63, '_edit_lock', '1491125206:1'),
(153, 63, 'link bio', 'Patterson BIO'),
(154, 63, '_thumbnail_id', '45'),
(155, 73, '_edit_last', '1'),
(156, 73, '_edit_lock', '1491078077:1'),
(157, 73, 'mail', 'africa@breakerdigital.com'),
(158, 75, '_edit_last', '1'),
(159, 75, '_edit_lock', '1491077689:1'),
(160, 75, 'mail', 'shannon@breakerdigital.com'),
(161, 73, '_thumbnail_id', '53'),
(162, 75, '_thumbnail_id', '52'),
(163, 77, '_edit_last', '1'),
(164, 77, '_edit_lock', '1491077701:1'),
(165, 77, 'mail', 'anniebanks@breakerdigital.com'),
(167, 21, '_wp_trash_meta_status', 'publish'),
(168, 21, '_wp_trash_meta_time', '1491075793'),
(169, 21, '_wp_desired_post_slug', 'contact'),
(170, 85, '_edit_last', '1'),
(171, 85, '_edit_lock', '1491077362:1'),
(173, 85, '_wp_page_template', 'contact.php'),
(174, 85, 'title-ExecutiveProducer', 'EXECUTIVE PRODUCER'),
(175, 85, 'title-NameProducer', 'CHRIS Raser'),
(176, 85, 'address', '850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349'),
(186, 91, '_menu_item_type', 'post_type'),
(187, 91, '_menu_item_menu_item_parent', '0'),
(188, 91, '_menu_item_object_id', '85'),
(189, 91, '_menu_item_object', 'page'),
(190, 91, '_menu_item_target', ''),
(191, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 91, '_menu_item_xfn', ''),
(193, 91, '_menu_item_url', ''),
(194, 91, '_menu_item_orphaned', '1491076547'),
(195, 94, '_edit_last', '1'),
(196, 94, '_edit_lock', '1491077461:1'),
(197, 94, '_wp_page_template', 'contacts.php'),
(198, 96, '_menu_item_type', 'post_type'),
(199, 96, '_menu_item_menu_item_parent', '0'),
(200, 96, '_menu_item_object_id', '94'),
(201, 96, '_menu_item_object', 'page'),
(202, 96, '_menu_item_target', ''),
(203, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 96, '_menu_item_xfn', ''),
(205, 96, '_menu_item_url', ''),
(208, 94, 'title-ExecutiveProducer', 'EXECUTIVE PRODUCER'),
(209, 94, 'title-NameProducer', 'CHRIS Raser'),
(210, 94, 'address', '850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349'),
(211, 85, '_wp_trash_meta_status', 'publish'),
(212, 85, '_wp_trash_meta_time', '1491077612'),
(213, 85, '_wp_desired_post_slug', 'contact'),
(214, 77, '_thumbnail_id', '39'),
(215, 63, '_oembed_b7dd722b16c2e6f4ad7dd73014bc31d6', '{{unknown}}'),
(216, 63, '_oembed_a93548f6a0d4940df10a6075be76d044', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/682BIg1yNos?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(217, 63, '_oembed_time_a93548f6a0d4940df10a6075be76d044', '1491078289'),
(218, 63, '_oembed_d0cbc63d0f6d069b08277deec59c205e', '{{unknown}}'),
(219, 106, '_wp_attached_file', '2017/04/0.jpg'),
(220, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:13:\"2017/04/0.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"0-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 63, 'video', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/682BIg1yNos\" frameborder=\"0\" allowfullscreen></iframe>'),
(222, 108, '_oembed_6419f0b34d498572c2c4f5f114f78e9b', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/DcFpvolRN3w?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(223, 108, '_oembed_time_6419f0b34d498572c2c4f5f114f78e9b', '1491114808'),
(224, 108, '_edit_last', '1'),
(225, 108, '_edit_lock', '1491117538:1'),
(226, 112, '_oembed_4261f46ecf7c7cb400b4ba74f7a3a86e', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/sf6LD2B_kDQ?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(227, 112, '_oembed_time_4261f46ecf7c7cb400b4ba74f7a3a86e', '1491117521'),
(228, 112, '_edit_last', '1'),
(229, 112, '_edit_lock', '1491125433:1'),
(231, 115, '_edit_last', '1'),
(232, 115, '_edit_lock', '1491117559:1'),
(233, 115, '_oembed_4261f46ecf7c7cb400b4ba74f7a3a86e', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/sf6LD2B_kDQ?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(234, 115, '_oembed_time_4261f46ecf7c7cb400b4ba74f7a3a86e', '1491117698'),
(235, 116, '_oembed_24bdcc165573664ee12d3a1315bfe71b', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/BSLPH9d-jsI?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(236, 116, '_oembed_time_24bdcc165573664ee12d3a1315bfe71b', '1491117714'),
(237, 116, '_edit_last', '1'),
(238, 116, '_edit_lock', '1491117585:1'),
(239, 117, '_edit_last', '1'),
(240, 117, '_edit_lock', '1491117675:1'),
(241, 117, '_oembed_aff3cdeed7a8e606a2579ee7ccb137d5', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/JGCsyshUU-A?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(242, 117, '_oembed_time_aff3cdeed7a8e606a2579ee7ccb137d5', '1491117769'),
(243, 118, '_edit_last', '1'),
(244, 118, '_edit_lock', '1491117701:1'),
(245, 118, '_oembed_9ee8a31f1da467ce12d32ae58a41ab8e', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/aHjpOzsQ9YI?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(246, 118, '_oembed_time_9ee8a31f1da467ce12d32ae58a41ab8e', '1491117842'),
(247, 119, '_edit_last', '1'),
(248, 119, '_edit_lock', '1491117962:1'),
(249, 119, '_oembed_a88a7d4c725a2543ea8b662e4c7a6b3c', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/WSm6yfYZQTI?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(250, 119, '_oembed_time_a88a7d4c725a2543ea8b662e4c7a6b3c', '1491117943'),
(251, 119, '_oembed_27aaeae7da8ad3baa870d943d2015141', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/3E1eygiqcwY?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(252, 119, '_oembed_time_27aaeae7da8ad3baa870d943d2015141', '1491118029'),
(253, 120, '_edit_last', '1'),
(254, 120, '_edit_lock', '1491118308:1'),
(255, 121, '_oembed_f1ad2029af3d30a5c0ffa837a377b87d', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/7VRQV8uNNDM?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(256, 121, '_oembed_time_f1ad2029af3d30a5c0ffa837a377b87d', '1491118355'),
(257, 121, '_edit_last', '1'),
(258, 121, '_edit_lock', '1491118229:1'),
(259, 122, '_oembed_e9bee8b484aad0aa4de3e04bac955872', '<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/YlUKcNNmywk?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(260, 122, '_oembed_time_e9bee8b484aad0aa4de3e04bac955872', '1491118410'),
(261, 122, '_edit_last', '1'),
(262, 122, '_edit_lock', '1491123565:1'),
(263, 120, '_oembed_93e8e0bcca71034fe244844be1a2f0aa', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/gNdnVVHfseA?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(264, 120, '_oembed_time_93e8e0bcca71034fe244844be1a2f0aa', '1491118441'),
(265, 123, '_oembed_9f33e4cc1bf080dd145aedf9409d2d7d', '<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/vx2u5uUu3DE?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(266, 123, '_oembed_time_9f33e4cc1bf080dd145aedf9409d2d7d', '1491118469'),
(267, 123, '_edit_last', '1'),
(268, 123, '_edit_lock', '1491124997:1'),
(269, 124, '_edit_last', '1'),
(270, 124, '_edit_lock', '1491123520:1'),
(271, 124, '_oembed_e1af37eb9a87bef77ff86788f41f92dd', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/kXYiU_JCYtU?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(272, 124, '_oembed_time_e1af37eb9a87bef77ff86788f41f92dd', '1491118561'),
(273, 125, '_edit_last', '1'),
(274, 125, '_edit_lock', '1491123738:1'),
(275, 125, '_oembed_3da3cacd3169634c1b901f0cbf59bc8f', '<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/TR3Vdo5etCQ?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(276, 125, '_oembed_time_3da3cacd3169634c1b901f0cbf59bc8f', '1491118597'),
(277, 126, '_edit_last', '1'),
(278, 126, '_edit_lock', '1491123717:1'),
(279, 126, '_oembed_68494860c7d532a7ea07ba6bcfecc734', '<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/3JWTaaS7LdU?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(280, 126, '_oembed_time_68494860c7d532a7ea07ba6bcfecc734', '1491118687'),
(281, 127, '_edit_last', '1'),
(282, 127, '_edit_lock', '1491123462:1'),
(283, 127, '_oembed_10b212a9ad82638c76be57cd4bdbef94', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/p2Rch6WvPJE?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(284, 127, '_oembed_time_10b212a9ad82638c76be57cd4bdbef94', '1491118720'),
(285, 128, '_edit_last', '1'),
(286, 128, '_edit_lock', '1491123449:1'),
(287, 128, '_oembed_c4291aa4f5f746108dc9bde3c47d8169', '<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/k2C5TjS2sh4?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
(288, 128, '_oembed_time_c4291aa4f5f746108dc9bde3c47d8169', '1491118766'),
(289, 128, '_thumbnail_id', '48'),
(290, 127, '_thumbnail_id', '49'),
(291, 125, '_thumbnail_id', '46'),
(292, 124, '_thumbnail_id', '47'),
(293, 123, '_thumbnail_id', '38'),
(294, 122, '_thumbnail_id', '106'),
(295, 126, '_thumbnail_id', '46'),
(296, 112, '_wp_trash_meta_status', 'publish'),
(297, 112, '_wp_trash_meta_time', '1491125583'),
(298, 112, '_wp_desired_post_slug', 'elements-lindsey-stirling-dubstep-violin-original-song');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-01 13:07:11', '2017-04-01 13:07:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-04-01 13:32:15', '2017-04-01 13:32:15', '', 0, 'http://localhost/breaker-moshta/?p=1', 0, 'post', '', 1),
(2, 1, '2017-04-01 13:07:11', '2017-04-01 13:07:11', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/breaker-moshta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-04-01 13:32:35', '2017-04-01 13:32:35', '', 0, 'http://localhost/breaker-moshta/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-04-01 13:07:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-01 13:07:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?p=3', 0, 'post', '', 0),
(4, 1, '2017-04-01 13:09:47', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-01 13:09:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-04-01 13:09:50', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-01 13:09:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-04-01 13:09:52', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-01 13:09:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-04-01 13:09:54', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-04-01 13:09:54', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-04-01 13:09:54', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-04-01 13:09:54', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-04-01 13:09:54', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0c1ce50b73b6654c81ae307570fbc8e6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e5e7ad3ab63ab2f40fb5b26ae46ebfbe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7ee2b69299570a4099baf6c46eecae9e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0c1ce50b73b6654c81ae307570fbc8e6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7ee2b69299570a4099baf6c46eecae9e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e5e7ad3ab63ab2f40fb5b26ae46ebfbe\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Home\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '96be2cfb-8acc-43cd-89a2-66089d4d3128', '', '', '2017-04-01 13:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2017-04-01 13:13:20', '2017-04-01 13:13:20', '<p class=\"text-home\">Breaker Digital is a full service media company that creates, produces, and distributes automotive and action sports content. Bringing together directors, writers, and filmmakers from around the world, we do best in some of the most adverse landscapes spanning the globe. At Breaker Digital we know what it means to say our lifestyle translates to our work. For twelve years weâ€™ve shared with our clients a passion for imaginative interactive media creation from some of the most exclusive angles of our world. That passion fueled our early years â€“ and burns on today in the content we continue to create.</p>\r\n\r\n<h2 class=\"title-home\">NEW MEDIA</h2>\r\n&nbsp;', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-04-02 09:33:45', '2017-04-02 09:33:45', '', 0, 'http://localhost/breaker-moshta/?page_id=13', 1, 'page', '', 0),
(14, 1, '2017-04-01 13:13:20', '2017-04-01 13:13:20', '<p class=\"text-home\">Breaker Digital is a full service media company that creates, produces, and distributes automotive and action sports content. Bringing together directors, writers, and filmmakers from around the world, we do best in some of the most adverse landscapes spanning the globe. At Breaker Digital we know what it means to say our lifestyle translates to our work. For twelve years weâ€™ve shared with our clients a passion for imaginative interactive media creation from some of the most exclusive angles of our world. That passion fueled our early years â€“ and burns on today in the content we continue to create.</p>\r\n\r\n<h2 class=\"title-home\">NEW MEDIA</h2>\r\n', 'home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-04-01 13:13:20', '2017-04-01 13:13:20', '', 13, 'http://localhost/breaker-moshta/index.php/2017/04/01/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-04-01 13:13:56', '2017-04-01 13:13:56', '', 'Directors', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-04-01 13:32:39', '2017-04-01 13:32:39', '', 0, 'http://localhost/breaker-moshta/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-04-01 13:14:48', '2017-04-01 13:14:48', '<h2 class=\"title-home\">Directors</h2>', 'Directors', '', 'publish', 'closed', 'closed', '', 'directors', '', '', '2017-04-01 14:08:32', '2017-04-01 14:08:32', '', 0, 'http://localhost/breaker-moshta/?page_id=16', 2, 'page', '', 0),
(17, 1, '2017-04-01 13:14:49', '2017-04-01 13:14:49', '', 'Directors', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-04-01 13:14:49', '2017-04-01 13:14:49', '', 16, 'http://localhost/breaker-moshta/index.php/2017/04/01/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-04-01 13:16:45', '2017-04-01 13:16:45', '<h2 class=\"title-home\">Directors</h2>', 'Directors', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-04-01 13:16:45', '2017-04-01 13:16:45', '', 16, 'http://localhost/breaker-moshta/index.php/2017/04/01/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-04-01 13:17:12', '2017-04-01 13:17:12', '', 'NEWS', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2017-04-01 13:17:18', '2017-04-01 13:17:18', '', 0, 'http://localhost/breaker-moshta/?page_id=19', 3, 'page', '', 0),
(20, 1, '2017-04-01 13:17:12', '2017-04-01 13:17:12', '', 'NEWS', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-04-01 13:17:12', '2017-04-01 13:17:12', '', 19, 'http://localhost/breaker-moshta/index.php/2017/04/01/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-04-01 13:19:37', '2017-04-01 13:19:37', '<h2 class=\"title-home\">CONTACT</h2>', 'contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2017-04-01 19:43:13', '2017-04-01 19:43:13', '', 0, 'http://localhost/breaker-moshta/?page_id=21', 4, 'page', '', 0),
(22, 1, '2017-04-01 13:19:37', '2017-04-01 13:19:37', '<h2 class=\"title-home\">CONTACT</h2>', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-04-01 13:19:37', '2017-04-01 13:19:37', '', 21, 'http://localhost/breaker-moshta/index.php/2017/04/01/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-04-01 13:25:32', '2017-04-01 13:25:32', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-04-01 20:14:35', '2017-04-01 20:14:35', '', 0, 'http://localhost/breaker-moshta/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2017-04-01 13:25:32', '2017-04-01 13:25:32', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-04-01 20:14:35', '2017-04-01 20:14:35', '', 0, 'http://localhost/breaker-moshta/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2017-04-01 13:25:32', '2017-04-01 13:25:32', '', '<img src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-icon-1.png\" />', '', 'publish', 'closed', 'closed', '', '26', '', '', '2017-04-01 20:14:35', '2017-04-01 20:14:35', '', 0, 'http://localhost/breaker-moshta/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-04-01 13:27:02', '2017-04-01 13:27:02', '', 'welcome-background', '', 'inherit', 'open', 'closed', '', 'welcome-background', '', '', '2017-04-01 13:27:02', '2017-04-01 13:27:02', '', 0, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/welcome-background.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2017-04-01 13:27:21', '2017-04-01 13:27:21', '{\n    \"breaker-moshta::theme_header_bg\": {\n        \"value\": \"http://localhost/breaker-moshta/wp-content/uploads/2017/04/welcome-background.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '65bd84d0-b266-4172-a665-f1526d7bdd8d', '', '', '2017-04-01 13:27:21', '2017-04-01 13:27:21', '', 0, 'http://localhost/breaker-moshta/index.php/2017/04/01/65bd84d0-b266-4172-a665-f1526d7bdd8d/', 0, 'customize_changeset', '', 0),
(29, 1, '2017-04-01 13:27:36', '2017-04-01 13:27:36', '', 'logo-icon', '', 'inherit', 'open', 'closed', '', 'logo-icon', '', '', '2017-04-01 13:27:36', '2017-04-01 13:27:36', '', 0, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-icon.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2017-04-01 13:27:39', '2017-04-01 13:27:39', '{\n    \"breaker-moshta::logo_image\": {\n        \"value\": \"http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-icon.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd901997-e3fb-4a97-b96c-c2c9f1cdbb4d', '', '', '2017-04-01 13:27:39', '2017-04-01 13:27:39', '', 0, 'http://localhost/breaker-moshta/index.php/2017/04/01/bd901997-e3fb-4a97-b96c-c2c9f1cdbb4d/', 0, 'customize_changeset', '', 0),
(31, 1, '2017-04-01 13:27:59', '2017-04-01 13:27:59', '', 'logo-welcome', '', 'inherit', 'open', 'closed', '', 'logo-welcome', '', '', '2017-04-01 13:27:59', '2017-04-01 13:27:59', '', 0, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-welcome.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2017-04-01 13:28:17', '2017-04-01 13:28:17', '{\n    \"breaker-moshta::image welcome\": {\n        \"value\": \"http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-welcome.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '814415c8-2662-415c-be40-4bf42f5d64d7', '', '', '2017-04-01 13:28:17', '2017-04-01 13:28:17', '', 0, 'http://localhost/breaker-moshta/index.php/2017/04/01/814415c8-2662-415c-be40-4bf42f5d64d7/', 0, 'customize_changeset', '', 0),
(33, 1, '2017-04-01 13:32:15', '2017-04-01 13:32:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-04-01 13:32:15', '2017-04-01 13:32:15', '', 1, 'http://localhost/breaker-moshta/index.php/2017/04/01/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-04-01 13:32:35', '2017-04-01 13:32:35', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/breaker-moshta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-04-01 13:32:35', '2017-04-01 13:32:35', '', 2, 'http://localhost/breaker-moshta/index.php/2017/04/01/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-04-01 13:32:39', '2017-04-01 13:32:39', '', 'Directors', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-04-01 13:32:39', '2017-04-01 13:32:39', '', 15, 'http://localhost/breaker-moshta/index.php/2017/04/01/15-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-04-01 13:37:13', '2017-04-01 13:37:13', '<img class=\"img-video alignnone size-full wp-image-144\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors5.png\" alt=\"\" width=\"286\" height=\"286\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'CLARE + FRAN', '', 'publish', 'open', 'open', '', 'clare-fran', '', '', '2017-04-01 16:01:44', '2017-04-01 16:01:44', '', 0, 'http://localhost/breaker-moshta/?post_type=video_directors&#038;p=36', 0, 'video_directors', '', 0),
(37, 1, '2017-04-01 13:36:11', '2017-04-01 13:36:11', '', '2-layers', '', 'inherit', 'open', 'closed', '', '2-layers', '', '', '2017-04-01 13:36:11', '2017-04-01 13:36:11', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/2-layers.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2017-04-01 13:36:25', '2017-04-01 13:36:25', '', 'Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ_Ð·Ñ–_Skype', '', 'inherit', 'open', 'closed', '', '%d0%b7%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b5%d0%bd%d0%bd%d1%8f_%d0%b7%d1%96_skype', '', '', '2017-04-01 13:36:25', '2017-04-01 13:36:25', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ_Ð·Ñ–_Skype.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-04-01 13:36:26', '2017-04-01 13:36:26', '', 'ca', '', 'inherit', 'open', 'closed', '', 'ca', '', '', '2017-04-01 13:36:26', '2017-04-01 13:36:26', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/ca.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2017-04-01 13:36:27', '2017-04-01 13:36:27', '', 'directors1', '', 'inherit', 'open', 'closed', '', 'directors1', '', '', '2017-04-01 13:36:27', '2017-04-01 13:36:27', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2017-04-01 13:36:28', '2017-04-01 13:36:28', '', 'directors2', '', 'inherit', 'open', 'closed', '', 'directors2', '', '', '2017-04-01 13:36:28', '2017-04-01 13:36:28', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors2.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-04-01 13:36:28', '2017-04-01 13:36:28', '', 'directors3', '', 'inherit', 'open', 'closed', '', 'directors3', '', '', '2017-04-01 13:36:28', '2017-04-01 13:36:28', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors3.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2017-04-01 13:36:29', '2017-04-01 13:36:29', '', 'directors4', '', 'inherit', 'open', 'closed', '', 'directors4', '', '', '2017-04-01 13:36:29', '2017-04-01 13:36:29', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors4.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2017-04-01 13:36:30', '2017-04-01 13:36:30', '', 'directors5', '', 'inherit', 'open', 'closed', '', 'directors5', '', '', '2017-04-01 13:36:30', '2017-04-01 13:36:30', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors5.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2017-04-01 13:36:30', '2017-04-01 13:36:30', '', 'directors-1', '', 'inherit', 'open', 'closed', '', 'directors-1', '', '', '2017-04-01 13:36:30', '2017-04-01 13:36:30', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2017-04-01 13:36:31', '2017-04-01 13:36:31', '', 'directors-2', '', 'inherit', 'open', 'closed', '', 'directors-2', '', '', '2017-04-01 13:36:31', '2017-04-01 13:36:31', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-04-01 13:36:32', '2017-04-01 13:36:32', '', 'directors-3', '', 'inherit', 'open', 'closed', '', 'directors-3', '', '', '2017-04-01 13:36:32', '2017-04-01 13:36:32', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2017-04-01 13:36:33', '2017-04-01 13:36:33', '', 'directors-4', '', 'inherit', 'open', 'closed', '', 'directors-4', '', '', '2017-04-01 13:36:33', '2017-04-01 13:36:33', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2017-04-01 13:36:33', '2017-04-01 13:36:33', '', 'directors-5', '', 'inherit', 'open', 'closed', '', 'directors-5', '', '', '2017-04-01 13:36:33', '2017-04-01 13:36:33', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-04-01 13:36:34', '2017-04-01 13:36:34', '', 'logo-icon', '', 'inherit', 'open', 'closed', '', 'logo-icon-2', '', '', '2017-04-01 13:36:34', '2017-04-01 13:36:34', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-icon-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2017-04-01 13:36:35', '2017-04-01 13:36:35', '', 'logo-welcome', '', 'inherit', 'open', 'closed', '', 'logo-welcome-2', '', '', '2017-04-01 13:36:35', '2017-04-01 13:36:35', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/logo-welcome-1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2017-04-01 13:36:36', '2017-04-01 13:36:36', '', 'mt', '', 'inherit', 'open', 'closed', '', 'mt', '', '', '2017-04-01 13:36:36', '2017-04-01 13:36:36', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/mt.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-04-01 13:36:37', '2017-04-01 13:36:37', '', 'sa', '', 'inherit', 'open', 'closed', '', 'sa', '', '', '2017-04-01 13:36:37', '2017-04-01 13:36:37', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/sa.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-04-01 13:36:38', '2017-04-01 13:36:38', '', 'welcome-background', '', 'inherit', 'open', 'closed', '', 'welcome-background-2', '', '', '2017-04-01 13:36:38', '2017-04-01 13:36:38', '', 36, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/welcome-background-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2017-04-01 13:37:13', '2017-04-01 13:37:13', '<img class=\"alignnone size-full wp-image-144\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors5.png\" alt=\"\" width=\"286\" height=\"286\" />\r\n\r\nLorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'CLARE + FRAN', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-04-01 13:37:13', '2017-04-01 13:37:13', '', 36, 'http://localhost/breaker-moshta/index.php/2017/04/01/36-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-04-01 14:44:18', '2017-04-01 14:44:18', '<img class=\"img-video alignnone size-full wp-image-139\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors4.png\" alt=\"\" width=\"288\" height=\"288\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'JUSTIN BRODIN', '', 'publish', 'open', 'open', '', 'justin-brodin', '', '', '2017-04-01 16:02:24', '2017-04-01 16:02:24', '', 0, 'http://localhost/breaker-moshta/?post_type=video_directors&#038;p=56', 0, 'video_directors', '', 0),
(57, 1, '2017-04-01 14:44:18', '2017-04-01 14:44:18', '<img class=\"alignnone size-full wp-image-139\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors4.png\" alt=\"\" width=\"288\" height=\"288\" />\r\n\r\nLorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'JUSTIN BRODIN', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-04-01 14:44:18', '2017-04-01 14:44:18', '', 56, 'http://localhost/breaker-moshta/index.php/2017/04/01/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-04-01 14:45:50', '2017-04-01 14:45:50', '<img class=\"img-video alignnone size-full wp-image-135\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors3.png\" alt=\"\" width=\"275\" height=\"275\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'vincent lin', '', 'publish', 'open', 'open', '', 'vincent-lin', '', '', '2017-04-01 16:03:09', '2017-04-01 16:03:09', '', 0, 'http://localhost/breaker-moshta/?post_type=video_directors&#038;p=58', 0, 'video_directors', '', 0),
(59, 1, '2017-04-01 14:45:50', '2017-04-01 14:45:50', '<img class=\"alignnone size-full wp-image-135\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors3.png\" alt=\"\" width=\"275\" height=\"275\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'vincent lin', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-04-01 14:45:50', '2017-04-01 14:45:50', '', 58, 'http://localhost/breaker-moshta/index.php/2017/04/01/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-04-01 14:47:35', '2017-04-01 14:47:35', '<img class=\"img-video alignnone size-full wp-image-130\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors2.png\" alt=\"\" width=\"288\" height=\"288\" />\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'logan schneider', '', 'publish', 'open', 'open', '', 'logan-schneider', '', '', '2017-04-01 16:03:42', '2017-04-01 16:03:42', '', 0, 'http://localhost/breaker-moshta/?post_type=video_directors&#038;p=60', 0, 'video_directors', '', 0),
(61, 1, '2017-04-01 14:47:35', '2017-04-01 14:47:35', '<img class=\"alignnone size-full wp-image-130\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors2.png\" alt=\"\" width=\"288\" height=\"288\" />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'logan schneider', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-04-01 14:47:35', '2017-04-01 14:47:35', '', 60, 'http://localhost/breaker-moshta/index.php/2017/04/01/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-04-01 14:47:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-01 14:47:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?post_type=video_directors&p=62', 0, 'video_directors', '', 0),
(63, 1, '2017-04-01 14:48:33', '2017-04-01 14:48:33', '<p class=\"text-bio\"><img class=\"alignnone size-full wp-image-40\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors1.png\" alt=\"\" width=\"278\" height=\"278\" />Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p class=\"work-directors\">work</p>', 'chris patterson', '', 'publish', 'open', 'open', '', 'chris-patterson', '', '', '2017-04-02 09:27:15', '2017-04-02 09:27:15', '', 0, 'http://localhost/breaker-moshta/?post_type=video_directors&#038;p=63', 0, 'video_directors', '', 0),
(64, 1, '2017-04-01 14:48:33', '2017-04-01 14:48:33', '<img class=\"alignnone size-full wp-image-119\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/03/directors1.png\" alt=\"\" width=\"278\" height=\"278\" />\r\n\r\nLorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-01 14:48:33', '2017-04-01 14:48:33', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/01/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-04-01 16:01:44', '2017-04-01 16:01:44', '<img class=\"img-video alignnone size-full wp-image-144\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors5.png\" alt=\"\" width=\"286\" height=\"286\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'CLARE + FRAN', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-04-01 16:01:44', '2017-04-01 16:01:44', '', 36, 'http://localhost/breaker-moshta/index.php/2017/04/01/36-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-04-01 16:02:24', '2017-04-01 16:02:24', '<img class=\"img-video alignnone size-full wp-image-139\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors4.png\" alt=\"\" width=\"288\" height=\"288\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'JUSTIN BRODIN', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-04-01 16:02:24', '2017-04-01 16:02:24', '', 56, 'http://localhost/breaker-moshta/index.php/2017/04/01/56-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-04-01 16:03:09', '2017-04-01 16:03:09', '<img class=\"img-video alignnone size-full wp-image-135\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors3.png\" alt=\"\" width=\"275\" height=\"275\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'vincent lin', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-04-01 16:03:09', '2017-04-01 16:03:09', '', 58, 'http://localhost/breaker-moshta/index.php/2017/04/01/58-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-04-01 16:03:42', '2017-04-01 16:03:42', '<img class=\"img-video alignnone size-full wp-image-130\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/04/directors2.png\" alt=\"\" width=\"288\" height=\"288\" />\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'logan schneider', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-04-01 16:03:42', '2017-04-01 16:03:42', '', 60, 'http://localhost/breaker-moshta/index.php/2017/04/01/60-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-04-01 16:04:10', '2017-04-01 16:04:10', '<img class=\"img-video alignnone size-full wp-image-119\" src=\"http://localhost/breaker-WP/wp-content/uploads/2017/03/directors1.png\" alt=\"\" width=\"278\" height=\"278\" />\r\n\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-01 16:04:10', '2017-04-01 16:04:10', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/01/63-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-04-01 16:04:55', '2017-04-01 16:04:55', '<img class=\"alignnone size-full wp-image-40\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors1.png\" alt=\"\" width=\"278\" height=\"278\" />\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-01 16:04:55', '2017-04-01 16:04:55', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/01/63-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-04-01 20:30:52', '2017-04-01 20:30:52', '<img class=\"alignnone size-medium\" src=\"https://img.youtube.com/vi/682BIg1yNos/0.jpg\" width=\"480\" height=\"360\" />\n\n[embed]https://youtu.be/682BIg1yNos[/embed]\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<p class=\"work-directors\">work</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2017-04-01 20:30:52', '2017-04-01 20:30:52', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/01/63-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2017-04-01 16:48:08', '2017-04-01 16:48:08', '<img class=\"alignnone size-full wp-image-40\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors1.png\" alt=\"\" width=\"278\" height=\"278\" />\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p class=\"work-directors\">work</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-01 16:48:08', '2017-04-01 16:48:08', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/01/63-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-04-01 19:13:45', '2017-04-01 19:13:45', '<h3>Shayne Brookstein</h3>\r\n-337 Lower Main Road, Observatory\r\nCape Town 7925 / South Africa\r\nO Â +27 21.447.2209\r\nFÂ  +27 86.606.3250', 'SOUTH AFRICA', '', 'publish', 'open', 'open', '', 'south-africa', '', '', '2017-04-01 20:17:50', '2017-04-01 20:17:50', '', 0, 'http://localhost/breaker-moshta/?post_type=contact&#038;p=73', 3, 'contact', '', 0),
(74, 1, '2017-04-01 19:13:45', '2017-04-01 19:13:45', '<h3>Shayne Brookstein</h3>\r\n-337 Lower Main Road, Observatory\r\nCape Town 7925 / South Africa\r\nO Â +27 21.447.2209\r\nFÂ  +27 86.606.3250', 'SOUTH AFRICA', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-04-01 19:13:45', '2017-04-01 19:13:45', '', 73, 'http://localhost/breaker-moshta/index.php/2017/04/01/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-04-01 19:14:31', '2017-04-01 19:14:31', '<h3>SHANNON WEBER</h3>\r\n40 East Main St, Suite 240\r\nBozeman, MT 59715\r\nO 310.209.8974\r\nFÂ 406.582.0709', 'MONTANA', '', 'publish', 'open', 'open', '', 'montana', '', '', '2017-04-01 20:17:12', '2017-04-01 20:17:12', '', 0, 'http://localhost/breaker-moshta/?post_type=contact&#038;p=75', 2, 'contact', '', 0),
(76, 1, '2017-04-01 19:14:31', '2017-04-01 19:14:31', '<h3>SHANNON WEBER</h3>\r\n40 East Main St, Suite 240\r\nBozeman, MT 59715\r\nO 310.209.8974\r\nFÂ 406.582.0709', 'MONTANA', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-04-01 19:14:31', '2017-04-01 19:14:31', '', 75, 'http://localhost/breaker-moshta/index.php/2017/04/01/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-04-01 19:15:55', '2017-04-01 19:15:55', '<h3>Annie Banks Raser</h3>\r\n850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349', 'CALIFORNIA', '', 'publish', 'open', 'open', '', 'california', '', '', '2017-04-01 20:17:22', '2017-04-01 20:17:22', '', 0, 'http://localhost/breaker-moshta/?post_type=contact&#038;p=77', 1, 'contact', '', 0),
(78, 1, '2017-04-01 19:15:55', '2017-04-01 19:15:55', '<h3>Annie Banks Raser</h3>\r\n850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349', 'CALIFORNIA', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-04-01 19:15:55', '2017-04-01 19:15:55', '', 77, 'http://localhost/breaker-moshta/index.php/2017/04/01/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-04-01 19:16:53', '2017-04-01 19:16:53', '<img class=\"alignnone size-medium wp-image-53\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/sa-300x238.png\" alt=\"\" width=\"300\" height=\"238\" />\r\n<h3>Shayne Brookstein</h3>\r\n-337 Lower Main Road, Observatory\r\nCape Town 7925 / South Africa\r\nO Â +27 21.447.2209\r\nFÂ  +27 86.606.3250', 'SOUTH AFRICA', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-04-01 19:16:53', '2017-04-01 19:16:53', '', 73, 'http://localhost/breaker-moshta/index.php/2017/04/01/73-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-04-01 19:17:07', '2017-04-01 19:17:07', '<h3><img class=\"alignnone size-medium wp-image-52\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/mt-300x235.png\" alt=\"\" width=\"300\" height=\"235\" />SHANNON WEBER</h3>\r\n40 East Main St, Suite 240\r\nBozeman, MT 59715\r\nO 310.209.8974\r\nFÂ 406.582.0709', 'MONTANA', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-04-01 19:17:07', '2017-04-01 19:17:07', '', 75, 'http://localhost/breaker-moshta/index.php/2017/04/01/75-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-04-01 19:17:27', '2017-04-01 19:17:27', '<h3><img class=\"alignnone size-medium wp-image-39\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/ca-300x238.png\" alt=\"\" width=\"300\" height=\"238\" /></h3>\r\n<h3>Annie Banks Raser</h3>\r\n850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349', 'CALIFORNIA', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-04-01 19:17:27', '2017-04-01 19:17:27', '', 77, 'http://localhost/breaker-moshta/index.php/2017/04/01/77-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-04-01 19:18:06', '2017-04-01 19:18:06', '<h3><img class=\"alignnone size-medium wp-image-52\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/mt-300x235.png\" alt=\"\" width=\"300\" height=\"235\" /></h3>\r\n<h3>SHANNON WEBER</h3>\r\n40 East Main St, Suite 240\r\nBozeman, MT 59715\r\nO 310.209.8974\r\nFÂ 406.582.0709', 'MONTANA', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-04-01 19:18:06', '2017-04-01 19:18:06', '', 75, 'http://localhost/breaker-moshta/index.php/2017/04/01/75-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-04-01 19:25:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-01 19:25:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?post_type=contact&p=83', 0, 'contact', '', 0),
(85, 1, '2017-04-01 19:45:44', '2017-04-01 19:45:44', '<h2 class=\"title-home\">CONTACT</h2>', 'contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed-2', '', '', '2017-04-01 20:13:32', '2017-04-01 20:13:32', '', 0, 'http://localhost/breaker-moshta/?page_id=85', 4, 'page', '', 0),
(86, 1, '2017-04-01 19:45:44', '2017-04-01 19:45:44', '<h2 class=\"title-home\">CONTACT</h2>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-01 19:45:44', '2017-04-01 19:45:44', '', 85, 'http://localhost/breaker-moshta/index.php/2017/04/01/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-04-01 19:52:37', '2017-04-01 19:52:37', '<h2 class=\"title-home\">CONTACT</h2>', 'CONTACT1', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-01 19:52:37', '2017-04-01 19:52:37', '', 85, 'http://localhost/breaker-moshta/index.php/2017/04/01/85-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-04-01 19:53:27', '2017-04-01 19:53:27', '<h2 class=\"title-home\">CONTACT</h2>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-01 19:53:27', '2017-04-01 19:53:27', '', 85, 'http://localhost/breaker-moshta/index.php/2017/04/01/85-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-04-01 19:55:37', '2017-04-01 19:55:37', '<h2 class=\"title-home\">CONTACT</h2>', 'CONTACT1', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-01 19:55:37', '2017-04-01 19:55:37', '', 85, 'http://localhost/breaker-moshta/index.php/2017/04/01/85-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-04-01 19:55:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-04-01 19:55:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2017-04-01 19:58:24', '2017-04-01 19:58:24', '<h2 class=\"title-home\">CONTACT</h2>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-01 19:58:24', '2017-04-01 19:58:24', '', 85, 'http://localhost/breaker-moshta/index.php/2017/04/01/85-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-04-01 20:04:36', '2017-04-01 20:04:36', '<h2 class=\"title-home\">CONTACT</h2>', 'contact', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-04-01 20:04:36', '2017-04-01 20:04:36', '', 85, 'http://localhost/breaker-moshta/index.php/2017/04/01/85-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-04-01 20:07:08', '2017-04-01 20:07:08', '<h2 class=\"title-home\">CONTACT</h2>', 'contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2017-04-01 20:13:00', '2017-04-01 20:13:00', '', 0, 'http://localhost/breaker-moshta/?page_id=94', 5, 'page', '', 0),
(95, 1, '2017-04-01 20:07:08', '2017-04-01 20:07:08', 'fgdgdfgfd', 'contacts', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-04-01 20:07:08', '2017-04-01 20:07:08', '', 94, 'http://localhost/breaker-moshta/index.php/2017/04/01/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-04-01 20:09:36', '2017-04-01 20:09:36', '', 'contact', '', 'publish', 'closed', 'closed', '', '96', '', '', '2017-04-01 20:14:35', '2017-04-01 20:14:35', '', 0, 'http://localhost/breaker-moshta/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2017-04-01 20:11:58', '2017-04-01 20:11:58', '<h2 class=\"title-home\">CONTACT</h2>', 'contacts', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-04-01 20:11:58', '2017-04-01 20:11:58', '', 94, 'http://localhost/breaker-moshta/index.php/2017/04/01/94-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-04-01 20:15:50', '2017-04-01 20:15:50', '<h3></h3>\r\n<h3>Annie Banks Raser</h3>\r\n850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349', 'CALIFORNIA', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-04-01 20:15:50', '2017-04-01 20:15:50', '', 77, 'http://localhost/breaker-moshta/index.php/2017/04/01/77-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-04-01 20:16:00', '2017-04-01 20:16:00', '<h3></h3>\r\n<h3>SHANNON WEBER</h3>\r\n40 East Main St, Suite 240\r\nBozeman, MT 59715\r\nO 310.209.8974\r\nFÂ 406.582.0709', 'MONTANA', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-04-01 20:16:00', '2017-04-01 20:16:00', '', 75, 'http://localhost/breaker-moshta/index.php/2017/04/01/75-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-04-01 20:16:06', '2017-04-01 20:16:06', '&nbsp;\r\n<h3>Shayne Brookstein</h3>\r\n-337 Lower Main Road, Observatory\r\nCape Town 7925 / South Africa\r\nO Â +27 21.447.2209\r\nFÂ  +27 86.606.3250', 'SOUTH AFRICA', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-04-01 20:16:06', '2017-04-01 20:16:06', '', 73, 'http://localhost/breaker-moshta/index.php/2017/04/01/73-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-04-01 20:16:34', '2017-04-01 20:16:34', 'Shayne Brookstein\r\n\r\n-337 Lower Main Road, Observatory\r\nCape Town 7925 / South Africa\r\nO Â +27 21.447.2209\r\nFÂ  +27 86.606.3250', 'SOUTH AFRICA', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-04-01 20:16:34', '2017-04-01 20:16:34', '', 73, 'http://localhost/breaker-moshta/index.php/2017/04/01/73-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-04-01 20:17:12', '2017-04-01 20:17:12', '<h3>SHANNON WEBER</h3>\r\n40 East Main St, Suite 240\r\nBozeman, MT 59715\r\nO 310.209.8974\r\nFÂ 406.582.0709', 'MONTANA', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-04-01 20:17:12', '2017-04-01 20:17:12', '', 75, 'http://localhost/breaker-moshta/index.php/2017/04/01/75-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2017-04-01 20:17:22', '2017-04-01 20:17:22', '<h3>Annie Banks Raser</h3>\r\n850 S Broadway Suite 1003\r\nLos Angeles, CA 90014\r\nO 310.209.8974\r\nF 213.623.5349', 'CALIFORNIA', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-04-01 20:17:22', '2017-04-01 20:17:22', '', 77, 'http://localhost/breaker-moshta/index.php/2017/04/01/77-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2017-04-01 20:17:50', '2017-04-01 20:17:50', '<h3>Shayne Brookstein</h3>\r\n-337 Lower Main Road, Observatory\r\nCape Town 7925 / South Africa\r\nO Â +27 21.447.2209\r\nFÂ  +27 86.606.3250', 'SOUTH AFRICA', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-04-01 20:17:50', '2017-04-01 20:17:50', '', 73, 'http://localhost/breaker-moshta/index.php/2017/04/01/73-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2017-04-01 20:25:25', '2017-04-01 20:25:25', '[embed]https://youtu.be/682BIg1yNos[/embed]\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p class=\"work-directors\">work</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-01 20:25:25', '2017-04-01 20:25:25', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/01/63-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-04-01 20:32:33', '2017-04-01 20:32:33', '', '0', '', 'inherit', 'open', 'closed', '', '0', '', '', '2017-04-01 20:32:33', '2017-04-01 20:32:33', '', 63, 'http://localhost/breaker-moshta/wp-content/uploads/2017/04/0.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-04-01 21:00:46', '2017-04-01 21:00:46', '<p class=\"text-home\">Breaker Digital is a full service media company that creates, produces, and distributes automotive and action sports content. Bringing together directors, writers, and filmmakers from around the world, we do best in some of the most adverse landscapes spanning the globe. At Breaker Digital we know what it means to say our lifestyle translates to our work. For twelve years weâ€™ve shared with our clients a passion for imaginative interactive media creation from some of the most exclusive angles of our world. That passion fueled our early years â€“ and burns on today in the content we continue to create.</p>\r\n\r\n<h2 class=\"title-home\">NEW MEDIA</h2>\r\n[huge_it_videogallery id=\"2\"]', 'home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-04-01 21:00:46', '2017-04-01 21:00:46', '', 13, 'http://localhost/breaker-moshta/index.php/2017/04/01/13-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-04-02 06:47:48', '2017-04-02 06:47:48', 'https://youtu.be/DcFpvolRN3w', '2CELLOS - Game of Thrones [OFFICIAL VIDEO]', '', 'publish', 'open', 'open', '', '2cellos-game-of-thrones-official-video', '', '', '2017-04-02 07:21:20', '2017-04-02 07:21:20', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=108', 0, 'works_directors', '', 0),
(109, 1, '2017-04-02 06:47:48', '2017-04-02 06:47:48', 'https://youtu.be/DcFpvolRN3w', '2CELLOS - Game of Thrones [OFFICIAL VIDEO]', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2017-04-02 06:47:48', '2017-04-02 06:47:48', '', 108, 'http://localhost/breaker-moshta/index.php/2017/04/02/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2017-04-02 06:51:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-02 06:51:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?p=110', 0, 'post', '', 0),
(111, 1, '2017-04-02 06:55:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-02 06:55:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?p=111', 0, 'post', '', 0),
(112, 1, '2017-04-02 07:19:03', '2017-04-02 07:19:03', 'https://youtu.be/sf6LD2B_kDQ', 'Elements - Lindsey Stirling (Dubstep Violin Original Song)', '', 'trash', 'open', 'open', '', 'elements-lindsey-stirling-dubstep-violin-original-song__trashed', '', '', '2017-04-02 09:33:03', '2017-04-02 09:33:03', '', 0, 'http://localhost/breaker-moshta/?p=112', 0, 'post', '', 0),
(113, 1, '2017-04-02 07:18:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-02 07:18:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&p=113', 0, 'works_directors', '', 0),
(114, 1, '2017-04-02 07:19:03', '2017-04-02 07:19:03', 'https://youtu.be/sf6LD2B_kDQ', 'Elements - Lindsey Stirling (Dubstep Violin Original Song)', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2017-04-02 07:19:03', '2017-04-02 07:19:03', '', 112, 'http://localhost/breaker-moshta/index.php/2017/04/02/112-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-04-02 07:21:42', '2017-04-02 07:21:42', 'https://youtu.be/sf6LD2B_kDQ', 'Elements - Lindsey Stirling (Dubstep Violin Original Song)', '', 'publish', 'closed', 'closed', '', 'elements-lindsey-stirling-dubstep-violin-original-song', '', '', '2017-04-02 07:21:42', '2017-04-02 07:21:42', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=115', 0, 'works_directors', '', 0),
(116, 1, '2017-04-02 07:22:08', '2017-04-02 07:22:08', 'https://youtu.be/BSLPH9d-jsI', 'Skyrim - Lindsey Stirling & Peter Hollens', '', 'publish', 'closed', 'closed', '', 'skyrim-lindsey-stirling-peter-hollens', '', '', '2017-04-02 07:22:08', '2017-04-02 07:22:08', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=116', 0, 'works_directors', '', 0),
(117, 1, '2017-04-02 07:23:19', '2017-04-02 07:23:19', 'https://youtu.be/JGCsyshUU-A', 'Shadows - Lindsey Stirling (Original Song)', '', 'publish', 'closed', 'closed', '', 'shadows-lindsey-stirling-original-song', '', '', '2017-04-02 07:23:19', '2017-04-02 07:23:19', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=117', 0, 'works_directors', '', 0),
(118, 1, '2017-04-02 07:24:05', '2017-04-02 07:24:05', 'https://youtu.be/aHjpOzsQ9YI', 'Crystallize - Lindsey Stirling (Dubstep Violin Original Song)', '', 'publish', 'closed', 'closed', '', 'crystallize-lindsey-stirling-dubstep-violin-original-song', '', '', '2017-04-02 07:24:05', '2017-04-02 07:24:05', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=118', 0, 'works_directors', '', 0),
(119, 1, '2017-04-02 07:28:23', '2017-04-02 07:28:23', 'https://youtu.be/3E1eygiqcwY', 'Ð¡ÐºÑ€ÑÐ±Ñ–Ð½ - Ð›Ð¸ÑÑ‚ Ð”Ð¾ Ð”Ñ€ÑƒÐ³Ð° (Full HD)', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%ba%d1%80%d1%8f%d0%b1%d1%96%d0%bd-%d0%bb%d0%b8%d1%81%d1%82-%d0%b4%d0%be-%d0%b4%d1%80%d1%83%d0%b3%d0%b0-full-hd', '', '', '2017-04-02 07:28:23', '2017-04-02 07:28:23', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=119', 0, 'works_directors', '', 0),
(120, 1, '2017-04-02 07:30:09', '2017-04-02 07:30:09', 'https://youtu.be/gNdnVVHfseA', 'Rammstein - Ohne Dich (Official Video)', '', 'publish', 'closed', 'closed', '', 'httpsyoutu-begndnvvhfsea', '', '', '2017-04-02 07:34:11', '2017-04-02 07:34:11', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=120', 0, 'works_directors', '', 0),
(121, 1, '2017-04-02 07:32:52', '2017-04-02 07:32:52', 'https://youtu.be/7VRQV8uNNDM', 'Lacrimosa Deja Vu SubtÃ­tulos AlemÃ¡n EspaÃ±ol', '', 'publish', 'closed', 'closed', '', 'lacrimosa-deja-vu-subtitulos-aleman-espanol', '', '', '2017-04-02 07:32:52', '2017-04-02 07:32:52', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=121', 0, 'works_directors', '', 0),
(122, 1, '2017-04-02 07:33:43', '2017-04-02 07:33:43', 'https://youtu.be/YlUKcNNmywk', 'Red Hot Chili Peppers - Californication [Official Music Video]', '', 'publish', 'closed', 'closed', '', 'red-hot-chili-peppers-californication-official-music-video', '', '', '2017-04-02 09:01:42', '2017-04-02 09:01:42', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=122', 0, 'works_directors', '', 0),
(123, 1, '2017-04-02 07:35:03', '2017-04-02 07:35:03', 'https://youtu.be/vx2u5uUu3DE', 'Bon Jovi - It\'s My Life', '', 'publish', 'closed', 'closed', '', 'bon-jovi-its-my-life', '', '', '2017-04-02 09:04:59', '2017-04-02 09:04:59', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=123', 0, 'works_directors', '', 0),
(124, 1, '2017-04-02 07:36:07', '2017-04-02 07:36:07', 'https://youtu.be/kXYiU_JCYtU', 'Numb (Official Video) - Linkin Park', '', 'publish', 'closed', 'closed', '', 'numb-official-video-linkin-park', '', '', '2017-04-02 09:01:02', '2017-04-02 09:01:02', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=124', 0, 'works_directors', '', 0),
(125, 1, '2017-04-02 07:36:40', '2017-04-02 07:36:40', 'https://youtu.be/TR3Vdo5etCQ', 'No Doubt - Don\'t Speak', '', 'publish', 'closed', 'closed', '', 'no-doubt-dont-speak', '', '', '2017-04-02 09:04:41', '2017-04-02 09:04:41', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=125', 0, 'works_directors', '', 0),
(126, 1, '2017-04-02 07:38:11', '2017-04-02 07:38:11', 'https://youtu.be/3JWTaaS7LdU', 'Whitney Houston - I Will Always Love You', '', 'publish', 'closed', 'closed', '', 'whitney-houston-i-will-always-love-you', '', '', '2017-04-02 09:04:11', '2017-04-02 09:04:11', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=126', 0, 'works_directors', '', 0),
(127, 1, '2017-04-02 07:38:44', '2017-04-02 07:38:44', 'https://youtu.be/p2Rch6WvPJE', 'Toni Braxton - Un-Break My Heart', '', 'publish', 'closed', 'closed', '', 'toni-braxton-un-break-my-heart', '', '', '2017-04-02 09:00:05', '2017-04-02 09:00:05', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=127', 0, 'works_directors', '', 0),
(128, 1, '2017-04-02 07:39:30', '2017-04-02 07:39:30', 'https://youtu.be/k2C5TjS2sh4', 'Roxette - It Must Have Been Love', '', 'publish', 'closed', 'closed', '', 'roxette-it-must-have-been-love', '', '', '2017-04-02 08:59:51', '2017-04-02 08:59:51', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&#038;p=128', 0, 'works_directors', '', 0),
(129, 1, '2017-04-02 07:49:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-02 07:49:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/breaker-moshta/?post_type=works_directors&p=129', 0, 'works_directors', '', 0),
(130, 1, '2017-04-02 08:41:39', '2017-04-02 08:41:39', '<p class=\"text-home\">Breaker Digital is a full service media company that creates, produces, and distributes automotive and action sports content. Bringing together directors, writers, and filmmakers from around the world, we do best in some of the most adverse landscapes spanning the globe. At Breaker Digital we know what it means to say our lifestyle translates to our work. For twelve years weâ€™ve shared with our clients a passion for imaginative interactive media creation from some of the most exclusive angles of our world. That passion fueled our early years â€“ and burns on today in the content we continue to create.</p>\r\n\r\n<h2 class=\"title-home\">NEW MEDIA</h2>\r\n&nbsp;', 'home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-04-02 08:41:39', '2017-04-02 08:41:39', '', 13, 'http://localhost/breaker-moshta/index.php/2017/04/02/13-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2017-04-02 09:26:03', '2017-04-02 09:26:03', '\r\n<p class=\"text-bio\">Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p class=\"work-directors\">work</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-02 09:26:03', '2017-04-02 09:26:03', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/02/63-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2017-04-02 09:27:15', '2017-04-02 09:27:15', '<p class=\"text-bio\"><img class=\"alignnone size-full wp-image-40\" src=\"http://localhost/breaker-moshta/wp-content/uploads/2017/04/directors1.png\" alt=\"\" width=\"278\" height=\"278\" />Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Â Lorem ipsum dolor sit amet, Â consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p class=\"work-directors\">work</p>', 'chris patterson', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-04-02 09:27:15', '2017-04-02 09:27:15', '', 63, 'http://localhost/breaker-moshta/index.php/2017/04/02/63-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu1', 'menu1', 0),
(3, 'chris_patterson', 'patterson', 0),
(4, 'logan-schneider', 'logan-schneider', 0),
(5, 'vincent-lin', 'vincent-lin', 0),
(6, 'justin-brodin', 'justin-brodin', 0),
(7, 'clare-fran', 'clare-fran', 0),
(8, 'Ð atterson', 'patterson', 0),
(9, 'Schneider', 'schneider', 0),
(10, 'Lin', 'lin', 0),
(11, 'Brodin', 'brodin', 0),
(12, 'Fran', 'fran', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(96, 2, 0),
(108, 8, 0),
(112, 1, 0),
(115, 8, 0),
(116, 8, 0),
(117, 9, 0),
(118, 9, 0),
(119, 9, 0),
(120, 10, 0),
(121, 10, 0),
(122, 10, 0),
(123, 11, 0),
(124, 11, 0),
(125, 11, 0),
(126, 12, 0),
(127, 12, 0),
(128, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'Name_director', '', 0, 0),
(4, 4, 'Name_director', '', 0, 0),
(5, 5, 'Name_director', '', 0, 0),
(6, 6, 'Name_director', '', 0, 0),
(7, 7, 'Name_director', '', 0, 0),
(8, 8, 'name_directors', '', 0, 3),
(9, 9, 'name_directors', '', 0, 3),
(10, 10, 'name_directors', '', 0, 3),
(11, 11, 'name_directors', '', 0, 3),
(12, 12, 'name_directors', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:\"303d8cafdb48c88203a76cabb17aee85945c52445185fc50461a60d24d61e09b\";a:4:{s:10:\"expiration\";i:1492261632;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36\";s:5:\"login\";i:1491052032;}s:64:\"5fb7c0834498c66dcbab61c90f893125f3f110b30f817585e037e63c300b98e0\";a:4:{s:10:\"expiration\";i:1491224837;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36\";s:5:\"login\";i:1491052037;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1491125620'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-contact\";i:1;s:29:\"add-post-type-video_directors\";i:2;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_video_directors', 'a:0:{}'),
(23, 1, 'metaboxhidden_video_directors', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BiaLzPJCpVh0pqwmco8kbsRfsUalJx.', 'root', 'goon2004@ukr.net', '', '2017-04-01 13:07:11', '', 0, 'root');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_huge_it_videogallery_galleries`
--
ALTER TABLE `wp_huge_it_videogallery_galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Індекси таблиці `wp_huge_it_videogallery_videos`
--
ALTER TABLE `wp_huge_it_videogallery_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `wp_huge_it_videogallery_galleries`
--
ALTER TABLE `wp_huge_it_videogallery_galleries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `wp_huge_it_videogallery_videos`
--
ALTER TABLE `wp_huge_it_videogallery_videos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

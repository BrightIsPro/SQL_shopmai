-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shop_mai_up
CREATE DATABASE IF NOT EXISTS `shop_mai_up` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `shop_mai_up`;

-- Dumping structure for table shop_mai_up.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.auth_group: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.auth_permission: ~48 rows (approximately)
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add test', 7, 'add_test'),
	(26, 'Can change test', 7, 'change_test'),
	(27, 'Can delete test', 7, 'delete_test'),
	(28, 'Can view test', 7, 'view_test'),
	(29, 'Can add tester', 8, 'add_tester'),
	(30, 'Can change tester', 8, 'change_tester'),
	(31, 'Can delete tester', 8, 'delete_tester'),
	(32, 'Can view tester', 8, 'view_tester'),
	(33, 'Can add feedbacks', 9, 'add_feedbacks'),
	(34, 'Can change feedbacks', 9, 'change_feedbacks'),
	(35, 'Can delete feedbacks', 9, 'delete_feedbacks'),
	(36, 'Can view feedbacks', 9, 'view_feedbacks'),
	(37, 'Can add products', 10, 'add_products'),
	(38, 'Can change products', 10, 'change_products'),
	(39, 'Can delete products', 10, 'delete_products'),
	(40, 'Can view products', 10, 'view_products'),
	(41, 'Can add users', 11, 'add_users'),
	(42, 'Can change users', 11, 'change_users'),
	(43, 'Can delete users', 11, 'delete_users'),
	(44, 'Can view users', 11, 'view_users'),
	(45, 'Can add posts', 12, 'add_posts'),
	(46, 'Can change posts', 12, 'change_posts'),
	(47, 'Can delete posts', 12, 'delete_posts'),
	(48, 'Can view posts', 12, 'view_posts');

-- Dumping structure for table shop_mai_up.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.auth_user: ~0 rows (approximately)
REPLACE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$600000$b87zsMJbak3Wfct6WMzAiI$xE8arxg+2LLwnQOXIy7VJY11I9pD/OLl7SzFxGyxv18=', '2023-12-25 09:13:45.000000', 1, 'kingo', '', '', 'kingo@gmail.com', 1, 1, '2023-12-12 14:38:21.000000');

-- Dumping structure for table shop_mai_up.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.auth_user_groups: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.auth_user_user_permissions: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.django_admin_log: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.django_content_type: ~12 rows (approximately)
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'project', 'feedbacks'),
	(12, 'project', 'posts'),
	(10, 'project', 'products'),
	(11, 'project', 'users'),
	(6, 'sessions', 'session'),
	(7, 'tests', 'test'),
	(8, 'tests', 'tester');

-- Dumping structure for table shop_mai_up.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.django_migrations: ~28 rows (approximately)
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-12-12 12:20:45.000000'),
	(2, 'auth', '0001_initial', '2023-12-12 12:20:45.000000'),
	(3, 'admin', '0001_initial', '2023-12-12 12:20:46.000000'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-12 12:20:46.000000'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-12 12:20:46.000000'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-12 12:20:46.000000'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-12 12:20:46.000000'),
	(8, 'auth', '0003_alter_user_email_max_length', '2023-12-12 12:20:46.000000'),
	(9, 'auth', '0004_alter_user_username_opts', '2023-12-12 12:20:46.000000'),
	(10, 'auth', '0005_alter_user_last_login_null', '2023-12-12 12:20:46.000000'),
	(11, 'auth', '0006_require_contenttypes_0002', '2023-12-12 12:20:46.000000'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-12 12:20:46.000000'),
	(13, 'auth', '0008_alter_user_username_max_length', '2023-12-12 12:20:46.000000'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-12 12:20:46.000000'),
	(15, 'auth', '0010_alter_group_name_max_length', '2023-12-12 12:20:46.000000'),
	(16, 'auth', '0011_update_proxy_permissions', '2023-12-12 12:20:46.000000'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-12 12:20:46.000000'),
	(18, 'sessions', '0001_initial', '2023-12-12 12:20:46.000000'),
	(19, 'tests', '0001_initial', '2023-12-12 14:29:55.000000'),
	(20, 'tests', '0002_remove_test_tid', '2023-12-12 14:30:26.000000'),
	(21, 'tests', '0003_tester', '2023-12-23 13:56:34.000000'),
	(22, 'tests', '0004_alter_tester_test_id', '2023-12-23 14:02:33.000000'),
	(23, 'tests', '0005_alter_tester_test_id', '2023-12-23 14:12:06.000000'),
	(24, 'tests', '0006_rename_test_id_tester_test', '2023-12-23 14:13:07.000000'),
	(25, 'project', '0001_initial', '2023-12-23 15:32:11.000000'),
	(26, 'project', '0002_alter_products_post', '2023-12-23 15:37:40.000000'),
	(27, 'project', '0003_alter_products_post', '2023-12-23 15:50:44.000000'),
	(28, 'project', '0004_alter_products_post', '2023-12-23 15:54:50.000000'),
	(29, 'project', '0005_alter_products_post', '2023-12-23 16:04:18.000000'),
	(30, 'project', '0006_remove_products_post', '2023-12-23 16:14:31.000000'),
	(31, 'project', '0007_products_post', '2023-12-23 16:17:34.000000');

-- Dumping structure for table shop_mai_up.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.django_session: ~1 rows (approximately)
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('rbvjttv1641ji9kd62qypr19gynq64s5', '.eJxVjDsOwyAQBe9CHSEwX6dM7zOghV2CkwgkY1dR7h4huUjaNzPvzQIcewlHpy2syK5MssvvFiE9qQ6AD6j3xlOr-7ZGPhR-0s6XhvS6ne7fQYFeRu2yTkIjqUlI8jR76zGCcSi0zgiYJuW8m600EsEbS1pImaNLOgKAYp8v6-I4LA:1rH48Z:V_Xfqehw3ewqkj5LFVPKQ15EfV__gmBcmgoASWZzUng', '2024-01-06 15:42:03.000000');

-- Dumping structure for table shop_mai_up.project_feedbacks
CREATE TABLE IF NOT EXISTS `project_feedbacks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.project_feedbacks: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.project_posts
CREATE TABLE IF NOT EXISTS `project_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(50) NOT NULL,
  `post_thumbnail` varchar(200) DEFAULT NULL,
  `post_sfdc` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_posts_user_id_03443b24_fk_project_users_id` (`user_id`),
  CONSTRAINT `project_posts_user_id_03443b24_fk_project_users_id` FOREIGN KEY (`user_id`) REFERENCES `project_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.project_posts: ~1 rows (approximately)

-- Dumping structure for table shop_mai_up.project_posts_ulike_post
CREATE TABLE IF NOT EXISTS `project_posts_ulike_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `posts_id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_posts_ulike_post_posts_id_users_id_52cf9778_uniq` (`posts_id`,`users_id`),
  KEY `project_posts_ulike_post_users_id_949aa963_fk_project_users_id` (`users_id`),
  CONSTRAINT `project_posts_ulike_post_posts_id_ae2c5727_fk_project_posts_id` FOREIGN KEY (`posts_id`) REFERENCES `project_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_posts_ulike_post_users_id_949aa963_fk_project_users_id` FOREIGN KEY (`users_id`) REFERENCES `project_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.project_posts_ulike_post: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.project_products
CREATE TABLE IF NOT EXISTS `project_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `img_src` varchar(100) DEFAULT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  CONSTRAINT `project_products_post_id_ce284ff1_fk_project_posts_id` FOREIGN KEY (`post_id`) REFERENCES `project_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.project_products: ~0 rows (approximately)

-- Dumping structure for table shop_mai_up.project_users
CREATE TABLE IF NOT EXISTS `project_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_mai_up.project_users: ~2 rows (approximately)
REPLACE INTO `project_users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `role`) VALUES
	(1, 'yorin', 'udomwat', 'kingo', 'asdwe122', 'kingo@gmail.com', 'member'),
	(2, 'gges', 'sdswe', 'sdsds', 'sdsds', 'jj@gmail.com', 'member');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

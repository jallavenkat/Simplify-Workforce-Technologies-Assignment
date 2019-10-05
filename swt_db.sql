-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2019 at 12:56 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
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
(25, 'Can add team', 7, 'add_team'),
(26, 'Can change team', 7, 'change_team'),
(27, 'Can delete team', 7, 'delete_team'),
(28, 'Can view team', 7, 'view_team'),
(29, 'Can add points table', 8, 'add_pointstable'),
(30, 'Can change points table', 8, 'change_pointstable'),
(31, 'Can delete points table', 8, 'delete_pointstable'),
(32, 'Can view points table', 8, 'view_pointstable'),
(33, 'Can add players', 9, 'add_players'),
(34, 'Can change players', 9, 'change_players'),
(35, 'Can delete players', 9, 'delete_players'),
(36, 'Can view players', 9, 'view_players'),
(37, 'Can add player history', 10, 'add_playerhistory'),
(38, 'Can change player history', 10, 'change_playerhistory'),
(39, 'Can delete player history', 10, 'delete_playerhistory'),
(40, 'Can view player history', 10, 'view_playerhistory'),
(41, 'Can add matches', 11, 'add_matches'),
(42, 'Can change matches', 11, 'change_matches'),
(43, 'Can delete matches', 11, 'delete_matches'),
(44, 'Can view matches', 11, 'view_matches');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$kB4sNNXvM63X$ig25tdlUHXpbDnC1FKlujjS7bcKht2DxDFuQ62Oh89o=', '2019-10-05 16:46:19.437533', 1, 'admin', '', '', 'jalla.venkatesh@gmail.com', 1, 1, '2019-10-05 16:46:08.307152');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-10-05 16:49:41.129250', '2', 'Team1', 2, '[{"changed": {"fields": ["team_logo"]}}]', 7, 1),
(2, '2019-10-05 16:49:48.568675', '3', 'Team2', 2, '[{"changed": {"fields": ["team_logo"]}}]', 7, 1),
(3, '2019-10-05 16:49:57.838373', '4', 'Team3', 2, '[{"changed": {"fields": ["team_logo"]}}]', 7, 1),
(4, '2019-10-05 16:50:06.133661', '5', 'Team4', 2, '[{"changed": {"fields": ["team_logo"]}}]', 7, 1),
(5, '2019-10-05 16:50:17.274462', '2', 'Team1', 2, '[{"changed": {"fields": ["club_state"]}}]', 7, 1),
(6, '2019-10-05 16:50:20.885668', '3', 'Team2', 2, '[]', 7, 1),
(7, '2019-10-05 16:50:27.136026', '4', 'Team3', 2, '[{"changed": {"fields": ["club_state"]}}]', 7, 1),
(8, '2019-10-05 16:50:32.938357', '5', 'Team4', 2, '[{"changed": {"fields": ["club_state"]}}]', 7, 1),
(9, '2019-10-05 18:50:21.880727', '2', 'CSK', 2, '[{"changed": {"fields": ["team_name"]}}]', 7, 1),
(10, '2019-10-05 18:50:28.297094', '3', 'Mumbai Indians', 2, '[{"changed": {"fields": ["team_name"]}}]', 7, 1),
(11, '2019-10-05 18:50:34.149429', '4', 'Punjab', 2, '[{"changed": {"fields": ["team_name"]}}]', 7, 1),
(12, '2019-10-05 18:50:39.582740', '5', 'SRH', 2, '[{"changed": {"fields": ["team_name"]}}]', 7, 1),
(13, '2019-10-05 18:51:13.935705', '1', 'Players object (1)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}, {"changed": {"name": "player history", "object": "PlayerHistory object (1)", "fields": ["runs"]}}]', 9, 1),
(14, '2019-10-05 18:53:34.281154', '2', 'Players object (2)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(15, '2019-10-05 18:53:49.057999', '4', 'Players object (4)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(16, '2019-10-05 18:54:24.179008', '3', 'Players object (3)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(17, '2019-10-05 18:55:05.362341', '5', 'Players object (5)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(18, '2019-10-05 18:55:46.695036', '6', 'Players object (6)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(19, '2019-10-05 18:56:19.298878', '7', 'Players object (7)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(20, '2019-10-05 18:56:42.138185', '8', 'Players object (8)', 2, '[{"changed": {"fields": ["firstname", "lastname", "image_uri"]}}]', 9, 1),
(21, '2019-10-05 19:03:43.441450', '2', 'Matches object (2)', 1, '[{"added": {}}]', 11, 1),
(22, '2019-10-05 19:03:53.711619', '3', 'Matches object (3)', 1, '[{"added": {}}]', 11, 1),
(23, '2019-10-05 19:04:00.208180', '4', 'Matches object (4)', 1, '[{"added": {}}]', 11, 1),
(24, '2019-10-05 19:05:26.102610', '5', 'Matches object (5)', 1, '[{"added": {}}]', 11, 1),
(25, '2019-10-05 19:07:39.331006', '3', 'PointsTable object (3)', 2, '[{"changed": {"fields": ["team_points"]}}]', 8, 1),
(26, '2019-10-05 19:07:42.818206', '4', 'PointsTable object (4)', 2, '[{"changed": {"fields": ["team_points"]}}]', 8, 1),
(27, '2019-10-05 19:08:06.217130', '8', 'Players object (8)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (2)"}}]', 9, 1),
(28, '2019-10-05 19:08:32.442630', '7', 'Players object (7)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (3)"}}]', 9, 1),
(29, '2019-10-05 19:08:51.360712', '6', 'Players object (6)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (4)"}}]', 9, 1),
(30, '2019-10-05 19:09:16.162131', '5', 'Players object (5)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (5)"}}]', 9, 1),
(31, '2019-10-05 19:09:35.170218', '4', 'Players object (4)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (6)"}}]', 9, 1),
(32, '2019-10-05 19:09:53.843286', '3', 'Players object (3)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (7)"}}]', 9, 1),
(33, '2019-10-05 19:10:09.385175', '2', 'Players object (2)', 2, '[{"added": {"name": "player history", "object": "PlayerHistory object (8)"}}]', 9, 1),
(34, '2019-10-05 19:10:30.272370', '1', 'Players object (1)', 2, '[{"changed": {"name": "player history", "object": "PlayerHistory object (1)", "fields": ["matches", "runs", "highest_score", "fifties", "hundreds"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'web', 'matches'),
(10, 'web', 'playerhistory'),
(9, 'web', 'players'),
(8, 'web', 'pointstable'),
(7, 'web', 'team');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-05 16:34:52.019101'),
(2, 'auth', '0001_initial', '2019-10-05 16:34:52.809509'),
(3, 'admin', '0001_initial', '2019-10-05 16:34:57.318731'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-05 16:34:58.831934'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-05 16:34:58.863134'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-05 16:34:59.299935'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-05 16:34:59.565135'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-05 16:35:00.189136'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-05 16:35:00.220336'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-05 16:35:00.450949'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-05 16:35:00.467950'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-05 16:35:00.499952'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-05 16:35:00.722964'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-05 16:35:01.623192'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-05 16:35:02.013193'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-05 16:35:02.075593'),
(17, 'sessions', '0001_initial', '2019-10-05 16:35:02.184793'),
(18, 'web', '0001_initial', '2019-10-05 16:35:02.527994');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0as2e2qqkjq9rbk6mhtbe64pysslv9cq', 'OWEyMzI4YWMxNTZlM2YzMjgzMWE0MzVjNWFmNWIzOWZmOTI1ZWRhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGIwNjQ2NjM5ODJmNTAwYWQ2NzEyODI3NzZjOGU1OTY2NGJlNzJkIn0=', '2019-10-19 16:46:19.458534');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE IF NOT EXISTS `matches` (
  `id` int(11) NOT NULL,
  `match_winner` int(11) DEFAULT NULL,
  `team_a` int(11) NOT NULL,
  `team_b` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `match_winner`, `team_a`, `team_b`) VALUES
(1, 2, 2, 3),
(2, 5, 4, 5),
(3, 2, 2, 4),
(4, 3, 3, 5),
(5, 2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `image_uri` varchar(100) NOT NULL,
  `jersey_no` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `player_history` longtext NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `firstname`, `lastname`, `image_uri`, `jersey_no`, `country`, `player_history`, `team_id`) VALUES
(1, 'Mahendra Singh', 'Dhoni', 'player/dhoni.jpg', 1, 'India', '', 2),
(2, 'Ravindra', 'Jadeja', 'player/jadeja.jpg', 2, 'India', '', 2),
(3, 'Jasprit', 'Bumrah', 'player/bumhra.jpg', 20, 'India', '', 3),
(4, 'Rohit', 'Sharma', 'player/rohit.jpg', 21, 'India', '', 3),
(5, 'Yuvaraj', 'Singh', 'player/yuvaraj.jpg', 41, 'India', '', 4),
(6, 'Ashwin', 'Ravichandran', 'player/ashwin.jpg', 45, 'India', '', 4),
(7, 'Yusuf', 'Pathan', 'player/yusuf.jpg', 61, 'India', '', 5),
(8, 'Bhuvneshwar', 'Kumar', 'player/bhuvi.jpg', 22, 'India', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `player_history`
--

CREATE TABLE IF NOT EXISTS `player_history` (
  `id` int(11) NOT NULL,
  `matches` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `highest_score` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `hundreds` int(11) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_history`
--

INSERT INTO `player_history` (`id`, `matches`, `runs`, `highest_score`, `fifties`, `hundreds`, `player_id`) VALUES
(1, 150, 10000, 186, 20, 16, 1),
(2, 10, 200, 50, 1, 0, 8),
(3, 50, 2000, 120, 5, 2, 7),
(4, 40, 800, 80, 2, 0, 6),
(5, 150, 8000, 160, 20, 8, 5),
(6, 150, 8000, 230, 20, 14, 4),
(7, 100, 600, 40, 0, 0, 3),
(8, 150, 6000, 150, 8, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pointstable`
--

CREATE TABLE IF NOT EXISTS `pointstable` (
  `id` int(11) NOT NULL,
  `team_points` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pointstable`
--

INSERT INTO `pointstable` (`id`, `team_points`, `team_id`) VALUES
(1, 8, 2),
(2, 4, 3),
(3, 4, 4),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `team_logo` varchar(100) NOT NULL,
  `club_state` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_name`, `team_logo`, `club_state`) VALUES
(2, 'CSK', 'team/csk.png', 'Chennai Cricket Association'),
(3, 'Mumbai Indians', 'team/MI.png', 'Mumbai Cricket Association'),
(4, 'Punjab', 'team/kxii.jpg', 'Punjab Cricket Association'),
(5, 'SRH', 'team/srh.jpg', 'Hyderabad Cricket Association');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matches_match_winner_abe26dd8_fk_teams_id` (`match_winner`),
  ADD KEY `matches_team_a_165ff36b_fk_teams_id` (`team_a`),
  ADD KEY `matches_team_b_52edc76e_fk_teams_id` (`team_b`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_id_8b821f35_fk_teams_id` (`team_id`);

--
-- Indexes for table `player_history`
--
ALTER TABLE `player_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_history_player_id_3adbe44c_fk_players_id` (`player_id`);

--
-- Indexes for table `pointstable`
--
ALTER TABLE `pointstable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pointstable_team_id_00ebbefe_fk_teams_id` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `player_history`
--
ALTER TABLE `player_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pointstable`
--
ALTER TABLE `pointstable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_match_winner_abe26dd8_fk_teams_id` FOREIGN KEY (`match_winner`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `matches_team_a_165ff36b_fk_teams_id` FOREIGN KEY (`team_a`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `matches_team_b_52edc76e_fk_teams_id` FOREIGN KEY (`team_b`) REFERENCES `teams` (`id`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_id_8b821f35_fk_teams_id` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `player_history`
--
ALTER TABLE `player_history`
  ADD CONSTRAINT `player_history_player_id_3adbe44c_fk_players_id` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`);

--
-- Constraints for table `pointstable`
--
ALTER TABLE `pointstable`
  ADD CONSTRAINT `pointstable_team_id_00ebbefe_fk_teams_id` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

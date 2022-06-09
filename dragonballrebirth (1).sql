-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 09 juin 2022 à 22:16
-- Version du serveur : 5.7.33
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dragonballrebirth`
--

-- --------------------------------------------------------

--
-- Structure de la table `adventure_modes`
--

CREATE TABLE `adventure_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `step_number` int(11) NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `character_id` bigint(20) UNSIGNED NOT NULL,
  `enemy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enemy_level` int(11) DEFAULT NULL,
  `enemy_health` int(11) DEFAULT NULL,
  `map_case_id` bigint(20) UNSIGNED NOT NULL,
  `planet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `adventure_modes`
--

INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL, 88, 1, '2022-05-20 11:13:22', '2022-05-20 11:13:23'),
(2, 2, 1, 1, 4, 2, 500, 88, 1, '2022-05-20 11:14:08', '2022-05-20 11:14:09'),
(3, 3, 1, 1, NULL, NULL, NULL, 88, 1, '2022-05-20 11:17:03', '2022-05-20 11:17:03'),
(4, 4, 1, 1, 4, 2, 500, 88, 1, '2022-05-20 11:19:43', '2022-05-20 11:19:43'),
(5, 1, 89, 1, NULL, NULL, NULL, 83, 1, '2022-05-20 11:33:53', '2022-05-20 11:33:53'),
(6, 1, 85, 15, NULL, NULL, NULL, 15, 4, '2022-05-25 21:28:56', '2022-05-25 21:28:56'),
(7, 1, 92, 23, NULL, NULL, NULL, 20, 1, '2022-05-25 23:03:47', '2022-05-25 23:03:47'),
(8, 1, 91, 1, NULL, NULL, NULL, 77, 1, '2022-05-25 23:27:38', '2022-05-25 23:27:39'),
(9, 1, 88, 10, 23, 22, 36000, 44, 1, '2022-05-25 23:30:58', '2022-05-25 23:30:58'),
(10, 1, 94, 31, 26, 22, 35000, 31, 1, '2022-05-25 23:35:33', '2022-05-25 23:35:34'),
(11, 27, 78, 2, NULL, NULL, NULL, 31, 1, '2022-05-26 21:35:38', '2022-05-26 21:35:39'),
(12, 28, 78, 2, NULL, NULL, NULL, 17, 1, '2022-05-26 21:41:17', '2022-05-26 21:41:18');

-- --------------------------------------------------------

--
-- Structure de la table `caps`
--

CREATE TABLE `caps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_level` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `caps_scarecities_id` bigint(20) UNSIGNED NOT NULL,
  `strength` int(11) DEFAULT NULL,
  `vitality` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `bonus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `malus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `caps`
--

INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
(1, 'Sauveur de la Terre', 1, 15000, 1, 0, 0, 0, 0, 'Point de base x2', '', '2022-05-18 20:03:07', '2022-05-18 20:03:07'),
(2, 'Bâton de force', 1, 2000, 2, 1, 0, 0, 0, 'Bonus : +1', '', '2022-05-19 20:09:46', '2022-05-19 20:09:47'),
(3, 'Bâton de vitalité', 1, 2000, 2, 0, 100, 0, 0, 'Bonus : +1', '', '2022-05-19 20:09:48', '2022-05-19 20:09:48'),
(4, 'Carapace Tortue', 5, 2000, 2, 0, 0, 1, 0, 'Bonus : +1', '', '2022-05-19 20:09:49', '2022-05-19 20:09:49'),
(5, 'Éventail magique', 5, 2000, 2, 0, 0, 0, 1, 'Bonus : +1', '', '2022-05-19 20:09:49', '2022-05-19 20:09:49'),
(6, 'Caouille de la Tortue', 5, 5000, 3, 0, 0, 1, 1, 'Bonus : +2', '', '2022-05-19 20:09:50', '2022-05-19 20:09:50'),
(7, 'Pierre d\'évolution', 5, 5000, 3, 0, 100, 0, 1, 'Bonus : +2', '', '2022-05-19 20:09:51', '2022-05-19 20:09:51'),
(8, 'Pierre de férocité', 5, 5000, 3, 1, 0, 0, 1, 'Bonus : +2', '', '2022-05-19 20:09:51', '2022-05-19 20:09:51'),
(9, 'Pierre de force', 5, 5000, 3, 2, 0, 0, 0, 'Bonus : +2', '', '2022-05-19 20:09:52', '2022-05-19 20:09:52'),
(10, 'Pierre de lune', 5, 5000, 3, 1, 0, 1, 0, 'Bonus : +2', '', '2022-05-19 20:09:53', '2022-05-19 20:09:53'),
(11, 'Pierre de résistance', 5, 5000, 3, 0, 0, 2, 0, 'Bonus : +2', '', '2022-05-19 20:09:53', '2022-05-19 20:09:53'),
(12, 'Pierre de vitalité', 5, 5000, 3, 0, 200, 0, 0, 'Bonus : +2', '', '2022-05-19 20:09:54', '2022-05-19 20:09:54'),
(13, 'Pierre énergétique', 5, 5000, 3, 0, 0, 0, 2, 'Bonus : +2', '', '2022-05-19 20:09:55', '2022-05-19 20:09:55'),
(14, 'Pierre philosophale', 5, 5000, 3, 1, 100, 0, 0, 'Bonus : +2', '', '2022-05-19 20:09:55', '2022-05-19 20:09:55'),
(15, 'Poudre de senzu', 5, 5000, 3, 0, 100, 1, 0, 'Bonus : +2', '', '2022-05-19 20:09:56', '2022-05-19 20:09:56'),
(16, 'Attaque Kaioken', 10, 20000, 4, 2, 0, -1, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:09:57', '2022-05-19 20:09:57'),
(17, 'Boîte à musique', 10, 20000, 4, 0, 200, -1, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:09:57', '2022-05-19 20:09:57'),
(18, 'Boite du dragon', 10, 20000, 4, -1, 200, 2, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:09:58', '2022-05-19 20:09:58'),
(19, 'Boite mystique', 10, 20000, 4, -1, 200, 0, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:09:59', '2022-05-19 20:09:59'),
(20, 'Boite renforcée', 10, 20000, 4, 0, 200, 2, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:09:59', '2022-05-19 20:09:59'),
(21, 'Concentration de KI', 10, 20000, 4, -1, 0, 2, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:00', '2022-05-19 20:10:00'),
(22, 'Dernier senzu', 10, 20000, 4, 0, 400, 0, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:01', '2022-05-19 20:10:01'),
(23, 'Dernier voeu', 10, 20000, 4, -1, 400, 0, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:01', '2022-05-19 20:10:01'),
(24, 'Dernier soins', 10, 20000, 4, 0, 400, -1, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:02', '2022-05-19 20:10:02'),
(25, 'Fruit de l\'Arbre Sacré', 10, 20000, 4, 3, -100, 0, 1, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:02', '2022-05-19 20:10:03'),
(26, 'Poing de Yamcha', 10, 20000, 4, 2, 200, 0, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:03', '2022-05-19 20:10:03'),
(27, 'Puissance du Désespoir', 10, 20000, 4, 1, -100, 0, 3, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:04', '2022-05-19 20:10:04'),
(28, 'Récupération de Dendé', 10, 20000, 4, 0, -100, 3, 1, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:04', '2022-05-19 20:10:05'),
(29, 'Soutien de Kibito', 10, 20000, 4, 2, 0, 2, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:05', '2022-05-19 20:10:05'),
(30, 'Tenue Enchantée', 10, 20000, 4, 0, -100, 1, 3, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:06', '2022-05-19 20:10:06'),
(31, 'Tenue lourde', 10, 20000, 4, 1, -100, 3, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:06', '2022-05-19 20:10:06'),
(32, 'Tenue saiyan', 10, 20000, 4, 3, -100, 1, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:07', '2022-05-19 20:10:07'),
(33, 'Voeu de Yamcha', 10, 20000, 4, 2, 200, -1, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 20:10:08', '2022-05-19 20:10:08'),
(34, 'Acier Kacchin', 15, 0, 5, 4, -400, 12, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:08', '2022-05-19 20:10:08'),
(35, 'Attaque Kaioken x20', 15, 0, 5, 8, -400, 0, 8, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:09', '2022-05-19 20:10:09'),
(36, 'Bouclier Kacchin', 15, 0, 5, 0, -400, 12, 4, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:10', '2022-05-19 20:10:10'),
(37, 'Boule magique', 15, 0, 5, 4, -400, 0, 12, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:10', '2022-05-19 20:10:10'),
(38, 'Eau démoniaque', 15, 0, 5, 0, 1200, -4, 4, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:11', '2022-05-19 20:10:11'),
(39, 'Eau divine', 15, 0, 5, -4, 1200, 4, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:12', '2022-05-19 20:10:12'),
(40, 'Eau sacrée', 15, 0, 5, 4, 1200, -4, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:12', '2022-05-19 20:10:12'),
(41, 'Élixir démoniaque', 15, 0, 5, -4, 400, 0, 12, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:14', '2022-05-19 20:10:14'),
(42, 'Élixir divin', 15, 0, 5, -4, 400, 12, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:14', '2022-05-19 20:10:14'),
(43, 'Élixir sacré', 15, 0, 5, 12, 400, 0, -4, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:15', '2022-05-19 20:10:15'),
(44, 'Eveil du Potentiel', 15, 0, 5, 0, -400, 4, 12, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:16', '2022-05-19 20:10:16'),
(45, 'Lance maléfique', 15, 0, 5, 12, -400, 0, 4, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:16', '2022-05-19 20:10:16'),
(46, 'Z-Sword', 15, 0, 5, 12, -400, 4, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 20:10:17', '2022-05-19 20:10:17'),
(47, 'Elève de Kame Sennin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(48, 'Démon bienveillant', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(49, 'Frère impitoyable', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(50, 'Saiyan au potentiel infini', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(51, 'La mort ne lui fait pas peur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(52, 'Graînes diaboliques', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(53, 'Télékinésiste', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(54, 'Un faible mentor', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(55, 'Combattant tri clope', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(56, 'Prince des saiyans', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(57, 'Squatteur de la tour Karine', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(58, 'Rival de Vegeta', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(59, 'Bras droit de Freezer', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(60, 'Bras gauche de Freezer', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(61, 'Force verte', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(62, 'Force orange', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(63, 'Force bleue', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(64, 'Capitaine des forces spéciales', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(65, 'Force rouge', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(66, 'Espoir de Namek', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(67, 'Tyran de la galaxie', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(68, 'Saiyan venu du futur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(69, 'Géniteur tyrannique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(70, 'Assistant du Dr. Gero', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(71, 'Génie incompris', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(72, 'Ami des oiseaux', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(73, 'Usurpateur de talent', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(74, 'Partie de Cell', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(75, 'Android envoutante', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(76, 'Garde forestier', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(77, 'Monstre du futur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(78, 'Rival de Trunks', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(79, 'Grande justicière', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(80, 'Rival de Goten', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(81, 'Kaioshin de l\'Est', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(82, 'Subalterne de Kaioshin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(83, 'Gardien du premier niveau', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(84, 'Roi des démons', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(85, 'Fusion des jeunes Saïyens', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(86, 'Bibbidi-Bobbidi-Boo !', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(87, 'Pouvoir des Potaras', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(88, 'Démon Maléfique Majin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(89, 'Pouvoir de la Lune', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(90, 'Monarque des Saïyans', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(91, 'Guerrière intergalactique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(92, 'Âme démoniaque', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(93, 'Acolyte Intergalactique B', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(94, 'Union Shinjin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(95, 'Vision du futur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(96, 'Saïyan de caste inférieure', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(97, 'Acolyte Combattante', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(98, 'Dieu Tout-Puissant', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(99, 'Fils immortel', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(100, 'Lapin lunaire', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(101, 'Acolyte Intergalactique G', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(102, 'Magicien Intergalactique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(103, 'Mercenaire de l\'espace', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(104, 'Guerrier millénaire', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(105, 'Frère tyrannique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(106, 'Professeur de Trunks', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(107, 'Android Grisâtre', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(108, 'Android Champignon', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(109, 'L\'ultime cyborg ', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL),
(110, 'Saiyan au fruit', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `caps_scarecities`
--

CREATE TABLE `caps_scarecities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `caps_scarecities`
--

INSERT INTO `caps_scarecities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Personnage', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-2-0.svg', '2022-05-18 20:03:07', '2022-05-18 20:03:07'),
(2, 'Commune', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-1.png', '2022-05-19 16:38:41', '2022-05-19 16:38:43'),
(3, 'Rare', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-2.png', '2022-05-19 16:38:44', '2022-05-19 16:38:44'),
(4, 'Épique', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-3.svg', '2022-05-19 16:39:14', '2022-05-19 16:39:14'),
(5, 'Légendaire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-4.png', '2022-05-19 16:39:38', '2022-05-19 16:39:39');

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caps_id` bigint(20) UNSIGNED DEFAULT NULL,
  `step_unlock` int(11) DEFAULT NULL,
  `story_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ruby_cost` int(11) DEFAULT NULL,
  `is_pnj` tinyint(1) DEFAULT NULL,
  `main_story_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `is_pnj`, `main_story_id`, `created_at`, `updated_at`) VALUES
(1, 'Son Goku', 'https://dragonballrebirth.fr/img/characters/son-goku/', 1, 1, 1, 0, NULL, 1, '2022-05-18 20:03:07', '2022-06-08 18:15:32'),
(2, 'Krilin', 'https://www.dragonballrebirth.fr/img/characters/krilin/', 47, 2, 1, 0, NULL, 1, '2022-05-20 09:44:46', '2022-05-20 09:44:46'),
(3, 'Piccolo', 'https://www.dragonballrebirth.fr/img/characters/piccolo/', 48, 3, 1, 0, NULL, 1, '2022-05-20 09:44:48', '2022-05-20 09:44:48'),
(4, 'Raditz', 'https://www.dragonballrebirth.fr/img/characters/raditz/', 49, 6, 1, 0, NULL, 1, '2022-05-20 09:44:48', '2022-06-08 18:18:36'),
(5, 'Son Gohan', 'https://www.dragonballrebirth.fr/img/characters/son-gohan/', 50, 9, 1, 0, NULL, 1, '2022-05-20 09:44:49', '2022-06-08 18:19:36'),
(6, 'Yamcha', 'https://www.dragonballrebirth.fr/img/characters/yamcha/', 51, 11, 1, 0, NULL, 1, '2022-05-20 09:44:50', '2022-06-08 18:22:02'),
(7, 'Saibaman', 'https://www.dragonballrebirth.fr/img/characters/saibaman/', 52, 13, 1, 0, NULL, 1, '2022-05-20 09:44:51', '2022-06-08 18:32:51'),
(8, 'Chaozu', 'https://www.dragonballrebirth.fr/img/characters/chaozu/', 53, 14, 1, 0, NULL, 1, '2022-05-20 09:44:51', '2022-06-08 18:40:11'),
(9, 'Nappa', 'https://www.dragonballrebirth.fr/img/characters/nappa/', 54, 15, 1, 0, NULL, 1, '2022-05-20 09:44:52', '2022-06-08 18:40:15'),
(10, 'Tenshinhan', 'https://www.dragonballrebirth.fr/img/characters/tenshinhan/', 55, 16, 1, 0, NULL, 1, '2022-05-20 09:44:53', '2022-06-08 18:40:20'),
(11, 'Vegeta', 'https://www.dragonballrebirth.fr/img/characters/vegeta/', 56, 18, 1, 0, NULL, 1, '2022-05-20 09:44:54', '2022-06-08 18:40:29'),
(12, 'Yajirobe', 'https://www.dragonballrebirth.fr/img/characters/yajirobe/', 57, 22, 1, 0, NULL, 1, '2022-05-20 09:44:54', '2022-06-08 18:40:34'),
(13, 'Kiwi', 'https://www.dragonballrebirth.fr/img/characters/kiwi/', 58, 30, 78, 0, NULL, 1, '2022-05-20 09:44:55', '2022-06-08 18:40:40'),
(14, 'Dodoria', 'https://www.dragonballrebirth.fr/img/characters/dodoria/', 59, 32, 78, 0, NULL, 1, '2022-05-20 09:44:56', '2022-06-08 18:40:47'),
(15, 'Zabon', 'https://www.dragonballrebirth.fr/img/characters/zarbon/', 60, 37, 78, 0, NULL, 1, '2022-05-20 09:44:57', '2022-06-08 18:40:52'),
(16, 'Guldo', 'https://www.dragonballrebirth.fr/img/characters/guldo/', 61, 45, 78, 0, NULL, 1, '2022-05-20 09:44:57', '2022-06-08 18:40:59'),
(17, 'Reecom', 'https://www.dragonballrebirth.fr/img/characters/reecom/', 62, 47, 78, 0, NULL, 1, '2022-05-20 09:44:58', '2022-06-08 18:41:04'),
(18, 'Barta', 'https://www.dragonballrebirth.fr/img/characters/barta/', 63, 48, 78, 0, NULL, 1, '2022-05-20 09:44:59', '2022-06-08 18:41:09'),
(19, 'Ginyu', 'https://www.dragonballrebirth.fr/img/characters/ginyu/', 64, 49, 78, 0, NULL, 1, '2022-05-20 09:45:00', '2022-06-08 18:41:16'),
(20, 'Jeece', 'https://www.dragonballrebirth.fr/img/characters/jeece/', 65, 51, 78, 0, NULL, 1, '2022-05-20 09:45:00', '2022-06-08 18:41:22'),
(21, 'Nail', 'https://www.dragonballrebirth.fr/img/characters/nail/', 66, 53, 78, 0, NULL, 1, '2022-05-20 09:45:01', '2022-06-08 18:41:28'),
(22, 'Freezer', 'https://www.dragonballrebirth.fr/img/characters/freezer/', 67, 70, 78, 0, NULL, 1, '2022-05-20 09:45:02', '2022-06-08 18:41:33'),
(23, 'Mirai Trunks', 'https://www.dragonballrebirth.fr/img/characters/mirai-trunks/', 68, 72, 79, 0, NULL, 1, '2022-05-20 09:45:03', '2022-06-08 18:41:41'),
(24, 'Roi Cold', 'https://www.dragonballrebirth.fr/img/characters/king-cold/', 69, 75, 79, 0, NULL, 1, '2022-05-20 09:45:03', '2022-06-08 18:41:48'),
(25, 'C-19', 'https://www.dragonballrebirth.fr/img/characters/c19/', 70, 87, 79, 0, NULL, 1, '2022-05-20 09:45:04', '2022-06-08 18:41:55'),
(26, 'Dr. Gero', 'https://www.dragonballrebirth.fr/img/characters/drgero/', 71, 94, 79, 0, NULL, 1, '2022-05-20 09:45:05', '2022-06-08 18:42:03'),
(27, 'C-16', 'https://www.dragonballrebirth.fr/img/characters/c16/', 72, 110, 80, 0, NULL, 1, '2022-05-20 09:45:06', '2022-06-08 18:42:10'),
(28, 'Mr. Satan', 'https://www.dragonballrebirth.fr/img/characters/satan/', 73, 129, 80, 0, NULL, 1, '2022-05-20 09:45:06', '2022-06-08 18:42:15'),
(29, 'Cell Jr.', 'https://www.dragonballrebirth.fr/img/characters/cell-jr/', 74, 135, 80, 0, NULL, 1, '2022-05-20 09:45:07', '2022-06-08 18:42:23'),
(30, 'C-18', 'https://www.dragonballrebirth.fr/img/characters/c18/', 75, 150, 92, 0, NULL, 1000, '2022-05-20 09:45:08', '2022-06-08 18:45:04'),
(31, 'C-17', 'https://www.dragonballrebirth.fr/img/characters/c17/', 76, 151, 92, 0, NULL, 1000, '2022-05-20 09:45:09', '2022-06-08 18:45:09'),
(32, 'Cell', 'https://www.dragonballrebirth.fr/img/characters/cell/', 77, 152, 80, 0, NULL, 1, '2022-05-20 09:45:09', '2022-06-08 18:42:30'),
(33, 'Son Goten', 'https://www.dragonballrebirth.fr/img/characters/son-goten/', 78, 157, 81, 0, NULL, 1, '2022-05-20 09:45:10', '2022-06-08 18:42:37'),
(34, 'Videl', 'https://www.dragonballrebirth.fr/img/characters/videl/', 79, 158, 81, 0, NULL, 1, '2022-05-20 09:45:11', '2022-06-08 18:42:43'),
(35, 'Trunks', 'https://www.dragonballrebirth.fr/img/characters/trunks/', 80, 161, 81, 0, NULL, 1, '2022-05-20 09:45:12', '2022-06-08 18:42:51'),
(36, 'Kaioshin', 'https://www.dragonballrebirth.fr/img/characters/kaioshin/', 81, 180, 81, 0, NULL, 1, '2022-05-20 09:45:12', '2022-05-20 09:45:12'),
(37, 'Kibito', 'https://www.dragonballrebirth.fr/img/characters/kibito/', 82, 186, 81, 0, NULL, 1, '2022-05-20 09:45:13', '2022-05-20 09:45:13'),
(38, 'Puipui', 'https://www.dragonballrebirth.fr/img/characters/puipui/', 83, 192, 81, 0, NULL, 1, '2022-05-20 09:45:14', '2022-06-08 18:43:10'),
(39, 'Dabra', 'https://www.dragonballrebirth.fr/img/characters/dabra/', 84, 201, 81, 0, NULL, 1, '2022-05-20 09:45:15', '2022-06-08 18:43:17'),
(40, 'Gotenks', 'https://www.dragonballrebirth.fr/img/characters/gotenks/', 85, 230, 82, 0, NULL, 1, '2022-05-20 09:45:15', '2022-06-08 18:43:24'),
(41, 'Buu', 'https://www.dragonballrebirth.fr/img/characters/buu/', 86, 234, 82, 0, NULL, 1, '2022-05-20 09:45:16', '2022-06-08 18:43:32'),
(42, 'Vegetto', 'https://www.dragonballrebirth.fr/img/characters/vegetto/', 87, 267, 82, 0, NULL, 1, '2022-05-20 09:45:17', '2022-06-08 18:43:43'),
(43, 'Super Buu', 'https://www.dragonballrebirth.fr/img/characters/super-buu/', 88, 294, 82, 0, NULL, 1, '2022-05-20 09:45:17', '2022-06-08 18:43:52'),
(44, 'Oozaru', 'https://www.dragonballrebirth.fr/img/characters/oozaru/', 89, 1, 1, 25, NULL, 1, '2022-05-20 09:45:18', '2022-06-08 18:45:48'),
(45, 'Roi Vegeta', 'https://www.dragonballrebirth.fr/img/characters/king-vegeta/', 90, 1, 1, 25, NULL, 1, '2022-05-20 09:45:19', '2022-06-08 18:46:07'),
(46, 'Zangya', 'https://www.dragonballrebirth.fr/img/characters/zangya/', 91, 1, 1, 25, NULL, 1, '2022-05-20 09:45:20', '2022-06-08 18:45:54'),
(47, 'Evil Buu', 'https://www.dragonballrebirth.fr/img/characters/evil-buu/', 92, 1, 1, 25, NULL, 1, '2022-05-20 09:45:20', '2022-06-08 18:46:24'),
(48, 'Bido', 'https://www.dragonballrebirth.fr/img/characters/bido/', 93, 1, 1, 25, NULL, 1, '2022-05-20 09:45:21', '2022-06-08 18:46:19'),
(49, 'Kibitoshin', 'https://www.dragonballrebirth.fr/img/characters/kibitoshin/', 94, 1, 1, 25, NULL, NULL, '2022-05-20 09:45:22', '2022-05-20 09:45:22'),
(50, 'Baddack', 'https://www.dragonballrebirth.fr/img/characters/baddack/', 95, 1, 85, 0, NULL, 1000, '2022-05-20 09:45:23', '2022-06-08 18:43:58'),
(51, 'Toma', 'https://www.dragonballrebirth.fr/img/characters/toma/', 96, 5, 85, 0, NULL, 1000, '2022-05-20 09:45:23', '2022-06-08 18:44:05'),
(52, 'Vasha', 'https://www.dragonballrebirth.fr/img/characters/vasha/', 97, 18, 85, 0, NULL, 1000, '2022-05-20 09:45:24', '2022-06-08 18:44:10'),
(53, 'Kami Sama', 'https://www.dragonballrebirth.fr/img/characters/kami-sama/', 98, 7, 86, 0, NULL, 1000, '2022-05-20 09:45:25', '2022-06-02 13:59:20'),
(54, 'Garlic Jr.', 'https://www.dragonballrebirth.fr/img/characters/garlic/', 99, 16, 86, 0, NULL, 1000, '2022-05-20 09:45:26', '2022-06-08 18:44:17'),
(55, 'Toto le lapin', 'https://www.dragonballrebirth.fr/img/characters/toto/', 100, 3, 87, 0, NULL, 1000, '2022-05-20 09:45:26', '2022-06-08 18:44:23'),
(56, 'Gokua', 'https://www.dragonballrebirth.fr/img/characters/gokua/', 101, 11, 88, 0, NULL, 1000, '2022-05-20 09:45:27', '2022-06-08 18:44:30'),
(57, 'Bujin', 'https://www.dragonballrebirth.fr/img/characters/bujin/', 102, 33, 88, 0, NULL, 1000, '2022-05-20 09:45:28', '2022-06-08 18:44:35'),
(58, 'Bojack', 'https://www.dragonballrebirth.fr/img/characters/bojack/', 103, 35, 88, 0, NULL, 1000, '2022-05-20 09:45:28', '2022-06-08 18:44:40'),
(59, 'Broly', 'https://www.dragonballrebirth.fr/img/characters/broly/', 104, 20, 90, 0, NULL, 1000, '2022-05-20 09:45:29', '2022-06-08 18:44:46'),
(60, 'Cooler', 'https://www.dragonballrebirth.fr/img/characters/cooler/', 105, 16, 91, 0, NULL, 1000, '2022-05-20 09:45:30', '2022-06-08 18:44:52'),
(61, 'Mirai Gohan', 'https://www.dragonballrebirth.fr/img/characters/mirai-gohan/', 106, 9, 92, 0, NULL, 1000, '2022-05-20 09:45:31', '2022-06-08 18:44:57'),
(62, 'C-14', 'https://www.dragonballrebirth.fr/img/characters/c14/', 107, 14, 94, 0, NULL, 1000, '2022-05-20 09:45:31', '2022-06-08 18:45:25'),
(63, 'C-15', 'https://www.dragonballrebirth.fr/img/characters/c15/', 108, 16, 94, 0, NULL, 1000, '2022-05-20 09:45:32', '2022-06-08 18:45:31'),
(64, 'C-13', 'https://www.dragonballrebirth.fr/img/characters/c13/', 109, 28, 94, 0, NULL, 1000, '2022-05-20 09:45:33', '2022-06-08 18:45:36'),
(65, 'Thales', 'https://www.dragonballrebirth.fr/img/characters/thales/', 110, 10, 95, 0, NULL, 1000, '2022-05-20 09:45:34', '2022-06-08 18:45:43'),
(66, 'Malfrat', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-05-27 09:45:57', '2022-05-27 09:45:57'),
(69, 'Sbire de freezer', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-05-31 08:40:41', '2022-05-31 08:44:22'),
(70, 'Michel', 'https://dragonballrebirth.fr/img/characters/tenshinhan/', NULL, 50, 81, 0, NULL, 1, '2022-06-09 16:19:03', '2022-06-09 16:19:03');

-- --------------------------------------------------------

--
-- Structure de la table `character_categories`
--

CREATE TABLE `character_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `character_categories`
--

INSERT INTO `character_categories` (`id`, `name`) VALUES
(1, 'Saiyan'),
(2, 'Terrien'),
(3, 'Demi Saiyan'),
(4, 'Vie artificielle'),
(5, 'Alien'),
(6, 'Armée de Freezer'),
(7, 'Démon');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `link_characters_to_categories`
--

CREATE TABLE `link_characters_to_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `character_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `link_characters_to_categories`
--

INSERT INTO `link_characters_to_categories` (`id`, `character_id`, `category_id`) VALUES
(2, 2, 2),
(3, 3, 2),
(14, 1, 1),
(15, 4, 1),
(16, 5, 3),
(17, 6, 2),
(21, 7, 4),
(26, 8, 2),
(27, 9, 1),
(28, 10, 2),
(29, 11, 1),
(30, 12, 2),
(31, 13, 6),
(32, 14, 6),
(33, 15, 6),
(34, 16, 6),
(35, 17, 6),
(36, 18, 6),
(37, 19, 6),
(38, 20, 6),
(39, 21, 5),
(40, 22, 6),
(41, 23, 3),
(42, 24, 7),
(43, 25, 4),
(44, 26, 4),
(45, 27, 4),
(46, 28, 2),
(47, 29, 4),
(48, 32, 4),
(49, 33, 3),
(50, 34, 2),
(51, 35, 3),
(52, 38, 5),
(53, 39, 7),
(54, 40, 3),
(55, 41, 7),
(56, 42, 1),
(57, 43, 7),
(58, 50, 1),
(59, 51, 1),
(60, 52, 1),
(61, 54, 7),
(62, 55, 2),
(63, 56, 5),
(64, 57, 5),
(65, 58, 5),
(66, 59, 1),
(67, 60, 7),
(68, 61, 3),
(69, 30, 4),
(70, 31, 4),
(71, 62, 4),
(72, 63, 4),
(73, 64, 4),
(74, 65, 1),
(75, 44, 1),
(76, 46, 5),
(77, 45, 1),
(78, 48, 5),
(79, 47, 7);

-- --------------------------------------------------------

--
-- Structure de la table `link_rewards_to_steps`
--

CREATE TABLE `link_rewards_to_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rewards_id` bigint(20) UNSIGNED NOT NULL,
  `step_number` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `link_rewards_to_steps`
--

INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-05-20 11:03:43', '2022-05-20 11:03:44'),
(2, 3, 2, '2022-05-20 11:15:34', '2022-05-20 11:15:34'),
(3, 1, 2, '2022-05-20 11:15:49', '2022-05-20 11:15:50'),
(4, 4, 3, '2022-05-20 11:18:31', '2022-05-20 11:18:32'),
(5, 3, 3, '2022-05-20 11:18:40', '2022-05-20 11:18:40'),
(6, 6, 4, '2022-05-20 11:22:21', '2022-05-20 11:22:22'),
(7, 5, 4, '2022-05-20 11:22:30', '2022-05-20 11:22:30'),
(8, 7, 5, '2022-05-20 11:35:10', '2022-05-20 11:35:10'),
(9, 9, 6, '2022-05-25 21:29:19', '2022-05-25 21:29:20'),
(10, 8, 6, '2022-05-25 21:29:31', '2022-05-25 21:29:32'),
(14, 13, 7, '2022-05-25 23:07:12', '2022-05-25 23:07:12'),
(15, 14, 7, '2022-05-25 23:07:28', '2022-05-25 23:07:29'),
(16, 15, 7, '2022-05-25 23:07:28', '2022-05-25 23:07:29'),
(17, 16, 8, '2022-05-25 23:29:12', '2022-05-25 23:29:13'),
(18, 17, 9, '2022-05-25 23:32:11', '2022-05-25 23:32:12'),
(19, 18, 10, '2022-05-25 23:36:56', '2022-05-25 23:36:56'),
(20, 19, 11, '2022-05-26 21:40:41', '2022-05-26 21:40:41'),
(21, 22, 12, '2022-05-26 21:42:31', '2022-05-26 21:42:34'),
(22, 21, 12, '2022-05-26 21:42:32', '2022-05-26 21:42:34'),
(23, 20, 12, '2022-05-26 21:42:33', '2022-05-26 21:42:33');

-- --------------------------------------------------------

--
-- Structure de la table `link_win_conditions_to_steps`
--

CREATE TABLE `link_win_conditions_to_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conditions_id` bigint(20) UNSIGNED NOT NULL,
  `step_number` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `link_win_conditions_to_steps`
--

INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-05-20 10:55:51', '2022-05-20 10:55:51'),
(2, 2, 2, '2022-05-20 11:16:08', '2022-05-20 11:16:08'),
(3, 1, 3, '2022-05-20 11:17:39', '2022-05-20 11:17:39'),
(4, 4, 4, '2022-05-20 11:20:08', '2022-05-20 11:20:09'),
(5, 1, 5, '2022-05-20 11:36:32', '2022-05-20 11:36:32'),
(7, 1, 6, '2022-05-25 21:29:45', '2022-05-25 21:29:46'),
(8, 5, 7, '2022-05-25 23:06:00', '2022-05-25 23:06:01'),
(9, 6, 8, '2022-05-25 23:29:28', '2022-05-25 23:29:29'),
(10, 4, 9, '2022-05-25 23:32:44', '2022-05-25 23:32:45'),
(15, 14, 12, '2022-05-26 21:40:13', '2022-05-26 21:40:15'),
(16, 15, 12, '2022-05-26 21:40:13', '2022-05-26 21:40:15'),
(17, 16, 12, '2022-05-26 21:40:14', '2022-05-26 21:40:14'),
(18, 13, 11, '2022-05-26 21:41:36', '2022-05-26 21:41:37');

-- --------------------------------------------------------

--
-- Structure de la table `main_stories`
--

CREATE TABLE `main_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `main_stories`
--

INSERT INTO `main_stories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mode Aventure : Normale', '2022-05-20 10:37:07', '2022-05-20 10:37:07'),
(2, 'Mode Aventure : Hard', '2022-05-20 10:37:18', '2022-05-20 10:37:18'),
(1000, 'Quêtes Annexes', NULL, NULL),
(1500, 'Aucune', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `map_cases`
--

CREATE TABLE `map_cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `map_cases`
--

INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
(1, 'A-1', '2022-05-18 20:03:07', '2022-05-18 20:03:07'),
(2, 'A-2', '2022-05-19 16:40:31', '2022-05-19 16:40:31'),
(3, 'A-3', '2022-05-19 16:40:48', '2022-05-19 16:40:48'),
(4, 'A-4', '2022-05-19 16:41:06', '2022-05-19 16:41:07'),
(5, 'A-5', '2022-05-19 16:49:04', '2022-05-19 16:49:04'),
(6, 'A-6', '2022-05-19 16:49:05', '2022-05-19 16:49:05'),
(7, 'A-7', '2022-05-19 16:49:06', '2022-05-19 16:49:06'),
(8, 'A-8', '2022-05-19 16:49:06', '2022-05-19 16:49:07'),
(9, 'A-9', '2022-05-19 16:49:07', '2022-05-19 16:49:08'),
(10, 'B-1', '2022-05-19 16:49:08', '2022-05-19 16:49:08'),
(11, 'B-2', '2022-05-19 16:49:08', '2022-05-19 16:49:08'),
(12, 'B-3', '2022-05-19 16:49:08', '2022-05-19 16:49:08'),
(13, 'B-4', '2022-05-19 16:49:08', '2022-05-19 16:49:08'),
(14, 'B-5', '2022-05-19 16:49:08', '2022-05-19 16:49:08'),
(15, 'B-6', '2022-05-19 16:49:08', '2022-05-19 16:49:08'),
(16, 'B-7', '2022-05-19 16:49:08', '2022-05-19 16:49:09'),
(17, 'B-8', '2022-05-19 16:49:09', '2022-05-19 16:49:09'),
(18, 'B-9', '2022-05-19 16:49:09', '2022-05-19 16:49:09'),
(19, 'C-1', '2022-05-19 16:49:09', '2022-05-19 16:49:09'),
(20, 'C-2', '2022-05-19 16:49:09', '2022-05-19 16:49:09'),
(21, 'C-3', '2022-05-19 16:49:09', '2022-05-19 16:49:09'),
(22, 'C-4', '2022-05-19 16:49:09', '2022-05-19 16:49:09'),
(23, 'C-5', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(24, 'C-6', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(25, 'C-7', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(26, 'C-8', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(27, 'C-9', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(28, 'D-1', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(29, 'D-2', '2022-05-19 16:49:10', '2022-05-19 16:49:10'),
(30, 'D-3', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(31, 'D-4', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(32, 'D-5', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(33, 'D-6', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(34, 'D-7', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(35, 'D-8', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(36, 'D-9', '2022-05-19 16:49:11', '2022-05-19 16:49:11'),
(37, 'E-1', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(38, 'E-2', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(39, 'E-3', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(40, 'E-4', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(41, 'E-5', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(42, 'E-6', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(43, 'E-7', '2022-05-19 16:49:12', '2022-05-19 16:49:12'),
(44, 'E-8', '2022-05-19 16:49:12', '2022-05-19 16:49:13'),
(45, 'E-9', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(46, 'F-1', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(47, 'F-2', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(48, 'F-3', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(49, 'F-4', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(50, 'F-5', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(51, 'F-6', '2022-05-19 16:49:13', '2022-05-19 16:49:13'),
(52, 'F-7', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(53, 'F-8', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(54, 'F-9', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(55, 'G-1', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(56, 'G-2', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(57, 'G-3', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(58, 'G-4', '2022-05-19 16:49:14', '2022-05-19 16:49:14'),
(59, 'G-5', '2022-05-19 16:49:14', '2022-05-19 16:49:15'),
(60, 'G-6', '2022-05-19 16:49:16', '2022-05-19 16:49:16'),
(61, 'G-7', '2022-05-19 16:49:16', '2022-05-19 16:49:16'),
(62, 'G-8', '2022-05-19 16:49:16', '2022-05-19 16:49:16'),
(63, 'G-9', '2022-05-19 16:49:16', '2022-05-19 16:49:16'),
(64, 'H-1', '2022-05-19 16:49:16', '2022-05-19 16:49:16'),
(65, 'H-2', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(66, 'H-3', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(67, 'H-4', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(68, 'H-5', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(69, 'H-6', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(70, 'H-7', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(71, 'H-8', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(72, 'H-9', '2022-05-19 16:49:17', '2022-05-19 16:49:17'),
(73, 'I-1', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(74, 'I-2', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(75, 'I-3', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(76, 'I-4', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(77, 'I-5', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(78, 'I-6', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(79, 'I-7', '2022-05-19 16:49:18', '2022-05-19 16:49:18'),
(80, 'I-8', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(81, 'I-9', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(82, 'J-1', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(83, 'J-2', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(84, 'J-3', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(85, 'J-4', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(86, 'J-5', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(87, 'J-6', '2022-05-19 16:49:19', '2022-05-19 16:49:19'),
(88, 'J-7', '2022-05-19 16:49:20', '2022-05-19 16:49:20'),
(89, 'J-8', '2022-05-19 16:49:20', '2022-05-19 16:49:20'),
(90, 'J-9', '2022-05-19 16:49:20', '2022-05-19 16:49:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_18_155000_create_waiting_durations_table', 1),
(7, '2022_05_18_156000_create_stories_table', 1),
(8, '2022_05_18_157000_create_object_durations_table', 1),
(9, '2022_05_18_158000_create_map_cases_table', 1),
(10, '2022_05_18_159000_create_planets_table', 1),
(11, '2022_05_18_160000_create_caps_scarecities_table', 1),
(12, '2022_05_18_161000_create_caps_table', 1),
(13, '2022_05_18_164830_object_item', 1),
(14, '2022_05_18_164901_create_characters_table', 1),
(15, '2022_05_18_165629_create_trains_table', 1),
(16, '2022_05_18_194422_create_works_table', 1),
(20, '2022_05_18_152000_create_win_condition_bases_table', 3),
(23, '2022_05_18_153000_create_main_stories_table', 5),
(24, '2022_05_18_199000_create_win_conditions_table', 6),
(26, '2022_05_20_104514_create_link_win_conditions_to_steps_table', 7),
(27, '2022_05_20_104456_create_link_rewards_to_steps_table', 8),
(29, '2022_05_21_201000_create_adventure_modes_table', 9),
(30, '2014_10_12_200000_add_two_factor_columns_to_users_table', 10),
(31, '2022_05_18_200420_create_rewards_table', 1),
(32, '2022_05_22_104456_create_link_rewards_to_steps_table', 1),
(33, '2022_05_22_104514_create_link_win_conditions_to_steps_table', 1),
(34, '2022_05_31_071955_add_delete_at_table', 11);

-- --------------------------------------------------------

--
-- Structure de la table `object_durations`
--

CREATE TABLE `object_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `object_durations`
--

INSERT INTO `object_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Disparaît après utilisation', '2022-05-18 20:03:07', '2022-05-18 20:03:07'),
(2, '30j après obtention', '2022-05-19 23:57:43', '2022-05-19 23:57:43'),
(3, 'Illimité', '2022-05-19 23:57:43', '2022-05-19 23:57:44'),
(4, '3 jours', '2022-05-19 23:57:44', '2022-05-19 23:57:44');

-- --------------------------------------------------------

--
-- Structure de la table `object_items`
--

CREATE TABLE `object_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `using` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumable` tinyint(1) NOT NULL,
  `object_duration_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `object_items`
--

INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
(1, 'Bouteille de lait', 'https://www.dragonballrebirth.fr/img/objet/lait.svg', 'Peut être acquis avec les métiers, la fouille, les quêtes et les commerces', 'Augmente l\'énergie d\'une capsule verte', 1, 1, '2022-05-18 20:03:07', '2022-06-09 18:11:42'),
(2, 'Poisson', 'https://www.dragonballrebirth.fr/img/objet/poisson.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmenter la vitalité d\'une capsule verte', 0, 1, '2022-05-19 23:55:42', '2022-05-19 23:55:43'),
(3, 'Sac de Senzus', 'https://www.dragonballrebirth.fr/img/objet/sac-senzu.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmenter la défense d\'une capsule verte', 0, 1, '2022-05-19 23:55:44', '2022-05-19 23:55:44'),
(4, 'Viande de dinosaure', 'https://www.dragonballrebirth.fr/img/objet/viande-dino.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmenter la force d\'une capsule verte', 0, 1, '2022-05-19 23:55:45', '2022-05-19 23:55:45'),
(5, 'Nuage magique', 'https://www.dragonballrebirth.fr/img/objet/nuage.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Ressusciter ou voyager dans le monde des morts', 0, 1, '2022-05-19 23:55:45', '2022-05-19 23:55:45'),
(6, 'Pass de Baba', 'https://www.dragonballrebirth.fr/img/objet/passe-baba_v3.svg', '', 'Ressusciter ou voyager dans le monde des morts', 1, 1, '2022-05-19 23:55:46', '2022-05-19 23:55:46'),
(7, 'Super Pass de Baba', 'https://www.dragonballrebirth.fr/img/objet/SuperPass.svg', '', 'Ressusciter tous ses personnages', 1, 1, '2022-05-19 23:55:46', '2022-05-19 23:55:46'),
(8, 'Pilule du Dr. Gero', 'https://www.dragonballrebirth.fr/img/objet/pilule-gero.svg', '', 'Répartir à nouveau les statistiques d\'un personnage', 1, 1, '2022-05-19 23:55:47', '2022-05-19 23:55:47'),
(9, 'Licence de travail', 'https://www.dragonballrebirth.fr/img/objet/Licence.svg', '', 'Envoyer un second personnage en travail', 0, 2, '2022-05-19 23:55:47', '2022-05-19 23:55:47'),
(10, 'Sac de frappe de Vegeta', 'https://www.dragonballrebirth.fr/img/objet/sac_de_frappe.svg', '', 'Obtenir un second pré-combo', 0, 3, '2022-05-19 23:55:48', '2022-05-19 23:55:48'),
(11, 'Panier de Ressource S', 'https://www.dragonballrebirth.fr/img/objet/PanierS_Paniers.svg', '', 'Permet d\'obtenir 50 ressources de manière aléatoire', 1, 1, '2022-05-19 23:55:49', '2022-05-19 23:55:49'),
(12, 'Panier de Ressource M', 'https://www.dragonballrebirth.fr/img/objet/PanierM_Paniers.svg', '', 'Permet d\'obtenir 90 ressources de manière aléatoire', 1, 1, '2022-05-19 23:55:49', '2022-05-19 23:55:49'),
(13, 'Panier de Ressource L', 'https://www.dragonballrebirth.fr/img/objet/PanierL_Paniers.svg', '', 'Permet d\'obtenir 150 ressources de manière aléatoire', 1, 1, '2022-05-19 23:55:50', '2022-05-19 23:55:50'),
(14, 'Cadeau de Noël', 'https://www.dragonballrebirth.fr/img/objet/Gift_Dragon_Ball_Z_KDO_Pioupiou_Bleu_point.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:55:50', '2022-05-19 23:55:50'),
(15, 'Super Cadeau de Noël', 'https://www.dragonballrebirth.fr/img/objet/Gift_Dragon_Ball_Z_KDO_Pioupiou_Jaune.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:55:51', '2022-05-19 23:55:51'),
(16, 'Œufs de Pâques', 'https://www.dragonballrebirth.fr/img/objet/easter-eggs.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-19 23:55:51', '2022-05-19 23:55:51'),
(17, 'Zénis : 10k', 'https://www.dragonballrebirth.fr/img/objet/zenis.svg', '', 'Permet d\'obtenir 10 000 zénis', 1, 1, '2022-05-19 23:55:52', '2022-05-19 23:55:52'),
(18, 'Capsule en chocolat de Pâques', 'https://www.dragonballrebirth.fr/img/objet/capsule-chocolat.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:55:52', '2022-05-19 23:55:52'),
(19, 'Super capsule en chocolat de Pâques', 'https://www.dragonballrebirth.fr/img/objet/capsule-chocolat.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:55:53', '2022-05-19 23:55:53'),
(20, 'Médaille d\'Or', 'https://www.dragonballrebirth.fr/img/objet/1.svg', '', 'Permet d\'obtenir les récompenses du tournoi ainsi qu\'un objet : Palmarès médaille d\'or', 1, 4, '2022-05-19 23:55:54', '2022-05-19 23:55:54'),
(21, 'Médaille d\'Argent', 'https://www.dragonballrebirth.fr/img/objet/2.svg', '', 'Permet d\'obtenir les récompenses du tournoi ainsi qu\'un objet : Palmarès médaille d\'argent', 1, 4, '2022-05-19 23:55:54', '2022-05-19 23:55:54'),
(22, 'Médaille de Bronze', 'https://www.dragonballrebirth.fr/img/objet/3.svg', '', 'Permet d\'obtenir les récompenses du tournoi ainsi qu\'un objet : Palmarès médaille de bronze', 1, 4, '2022-05-19 23:55:55', '2022-05-19 23:55:55'),
(23, 'Palmarès Médaille d\'Or', 'https://www.dragonballrebirth.fr/img/objet/1.svg', '', 'Souvenir d\'une médaille d\'or lors d\'un tournoi', 0, 3, '2022-05-19 23:55:55', '2022-05-19 23:55:55'),
(24, 'Palmarès Médaille d\'Argent', 'https://www.dragonballrebirth.fr/img/objet/2.svg', '', 'Souvenir d\'une médaille d\'argent lors d\'un tournoi', 0, 3, '2022-05-19 23:55:56', '2022-05-19 23:55:56'),
(25, 'Palmarès Médaille de Bronze', 'https://www.dragonballrebirth.fr/img/objet/3.svg', '', 'Souvenir d\'une médaille de bronze lors d\'un tournoi', 0, 3, '2022-05-19 23:55:56', '2022-05-19 23:55:56'),
(26, 'Feu d\'artifice', 'https://www.dragonballrebirth.fr/img/objet/Fireworks.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:55:57', '2022-05-19 23:55:57'),
(27, 'Bonbons de Consolation', 'https://www.dragonballrebirth.fr/img/objet/4-8.svg', '', 'Permet de recevoir une récompense aléatoire pour avoir terminé 4-8ème à un tournoi', 1, 1, '2022-05-19 23:55:57', '2022-05-19 23:55:58'),
(28, 'Gâteau d\'anniversaire', 'https://www.dragonballrebirth.fr/img/objet/Gateau.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-19 23:55:58', '2022-05-19 23:55:58'),
(29, 'Cadeau d\'anniversaire', 'https://www.dragonballrebirth.fr/img/objet/Gift_Dragon_Ball_Z_KDO_Pioupiou_Rouge_V5.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:55:59', '2022-05-19 23:55:59'),
(30, 'Jeton Communautaire', 'https://www.dragonballrebirth.fr/img/objet/MonnaieCommunautaire_Export.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-19 23:55:59', '2022-05-19 23:55:59'),
(31, 'Carte d\'identité DBR', 'https://www.dragonballrebirth.fr/img/objet/IDcard.svg', '', 'Permet de changer de pseudo', 1, 1, '2022-05-19 23:56:00', '2022-05-19 23:56:00'),
(32, 'Citrouilles d\'Halloween', 'https://www.dragonballrebirth.fr/img/objet/Citrouille%20de%20ragout%20zen.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-19 23:56:00', '2022-05-19 23:56:00'),
(33, 'Chaudron magique', 'https://www.dragonballrebirth.fr/img/objet/Chaudron.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-19 23:56:01', '2022-05-19 23:56:01'),
(34, 'Vertes aléatoires ', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-2-0.svg', '', 'Permet d\'obtenir 5 capsules vertes aléatoires en l\'ouvrant', 1, 1, '2022-05-19 23:56:01', '2022-05-19 23:56:01'),
(35, 'Capsule rare aléatoire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-2.svg', '', 'Permet d\'obtenir 1 capsule rare aléatoire en l\'ouvrant', 1, 1, '2022-05-19 23:56:02', '2022-05-19 23:56:02'),
(36, 'Capsule épique aléatoire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-3.svg', '', 'Permet d\'obtenir 1 capsule épique aléatoire en l\'ouvrant', 1, 1, '2022-05-19 23:56:03', '2022-05-19 23:56:03'),
(37, 'Capsule légendaire aléatoire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-4.svg', '', 'Permet d\'obtenir 1 capsule légendaire aléatoire en l\'ouvrant', 1, 1, '2022-05-19 23:56:03', '2022-05-19 23:56:03'),
(38, 'Bonbon de Force', 'https://www.dragonballrebirth.fr/img/objet/5.svg', '', 'Permet d\'obtenir 1 point en force en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-19 23:56:04', '2022-05-19 23:56:04'),
(39, 'Bonbon de Défense', 'https://www.dragonballrebirth.fr/img/objet/BonbonVert.svg', '', 'Permet d\'obtenir 1 point en défense en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-19 23:56:04', '2022-05-19 23:56:04'),
(40, 'Bonbon d\'Energie', 'https://www.dragonballrebirth.fr/img/objet/BonbonJaune.svg', '', 'Permet d\'obtenir 1 point en énergie en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-19 23:56:05', '2022-05-19 23:56:05'),
(41, 'Bonbon de Vitalité', 'https://www.dragonballrebirth.fr/img/objet/BonbonRouge.svg', '', 'Permet d\'obtenir 100 points en vitalité en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-19 23:56:05', '2022-05-19 23:56:05'),
(42, 'Bonbon Aléatoire', 'https://www.dragonballrebirth.fr/img/objet/BonbonMarron.svg', '', 'Permet d\'obtenir un bonbon aléatoire en l\'ouvrant', 1, 1, '2022-05-19 23:56:06', '2022-05-19 23:56:06'),
(43, 'Boite à musique', 'https://preprod.dragonballrebirth.fr/img/objet/Boite%20%C3%A0%20musique.svg', '', 'Objet à fouiller permettant de passer l\'étape 2 de la quête annexe : L\'attaque du dragon !', 0, 3, '2022-05-19 23:56:06', '2022-05-19 23:56:07');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'token', 'd78fc5f9862f27dba6eaaab794e3a343d510615fed9e663fd1b62d2f90810a51', '[\"*\"]', NULL, '2022-06-01 19:48:31', '2022-06-01 19:48:31'),
(2, 'App\\Models\\User', 2, 'token', '2762c7be61620450b230525fb493ea2bfca20b6d17512a0c412ab75686c79b00', '[\"*\"]', NULL, '2022-06-01 19:51:24', '2022-06-01 19:51:24'),
(3, 'App\\Models\\User', 2, 'token', '72f463f852838f259cf7dccbaa7d1d72243b7512c02dd8d6f53930f83088992f', '[\"*\"]', NULL, '2022-06-01 19:57:17', '2022-06-01 19:57:17'),
(4, 'App\\Models\\User', 2, 'token', '4ce4d09bd0682b2e72b52622c8981aa9a36e4357d588e850a26b6abe72367664', '[\"*\"]', NULL, '2022-06-01 20:01:20', '2022-06-01 20:01:20'),
(5, 'App\\Models\\User', 2, 'token', '4fc96d528eedadd4184bac423d8cd4c54aaeee54c53bb502c06294c15e5bcbe1', '[\"*\"]', NULL, '2022-06-01 20:10:01', '2022-06-01 20:10:01'),
(6, 'App\\Models\\User', 2, 'token', 'b2af93017eb53c01f6c15d6698950b770d4de80bc50128b3313356e3d1abec3f', '[\"*\"]', NULL, '2022-06-01 20:11:52', '2022-06-01 20:11:52'),
(7, 'App\\Models\\User', 2, 'token', '6093a0406d017792ef3b01355350b33484bdbf5477fe375198de5b61ad890d61', '[\"*\"]', '2022-06-01 20:21:44', '2022-06-01 20:20:55', '2022-06-01 20:21:44'),
(8, 'App\\Models\\User', 2, 'token', 'e99eb407a09b9d39b71d930872c2eae4e0637069df5da31089a84810a904e352', '[\"*\"]', '2022-06-01 20:43:07', '2022-06-01 20:34:56', '2022-06-01 20:43:07'),
(9, 'App\\Models\\User', 2, 'token', 'afc013a36ef0e59be2fef54ecffb116676f890b9f5fe70e134630e775610d5ce', '[\"*\"]', '2022-06-02 18:14:33', '2022-06-02 12:14:23', '2022-06-02 18:14:33'),
(10, 'App\\Models\\User', 2, 'token', 'd0eb3b6ba7c4ff239af596f655016c055f163d835836bd2d384d492b82413b24', '[\"*\"]', '2022-06-02 18:58:37', '2022-06-02 18:23:50', '2022-06-02 18:58:37'),
(11, 'App\\Models\\User', 2, 'token', '18e180989877ed5441ff249b128a0b8fc5580d783c323eec57144321e4dac3b3', '[\"*\"]', '2022-06-02 19:00:49', '2022-06-02 18:59:09', '2022-06-02 19:00:49'),
(12, 'App\\Models\\User', 2, 'token', '9cdd5098345fe0127a4984f42573d84158f5de87df7ed286f8a9c7dd8eb32d38', '[\"*\"]', '2022-06-02 19:02:08', '2022-06-02 19:01:52', '2022-06-02 19:02:08'),
(13, 'App\\Models\\User', 2, 'token', '6f603343d711b009b74d9f9a6d8851023cb8f5fab2327784f7642c5f72f6847b', '[\"*\"]', '2022-06-02 19:02:30', '2022-06-02 19:02:09', '2022-06-02 19:02:30'),
(14, 'App\\Models\\User', 2, 'token', '86a954d68c7d47e34c8b2dcfd7612362510ef0f428c4364652c6cb8a45d45171', '[\"*\"]', '2022-06-02 19:02:49', '2022-06-02 19:02:32', '2022-06-02 19:02:49'),
(15, 'App\\Models\\User', 2, 'token', '631942bc7b8d6bea30a9846167cfb659ae26c01aff5e543b10c37e3eaa64b429', '[\"*\"]', '2022-06-02 19:02:54', '2022-06-02 19:02:50', '2022-06-02 19:02:54'),
(16, 'App\\Models\\User', 2, 'token', '59894590dbc31272b2852294c347aa1cdd7be6cb488cae7ff73b80fc0e2fddd4', '[\"*\"]', '2022-06-02 20:10:44', '2022-06-02 19:02:56', '2022-06-02 20:10:44'),
(17, 'App\\Models\\User', 2, 'token', 'e60a4e4417416314597d633d0d4d5d64806627aa0cfc80860a5cf3c64cb713fd', '[\"*\"]', '2022-06-06 20:00:57', '2022-06-06 19:36:31', '2022-06-06 20:00:57'),
(18, 'App\\Models\\User', 2, 'token', '1f2938fc6a637a13a4cb2982c976b8d65d4004c8bda35a477d617688190b3c35', '[\"*\"]', '2022-06-06 20:02:23', '2022-06-06 20:01:10', '2022-06-06 20:02:23'),
(19, 'App\\Models\\User', 2, 'token', 'a2e2b79fe3331b4511d6b8909d0954de3b49514a8e4e97859cb7afef5a928523', '[\"*\"]', '2022-06-06 20:03:51', '2022-06-06 20:02:35', '2022-06-06 20:03:51'),
(20, 'App\\Models\\User', 2, 'token', '8aa6de743b9e6f4944aabc12624e853148dc0c27045015a9bb0670e1b546e0e4', '[\"*\"]', '2022-06-06 20:06:32', '2022-06-06 20:04:00', '2022-06-06 20:06:32'),
(21, 'App\\Models\\User', 2, 'token', '0cdcea47242913e6b8e95e8a90915e3e24e687df71d0003f6dad791539a89824', '[\"*\"]', '2022-06-06 20:07:46', '2022-06-06 20:06:52', '2022-06-06 20:07:46'),
(22, 'App\\Models\\User', 2, 'token', 'a09429930a153ebf84433ad4503024cad02b5b5a7bab836a21b2d431a674aab4', '[\"*\"]', '2022-06-06 20:15:18', '2022-06-06 20:08:05', '2022-06-06 20:15:18'),
(23, 'App\\Models\\User', 2, 'token', 'c25f0ffae586b4fff69733ab0e8840596c9b0e29cf7bc1458bd236e8e111867c', '[\"*\"]', '2022-06-07 15:00:59', '2022-06-07 15:00:59', '2022-06-07 15:00:59'),
(24, 'App\\Models\\User', 2, 'token', '173e82588d19612ef24b200aa08562bed53c56a4aaaaaa5c3fdf74115ab3485d', '[\"*\"]', '2022-06-07 15:03:38', '2022-06-07 15:03:37', '2022-06-07 15:03:38'),
(25, 'App\\Models\\User', 2, 'token', 'ec6922dbffa1d8decc3fdb0bc1e0b70e05ea9564885c80eca581a5664bfcc259', '[\"*\"]', NULL, '2022-06-08 14:13:04', '2022-06-08 14:13:04'),
(26, 'App\\Models\\User', 2, 'token', '5f8e0416e7e5378620e1d039ff0fc5982b47e3f8334c2f3bdeae7414ea0c9360', '[\"*\"]', '2022-06-08 15:02:24', '2022-06-08 14:13:04', '2022-06-08 15:02:24'),
(27, 'App\\Models\\User', 2, 'token', '6743c23b234102b40f138c1792a0fe68362def7747e1d5cadab882b1322f04bc', '[\"*\"]', '2022-06-09 16:31:30', '2022-06-08 17:03:41', '2022-06-09 16:31:30'),
(28, 'App\\Models\\User', 2, 'token', '7b52a70a59ddb60215ee1fa6cd06f1d9dfdb98c05591f95e22042df55c09709a', '[\"*\"]', '2022-06-09 20:07:54', '2022-06-09 16:44:05', '2022-06-09 20:07:54');

-- --------------------------------------------------------

--
-- Structure de la table `planets`
--

CREATE TABLE `planets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `planet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planets`
--

INSERT INTO `planets` (`id`, `planet`, `created_at`, `updated_at`, `icon`) VALUES
(1, 'Terre', '2022-05-18 20:03:07', '2022-05-18 20:03:07', 'https://www.dragonballrebirth.fr/img/icon/planet-earth.png'),
(2, 'Monde des morts', '2022-05-19 18:51:36', '2022-05-19 18:51:36', 'https://www.dragonballrebirth.fr/img/icon/planet-kaio.png'),
(3, 'Namek', '2022-05-19 18:53:28', '2022-05-19 18:53:29', 'https://www.dragonballrebirth.fr/img/icon/planet-namek.png'),
(4, 'Espace', '2022-05-19 18:57:06', '2022-05-19 18:57:06', 'https://www.dragonballrebirth.fr/img/icon/planet-space.png');

-- --------------------------------------------------------

--
-- Structure de la table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `character_id` bigint(20) UNSIGNED DEFAULT NULL,
  `object_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity_object` int(11) DEFAULT NULL,
  `caps_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity_caps` int(11) DEFAULT NULL,
  `zenis` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `skin` tinyint(1) DEFAULT NULL,
  `rewards_character_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rewards`
--

INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
(1, 'Krillin', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 11:00:08', '2022-05-20 11:00:10'),
(2, '500 Zenis', NULL, NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, '2022-05-20 11:09:54', '2022-05-20 11:09:54'),
(3, '300 Zenis', NULL, NULL, NULL, NULL, NULL, 300, NULL, NULL, NULL, '2022-05-20 11:15:12', '2022-05-20 11:15:12'),
(4, 'Piccolo', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 11:18:02', '2022-05-20 11:18:03'),
(5, 'Caps : Baton Vitalité', NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2022-05-20 11:21:26', '2022-05-20 11:21:27'),
(6, '600 Zenis', NULL, NULL, NULL, NULL, NULL, 600, NULL, NULL, NULL, '2022-05-20 11:21:27', '2022-05-20 11:21:28'),
(7, 'Ressource S', NULL, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 11:34:50', '2022-05-20 11:34:51'),
(8, 'Baddack', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 21:27:22', '2022-05-25 21:27:23'),
(9, '10K Zenis', NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL, NULL, '2022-05-25 22:41:36', '2022-05-25 22:41:37'),
(10, 'Skin Gohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, '2022-05-25 22:41:36', '2022-05-25 22:41:37'),
(11, '15% XP Piccolo', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, 3, '2022-05-25 22:41:34', '2022-05-25 22:41:35'),
(12, '50M XP Piccolo', NULL, NULL, NULL, NULL, NULL, NULL, 50000000, NULL, 3, '2022-05-25 22:43:45', '2022-05-25 22:43:46'),
(13, '250K Zenis', NULL, NULL, NULL, NULL, NULL, 250000, NULL, NULL, NULL, '2022-05-25 23:06:27', '2022-05-25 23:06:29'),
(14, 'C-17', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 23:06:59', '2022-05-25 23:07:00'),
(15, 'C-18', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 23:07:01', '2022-05-25 23:07:00'),
(16, '200 Poissons', NULL, 2, 200, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 23:28:55', '2022-05-25 23:28:56'),
(17, '101K Zenis', NULL, NULL, NULL, NULL, NULL, 101000, NULL, NULL, NULL, '2022-05-25 23:32:02', '2022-05-25 23:32:02'),
(18, 'Pills Dr.Gero x1', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 23:36:23', '2022-05-25 23:36:24'),
(19, '2 000 Zenis', NULL, NULL, NULL, NULL, NULL, 2000, NULL, NULL, NULL, '2022-05-26 21:36:14', '2022-05-26 21:36:14'),
(20, '5 Viande', NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 21:37:15', '2022-05-26 21:37:17'),
(21, '5 Poisson', NULL, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 21:37:16', '2022-05-26 21:37:17'),
(22, '5 Lait', NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 21:37:16', '2022-05-26 21:37:17'),
(23, '3 000 Zenis', NULL, NULL, NULL, NULL, NULL, 3000, NULL, NULL, NULL, '2022-05-26 21:37:51', '2022-05-26 21:37:51');

-- --------------------------------------------------------

--
-- Structure de la table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_story` bigint(20) DEFAULT NULL,
  `story_number` int(11) NOT NULL,
  `story_unlock` bigint(20) UNSIGNED DEFAULT NULL,
  `step_unlock` bigint(20) DEFAULT NULL,
  `custom_requirement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stories`
--

INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
(1, 'Saga Saiyan', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-1.png', '2022-05-18 20:03:07', '2022-05-18 20:03:07', 1, 1, 1, 0, 'Aucun', 1),
(78, 'Saga Namek', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-2.png', '2022-05-20 10:31:29', '2022-05-20 10:31:30', 1, 1, 1, 26, '', 1),
(79, 'Saga Cyborg', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-3.png', '2022-05-20 10:31:31', '2022-05-20 10:31:31', 1, 1, 78, 70, '', 1),
(80, 'Saga Cell', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-4.png', '2022-05-20 10:31:31', '2022-05-20 10:31:31', 1, 1, 79, 103, '', 1),
(81, 'Saga Majin', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-5.png', '2022-05-20 10:31:31', '2022-05-20 10:31:32', 1, 1, 80, 152, '', 1),
(82, 'Saga Buu', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-6.png', '2022-05-20 10:31:32', '2022-05-20 10:31:32', 1, 1, 81, 205, '', 1),
(83, 'Saga Saiyan : Hard', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-1.png', '2022-05-20 10:31:32', '2022-05-20 10:31:32', 2, 1, 82, 298, '', 1),
(84, 'Saga Namek : Hard', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-2.png', '2022-05-20 10:31:32', '2022-05-20 10:31:33', 2, 1, 83, 26, '', 1),
(85, 'Vision d\'un destin funeste', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-5.png', '2022-05-20 10:31:33', '2022-05-20 10:31:33', 0, 5, 78, 70, '', 1),
(86, 'A la poursuite de Garlic', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-6.png', '2022-05-20 10:31:33', '2022-05-20 10:31:33', 0, 6, 1, 10, '', 1),
(87, 'La bande du lapin', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-7.png', '2022-05-20 10:31:33', '2022-05-20 10:31:33', 0, 7, 1, 0, 'Lancé l\'évènement de Pâques', 1),
(88, 'Les Mercenaires de l\'espace', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-8.png', '2022-05-20 10:31:34', '2022-05-20 10:31:34', 0, 8, 80, 149, '', 1),
(89, 'Tour du Muscle', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-9.png', '2022-05-20 10:31:34', '2022-05-20 10:31:34', 0, 9, 1, 0, 'Aucun', 1),
(90, 'Broly le super guerrier', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-10.png', '2022-05-20 10:31:35', '2022-05-20 10:31:35', 0, 10, 80, 129, '', 1),
(91, 'La Revance de Cooler', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-11.png', '2022-05-20 10:31:35', '2022-05-20 10:31:35', 0, 11, 78, 70, '', 1),
(92, 'L\'histoire de Trunks !', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-13.png', '2022-05-20 10:31:35', '2022-05-20 10:31:35', 0, 13, 80, 130, '', 1),
(93, 'Grand Quizz DBZ - 1ère édition', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-23.png', '2022-05-20 10:31:36', '2022-05-20 10:31:36', 0, 23, 1, 0, 'Aucun', 1),
(94, 'L\'offensive des Cyborgs', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-22.png', '2022-05-20 10:31:36', '2022-05-20 10:31:36', 0, 22, 80, 152, '', 1),
(95, 'Le combat fratricide', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-15.png', '2022-05-20 10:31:36', '2022-05-20 10:31:36', 0, 15, 78, 27, '', 1),
(96, 'L\'attaque du Dragon', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-14.png', '2022-05-20 10:31:36', '2022-05-20 10:31:37', 0, 14, 82, 259, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `trains`
--

CREATE TABLE `trains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_case_id` bigint(20) UNSIGNED NOT NULL,
  `planet_id` bigint(20) UNSIGNED NOT NULL,
  `gain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step_id` int(11) NOT NULL,
  `duration_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specificity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trains`
--

INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
(1, 'Salle de l\'horloge', 'https://www.dragonballrebirth.fr/img/training/popo.png', 2, 1, 'Obtention des magies 2 et 3', '', 1, 1, 'https://www.dragonballrebirth.fr/img/training/banner/salle_horloge.jpg', '2022-05-18 20:03:07', '2022-05-18 20:03:07', '1 fois par magie'),
(2, 'Baba la Voyante', '', 16, 1, '+1 / +2 Défense', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/baba.png', '2022-05-19 23:24:55', '2022-05-19 23:24:55', 'Illimité'),
(3, 'Kame House', '', 88, 1, '+1 / +2 Force', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/kamehouse.png', '2022-05-19 23:24:57', '2022-05-19 23:24:57', 'Illimité'),
(4, 'Kami-Sama', '', 2, 1, '+1 / +2 Énergie', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/kamikyuden.png', '2022-05-19 23:24:58', '2022-05-19 23:24:58', 'Illimité'),
(5, 'Karine', '', 4, 1, '+100 / +200 Vitalité', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/karinetower.png', '2022-05-19 23:24:59', '2022-05-19 23:24:59', 'Illimité'),
(6, 'Maison', '', 77, 1, '+1 / +2 Esquive', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/gokuhouse.png', '2022-05-19 23:25:00', '2022-05-19 23:25:00', 'Limité à 100 points'),
(7, 'Tsuru-Sennin', '', 20, 1, '+1 / +2 Critique', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/fishing-2.png', '2022-05-19 23:25:01', '2022-05-19 23:25:01', 'Limité à 100 points'),
(8, 'Kaïo', 'https://www.dragonballrebirth.fr/img/training/kaio.png', 4, 2, '+2 partout', '', 18, 4, 'https://www.dragonballrebirth.fr/img/training/banner/kaioplanet.png', '2022-05-19 23:25:02', '2022-05-19 23:25:02', 'Unique'),
(9, 'Vaisseau de Freezer', '', 41, 3, '+300 / +400 Vitalité', '', 28, 5, 'https://www.dragonballrebirth.fr/img/training/banner/vaisseax-freezer.png', '2022-05-19 23:25:03', '2022-05-19 23:25:03', 'Illimité'),
(10, 'Grand Chef Namek', 'https://www.dragonballrebirth.fr/img/training/grandchef.png', 20, 3, '+5 dans une statistique', '10', 40, 4, 'https://www.dragonballrebirth.fr/img/training/banner/chefnamek.jpg', '2022-05-19 23:25:04', '2022-05-19 23:25:04', 'Unique'),
(11, 'Reecom', '', 69, 3, '+3 / +4 Défense', '', 47, 5, 'https://www.dragonballrebirth.fr/img/training/banner/namek.png', '2022-05-19 23:25:05', '2022-05-19 23:25:05', 'Illimité'),
(12, 'Ginyu', '', 69, 3, '+3 / +4 Énergie', '', 49, 5, 'https://www.dragonballrebirth.fr/img/training/banner/namek.png', '2022-05-19 23:25:06', '2022-05-19 23:25:06', 'Illimité'),
(13, 'Nail', '', 75, 3, '+3 / +4 Force', '', 55, 5, 'https://www.dragonballrebirth.fr/img/training/banner/namek-village.png', '2022-05-19 23:25:07', '2022-05-19 23:25:07', 'Illimité'),
(14, 'Salle de l\'Esprit et du Temps', 'https://www.dragonballrebirth.fr/img/training/dende.png', 2, 1, 'Réduction durée des entraînements 2% / 5%', '14 puis 18', 108, 6, 'https://www.dragonballrebirth.fr/img/training/banner/timechamber.png', '2022-05-19 23:25:08', '2022-05-19 23:25:08', 'Limité à deux entraînements'),
(15, 'Eveil du vieux Kaioshin', 'https://www.dragonballrebirth.fr/img/training/daikaioshin.png', 11, 2, '+10 points dans toutes les statistiques et +10 points bonus', '28', 230, 7, 'https://www.dragonballrebirth.fr/img/training/banner/vieu-kaioshin.png ', '2022-05-19 23:25:09', '2022-05-19 23:25:09', 'Unique');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'oltarba', 'contact@devoweb.fr', NULL, '$2y$10$qJxGTlhKbmF2Uk0s46jXhetbE7/K/xcnae6GczqyEhUyX7pAtLZPm', NULL, NULL, NULL, NULL, '2022-05-27 12:20:27', '2022-05-27 12:20:27');

-- --------------------------------------------------------

--
-- Structure de la table `waiting_durations`
--

CREATE TABLE `waiting_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `waiting_durations`
--

INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
(1, '2h / 4h', '2022-05-18 20:03:07', '2022-05-18 20:03:07'),
(2, '12h', '2022-05-19 16:53:17', '2022-05-19 16:53:16'),
(3, '18h / 1j 12h', '2022-05-19 23:27:08', '2022-05-19 23:27:09'),
(4, '3 jours', '2022-05-19 23:27:09', '2022-05-19 23:27:09'),
(5, '2j 6h / 3j', '2022-05-19 23:27:10', '2022-05-19 23:27:10'),
(6, '5 jours', '2022-05-19 23:27:10', '2022-05-19 23:27:10'),
(7, '7 jours', '2022-05-19 23:27:10', '2022-05-19 23:27:10');

-- --------------------------------------------------------

--
-- Structure de la table `win_conditions`
--

CREATE TABLE `win_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition_base_id` bigint(20) UNSIGNED DEFAULT NULL,
  `object_harvest` bigint(20) UNSIGNED DEFAULT NULL,
  `object_harvest_quantity` int(11) DEFAULT NULL,
  `special_trains` bigint(20) UNSIGNED DEFAULT NULL,
  `any_trains_quantity` int(11) DEFAULT NULL,
  `spell_condition_number` int(11) DEFAULT NULL,
  `critical_strike` tinyint(1) DEFAULT NULL,
  `dodge_attack` tinyint(1) DEFAULT NULL,
  `min_damage` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `win_conditions`
--

INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
(1, 'Dialogue', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 10:55:57', '2022-05-20 10:55:58'),
(2, 'Survivre', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 10:56:32', '2022-05-20 10:56:33'),
(3, 'Tuer', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 10:57:19', '2022-05-20 10:57:20'),
(4, 'Vaincre', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 10:57:22', '2022-05-20 10:57:22'),
(5, '5 train', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, '2022-05-25 23:05:26', '2022-05-25 23:05:27'),
(6, '10 Poissons', NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 23:28:31', '2022-05-25 23:28:32'),
(7, '2000 degats', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, '2022-05-26 16:50:47', '2022-05-26 21:38:24'),
(8, 'Coup Critique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-05-26 16:51:15', '2022-05-26 21:38:24'),
(9, 'Esquive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-05-26 16:51:16', '2022-05-26 21:38:25'),
(10, 'Magie 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-26 16:52:16', '2022-05-26 21:38:25'),
(11, 'Magie 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2022-05-26 16:52:17', '2022-05-26 21:38:26'),
(12, 'Magie 3', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2022-05-26 16:52:17', '2022-05-26 21:38:26'),
(13, '2 train', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-05-26 21:38:21', '2022-05-26 21:38:22'),
(14, '20 Viande', NULL, NULL, 4, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 21:39:22', '2022-05-26 21:39:23'),
(15, '20 Poisson', NULL, NULL, 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 21:39:23', '2022-05-26 21:39:23'),
(16, '20 Lait', NULL, NULL, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 21:39:24', '2022-05-26 21:39:25');

-- --------------------------------------------------------

--
-- Structure de la table `win_condition_bases`
--

CREATE TABLE `win_condition_bases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `win_condition_bases`
--

INSERT INTO `win_condition_bases` (`id`, `condition`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Dialogue', '', '2022-05-20 10:40:51', '2022-05-20 10:40:52'),
(2, 'Survivre', '', '2022-05-20 10:40:52', '2022-05-20 10:40:52'),
(3, 'Vaincre l\'adversaire', '', '2022-05-20 10:40:52', '2022-05-20 10:40:52'),
(4, 'Tuer l\'adversaire', 'fas fa-skull', '2022-05-20 10:40:52', '2022-05-20 10:40:53'),
(5, 'Répondre à un Quizz', 'fas fa-question-circle', '2022-05-20 10:40:53', '2022-05-20 10:40:53');

-- --------------------------------------------------------

--
-- Structure de la table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unlock_step` int(11) NOT NULL,
  `utils` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_case_id` bigint(20) UNSIGNED NOT NULL,
  `planet_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `waiting_duration_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `works`
--

INSERT INTO `works` (`id`, `name`, `unlock_step`, `utils`, `map_case_id`, `planet_id`, `object_id`, `waiting_duration_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Livraison de lait', 1, 'Énergie', 88, 1, 1, 2, 'https://www.dragonballrebirth.fr/img/metiers/milk.png', '2022-05-18 20:03:07', '2022-05-18 20:03:07'),
(6, 'Chasse au dinosaure', 1, 'Force', 30, 1, 4, 2, 'https://www.dragonballrebirth.fr/img/metiers/dinosaure.png', '2022-05-19 18:51:56', '2022-05-19 18:51:58'),
(7, 'Récolte de Senzu', 1, 'Défense', 4, 1, 3, 2, 'https://www.dragonballrebirth.fr/img/metiers/senzu.jpg', '2022-05-19 18:52:00', '2022-05-19 18:52:00'),
(8, 'Pêche', 1, 'Vitalité', 71, 1, 2, 2, 'https://www.dragonballrebirth.fr/img/metiers/fishing.png', '2022-05-19 18:52:02', '2022-05-19 18:52:02'),
(9, 'Collecte des nuage', 1, 'Résurrection', 69, 2, 5, 2, 'https://www.dragonballrebirth.fr/img/metiers/nuage.png', '2022-05-19 18:52:05', '2022-05-19 18:52:05');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adventure_modes`
--
ALTER TABLE `adventure_modes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adventure_modes_story_id_foreign` (`story_id`),
  ADD KEY `adventure_modes_character_id_foreign` (`character_id`),
  ADD KEY `adventure_modes_enemy_id_foreign` (`enemy_id`),
  ADD KEY `adventure_modes_map_case_id_foreign` (`map_case_id`),
  ADD KEY `adventure_modes_planet_id_foreign` (`planet_id`);

--
-- Index pour la table `caps`
--
ALTER TABLE `caps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caps_caps_scarecities_id_foreign` (`caps_scarecities_id`);

--
-- Index pour la table `caps_scarecities`
--
ALTER TABLE `caps_scarecities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `characters_caps_id_foreign` (`caps_id`),
  ADD KEY `characters_story_id_foreign` (`story_id`),
  ADD KEY `main_story_id` (`main_story_id`);

--
-- Index pour la table `character_categories`
--
ALTER TABLE `character_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `link_characters_to_categories`
--
ALTER TABLE `link_characters_to_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `character_id` (`character_id`);

--
-- Index pour la table `link_rewards_to_steps`
--
ALTER TABLE `link_rewards_to_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_rewards_to_steps_rewards_id_foreign` (`rewards_id`),
  ADD KEY `link_rewards_to_steps_step_number_foreign` (`step_number`);

--
-- Index pour la table `link_win_conditions_to_steps`
--
ALTER TABLE `link_win_conditions_to_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_win_conditions_to_steps_conditions_id_foreign` (`conditions_id`),
  ADD KEY `link_win_conditions_to_steps_step_number_foreign` (`step_number`);

--
-- Index pour la table `main_stories`
--
ALTER TABLE `main_stories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `map_cases`
--
ALTER TABLE `map_cases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `object_durations`
--
ALTER TABLE `object_durations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `object_items`
--
ALTER TABLE `object_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_items_object_duration_id_foreign` (`object_duration_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `planets`
--
ALTER TABLE `planets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_character_id_foreign` (`character_id`),
  ADD KEY `rewards_object_id_foreign` (`object_id`),
  ADD KEY `rewards_caps_id_foreign` (`caps_id`),
  ADD KEY `rewards_rewards_character_id_foreign` (`rewards_character_id`);

--
-- Index pour la table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_unlock` (`story_unlock`);

--
-- Index pour la table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trains_map_case_id_foreign` (`map_case_id`),
  ADD KEY `trains_planet_id_foreign` (`planet_id`),
  ADD KEY `trains_duration_id_foreign` (`duration_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `waiting_durations`
--
ALTER TABLE `waiting_durations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `win_conditions`
--
ALTER TABLE `win_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `win_conditions_condition_base_id_foreign` (`condition_base_id`),
  ADD KEY `win_conditions_object_harvest_foreign` (`object_harvest`),
  ADD KEY `win_conditions_special_trains_foreign` (`special_trains`);

--
-- Index pour la table `win_condition_bases`
--
ALTER TABLE `win_condition_bases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `works_map_case_id_foreign` (`map_case_id`),
  ADD KEY `works_planet_id_foreign` (`planet_id`),
  ADD KEY `works_object_id_foreign` (`object_id`),
  ADD KEY `works_waiting_duration_id_foreign` (`waiting_duration_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adventure_modes`
--
ALTER TABLE `adventure_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `caps`
--
ALTER TABLE `caps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT pour la table `caps_scarecities`
--
ALTER TABLE `caps_scarecities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `character_categories`
--
ALTER TABLE `character_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `link_characters_to_categories`
--
ALTER TABLE `link_characters_to_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `link_rewards_to_steps`
--
ALTER TABLE `link_rewards_to_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `link_win_conditions_to_steps`
--
ALTER TABLE `link_win_conditions_to_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `main_stories`
--
ALTER TABLE `main_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT pour la table `map_cases`
--
ALTER TABLE `map_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `object_durations`
--
ALTER TABLE `object_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `object_items`
--
ALTER TABLE `object_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `planets`
--
ALTER TABLE `planets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `trains`
--
ALTER TABLE `trains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `waiting_durations`
--
ALTER TABLE `waiting_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `win_conditions`
--
ALTER TABLE `win_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `win_condition_bases`
--
ALTER TABLE `win_condition_bases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adventure_modes`
--
ALTER TABLE `adventure_modes`
  ADD CONSTRAINT `adventure_modes_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  ADD CONSTRAINT `adventure_modes_enemy_id_foreign` FOREIGN KEY (`enemy_id`) REFERENCES `characters` (`id`),
  ADD CONSTRAINT `adventure_modes_map_case_id_foreign` FOREIGN KEY (`map_case_id`) REFERENCES `map_cases` (`id`),
  ADD CONSTRAINT `adventure_modes_planet_id_foreign` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`),
  ADD CONSTRAINT `adventure_modes_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`);

--
-- Contraintes pour la table `caps`
--
ALTER TABLE `caps`
  ADD CONSTRAINT `caps_caps_scarecities_id_foreign` FOREIGN KEY (`caps_scarecities_id`) REFERENCES `caps_scarecities` (`id`);

--
-- Contraintes pour la table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_caps_id_foreign` FOREIGN KEY (`caps_id`) REFERENCES `caps` (`id`),
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`main_story_id`) REFERENCES `main_stories` (`id`),
  ADD CONSTRAINT `characters_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`);

--
-- Contraintes pour la table `link_characters_to_categories`
--
ALTER TABLE `link_characters_to_categories`
  ADD CONSTRAINT `link_characters_to_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `character_categories` (`id`),
  ADD CONSTRAINT `link_characters_to_categories_ibfk_2` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`);

--
-- Contraintes pour la table `link_rewards_to_steps`
--
ALTER TABLE `link_rewards_to_steps`
  ADD CONSTRAINT `link_rewards_to_steps_rewards_id_foreign` FOREIGN KEY (`rewards_id`) REFERENCES `rewards` (`id`),
  ADD CONSTRAINT `link_rewards_to_steps_step_number_foreign` FOREIGN KEY (`step_number`) REFERENCES `adventure_modes` (`id`);

--
-- Contraintes pour la table `link_win_conditions_to_steps`
--
ALTER TABLE `link_win_conditions_to_steps`
  ADD CONSTRAINT `link_win_conditions_to_steps_conditions_id_foreign` FOREIGN KEY (`conditions_id`) REFERENCES `win_conditions` (`id`),
  ADD CONSTRAINT `link_win_conditions_to_steps_step_number_foreign` FOREIGN KEY (`step_number`) REFERENCES `adventure_modes` (`id`);

--
-- Contraintes pour la table `object_items`
--
ALTER TABLE `object_items`
  ADD CONSTRAINT `object_items_object_duration_id_foreign` FOREIGN KEY (`object_duration_id`) REFERENCES `object_durations` (`id`);

--
-- Contraintes pour la table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `rewards_caps_id_foreign` FOREIGN KEY (`caps_id`) REFERENCES `caps` (`id`),
  ADD CONSTRAINT `rewards_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  ADD CONSTRAINT `rewards_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `object_items` (`id`),
  ADD CONSTRAINT `rewards_rewards_character_id_foreign` FOREIGN KEY (`rewards_character_id`) REFERENCES `characters` (`id`);

--
-- Contraintes pour la table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `FK_stories_stories` FOREIGN KEY (`story_unlock`) REFERENCES `stories` (`id`);

--
-- Contraintes pour la table `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `trains_duration_id_foreign` FOREIGN KEY (`duration_id`) REFERENCES `waiting_durations` (`id`),
  ADD CONSTRAINT `trains_map_case_id_foreign` FOREIGN KEY (`map_case_id`) REFERENCES `map_cases` (`id`),
  ADD CONSTRAINT `trains_planet_id_foreign` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`);

--
-- Contraintes pour la table `win_conditions`
--
ALTER TABLE `win_conditions`
  ADD CONSTRAINT `win_conditions_condition_base_id_foreign` FOREIGN KEY (`condition_base_id`) REFERENCES `win_condition_bases` (`id`),
  ADD CONSTRAINT `win_conditions_object_harvest_foreign` FOREIGN KEY (`object_harvest`) REFERENCES `object_items` (`id`),
  ADD CONSTRAINT `win_conditions_special_trains_foreign` FOREIGN KEY (`special_trains`) REFERENCES `trains` (`id`);

--
-- Contraintes pour la table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_map_case_id_foreign` FOREIGN KEY (`map_case_id`) REFERENCES `map_cases` (`id`),
  ADD CONSTRAINT `works_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `object_items` (`id`),
  ADD CONSTRAINT `works_planet_id_foreign` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`),
  ADD CONSTRAINT `works_waiting_duration_id_foreign` FOREIGN KEY (`waiting_duration_id`) REFERENCES `waiting_durations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

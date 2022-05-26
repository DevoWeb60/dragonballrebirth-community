-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour dragonballrebirth
CREATE DATABASE IF NOT EXISTS `dragonballrebirth` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dragonballrebirth`;

-- Listage de la structure de la table dragonballrebirth. adventure_modes
CREATE TABLE IF NOT EXISTS `adventure_modes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `step_number` int(11) NOT NULL,
  `story_id` bigint(20) unsigned NOT NULL,
  `character_id` bigint(20) unsigned NOT NULL,
  `enemy_id` bigint(20) unsigned DEFAULT NULL,
  `enemy_level` int(11) DEFAULT NULL,
  `enemy_health` int(11) DEFAULT NULL,
  `map_case_id` bigint(20) unsigned NOT NULL,
  `planet_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adventure_modes_story_id_foreign` (`story_id`),
  KEY `adventure_modes_character_id_foreign` (`character_id`),
  KEY `adventure_modes_enemy_id_foreign` (`enemy_id`),
  KEY `adventure_modes_map_case_id_foreign` (`map_case_id`),
  KEY `adventure_modes_planet_id_foreign` (`planet_id`),
  CONSTRAINT `adventure_modes_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `adventure_modes_enemy_id_foreign` FOREIGN KEY (`enemy_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `adventure_modes_map_case_id_foreign` FOREIGN KEY (`map_case_id`) REFERENCES `map_cases` (`id`),
  CONSTRAINT `adventure_modes_planet_id_foreign` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`),
  CONSTRAINT `adventure_modes_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.adventure_modes : ~8 rows (environ)
/*!40000 ALTER TABLE `adventure_modes` DISABLE KEYS */;
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, NULL, NULL, NULL, 88, 1, '2022-05-20 13:13:22', '2022-05-20 13:13:23');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(2, 2, 1, 1, 4, 2, 500, 88, 1, '2022-05-20 13:14:08', '2022-05-20 13:14:09');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(3, 3, 1, 1, NULL, NULL, NULL, 88, 1, '2022-05-20 13:17:03', '2022-05-20 13:17:03');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(4, 4, 1, 1, 4, 2, 500, 88, 1, '2022-05-20 13:19:43', '2022-05-20 13:19:43');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(5, 1, 89, 1, NULL, NULL, NULL, 83, 1, '2022-05-20 13:33:53', '2022-05-20 13:33:53');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(6, 1, 85, 15, NULL, NULL, NULL, 15, 4, '2022-05-25 23:28:56', '2022-05-25 23:28:56');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(7, 1, 92, 23, NULL, NULL, NULL, 20, 1, '2022-05-26 01:03:47', '2022-05-26 01:03:47');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(8, 1, 91, 1, NULL, NULL, NULL, 77, 1, '2022-05-26 01:27:38', '2022-05-26 01:27:39');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(9, 1, 88, 10, 23, 22, 36000, 44, 1, '2022-05-26 01:30:58', '2022-05-26 01:30:58');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(10, 1, 94, 31, 26, 22, 35000, 31, 1, '2022-05-26 01:35:33', '2022-05-26 01:35:34');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(11, 27, 78, 2, NULL, NULL, NULL, 31, 1, '2022-05-26 23:35:38', '2022-05-26 23:35:39');
INSERT INTO `adventure_modes` (`id`, `step_number`, `story_id`, `character_id`, `enemy_id`, `enemy_level`, `enemy_health`, `map_case_id`, `planet_id`, `created_at`, `updated_at`) VALUES
	(12, 28, 78, 2, NULL, NULL, NULL, 17, 1, '2022-05-26 23:41:17', '2022-05-26 23:41:18');
/*!40000 ALTER TABLE `adventure_modes` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. caps
CREATE TABLE IF NOT EXISTS `caps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_level` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `caps_scarecities_id` bigint(20) unsigned NOT NULL,
  `strength` int(11) DEFAULT NULL,
  `vitality` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `bonus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `malus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caps_caps_scarecities_id_foreign` (`caps_scarecities_id`),
  CONSTRAINT `caps_caps_scarecities_id_foreign` FOREIGN KEY (`caps_scarecities_id`) REFERENCES `caps_scarecities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.caps : ~110 rows (environ)
/*!40000 ALTER TABLE `caps` DISABLE KEYS */;
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(1, 'Sauveur de la Terre', 1, 15000, 1, 0, 0, 0, 0, 'Point de base x2', '', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(2, 'Bâton de force', 1, 2000, 2, 1, 0, 0, 0, 'Bonus : +1', '', '2022-05-19 22:09:46', '2022-05-19 22:09:47');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(3, 'Bâton de vitalité', 1, 2000, 2, 0, 100, 0, 0, 'Bonus : +1', '', '2022-05-19 22:09:48', '2022-05-19 22:09:48');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(4, 'Carapace Tortue', 5, 2000, 2, 0, 0, 1, 0, 'Bonus : +1', '', '2022-05-19 22:09:49', '2022-05-19 22:09:49');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(5, 'Éventail magique', 5, 2000, 2, 0, 0, 0, 1, 'Bonus : +1', '', '2022-05-19 22:09:49', '2022-05-19 22:09:49');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(6, 'Caouille de la Tortue', 5, 5000, 3, 0, 0, 1, 1, 'Bonus : +2', '', '2022-05-19 22:09:50', '2022-05-19 22:09:50');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(7, 'Pierre d\'évolution', 5, 5000, 3, 0, 100, 0, 1, 'Bonus : +2', '', '2022-05-19 22:09:51', '2022-05-19 22:09:51');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(8, 'Pierre de férocité', 5, 5000, 3, 1, 0, 0, 1, 'Bonus : +2', '', '2022-05-19 22:09:51', '2022-05-19 22:09:51');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(9, 'Pierre de force', 5, 5000, 3, 2, 0, 0, 0, 'Bonus : +2', '', '2022-05-19 22:09:52', '2022-05-19 22:09:52');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(10, 'Pierre de lune', 5, 5000, 3, 1, 0, 1, 0, 'Bonus : +2', '', '2022-05-19 22:09:53', '2022-05-19 22:09:53');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(11, 'Pierre de résistance', 5, 5000, 3, 0, 0, 2, 0, 'Bonus : +2', '', '2022-05-19 22:09:53', '2022-05-19 22:09:53');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(12, 'Pierre de vitalité', 5, 5000, 3, 0, 200, 0, 0, 'Bonus : +2', '', '2022-05-19 22:09:54', '2022-05-19 22:09:54');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(13, 'Pierre énergétique', 5, 5000, 3, 0, 0, 0, 2, 'Bonus : +2', '', '2022-05-19 22:09:55', '2022-05-19 22:09:55');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(14, 'Pierre philosophale', 5, 5000, 3, 1, 100, 0, 0, 'Bonus : +2', '', '2022-05-19 22:09:55', '2022-05-19 22:09:55');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(15, 'Poudre de senzu', 5, 5000, 3, 0, 100, 1, 0, 'Bonus : +2', '', '2022-05-19 22:09:56', '2022-05-19 22:09:56');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(16, 'Attaque Kaioken', 10, 20000, 4, 2, 0, -1, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:09:57', '2022-05-19 22:09:57');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(17, 'Boîte à musique', 10, 20000, 4, 0, 200, -1, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:09:57', '2022-05-19 22:09:57');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(18, 'Boite du dragon', 10, 20000, 4, -1, 200, 2, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:09:58', '2022-05-19 22:09:58');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(19, 'Boite mystique', 10, 20000, 4, -1, 200, 0, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:09:59', '2022-05-19 22:09:59');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(20, 'Boite renforcée', 10, 20000, 4, 0, 200, 2, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:09:59', '2022-05-19 22:09:59');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(21, 'Concentration de KI', 10, 20000, 4, -1, 0, 2, 2, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:00', '2022-05-19 22:10:00');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(22, 'Dernier senzu', 10, 20000, 4, 0, 400, 0, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:01', '2022-05-19 22:10:01');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(23, 'Dernier voeu', 10, 20000, 4, -1, 400, 0, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:01', '2022-05-19 22:10:01');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(24, 'Dernier soins', 10, 20000, 4, 0, 400, -1, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:02', '2022-05-19 22:10:02');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(25, 'Fruit de l\'Arbre Sacré', 10, 20000, 4, 3, -100, 0, 1, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:02', '2022-05-19 22:10:03');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(26, 'Poing de Yamcha', 10, 20000, 4, 2, 200, 0, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:03', '2022-05-19 22:10:03');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(27, 'Puissance du Désespoir', 10, 20000, 4, 1, -100, 0, 3, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:04', '2022-05-19 22:10:04');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(28, 'Récupération de Dendé', 10, 20000, 4, 0, -100, 3, 1, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:04', '2022-05-19 22:10:05');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(29, 'Soutien de Kibito', 10, 20000, 4, 2, 0, 2, -1, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:05', '2022-05-19 22:10:05');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(30, 'Tenue Enchantée', 10, 20000, 4, 0, -100, 1, 3, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:06', '2022-05-19 22:10:06');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(31, 'Tenue lourde', 10, 20000, 4, 1, -100, 3, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:06', '2022-05-19 22:10:06');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(32, 'Tenue saiyan', 10, 20000, 4, 3, -100, 1, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:07', '2022-05-19 22:10:07');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(33, 'Voeu de Yamcha', 10, 20000, 4, 2, 200, -1, 0, 'Bonus : +4', 'Malus: -1', '2022-05-19 22:10:08', '2022-05-19 22:10:08');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(34, 'Acier Kacchin', 15, 0, 5, 4, -400, 12, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:08', '2022-05-19 22:10:08');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(35, 'Attaque Kaioken x20', 15, 0, 5, 8, -400, 0, 8, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:09', '2022-05-19 22:10:09');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(36, 'Bouclier Kacchin', 15, 0, 5, 0, -400, 12, 4, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:10', '2022-05-19 22:10:10');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(37, 'Boule magique', 15, 0, 5, 4, -400, 0, 12, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:10', '2022-05-19 22:10:10');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(38, 'Eau démoniaque', 15, 0, 5, 0, 1200, -4, 4, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:11', '2022-05-19 22:10:11');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(39, 'Eau divine', 15, 0, 5, -4, 1200, 4, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:12', '2022-05-19 22:10:12');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(40, 'Eau sacrée', 15, 0, 5, 4, 1200, -4, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:12', '2022-05-19 22:10:12');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(41, 'Élixir démoniaque', 15, 0, 5, -4, 400, 0, 12, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:14', '2022-05-19 22:10:14');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(42, 'Élixir divin', 15, 0, 5, -4, 400, 12, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:14', '2022-05-19 22:10:14');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(43, 'Élixir sacré', 15, 0, 5, 12, 400, 0, -4, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:15', '2022-05-19 22:10:15');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(44, 'Eveil du Potentiel', 15, 0, 5, 0, -400, 4, 12, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:16', '2022-05-19 22:10:16');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(45, 'Lance maléfique', 15, 0, 5, 12, -400, 0, 4, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:16', '2022-05-19 22:10:16');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(46, 'Z-Sword', 15, 0, 5, 12, -400, 4, 0, 'Bonus : +4', 'Malus: -4', '2022-05-19 22:10:17', '2022-05-19 22:10:17');
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(47, 'Elève de Kame Sennin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(48, 'Démon bienveillant', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(49, 'Frère impitoyable', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(50, 'Saiyan au potentiel infini', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(51, 'La mort ne lui fait pas peur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(52, 'Graînes diaboliques', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(53, 'Télékinésiste', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(54, 'Un faible mentor', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(55, 'Combattant tri clope', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(56, 'Prince des saiyans', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(57, 'Squatteur de la tour Karine', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(58, 'Rival de Vegeta', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(59, 'Bras droit de Freezer', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(60, 'Bras gauche de Freezer', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(61, 'Force verte', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(62, 'Force orange', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(63, 'Force bleue', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(64, 'Capitaine des forces spéciales', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(65, 'Force rouge', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(66, 'Espoir de Namek', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(67, 'Tyran de la galaxie', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(68, 'Saiyan venu du futur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(69, 'Géniteur tyrannique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(70, 'Assistant du Dr. Gero', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(71, 'Génie incompris', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(72, 'Ami des oiseaux', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(73, 'Usurpateur de talent', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(74, 'Partie de Cell', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(75, 'Android envoutante', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(76, 'Garde forestier', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(77, 'Monstre du futur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(78, 'Rival de Trunks', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(79, 'Grande justicière', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(80, 'Rival de Goten', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(81, 'Kaioshin de l\'Est', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(82, 'Subalterne de Kaioshin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(83, 'Gardien du premier niveau', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(84, 'Roi des démons', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(85, 'Fusion des jeunes Saïyens', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(86, 'Bibbidi-Bobbidi-Boo !', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(87, 'Pouvoir des Potaras', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(88, 'Démon Maléfique Majin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(89, 'Pouvoir de la Lune', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(90, 'Monarque des Saïyans', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(91, 'Guerrière intergalactique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(92, 'Âme démoniaque', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(93, 'Acolyte Intergalactique B', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(94, 'Union Shinjin', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(95, 'Vision du futur', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(96, 'Saïyan de caste inférieure', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(97, 'Acolyte Combattante', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(98, 'Dieu Tout-Puissant', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(99, 'Fils immortel', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(100, 'Lapin lunaire', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(101, 'Acolyte Intergalactique G', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(102, 'Magicien Intergalactique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(103, 'Mercenaire de l\'espace', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(104, 'Guerrier millénaire', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(105, 'Frère tyrannique', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(106, 'Professeur de Trunks', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(107, 'Android Grisâtre', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(108, 'Android Champignon', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(109, 'L\'ultime cyborg ', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
INSERT INTO `caps` (`id`, `name`, `min_level`, `price`, `caps_scarecities_id`, `strength`, `vitality`, `defense`, `energy`, `bonus`, `malus`, `created_at`, `updated_at`) VALUES
	(110, 'Saiyan au fruit', 1, 15000, 1, 0, 0, 0, 0, '', '', NULL, NULL);
/*!40000 ALTER TABLE `caps` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. caps_scarecities
CREATE TABLE IF NOT EXISTS `caps_scarecities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.caps_scarecities : ~5 rows (environ)
/*!40000 ALTER TABLE `caps_scarecities` DISABLE KEYS */;
INSERT INTO `caps_scarecities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
	(1, 'Personnage', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-2-0.svg', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `caps_scarecities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
	(2, 'Commune', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-1.png', '2022-05-19 18:38:41', '2022-05-19 18:38:43');
INSERT INTO `caps_scarecities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
	(3, 'Rare', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-2.png', '2022-05-19 18:38:44', '2022-05-19 18:38:44');
INSERT INTO `caps_scarecities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
	(4, 'Épique', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-3.svg', '2022-05-19 18:39:14', '2022-05-19 18:39:14');
INSERT INTO `caps_scarecities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
	(5, 'Légendaire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-4.png', '2022-05-19 18:39:38', '2022-05-19 18:39:39');
/*!40000 ALTER TABLE `caps_scarecities` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caps_id` bigint(20) unsigned NOT NULL,
  `step_unlock` int(11) NOT NULL,
  `story_id` bigint(20) unsigned NOT NULL,
  `ruby_cost` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `characters_caps_id_foreign` (`caps_id`),
  KEY `characters_story_id_foreign` (`story_id`),
  CONSTRAINT `characters_caps_id_foreign` FOREIGN KEY (`caps_id`) REFERENCES `caps` (`id`),
  CONSTRAINT `characters_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.characters : ~65 rows (environ)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(1, 'Son Goku', 'https://www.dragonballrebirth.fr/img/characters/son-goku/', 1, 1, 1, 0, '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(2, 'Krilin', 'https://www.dragonballrebirth.fr/img/characters/krilin/', 47, 2, 1, 0, '2022-05-20 11:44:46', '2022-05-20 11:44:46');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(3, 'Piccolo', 'https://www.dragonballrebirth.fr/img/characters/piccolo/', 48, 3, 1, 0, '2022-05-20 11:44:48', '2022-05-20 11:44:48');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(4, 'Raditz', 'https://www.dragonballrebirth.fr/img/characters/raditz/', 49, 6, 1, 0, '2022-05-20 11:44:48', '2022-05-20 11:44:48');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(5, 'Son Gohan', 'https://www.dragonballrebirth.fr/img/characters/son-gohan/', 50, 9, 1, 0, '2022-05-20 11:44:49', '2022-05-20 11:44:49');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(6, 'Yamcha', 'https://www.dragonballrebirth.fr/img/characters/yamcha/', 51, 11, 1, 0, '2022-05-20 11:44:50', '2022-05-20 11:44:50');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(7, 'Saibaman', 'https://www.dragonballrebirth.fr/img/characters/saibaman/', 52, 13, 1, 0, '2022-05-20 11:44:51', '2022-05-20 11:44:51');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(8, 'Chaozu', 'https://www.dragonballrebirth.fr/img/characters/chaozu/', 53, 14, 1, 0, '2022-05-20 11:44:51', '2022-05-20 11:44:51');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(9, 'Nappa', 'https://www.dragonballrebirth.fr/img/characters/nappa/', 54, 15, 1, 0, '2022-05-20 11:44:52', '2022-05-20 11:44:52');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(10, 'Tenshinhan', 'https://www.dragonballrebirth.fr/img/characters/tenshinhan/', 55, 16, 1, 0, '2022-05-20 11:44:53', '2022-05-20 11:44:53');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(11, 'Vegeta', 'https://www.dragonballrebirth.fr/img/characters/vegeta/', 56, 18, 1, 0, '2022-05-20 11:44:54', '2022-05-20 11:44:54');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(12, 'Yajirobe', 'https://www.dragonballrebirth.fr/img/characters/yajirobe/', 57, 22, 1, 0, '2022-05-20 11:44:54', '2022-05-20 11:44:54');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(13, 'Kiwi', 'https://www.dragonballrebirth.fr/img/characters/kiwi/', 58, 30, 78, 0, '2022-05-20 11:44:55', '2022-05-20 11:44:55');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(14, 'Dodoria', 'https://www.dragonballrebirth.fr/img/characters/dodoria/', 59, 32, 78, 0, '2022-05-20 11:44:56', '2022-05-20 11:44:56');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(15, 'Zabon', 'https://www.dragonballrebirth.fr/img/characters/zarbon/', 60, 37, 78, 0, '2022-05-20 11:44:57', '2022-05-20 11:44:57');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(16, 'Guldo', 'https://www.dragonballrebirth.fr/img/characters/guldo/', 61, 45, 78, 0, '2022-05-20 11:44:57', '2022-05-20 11:44:57');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(17, 'Reecom', 'https://www.dragonballrebirth.fr/img/characters/reecom/', 62, 47, 78, 0, '2022-05-20 11:44:58', '2022-05-20 11:44:58');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(18, 'Barta', 'https://www.dragonballrebirth.fr/img/characters/barta/', 63, 48, 78, 0, '2022-05-20 11:44:59', '2022-05-20 11:44:59');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(19, 'Ginyu', 'https://www.dragonballrebirth.fr/img/characters/ginyu/', 64, 49, 78, 0, '2022-05-20 11:45:00', '2022-05-20 11:45:00');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(20, 'Jeece', 'https://www.dragonballrebirth.fr/img/characters/jeece/', 65, 51, 78, 0, '2022-05-20 11:45:00', '2022-05-20 11:45:00');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(21, 'Nail', 'https://www.dragonballrebirth.fr/img/characters/nail/', 66, 53, 78, 0, '2022-05-20 11:45:01', '2022-05-20 11:45:01');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(22, 'Freezer', 'https://www.dragonballrebirth.fr/img/characters/freezer/', 67, 70, 78, 0, '2022-05-20 11:45:02', '2022-05-20 11:45:02');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(23, 'Mirai Trunks', 'https://www.dragonballrebirth.fr/img/characters/mirai-trunks/', 68, 72, 79, 0, '2022-05-20 11:45:03', '2022-05-20 11:45:03');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(24, 'Roi Cold', 'https://www.dragonballrebirth.fr/img/characters/king-cold/', 69, 75, 79, 0, '2022-05-20 11:45:03', '2022-05-20 11:45:03');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(25, 'C-19', 'https://www.dragonballrebirth.fr/img/characters/c19/', 70, 87, 79, 0, '2022-05-20 11:45:04', '2022-05-20 11:45:04');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(26, 'Dr. Gero', 'https://www.dragonballrebirth.fr/img/characters/drgero/', 71, 94, 79, 0, '2022-05-20 11:45:05', '2022-05-20 11:45:05');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(27, 'C-16', 'https://www.dragonballrebirth.fr/img/characters/c16/', 72, 110, 80, 0, '2022-05-20 11:45:06', '2022-05-20 11:45:06');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(28, 'Mr. Satan', 'https://www.dragonballrebirth.fr/img/characters/satan/', 73, 129, 80, 0, '2022-05-20 11:45:06', '2022-05-20 11:45:06');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(29, 'Cell Jr.', 'https://www.dragonballrebirth.fr/img/characters/cell-jr/', 74, 135, 80, 0, '2022-05-20 11:45:07', '2022-05-20 11:45:07');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(30, 'C-18', 'https://www.dragonballrebirth.fr/img/characters/c18/', 75, 150, 92, 0, '2022-05-20 11:45:08', '2022-05-20 11:45:08');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(31, 'C-17', 'https://www.dragonballrebirth.fr/img/characters/c17/', 76, 151, 92, 0, '2022-05-20 11:45:09', '2022-05-20 11:45:09');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(32, 'Cell', 'https://www.dragonballrebirth.fr/img/characters/cell/', 77, 152, 80, 0, '2022-05-20 11:45:09', '2022-05-20 11:45:09');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(33, 'Son Goten', 'https://www.dragonballrebirth.fr/img/characters/son-goten/', 78, 157, 81, 0, '2022-05-20 11:45:10', '2022-05-20 11:45:10');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(34, 'Videl', 'https://www.dragonballrebirth.fr/img/characters/videl/', 79, 158, 81, 0, '2022-05-20 11:45:11', '2022-05-20 11:45:11');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(35, 'Trunks', 'https://www.dragonballrebirth.fr/img/characters/trunks/', 80, 161, 81, 0, '2022-05-20 11:45:12', '2022-05-20 11:45:12');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(36, 'Kaioshin', 'https://www.dragonballrebirth.fr/img/characters/kaioshin/', 81, 180, 81, 0, '2022-05-20 11:45:12', '2022-05-20 11:45:12');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(37, 'Kibito', 'https://www.dragonballrebirth.fr/img/characters/kibito/', 82, 186, 81, 0, '2022-05-20 11:45:13', '2022-05-20 11:45:13');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(38, 'Puipui', 'https://www.dragonballrebirth.fr/img/characters/puipui/', 83, 192, 81, 0, '2022-05-20 11:45:14', '2022-05-20 11:45:14');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(39, 'Dabra', 'https://www.dragonballrebirth.fr/img/characters/dabra/', 84, 201, 81, 0, '2022-05-20 11:45:15', '2022-05-20 11:45:15');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(40, 'Gotenks', 'https://www.dragonballrebirth.fr/img/characters/gotenks/', 85, 230, 82, 0, '2022-05-20 11:45:15', '2022-05-20 11:45:15');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(41, 'Buu', 'https://www.dragonballrebirth.fr/img/characters/buu/', 86, 234, 82, 0, '2022-05-20 11:45:16', '2022-05-20 11:45:16');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(42, 'Vegetto', 'https://www.dragonballrebirth.fr/img/characters/vegetto/', 87, 267, 82, 0, '2022-05-20 11:45:17', '2022-05-20 11:45:17');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(43, 'Super Buu', 'https://www.dragonballrebirth.fr/img/characters/super-buu/', 88, 294, 82, 0, '2022-05-20 11:45:17', '2022-05-20 11:45:17');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(44, 'Oozaru', 'https://www.dragonballrebirth.fr/img/characters/oozaru/', 89, 1, 1, 25, '2022-05-20 11:45:18', '2022-05-20 11:45:18');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(45, 'Roi Vegeta', 'https://www.dragonballrebirth.fr/img/characters/king-vegeta/', 90, 1, 1, 25, '2022-05-20 11:45:19', '2022-05-20 11:45:19');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(46, 'Zangya', 'https://www.dragonballrebirth.fr/img/characters/zangya/', 91, 1, 1, 25, '2022-05-20 11:45:20', '2022-05-20 11:45:20');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(47, 'Evil Buu', 'https://www.dragonballrebirth.fr/img/characters/evil-buu/', 92, 1, 1, 25, '2022-05-20 11:45:20', '2022-05-20 11:45:20');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(48, 'Bido', 'https://www.dragonballrebirth.fr/img/characters/bido/', 93, 1, 1, 25, '2022-05-20 11:45:21', '2022-05-20 11:45:21');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(49, 'Kibitoshin', 'https://www.dragonballrebirth.fr/img/characters/kibitoshin/', 94, 1, 1, 25, '2022-05-20 11:45:22', '2022-05-20 11:45:22');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(50, 'Baddack', 'https://www.dragonballrebirth.fr/img/characters/baddack/', 95, 1, 85, 0, '2022-05-20 11:45:23', '2022-05-20 11:45:23');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(51, 'Toma', 'https://www.dragonballrebirth.fr/img/characters/toma/', 96, 5, 85, 0, '2022-05-20 11:45:23', '2022-05-20 11:45:23');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(52, 'Vasha', 'https://www.dragonballrebirth.fr/img/characters/vasha/', 97, 18, 85, 0, '2022-05-20 11:45:24', '2022-05-20 11:45:24');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(53, 'Kami Sama', 'https://www.dragonballrebirth.fr/img/characters/kami-sama/', 98, 7, 86, 0, '2022-05-20 11:45:25', '2022-05-20 11:45:25');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(54, 'Garlic Jr.', 'https://www.dragonballrebirth.fr/img/characters/garlic/', 99, 16, 86, 0, '2022-05-20 11:45:26', '2022-05-20 11:45:26');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(55, 'Toto le lapin', 'https://www.dragonballrebirth.fr/img/characters/toto/', 100, 3, 87, 0, '2022-05-20 11:45:26', '2022-05-20 11:45:26');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(56, 'Gokua', 'https://www.dragonballrebirth.fr/img/characters/gokua/', 101, 11, 88, 0, '2022-05-20 11:45:27', '2022-05-20 11:45:27');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(57, 'Bujin', 'https://www.dragonballrebirth.fr/img/characters/bujin/', 102, 33, 88, 0, '2022-05-20 11:45:28', '2022-05-20 11:45:28');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(58, 'Bojack', 'https://www.dragonballrebirth.fr/img/characters/bojack/', 103, 35, 88, 0, '2022-05-20 11:45:28', '2022-05-20 11:45:28');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(59, 'Broly', 'https://www.dragonballrebirth.fr/img/characters/broly/', 104, 20, 90, 0, '2022-05-20 11:45:29', '2022-05-20 11:45:29');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(60, 'Cooler', 'https://www.dragonballrebirth.fr/img/characters/cooler/', 105, 16, 91, 0, '2022-05-20 11:45:30', '2022-05-20 11:45:30');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(61, 'Mirai Gohan', 'https://www.dragonballrebirth.fr/img/characters/mirai-gohan/', 106, 9, 92, 0, '2022-05-20 11:45:31', '2022-05-20 11:45:31');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(62, 'C-14', 'https://www.dragonballrebirth.fr/img/characters/c14/', 107, 14, 94, 0, '2022-05-20 11:45:31', '2022-05-20 11:45:31');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(63, 'C-15', 'https://www.dragonballrebirth.fr/img/characters/c15/', 108, 16, 94, 0, '2022-05-20 11:45:32', '2022-05-20 11:45:32');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(64, 'C-13', 'https://www.dragonballrebirth.fr/img/characters/c13/', 109, 28, 94, 0, '2022-05-20 11:45:33', '2022-05-20 11:45:33');
INSERT INTO `characters` (`id`, `name`, `avatar`, `caps_id`, `step_unlock`, `story_id`, `ruby_cost`, `created_at`, `updated_at`) VALUES
	(65, 'Thales', 'https://www.dragonballrebirth.fr/img/characters/thales/', 110, 10, 95, 0, '2022-05-20 11:45:34', '2022-05-20 11:45:34');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. link_rewards_to_steps
CREATE TABLE IF NOT EXISTS `link_rewards_to_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rewards_id` bigint(20) unsigned NOT NULL,
  `step_number` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_rewards_to_steps_rewards_id_foreign` (`rewards_id`),
  KEY `link_rewards_to_steps_step_number_foreign` (`step_number`),
  CONSTRAINT `link_rewards_to_steps_rewards_id_foreign` FOREIGN KEY (`rewards_id`) REFERENCES `rewards` (`id`),
  CONSTRAINT `link_rewards_to_steps_step_number_foreign` FOREIGN KEY (`step_number`) REFERENCES `adventure_modes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.link_rewards_to_steps : ~16 rows (environ)
/*!40000 ALTER TABLE `link_rewards_to_steps` DISABLE KEYS */;
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, '2022-05-20 13:03:43', '2022-05-20 13:03:44');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(2, 3, 2, '2022-05-20 13:15:34', '2022-05-20 13:15:34');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(3, 1, 2, '2022-05-20 13:15:49', '2022-05-20 13:15:50');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(4, 4, 3, '2022-05-20 13:18:31', '2022-05-20 13:18:32');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(5, 3, 3, '2022-05-20 13:18:40', '2022-05-20 13:18:40');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(6, 6, 4, '2022-05-20 13:22:21', '2022-05-20 13:22:22');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(7, 5, 4, '2022-05-20 13:22:30', '2022-05-20 13:22:30');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(8, 7, 5, '2022-05-20 13:35:10', '2022-05-20 13:35:10');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(9, 9, 6, '2022-05-25 23:29:19', '2022-05-25 23:29:20');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(10, 8, 6, '2022-05-25 23:29:31', '2022-05-25 23:29:32');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(14, 13, 7, '2022-05-26 01:07:12', '2022-05-26 01:07:12');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(15, 14, 7, '2022-05-26 01:07:28', '2022-05-26 01:07:29');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(16, 15, 7, '2022-05-26 01:07:28', '2022-05-26 01:07:29');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(17, 16, 8, '2022-05-26 01:29:12', '2022-05-26 01:29:13');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(18, 17, 9, '2022-05-26 01:32:11', '2022-05-26 01:32:12');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(19, 18, 10, '2022-05-26 01:36:56', '2022-05-26 01:36:56');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(20, 19, 11, '2022-05-26 23:40:41', '2022-05-26 23:40:41');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(21, 22, 12, '2022-05-26 23:42:31', '2022-05-26 23:42:34');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(22, 21, 12, '2022-05-26 23:42:32', '2022-05-26 23:42:34');
INSERT INTO `link_rewards_to_steps` (`id`, `rewards_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(23, 20, 12, '2022-05-26 23:42:33', '2022-05-26 23:42:33');
/*!40000 ALTER TABLE `link_rewards_to_steps` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. link_win_conditions_to_steps
CREATE TABLE IF NOT EXISTS `link_win_conditions_to_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `conditions_id` bigint(20) unsigned NOT NULL,
  `step_number` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_win_conditions_to_steps_conditions_id_foreign` (`conditions_id`),
  KEY `link_win_conditions_to_steps_step_number_foreign` (`step_number`),
  CONSTRAINT `link_win_conditions_to_steps_conditions_id_foreign` FOREIGN KEY (`conditions_id`) REFERENCES `win_conditions` (`id`),
  CONSTRAINT `link_win_conditions_to_steps_step_number_foreign` FOREIGN KEY (`step_number`) REFERENCES `adventure_modes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.link_win_conditions_to_steps : ~12 rows (environ)
/*!40000 ALTER TABLE `link_win_conditions_to_steps` DISABLE KEYS */;
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-05-20 12:55:51', '2022-05-20 12:55:51');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(2, 2, 2, '2022-05-20 13:16:08', '2022-05-20 13:16:08');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(3, 1, 3, '2022-05-20 13:17:39', '2022-05-20 13:17:39');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(4, 4, 4, '2022-05-20 13:20:08', '2022-05-20 13:20:09');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(5, 1, 5, '2022-05-20 13:36:32', '2022-05-20 13:36:32');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(7, 1, 6, '2022-05-25 23:29:45', '2022-05-25 23:29:46');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(8, 5, 7, '2022-05-26 01:06:00', '2022-05-26 01:06:01');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(9, 6, 8, '2022-05-26 01:29:28', '2022-05-26 01:29:29');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(10, 4, 9, '2022-05-26 01:32:44', '2022-05-26 01:32:45');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(15, 14, 12, '2022-05-26 23:40:13', '2022-05-26 23:40:15');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(16, 15, 12, '2022-05-26 23:40:13', '2022-05-26 23:40:15');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(17, 16, 12, '2022-05-26 23:40:14', '2022-05-26 23:40:14');
INSERT INTO `link_win_conditions_to_steps` (`id`, `conditions_id`, `step_number`, `created_at`, `updated_at`) VALUES
	(18, 13, 11, '2022-05-26 23:41:36', '2022-05-26 23:41:37');
/*!40000 ALTER TABLE `link_win_conditions_to_steps` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. main_stories
CREATE TABLE IF NOT EXISTS `main_stories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.main_stories : ~2 rows (environ)
/*!40000 ALTER TABLE `main_stories` DISABLE KEYS */;
INSERT INTO `main_stories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Mode Aventure : Normale', '2022-05-20 12:37:07', '2022-05-20 12:37:07');
INSERT INTO `main_stories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Mode Aventure : Hard', '2022-05-20 12:37:18', '2022-05-20 12:37:18');
/*!40000 ALTER TABLE `main_stories` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. map_cases
CREATE TABLE IF NOT EXISTS `map_cases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `case` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.map_cases : ~90 rows (environ)
/*!40000 ALTER TABLE `map_cases` DISABLE KEYS */;
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(1, 'A-1', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(2, 'A-2', '2022-05-19 18:40:31', '2022-05-19 18:40:31');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(3, 'A-3', '2022-05-19 18:40:48', '2022-05-19 18:40:48');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(4, 'A-4', '2022-05-19 18:41:06', '2022-05-19 18:41:07');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(5, 'A-5', '2022-05-19 18:49:04', '2022-05-19 18:49:04');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(6, 'A-6', '2022-05-19 18:49:05', '2022-05-19 18:49:05');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(7, 'A-7', '2022-05-19 18:49:06', '2022-05-19 18:49:06');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(8, 'A-8', '2022-05-19 18:49:06', '2022-05-19 18:49:07');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(9, 'A-9', '2022-05-19 18:49:07', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(10, 'B-1', '2022-05-19 18:49:08', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(11, 'B-2', '2022-05-19 18:49:08', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(12, 'B-3', '2022-05-19 18:49:08', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(13, 'B-4', '2022-05-19 18:49:08', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(14, 'B-5', '2022-05-19 18:49:08', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(15, 'B-6', '2022-05-19 18:49:08', '2022-05-19 18:49:08');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(16, 'B-7', '2022-05-19 18:49:08', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(17, 'B-8', '2022-05-19 18:49:09', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(18, 'B-9', '2022-05-19 18:49:09', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(19, 'C-1', '2022-05-19 18:49:09', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(20, 'C-2', '2022-05-19 18:49:09', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(21, 'C-3', '2022-05-19 18:49:09', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(22, 'C-4', '2022-05-19 18:49:09', '2022-05-19 18:49:09');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(23, 'C-5', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(24, 'C-6', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(25, 'C-7', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(26, 'C-8', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(27, 'C-9', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(28, 'D-1', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(29, 'D-2', '2022-05-19 18:49:10', '2022-05-19 18:49:10');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(30, 'D-3', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(31, 'D-4', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(32, 'D-5', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(33, 'D-6', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(34, 'D-7', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(35, 'D-8', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(36, 'D-9', '2022-05-19 18:49:11', '2022-05-19 18:49:11');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(37, 'E-1', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(38, 'E-2', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(39, 'E-3', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(40, 'E-4', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(41, 'E-5', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(42, 'E-6', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(43, 'E-7', '2022-05-19 18:49:12', '2022-05-19 18:49:12');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(44, 'E-8', '2022-05-19 18:49:12', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(45, 'E-9', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(46, 'F-1', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(47, 'F-2', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(48, 'F-3', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(49, 'F-4', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(50, 'F-5', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(51, 'F-6', '2022-05-19 18:49:13', '2022-05-19 18:49:13');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(52, 'F-7', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(53, 'F-8', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(54, 'F-9', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(55, 'G-1', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(56, 'G-2', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(57, 'G-3', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(58, 'G-4', '2022-05-19 18:49:14', '2022-05-19 18:49:14');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(59, 'G-5', '2022-05-19 18:49:14', '2022-05-19 18:49:15');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(60, 'G-6', '2022-05-19 18:49:16', '2022-05-19 18:49:16');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(61, 'G-7', '2022-05-19 18:49:16', '2022-05-19 18:49:16');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(62, 'G-8', '2022-05-19 18:49:16', '2022-05-19 18:49:16');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(63, 'G-9', '2022-05-19 18:49:16', '2022-05-19 18:49:16');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(64, 'H-1', '2022-05-19 18:49:16', '2022-05-19 18:49:16');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(65, 'H-2', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(66, 'H-3', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(67, 'H-4', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(68, 'H-5', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(69, 'H-6', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(70, 'H-7', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(71, 'H-8', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(72, 'H-9', '2022-05-19 18:49:17', '2022-05-19 18:49:17');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(73, 'I-1', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(74, 'I-2', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(75, 'I-3', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(76, 'I-4', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(77, 'I-5', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(78, 'I-6', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(79, 'I-7', '2022-05-19 18:49:18', '2022-05-19 18:49:18');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(80, 'I-8', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(81, 'I-9', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(82, 'J-1', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(83, 'J-2', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(84, 'J-3', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(85, 'J-4', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(86, 'J-5', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(87, 'J-6', '2022-05-19 18:49:19', '2022-05-19 18:49:19');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(88, 'J-7', '2022-05-19 18:49:20', '2022-05-19 18:49:20');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(89, 'J-8', '2022-05-19 18:49:20', '2022-05-19 18:49:20');
INSERT INTO `map_cases` (`id`, `case`, `created_at`, `updated_at`) VALUES
	(90, 'J-9', '2022-05-19 18:49:20', '2022-05-19 18:49:20');
/*!40000 ALTER TABLE `map_cases` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.migrations : ~21 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2022_05_18_155000_create_waiting_durations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(7, '2022_05_18_156000_create_stories_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2022_05_18_157000_create_object_durations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '2022_05_18_158000_create_map_cases_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(10, '2022_05_18_159000_create_planets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(11, '2022_05_18_160000_create_caps_scarecities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(12, '2022_05_18_161000_create_caps_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2022_05_18_164830_object_item', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(14, '2022_05_18_164901_create_characters_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(15, '2022_05_18_165629_create_trains_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(16, '2022_05_18_194422_create_works_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(20, '2022_05_18_152000_create_win_condition_bases_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(23, '2022_05_18_153000_create_main_stories_table', 5);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(24, '2022_05_18_199000_create_win_conditions_table', 6);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(26, '2022_05_20_104514_create_link_win_conditions_to_steps_table', 7);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(27, '2022_05_20_104456_create_link_rewards_to_steps_table', 8);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(29, '2022_05_21_201000_create_adventure_modes_table', 9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. object_durations
CREATE TABLE IF NOT EXISTS `object_durations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.object_durations : ~4 rows (environ)
/*!40000 ALTER TABLE `object_durations` DISABLE KEYS */;
INSERT INTO `object_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(1, 'Disparaît après utilisation', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `object_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(2, '30j après obtention', '2022-05-20 01:57:43', '2022-05-20 01:57:43');
INSERT INTO `object_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(3, 'Illimité', '2022-05-20 01:57:43', '2022-05-20 01:57:44');
INSERT INTO `object_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(4, '3 jours', '2022-05-20 01:57:44', '2022-05-20 01:57:44');
/*!40000 ALTER TABLE `object_durations` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. object_items
CREATE TABLE IF NOT EXISTS `object_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `using` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumable` tinyint(1) NOT NULL,
  `object_duration_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_items_object_duration_id_foreign` (`object_duration_id`),
  CONSTRAINT `object_items_object_duration_id_foreign` FOREIGN KEY (`object_duration_id`) REFERENCES `object_durations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.object_items : ~43 rows (environ)
/*!40000 ALTER TABLE `object_items` DISABLE KEYS */;
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(1, 'Bouteille de lait', 'https://www.dragonballrebirth.fr/img/objet/lait.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmente l\'énergie d\'une capsule verte', 1, 1, '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(2, 'Poisson', 'https://www.dragonballrebirth.fr/img/objet/poisson.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmenter la vitalité d\'une capsule verte', 0, 1, '2022-05-20 01:55:42', '2022-05-20 01:55:43');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(3, 'Sac de Senzus', 'https://www.dragonballrebirth.fr/img/objet/sac-senzu.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmenter la défense d\'une capsule verte', 0, 1, '2022-05-20 01:55:44', '2022-05-20 01:55:44');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(4, 'Viande de dinosaure', 'https://www.dragonballrebirth.fr/img/objet/viande-dino.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Augmenter la force d\'une capsule verte', 0, 1, '2022-05-20 01:55:45', '2022-05-20 01:55:45');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(5, 'Nuage magique', 'https://www.dragonballrebirth.fr/img/objet/nuage.svg', 'Peut être acquérie avec les métiers, la fouille, les quêtes et les commerces', 'Ressusciter ou voyager dans le monde des morts', 0, 1, '2022-05-20 01:55:45', '2022-05-20 01:55:45');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(6, 'Pass de Baba', 'https://www.dragonballrebirth.fr/img/objet/passe-baba_v3.svg', '', 'Ressusciter ou voyager dans le monde des morts', 1, 1, '2022-05-20 01:55:46', '2022-05-20 01:55:46');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(7, 'Super Pass de Baba', 'https://www.dragonballrebirth.fr/img/objet/SuperPass.svg', '', 'Ressusciter tous ses personnages', 1, 1, '2022-05-20 01:55:46', '2022-05-20 01:55:46');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(8, 'Pilule du Dr. Gero', 'https://www.dragonballrebirth.fr/img/objet/pilule-gero.svg', '', 'Répartir à nouveau les statistiques d\'un personnage', 1, 1, '2022-05-20 01:55:47', '2022-05-20 01:55:47');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(9, 'Licence de travail', 'https://www.dragonballrebirth.fr/img/objet/Licence.svg', '', 'Envoyer un second personnage en travail', 0, 2, '2022-05-20 01:55:47', '2022-05-20 01:55:47');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(10, 'Sac de frappe de Vegeta', 'https://www.dragonballrebirth.fr/img/objet/sac_de_frappe.svg', '', 'Obtenir un second pré-combo', 0, 3, '2022-05-20 01:55:48', '2022-05-20 01:55:48');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(11, 'Panier de Ressource S', 'https://www.dragonballrebirth.fr/img/objet/PanierS_Paniers.svg', '', 'Permet d\'obtenir 50 ressources de manière aléatoire', 1, 1, '2022-05-20 01:55:49', '2022-05-20 01:55:49');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(12, 'Panier de Ressource M', 'https://www.dragonballrebirth.fr/img/objet/PanierM_Paniers.svg', '', 'Permet d\'obtenir 90 ressources de manière aléatoire', 1, 1, '2022-05-20 01:55:49', '2022-05-20 01:55:49');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(13, 'Panier de Ressource L', 'https://www.dragonballrebirth.fr/img/objet/PanierL_Paniers.svg', '', 'Permet d\'obtenir 150 ressources de manière aléatoire', 1, 1, '2022-05-20 01:55:50', '2022-05-20 01:55:50');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(14, 'Cadeau de Noël', 'https://www.dragonballrebirth.fr/img/objet/Gift_Dragon_Ball_Z_KDO_Pioupiou_Bleu_point.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:55:50', '2022-05-20 01:55:50');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(15, 'Super Cadeau de Noël', 'https://www.dragonballrebirth.fr/img/objet/Gift_Dragon_Ball_Z_KDO_Pioupiou_Jaune.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:55:51', '2022-05-20 01:55:51');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(16, 'Œufs de Pâques', 'https://www.dragonballrebirth.fr/img/objet/easter-eggs.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-20 01:55:51', '2022-05-20 01:55:51');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(17, 'Zénis : 10k', 'https://www.dragonballrebirth.fr/img/objet/zenis.svg', '', 'Permet d\'obtenir 10 000 zénis', 1, 1, '2022-05-20 01:55:52', '2022-05-20 01:55:52');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(18, 'Capsule en chocolat de Pâques', 'https://www.dragonballrebirth.fr/img/objet/capsule-chocolat.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:55:52', '2022-05-20 01:55:52');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(19, 'Super capsule en chocolat de Pâques', 'https://www.dragonballrebirth.fr/img/objet/capsule-chocolat.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:55:53', '2022-05-20 01:55:53');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(20, 'Médaille d\'Or', 'https://www.dragonballrebirth.fr/img/objet/1.svg', '', 'Permet d\'obtenir les récompenses du tournoi ainsi qu\'un objet : Palmarès médaille d\'or', 1, 4, '2022-05-20 01:55:54', '2022-05-20 01:55:54');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(21, 'Médaille d\'Argent', 'https://www.dragonballrebirth.fr/img/objet/2.svg', '', 'Permet d\'obtenir les récompenses du tournoi ainsi qu\'un objet : Palmarès médaille d\'argent', 1, 4, '2022-05-20 01:55:54', '2022-05-20 01:55:54');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(22, 'Médaille de Bronze', 'https://www.dragonballrebirth.fr/img/objet/3.svg', '', 'Permet d\'obtenir les récompenses du tournoi ainsi qu\'un objet : Palmarès médaille de bronze', 1, 4, '2022-05-20 01:55:55', '2022-05-20 01:55:55');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(23, 'Palmarès Médaille d\'Or', 'https://www.dragonballrebirth.fr/img/objet/1.svg', '', 'Souvenir d\'une médaille d\'or lors d\'un tournoi', 0, 3, '2022-05-20 01:55:55', '2022-05-20 01:55:55');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(24, 'Palmarès Médaille d\'Argent', 'https://www.dragonballrebirth.fr/img/objet/2.svg', '', 'Souvenir d\'une médaille d\'argent lors d\'un tournoi', 0, 3, '2022-05-20 01:55:56', '2022-05-20 01:55:56');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(25, 'Palmarès Médaille de Bronze', 'https://www.dragonballrebirth.fr/img/objet/3.svg', '', 'Souvenir d\'une médaille de bronze lors d\'un tournoi', 0, 3, '2022-05-20 01:55:56', '2022-05-20 01:55:56');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(26, 'Feu d\'artifice', 'https://www.dragonballrebirth.fr/img/objet/Fireworks.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:55:57', '2022-05-20 01:55:57');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(27, 'Bonbons de Consolation', 'https://www.dragonballrebirth.fr/img/objet/4-8.svg', '', 'Permet de recevoir une récompense aléatoire pour avoir terminé 4-8ème à un tournoi', 1, 1, '2022-05-20 01:55:57', '2022-05-20 01:55:58');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(28, 'Gâteau d\'anniversaire', 'https://www.dragonballrebirth.fr/img/objet/Gateau.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-20 01:55:58', '2022-05-20 01:55:58');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(29, 'Cadeau d\'anniversaire', 'https://www.dragonballrebirth.fr/img/objet/Gift_Dragon_Ball_Z_KDO_Pioupiou_Rouge_V5.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:55:59', '2022-05-20 01:55:59');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(30, 'Jeton Communautaire', 'https://www.dragonballrebirth.fr/img/objet/MonnaieCommunautaire_Export.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-20 01:55:59', '2022-05-20 01:55:59');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(31, 'Carte d\'identité DBR', 'https://www.dragonballrebirth.fr/img/objet/IDcard.svg', '', 'Permet de changer de pseudo', 1, 1, '2022-05-20 01:56:00', '2022-05-20 01:56:00');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(32, 'Citrouilles d\'Halloween', 'https://www.dragonballrebirth.fr/img/objet/Citrouille%20de%20ragout%20zen.svg', '', 'Permet d\'obtenir des objets en l\'échangeant', 0, 1, '2022-05-20 01:56:00', '2022-05-20 01:56:00');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(33, 'Chaudron magique', 'https://www.dragonballrebirth.fr/img/objet/Chaudron.svg', '', 'Permet d\'obtenir une récompense aléatoirement en l\'ouvrant', 1, 1, '2022-05-20 01:56:01', '2022-05-20 01:56:01');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(34, 'Vertes aléatoires ', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-2-0.svg', '', 'Permet d\'obtenir 5 capsules vertes aléatoires en l\'ouvrant', 1, 1, '2022-05-20 01:56:01', '2022-05-20 01:56:01');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(35, 'Capsule rare aléatoire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-2.svg', '', 'Permet d\'obtenir 1 capsule rare aléatoire en l\'ouvrant', 1, 1, '2022-05-20 01:56:02', '2022-05-20 01:56:02');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(36, 'Capsule épique aléatoire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-3.svg', '', 'Permet d\'obtenir 1 capsule épique aléatoire en l\'ouvrant', 1, 1, '2022-05-20 01:56:03', '2022-05-20 01:56:03');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(37, 'Capsule légendaire aléatoire', 'https://www.dragonballrebirth.fr/css/images/capsules/capsule-1-4.svg', '', 'Permet d\'obtenir 1 capsule légendaire aléatoire en l\'ouvrant', 1, 1, '2022-05-20 01:56:03', '2022-05-20 01:56:03');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(38, 'Bonbon de Force', 'https://www.dragonballrebirth.fr/img/objet/5.svg', '', 'Permet d\'obtenir 1 point en force en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-20 01:56:04', '2022-05-20 01:56:04');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(39, 'Bonbon de Défense', 'https://www.dragonballrebirth.fr/img/objet/BonbonVert.svg', '', 'Permet d\'obtenir 1 point en défense en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-20 01:56:04', '2022-05-20 01:56:04');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(40, 'Bonbon d\'Energie', 'https://www.dragonballrebirth.fr/img/objet/BonbonJaune.svg', '', 'Permet d\'obtenir 1 point en énergie en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-20 01:56:05', '2022-05-20 01:56:05');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(41, 'Bonbon de Vitalité', 'https://www.dragonballrebirth.fr/img/objet/BonbonRouge.svg', '', 'Permet d\'obtenir 100 points en vitalité en l\'ouvrant Fonctionne uniquement en dessous de 60% du rattrapage de trains', 1, 1, '2022-05-20 01:56:05', '2022-05-20 01:56:05');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(42, 'Bonbon Aléatoire', 'https://www.dragonballrebirth.fr/img/objet/BonbonMarron.svg', '', 'Permet d\'obtenir un bonbon aléatoire en l\'ouvrant', 1, 1, '2022-05-20 01:56:06', '2022-05-20 01:56:06');
INSERT INTO `object_items` (`id`, `name`, `icon`, `description`, `using`, `consumable`, `object_duration_id`, `created_at`, `updated_at`) VALUES
	(43, 'Boite à musique', 'https://preprod.dragonballrebirth.fr/img/objet/Boite%20%C3%A0%20musique.svg', '', 'Objet à fouiller permettant de passer l\'étape 2 de la quête annexe : L\'attaque du dragon !', 0, 3, '2022-05-20 01:56:06', '2022-05-20 01:56:07');
/*!40000 ALTER TABLE `object_items` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.personal_access_tokens : ~0 rows (environ)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. planets
CREATE TABLE IF NOT EXISTS `planets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `planet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.planets : ~4 rows (environ)
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
INSERT INTO `planets` (`id`, `planet`, `created_at`, `updated_at`, `icon`) VALUES
	(1, 'Terre', '2022-05-18 22:03:07', '2022-05-18 22:03:07', 'https://www.dragonballrebirth.fr/img/icon/planet-earth.png');
INSERT INTO `planets` (`id`, `planet`, `created_at`, `updated_at`, `icon`) VALUES
	(2, 'Monde des morts', '2022-05-19 20:51:36', '2022-05-19 20:51:36', 'https://www.dragonballrebirth.fr/img/icon/planet-kaio.png');
INSERT INTO `planets` (`id`, `planet`, `created_at`, `updated_at`, `icon`) VALUES
	(3, 'Namek', '2022-05-19 20:53:28', '2022-05-19 20:53:29', 'https://www.dragonballrebirth.fr/img/icon/planet-namek.png');
INSERT INTO `planets` (`id`, `planet`, `created_at`, `updated_at`, `icon`) VALUES
	(4, 'Espace', '2022-05-19 20:57:06', '2022-05-19 20:57:06', 'https://www.dragonballrebirth.fr/img/icon/planet-earth.png');
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. rewards
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `character_id` bigint(20) unsigned DEFAULT NULL,
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `quantity_object` int(11) DEFAULT NULL,
  `caps_id` bigint(20) unsigned DEFAULT NULL,
  `quantity_caps` int(11) DEFAULT NULL,
  `zenis` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `skin` tinyint(1) DEFAULT NULL,
  `rewards_character_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rewards_character_id_foreign` (`character_id`),
  KEY `rewards_object_id_foreign` (`object_id`),
  KEY `rewards_caps_id_foreign` (`caps_id`),
  KEY `rewards_rewards_character_id_foreign` (`rewards_character_id`),
  CONSTRAINT `rewards_caps_id_foreign` FOREIGN KEY (`caps_id`) REFERENCES `caps` (`id`),
  CONSTRAINT `rewards_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `rewards_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `object_items` (`id`),
  CONSTRAINT `rewards_rewards_character_id_foreign` FOREIGN KEY (`rewards_character_id`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.rewards : ~17 rows (environ)
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(1, 'Krillin', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 13:00:08', '2022-05-20 13:00:10');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(2, '500 Zenis', NULL, NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, '2022-05-20 13:09:54', '2022-05-20 13:09:54');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(3, '300 Zenis', NULL, NULL, NULL, NULL, NULL, 300, NULL, NULL, NULL, '2022-05-20 13:15:12', '2022-05-20 13:15:12');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(4, 'Piccolo', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 13:18:02', '2022-05-20 13:18:03');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(5, 'Caps : Baton Vitalité', NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2022-05-20 13:21:26', '2022-05-20 13:21:27');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(6, '600 Zenis', NULL, NULL, NULL, NULL, NULL, 600, NULL, NULL, NULL, '2022-05-20 13:21:27', '2022-05-20 13:21:28');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(7, 'Ressource S', NULL, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 13:34:50', '2022-05-20 13:34:51');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(8, 'Baddack', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 23:27:22', '2022-05-25 23:27:23');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(9, '10K Zenis', NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL, NULL, '2022-05-26 00:41:36', '2022-05-26 00:41:37');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(10, 'Skin Gohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, '2022-05-26 00:41:36', '2022-05-26 00:41:37');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(11, '15% XP Piccolo', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, 3, '2022-05-26 00:41:34', '2022-05-26 00:41:35');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(12, '50M XP Piccolo', NULL, NULL, NULL, NULL, NULL, NULL, 50000000, NULL, 3, '2022-05-26 00:43:45', '2022-05-26 00:43:46');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(13, '250K Zenis', NULL, NULL, NULL, NULL, NULL, 250000, NULL, NULL, NULL, '2022-05-26 01:06:27', '2022-05-26 01:06:29');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(14, 'C-17', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 01:06:59', '2022-05-26 01:07:00');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(15, 'C-18', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 01:07:01', '2022-05-26 01:07:00');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(16, '200 Poissons', NULL, 2, 200, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 01:28:55', '2022-05-26 01:28:56');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(17, '101K Zenis', NULL, NULL, NULL, NULL, NULL, 101000, NULL, NULL, NULL, '2022-05-26 01:32:02', '2022-05-26 01:32:02');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(18, 'Pills Dr.Gero x1', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 01:36:23', '2022-05-26 01:36:24');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(19, '2 000 Zenis', NULL, NULL, NULL, NULL, NULL, 2000, NULL, NULL, NULL, '2022-05-26 23:36:14', '2022-05-26 23:36:14');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(20, '5 Viande', NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 23:37:15', '2022-05-26 23:37:17');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(21, '5 Poisson', NULL, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 23:37:16', '2022-05-26 23:37:17');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(22, '5 Lait', NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 23:37:16', '2022-05-26 23:37:17');
INSERT INTO `rewards` (`id`, `name`, `character_id`, `object_id`, `quantity_object`, `caps_id`, `quantity_caps`, `zenis`, `experience`, `skin`, `rewards_character_id`, `created_at`, `updated_at`) VALUES
	(23, '3 000 Zenis', NULL, NULL, NULL, NULL, NULL, 3000, NULL, NULL, NULL, '2022-05-26 23:37:51', '2022-05-26 23:37:51');
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. stories
CREATE TABLE IF NOT EXISTS `stories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `story_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_story` bigint(20) DEFAULT NULL,
  `story_number` int(11) NOT NULL,
  `story_unlock` bigint(20) unsigned DEFAULT NULL,
  `step_unlock` bigint(20) DEFAULT NULL,
  `custom_requirement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `story_unlock` (`story_unlock`),
  CONSTRAINT `FK_stories_stories` FOREIGN KEY (`story_unlock`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.stories : ~20 rows (environ)
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(1, 'Saga Saiyan', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-1.png', '2022-05-18 22:03:07', '2022-05-18 22:03:07', 1, 1, 1, 0, 'Aucun', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(78, 'Saga Namek', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-2.png', '2022-05-20 12:31:29', '2022-05-20 12:31:30', 1, 1, 1, 26, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(79, 'Saga Cyborg', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-3.png', '2022-05-20 12:31:31', '2022-05-20 12:31:31', 1, 1, 78, 70, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(80, 'Saga Cell', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-4.png', '2022-05-20 12:31:31', '2022-05-20 12:31:31', 1, 1, 79, 103, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(81, 'Saga Majin', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-5.png', '2022-05-20 12:31:31', '2022-05-20 12:31:32', 1, 1, 80, 152, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(82, 'Saga Buu', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-6.png', '2022-05-20 12:31:32', '2022-05-20 12:31:32', 1, 1, 81, 205, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(83, 'Saga Saiyan : Hard', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-1.png', '2022-05-20 12:31:32', '2022-05-20 12:31:32', 2, 1, 82, 298, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(84, 'Saga Namek : Hard', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-1-2.png', '2022-05-20 12:31:32', '2022-05-20 12:31:33', 2, 1, 83, 26, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(85, 'Vision d\'un destin funeste', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-5.png', '2022-05-20 12:31:33', '2022-05-20 12:31:33', 0, 5, 78, 70, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(86, 'A la poursuite de Garlic', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-6.png', '2022-05-20 12:31:33', '2022-05-20 12:31:33', 0, 6, 1, 10, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(87, 'La bande du lapin', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-7.png', '2022-05-20 12:31:33', '2022-05-20 12:31:33', 0, 7, 1, 0, 'Lancé l\'évènement de Pâques', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(88, 'Les Mercenaires de l\'espace', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-8.png', '2022-05-20 12:31:34', '2022-05-20 12:31:34', 0, 8, 80, 149, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(89, 'Tour du Muscle', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-9.png', '2022-05-20 12:31:34', '2022-05-20 12:31:34', 0, 9, 1, 0, 'Aucun', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(90, 'Broly le super guerrier', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-10.png', '2022-05-20 12:31:35', '2022-05-20 12:31:35', 0, 10, 80, 129, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(91, 'La Revance de Cooler', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-11.png', '2022-05-20 12:31:35', '2022-05-20 12:31:35', 0, 11, 78, 70, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(92, 'L\'histoire de Trunks !', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-13.png', '2022-05-20 12:31:35', '2022-05-20 12:31:35', 0, 13, 80, 130, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(93, 'Grand Quizz DBZ - 1ère édition', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-23.png', '2022-05-20 12:31:36', '2022-05-20 12:31:36', 0, 23, 1, 0, 'Aucun', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(94, 'L\'offensive des Cyborgs', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-22.png', '2022-05-20 12:31:36', '2022-05-20 12:31:36', 0, 22, 80, 152, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(95, 'Le combat fratricide', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-15.png', '2022-05-20 12:31:36', '2022-05-20 12:31:36', 0, 15, 78, 27, '', 1);
INSERT INTO `stories` (`id`, `story_name`, `thumbnail`, `created_at`, `updated_at`, `main_story`, `story_number`, `story_unlock`, `step_unlock`, `custom_requirement`, `visible`) VALUES
	(96, 'L\'attaque du Dragon', 'https://www.dragonballrebirth.fr/img/aventure/histoires/story-14.png', '2022-05-20 12:31:36', '2022-05-20 12:31:37', 0, 14, 82, 259, '', 1);
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. trains
CREATE TABLE IF NOT EXISTS `trains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_case_id` bigint(20) unsigned NOT NULL,
  `planet_id` bigint(20) unsigned NOT NULL,
  `gain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step_id` int(11) NOT NULL,
  `duration_id` bigint(20) unsigned NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specificity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trains_map_case_id_foreign` (`map_case_id`),
  KEY `trains_planet_id_foreign` (`planet_id`),
  KEY `trains_duration_id_foreign` (`duration_id`),
  CONSTRAINT `trains_duration_id_foreign` FOREIGN KEY (`duration_id`) REFERENCES `waiting_durations` (`id`),
  CONSTRAINT `trains_map_case_id_foreign` FOREIGN KEY (`map_case_id`) REFERENCES `map_cases` (`id`),
  CONSTRAINT `trains_planet_id_foreign` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.trains : ~15 rows (environ)
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(1, 'Salle de l\'horloge', 'https://www.dragonballrebirth.fr/img/training/popo.png', 2, 1, 'Obtention des magies 2 et 3', '', 1, 1, 'https://www.dragonballrebirth.fr/img/training/banner/salle_horloge.jpg', '2022-05-18 22:03:07', '2022-05-18 22:03:07', '1 fois par magie');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(2, 'Baba la Voyante', '', 16, 1, '+1 / +2 Défense', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/baba.png', '2022-05-20 01:24:55', '2022-05-20 01:24:55', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(3, 'Kame House', '', 88, 1, '+1 / +2 Force', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/kamehouse.png', '2022-05-20 01:24:57', '2022-05-20 01:24:57', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(4, 'Kami-Sama', '', 2, 1, '+1 / +2 Énergie', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/kamikyuden.png', '2022-05-20 01:24:58', '2022-05-20 01:24:58', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(5, 'Karine', '', 4, 1, '+100 / +200 Vitalité', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/karinetower.png', '2022-05-20 01:24:59', '2022-05-20 01:24:59', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(6, 'Maison', '', 77, 1, '+1 / +2 Esquive', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/gokuhouse.png', '2022-05-20 01:25:00', '2022-05-20 01:25:00', 'Limité à 100 points');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(7, 'Tsuru-Sennin', '', 20, 1, '+1 / +2 Critique', '', 1, 3, 'https://www.dragonballrebirth.fr/img/training/banner/fishing-2.png', '2022-05-20 01:25:01', '2022-05-20 01:25:01', 'Limité à 100 points');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(8, 'Kaïo', 'https://www.dragonballrebirth.fr/img/training/kaio.png', 4, 2, '+2 partout', '', 18, 4, 'https://www.dragonballrebirth.fr/img/training/banner/kaioplanet.png', '2022-05-20 01:25:02', '2022-05-20 01:25:02', 'Unique');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(9, 'Vaisseau de Freezer', '', 41, 3, '+300 / +400 Vitalité', '', 28, 5, 'https://www.dragonballrebirth.fr/img/training/banner/vaisseax-freezer.png', '2022-05-20 01:25:03', '2022-05-20 01:25:03', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(10, 'Grand Chef Namek', 'https://www.dragonballrebirth.fr/img/training/grandchef.png', 20, 3, '+5 dans une statistique', '10', 40, 4, 'https://www.dragonballrebirth.fr/img/training/banner/chefnamek.jpg', '2022-05-20 01:25:04', '2022-05-20 01:25:04', 'Unique');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(11, 'Reecom', '', 69, 3, '+3 / +4 Défense', '', 47, 5, 'https://www.dragonballrebirth.fr/img/training/banner/namek.png', '2022-05-20 01:25:05', '2022-05-20 01:25:05', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(12, 'Ginyu', '', 69, 3, '+3 / +4 Énergie', '', 49, 5, 'https://www.dragonballrebirth.fr/img/training/banner/namek.png', '2022-05-20 01:25:06', '2022-05-20 01:25:06', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(13, 'Nail', '', 75, 3, '+3 / +4 Force', '', 55, 5, 'https://www.dragonballrebirth.fr/img/training/banner/namek-village.png', '2022-05-20 01:25:07', '2022-05-20 01:25:07', 'Illimité');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(14, 'Salle de l\'Esprit et du Temps', 'https://www.dragonballrebirth.fr/img/training/dende.png', 2, 1, 'Réduction durée des entraînements 2% / 5%', '14 puis 18', 108, 6, 'https://www.dragonballrebirth.fr/img/training/banner/timechamber.png', '2022-05-20 01:25:08', '2022-05-20 01:25:08', 'Limité à deux entraînements');
INSERT INTO `trains` (`id`, `name`, `icon`, `map_case_id`, `planet_id`, `gain`, `required_level`, `step_id`, `duration_id`, `thumbnail`, `created_at`, `updated_at`, `specificity`) VALUES
	(15, 'Eveil du vieux Kaioshin', 'https://www.dragonballrebirth.fr/img/training/daikaioshin.png', 11, 2, '+10 points dans toutes les statistiques et +10 points bonus', '28', 230, 7, 'https://www.dragonballrebirth.fr/img/training/banner/vieu-kaioshin.png ', '2022-05-20 01:25:09', '2022-05-20 01:25:09', 'Unique');
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Marine Potier', 'mriou@example.net', '2022-05-18 22:03:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RsR1p1KCzt', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. waiting_durations
CREATE TABLE IF NOT EXISTS `waiting_durations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.waiting_durations : ~7 rows (environ)
/*!40000 ALTER TABLE `waiting_durations` DISABLE KEYS */;
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(1, '2h / 4h', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(2, '12h', '2022-05-19 18:53:17', '2022-05-19 18:53:16');
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(3, '18h / 1j 12h', '2022-05-20 01:27:08', '2022-05-20 01:27:09');
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(4, '3 jours', '2022-05-20 01:27:09', '2022-05-20 01:27:09');
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(5, '2j 6h / 3j', '2022-05-20 01:27:10', '2022-05-20 01:27:10');
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(6, '5 jours', '2022-05-20 01:27:10', '2022-05-20 01:27:10');
INSERT INTO `waiting_durations` (`id`, `duration`, `created_at`, `updated_at`) VALUES
	(7, '7 jours', '2022-05-20 01:27:10', '2022-05-20 01:27:10');
/*!40000 ALTER TABLE `waiting_durations` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. win_conditions
CREATE TABLE IF NOT EXISTS `win_conditions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition_base_id` bigint(20) unsigned DEFAULT NULL,
  `object_harvest` bigint(20) unsigned DEFAULT NULL,
  `object_harvest_quantity` int(11) DEFAULT NULL,
  `special_trains` bigint(20) unsigned DEFAULT NULL,
  `any_trains_quantity` int(11) DEFAULT NULL,
  `spell_condition_number` int(11) DEFAULT NULL,
  `critical_strike` tinyint(1) DEFAULT NULL,
  `dodge_attack` tinyint(1) DEFAULT NULL,
  `min_damage` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `win_conditions_condition_base_id_foreign` (`condition_base_id`),
  KEY `win_conditions_object_harvest_foreign` (`object_harvest`),
  KEY `win_conditions_special_trains_foreign` (`special_trains`),
  CONSTRAINT `win_conditions_condition_base_id_foreign` FOREIGN KEY (`condition_base_id`) REFERENCES `win_condition_bases` (`id`),
  CONSTRAINT `win_conditions_object_harvest_foreign` FOREIGN KEY (`object_harvest`) REFERENCES `object_items` (`id`),
  CONSTRAINT `win_conditions_special_trains_foreign` FOREIGN KEY (`special_trains`) REFERENCES `trains` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.win_conditions : ~12 rows (environ)
/*!40000 ALTER TABLE `win_conditions` DISABLE KEYS */;
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(1, 'Dialogue', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 12:55:57', '2022-05-20 12:55:58');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(2, 'Survivre', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 12:56:32', '2022-05-20 12:56:33');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(3, 'Tuer', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 12:57:19', '2022-05-20 12:57:20');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(4, 'Vaincre', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 12:57:22', '2022-05-20 12:57:22');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(5, '5 train', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, '2022-05-26 01:05:26', '2022-05-26 01:05:27');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(6, '10 Poissons', NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 01:28:31', '2022-05-26 01:28:32');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(7, '2000 degats', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, '2022-05-26 18:50:47', '2022-05-26 23:38:24');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(8, 'Coup Critique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-05-26 18:51:15', '2022-05-26 23:38:24');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(9, 'Esquive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-05-26 18:51:16', '2022-05-26 23:38:25');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(10, 'Magie 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-26 18:52:16', '2022-05-26 23:38:25');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(11, 'Magie 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2022-05-26 18:52:17', '2022-05-26 23:38:26');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(12, 'Magie 3', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2022-05-26 18:52:17', '2022-05-26 23:38:26');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(13, '2 train', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-05-26 23:38:21', '2022-05-26 23:38:22');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(14, '20 Viande', NULL, NULL, 4, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 23:39:22', '2022-05-26 23:39:23');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(15, '20 Poisson', NULL, NULL, 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 23:39:23', '2022-05-26 23:39:23');
INSERT INTO `win_conditions` (`id`, `name`, `custom_condition`, `condition_base_id`, `object_harvest`, `object_harvest_quantity`, `special_trains`, `any_trains_quantity`, `spell_condition_number`, `critical_strike`, `dodge_attack`, `min_damage`, `created_at`, `updated_at`) VALUES
	(16, '20 Lait', NULL, NULL, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26 23:39:24', '2022-05-26 23:39:25');
/*!40000 ALTER TABLE `win_conditions` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. win_condition_bases
CREATE TABLE IF NOT EXISTS `win_condition_bases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.win_condition_bases : ~5 rows (environ)
/*!40000 ALTER TABLE `win_condition_bases` DISABLE KEYS */;
INSERT INTO `win_condition_bases` (`id`, `condition`, `icon`, `created_at`, `updated_at`) VALUES
	(1, 'Dialogue', '', '2022-05-20 12:40:51', '2022-05-20 12:40:52');
INSERT INTO `win_condition_bases` (`id`, `condition`, `icon`, `created_at`, `updated_at`) VALUES
	(2, 'Survivre', '', '2022-05-20 12:40:52', '2022-05-20 12:40:52');
INSERT INTO `win_condition_bases` (`id`, `condition`, `icon`, `created_at`, `updated_at`) VALUES
	(3, 'Vaincre l\'adversaire', '', '2022-05-20 12:40:52', '2022-05-20 12:40:52');
INSERT INTO `win_condition_bases` (`id`, `condition`, `icon`, `created_at`, `updated_at`) VALUES
	(4, 'Tuer l\'adversaire', 'fas fa-skull', '2022-05-20 12:40:52', '2022-05-20 12:40:53');
INSERT INTO `win_condition_bases` (`id`, `condition`, `icon`, `created_at`, `updated_at`) VALUES
	(5, 'Répondre à un Quizz', 'fas fa-question-circle', '2022-05-20 12:40:53', '2022-05-20 12:40:53');
/*!40000 ALTER TABLE `win_condition_bases` ENABLE KEYS */;

-- Listage de la structure de la table dragonballrebirth. works
CREATE TABLE IF NOT EXISTS `works` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unlock_step` int(11) NOT NULL,
  `utils` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_case_id` bigint(20) unsigned NOT NULL,
  `planet_id` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  `waiting_duration_id` bigint(20) unsigned NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `works_map_case_id_foreign` (`map_case_id`),
  KEY `works_planet_id_foreign` (`planet_id`),
  KEY `works_object_id_foreign` (`object_id`),
  KEY `works_waiting_duration_id_foreign` (`waiting_duration_id`),
  CONSTRAINT `works_map_case_id_foreign` FOREIGN KEY (`map_case_id`) REFERENCES `map_cases` (`id`),
  CONSTRAINT `works_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `object_items` (`id`),
  CONSTRAINT `works_planet_id_foreign` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`),
  CONSTRAINT `works_waiting_duration_id_foreign` FOREIGN KEY (`waiting_duration_id`) REFERENCES `waiting_durations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table dragonballrebirth.works : ~5 rows (environ)
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` (`id`, `name`, `unlock_step`, `utils`, `map_case_id`, `planet_id`, `object_id`, `waiting_duration_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(1, 'Livraison de lait', 1, 'Énergie', 88, 1, 1, 2, 'https://www.dragonballrebirth.fr/img/metiers/milk.png', '2022-05-18 22:03:07', '2022-05-18 22:03:07');
INSERT INTO `works` (`id`, `name`, `unlock_step`, `utils`, `map_case_id`, `planet_id`, `object_id`, `waiting_duration_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(6, 'Chasse au dinosaure', 1, 'Force', 30, 1, 4, 2, 'https://www.dragonballrebirth.fr/img/metiers/dinosaure.png', '2022-05-19 20:51:56', '2022-05-19 20:51:58');
INSERT INTO `works` (`id`, `name`, `unlock_step`, `utils`, `map_case_id`, `planet_id`, `object_id`, `waiting_duration_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(7, 'Récolte de Senzu', 1, 'Défense', 4, 1, 3, 2, 'https://www.dragonballrebirth.fr/img/metiers/senzu.jpg', '2022-05-19 20:52:00', '2022-05-19 20:52:00');
INSERT INTO `works` (`id`, `name`, `unlock_step`, `utils`, `map_case_id`, `planet_id`, `object_id`, `waiting_duration_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(8, 'Pêche', 1, 'Vitalité', 71, 1, 2, 2, 'https://www.dragonballrebirth.fr/img/metiers/fishing.png', '2022-05-19 20:52:02', '2022-05-19 20:52:02');
INSERT INTO `works` (`id`, `name`, `unlock_step`, `utils`, `map_case_id`, `planet_id`, `object_id`, `waiting_duration_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(9, 'Collecte des nuage', 1, 'Résurrection', 69, 2, 5, 2, 'https://www.dragonballrebirth.fr/img/metiers/nuage.png', '2022-05-19 20:52:05', '2022-05-19 20:52:05');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

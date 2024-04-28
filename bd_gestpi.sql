-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2024 at 03:49 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_gestpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add bureau', 6, 'add_bureau'),
(22, 'Can change bureau', 6, 'change_bureau'),
(23, 'Can delete bureau', 6, 'delete_bureau'),
(24, 'Can view bureau', 6, 'view_bureau'),
(25, 'Can add categorie', 7, 'add_categorie'),
(26, 'Can change categorie', 7, 'change_categorie'),
(27, 'Can delete categorie', 7, 'delete_categorie'),
(28, 'Can view categorie', 7, 'view_categorie'),
(29, 'Can add user', 8, 'add_compte'),
(30, 'Can change user', 8, 'change_compte'),
(31, 'Can delete user', 8, 'delete_compte'),
(32, 'Can view user', 8, 'view_compte'),
(33, 'Can add direction', 9, 'add_direction'),
(34, 'Can change direction', 9, 'change_direction'),
(35, 'Can delete direction', 9, 'delete_direction'),
(36, 'Can view direction', 9, 'view_direction'),
(37, 'Can add etat', 10, 'add_etat'),
(38, 'Can change etat', 10, 'change_etat'),
(39, 'Can delete etat', 10, 'delete_etat'),
(40, 'Can view etat', 10, 'view_etat'),
(41, 'Can add groupe', 11, 'add_groupe'),
(42, 'Can change groupe', 11, 'change_groupe'),
(43, 'Can delete groupe', 11, 'delete_groupe'),
(44, 'Can view groupe', 11, 'view_groupe'),
(45, 'Can add intervention', 12, 'add_intervention'),
(46, 'Can change intervention', 12, 'change_intervention'),
(47, 'Can delete intervention', 12, 'delete_intervention'),
(48, 'Can view intervention', 12, 'view_intervention'),
(49, 'Can add localisation', 13, 'add_localisation'),
(50, 'Can change localisation', 13, 'change_localisation'),
(51, 'Can delete localisation', 13, 'delete_localisation'),
(52, 'Can view localisation', 13, 'view_localisation'),
(53, 'Can add marque', 14, 'add_marque'),
(54, 'Can change marque', 14, 'change_marque'),
(55, 'Can delete marque', 14, 'delete_marque'),
(56, 'Can view marque', 14, 'view_marque'),
(57, 'Can add materiel', 15, 'add_materiel'),
(58, 'Can change materiel', 15, 'change_materiel'),
(59, 'Can delete materiel', 15, 'delete_materiel'),
(60, 'Can view materiel', 15, 'view_materiel'),
(61, 'Can add panne', 16, 'add_panne'),
(62, 'Can change panne', 16, 'change_panne'),
(63, 'Can delete panne', 16, 'delete_panne'),
(64, 'Can view panne', 16, 'view_panne'),
(65, 'Can add personnel', 17, 'add_personnel'),
(66, 'Can change personnel', 17, 'change_personnel'),
(67, 'Can delete personnel', 17, 'delete_personnel'),
(68, 'Can view personnel', 17, 'view_personnel'),
(69, 'Can add region', 18, 'add_region'),
(70, 'Can change region', 18, 'change_region'),
(71, 'Can delete region', 18, 'delete_region'),
(72, 'Can view region', 18, 'view_region'),
(73, 'Can add type materiel', 19, 'add_typemateriel'),
(74, 'Can change type materiel', 19, 'change_typemateriel'),
(75, 'Can delete type materiel', 19, 'delete_typemateriel'),
(76, 'Can view type materiel', 19, 'view_typemateriel'),
(77, 'Can add ville', 20, 'add_ville'),
(78, 'Can change ville', 20, 'change_ville'),
(79, 'Can delete ville', 20, 'delete_ville'),
(80, 'Can view ville', 20, 'view_ville'),
(81, 'Can add zone', 21, 'add_zone'),
(82, 'Can change zone', 21, 'change_zone'),
(83, 'Can delete zone', 21, 'delete_zone'),
(84, 'Can view zone', 21, 'view_zone');

-- --------------------------------------------------------

--
-- Table structure for table `bureau_bureau`
--

DROP TABLE IF EXISTS `bureau_bureau`;
CREATE TABLE IF NOT EXISTS `bureau_bureau` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibBureau` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `bureau_bureau`
--

INSERT INTO `bureau_bureau` (`id`, `LibBureau`) VALUES
(1, 'DIRECTEUR'),
(2, 'SOUS - DIRECTEUR'),
(3, 'AGENT'),
(4, 'SECRETARIAT'),
(5, 'INSPECTEUR TECHNIQUE'),
(6, 'INSPECTEUR GENERAL'),
(7, 'CHARGE D\'ETUDES'),
(8, 'CHEF SECRETARIAT PARTICULIER'),
(9, 'CONSEILLER TECHNIQUE'),
(10, 'COMPTABILITE'),
(11, 'REGISSEUR'),
(12, 'COMMUNICATION'),
(13, 'COURRIER'),
(14, 'ETUDE DE PROJETS'),
(15, 'HALL'),
(16, 'STAGIAIRE');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_categorie`
--

DROP TABLE IF EXISTS `categorie_categorie`;
CREATE TABLE IF NOT EXISTS `categorie_categorie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibCategorie` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categorie_categorie`
--

INSERT INTO `categorie_categorie` (`id`, `LibCategorie`) VALUES
(1, 'CABINET MINISTERIEL'),
(2, 'DIRECTION ET SERVICE RATTACHES'),
(3, 'DIRECTION REGIONALE'),
(4, 'DIRECTION DEPARTEMENTALE'),
(5, 'DIRECTION GENERALE');

-- --------------------------------------------------------

--
-- Table structure for table `compte_compte`
--

DROP TABLE IF EXISTS `compte_compte`;
CREATE TABLE IF NOT EXISTS `compte_compte` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `Profil` varchar(15) NOT NULL,
  `NumTel` varchar(10) NOT NULL,
  `RefDirection_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `NumTel` (`NumTel`),
  KEY `compte_compte_RefDirection_id_59c3ccbb` (`RefDirection_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `compte_compte`
--

INSERT INTO `compte_compte` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `Profil`, `NumTel`, `RefDirection_id`) VALUES
(1, 'pbkdf2_sha256$600000$nhAXcZQiT4Qmfp7QBaNFks$0G2b2FBrf72EtPaLY+9MjRALWGdYQEMrPmQ810lYWHs=', '2024-04-28 06:45:58.347568', 1, 'allade', 'ALLADE', 'N\'da', 'hermannallade@gmail.com', 1, 1, '2024-04-25 10:02:16.010131', 'Administrateur', '', NULL),
(2, 'pbkdf2_sha256$600000$Uf6RBF2Ufe3RkKCXvJnSTv$cG7U+wulTu6rtIw5aKvi5s2LYOlqjJ621SkIwYh0JCM=', '2024-04-28 02:46:20.093247', 0, 'hermann', 'HERMANN', 'Assamoi', 'alladehermann@gmail.com', 0, 1, '2024-04-25 14:30:35.307233', 'Utilisateur', '0708245881', 16);

-- --------------------------------------------------------

--
-- Table structure for table `compte_compte_groups`
--

DROP TABLE IF EXISTS `compte_compte_groups`;
CREATE TABLE IF NOT EXISTS `compte_compte_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `compte_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compte_compte_groups_compte_id_group_id_9a7a2a2b_uniq` (`compte_id`,`group_id`),
  KEY `compte_compte_groups_compte_id_a95d39a1` (`compte_id`),
  KEY `compte_compte_groups_group_id_b8fd6b5c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `compte_compte_user_permissions`
--

DROP TABLE IF EXISTS `compte_compte_user_permissions`;
CREATE TABLE IF NOT EXISTS `compte_compte_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `compte_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compte_compte_user_permi_compte_id_permission_id_46d3f387_uniq` (`compte_id`,`permission_id`),
  KEY `compte_compte_user_permissions_compte_id_2bb65d00` (`compte_id`),
  KEY `compte_compte_user_permissions_permission_id_8d13139b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `direction_direction`
--

DROP TABLE IF EXISTS `direction_direction`;
CREATE TABLE IF NOT EXISTS `direction_direction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibDirection` varchar(100) DEFAULT NULL,
  `LibAbbDirection` varchar(20) NOT NULL,
  `Responsable` varchar(25) NOT NULL,
  `Telephone` varchar(10) DEFAULT NULL,
  `Email` varchar(254) NOT NULL,
  `Detail` varchar(100) DEFAULT NULL,
  `RefCategorie_id` bigint DEFAULT NULL,
  `RefLocalisation_id` bigint DEFAULT NULL,
  `RefVille_id` bigint DEFAULT NULL,
  `Besoins` longtext,
  `TotalEmploye` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibAbbDirection` (`LibAbbDirection`),
  UNIQUE KEY `LibDirection` (`LibDirection`),
  KEY `direction_direction_RefCategorie_id_8a65c779` (`RefCategorie_id`),
  KEY `direction_direction_RefLocalisation_id_f45f9ac4` (`RefLocalisation_id`),
  KEY `direction_direction_RefVille_id_52e5bb54` (`RefVille_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `direction_direction`
--

INSERT INTO `direction_direction` (`id`, `LibDirection`, `LibAbbDirection`, `Responsable`, `Telephone`, `Email`, `Detail`, `RefCategorie_id`, `RefLocalisation_id`, `RefVille_id`, `Besoins`, `TotalEmploye`) VALUES
(1, 'LE CABINET', 'LE CABINET', 'SIANDOU FOFANA', '1', 's@tourisme.gouv.ci', 'PLATEAU', 1, 1, 1, 'auto', 1),
(2, 'DIRECTION DE LA COMMUNICATION ET DE LA DOCUMENTATION', 'D.C.D', 'Mme. VOVOR GERALDINE', '2', 'vg@tourisme.gouv.ci', 'PLATEAU', 2, 1, 1, 'auto', 1),
(3, 'DIRECTION DES AFFAIRES JURIDIQUES', 'D.A.J', 'daj', '3', 'daj@tourisme.gouv.ci', 'PLATEAU', 2, 1, 1, 'auto', 1),
(4, 'SERVICE COURRIER', 'S.C.', 'SC', '4', 'sc@tourisme.gouv.ci', 'PLATEAU', 2, 1, 1, 'AUTO', 1),
(5, 'CELLULE DE PASSATION DES MARCHES PUBLICS', 'C.P.M.P.', 'cpmp', '5', 'cpmpj@tourisme.gouv.ci', 'PLATEAU', 2, 1, 1, 'AUTO', 1),
(6, 'DIRECTION DES AFFAIRES FINANCIERES', 'D.A.F.', 'daf', '6', 'daF@tourisme.gouv.ci', 'PLATEAU', 2, 1, 1, 'AUTO', 1),
(7, 'LE GESTIONNAIRE DU PATRIMOINE', 'G.P.', 'gp', '6', 'gp@tourisme.gouv.ci', 'PLATEAU', 2, 1, 1, 'auto', 1),
(8, 'DIRECTION DE LA COOPERATION ET DE LA PROFESSIONNALISATION', 'D.C.P.', 'M. OHOUEU RAOUL-MARCEL', '7', 'dcp@tourisme.gouv.ci', 'PLATEAU', 2, 2, 1, 'AUTO', 1),
(9, 'DIRECTION DE ACTIVITES TOURISTIQUES', 'D.A.T.', 'dat', '7', 'dat@tourisme.gouv.ci', 'PLATEAU 6EME ETAGE', 2, 2, 1, 'AUTO', 1),
(10, 'LA REGIE', 'REGIE', 'regie', '8', 'regiec@tourisme.gouv.ci', 'PLATEAU 6EME ETAGE', 2, 2, 1, 'auto', 1),
(11, 'INSPECTION GENERALE DU TOURISME ET DES LOISIRS', 'I.G.T.L.', 'igtl', '8', 'igtl@tourisme.gouv.ci', 'PLATEAU 6EME ETAGE', 2, 2, 1, 'auto', 1),
(12, 'DIRECTION DE LA SECURITE TOURISTIQUE ET DES LOISIRS', 'D.S.T.L.', 'dst', '9', 'dst@tourisme.gouv.ci', 'PLATEAU 7EME ETAGE', 2, 2, 1, 'AUTO', 1),
(13, 'DIRECTION DES RESSOURCES HUMAINES', 'D.R.H.', 'ASSARI epse AKPALE YAWA F', '9', 'drhaj@tourisme.gouv.ci', 'PLATEAU 2EME ETAGE', 2, 2, 1, 'AUTO', 1),
(14, 'DIRECTION DE LA PLANNIFICATION, DES STATISTIQUES ET DES PROJETS', 'D.P.S.P.', 'M. AGNERO', '10', 'dpsp@tourisme.gouv.ci', 'PLATEAU 6EME ETAGE', 2, 2, 1, 'AUTO', 1),
(15, 'DIRECTION DES SERVICES EXTERIEURS', 'D.S.E.', 'Mme. KOMA FATOUMATA', '11', 'dse@tourisme.gouv.ci', 'PLATEAU 3EME ETAGE', 2, 3, 1, 'AUTO', 1),
(16, 'DIRECTION DE L\'INFORMATIQUE, DE LA DIGITALISATION ET DU DEVELOPPEMENT DES START-UPS', 'D.I.D.D.S.', 'M. BOUHOUMAN', '12', 'diddsc@tourisme.gouv.ci', 'PLATEAU 5EME ETAGE', 2, 3, 1, 'AUTO', 1),
(17, 'DIRECTION GENERALE DES LOISIRS', 'D.G.L.', 'Mme. ISABELLE ANOH', '13', 'dgl@tourisme.gouv.ci', 'PLATEAU 6EME ETAGE', 5, 3, 1, 'AUTO', 1),
(18, 'DIRECTION DES PARCS DE LOISIRS, D\'ATTRACTION ET DES JEUX NUMERIQUES', 'D.P.L.A.J.N', 'M. KEITA', '13', 'dplajn@tourisme.gouv.ci', 'PLATEAU 8EME ETAGE', 2, 3, 1, 'AUTO', 1),
(19, 'DIRECTION GENERALE DE L\'INDUSTRIE TOURISTIQUE ET HOTELIERE', 'D.G.I.T.H.', 'Dr. FAGAMA KLO', '14', 'dgith@tourisme.gouv.ci', 'PLATEAU 6EME ETAGE', 5, 3, 1, 'AUTO', 1),
(20, 'DIRECTION DEPARTEMENTALE ABIDJAN - SUD', 'D.D.ABIDJAN-SUD', 'DDABSUD', '15', 'dDABSUD@tourisme.gouv.ci', 'PLATEAU (EN FACE DU PATRONAT IVOIRIEN )', 4, NULL, 1, 'AUTO', 1),
(21, 'DIRECTION DU GUICHET UNIQUE', 'D.G.U.', 'dgu', '16', 'dgu@tourisme.gouv.ci', 'PLATEAU (EN FACE DU PATRONAT IVOIRIEN )', 2, 4, 1, 'AUTO', 1),
(22, 'DIRECTION REGIONALE ABIDJAN - SUD', 'D.R.ABIDJAN - SUD', 'Mme. ASSUE', '17', 'dras@tourisme.gouv.ci', 'DETAIL', 3, NULL, 1, 'AUTO', 1),
(23, 'DIRECTION REGIONALE ABIDJAN - NORD', 'D.R.ABIDJAN - NORD', 'Mme. X', '17', 'dran@tourisme.gouv.ci', 'detail1', 3, NULL, 1, 'AUTO', 1),
(24, 'DIRECTION DEPARTEMENTALE DE DABOU', 'D.D.DABOU', 'X', '18', 'ddd@tourisme.gouv.ci', 'detail3', 4, NULL, 2, 'AUTO', 1),
(25, 'DIRECTION REGIONALE DE GRAND - BASSAM', 'D.R.GRAND - BASSAM', 'drgb', '18', 'drgb@tourisme.gouv.ci', 'ZONE 3', 3, NULL, 3, 'AUTO', 1),
(26, 'DIRECTION DEPARTEMENTALE D\'ADZOPE', 'D.D.ADZOPE', 'dda', '19', 'dda@tourisme.gouv.ci', 'detail ADZOPE', 4, NULL, 4, 'AUTO', 1),
(27, 'DIRECTION DEPARTEMENTALE DE AGBOVILLE', 'D.D.AGBOVILLE', 'ddag', '20', 'ddag@tourisme.gouv.ci', 'detail AGBOVILLE', 4, NULL, 5, 'AUTO', 1),
(28, 'DIRECTION REGIONALE D\'ABENGOUROU', 'D.R.ABENGOUROU', 'drab', '21', 'DRAB@tourisme.gouv.ci', 'detail abengou', 3, NULL, 6, 'AUTO', 1),
(29, 'DIRECTION DEPARTEMENTALE DE DAOUKRO', 'D.D.DAOUKRO', 'ddd', '23', 'ddd@tourisme.gouv.ci', 'detail daoukro', 4, NULL, 7, 'AUTO', 1),
(30, 'DIRECTION REGIONALE DE BONDOUKOU', 'D.R.BONDOUKOU', 'drbond', '25', 'drond@tourisme.gouv.ci', 'ddb', 3, NULL, 8, 'AUTO', 1),
(31, 'DIRECTION DEPARTEMENTALE DE BOUNA', 'D.D.BOUNA', 'ddbouna', '27', 'ddbouna@tourisme.gouv.ci', 'detailbouna', 4, NULL, 9, 'AUTO', 1),
(32, 'DIRECTION REGIONALE DE BOUAKE', 'D.R.BOUAKE', 'drbouake', '28', 'drbouaj@tourisme.gouv.ci', 'ddbouake', 3, NULL, 10, 'AUTO', 1),
(33, 'DIRECTION DEPARTEMENTALE DE KATIOLA', 'D.D.KATIOLA', 'ddkatiola', '30', 'ddkatiolaj@tourisme.gouv.ci', 'ddkatiola', 4, NULL, 11, 'AUTO', 1),
(34, 'DIRECTION REGIONALE DE DALOA', 'D.R.DALOA', 'dddaloa', '31', 'drdaloa@tourisme.gouv.ci', 'ddrdaloa', 3, NULL, 12, 'AUTO', 1),
(35, 'DIRECTION DEPARTEMENTALE DE GAGNOA', 'D.D.GAGNOA', 'dddd', '35', 'ddga@tourisme.gouv.ci', 'ddgagnoa', 4, NULL, 13, 'AUTO', 1),
(36, 'DIRECTION DEPARTEMENTALE DE DIVO', 'D.D.DIVO', 'dddivo', '37', 'dddi@tourisme.gouv.ci', 'dddivou', 4, NULL, 14, 'AUTO', 1),
(37, 'DIRECTION REGIONALE DE KORHOGO', 'D.R.KORHOGO', 'dddkorho', '37', 'ddkor@tourisme.gouv.ci', 'ddkorhogo', 3, NULL, 15, 'AUTO', 1),
(38, 'DIRECTION DEPARTEMENTALE DE BOUNDIALI', 'D.D.BOUNDIALI', 'ddd', '38', 'ddboudia@tourisme.gouv.ci', 'ddboudiali', 4, NULL, 16, 'AUTO', 1),
(39, 'DIRECTION DEPARTEMENTALE DE FERKESSEDOUGOU', 'D.D.FERKE', 'ddferke', '40', 'ddferke@tourisme.gouv.ci', 'ddferke', 4, NULL, 17, 'AUTO', 1),
(40, 'DIRECTION REGIONALE DE MAN', 'D.R.MAN', 'ddman', '40', 'man@tourisme.gouv.ci', 'ddman', 3, NULL, 18, 'AUTO', 1),
(41, 'DIRECTION DEPARTEMENTALE DE GUIGLO', 'D.D.GUIGLO', 'ddgui', '1', 'guiglo@tourisme.gouv.ci', 'ddguiglo', 4, NULL, 19, 'AUTO', 1),
(42, 'DIRECTION DEPARTEMENTALE DE DANANE', 'D.D.DANANE', 'dddanane', '42', 'dana@tourisme.gouv.ci', 'dddanane', 4, NULL, 20, 'AUTO', 1),
(43, 'DIRECTION REGIONALE D\'ODIENNE', 'D.R.ODIENNE', 'ddodiene', '42', 'odiene@tourisme.gouv.ci', 'ddodiene', 3, NULL, 21, 'AUTO', 1),
(44, 'DIRECTION DEPARTEMENTALE DE TOUBA', 'D.D.TOUBA', 'ddtouba', '45', 'touba@tourisme.gouv.ci', 'ddtouba', 4, NULL, 22, 'AUTO', 1),
(45, 'DIRECTION REGIONALE DE SAN - PEDRO', 'D.R.SAN - PEDRO', 'drsanpedr', '47', 'sanpedr@tourisme.gouv.ci', 'ddsanpedro', 3, NULL, 23, 'AUTO', 1),
(46, 'DIRECTION DEPARTEMENTALE DE SOUBRE', 'D.D.SOUBRE', 'ddsoubre', '366', 'soubre@tourisme.gouv.ci', 'ddsoubre', 4, NULL, 24, 'AUTO', 1),
(47, 'DIRECTION DEPARTEMENTALE DE SASSANDRA', 'D.D.SASSANDRA', 'ddsassandra', '89', 'sassandra@tourisme.gouv.ci', 'ddsanssadra', 4, NULL, 25, 'AUTO', 1),
(48, 'DIRECTION REGIONALE DE SEGUELA', 'D.R.SEGUELA', 'ddseg', '84', 'seguela@tourisme.gouv.ci', 'ddseguela', 3, NULL, 26, 'AUTO', 1),
(49, 'DIRECTION DEPARTEMENTALE DE MANKONO', 'D.D.MANKONO', 'ddmankono', '86', 'mankono@tourisme.gouv.ci', 'ddmankono', 4, NULL, 27, 'AUTO', 1),
(50, 'DIRECTION REGIONALE DE YAMOUSSOUKRO', 'D.R.YAMOUSSOUKRO', 'ddYAK', '82', 'yakro@tourisme.gouv.ci', 'yakro', 3, NULL, 28, 'AUTO', 1),
(51, 'DIRECTION DEPARTEMENTALE DE DIMBOKRO', 'D.D.DIMBOKRO', 'ddDIM', '98', 'dimbo@tourisme.gouv.ci', 'dddimbo', 4, NULL, 29, 'AUTO', 1),
(52, 'DIRECTION DEPARTEMENTALE DE BOUAFLE', 'D.D.BOUAFLE', 'ddbou', '90', 'bouaf@tourisme.gouv.ci', 'ddboua', 4, NULL, 30, 'AUTO', 1),
(53, 'DIRECTION DEPARTEMENTALE ABIDJAN - NORD', 'D.D.ABIDJAN-NORD', 'ddanord', '965', 'ddanor@tourisme.gouv.ci', 'PLATEAU', 4, NULL, 1, 'AUTO', 1),
(54, 'DIRECTION DES JEUX TRADITIONNELS', 'D.J.T.', 'djt', '887', 'djts@tourisme.gouv.ci', 'SEBROKO', 2, NULL, 1, 'AUTO', 12);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'bureau', 'bureau'),
(7, 'categorie', 'categorie'),
(8, 'compte', 'compte'),
(9, 'direction', 'direction'),
(10, 'etat', 'etat'),
(11, 'groupe', 'groupe'),
(12, 'intervention', 'intervention'),
(13, 'localisation', 'localisation'),
(14, 'marque', 'marque'),
(15, 'materiel', 'materiel'),
(16, 'panne', 'panne'),
(17, 'personnel', 'personnel'),
(18, 'region', 'region'),
(19, 'typemateriel', 'typemateriel'),
(20, 'ville', 'ville'),
(21, 'zone', 'zone');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-25 09:03:02.199832'),
(2, 'zone', '0001_initial', '2024-04-25 09:03:02.221819'),
(3, 'region', '0001_initial', '2024-04-25 09:03:02.321758'),
(4, 'ville', '0001_initial', '2024-04-25 09:03:02.422156'),
(5, 'localisation', '0001_initial', '2024-04-25 09:03:02.434146'),
(6, 'categorie', '0001_initial', '2024-04-25 09:03:02.446140'),
(7, 'direction', '0001_initial', '2024-04-25 09:03:02.757425'),
(8, 'contenttypes', '0002_remove_content_type_name', '2024-04-25 09:03:02.849369'),
(9, 'auth', '0001_initial', '2024-04-25 09:03:03.182421'),
(10, 'auth', '0002_alter_permission_name_max_length', '2024-04-25 09:03:03.242878'),
(11, 'auth', '0003_alter_user_email_max_length', '2024-04-25 09:03:03.249875'),
(12, 'auth', '0004_alter_user_username_opts', '2024-04-25 09:03:03.258869'),
(13, 'auth', '0005_alter_user_last_login_null', '2024-04-25 09:03:03.268868'),
(14, 'auth', '0006_require_contenttypes_0002', '2024-04-25 09:03:03.271861'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2024-04-25 09:03:03.281855'),
(16, 'auth', '0008_alter_user_username_max_length', '2024-04-25 09:03:03.289850'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2024-04-25 09:03:03.299844'),
(18, 'auth', '0010_alter_group_name_max_length', '2024-04-25 09:03:03.347817'),
(19, 'auth', '0011_update_proxy_permissions', '2024-04-25 09:03:03.362805'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2024-04-25 09:03:03.370799'),
(21, 'compte', '0001_initial', '2024-04-25 09:03:03.894723'),
(22, 'admin', '0001_initial', '2024-04-25 09:03:04.142647'),
(23, 'admin', '0002_logentry_remove_auto_add', '2024-04-25 09:03:04.153644'),
(24, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-25 09:03:04.171629'),
(25, 'bureau', '0001_initial', '2024-04-25 09:03:04.184622'),
(26, 'bureau', '0002_alter_bureau_libbureau', '2024-04-25 09:03:04.241587'),
(27, 'categorie', '0002_alter_categorie_libcategorie', '2024-04-25 09:03:04.296554'),
(28, 'direction', '0002_direction_besoins_direction_totalemploye', '2024-04-25 09:03:04.444206'),
(29, 'direction', '0003_alter_direction_libabbdirection', '2024-04-25 09:03:04.502684'),
(30, 'etat', '0001_initial', '2024-04-25 09:03:04.515676'),
(31, 'groupe', '0001_initial', '2024-04-25 09:03:04.533665'),
(32, 'personnel', '0001_initial', '2024-04-25 09:03:04.649029'),
(33, 'panne', '0001_initial', '2024-04-25 09:03:04.749966'),
(34, 'intervention', '0001_initial', '2024-04-25 09:03:05.027202'),
(35, 'marque', '0001_initial', '2024-04-25 09:03:05.043195'),
(36, 'typemateriel', '0001_initial', '2024-04-25 09:03:05.057185'),
(37, 'materiel', '0001_initial', '2024-04-25 09:03:05.420782'),
(38, 'materiel', '0002_materiel_precision_alter_materiel_desimateriel', '2024-04-25 09:03:05.540671'),
(39, 'materiel', '0003_alter_materiel_caractmateriel_and_more', '2024-04-25 09:03:05.709568'),
(40, 'sessions', '0001_initial', '2024-04-25 09:03:05.778526');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `etat_etat`
--

DROP TABLE IF EXISTS `etat_etat`;
CREATE TABLE IF NOT EXISTS `etat_etat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibEtat` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibEtat` (`LibEtat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `groupe_groupe`
--

DROP TABLE IF EXISTS `groupe_groupe`;
CREATE TABLE IF NOT EXISTS `groupe_groupe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibGroupe` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibGroupe` (`LibGroupe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `intervention_intervention`
--

DROP TABLE IF EXISTS `intervention_intervention`;
CREATE TABLE IF NOT EXISTS `intervention_intervention` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `RemIntervention` varchar(255) DEFAULT NULL,
  `TachEffectue` varchar(255) NOT NULL,
  `DatDebIntervention` datetime(6) NOT NULL,
  `DatFinIntervention` datetime(6) NOT NULL,
  `RefEtat_id` bigint DEFAULT NULL,
  `RefPanne_id` bigint DEFAULT NULL,
  `RefPersonnel_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_intervention_RefEtat_id_f9956cc1` (`RefEtat_id`),
  KEY `intervention_intervention_RefPanne_id_4bc9b145` (`RefPanne_id`),
  KEY `intervention_intervention_RefPersonnel_id_777cdaa1` (`RefPersonnel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `localisation_localisation`
--

DROP TABLE IF EXISTS `localisation_localisation`;
CREATE TABLE IF NOT EXISTS `localisation_localisation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibLocalisation` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibLocalisation` (`LibLocalisation`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `localisation_localisation`
--

INSERT INTO `localisation_localisation` (`id`, `LibLocalisation`) VALUES
(1, 'IMMEUBLE POSTEL'),
(2, 'IMMEUBLE NOUR AL HAYAT'),
(3, 'IMMEUBLE TROPIC 3'),
(4, 'IMMEUBLE SIGNAL');

-- --------------------------------------------------------

--
-- Table structure for table `marque_marque`
--

DROP TABLE IF EXISTS `marque_marque`;
CREATE TABLE IF NOT EXISTS `marque_marque` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibMarque` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibMarque` (`LibMarque`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `marque_marque`
--

INSERT INTO `marque_marque` (`id`, `LibMarque`) VALUES
(1, 'HP'),
(2, 'BINATONE'),
(3, 'DJI'),
(4, 'EPSON'),
(5, 'HUWAEI'),
(6, 'LEADER'),
(7, 'LENOVO'),
(8, 'UPS'),
(9, 'CANON'),
(10, 'DELL'),
(11, 'JONCHN'),
(12, 'APS'),
(13, 'RITE'),
(14, 'TOP LINK'),
(15, 'ZTE'),
(16, 'EPN'),
(17, 'IMAC'),
(18, 'TECH-COM'),
(19, 'APPLE'),
(20, 'NITRAN'),
(21, 'MAXDATA'),
(22, 'LIGHT WAVE'),
(23, 'FIJITSU'),
(24, 'MTN'),
(25, 'PHILUX'),
(26, 'ROVE'),
(27, 'AKAI'),
(28, 'ASUS'),
(29, 'ILUX'),
(30, 'ORANGE'),
(31, 'ORITE'),
(32, 'SMART TECHNOLOGY'),
(33, 'SAMSUNG'),
(34, 'TOSHIBA'),
(35, 'VOLTPLUS'),
(36, 'XPER'),
(37, 'CRYSTAL'),
(38, 'MERCURY'),
(39, 'PANASONIC'),
(40, 'ALCATEL'),
(41, 'BAECHLER'),
(42, 'BENQ'),
(43, 'JC TECH'),
(44, 'LOGCOMS'),
(45, 'NEC'),
(46, 'R'),
(47, 'RICOH'),
(48, 'YAMAHA');

-- --------------------------------------------------------

--
-- Table structure for table `materiel_materiel`
--

DROP TABLE IF EXISTS `materiel_materiel`;
CREATE TABLE IF NOT EXISTS `materiel_materiel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DateAcquisition` date DEFAULT NULL,
  `DesiMateriel` varchar(50) DEFAULT NULL,
  `NumSerMateriel` varchar(50) DEFAULT NULL,
  `CaractMateriel` varchar(255) DEFAULT NULL,
  `Observation` longtext,
  `Statut` varchar(3) NOT NULL,
  `RefBureau_id` bigint DEFAULT NULL,
  `RefDirection_id` bigint DEFAULT NULL,
  `RefMarque_id` bigint DEFAULT NULL,
  `RefTypeMateriel_id` bigint DEFAULT NULL,
  `Precision` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materiel_materiel_RefBureau_id_116a9390` (`RefBureau_id`),
  KEY `materiel_materiel_RefDirection_id_cf0ebe0b` (`RefDirection_id`),
  KEY `materiel_materiel_RefMarque_id_92d2f686` (`RefMarque_id`),
  KEY `materiel_materiel_RefTypeMateriel_id_9f5a0a32` (`RefTypeMateriel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=882 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `materiel_materiel`
--

INSERT INTO `materiel_materiel` (`id`, `DateAcquisition`, `DesiMateriel`, `NumSerMateriel`, `CaractMateriel`, `Observation`, `Statut`, `RefBureau_id`, `RefDirection_id`, `RefMarque_id`, `RefTypeMateriel_id`, `Precision`) VALUES
(1, '0000-00-00', 'HP LAPTOP 15-DY1XXX', '5CD0138B4R', 'CORE I3; 8GO; 500GO; WINDOWS 11; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 1, 'LAPTOP'),
(2, '0000-00-00', 'DESKJET2710', 'CN0CG5E452', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 2, ''),
(3, '0000-00-00', 'VR-A1000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 6, 9, ''),
(4, '0000-00-00', '1000VA', '', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 31, 4, ''),
(5, '0000-00-00', 'V214A', 'CNC9400YDS', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 3, ''),
(6, '0000-00-00', 'HP 290 G2 MT BUDINESS PC;', '8CG910F7L6', 'PENTIUM GOLD G5400; 4GO; 1TO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 1, 'DESKTOP'),
(7, '0000-00-00', 'USER-PC', 'S4WTA49', 'DUAL CORE; 2GO; 256GO; WINDOWS 7; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 28, 7, 1, 'DESKTOP'),
(8, '0000-00-00', 'LASERJET 1320N', 'CNKKH95442', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 2, ''),
(9, '0000-00-00', 'DVS-2000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 2, 9, ''),
(10, '0000-00-00', '1000VA', '', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 31, 4, ''),
(11, '0000-00-00', 'HP 280 G1 MT;', 'CZC5492YKH', 'PENTIUM; 2GO; 500GO; WINDOWS 10; OFFICE 2016', 'LENT', 'OK', 3, 28, 1, 1, 'DESKTOP'),
(12, '0000-00-00', 'LASER MFP 137 FNW', 'CNB1N9B0HX', '', 'FONCTIONNE BIEN', 'OK', 1, 28, 1, 2, ''),
(13, '0000-00-00', 'UPS-BUILT-IN-AVR', 'JE-HQ1-378718829-7610', '', 'EMBALLÉ', 'OK', 1, 28, 8, 4, ''),
(14, '0000-00-00', 'UPS-BUILT-IN-AVR', 'JE-HQ1-378718829-4181', '', 'EMBALLÉ', 'OK', 1, 28, 8, 4, ''),
(15, '0000-00-00', 'HP ELITEBOOK 820 G1;', '5CG5102THS', 'CORE I5; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 1, 28, 1, 1, 'LAPTOP'),
(16, '0000-00-00', 'VR-S2000', 'DS-HQ1-327993549-6664', '', 'FONCTIONNE BIEN', 'OK', 1, 28, 6, 9, ''),
(17, '0000-00-00', 'LASERJET PRO MFP M130A', 'VNFNY01637', '', 'FONCTIONNE BIEN', 'OK', 4, 28, 1, 2, ''),
(18, '0000-00-00', 'HP 290 G2 MT BUDINESS PC;', '8CG910F7KD', ' PENTIUM GOLD G5400; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 28, 1, 1, 'DESKTOP'),
(19, '0000-00-00', 'V214A', 'CNC93433J0', '', 'FONCTIONNE BIEN', 'OK', 4, 28, 1, 3, ''),
(20, '0000-00-00', 'HP PROBOOK 640 G1; ', 'MXL60318V4', 'CORE I5; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 28, 1, 1, 'LAPTOP'),
(21, '0000-00-00', 'LASERJET M1132 MFP', 'CNT8G66B10', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 2, ''),
(22, '0000-00-00', 'V212A', 'CNC53503VM', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 3, ''),
(23, '0000-00-00', 'THINKVISION', 'V134126', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 7, 3, ''),
(24, '0000-00-00', 'DESKJET 2130', 'CN7CI4N0VR', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 1, 2, ''),
(25, '0000-00-00', 'H971B', 'X88T0602196', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 4, 6, ''),
(26, '0000-00-00', 'MAVIC2PRO', '163CGCPR0A0BLB', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 3, 7, ''),
(27, '0000-00-00', 'VR-S2000', 'DS-HQ1-327993549-6770', '', 'FONCTIONNE BIEN', 'OK', 3, 28, 6, 9, ''),
(28, '0000-00-00', 'CONNEXION INTERNET ORANGE', 'GQQ7S2027', '', 'FONCTIONNE BIEN', 'OK', 1, 28, 5, 17, ''),
(29, '0000-00-00', 'HP 250 G3 NOTEBOOK PC; ', 'CND5082TDT', 'CELERON N2840; 2GO; 256 GO; WINDOWS 10; OFFICE 2010', 'COQUE CASSÉE, LENT À L\'UTILISATION', 'OK', 3, 48, 1, 1, 'LAPTOP'),
(30, '0000-00-00', 'LASER P1102', 'VNC6N70594', '', 'DÉFECTUEUX', 'NOK', 3, 48, 1, 2, ''),
(31, '0000-00-00', 'OFFICE JET 4500', 'CN22NG420B', '', 'DÉFECTUEUX', 'NOK', 3, 48, 1, 2, ''),
(32, '0000-00-00', 'OFFICE JET 4500', 'CN15JJ2345', '', 'DÉFECTUEUX', 'NOK', 3, 48, 1, 2, ''),
(33, '0000-00-00', 'HP 280 G2 MT; ', 'SGH636PVT0', 'PENTIUM G4400; 4GO; 500GO; WINDOWS 8; OFFICE 2010', 'FONCTIONNE BIEN', 'OK', 3, 48, 1, 1, 'DESKTOP'),
(34, '0000-00-00', 'E178WFPC', '0G3424', '', 'FONCTIONNE BIEN', 'OK', 3, 48, 10, 3, ''),
(35, '0000-00-00', 'F166400', 'NJTA204930', '', 'FONCTIONNE BIEN', 'OK', 3, 48, 9, 2, ''),
(36, '0000-00-00', 'LASER MFP 135A', 'CNB1Q1D8MD', '', 'FONCTIONNE BIEN', 'OK', 4, 48, 1, 2, ''),
(37, '0000-00-00', 'HP V185WS', 'CNT849W0RQ', '', 'FONCTIONNE BIEN', 'OK', 4, 48, 1, 3, ''),
(38, '0000-00-00', 'HP COMPAQ ELITE 8300SFF', '6CR33374SM', 'CORE I5; 4GO; 500GO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 4, 48, 1, 1, 'DESKTOP'),
(39, '0000-00-00', 'AVR-1500W', '', '', 'FONCTIONNE BIEN', 'OK', 1, 48, 11, 9, ''),
(40, '0000-00-00', 'LASERJET PRO MFP 125A', 'CNB6H9KJFC', '', 'FONCTIONNE BIEN', 'OK', 1, 48, 1, 2, ''),
(41, '0000-00-00', 'LE2001W', 'CNT943L348', '', 'FONCTIONNE BIEN', 'OK', 1, 48, 1, 3, ''),
(42, '0000-00-00', 'HP 280 G2 MT', 'SGH636Q1BH', 'PENTIUM G4400; 4GO; 500GO; WINDOWS 10; OFFICE 2007', 'FONCTIONNE BIEN', 'OK', 1, 48, 1, 1, 'DESKTOP'),
(43, '0000-00-00', 'B612S-25D', 'T5Q7S19B22001046', '', 'PAS RECHARGÉ', 'OK', 3, 48, 5, 17, 'FLYBOX 4G+'),
(44, '0000-00-00', 'HP 290 G2 MT BUSINESS PC', '8CG9114YY7', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'LENT, AUGMENTER LA RAM À 8GO', 'OK', 1, 32, 1, 1, 'DESKTOP'),
(45, '0000-00-00', 'LASERJET P1102', 'VNF3528075', '', 'FONCTIONNE BIEN', 'OK', 1, 32, 1, 2, ''),
(46, '0000-00-00', 'LA 2205WG', '3CQ0471LY7', '', 'FONCTIONNE BIEN', 'OK', 1, 32, 1, 3, ''),
(47, '0000-00-00', 'VR-S2000', '', '', 'FONCTIONNE BIEN', 'OK', 1, 32, 6, 9, ''),
(48, '0000-00-00', 'SSD-UPS-725', '', '', 'DÉFECTUEUX', 'NOK', 4, 32, 8, 4, ''),
(49, '0000-00-00', 'VR-M2000', '', '', 'FONCTIONNE BIEN', 'OK', 4, 32, 6, 9, ''),
(50, '0000-00-00', 'COLOR LASERJET PRO MFP M180N', 'VNC3806930', '', 'FONCTIONNE BIEN', 'OK', 4, 32, 1, 2, ''),
(51, '0000-00-00', 'LV2011', 'CNC610NS4R', '', 'FONCTIONNE BIEN', 'OK', 4, 32, 1, 3, ''),
(52, '0000-00-00', 'HP 280 G2 MT', 'CZC7077158', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 32, 1, 1, 'DESKTOP'),
(53, '0000-00-00', 'LV2011', 'CNC609P5FL', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 3, ''),
(54, '0000-00-00', 'VR-M2000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 6, 9, ''),
(55, '0000-00-00', 'HP COMPAQ 8100 ELITE CMT PC;', 'CNG12115MF', ' CORE I5; 4GO; 700GO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 1, 'DESKTOP'),
(56, '0000-00-00', 'LV2011', 'CNC609P63R', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 3, ''),
(57, '0000-00-00', 'LASERJET P1102', 'VNC6C59063', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 2, ''),
(58, '0000-00-00', 'HP COMPAQ 8100 ELITE CMT PC', 'CNG02431XV', 'CORE I5; 4GO; 500GO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 1, 'DESKTOP'),
(59, '0000-00-00', 'VR-M2000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 6, 9, ''),
(60, '0000-00-00', 'VR-S2000', '', '', 'FONCTIONNE BIEN', 'OK', 12, 32, 6, 9, ''),
(61, '0000-00-00', 'V214A', 'CNC0032669', '', 'FONCTIONNE BIEN', 'OK', 12, 32, 1, 3, ''),
(62, '0000-00-00', 'HP DESKTOP PRO 300 G3;', '4CE004001750', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 12, 32, 1, 1, 'DESKTOP'),
(63, '0000-00-00', 'W2072A', 'CNC343P132', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 3, ''),
(64, '0000-00-00', 'HP PRO 3500 SERIES;', 'CZC3522WNP', 'PENTIUM G2030; 2GO; 500GO; WINDOWS 7; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 1, 'DESKTOP'),
(65, '0000-00-00', 'LASERJET P1005', 'VNF5S07511', '', 'DÉFECTUEUX', 'NOK', 3, 32, 1, 2, ''),
(66, '0000-00-00', 'ZR22W', 'CN41200GBS', '', 'FONCTIONNE BIEN', 'OK', 10, 32, 1, 3, ''),
(67, '0000-00-00', 'HP COMPAQ 8100 ELITE CMT PC', 'CNG12115M6', 'CORE I5; 4GO; 500GO; WINDOWS 7; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 10, 32, 1, 1, 'DESKTOP'),
(68, '0000-00-00', 'IR1020J', '(21)TJW03628', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 9, 2, ''),
(69, '0000-00-00', 'HP W2072A', 'CNC333PC4T', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 3, ''),
(70, '0000-00-00', 'VR-M2000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 6, 9, ''),
(71, '0000-00-00', 'HP PRO 3500 SERIES', 'CZC3513PBM', 'PENTIUM G2030; 2GO; 500GO; WINDOWS 7; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 1, 'DESKTOP'),
(72, '0000-00-00', 'LV2011', 'CNC609P5CG', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 3, ''),
(73, '0000-00-00', 'HP 280 G2 MT', 'CZC70771PZ', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 32, 1, 1, 'DESKTOP'),
(74, '0000-00-00', 'VR-M2000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 32, 6, 9, ''),
(75, '0000-00-00', 'VR-S2000', '', '', 'FONCTIONNE BIEN', 'OK', 14, 32, 6, 9, ''),
(76, '0000-00-00', 'LASERJET PRO MFP M12A', 'CNB6J5BLD0', '', 'FONCTIONNE BIEN', 'OK', 14, 32, 1, 2, ''),
(77, '0000-00-00', 'LV2011', 'CNC609P6G2', '', 'FONCTIONNE BIEN', 'OK', 14, 32, 1, 3, ''),
(78, '0000-00-00', 'HP COMPAQ 8100 ELITE CMT PC', 'CNG127734T', ' CORE I5; 4GO; 500GO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 14, 32, 1, 1, 'DESKTOP'),
(79, '0000-00-00', 'FIBRE OPTIQUE', '', '', 'FONCTIONNE BIEN', 'OK', 4, 32, 5, 17, ''),
(80, '0000-00-00', 'HP W2072A', 'CNC509NPQZ', '', '', 'OK', 3, 21, 1, 3, ''),
(81, '0000-00-00', 'HP 280 G1 MT', 'CZC5393DVH', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2013', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(82, '0000-00-00', 'LASERTJET PRO MFP M428 FN', 'CNDKN7S75G', '', '', 'OK', 3, 21, 1, 2, ''),
(83, '0000-00-00', 'HP LV2011', 'CNC347NQNN', '', '', 'OK', 3, 21, 1, 3, ''),
(84, '0000-00-00', 'HP 280 G1 MT', 'CZC618B8KQ', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2013', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(85, '0000-00-00', 'RICOH', 'E355MA20037', '', '', 'OK', 3, 21, 47, 8, ''),
(86, '0000-00-00', 'HP V212A', 'CNC5390PRN', '', '', 'OK', 3, 21, 1, 3, ''),
(87, '0000-00-00', 'HP 280 G1 MT', 'CZC5522S0X', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2007', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(88, '0000-00-00', 'HP 280 G1 MT', 'CZC5522RV3', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2007', 'EN PANNE', 'NOK', 3, 21, 1, 1, 'DESKTOP'),
(89, '0000-00-00', 'HP 280 G1 MT', 'CZC5522RYY', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2013; KASPERKY', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(90, '0000-00-00', 'HP 212  A', 'CNC5410L7K', '', '', 'OK', 3, 21, 1, 3, ''),
(91, '0000-00-00', 'HP 280 G1 MT', 'CZC6078VDP', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2007', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(92, '0000-00-00', 'HP LV2011', 'CNC347NNXC0', '', '', 'OK', 3, 21, 1, 3, ''),
(93, '0000-00-00', 'HP V212A', 'CNC5410L4V', '', '', 'OK', 3, 21, 1, 3, ''),
(94, '0000-00-00', 'HP 280 G1 MT', 'CZC5522RZT', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2013;', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(95, '0000-00-00', 'HP 20WD', '3CQ4292QPN', '', '', 'OK', 3, 21, 1, 3, ''),
(96, '0000-00-00', 'HP PRO', 'TRF4260W30', '3,4 GHZ; 2GO; 500GO;WINDOWS 2010;OFFICE 2013', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(97, '0000-00-00', 'HP LASERJET M1132 MFP', 'CNJ8G74J0K', '', '', 'OK', 3, 21, 1, 2, ''),
(98, '0000-00-00', 'HP V212A', 'CNC5410P30', '', '', 'OK', 3, 21, 1, 3, ''),
(99, '0000-00-00', 'HP 280 G1', 'CZC5522RWY', '3,6GHZ; 4GO; 500GO;OFFICE 2013; WINDOWS 10', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(100, '0000-00-00', 'HP 212  A', 'CNC5410P0J', '', '', 'OK', 3, 21, 1, 3, ''),
(101, '0000-00-00', 'HP 280 G1', 'CZC5522S0S', '3,6GHZ; 4GO; 500GO; WINDOWS 10; OFFICE 2013', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(102, '0000-00-00', 'HP V212A', 'CNC5410LGD', '', '', 'OK', 3, 21, 1, 3, ''),
(103, '0000-00-00', 'HP 280 G1', 'CZC5522RZW', '3,6GHZ; 4GO; 500GO', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(104, '0000-00-00', 'HP V212A', 'CNC5480G8Z', '', '', 'OK', 3, 21, 1, 3, ''),
(105, '0000-00-00', 'HP 280 G1', 'CZC5522RV8', '3,6GHZ; 4GO; 500GO', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(106, '0000-00-00', 'HP 212A', 'CNC5410KXK', '', '', 'OK', 3, 21, 1, 3, ''),
(107, '0000-00-00', 'HP 280 G1', 'CZC5522RYR', '3,6GHZ; 4GO; 500GO; OFFICE 2013', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(108, '0000-00-00', 'HP 212 A', 'CNC5410LFZ', '', '', 'OK', 3, 21, 1, 3, ''),
(109, '0000-00-00', 'HP 280 G1', 'CZC5522RL9', '3,6GHZ; 4GO; 500GO; OFFICE 2013', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(110, '0000-00-00', 'HP DESKJETPRO G3', '4CE0202JRT', '3,6GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2016', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(111, '0000-00-00', 'HP DESKJETPRO G3', '4CE0202JKX', '3,6GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2016', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(112, '0000-00-00', 'HP DESKJETPRO G3', '4CE0202JB2', '3,6GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2016', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(113, '0000-00-00', 'HP DESKJETPRO G3', '4CE02025F0', '3,6GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2016', '', 'OK', 3, 21, 1, 1, 'DESKTOP'),
(114, '0000-00-00', 'HP V214 A', 'CNC0142LXH', '', '', 'OK', 3, 21, 1, 3, ''),
(115, '0000-00-00', 'HP V214 A', 'CNC0163H6F', '', '', 'OK', 3, 21, 1, 3, ''),
(116, '0000-00-00', 'HP V214 A', 'CNC01520NQ', '', '', 'OK', 3, 21, 1, 3, ''),
(117, '0000-00-00', 'HP V214 A', 'CNC0152129', '', '', 'OK', 3, 21, 1, 3, ''),
(118, '0000-00-00', 'ONDULEUR', '9B2015AO2519', '', '0', 'OK', 3, 21, 12, 4, ''),
(119, '0000-00-00', 'ONDULEUR', '9B2015AO2517', '', '0', 'OK', 3, 21, 12, 4, ''),
(120, '0000-00-00', 'ONDULEUR', '9B2015AO2520', '', '0', 'OK', 3, 21, 12, 4, ''),
(121, '0000-00-00', 'ONDULEUR', '9B2015AO2518', '', '0', 'OK', 3, 21, 12, 4, ''),
(122, '0000-00-00', 'COFFRET INFORMATIQUE', '*', '', '0', 'OK', 3, 21, 0, 11, ''),
(123, '0000-00-00', 'ONDULEUR', '952002A04198', '', '0', 'OK', 3, 21, 12, 4, ''),
(124, '0000-00-00', 'HP', '20WW1DVD60', 'CORE I3; 2,1GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2019', '', 'OK', 3, 8, 1, 1, 'ALL IN ONE'),
(125, '0000-00-00', 'HP COLOR LASERT', 'VNC4K27325', '', 'OK', 'OK', 3, 8, 1, 2, ''),
(126, '0000-00-00', 'HP', '5CD1389XBN', 'CORE I7; 2,8GHZ; 8GO; 1TO; WINDOWS 10;OFFICE 2019', 'OK', 'OK', 3, 8, 1, 1, 'LAPTOP'),
(127, '0000-00-00', 'HP 200 G4', '8CC1302XYT', '2,1GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2016', '', 'OK', 3, 8, 1, 1, 'ALL IN ONE'),
(128, '0000-00-00', 'HP SCANJET 200', 'CN53TB10B3', '', 'OK', 'OK', 3, 8, 1, 5, ''),
(129, '0000-00-00', 'HP LASERJET P1102', 'VNF3596211', '', 'OK', 'OK', 3, 8, 1, 2, ''),
(130, '0000-00-00', 'HP LASER MFP 135 A', 'CNB1P7DYJ9', '', 'OK', 'OK', 3, 8, 1, 2, ''),
(131, '0000-00-00', 'HP 280 G2', 'CZC6208MGB', '3,3GHZ; 4GO; 500GO; ', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(132, '0000-00-00', 'HP V212 A', 'CNC6020MBX', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(133, '0000-00-00', 'CANON IMAGE RUNNER 2520', 'RML05876', '', 'OK', 'OK', 3, 8, 9, 8, ''),
(134, '0000-00-00', 'HP LASERJET PRO 200 COLOR M251 N', 'VNC3G10603', '', 'OK', 'OK', 3, 8, 1, 2, ''),
(135, '0000-00-00', 'LIVE BOX ORANGE', 'ZTEGC47A406F', '', '', 'OK', 3, 8, 0, 17, ''),
(136, '0000-00-00', 'HP LASERJET PRO COLOR M251 N', 'VNC3G10605', '', 'OK', 'OK', 3, 8, 1, 2, ''),
(137, '0000-00-00', 'HP LASERJET P1102', 'VNF3589733', '', 'EN PANNE', 'NOK', 3, 8, 1, 2, ''),
(138, '0000-00-00', 'HP V212 A', 'CNC6010RRP', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(139, '0000-00-00', 'HP PRO', 'CZC6208MD6', '4GO; 3,3GHZ; 500GO; WINDOWS 10; OFFICE 2019', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(140, '0000-00-00', 'HP 280 G1 MT', 'CZC6068FG0', '2GO; 3,2GHZ; 500GO; WINDOWS 7; OFFICE 2016', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(141, '0000-00-00', 'HP V212 A', 'CNC5480DMB', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(142, '0000-00-00', 'HP 280 G2 MT', 'CZC6208M6H', '4GO; 3,3GHZ; 500GO; WINDOWS 7; OFFICE 2016', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(143, '0000-00-00', 'HP V212 A', 'CNC6020P4Y', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(144, '0000-00-00', 'HP LV2011', 'CNC411NQQ3', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(145, '0000-00-00', 'HP LV2011', 'CNC406PB4K', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(146, '0000-00-00', 'HP PRO 3500MT', 'TRF42303JW', '4GO; 3,3GHZ; 500GO; WINDOWS 8; OFFICE 2016', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(147, '0000-00-00', 'HP 280 G1 MT', '4CE6361MC6', '4GO; 3,3GHZ; 500GO; WINDOWS 8; OFFICE 2016', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(148, '0000-00-00', 'HP LV2011', 'CNC339NTR2', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(149, '0000-00-00', 'HP LV2011', 'CNC406PPGB', '', 'OK', 'OK', 3, 8, 1, 3, ''),
(150, '0000-00-00', 'HP 280 G1 MT', '*', '4GO; 3,3GHZ; 500GO; WINDOWS 8; OFFICE 2016', 'OK', 'OK', 3, 8, 1, 1, 'DESKTOP'),
(151, '0000-00-00', 'HP 290 G1', '4CE8052S86', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(152, '0000-00-00', 'HP V214 A', 'CNC8062LSL', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(153, '0000-00-00', 'HP LASERJET M1132 MFP', 'CNJ8674HX4', '', 'OK', 'OK', 3, 9, 1, 2, ''),
(154, '0000-00-00', 'HP', 'CZC6010MJK', '3,2GHZ; 2GO; 500GO; WINDOWS 10; OFFICE 2013', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(155, '0000-00-00', 'HP 212 A', 'CNC5390QBV', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(156, '0000-00-00', 'HP 2011', 'CNC*', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(157, '0000-00-00', 'HP PRO', 'TRF2130K8L', '2,7GHZ; 4GO; 500GO; WINDOWS 7', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(158, '0000-00-00', 'HP PRO 3120MT', 'CZC038CJPB', '2,7GHZ; 2GO; 300GO; ', 'EN PANNE', 'NOK', 3, 9, 1, 1, 'DESKTOP'),
(159, '0000-00-00', 'HP 52031 A', '3CQ029NCDP', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(160, '0000-00-00', 'APC BACKUPS RS', '*', '', 'EN PANNE', 'NOK', 3, 9, 12, 4, ''),
(161, '0000-00-00', 'HP PRO', 'TRF2130SZ5', '2,7GHZ; 4GO; 500GO; WINDOWS 7', 'EN PANNE', 'NOK', 3, 9, 1, 1, 'DESKTOP'),
(162, '0000-00-00', 'HP 2011', 'CNC201P9FL', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(163, '0000-00-00', 'HP PRO 3010MT', 'CZC0060W7S', '2,7GHZ; 2GO; 300GO; WINDOWS 7', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(164, '0000-00-00', 'HP L1908W', '*', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(165, '0000-00-00', 'HP 2011', 'CNC148Q78L', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(166, '0000-00-00', 'HP 290 G1', '4CE8052V53', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(167, '0000-00-00', 'HP 290 G1', '4CE9521HX1', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(168, '0000-00-00', 'HP', 'CNC9242HC5', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(169, '0000-00-00', 'HP 3330 MT', 'SGH143TS22', '', 'EN PANNE', 'NOK', 3, 9, 1, 1, 'DESKTOP'),
(170, '0000-00-00', 'HP 20WD', '3CQ4333W9R', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(171, '0000-00-00', 'HP COLOR MFP 183 FW', 'VNC4F52863', '', 'OK', 'OK', 3, 9, 1, 2, ''),
(172, '0000-00-00', 'HP PRODESK', 'CZC0379T9D', '3GHZ; 8GO; 1TO; WINDOWS 10; OFFICE 2016', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(173, '0000-00-00', 'HP 24F', '3CM0261J37', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(174, '0000-00-00', 'HP V214 A', 'CNC8062LL5', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(175, '0000-00-00', 'HP PRO', 'CZC204BT0Q', '2,76GHZ; 2GO; 500GO; WINDOWS 8; OFFICE 2013', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(176, '0000-00-00', 'HP L1098W', '3CQ91925S1', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(177, '0000-00-00', 'HP PRO 3010MT', 'CZC0103673', '2,76GHZ; 2GO; 500GO; WINDOWS 8; OFFICE 2013', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(178, '0000-00-00', 'LENOVO IDEPAD', 'PF125L7R', 'CORE I3;2GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2013', 'OK', 'OK', 3, 9, 7, 1, 'LAPTOP'),
(179, '0000-00-00', 'HP LV2011', 'CNC347NX0Y', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(180, '0000-00-00', 'HP PRO', 'TRF4330CGP', 'CORE I3;3,46GHZ; 2GO; 500GO; WINDOWS 10; OFFICE 2016', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(181, '0000-00-00', 'HP COLOR LASERJET CP 2025', 'CNHSC08511', '', 'EN PANNE', 'NOK', 3, 9, 1, 2, ''),
(182, '0000-00-00', 'ONDULEUR', 'E1902031222', '', 'OK', 'OK', 3, 9, 13, 4, ''),
(183, '0000-00-00', 'HP LASERJET P1102', 'VNF6K67374', '', 'OK', 'OK', 3, 9, 1, 2, ''),
(184, '0000-00-00', 'LENOVO IDEPAD', '*', 'CORE I3;2GHZ; 4GO; 1TO; WINDOWS 10; OFFICE 2013', 'OK', 'OK', 3, 9, 1, 1, 'LAPTOP'),
(185, '0000-00-00', 'HP S2032', 'CN411619HX', '', 'OK', 'OK', 3, 9, 1, 3, ''),
(186, '0000-00-00', 'HP PRO 3330MT', 'SGH143TS1L', '2,76GHZ; 2GO; 500GO; WINDOWS 7; OFFICE 2007', 'OK', 'OK', 3, 9, 1, 1, 'DESKTOP'),
(187, '0000-00-00', 'HP LASERJET P1102', 'VNF3R25899', '', 'OK', 'OK', 2, 2, 1, 2, ''),
(188, '0000-00-00', 'HP LV 2011', 'CNC405NVXC', '', 'OK', 'OK', 2, 2, 1, 3, ''),
(189, '0000-00-00', 'HP PRO', 'TRF140G1X', '4GO; 3GHZ; 500GO; WINDOWS 7; OFFICE 2007', 'OK', 'OK', 2, 2, 1, 1, 'DESKTOP'),
(190, '0000-00-00', 'HP LASERJET P1102', 'VNF3R26618', '', 'OK', 'OK', 2, 2, 1, 2, ''),
(191, '0000-00-00', 'HP OFFICEJET 4500', 'CN17TG111W', '', 'EN PANNE', 'NOK', 2, 2, 1, 2, ''),
(192, '0000-00-00', 'HP LV 2011', 'CNC530NSDZ', '', 'OK', 'OK', 3, 2, 1, 3, ''),
(193, '0000-00-00', 'LENOVO', '1433F47N0418', '', 'OK', 'OK', 3, 2, 7, 3, ''),
(194, '0000-00-00', 'LENOVO', 'R3026WGF', '3,7GHZ; 4GO; 500GO; WINDOWS 7; OFFICE 2007', 'OK', 'OK', 3, 2, 7, 1, 'DESKTOP'),
(195, '0000-00-00', 'HP 5008 MT', 'CZC1215K6X', '3,2GHZ; 2GO; 500GO; WINDOWS 7;', 'OK', 'OK', 3, 2, 1, 1, 'DESKTOP'),
(196, '0000-00-00', 'HP SCANNER G2710', 'CN27JAD0ZG', '', 'EN PANNE', 'NOK', 3, 2, 1, 5, ''),
(197, '0000-00-00', 'HP S2031 A', '3CQ1102BW4', '', 'OK', 'OK', 3, 2, 1, 3, ''),
(198, '0000-00-00', 'HP 280 G1 MT', 'TRF53813SR', '3,2GHZ; 2GO; 500GO; WINDOWS 7;', 'OK', 'OK', 3, 2, 1, 1, 'DESKTOP'),
(199, '0000-00-00', 'DELL', 'CN-0X237R-64180-049-083M', '', 'OK', 'OK', 3, 2, 10, 3, ''),
(200, '0000-00-00', 'HP PRO 2500', 'TRF4140G0B', '3GHZ; 4GO; 500GO; WINDOWS 7; OFFICE 2007', 'OK', 'OK', 3, 2, 1, 1, 'DESKTOP'),
(201, '0000-00-00', 'CANON IMAGERUNNER 1133A', 'QXP18776', '', 'OK', 'OK', 3, 2, 9, 8, ''),
(202, '0000-00-00', 'HP LASERJET P2035', 'VNC4B63015', '', 'OK', 'OK', 3, 2, 1, 2, ''),
(203, '0000-00-00', 'HP 5008 MT', 'CZC1215K5X', '3,2GHZ; 2GO; 500GO; WINDOWS 7;', 'EN PANNE', 'NOK', 3, 2, 1, 1, 'DESKTOP'),
(204, '0000-00-00', 'HP LV 2011', 'CNC406P8NT', '', 'OK', 'OK', 3, 2, 1, 3, ''),
(205, '0000-00-00', 'HP 212 A', '*', '', 'OK', 'OK', 3, 2, 1, 3, ''),
(206, '0000-00-00', 'HP 280 G1 MT', 'CZC6068FDC', '3,2GHZ; 2GO; 500GO; WINDOWS 7;', 'OK', 'OK', 3, 2, 1, 1, 'DESKTOP'),
(207, '0000-00-00', 'DESKTOP-PLCKR8P', '4CE130ZCFV', 'PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 23, 1, 1, 'DESKTOP'),
(208, '0000-00-00', 'HP-NOTEBOOK-15-DA007NK', 'CND825BN4H', 'CORE I3; 15GO; 500GO; WINDOWS 10', 'PROVIENT DE LA DD DABOU', 'OK', 3, 23, 1, 1, 'LAPTOP'),
(209, '0000-00-00', 'LASERJET PRO MFP M28W', 'VNC6P88806', '', 'FONCTIONNE BIEN', 'OK', 3, 23, 1, 2, ''),
(210, '0000-00-00', 'TL-1000VA', 'TL220301327', '', 'FONCTIONNE BIEN', 'OK', 3, 23, 14, 4, ''),
(211, '0000-00-00', 'P22V', 'CN412820W5', '', 'FONCTIONNE BIEN', 'OK', 3, 23, 1, 3, ''),
(212, '0000-00-00', 'FIBRE OPTIQUE', '', '', 'FONCTIONNE BIEN', 'OK', 1, 23, 5, 17, ''),
(213, '0000-00-00', 'G3411', 'KNXH05027', 'BLACK / COLOR ', 'FONCTIONNE', 'OK', 3, 22, 9, 2, ''),
(214, '0000-00-00', ' HP 290G4 MICROTOWER PC', '4CE236CNGF', 'WINDOWS 10 PRO /INTEL(R) CORE(TM) I3-10100 CPU@ 3,6GHZ / RAM = 4,00GO / DD = 930GO', 'FONCTIONNE', 'OK', 1, 22, 1, 1, 'DESKTOP '),
(215, '0000-00-00', 'FIBER BOX ORANGE', 'ZTEOQHBLAC 13845', '', 'FONCTIONNE', 'OK', 3, 22, 15, 17, 'FIBER BOX ORANGE'),
(216, '0000-00-00', 'HP LASER JET P1102', 'VNF544025', '', 'FONCTIONNE', 'OK', 3, 22, 1, 2, 'FLYER BOX'),
(217, '0000-00-00', 'HP LAPTOP 15-RA0XY', 'CND9482Z2G', 'WINDOWS 10 PRO / INTEL(R) CELEROM(R) CPU N3060@ 1,1GHZ / RAM = 4,00GO / DD = 465GO', 'FONCTIONNE', 'OK', 3, 22, 1, 1, 'LAPTOP'),
(218, '0000-00-00', 'HP LAPTOP 15-DW1XX', 'CND1018K65', 'WINDOWS 10 / INTEL(R) CELEROM(R) N4020 CPU @ 1,6GHZ / RAM = 4,00GO / DD = 464GO', 'FONCTIONNE', 'OK', 3, 22, 1, 1, 'LAPTOP'),
(219, '0000-00-00', 'NIANGO', 'TRF4511OOR', 'WINDOWS 8,1 PRO 64 BITS, INTEL PENTIUM G2030 CPU, RAM 2GO , DD 500GO', 'RAS', 'OK', 4, 43, 1, 1, 'DESKTOP'),
(220, '0000-00-00', 'ECRAN', '3CQ42720Y2', 'HP V201A', 'RAS', 'OK', 4, 43, 1, 3, ''),
(221, '0000-00-00', 'IMPRIMANTE', 'CNJ8G6C15N', 'LASERJET M1132 MFP', 'RAS', 'OK', 4, 43, 1, 2, ''),
(222, '0000-00-00', 'ONDULEUR', '186000384013', 'SMART TECHNOLOGY', 'RAS', 'OK', 4, 43, 32, 4, ''),
(223, '0000-00-00', 'DESKTOP-QU11EUD', '8CG9470CXH', 'WINDOWS 10 PRO 64 BITS, CORE I3-8100 CPU, RAM 4GO, DD 1 TERA', 'RAS', 'OK', 4, 43, 1, 1, 'DESKTOP'),
(224, '0000-00-00', 'ECRAN', 'CNC9331NHD', 'HP V214A', 'RAS', 'OK', 4, 43, 1, 3, ''),
(225, '0000-00-00', 'IMPRIMANTE', 'VNC4B58273', 'HP LASERJET P2035', 'RAS', 'OK', 4, 43, 1, 2, ''),
(226, '0000-00-00', 'TELEPHONE', 'ZLTV10', 'FIXED WIRELESS PHONE ZLT V10', 'RAS', 'OK', 4, 43, 30, 12, ''),
(227, '0000-00-00', 'ONDULEUR', 'E2106098438', 'ORITE 1000VA', 'RAS', 'OK', 4, 43, 31, 4, ''),
(228, '0000-00-00', 'HP-PC', 'NEANT', 'WINDOWS 10 PRO 64 BITS, DUAL CORE CPU E5700, RAM 2GO, DD 300GO', 'RAS', 'OK', 3, 43, 1, 1, 'DESKTOP'),
(229, '0000-00-00', 'ECRAN', 'ME19HMEP503513N', 'SUMSUMG SYNCMASTER 931BW', 'RAS', 'OK', 3, 43, 33, 3, ''),
(230, '0000-00-00', 'DESKTOP-V6NOAHT', 'TRF603006S', 'WINDOWS 10 PRO 64 BITS, CORE I3-6100T CPU, RAM 4GO, DD 1TERA', 'RAS', 'OK', 1, 43, 1, 1, 'DESKTOP'),
(231, '0000-00-00', 'ECRAN', 'V190', 'HP V190', 'RAS', 'OK', 1, 43, 1, 3, ''),
(232, '0000-00-00', 'IMPRIMANTE', 'CN21KCW22S', 'HP DESKJET 2710', 'RAS', 'OK', 1, 43, 1, 2, ''),
(233, '0000-00-00', 'ONDULEUR', 'E2106098684', 'ORITE 1000VA', 'RAS', 'OK', 1, 43, 31, 4, ''),
(234, '0000-00-00', 'ONDULEUR', 'NC20092-3', 'ILUX LX-SV1000', 'RAS', 'OK', 1, 43, 29, 4, ''),
(235, '0000-00-00', 'ORDINATEUR ', '4B053435R', 'TOSHIBA', 'HS', 'NOK', 1, 43, 34, 1, 'LAPTOP'),
(236, '0000-00-00', 'ONDULEUR', '150306C102N-3268', 'VOLTPLUS 2000VA', 'HS', 'NOK', 3, 43, 35, 4, ''),
(237, '0000-00-00', 'ONDULEUR', '120201C102G-1120', 'VOLTPLUS AVR6022 2000VA', 'HS', 'NOK', 3, 43, 35, 4, ''),
(238, '0000-00-00', 'ONDULEUR', '241210342496', 'TECH-COM VISION', 'HS', 'NOK', 3, 43, 18, 4, ''),
(239, '0000-00-00', 'IMPRIMANTE', 'CN2C83HP42', 'HP DESJET 2510', 'HS', 'NOK', 3, 43, 1, 2, ''),
(240, '0000-00-00', 'INTERNET', 'NEANT', 'LIVEBOX ORANGE', 'RAS', 'OK', 1, 43, 30, 17, 'LIVEBOX ORANGE'),
(241, '0000-00-00', 'DRTOURISME', 'CZC9054XOR', 'WINDOWS 7 EDITION 64 BITS, DUAL CORE E5200 CPU, RAM 1 GO, DD 150GO', 'RAS', 'OK', 4, 30, 1, 1, 'DESKTOP'),
(242, '0000-00-00', 'ECRAN', 'CNC344P09B', 'HP LV2011', 'RAS', 'OK', 4, 30, 1, 3, ''),
(243, '0000-00-00', 'ONDULEUR', 'E130848156', 'CRISTAL', 'RAS', 'OK', 4, 30, 37, 4, ''),
(244, '0000-00-00', 'GFYU', 'TRF2100DPG', 'WINDOWS 10 PRO, 32 BITS , DUAL CORE CPU G850, RAM 2GO, DD 150 GO', 'RAS', 'OK', 4, 30, 1, 1, 'DESKTOP'),
(245, '0000-00-00', 'ECRAN', '6CM3310D25', 'W1972A', 'RAS', 'OK', 4, 30, 1, 3, ''),
(246, '0000-00-00', 'IMPRIMANTE', 'VNFRD25021', 'LASERJET PRO MFP M130A', 'RAS', 'OK', 4, 30, 1, 2, ''),
(247, '0000-00-00', 'DESKTOP-800N814', 'CNG028699LL', 'WINDOWS 10 PRO 64 BITS, CORE I5-2500 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 30, 1, 1, 'DESKTOP'),
(248, '0000-00-00', 'ECRAN', 'CNC0172MOD', 'V214B', 'RAS', 'OK', 3, 30, 1, 3, ''),
(249, '0000-00-00', 'HP G5400', '8CG91284M6', 'WINDOWS 10 PRO 64 BITS, PENTIUM GOLD  DUAL CORE, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 30, 1, 1, 'DESKTOP'),
(250, '0000-00-00', 'ECRAN', 'CNC9491V2V', 'V214B', 'RAS', 'OK', 3, 30, 1, 3, ''),
(251, '0000-00-00', 'IMPRIMANTE', 'VNC6R10292', 'HP LASERJET PRO MFP M28A', 'RAS', 'OK', 3, 30, 1, 2, ''),
(252, '0000-00-00', 'ONDULEUR', 'SVR2000VA', 'VOLTPLUS', 'RAS', 'OK', 3, 30, 35, 4, ''),
(253, '0000-00-00', 'INTERNET', 'B622-335', 'BOX ORANGE CI FLYBOX 4G+', 'RAS', 'OK', 3, 30, 30, 17, 'FLYBOX 4G+'),
(254, '0000-00-00', 'DESKTOP-V852SCU', 'PF2LJ175', 'WINDOWS 10 PRO 64 BITS, AMD 3020E DUAL CORE, RAM 4GO, DD 1TERA', 'RAS', 'OK', 3, 30, 7, 1, 'LAPTOP'),
(255, '0000-00-00', 'ONDULEUR', 'AVR1000VA', 'XPER', 'RAS', 'OK', 3, 30, 36, 4, ''),
(256, '0000-00-00', 'PC-HP', 'CND00303GF', 'WINDOWS 10 PRO 64 BITS, AMD DUAL CORE, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 30, 1, 1, 'LAPTOP'),
(257, '0000-00-00', 'HP G2030', 'TRF35009K6', 'WINDOWS 7 EDITION 32 BITS, DUAL CORE , RAM 2GO, DD 150GO', 'RAS', 'OK', 3, 30, 1, 1, 'DESKTOP'),
(258, '0000-00-00', 'ECRAN', 'CNC203QF4R', 'W2072A', 'RAS', 'OK', 3, 30, 1, 3, ''),
(259, '0000-00-00', 'IMPRIMANTE', 'CNJ8FD29R4', 'LASERJET M1132 MFP', 'RAS', 'OK', 3, 30, 1, 2, ''),
(260, '0000-00-00', 'IMPRIMANTE', 'CNB6GD2F4Q', 'LASERJET PRO MFP M125A', 'RAS', 'OK', 1, 30, 1, 2, ''),
(261, '0000-00-00', 'VIDEO PROJECTEUR', 'V9WK5300703', 'EPSON', 'RAS', 'OK', 1, 30, 4, 6, ''),
(262, '0000-00-00', 'IMPRIMANTE', 'CN98C55OC6', 'HP OFFICEJET PRO 7740', 'RAS', 'OK', 1, 37, 1, 2, ''),
(263, '0000-00-00', 'IMPRIMANTE', 'CNOCR231NW', 'HP DESKJET 2320', 'RAS', 'OK', 1, 37, 1, 2, ''),
(264, '0000-00-00', 'ONDULEUR', 'SSD-UPS 725', 'TECH-COM VISION', 'RAS', 'OK', 1, 37, 18, 4, ''),
(265, '0000-00-00', 'TELEPHONE', '80032414', 'ALCATEL', 'RAS MAIS PROBLEME DE LIGNE TELEPHONIQUE', 'OK', 1, 37, 40, 12, ''),
(266, '0000-00-00', 'HP G3220', '51FXR12', 'WINDOWS 7 PRO 64 BITS, DUAL CORE, RAM 4GO, DD 500GO', 'RAS', 'OK', 4, 37, 10, 1, 'DESKTOP'),
(267, '0000-00-00', 'ECRAN', 'CN-OPD06D-72872-444DPLM', 'ECRAN DELL', 'RAS', 'OK', 4, 37, 10, 3, ''),
(268, '0000-00-00', 'IMPRIMANTE', 'CNJ8F1XTM', 'LASEJET M212NF MFP', 'RAS', 'OK', 4, 37, 1, 2, ''),
(269, '0000-00-00', 'TELEPHONE', 'KX-AT7730', 'PANASONIC KX-AT7730', 'RAS MAIS PROBLEME DE LIGNE TELEPHONIQUE', 'OK', 4, 37, 39, 12, ''),
(270, '0000-00-00', 'AUTO-COMMUTATEUR', 'KX-TEA308', 'PANASONIC ', '', 'OK', 4, 37, 39, 10, ''),
(271, '0000-00-00', 'ONDULEUR', 'SSD-UPS 725', 'TECH-COM VISION', 'RAS', 'OK', 4, 37, 18, 4, ''),
(272, '0000-00-00', 'HP G645', 'TRF30508H8', 'WINDOWS 10 PRO 64 BITS, DUAL CORE, RAM 2GO, DD 500 GO', 'RAS', 'OK', 3, 37, 1, 1, 'DESKTOP'),
(273, '0000-00-00', 'ECRAN', 'CNC251R1HO', 'W2072A', 'RAS', 'OK', 3, 37, 1, 3, ''),
(274, '0000-00-00', 'IMPRIMANTE', 'CN077435MQ', 'HP DESKJET 2130', 'HS', 'NOK', 3, 37, 1, 2, ''),
(275, '0000-00-00', 'TELEPHONE', 'KX-TS500MX', 'PANASONIC ', 'RAS MAIS PROBLEME DE LIGNE TELEPHONIQUE', 'OK', 3, 37, 39, 12, ''),
(276, '0000-00-00', 'ONDULEUR', 'E2006021130', 'TOPLINK', 'RAS', 'OK', 3, 37, 14, 4, ''),
(277, '0000-00-00', 'ORDINATEUR HP', 'NEANT', 'HP', 'HS', 'NOK', 3, 37, 1, 1, 'DESKTOP'),
(278, '0000-00-00', 'ECRAN', 'CNC0381GVR', 'HP V214A', 'HS', 'NOK', 3, 37, 1, 3, ''),
(279, '0000-00-00', 'ONDULEUR', 'E2006021812', 'TOPLINK', 'RAS', 'OK', 3, 37, 14, 4, ''),
(280, '0000-00-00', 'ORDINATEUR HP', 'MXL1460N83', 'DESKTOP', 'HS', 'NOK', 3, 37, 1, 1, 'DESKTOP'),
(281, '0000-00-00', 'ECRAN', 'CNC9401056', 'HP V214A', 'HS', 'NOK', 3, 37, 1, 3, ''),
(282, '0000-00-00', 'IMPRIMANTE', 'CNOCH2353', 'HP DESKJET 2320', 'HS', 'NOK', 3, 37, 1, 2, ''),
(283, '0000-00-00', 'ECRAN', 'CNC352NP8Q', 'HP W2072A', 'RAS', 'OK', 3, 37, 1, 3, ''),
(284, '0000-00-00', 'TELEPHONE', 'KX-TS500MX', 'PANASONIC ', 'RAS MAIS PROBLEME DE LIGNE TELEPHONIQUE', 'OK', 3, 37, 39, 12, ''),
(285, '0000-00-00', 'HP G2030', 'CZC4090GRS', 'WINDOWS 10 PRO 32 BITS, DUAL CORE, RAM 2GO, DD 500 GO', 'RAS', 'OK', 3, 37, 1, 1, 'DESKTOP'),
(286, '0000-00-00', 'ONDULEUR', 'ELITE 650 PRO', 'MERCURY ELITE 650 PRO', 'RAS', 'OK', 3, 37, 38, 4, ''),
(287, '0000-00-00', 'ONDULEUR', 'SSD-UPS 725 VISION', 'TECH-COM VISION', 'RAS', 'OK', 3, 37, 18, 4, ''),
(288, '0000-00-00', 'HP-6300 UEFI', '2UA224241D', 'WINDOWS 10 PRO 64 BITS, CORE I5-2500 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 37, 1, 1, 'DESKTOP'),
(289, '0000-00-00', 'ECRAN', 'CNC9400W2N', 'HP V214A', 'RAS', 'OK', 3, 37, 1, 3, ''),
(290, '0000-00-00', 'ONDULEUR', 'SSD-UPS 725 VISION', 'TECH-COM VISION', 'RAS', 'OK', 3, 37, 18, 4, ''),
(291, '0000-00-00', 'HP 6300', 'MXL1371HLW', 'WINDOWS 10 PRO 64 BITS, CORE I3-2100 CPU, 4GO, DD 500GO', 'RAS', 'OK', 3, 37, 1, 1, 'DESKTOP'),
(292, '0000-00-00', 'ECRAN', 'CNC9401059', 'HP V214A', 'RAS', 'OK', 3, 37, 1, 3, ''),
(293, '0000-00-00', 'ONDULEUR', 'SSD-UPS 725 VISION', 'TECH-COM VISION', 'RAS', 'OK', 3, 37, 18, 4, ''),
(294, '0000-00-00', 'ONDULEUR', 'SSD-UPS 725 VISION', 'TECH-COM VISION', 'RAS', 'OK', 3, 37, 18, 4, ''),
(295, '0000-00-00', 'DESKTOP-JHFOC7I', '8CC824273F', 'WINDOWS 10 PRO 64 BITS, CORE I3-8130U, RAM 4GO, DD 500GO', '', 'OK', 3, 37, 1, 1, 'ALL IN ONE'),
(296, '0000-00-00', 'IMPRIMANTE', 'CN0CS233G5', 'HP DESKJET 2320', 'RAS', 'OK', 3, 37, 1, 2, ''),
(297, '0000-00-00', 'TELEPHONE', 'KX-TS500MX', 'PANASONIC ', 'RAS MAIS PROBLEME DE LIGNE TELEPHONIQUE', 'OK', 3, 37, 39, 12, ''),
(298, '0000-00-00', 'IMPRIMANTE', 'CN83D4N215', 'HP DESKJET 2630', 'HS', 'NOK', 3, 37, 1, 2, ''),
(299, '0000-00-00', 'ORDINATEUR HP', 'MXL1371HLQ', 'HP', 'HS A MON PASSAGE', 'NOK', 3, 37, 1, 1, 'DESKTOP'),
(300, '0000-00-00', 'ECRAN', 'CNC9382S52', 'HP V214A', 'RAS', 'OK', 3, 37, 1, 3, ''),
(301, '0000-00-00', 'ECRAN', 'RELE9LCDN-22204', 'LENOVO THINKVISION', 'RAS', 'OK', 3, 37, 7, 3, ''),
(302, '0000-00-00', 'ORDINATEUR HP PRO', 'M-020495', 'HP PRO', 'HS A MON PASSAGE', 'NOK', 3, 37, 1, 1, 'DESKTOP'),
(303, '0000-00-00', 'DESKTOP-ORHM2I', '8CC824272H', 'WINDOWS 10 PRO 64 BITS, CORE I3-8130U, RAM 4GO, DD 500GO', '', 'OK', 3, 37, 1, 1, 'ALL IN ONE'),
(304, '0000-00-00', 'TELEPHONE', 'KX-TS500MX', 'PANASONIC ', 'RAS MAIS PROBLEME DE LIGNE TELEPHONIQUE', 'OK', 3, 37, 39, 12, ''),
(305, '0000-00-00', 'ONDULEUR', '4317C52392', 'MERCURY', 'RAS', 'OK', 3, 37, 38, 4, ''),
(306, '0000-00-00', 'DESKTOP-KVQ6BPM', '4CE84419V5', 'WINDOWS 10 PRO 64 BITS, CORE I3-8100 CPU, RAM 4GO, DD500GO', 'RAS', 'OK', 3, 37, 1, 1, 'DESKTOP'),
(307, '0000-00-00', 'ECRAN', 'CNC8432206', 'HP V214A', 'RAS', 'OK', 3, 37, 1, 3, ''),
(308, '0000-00-00', 'IMPRIMANTE', 'CNO964EO6V', 'HP DESKJET 2710', 'RAS MAIS PROBLEME D\'ENCRE A MON PASSAGE', 'OK', 3, 37, 1, 2, ''),
(309, '0000-00-00', 'ONDULEUR', '4317C53112', 'MERCURY', 'RAS', 'OK', 3, 37, 38, 4, ''),
(310, '0000-00-00', 'THINK VISION', 'E2054 A', '', '', 'OK', 3, 25, 7, 3, ''),
(311, '0000-00-00', 'LENOVO V530', 'PC1AZFR6', 'CORE I3; 3,6GHZ; 4GO; 1TO', 'OK', 'OK', 3, 25, 7, 1, 'DESKTOP'),
(312, '0000-00-00', 'COLOR HP LASERJET PRO', 'VNC3702779', '', '', 'OK', 3, 25, 1, 2, ''),
(313, '0000-00-00', 'HP P22 G4', 'CN41100165', '', '', 'OK', 3, 25, 1, 3, ''),
(314, '0000-00-00', 'HP PRO 300 G6', '4CE1130QQ6', 'CORE I3; 3,6GHZ; 4GO; 1TO', '', 'OK', 3, 25, 1, 1, 'DESKTOP'),
(315, '0000-00-00', 'PIXMA G2411', 'KMRF13377', '', 'EN PANNE', 'NOK', 3, 25, 9, 2, ''),
(316, '0000-00-00', 'APC', '9B2013A07153', '', '', 'OK', 3, 25, 12, 4, ''),
(317, '0000-00-00', 'MERCURY', '161223E1200N00056', '', '', 'OK', 3, 25, 38, 4, ''),
(318, '0000-00-00', 'MTN CPE', 'P21867070021588434', '', '', 'OK', 3, 25, 0, 17, ''),
(319, '0000-00-00', 'NITRAM', '3201340Y30000215', '', '', 'OK', 3, 25, 0, 4, ''),
(320, '0000-00-00', 'ASUS', 'G3LJNK201114', '', '', 'OK', 3, 25, 28, 6, ''),
(321, '0000-00-00', 'AKAI', '1712102179200800', '', '', 'OK', 3, 25, 27, 9, ''),
(322, '0000-00-00', 'HP LV2011', 'CNC634P8W1', '', 'EN PANNE', 'NOK', 3, 25, 1, 3, ''),
(323, '0000-00-00', 'HP 280 G2', 'CZC7077C9Y', '3,7GHZ; 4GO; 500GO', 'OK', 'OK', 3, 25, 1, 1, 'DESKTOP'),
(324, '0000-00-00', 'HP LASERTJET P1102', 'VNF6J52456', '', '', 'OK', 3, 25, 1, 2, ''),
(325, '0000-00-00', 'MERCURY', '161223E1200N00055', '', 'EN PANNE', 'NOK', 3, 25, 38, 4, ''),
(326, '0000-00-00', 'HP LASERTJET M1132 MFP', 'CNJ8G79CX7', '', '', 'OK', 3, 25, 1, 2, ''),
(327, '0000-00-00', 'HP W2072 A', 'CNC242PC1P', '', '', 'OK', 3, 25, 1, 3, ''),
(328, '0000-00-00', 'HP PRO 3500', 'CZC4090LPW', '3GHZ; 4GO; 500GO', 'OK', 'OK', 3, 25, 1, 1, 'DESKTOP'),
(329, '0000-00-00', 'I-SENSE', 'F164100', '', 'EN PANNE', 'NOK', 3, 25, 9, 2, ''),
(330, '0000-00-00', 'HP W2072 A', 'CNC352NSDY', '', '', 'OK', 3, 25, 1, 3, ''),
(331, '0000-00-00', 'HP PRO 3500', 'CZC4090CSH', '3GHZ; 4GO; 500GO', 'OK', 'OK', 3, 25, 1, 1, 'DESKTOP'),
(332, '0000-00-00', 'HP LASERTJET P1102', 'VNF6J52453', '', '', 'OK', 3, 25, 1, 2, ''),
(333, '0000-00-00', 'HP W2072 A', 'CNC352MSVK', '', '', 'OK', 3, 25, 1, 3, ''),
(334, '0000-00-00', 'HP PRO 3500', 'CZC3037K75', '3GHZ; 4GO; 80GO', 'OK', 'OK', 3, 25, 1, 1, 'DESKTOP'),
(335, '0000-00-00', 'COLOR HP LASERJET PRO', '*', '', '', 'OK', 3, 25, 1, 2, ''),
(336, '0000-00-00', 'APC', '9B1945A34020', '', 'EN PANNE', 'NOK', 3, 25, 12, 4, ''),
(337, '0000-00-00', 'APC', '9B1945A34017', '', 'EN PANNE', 'NOK', 3, 25, 12, 4, ''),
(338, '0000-00-00', 'HP V185 ES', 'CNT123Y105', '', 'EN PANNE', 'NOK', 3, 25, 1, 3, ''),
(339, '0000-00-00', 'HP PRO 3500', 'CZC3037K0L', '3GHZ; 4GO; 500GO', '', 'OK', 3, 25, 1, 1, 'DESKTOP'),
(340, '0000-00-00', 'HP LASERTJET PRO MFP M 127 FN', 'CNB952X45L', '', '', 'OK', 3, 25, 1, 2, ''),
(341, '0000-00-00', 'HP', '', 'WINDOWS 10 PRO / INTEL CORE I3', 'SOUCI DE DEMARRAGE', 'NOK', 1, 50, 1, 1, 'ALL IN ONE'),
(342, '0000-00-00', 'HP DESKJET PLUS INK ADVANTAGE 6475', 'TH15BBJ195', '', 'FONCTIONNE', 'OK', 1, 50, 1, 2, ''),
(343, '0000-00-00', 'LOGCOMSL210', 'L2100621000044', '', 'FONCTIONNE', 'OK', 1, 50, 44, 12, 'TELEPHONE FIXE'),
(344, '0000-00-00', 'DEKJET2630', 'CN7CP4908S', 'PRINT-SCAN-COPY', 'FONCTIONNE', 'OK', 1, 50, 1, 2, ''),
(345, '0000-00-00', 'FLY BOX(B 612)', 'GQQ7S21226003976', '', 'FONCTIONNE', 'OK', 1, 50, 5, 17, 'FLY BOX(B 612)'),
(346, '0000-00-00', 'NITRAM', '1GT43001713', 'BU 600E', 'HS', 'NOK', 1, 50, 20, 4, ''),
(347, '0000-00-00', 'HP OFFICE JET PRO 7740', 'CN03Q5518H', 'PRINT-FAX-SCAN-COPY-WEB', 'FONCTIONNE', 'OK', 1, 50, 1, 2, 'MULTIFONCTION'),
(348, '0000-00-00', 'HP 250 G8 NOTEBOOK PC', 'CND 14395 GZ', 'WINDOWS 10  /  INTEL CELERON N4020 CPU@ 1,1GHZ / RAM = 4,0GO / DD = 464 GO', 'FONCTIONNE', 'OK', 4, 50, 1, 1, 'LAPTOP'),
(349, '0000-00-00', 'IMAGE RUNNER 2520', '(21)RML 07591', '', 'FONCTIONNE', 'OK', 4, 50, 9, 8, ''),
(350, '0000-00-00', ' HP 290 G2 MT BUSINESS PC', '8CG9466B47', 'WINDOWS 10 PRO / INTEL CORE I5-8400 CPU@2,8GHZ / RAM = 4,0 GO / DD = 930 GO', 'FONCTIONNE', 'OK', 4, 50, 1, 1, 'DESKTOP  '),
(351, '0000-00-00', ' HP PRO 3500 SERIES', 'CZC4090C55', 'WINDOWS 10 PRO / INTEL PENTIUM CPU G2030 / RAM = 2,0 GO / DD = 464 GO', 'FONCTIONNE', 'OK', 4, 50, 1, 1, 'DESKTOP'),
(352, '0000-00-00', ' HP PRO 3500 SERIES', 'CZC3037K3K', 'WINDOWS 7 PRO  / INTEL PENTIUM CPU G645@ 2,9GHZ / RAM = 2,00GO / DD = 464GO', 'FONCTIONNE', 'OK', 3, 50, 1, 1, 'DESKTOP'),
(353, '0000-00-00', 'HP 250 G8 NOTEBOOK PC ', 'CND14395ML', 'WINDOWS 10 /INTEL CELERON N4020 CPU@ 1,1GHZ /RAM = 4,0GO / DD = 464 GO', 'FONCTIONNE', 'OK', 3, 50, 1, 1, 'LAPTOP'),
(354, '0000-00-00', 'HP  G3250', 'SGH449P40H', 'WINDOWS 8.1 PRO / INTEL PENTIUM CPU /3,20GHZ RAM = 4,0 GO DD = 464 GO', 'LENT', 'OK', 3, 50, 1, 1, 'DESKTOP'),
(355, '0000-00-00', 'HP', '', '', 'FONCTIONNE', 'OK', 3, 50, 1, 2, ''),
(356, '0000-00-00', 'HP DESKJET2540', 'CN3972BKCW', 'PRINT-SCAN-COPY', 'FONCTIONNE', 'OK', 3, 50, 1, 2, ''),
(357, '0000-00-00', 'HP 290 GI MT BUSINESS PC', '4CE7454C4L', 'DD = 463 GO', 'TRÈS LENT, IMPOSSIBLE D\'ACCÈS AUX DONNÉES', 'OK', 3, 50, 1, 1, 'DESKTOP'),
(358, '0000-00-00', 'HP DESKJET INK ADVANTAGE 3855', 'CN72D3QOFJ', 'PRINT-FAX-SCAN-COPY-WEB', 'FONCTIONNE', 'OK', 3, 50, 1, 2, ''),
(359, '0000-00-00', ' HP PRODESK 400 G6 MT', '4CE0261NP7', 'WINDOWS 11 PRO / INTEL CORE I5-9500 CPU @ 3.0 GHZ / RAM = 4,0 GO / DD = 930 GO', 'FONCTIONNE', 'OK', 3, 50, 1, 1, 'DESKTOP'),
(360, '0000-00-00', 'HP DESKJET 2540', 'CN3CH2DMVB', 'PRINT-SCAN-COPY', 'SEULE LA PARTIE SCANNER FONCTIONNE', 'NOK', 3, 50, 1, 2, ''),
(361, '0000-00-00', 'PANASONIC', '', '', 'HS', 'NOK', 3, 50, 39, 12, 'TELEPHONE FIXE'),
(362, '0000-00-00', 'CRYSTAL', '', '', 'HS', 'NOK', 3, 50, 37, 4, ''),
(363, '0000-00-00', ' HP 290 G1 MT', '4CE7494TZ4', 'WINDOWS 10 PRO / INTEL CORE I3-7100 CPU@ 3,9GHZ / RAM = 4,0 GO / DD = 464 GO', 'FONCTIONNE', 'OK', 3, 50, 1, 1, 'DESKTOP'),
(364, '0000-00-00', 'HP PRO 3500 SERIES', 'CZC4090CO3', 'WINDOWS 10 PRO / INTEL PENTIUM CPU G2030@ 3,0GHZ / RAM = 2,0 GO / DD = 464 GO', 'UN PEU LENT', 'OK', 3, 50, 1, 1, 'DESKTOP'),
(365, '0000-00-00', 'HP LASER MFP 135A', 'CNB2NSKGF9', '', 'FONCTIONNE', 'OK', 1, 34, 1, 2, ''),
(366, '0000-00-00', 'DESKTOP-BESP57U', '5CG8041X4T', 'WINDOWS 10 PRO; INTEL CORE I5-6300U , 2,4 GHZ;8GO', 'FONCTIONNE', 'OK', 1, 34, 1, 1, 'LAPTOP'),
(367, '0000-00-00', 'LASER JET PRO 200 COLOR M251N', 'CNF1B03824', '', 'PAS TROP FONCTIONNEL', 'OK', 1, 34, 1, 2, ''),
(368, '0000-00-00', 'CANON', 'WQC07271', '', 'FONCTIONNE AVEC SOUCI AU TAMBOUR', 'OK', 4, 34, 9, 2, ''),
(369, '0000-00-00', 'DELL', 'CN-OPM85774261-7C4-2GWU', '', 'FONCTIONNE', 'OK', 4, 34, 10, 3, ''),
(370, '0000-00-00', ' HP PRO 3500 SERIES', 'TFR 8430 FKR', 'WINDOWS 10 PRO / INTEL PENTIUM CPU G2030@ , 3,00GO ', 'FONCTIONNE LENTEMENT', 'OK', 4, 34, 1, 1, 'DESKTOP'),
(371, '0000-00-00', 'FLYER BOX', 'OQHBN4EO2828', '', 'FONCTIONNE', 'OK', 4, 34, 15, 17, ''),
(372, '0000-00-00', 'PANASONIC', 'KX-TS500FX', '', 'FONCTIONNE', 'OK', 4, 34, 39, 12, 'TELEPHONE FIXE'),
(373, '0000-00-00', 'PANASONIC', 'KX-T7730X', '', 'HS', 'NOK', 4, 34, 39, 12, 'TELEPHONE FIXE'),
(374, '0000-00-00', 'DESKTOP-EHNAGHR', 'CND55201HT', 'WINDOWS 10 PRO / INTEL CELERON CPU N3050@ , 1,60GO / RAM = 4,00GO', 'FONCTIONNE LENTEMENT', 'OK', 13, 34, 1, 1, 'LAPTOP'),
(375, '0000-00-00', 'PANASONIC', 'KX-FP156BX', '', '', 'NOK', 13, 34, 1, 12, 'TELEPHONE FIXE'),
(376, '0000-00-00', 'TOURISME-3', 'HUB7170DK4', 'WINDOWS 10 PRO / INTEL PENTIUM 4 CPU 3,4 GHZ, 1COEUR, 2PROCESSEURS, RAM = 1,25 GO ', 'FONCTIONNE TRÈS LENTEMENT', 'OK', 3, 34, 1, 1, 'DESKTOP'),
(377, '0000-00-00', 'HP COMPAQ ELITE 8300 SFF', 'CZC3194PYB', 'INTE CORE(TM) I3-3220 CPU@ 3,30GHZ / RAM = 4,0GO / DD = 464 GO', 'FONCTIONNE', 'OK', 3, 34, 1, 1, 'DESKTOP'),
(378, '0000-00-00', 'HP OFFICE JET 5610', 'CN7AVF612RQ7310A', 'ALL-IN-ONE', 'HS', 'NOK', 3, 34, 1, 2, ''),
(379, '0000-00-00', 'HP LASER JET 1018', 'VNC4121186', '', 'FONCTIONNE MAIS TRÈS VIELLE', 'OK', 3, 34, 1, 2, ''),
(380, '0000-00-00', 'INSPIRON 3542', 'FT7C582', 'WINDOWS 10 PRO /  INTEL CELERON 2957U@ 1,4GHZ / RAM =  4,00GO / DD = 464 GO', 'UN PEU LENT', 'OK', 3, 34, 10, 1, 'LAPTOP'),
(381, '0000-00-00', ' HP PRO 3500 SERIES', 'TRF3430FVR', 'WINDOWS 7 PRO / INTEL PENTIUM CPU @ 3,00GHZ / RAM = 2,00 GO / DD = 465 GO', 'FONCTIONNE MAIS S\'ÉTEINT SEUL SOUVENT. L\'ÉCRAN SE RENVERSE PAR MOMENT. ORDINATEUR TRÈS LENT', 'OK', 3, 34, 1, 1, 'DESKTOP'),
(382, '0000-00-00', ' HP PRO 3500 SERIES', 'CZC4112VKQ', 'WINDOWS 10 PRO / INTEL CORE(TM)I3-3240 CPU@ , 3,4GO / RAM = 4,0GO / DD = 465 GO', 'FONCTIONNE', 'OK', 3, 34, 1, 1, 'DESKTOP'),
(383, '0000-00-00', ' HP PRO 3500 SERIES', 'CZC34006XZ', 'WINDOWS 10 PRO / INTEL CORE(TM)I3-3240 CPU@ , 3,4GO / RAM = 4,0GO / DD = 465 GO', 'FONCTIONNE MAIS UN PEU LENT', 'OK', 3, 34, 1, 1, 'DESKTOP'),
(384, '0000-00-00', 'HOME GATE WAY', 'ZTE EGBMJA 501572', '', 'HS', 'NOK', 3, 34, 15, 17, 'HOME BOX'),
(385, '0000-00-00', 'DELL', '', '', 'HS', 'NOK', 3, 34, 10, 16, ''),
(386, '0000-00-00', '2011X', 'CNC130P820N', '', 'RAYURES OBSERVÉES', 'OK', 3, 33, 1, 3, ''),
(387, '0000-00-00', 'HP COMPAQ DX7400 MT', 'CZC8312R2D', 'PENTIUM DUAL E2200; 2GO; 256GO; WINDOWS 7; OFFICE 2007', 'BRUIT AU DÉMARRAGE; LENT', 'OK', 3, 33, 1, 1, 'DESKTOP'),
(388, '0000-00-00', 'LV2011', 'CNC622P0QF', '', 'RAYURES OBSERVÉES', 'OK', 3, 33, 1, 3, ''),
(389, '0000-00-00', 'HP 280 G1 MT', '4CE6450MCY', 'PENTIUM G3260; 4GO; 500GO; WINDOWS 7; OFFICE 2007', 'FONCTIONNE BIEN', 'OK', 3, 33, 1, 1, 'DESKTOP'),
(390, '0000-00-00', 'LASERJET PRO MFP M125A', 'CNB6J74CJH', '', 'FONCTIONNE BIEN', 'OK', 3, 33, 1, 2, ''),
(391, '0000-00-00', 'LNKTANK WIRELESS 415', 'CN87U3G30P', '', 'FONCTIONNE BIEN', 'OK', 3, 33, 1, 2, ''),
(392, '0000-00-00', 'V214A', 'CNC9190QQ0', '', 'FONCTIONNE BIEN', 'OK', 3, 33, 1, 3, ''),
(393, '0000-00-00', 'HP DESKTOP PRO G2', '4CE9010QM4', 'PENTIUM GOLD G5500; 4GO; 500GO; WINDOWS 10; OFFICE 2013', 'LENT AU DÉMARRAGE', 'OK', 3, 33, 1, 1, 'DESKTOP'),
(394, '0000-00-00', 'LCD PROJECTOR', '', '', 'FONCTIONNE BIEN', 'OK', 1, 33, 0, 6, ''),
(395, '0000-00-00', 'HP DESKJET D1560', 'TH86J315BF', '', 'PROBLÈME D\'ENCRE', 'OK', 3, 33, 1, 2, ''),
(396, '0000-00-00', 'DESKJET 2540 ALL-IN-ONE SERIES', 'CN4353B45V', '', 'PROBLÈME D\'ENCRE', 'OK', 3, 33, 1, 2, ''),
(397, '0000-00-00', 'EASYBOX ', '', '', 'FONCTIONNE BIEN', 'OK', 4, 33, 0, 17, ''),
(398, '0000-00-00', 'HP DESKTOP M01-F1XXX', '4CE1191V2R', 'CORE I3; 8GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN, OFFICE NON ACTIVÉ', 'OK', 4, 29, 1, 1, 'DESKTOP'),
(399, '0000-00-00', 'P22VG4', 'CN42161CDK', '', 'FONCTIONNE BIEN', 'OK', 4, 29, 1, 3, ''),
(400, '0000-00-00', 'BV1000I-GR', '9B2144A32311', '', 'FONCTIONNE BIEN', 'OK', 4, 29, 12, 4, ''),
(401, '0000-00-00', 'V214A', 'CNC8300QS4', '', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 3, ''),
(402, '0000-00-00', 'DESKJET 2130', 'CN6CG474G1', '', 'HORS SERVICE', 'NOK', 3, 29, 1, 2, ''),
(403, '0000-00-00', 'HP PRODESK 400 G2 MT', 'SGH503PS8', 'PENTIUM; 6GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 1, 'DESKTOP'),
(404, '0000-00-00', 'HP 290 G1 MT;', '4CE7233X5T', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 1, 'DESKTOP'),
(405, '0000-00-00', 'P221', '6CM4033GV4', '', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 3, ''),
(406, '0000-00-00', 'TI-1000VA', 'ZX200901684', '', 'BATTÉRIE DÉFAILLANTE', 'NOK', 3, 29, 14, 4, ''),
(407, '0000-00-00', 'HP212A', 'CNC80805Q4', '', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 3, ''),
(408, '0000-00-00', 'HP 280 G1 MT;', 'TRF53814RX', 'PENTIUM; 2GO; 500GO; WINDOWS 10; OFFICE 2013', 'DÉMARRAGE LENT, AUGMENTER LA RAM', 'OK', 3, 29, 10, 1, 'DESKTOP'),
(409, '0000-00-00', 'LASERJET PRO MFP M130A', 'VNFY35833', '', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 2, ''),
(410, '0000-00-00', 'MG2540S', 'AFX573714', '', 'MANQUE D\'ENCRE', 'OK', 3, 29, 9, 2, ''),
(411, '0000-00-00', 'V212A', 'CNC548063G', '', 'FONCTIONNE BIEN', 'OK', 3, 29, 1, 3, ''),
(412, '0000-00-00', 'HP 280 G1 MT;', 'CZC6178C6F', 'PENTIUM; 4GO; 500GO; WINDOWS 7; OFFICE 2007', 'LENT', 'OK', 3, 29, 1, 1, 'DESKTOP'),
(413, '0000-00-00', 'DESKTOP-85BFAP2', 'NEANT', 'WINDOWS 10 PRO 64 BITS, CORE I3-530 CPU, RAM 4GO, DD 200GO', 'RAS', 'OK', 3, 44, 41, 1, 'DESKTOP'),
(414, '0000-00-00', 'ECRAN', 'CNT003C498', 'COMPAQ', 'RAS', 'OK', 3, 44, 1, 3, ''),
(415, '0000-00-00', 'IMPRIMANTE', 'MXFCHCL05H', 'HP LASERJET 500MFP M525', 'RAS', 'OK', 3, 44, 1, 2, ''),
(416, '0000-00-00', 'EG500 ', '1V42V4J', 'WINDOWS 10 PRO 64 BITS, DUAL CORE , RAM 2GO, DD 250GO', 'RAS', 'OK', 3, 44, 10, 1, 'DESKTOP'),
(417, '0000-00-00', 'ECRAN', '3CQ02946WP', 'HP COMPAQ LA2205WG', 'RAS', 'OK', 3, 44, 1, 3, ''),
(418, '0000-00-00', 'IMPRIMANTE', 'CNB6J88GD5', 'HP LASERJET PRO MFP M125A', 'RAS', 'OK', 3, 44, 1, 2, ''),
(419, '0000-00-00', 'ORDINATEUR HP', '2UA84909SS', 'HP', 'HS', 'NOK', 1, 44, 1, 1, 'DESKTOP'),
(420, '0000-00-00', 'ECRAN', 'CN-OT443R-72872-06T-A7VM', 'DELL', 'HS', 'NOK', 1, 44, 10, 3, ''),
(421, '0000-00-00', 'IMPRIMANTE', 'CN54L2V1MJ', 'HP DESKJET 1510', 'RAS', 'OK', 1, 44, 1, 2, ''),
(422, '0000-00-00', 'INTERNET', 'B622-335', 'FLYBOX 4G+ ', 'RAS', 'OK', 1, 44, 30, 17, 'FLYBOX 4G+ '),
(423, '0000-00-00', 'ORDINATEUR HP', 'CZC2156JFY', 'HP', 'HS', 'NOK', 4, 44, 1, 1, 'DESKTOP'),
(424, '0000-00-00', 'ECRAN', 'CN742WW', 'HP L1906', 'HS', 'NOK', 4, 44, 1, 3, ''),
(425, '0000-00-00', 'DESKTOP-68K1V98', '8CC147QDJ', 'WINDOWS 10 PRO 64 BITS, CORE I3-10110U,  RAM 4GO, DD 1 TERA', '', 'OK', 4, 18, 1, 1, 'ALL IN ONE'),
(426, '0000-00-00', 'IMPRIMANTE', 'PRO MFP M479FNW', 'COLO LASERJET PRO MFP M479 FNW', 'RAS', 'OK', 4, 18, 1, 2, ''),
(427, '0000-00-00', 'INTERNET', 'REP110/PB037', 'FIBRE OPTIQUE ORANGE', 'RAS', 'OK', 1, 18, 30, 17, 'FIBRE OPTIQUE ORANGE'),
(428, '0000-00-00', 'DESKTOP-7AOMVBF', '8CC1474Q97', 'WINDOWS 10 PRO 64 BITS, CORE I3-10110U, RAM 4GO, DD 1TERA', '', 'OK', 3, 18, 1, 1, 'ALL IN ONE'),
(429, '0000-00-00', 'DESKTOP-4QMM64L', '8CC1474QC2', 'WINDOWS 10 PRO, CORE I3-10110U, RAM 4GO, DD 1 TERA', '', 'OK', 3, 18, 1, 1, 'ALL IN ONE'),
(430, '0000-00-00', 'IMPRIMANTE', 'CNB1PDQ5B3', 'HP COLOR LASER JET MFP 178NW', 'RAS', 'OK', 1, 18, 1, 2, ''),
(431, '0000-00-00', 'DESKTOP-UUIOKIU', 'CND1382FZX', 'WINDOWS 10 FAMILLE', 'RAS, LENT DEPUIS L\'ACQUISITION', 'OK', 2, 18, 1, 1, 'LAPTOP'),
(432, '0000-00-00', 'DESKTOP-UAA6V4L', '8CC1474QG5', 'WINDOWS 10 PRO 64 BITS, CORE I3-10110U CPU, RAM 4GO, DD 1TERA', '', 'OK', 2, 15, 1, 1, 'ALL IN ONE'),
(433, '0000-00-00', 'ONDULEUR', '9C0063001', 'ETN', 'RAS', 'OK', 2, 15, 16, 4, ''),
(434, '0000-00-00', 'DESKTOP-IUTBQHS', 'CND1382G17', 'WINDOWS 10 PRO 64 BITS, CORE I3-1115G4 CPU, RAM 4GO, DD 1TERA', 'RAS', 'OK', 3, 15, 1, 1, 'LAPTOP'),
(435, '0000-00-00', 'DESKTOP-8N2PGVF', 'CND1382FPL', 'WINDOWS 10 PRO 64 BITS, CORE I3-1115G4 CPU, RAM 4GO, DD 1TERA', 'RAS', 'OK', 3, 15, 1, 1, 'LAPTOP'),
(436, '0000-00-00', 'IMAC', 'NEANT', 'MACBOOK PRO', 'RAS', 'OK', 1, 15, 17, 1, 'IMAC'),
(437, '0000-00-00', 'IMPRIMANTE', 'CNB2Q5QH22', 'HP COLORLASER MFP 178NW', 'RAS', 'OK', 1, 15, 1, 2, ''),
(438, '0000-00-00', 'ONDULEUR', '9C0063001', 'ETN', 'RAS', 'OK', 1, 15, 16, 4, ''),
(439, '0000-00-00', 'DESKTOP-D33BK02', '8CC1474QGJ', 'WINDOWS 10 PRO 64 BITS, CORE I3-10110U CPU, RAM 4GO, DD 1TERA', '', 'OK', 4, 15, 1, 1, 'ALL IN ONE'),
(440, '0000-00-00', 'IMPRIMANTE', 'CNB2Q5QGW7', 'HP COLORLASER MFP 178NW', 'RAS', 'OK', 4, 15, 1, 2, ''),
(441, '0000-00-00', 'ONDULEUR', '9C00-63001', 'ETN', 'RAS', 'OK', 4, 15, 16, 4, ''),
(442, '0000-00-00', 'INTERNET', 'REP110/PB038/PT05', 'FIBRE OPTIQUE ORANGE', 'RAS', 'OK', 1, 15, 30, 17, 'FIBRE OPTIQUE ORANGE'),
(443, '0000-00-00', 'DESKTOP-869UK3B', '4CE130YY39', 'WINDOWS 10 PRO 64 BITS, CORE I5-10400 CPU, RAM 4GO, DD 500', 'RAS', 'OK', 7, 19, 1, 1, 'DESKTOP'),
(444, '0000-00-00', 'ECRAN', 'CN41282144', 'ECRAN', 'RAS', 'OK', 7, 19, 1, 3, ''),
(445, '0000-00-00', 'ONDULEUR', 'DVR-2000 2000VA', 'PHILUX DVR-2000 VA', 'RAS', 'OK', 7, 19, 25, 4, ''),
(446, '0000-00-00', 'DESKTOP-IMAKK12', '4CE130YY76', 'WINDOWS 10 PRO 64 BITS, CORE I5-10400 CPU, RAM 4GO, DD 500 GO', 'RAS', 'OK', 4, 19, 1, 1, 'DESKTOP'),
(447, '0000-00-00', 'ECRAN', 'CN41282128', 'HP', 'RAS', 'OK', 4, 19, 1, 3, ''),
(448, '0000-00-00', 'IMPRIMANTE', 'MFP M28-M31', 'HP LASERJET MFP M28-M31', 'RAS', 'OK', 4, 19, 1, 2, ''),
(449, '0000-00-00', 'IMPRIMANTE', 'VNC4K32088', 'COLOR LASERJET PRO MFP M182N', 'RAS', 'OK', 1, 19, 1, 2, ''),
(450, '0000-00-00', 'VIDEO PROJECTEUR', 'X88TT2204456', 'EPSON', 'RAS', 'OK', 1, 19, 4, 6, ''),
(451, '0000-00-00', 'DESKTOP- PPN884', '8CC926182H', 'WINDOWS 11 FAMILLE, CORE I5-8400T CPU, RAM 8GO, DD 1TERA', '', 'OK', 3, 10, 1, 1, 'ALL IN ONE'),
(452, '0000-00-00', 'IMPRIMANTE', 'VNFNC39337', 'LASERJET PRO MFP M130NW', 'RAS', 'OK', 3, 10, 1, 2, ''),
(453, '0000-00-00', 'DESKTOP- IPQHIFQ', 'NEANT', 'WINDOWS 10 FAMILLE, CORE I5-8400T CPU, RAM 8GO, DD 1TERA', '', 'OK', 3, 10, 1, 1, 'ALL IN ONE'),
(454, '0000-00-00', 'IMPRIMANTE', 'VNFNC39358', 'LASERJET PRO MFP M130NW', 'RAS, MAIS TAMBOUR A REMPLACER', 'OK', 3, 10, 1, 2, ''),
(455, '0000-00-00', 'INTERNET', 'ZXHNF660', 'LIVEBOX ORANGE ZTE', 'RAS', 'OK', 3, 10, 15, 17, 'LIVEBOX ORANGE ZTE'),
(456, '0000-00-00', 'YASSELOU', '9Q5YJ32', 'WINDOWS 8 PRO 32 BITS, CORE I3-4160 CPU RAM 4GO, DD 500GO ', 'RAS', 'OK', 4, 12, 1, 1, 'DESKTOP'),
(457, '0000-00-00', 'ECRAN', '3CQ030N9LJ', 'HP S 2031A', 'RAS', 'OK', 4, 12, 1, 3, ''),
(458, '0000-00-00', 'IMPRIMANTE', 'VNF3R04627', 'HP LASERJET PRO MFP227 SDN', 'RAS', 'OK', 4, 12, 1, 2, ''),
(459, '0000-00-00', 'IMPRIMANTE', '8121-0731', 'COLOR LASERJET PRO MFP M479FNW', 'RAS', 'OK', 1, 12, 1, 2, ''),
(460, '0000-00-00', 'ORDINATEUR HP', 'CZC70771XV', 'HP', 'RAS', 'OK', 2, 12, 1, 1, 'DESKTOP'),
(461, '0000-00-00', 'ECRAN', 'CNC848075D', 'HP V213A', 'RAS', 'OK', 2, 12, 1, 3, '');
INSERT INTO `materiel_materiel` (`id`, `DateAcquisition`, `DesiMateriel`, `NumSerMateriel`, `CaractMateriel`, `Observation`, `Statut`, `RefBureau_id`, `RefDirection_id`, `RefMarque_id`, `RefTypeMateriel_id`, `Precision`) VALUES
(462, '0000-00-00', 'IMPRIMANTE', 'VNF3R04470', 'LASERJET PRO MFP M227SDN', 'RAS', 'OK', 2, 12, 1, 2, ''),
(463, '0000-00-00', 'DESKTOP-GQKNU7E', 'CZC3492Y8K', 'WINDOWS 10 PRO 64 BITS, DUAL CORE CPU RAM 2GO, DD 500GO', 'RAS', 'OK', 3, 12, 1, 1, 'DESKTOP'),
(464, '0000-00-00', 'ECRAN', 'JHYNX72', 'DELL', 'RAS', 'OK', 3, 12, 10, 3, ''),
(465, '0000-00-00', 'DESKTOP-UUVCDM7', 'NEANT', 'WINDOWS 10 PRO 64 BITS, CORE I3-8100 RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 12, 1, 1, 'DESKTOP'),
(466, '0000-00-00', 'ECRAN', 'CNC84322G9', 'HP V214A', 'RAS', 'OK', 3, 12, 1, 3, ''),
(467, '0000-00-00', 'DESKTOP-ABO2HRE', 'NEANT', 'WINDOWS 10 PRO 64 BITS, INTEL CELERON N4000 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 12, 1, 1, 'LAPTOP'),
(468, '0000-00-00', 'INTERNET', 'NEANT', 'LIVEBOIX', 'RAS', 'OK', 1, 12, 30, 17, 'LIVEBOIX'),
(469, '0000-00-00', 'DESKTOP-DAOGOF3', '4CE215C4B6', 'WINDOWS 10 PRO 64 BITS, CORE I3-10100 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 4, 11, 1, 1, 'DESKTOP'),
(470, '0000-00-00', 'ECRAN', 'NEANT', 'ECRAN HP', 'RAS', 'OK', 4, 11, 1, 3, ''),
(471, '0000-00-00', 'IMPRIMANTE', 'NEANT', 'COLOR LASERJET MFP M177FW', 'RAS', 'OK', 4, 11, 1, 2, ''),
(472, '0000-00-00', 'INTERNET', 'NEANT', 'FIBRE ORANGE', 'RAS', 'OK', 3, 11, 30, 17, 'FIBRE ORANGE'),
(473, '0000-00-00', 'DESKTOP-HL16V01', '4CE9491QD2', 'WINDOWS 10 PRO 64 BITS, CORE I3-8100 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 4, 11, 1, 1, 'DESKTOP'),
(474, '0000-00-00', 'ECRAN', 'CNC9453N4H', 'HP V2140', 'RAS', 'OK', 4, 11, 1, 3, ''),
(475, '0000-00-00', 'HP HEWLETT-PACKARD', '6CI3503V22', 'WINDOWS 8,1 PRO 64 BITS, CORE I3-4010U, RAM 8GO, DD 1TERA', '', 'OK', 4, 11, 1, 1, 'ALL IN ONE'),
(476, '0000-00-00', 'DESKTOP-F63QR7V', '4CE9491QYG', 'WINDOWS 10 PRO 64 BITS, CORE I3-8100 CPU, RAM 4GO, DD 1 TERA', 'RAS', 'OK', 5, 11, 1, 1, 'DESKTOP'),
(477, '0000-00-00', 'ECRAN', 'NEANT', 'HP 23VX', 'RAS', 'OK', 5, 11, 1, 3, ''),
(478, '0000-00-00', 'DESKTOP-JJMJ00A', 'CND7259WHK', 'WINDOWS 10 PRO 64 BITS, CORE I3-5005U CPU, RAM 8GO, DD 1 TERA', 'RAS', 'OK', 5, 11, 1, 1, 'LAPTOP'),
(479, '0000-00-00', 'DESKTOP-Q4FUD2O', 'CND9482Z90', 'WINDOWS 10 PRO 64 BITS, INTEL CELERON CPU N3060, RAM 4GO, DD 500GO', 'RAS', 'OK', 16, 11, 1, 1, 'LAPTOP'),
(480, '0000-00-00', 'DESKTOP-345E7CR', '8CC64113Y7', 'WINDOWS 10 PRO 64 BITS, CORE I3-6100U, RAM 8GO, DD 1 TERA', '', 'OK', 5, 11, 1, 1, 'ALL IN ONE'),
(481, '0000-00-00', 'IMPRIMANTE', 'LASERJET M102A', 'LASERJET PRO M102A', 'HS', 'NOK', 5, 11, 1, 2, ''),
(482, '0000-00-00', 'ORDINATEUR', 'SGH709SB3S', 'HP', 'HS', 'NOK', 5, 11, 1, 1, 'DESKTOP'),
(483, '0000-00-00', 'ECRAN', 'NEANT', 'HP 23W', 'RAS', 'OK', 5, 11, 1, 3, ''),
(484, '0000-00-00', 'IMPRIMANTE', 'VNCC500612', 'COLOR LASERJET MFP M180N', 'RAS', 'OK', 6, 11, 1, 2, ''),
(485, '0000-00-00', 'TELEPHONE', 'NEANT', 'PANASONIC ', 'RAS', 'OK', 6, 11, 39, 12, ''),
(486, '0000-00-00', 'VIDEO PROJECTEUR', 'M271X ', 'M271X NEC', 'RAS', 'OK', 1, 11, 45, 6, ''),
(487, '0000-00-00', 'IGT-PC HEWLETT PACKARD', '4CE249003T', 'WINDOWS 7 PRO 32 BITS, INTEL PENTIUM RAM 2GO, DD 500GO', 'RAS', 'OK', 6, 11, 1, 1, 'DESKTOP'),
(488, '0000-00-00', 'ECRAN', 'N2116', 'EXPER', 'RAS', 'OK', 6, 11, 36, 3, ''),
(489, '0000-00-00', 'DESKTOP-3ONR4NG', 'CND2046JGY', 'WINDOWS 10 PRO 64 BITS DUAL CORE CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 11, 1, 1, 'LAPTOP'),
(490, '0000-00-00', 'DESKTOP-', 'NEANT', 'WINDOWS 10 PRO 64 BITS DUAL CORE CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 11, 1, 1, 'LAPTOP'),
(491, '0000-00-00', 'HEPPRO-PC', 'TRF3380450', 'WINDOWS 7 PRO 64 BITS, DUAL CORE CPU G2030, RAM 2GO, DD 500 GO', 'RAS', 'OK', 4, 31, 1, 1, 'DESKTOP'),
(492, '0000-00-00', 'ECRAN', '3CQ8510V91', 'HP L1908W', 'RAS', 'OK', 4, 31, 1, 3, ''),
(493, '0000-00-00', 'IMPRIMANTE', 'VNF7Q26472', 'HP LASERJET P1102', 'RAS, MAIS QUELQUES BOURRAGES PAR MOMENT', 'OK', 4, 31, 1, 2, ''),
(494, '0000-00-00', 'IMPRIMANTE', 'VNB8J2LH4', 'COLOR LASERJET PRO MFP M277N', 'RAS', 'OK', 4, 31, 1, 2, ''),
(495, '0000-00-00', 'ONDULEUR', 'AVRA1000', 'MERCURY', 'RAS', 'OK', 4, 31, 38, 4, ''),
(496, '0000-00-00', 'DESKTOP-IGFC30', '2UA512165J', 'WINDOWS 10 PRO 64 BITS, CORE I3-4130 CPU, RAM 4GO, DD 500 GO', 'RAS', 'OK', 1, 31, 1, 1, 'DESKTOP'),
(497, '0000-00-00', 'ECRAN', '3CQ130108B', 'HP', 'RAS', 'OK', 1, 31, 1, 3, ''),
(498, '0000-00-00', 'IMPRIMANTE', 'KNJW10237', 'CANON', 'RAS', 'OK', 1, 31, 9, 2, ''),
(499, '0000-00-00', 'ONDULEUR', 'E2203078215', 'TOPLINK 650VA', 'RAS', 'OK', 1, 31, 14, 4, ''),
(500, '0000-00-00', 'GUEI-PC', 'CZC931631G', 'WINDOWS 7 PRO 32 BITS, DUAL CORE E5300 CPU, RAM 2GO, DD 500GO', 'HS', 'NOK', 3, 31, 1, 1, 'DESKTOP'),
(501, '0000-00-00', 'ECRAN', 'CNC242PLNC', 'W2072A', 'RAS', 'OK', 3, 31, 1, 3, ''),
(502, '0000-00-00', 'IMPRIMANTE', 'CNCJB36449', 'HP LASERJET P2055D', 'TIRAGE TRES LENTE, BOURRAGE', 'OK', 3, 31, 1, 2, ''),
(503, '0000-00-00', 'IMPRIMANTE', '1H69E9ICJC', 'HP DESKJET F4283', 'HS', 'NOK', 3, 31, 1, 2, ''),
(504, '0000-00-00', 'DESKTOP-JV9VJOS', '4CE01622ZZ', 'WINDOWS 10 PRO 64 BITS, CORE I3-9100 CPU, RAM 4GO, DD 1 TERA', 'RAS', 'OK', 3, 31, 1, 1, 'DESKTOP'),
(505, '0000-00-00', 'ECRAN', 'CNC95116XY', 'HP', 'RAS ', 'OK', 3, 31, 1, 3, ''),
(506, '0000-00-00', 'HP', 'CW202ES ABF', 'DESKTOP', 'HS', 'NOK', 3, 31, 1, 1, 'DESKTOP'),
(507, '0000-00-00', 'ECRAN', 'CNN8011FBS', 'HP L1908W', 'HS', 'NOK', 3, 31, 1, 3, ''),
(508, '0000-00-00', 'DESKTOP-35BRMT4', 'CZC3032FT3', 'WINDOWS 10 PRO, DUAL CORE G645, RAM 2GO, DD 250GO', 'RAS', 'OK', 3, 31, 1, 1, 'DESKTOP'),
(509, '0000-00-00', 'ECRAN', '3CQ9276085', 'HP LE1901W', 'RAS', 'OK', 3, 31, 1, 3, ''),
(510, '0000-00-00', 'IMPRIMANTE', 'CN13821KCW', 'HP DESKJET 1000', 'HS', 'NOK', 3, 31, 1, 2, ''),
(511, '0000-00-00', 'HP ', '8CQ149048Y', '1,2 TO; 8GO; 3GHZ', 'OK', 'OK', 3, 20, 1, 1, 'ALL IN ONE'),
(512, '0000-00-00', 'HP DESKJET 2135', 'CN73V4B40C', '', '', 'OK', 3, 20, 1, 2, ''),
(513, '0000-00-00', 'PIXMA G3411', 'KNLB64321', '', '', 'OK', 3, 20, 9, 2, ''),
(514, '0000-00-00', 'HP W1972A', '6CM311117T', '', '', 'OK', 3, 20, 1, 3, ''),
(515, '0000-00-00', 'HP PRO 3500', 'CZC23378ZRW', '', 'EN PANNE', 'NOK', 3, 20, 1, 1, 'DESKTOP'),
(516, '0000-00-00', 'R', 'CR19110319', '', 'EN PANNE', 'NOK', 3, 20, 46, 4, ''),
(517, '0000-00-00', 'UPS', 'H438204184', '', 'EN PANNE', 'NOK', 3, 20, 8, 4, ''),
(518, '0000-00-00', 'HP 20 KD', '6CM6161RRC', '', '', 'OK', 3, 20, 1, 3, ''),
(519, '0000-00-00', 'HP 280 G1', 'TRF552016X', '4GO; 3,2GHZ; 500GO', 'OK', 'OK', 3, 20, 1, 1, 'DESKTOP'),
(520, '0000-00-00', 'HP DESKJET 2540', 'CN3CB2FHSX', '', '', 'OK', 3, 20, 1, 2, ''),
(521, '0000-00-00', 'HP 20 KD', '6CM6040JQM', '', '', 'OK', 3, 20, 1, 3, ''),
(522, '0000-00-00', 'HP 280 G1', 'TRF5451180', '4GO; 3,2GHZ; 500GO', 'OK', 'OK', 3, 20, 1, 1, 'DESKTOP'),
(523, '0000-00-00', 'UPS', 'E1606016053', '', '', 'OK', 3, 20, 8, 4, ''),
(524, '0000-00-00', 'HP DESKJET 2540', 'CN3CB2FH68', '', '', 'OK', 3, 20, 1, 2, ''),
(525, '0000-00-00', 'HP V214 A', 'CNC0132G90', '', '', 'OK', 3, 20, 1, 3, ''),
(526, '0000-00-00', 'HP PRO 300 G3', '4CE0194999', '4GO; 3,6GHZ; 1TO', 'OK', 'OK', 3, 20, 1, 1, 'DESKTOP'),
(527, '0000-00-00', 'MG 2540 S', 'AFJY57408', '', 'EN PANNE', 'NOK', 3, 20, 9, 2, ''),
(528, '0000-00-00', 'HP DESKJET 2700', 'CN06I3W0ZH', '', '', 'OK', 3, 20, 1, 2, ''),
(529, '0000-00-00', 'HP V214 A', 'CNC02228YM', '', '', 'OK', 3, 20, 1, 3, ''),
(530, '0000-00-00', 'HP PRO 300 G3', '4CE0383L1F', '4GO; 3,6GHZ; 1TO', 'OK', 'OK', 3, 20, 1, 1, 'DESKTOP'),
(531, '0000-00-00', 'HP-PC', 'CND825BN4H', 'INTEL CORE13-DQ0XXX; 4GO;1TO; WINDOWS 10', 'FONCTIONNE BIEN', 'OK', 1, 24, 1, 1, 'DESKTOP'),
(532, '0000-00-00', 'V214A', 'CNC0191QWT', '', 'FONCTIONNE BIEN', 'OK', 1, 24, 1, 3, ''),
(533, '0000-00-00', 'LASERJET MFP 135A', '', '', 'FONCTIONNE BIEN', 'OK', 1, 24, 1, 2, ''),
(534, '0000-00-00', 'VR-S2000', '', '', 'FONCTIONNE BIEN', 'OK', 1, 24, 6, 4, ''),
(535, '0000-00-00', 'AVR1500VA', '', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 27, 4, ''),
(536, '0000-00-00', 'HP-PC', '4CE0211Y4M', 'HP DESKTOP PRO 300G3; INTEL CORE; 4GO; 1TO', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 1, 'DESKTOP'),
(537, '0000-00-00', 'V214A', 'CNC0211595', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 3, ''),
(538, '0000-00-00', 'LASERJET 107A', 'CNB3N92BDG', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 2, ''),
(539, '0000-00-00', 'TOURISME 2', '4CE747335ZH', 'HP 290 G1 MT; 4GO; 500GO; WINDOWS 10', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 1, 'DESKTOP'),
(540, '0000-00-00', 'LASERJET 107A', 'CNB2PCGX3C', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 2, ''),
(541, '0000-00-00', 'LV2011', 'CNC745NQ2F', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 3, ''),
(542, '0000-00-00', 'HP-PC', 'CZCG207WCF', 'HP 280 G2 MT; PENTIUM G4400; 4GO; 500GO; WINDOWS 10', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 1, 'DESKTOP'),
(543, '0000-00-00', 'V214A', 'CNC0191QWT', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 3, ''),
(544, '0000-00-00', 'HP-PC', 'CZC2184WG9', 'HP PRO 3400 MT; 1GO; 250GO; WINDOWS 10', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 1, 'DESKTOP'),
(545, '0000-00-00', 'LASERJET 107A', 'CNB3N92BFB', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 2, ''),
(546, '0000-00-00', '2011X', '', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 3, ''),
(547, '0000-00-00', 'HP-PC', 'CZC8013H62', 'HP COMPAQ 5700 MT; 2GO; 80GO; WINDOWS 7', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 1, 'DESKTOP'),
(548, '0000-00-00', 'HP', '', '', '', 'OK', 3, 24, 1, 2, ''),
(549, '0000-00-00', 'LASERJET P1102', 'VNC3933872', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 2, ''),
(550, '0000-00-00', 'HP*', 'CNB9G9338Q5', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 2, ''),
(551, '0000-00-00', 'YURAKU-YM17NPXA', '7720TG001592', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 0, 3, ''),
(552, '0000-00-00', 'LASERJET MFP 135A', 'VNC4526493', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 1, 2, ''),
(553, '0000-00-00', 'VR-S2000', '', '', 'FONCTIONNE BIEN', 'OK', 3, 24, 6, 4, ''),
(554, '0000-00-00', 'TOURISME', '4CE73638SU', 'WINDOWS 8 PRO 64 BITS, CORE I3-7100 CPU, RAM 4GO, DD 500GO', 'RAS MAIS LA SOURIS ET CLAVIER DOIVENT ETRE CHANGE', 'OK', 3, 39, 1, 1, 'DESKTOP '),
(555, '0000-00-00', 'ECRAN', 'V5J61AA', 'HP V197', 'RAS', 'OK', 3, 39, 1, 3, ''),
(556, '0000-00-00', 'IMPRIMANTE', 'KNLB89166', 'CANON G3411', 'RAS', 'OK', 3, 39, 9, 2, ''),
(557, '0000-00-00', 'INTERNET', 'P21867070024218088', 'BOX MTN', 'RAS', 'OK', 3, 39, 24, 17, 'BOX MTN'),
(558, '0000-00-00', 'IMPRIMANTE', 'CN4CN4F22Z', 'HP DESKJET 2540', 'HS', 'NOK', 3, 39, 1, 2, ''),
(559, '0000-00-00', 'DDF', 'TRF21904MW', 'WINDOWS 10 PRO 64 BITS, DUAL CORE CPU G630, RAM 4GO, DD 500GO', 'RAS, MAIS LE CLAVIER ET L\'ECRAN DOIVENT ETRE CHANGE', 'OK', 4, 39, 1, 1, 'DESKTOP '),
(560, '0000-00-00', 'ECRAN', '3CQ115OJNB', 'HP ', 'A CHANGER', 'NOK', 4, 39, 1, 3, ''),
(561, '0000-00-00', 'IMPRIMANTE', 'VNC3804084', 'COLOR LASERJET PRO MFP M180N', 'RAS', 'OK', 4, 39, 1, 2, ''),
(562, '0000-00-00', 'DESKTOP-HC9ETHF', 'CZC552397W', 'WINDOWS 10 FAMILLE 64 BITS, DUAL CORE CPU G3250, RAM 2GO, DD 500GO', 'RAS', 'OK', 3, 39, 1, 1, 'DESKTOP '),
(563, '0000-00-00', 'ECRAN', '3CQ5502650', 'HP 20WD', 'RAS', 'OK', 3, 39, 1, 3, ''),
(564, '0000-00-00', 'HP', 'CZC85042FZ', 'DESKTOP', 'HS', 'NOK', 3, 39, 1, 1, 'DESKTOP '),
(565, '0000-00-00', 'ECRAN', '3CQ844264Y', 'ECRAN', 'HS', 'NOK', 3, 39, 1, 3, ''),
(566, '0000-00-00', 'LA2006X', 'CNC244NRVC', '', 'HORS SERVICE', 'NOK', 3, 49, 1, 3, ''),
(567, '0000-00-00', 'HP-PC', 'CNG0399J2W', 'HP PRO 2000 MT', 'HORS SERVICE', 'NOK', 3, 49, 1, 1, 'DESKTOP'),
(568, '0000-00-00', '850VA', '', '', 'HORS SERVICE', 'NOK', 3, 49, 31, 4, ''),
(569, '0000-00-00', 'NEVERSTOP LASER MFP 1200W', 'CNBRM87071', '', 'FONCTIONNE BIEN', 'OK', 3, 49, 1, 2, ''),
(570, '0000-00-00', 'HP PRO 2000 MT', 'CNG0399J2B', 'CORE DUO; 4GO; 256GO; WINDOWS 10; OFFICE 2016', 'VIEUX MAIS FONCTIONNE', 'OK', 3, 49, 1, 1, 'DESKTOP'),
(571, '0000-00-00', 'LA2006X', 'CNC244NRZ7', '', 'FONCTIONNE BIEN', 'OK', 3, 49, 1, 3, ''),
(572, '0000-00-00', 'LASERJET PRO MFP M181 FW', 'VNF3N31863', '', 'FONCTIONNE BIEN', 'OK', 1, 49, 1, 2, ''),
(573, '0000-00-00', 'LASERJET PRO MFP M125A', 'CNB6HC4KGH', '', 'FONCTIONNE BIEN', 'OK', 4, 49, 1, 2, ''),
(574, '0000-00-00', 'L1908W', '3CQ90647X0', '', 'VIEUX MAIS FONCTIONNE', 'OK', 4, 49, 1, 3, ''),
(575, '0000-00-00', 'HP COMPAQ 6200 PRO MT PC', 'CZC2364TQQ', 'PENTIUM G630; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'VIEUX MAIS FONCTIONNE', 'OK', 4, 49, 1, 1, 'DESKTOP'),
(576, '0000-00-00', 'EASYBOX ', '', '', 'FONCTIONNE BIEN', 'OK', 4, 49, 0, 17, ''),
(577, '0000-00-00', 'HP LASERJET-P2035', 'CNCOJ09683', '', 'FONCTIONNE TRÈS LENTEMENT', 'OK', 4, 41, 1, 2, ''),
(578, '0000-00-00', 'HP DESKJET1510', 'CN4CJ2BOM5', 'ALL-IN-ONE SERIES', 'SCANNER SEUL QUI FONCTIONNE', 'NOK', 3, 41, 1, 2, ''),
(579, '0000-00-00', 'HP 280 GI MT', 'TRF5100 H2Y', 'WINDOWS 10 / INTEL® PENTIUM® CPU G3250@, 3,20GHZ, 2 CŒURS / RAM = 2,00GO / DD = 500 GO', 'FONCTIONNE LENTEMENT ET RÉFUSE DEDEMARRER SOUVENT', 'OK', 3, 41, 1, 1, 'DESKTOP'),
(580, '0000-00-00', 'COLOR LASERJET PRO MFP M17FW', '*', '', 'EN PANNE', 'NOK', 3, 27, 1, 2, ''),
(581, '0000-00-00', 'HP V 214 B', 'CNC9221RJ1', '', '', 'OK', 3, 27, 1, 3, ''),
(582, '0000-00-00', 'HP', '*', '4GO; 2,7GHZ; 500GO', 'OK', 'OK', 3, 27, 1, 1, 'DESKTOP'),
(583, '0000-00-00', 'UPS', '241512303190', '', '', 'OK', 3, 27, 18, 4, ''),
(584, '0000-00-00', 'HP V 214 B', 'CNC9491THB', '', '', 'OK', 3, 27, 1, 3, ''),
(585, '0000-00-00', 'HP', '*', '4GO; 3GHZ; 500GO', 'OK', 'OK', 3, 27, 1, 1, 'DESKTOP'),
(586, '0000-00-00', 'HP V214 B', 'CNC0081HLN', '', '', 'OK', 3, 27, 1, 3, ''),
(587, '0000-00-00', 'HP PRODESK 600G1', '2UA5412JKN', '4GO; 3,3GHZ; 500GO', 'OK', 'OK', 3, 27, 1, 1, 'DESKTOP'),
(588, '0000-00-00', 'UPS', '241512300262', '', '', 'OK', 3, 27, 18, 4, ''),
(589, '0000-00-00', 'HP V 214 B', 'CNC0081HML', '', '', 'OK', 3, 27, 1, 3, ''),
(590, '0000-00-00', 'HP PRODESK 600G1', '2UA5412JKN-1', '4GO; 3,2GHZ; 500GO', 'OK', 'OK', 3, 27, 1, 1, 'DESKTOP'),
(591, '0000-00-00', 'HP', '*', '', '', 'OK', 3, 27, 1, 3, ''),
(592, '0000-00-00', 'HP', '*', '4GO; 2,53GHZ; 500GO', 'OK', 'OK', 3, 27, 1, 1, 'DESKTOP'),
(593, '0000-00-00', 'HP DESKJET LNK ADV 4675', 'TH69R490CT', '', '', 'OK', 3, 27, 1, 2, ''),
(594, '0000-00-00', 'HP V41I', '1CR1290WJK', '4GO; 3GHZ; 500GO', '', 'OK', 3, 27, 1, 3, ''),
(595, '0000-00-00', 'HP 280 G1', 'CZC5110R5V', '', '', 'OK', 3, 27, 1, 1, 'DESKTOP'),
(596, '0000-00-00', 'ORIT', 'E1902031262', '', 'OK', 'OK', 3, 27, 31, 4, ''),
(597, '0000-00-00', 'HP W2072 A', 'CNC504NSFQ', '', '', 'OK', 3, 26, 1, 3, ''),
(598, '0000-00-00', 'HP 280 G1', 'CZC5172T4H', 'CORE I3; 4GO;3,6GHZ; 500GO', 'OK', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(599, '0000-00-00', 'HP LASERTJET PRO', 'VNFYY34782', '', '', 'OK', 3, 26, 1, 2, ''),
(600, '0000-00-00', 'LEADER', '*', '', 'EN PANNE', 'NOK', 3, 26, 6, 4, ''),
(601, '0000-00-00', 'HP 300 G6 MT', '4CE1112DWQ', '1TO; 3,6GHZ; 4GO', 'OK', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(602, '0000-00-00', 'LASERJET PRO M102 W', 'VNC3Y05414', '', '', 'OK', 3, 26, 1, 2, ''),
(603, '0000-00-00', 'LEADER', '*', '', '', 'OK', 3, 26, 6, 4, ''),
(604, '0000-00-00', 'HP 214 A', 'CNC0222QWV', '', 'EN PANNE', 'NOK', 3, 26, 1, 3, ''),
(605, '0000-00-00', 'HP PRO 300 G3', '4CEB3B3L9X', '', 'OK', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(606, '0000-00-00', 'HP LASERTJET PRO M12A', 'VNCV121458', '', '', 'OK', 3, 26, 1, 2, ''),
(607, '0000-00-00', 'VOLTPLUS', '120201C1026-1120', '', '', 'OK', 3, 26, 35, 4, ''),
(608, '0000-00-00', 'HP LASERTJET PRO 1102', 'VNF8X08873', '', '', 'OK', 3, 26, 1, 2, ''),
(609, '0000-00-00', 'HP V214 A', 'CNC84500YFR', '', '', 'OK', 3, 26, 1, 3, ''),
(610, '0000-00-00', 'HP', '8CG91266D4', '4GO; 3,7GHZ; 1TO', 'OK', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(611, '0000-00-00', 'YAMAHA PUISSANCE', '*', '', '', 'OK', 3, 26, 1, 9, ''),
(612, '0000-00-00', 'HP 1272 A', '6CM3430143', '', '', 'OK', 3, 26, 1, 3, ''),
(613, '0000-00-00', 'HP PRO 3500', 'TRF35211J7', '2GO; 3GHZ; 350GO', 'OK', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(614, '0000-00-00', 'HP LASERTJET PRO 1102', 'VNF4X06567', '', '', 'OK', 3, 26, 1, 2, ''),
(615, '0000-00-00', 'TECH-COM', '24136329523', '', 'EN PANNE', 'NOK', 3, 26, 18, 4, ''),
(616, '0000-00-00', 'JONCHN', '*', '', '', 'OK', 3, 26, 11, 9, ''),
(617, '0000-00-00', 'HPL1908 WI', 'CNC832K2G7', '', '', 'OK', 3, 26, 1, 3, ''),
(618, '0000-00-00', 'HP LASERTJET PRO M102W', 'VNC3Y05482', '', '', 'OK', 3, 26, 1, 2, ''),
(619, '0000-00-00', 'HP', '4CE1162R1J', 'CORE I3; 4GO;3,6GHZ; 1TO', '', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(620, '0000-00-00', 'YAMAHA PUISSANCE', '*', '', 'EN PANNE', 'NOK', 3, 26, 48, 9, ''),
(621, '0000-00-00', 'ELITE DISPLAY E202', '6CM0410SWK', '', 'EN PANNE', 'NOK', 3, 26, 1, 3, ''),
(622, '0000-00-00', 'HP W192 A', '6CM34303NX', '', '', 'OK', 3, 26, 1, 3, ''),
(623, '0000-00-00', 'HP LASERTJET PRO 1102', 'VNC3C36176', '', '', 'OK', 3, 26, 1, 2, ''),
(624, '0000-00-00', 'HP PRO 3500', 'TRF35211DJ', '2GO; 3GHZ; 500GO', 'OK', 'OK', 3, 26, 1, 1, 'DESKTOP'),
(625, '0000-00-00', 'DELL', '*', '2,96GHZ; 4GO; 500GO', 'OK', 'OK', 3, 26, 10, 1, 'DESKTOP'),
(626, '0000-00-00', 'X', 'CN-0V048Y-64180-365-0RKU', '', '', 'OK', 3, 26, 0, 3, ''),
(627, '0000-00-00', 'BOX ORANGE', 'GQQ7520608002829', '', '', 'OK', 3, 26, 0, 17, ''),
(628, '0000-00-00', 'HP', 'VNC3C1921', '', '', 'OK', 3, 26, 1, 2, ''),
(629, '0000-00-00', 'YAMAHA PUISSANCE', '*', '', '', 'OK', 3, 26, 48, 9, ''),
(630, '0000-00-00', 'I-SENSYS MF 3010', 'XFA9695T', '', '', 'OK', 3, 51, 9, 2, ''),
(631, '0000-00-00', 'HP 20KD', '6CM6102057', '', '', 'OK', 3, 51, 1, 3, ''),
(632, '0000-00-00', 'LITE-WAVE', '1501151200485', '', 'EN PANNE', 'NOK', 3, 51, 1, 4, ''),
(633, '0000-00-00', 'HP 280 G2 MT', 'CZC6368Y2W', 'CORE I3; 4GO; 3,7GHZ; 500GO', 'OK', 'OK', 3, 51, 1, 1, 'DESKTOP'),
(634, '0000-00-00', 'FLYBOX B612-233', '', '', '', 'OK', 3, 51, 0, 17, ''),
(635, '0000-00-00', 'HP W207 2A', 'CNC402PPQM', '', '', 'OK', 3, 51, 1, 3, ''),
(636, '0000-00-00', 'HP', '*', 'DUAL CORE; 4GO; 2,8GHZ; 500GO', 'OK', 'OK', 3, 51, 1, 1, 'DESKTOP'),
(637, '0000-00-00', 'HP OFFICEJET3833', 'CN78F4Q0D0', '', '', 'OK', 3, 51, 1, 2, ''),
(638, '0000-00-00', 'ORITE', '', '', 'EN PANNE', 'NOK', 3, 51, 31, 4, ''),
(639, '0000-00-00', 'HP DESKJET 1050', 'CN2BT3CHP6', '', '', 'OK', 3, 51, 1, 2, ''),
(640, '0000-00-00', 'LASERJET M1132 MFP', '**NJ8****K', '', '', 'OK', 3, 51, 1, 2, ''),
(641, '0000-00-00', 'HP 51932', '*', '', '', 'OK', 3, 51, 1, 3, ''),
(642, '0000-00-00', 'HP PAVILLON', 'CNX7180P48', 'DUAL CORE; 2GO; 1,8GHZ; 250GO', 'OK', 'OK', 3, 51, 1, 1, 'DESKTOP'),
(643, '0000-00-00', 'LENOVO', 'CB683-67001', '1GO; 3GHZ; 80GO', 'OK', 'OK', 3, 51, 7, 1, 'DESKTOP'),
(644, '0000-00-00', 'LITE-WAVE', '1501151103571', '', '', 'OK', 3, 51, 22, 4, ''),
(645, '0000-00-00', 'HP L2011', '*', '', '', 'OK', 3, 51, 1, 3, ''),
(646, '0000-00-00', 'HP LASERJET P1102', '*', '', 'EN PANNE', 'NOK', 3, 51, 1, 2, ''),
(647, '0000-00-00', 'HP COLOR LASERJET PRO', 'VNC3M31698', '', '', 'OK', 3, 51, 1, 2, ''),
(648, '0000-00-00', 'FIJITSU', 'YV3H700363', '', '', 'OK', 3, 51, 23, 3, ''),
(649, '0000-00-00', 'HP COMPAQ G200', 'MXL2180S5N', '', 'OK', 'OK', 3, 51, 1, 1, 'DESKTOP'),
(650, '0000-00-00', 'HP PRO 3500 SERIES MT', 'CZC41220Y7', '', '', 'OK', 3, 51, 1, 1, 'DESKTOP'),
(651, '0000-00-00', 'CANAON G3411', 'KNJW09639', '', 'FONCTIONNE', 'OK', 1, 52, 9, 2, ''),
(652, '0000-00-00', 'TOPLINK', 'TL 220300547', 'TL-1000VA', 'FONCTIONNE', 'OK', 1, 52, 14, 4, ''),
(653, '0000-00-00', 'G2 MT BUSINESS PC', 'CZC 6228J8N HP', 'WINDOWS 10 / HP PRO DESK 400 / INTEL CORE I4', 'PREND TROP DE TEMPS POUR S\'ALLUMER. NB: NE S\'EST PAS ALLUMÉ AVANT QUE JE NE QUITTE LE BUREAU', 'OK', 3, 52, 1, 1, 'DESKTOP'),
(654, '0000-00-00', 'TOPLINK', 'TL 220301748', 'TL-1000VA', 'FONCTIONNE', 'OK', 3, 52, 14, 4, ''),
(655, '0000-00-00', 'DESKTOP-LCORJI2', 'PF2LJMZ5', 'WINDOWS 10 PRO / 82C6 / AMD 3020E WITH RADEON GRAPHICS, 1200MHZ / RAM = 4,0 GO / DD = 930 GO', 'FONCTIONNE MAIS LA SOURI INTERNE A UN SOUCI', 'OK', 3, 52, 7, 1, 'LAPTOP'),
(656, '0000-00-00', 'TOURISME', '4CE731298L', 'WINDOWS 8.1 PRO / INTEL CORE I3-7100 CPU@ 3,9 GHZ / RAM = 4,0 GO / DD = 525 GO', 'FONCTIONNE . WINDOWS À RÉACTIVER', 'OK', 4, 52, 1, 1, 'DESKTOP'),
(657, '0000-00-00', 'TOPLINK', 'TL 220301747', 'TL-1000VA', 'FONCTIONNE', 'OK', 4, 52, 14, 4, ''),
(658, '0000-00-00', 'HP DESKTOP PRO 300 G6', '4CE1162PSJ', 'WINDOWS 10 PRO / INTEL CORE(TM) I3-10100 CPU@ 3,6 GHZ / RAM = 4,0 GO / DD = 930 GO', 'FONCTIONNE. SYSTÈME D\'EXPLOITATION À CHANGER', 'OK', 3, 52, 1, 1, 'DESKTOP'),
(659, '0000-00-00', ' HP 280 GT MT', 'CZC5393F7R', 'WINDOWS 7 PRO / INTEL COE I3-4160 CPU@ 3,6 GHZ / RAM = 4,0 GO / DD = 930 GO', 'FONCTIONNE AVEC UN SYSTÈME CARDUQUE', 'OK', 3, 52, 1, 1, 'DESKTOP'),
(660, '0000-00-00', 'HP DESKJET 1056', 'CN29519FN', '', 'ABSENCE DE CÂBLE DE CONNEXION. DONC NE FONCTIONNE PAS. A REMPLACER', 'NOK', 3, 52, 1, 2, ''),
(661, '0000-00-00', 'COLOR LASERJET PRO MFP M277N', 'VNBKK5G1WK', '', 'FONCTIONNE, MANQUE D\'ENCRE', 'OK', 3, 52, 1, 2, ''),
(662, '0000-00-00', 'TOPLINK', 'TL 220301745', 'TL-1000VA', 'FONCTIONNE', 'OK', 3, 52, 14, 4, ''),
(663, '0000-00-00', 'BACK-UPSES 700', '5B1436 TO2096', 'BE 700G-FR', 'N\'A JAMAIS FONCTIONNÉ', 'NOK', 3, 52, 12, 4, ''),
(664, '0000-00-00', 'DESKTOP-2K7TP1Y', 'PFOR16E8', 'WINDOWS 10 PRO / INTEL CELERON CPU N3060@ / 1,6GHZ / RAM = 4,0 GO / DD = 464 GO', 'TRÈS LENT', 'OK', 3, 52, 7, 1, 'LAPTOP'),
(665, '0000-00-00', 'DESKTOP- CAJ7GUN', 'TRF4140G0W', 'WINDOWS 10 PRO 64 BITS, DUAL CORE CPU G2030, RAM 4 GO, DD 1 TERA', 'RAS', 'OK', 1, 38, 1, 1, 'DESKTOP'),
(666, '0000-00-00', 'ECRAN', 'CNC521P35W', 'HP LV2011', 'RAS', 'OK', 1, 38, 1, 3, ''),
(667, '0000-00-00', 'IMPRIMANTE', 'CN21KCW1QT', 'HP DESKJET 2710', 'RAS', 'OK', 1, 38, 1, 2, ''),
(668, '0000-00-00', 'TELEPHONE', 'ZLTM30', 'ORANGE ZLTM60', 'RAS', 'OK', 1, 38, 30, 12, ''),
(669, '0000-00-00', 'PC', 'TRF4520SL4', 'WINDOWS 8 PRO 64 BITS, CORE I5-3340 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 4, 38, 1, 1, 'DESKTOP'),
(670, '0000-00-00', 'ECRAN', '3CQ4261YFO', 'HP V201A', 'RAS', 'OK', 4, 38, 1, 3, ''),
(671, '0000-00-00', 'IMPRIMANTE', 'VNC4G90341', 'HP LASERJET P2035', 'RAS', 'OK', 4, 38, 1, 2, ''),
(672, '0000-00-00', 'ONDULEUR', 'E2008007032', 'ORITE 1000VA', 'RAS', 'OK', 4, 38, 31, 4, ''),
(673, '0000-00-00', 'HP', 'SGH524P4DF', 'WINDOWS 8 PRO 64 BITS, CORE I3-4160 CPU , RAM 2GO, DD 500GO', 'RAS', 'OK', 3, 38, 1, 1, 'DESKTOP'),
(674, '0000-00-00', 'ECRAN', 'CNC406P9Z5', 'HP LV2011', 'RAS', 'OK', 3, 38, 1, 3, ''),
(675, '0000-00-00', 'IMPRIMANTE', 'NRDA341851', 'CANON', 'RAS', 'OK', 3, 38, 9, 2, ''),
(676, '0000-00-00', 'ONDULEUR', 'E2008007029', 'ORITE ', 'RAS', 'OK', 3, 38, 31, 4, ''),
(677, '0000-00-00', 'DESKTOP-8BCOAQP', '4CE9100K7F', 'WINDOWS 10 PRO 64 BITS, CORE I3-8100 CPU, RAM 4GO, DD 500GO', 'RAS', 'OK', 3, 38, 1, 1, 'DESKTOP'),
(678, '0000-00-00', 'ECRAN', 'CNC9100CH4', 'HP V24A', 'RAS', 'OK', 3, 38, 1, 3, ''),
(679, '0000-00-00', 'IMPRIMANTE', 'NRDA12287', 'CANON', 'RAS', 'OK', 3, 38, 9, 2, ''),
(680, '0000-00-00', 'ORDINATEUR HP', 'NEANT', 'CORE I3', 'RAS CODE, UTILISATEUR EN CONGE PAS ACCES', 'OK', 3, 38, 1, 1, 'DESKTOP'),
(681, '0000-00-00', 'ECRAN', '3CQ03401ZS', 'HP', 'RAS', 'OK', 3, 38, 1, 3, ''),
(682, '0000-00-00', 'IMPRIMANTE', 'CN45G172RT', 'HP DESKJET 1510', 'RAS', 'OK', 3, 38, 1, 2, ''),
(683, '0000-00-00', 'ONDULEUR', 'E2008007031', 'ORITE ', 'RAS', 'OK', 3, 38, 31, 4, ''),
(684, '0000-00-00', 'G2420', 'KMVW17429', 'PRINT-COPY-SCAN', 'FONCTIONNE', 'OK', 1, 36, 9, 2, ''),
(685, '0000-00-00', ' HP PRO 3500 SERIES', 'CZC23217SR', 'WINDOWS 10 PRO / INTEL PENTIUM CPU G640@ 2,8 GHZ / RAM = 4 GO / DD = 465 GO', 'FONCTIONNE', 'OK', 1, 36, 1, 1, 'DESKTOP'),
(686, '0000-00-00', 'TOPLINK', 'TL21072095', 'TL-1000VA', 'FONCTIONNE', 'OK', 1, 36, 14, 4, ''),
(687, '0000-00-00', 'HP PRO 3500 SERIES ', 'TRF4160KN4', 'WINDOWS 10 PRO / INTEL PENTIUM CPU G640@ 2,8 GHZ / RAM = 4 GO / DD = 465 GO', 'FONCTIONNE', 'OK', 4, 36, 1, 1, 'DESKTOP'),
(688, '0000-00-00', 'DELL', 'CN-082K5X-72972-48M-EABD', '', 'FONCTIONNE MAIS MANQUE DE CÂBLE D\'ALIMENTATION', 'OK', 4, 36, 10, 3, ''),
(689, '0000-00-00', 'HP COMPAQ', '2UA9060JJR', 'WINDOWS VISTA BUSINESS OEMACT / HP COMPAQDX2400 MICROTOWER', 'S\'ALLUME / TRÈS LENT', 'OK', 4, 36, 1, 1, 'DESKTOP'),
(690, '0000-00-00', 'HP', '', '', 'FONCTIONNE', 'OK', 4, 36, 1, 15, ''),
(691, '0000-00-00', 'HP', 'BATJDONBOG334', 'KU - 0316', '', 'OK', 4, 36, 1, 16, ''),
(692, '0000-00-00', 'LASERJET PRO MFPM 125A', 'CNB6J88CTM', '', 'SOUCI AU NIVEAU DE LA CATOUCH', 'OK', 3, 36, 1, 2, ''),
(693, '0000-00-00', 'DESKTOP-3AJQSVM', 'CZC212BX2C', 'WINDOWS 10 PRO /  INTEL PENTIUM CPU G630@ 2,7 GHZ /              RAM = 4 GO / DD = 930 GO', 'FONCTIONNE', 'OK', 3, 36, 1, 1, 'DESKTOP'),
(694, '0000-00-00', 'LIGHTWAVE', '1908200702141', 'LW UPS 650', 'HS', 'NOK', 3, 36, 22, 4, ''),
(695, '0000-00-00', 'HP PRO', 'CZC2118JXB', 'HP PRO 3400 SERIES MF', 'HS', 'NOK', 3, 36, 1, 1, 'DESKTOP'),
(696, '0000-00-00', 'ORITE', 'E2008007142', '1000 VA', 'FONCTIONNE', 'OK', 3, 36, 31, 4, ''),
(697, '0000-00-00', 'DESKTOP-HNT61L5', 'TRF 54902 XM', 'WINDOWS 10 PRO /  INTEL CORE I3 4160CPU@ 3,6 GHZ / RAM = 4 GO / DD = 464 GO', 'FONCTIONNE MAIS N\'ENRÉGISTRE PAS LES TRAVAUX', 'OK', 3, 36, 1, 1, 'DESKTOP'),
(698, '0000-00-00', 'ORITE', 'E2008007143', '1000 VA', 'HS', 'NOK', 3, 36, 31, 4, ''),
(699, '0000-00-00', 'HEWLETT-PACKARD', 'TRF4180C9Q', 'HP PRO 3400 SERIES MT', 'FONCTIONNE MAIS N\'EST PAS UTILISÉ FAUTE DE RALLONGE', 'OK', 3, 36, 1, 1, 'DESKTOP'),
(700, '0000-00-00', 'HP COMPAQ', 'CZC8111RBL', 'WINDOWS VISTA BUSINESS OEMACT / HP COMPAQ DC 7800 CMT PC ALL', 'HS', 'NOK', 3, 36, 1, 1, 'DESKTOP'),
(701, '0000-00-00', 'JC TECH', '3100278859C9790401205', '750 VA', 'HS', 'NOK', 3, 36, 43, 4, ''),
(702, '0000-00-00', 'APC', 'E1701041600', 'UPS 850 VA / 1000 VA', 'HS', 'NOK', 3, 36, 12, 4, ''),
(703, '0000-00-00', 'HP PRO 3500 G2 MT PC', 'TRF4380YTC', 'PENTIUM; 4GO; 500GO; WINDOWS 8.1; OFFICE 2013', 'SYSTÈME NON ACTIVÉ', 'OK', 3, 54, 1, 1, 'DESKTOP'),
(704, '0000-00-00', 'HP 20WD', '3CQ4030375', '', 'FONCTIONNE BIEN', 'OK', 3, 54, 1, 3, ''),
(705, '0000-00-00', 'MAXDATA', '47873040114', '', 'HORS SERVICE', 'NOK', 3, 54, 21, 1, 'DESKTOP'),
(706, '0000-00-00', 'HP 20WD', '3CQ4250YXM', '', 'FONCTIONNE BIEN', 'OK', 3, 54, 1, 3, ''),
(707, '0000-00-00', 'D-80807(T17BA)', 'YETU017023', '', 'HORS SERVICE', 'NOK', 3, 54, 23, 3, ''),
(708, '0000-00-00', 'HP PRO 3100 MT', 'CZC211252Z', 'HP PRO 3100 MT', 'HORS SERVICE', 'NOK', 3, 54, 1, 1, 'DESKTOP'),
(709, '0000-00-00', 'INSPIRON 3542', '8NBM232', 'CORE I3; 4GO; 500GO; WINDOWS 7; OFFICE 2010', 'CARTE MÈRE DEJÀ CHANGÉE', 'OK', 3, 54, 10, 1, 'LAPTOP'),
(710, '0000-00-00', 'HP LV2011', 'CNC339NV2D', '', 'FONCTIONNE BIEN', 'OK', 4, 54, 1, 3, ''),
(711, '0000-00-00', 'HP PRO 3500', 'TRF3430FVX', 'PENTIUM; 2GO; 500GO; WINDOWS 7; OFFICE 2010', 'FONCTIONNE BIEN', 'OK', 4, 54, 1, 1, 'DESKTOP'),
(712, '0000-00-00', 'LASERJET P2035', '3CQ40304DX', '', 'HORS SERVICE', 'NOK', 4, 54, 1, 2, ''),
(713, '0000-00-00', 'P2014', 'CNCJ697340', '', 'HORS SERVICE', 'NOK', 4, 54, 1, 2, ''),
(714, '0000-00-00', 'HP 290 G2 MT', '8CG9466C87', 'CORE I3; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 54, 1, 1, 'DESKTOP'),
(715, '0000-00-00', 'HP 20KD', '8CM94119RB', '', 'FONCTIONNE BIEN', 'OK', 4, 54, 1, 3, ''),
(716, '0000-00-00', 'LASERJET M132 MFP', 'CNJ8G66CG6', '', 'HORS SERVICE', 'NOK', 4, 54, 1, 2, ''),
(717, '0000-00-00', 'W1972A', '6CM22607XW', '', '0', 'OK', 4, 54, 1, 3, ''),
(718, '0000-00-00', 'HP 600 B SERIES', 'TRF23607XW', 'HP 600 B SERIES', 'HORS SERVICE', 'NOK', 4, 54, 1, 1, 'DESKTOP'),
(719, '0000-00-00', 'HP OFFICEJET 4500', 'CN184G232R', '', 'HORS SERVICE', 'NOK', 3, 54, 1, 2, ''),
(720, '0000-00-00', 'HP2011X', '', '', '0', 'OK', 2, 54, 1, 3, ''),
(721, '0000-00-00', 'HP 600 B SERIES', 'TRF23607X2', 'HP 600 B SERIES', 'HORS SERVICE', 'NOK', 4, 54, 1, 1, 'DESKTOP'),
(722, '0000-00-00', 'IMAGE RUNNER 2420', '(21)PNW71027', '', 'TAMBOUR À REMPLACER', 'NOK', 1, 54, 9, 2, ''),
(723, '0000-00-00', 'HP PRO 3500 SERIES MT', 'TRF41408VV', 'HP PRO 3500 SERIES MT', 'HORS SERVICE', 'NOK', 2, 54, 1, 1, 'DESKTOP'),
(724, '0000-00-00', 'DESKJET PLUS 4120', 'CN149682B6', '', 'FONCTIONNE BIEN', 'OK', 1, 54, 1, 2, ''),
(725, '0000-00-00', 'HP PRO 3500', 'TRF3491171', 'PENTIUM; 2GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 1, 54, 1, 1, 'DESKTOP'),
(726, '0000-00-00', 'HP OFFICEJET', 'CN39A1V59P', '', 'HORS SERVICE', 'NOK', 1, 54, 1, 2, ''),
(727, '0000-00-00', 'LASERJET P1102', 'VNC6W32998', '', 'HORS SERVICE', 'NOK', 1, 54, 1, 2, ''),
(728, '0000-00-00', 'PORTEGE', '4E171374H', '', 'FONCTIONNE BIEN', 'OK', 1, 54, 34, 18, ''),
(729, '0000-00-00', 'HP 280 G2 MT', 'CZC64BBSXP', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'LENT', 'OK', 3, 2, 1, 1, 'DESKTOP'),
(730, '0000-00-00', 'V214A', 'CNC84309VP', '', 'FONCTIONNE BIEN', 'OK', 3, 2, 1, 3, ''),
(731, '0000-00-00', 'LASERJET P2035', 'VNC4B34629', '', 'FONCTIONNE BIEN', 'OK', 3, 2, 1, 2, ''),
(732, '0000-00-00', 'IMAC', 'D6C226FD-AB9256F8-8F94-D9018B8BCBFE', 'ALL-IN-ONE; 8GO; 500GO', 'FONCTIONNE BIEN', 'OK', 1, 2, 19, 1, 'DESKTOP'),
(733, '0000-00-00', 'HP COLOR LASERJET MFP 178 NW', 'CNB1Q539MS', '', 'FONCTIONNE BIEN', 'OK', 1, 2, 1, 2, ''),
(734, '0000-00-00', 'LEADER 1500', '1Q3AN3000012', '', 'FONCTIONNE BIEN', 'OK', 1, 2, 20, 4, ''),
(735, '0000-00-00', 'DESKTOP-NNGFUEO', '4CE844174M', 'CORE I3; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 2, 1, 1, 'DESKTOP'),
(736, '0000-00-00', 'V213A', 'CNC6361238', '', 'FONCTIONNE BIEN', 'OK', 4, 2, 1, 3, ''),
(737, '0000-00-00', 'COLOR LASERJET PRO MFP M176N', 'CNG7J951S8', '', 'FONCTIONNE BIEN', 'OK', 4, 2, 1, 2, ''),
(738, '0000-00-00', 'DESKTOP-SNQVL2M', 'HQC23B3', 'CORE I5 11TH GEN; 8GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 2, 2, 10, 1, 'LAPTOP'),
(739, '0000-00-00', 'LASERJET P2030', 'VNC4C42167', '', 'FONCTIONNE BIEN', 'OK', 2, 2, 1, 2, ''),
(740, '0000-00-00', 'DESKTOP-A0E88R4', '7RC23B3', 'CORE I5 11TH GEN; 8GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 2, 10, 1, 'LAPTOP'),
(741, '0000-00-00', 'DESKTOP-8KV93H3', 'CZC5492VGX', 'PENTIUM; 2GO; 500GO', 'FONCTIONNE BIEN', 'OK', 3, 2, 1, 1, 'DESKTOP'),
(742, '0000-00-00', 'V212A', 'CNC53504FW', '', 'FONCTIONNE BIEN', 'OK', 3, 2, 1, 3, ''),
(743, '0000-00-00', 'LENOVO-PC', 'NA22413679', 'QIBAN M4350-N000; CORE I3; 4GO, 500GO; WINDOWS 10; OFFICE 2016', 'TRÈS LENT', 'OK', 13, 4, 7, 1, 'DESKTOP'),
(744, '0000-00-00', 'LT1953WA', '', '', 'FONCTIONNE BIEN', 'OK', 13, 4, 7, 3, ''),
(745, '0000-00-00', 'SCANSNAPIX500', '', '', 'FONCTIONNE BIEN', 'OK', 13, 4, 23, 2, ''),
(746, '0000-00-00', 'LASERJET PRO MFP M283 FDW', 'VNBRPBNCCNC', '', 'FONCTIONNE BIEN', 'OK', 13, 4, 1, 2, ''),
(747, '0000-00-00', 'LASERJET PRO MFP M477 FNW', '', '', 'HORS SERVICE', 'NOK', 13, 4, 1, 2, ''),
(748, '0000-00-00', 'PAGEWIDE PRO MFP 477 DW', '', '', 'HORS SERVICE', 'NOK', 13, 4, 1, 2, ''),
(749, '0000-00-00', 'HP-PC', 'TRE53813KC', 'HP 280 G1 MT, 2GO, 500GO', 'HORS SERVICE', 'NOK', 13, 4, 1, 1, 'DESKTOP'),
(750, '0000-00-00', 'W2072A', 'CNC521NNNS', '', 'HORS SERVICE', 'NOK', 13, 4, 1, 3, ''),
(751, '0000-00-00', 'LT1953WA', '', '', 'HORS SERVICE', 'NOK', 13, 4, 7, 3, ''),
(752, '0000-00-00', 'DESKTOP-BTG9VM', 'CZC5392HV0', 'HP PRODESK 400 G2 MT, 4GO, 500GO', 'HORS SERVICE', 'NOK', 13, 4, 1, 1, 'DESKTOP'),
(753, '0000-00-00', 'IRC3226', '4DG03153', '', 'FONCTIONNE BIEN', 'OK', 13, 4, 9, 2, ''),
(754, '0000-00-00', 'HP PRODESK 400 G2 MT', 'CZC5392JC6', 'CORE I3, 4GO, 500GO, WINDOWS 10, OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 8, 1, 1, 1, 'DESKTOP'),
(755, '0000-00-00', 'APC BACKUP 700', '', '', 'FONCTIONNE BIEN', 'OK', 8, 1, 12, 4, ''),
(756, '0000-00-00', 'LASERJET PRO MFP M479 FDN', 'CNCRPCQ3QT', '', 'FONCTIONNE BIEN', 'OK', 8, 1, 1, 2, ''),
(757, '0000-00-00', 'LASERJET P2035', 'VNC4D21396', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 1, 2, ''),
(758, '0000-00-00', 'HP 280 G1 MT', 'TRF250NPL', 'PENTIUM, 2GO, 500GO, WINDOWS 10, OFFICE 2016', 'LENT', 'OK', 4, 1, 1, 1, 'DESKTOP'),
(759, '0000-00-00', 'W2072A', 'CNC222PFRP', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 1, 3, ''),
(760, '0000-00-00', 'HP PAVILLON X360', '8CG72013T1', 'CORE I3; 6GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 1, 1, 1, 'LAPTOP'),
(761, '0000-00-00', 'MTOUR-PC-02', 'CZC2326HHC', 'WINDOWS 10 EDITION, INTEL PENTIUM CPU G640T, RAM 4GO, DD 500GO', 'RAS', 'OK', 4, 1, 1, 1, 'DESKTOP'),
(762, '0000-00-00', 'ZLT P21', 'P21867070022323716', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 5, 17, 'LIVEBOX'),
(763, '0000-00-00', 'ECRAN', 'CNC529P2CG', 'HP LV2011', 'RAS', 'OK', 4, 1, 1, 3, ''),
(764, '0000-00-00', 'IMPRIMANTE', 'VNC3301170', 'COLOR LASERJET PRO MFP M180N', 'RAS', 'OK', 4, 1, 1, 2, ''),
(765, '0000-00-00', 'DESKTOP-VMPNLQI', '', '', 'FONCTIONNE BIEN', 'OK', 8, 1, 1, 1, 'DESKTOP'),
(766, '0000-00-00', 'APC BACKUP 700', '', '', 'FONCTIONNE BIEN', 'OK', 8, 1, 12, 4, ''),
(767, '0000-00-00', 'LASERJET PRO MFP M479 FDN', '', '', 'FONCTIONNE BIEN', 'OK', 8, 1, 1, 2, ''),
(768, '0000-00-00', 'LASERJET P2035', '', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 1, 2, ''),
(769, '0000-00-00', 'MTOUR-PC-01', '', '', 'LENT', 'OK', 4, 1, 1, 1, 'DESKTOP'),
(770, '0000-00-00', 'W2072A', '', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 1, 3, ''),
(771, '0000-00-00', 'DESKTOP-53A42BF', '', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 1, 1, 'DESKTOP'),
(772, '0000-00-00', 'MTOUR-PC-02', '', '', 'RAS', 'OK', 4, 1, 1, 1, 'DESKTOP'),
(773, '0000-00-00', 'ZLT P21', '', '', 'FONCTIONNE BIEN', 'OK', 4, 1, 5, 17, ''),
(774, '0000-00-00', 'ECRAN', '', '', 'RAS', 'OK', 4, 1, 1, 3, ''),
(775, '0000-00-00', 'IMPRIMANTE', '', '', 'RAS', 'OK', 4, 1, 1, 2, ''),
(776, '0000-00-00', 'DESKTOP-0F98CMB', '', '', 'TRÈS LENT', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(777, '0000-00-00', 'LV2011', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 3, ''),
(778, '0000-00-00', 'DESKTOP-RL2VF7M', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(779, '0000-00-00', 'LV2011', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 3, ''),
(780, '0000-00-00', 'DESSKTOP-SBAEJVL', '', '', '0', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(781, '0000-00-00', 'DESKTOP-P1QIERV', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(782, '0000-00-00', 'UPS SERIE LEADER', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 8, 4, ''),
(783, '0000-00-00', 'DESKTOP-ENLA3KC', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(784, '0000-00-00', 'DESKTOP-2422JKR', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(785, '0000-00-00', 'DESKTOP-JHS04NJ', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(786, '0000-00-00', 'LASERJEST PRO MFP M479 FNW', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 2, ''),
(787, '0000-00-00', 'DESKTOP-0F98CMB', 'CZC1215KBQ', 'HP, 2GO, 500 GO, ', 'TRÈS LENT', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(788, '0000-00-00', 'LV2011', 'CNC533NPM4', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 3, ''),
(789, '0000-00-00', 'DESKTOP-RL2VF7M', 'TRF4380YZ2', 'HP PRO 3500 G2 MT, 2GO, 500GO', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(790, '0000-00-00', 'LV2011', 'CNC339NT8D', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 3, ''),
(791, '0000-00-00', 'DESSKTOP-SBAEJVL', '', 'HP 280 G1 MT; 4GO', '0', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(792, '0000-00-00', 'HP 200 G422 ALL-IN-ONE', '8CC1474QBC', 'CORE I3; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(793, '0000-00-00', 'UPS SERIE LEADER', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 8, 4, ''),
(794, '0000-00-00', 'HP 200 G422 ALL-IN-ONE', '8CC1474QBV', 'CORE I3; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(795, '0000-00-00', 'HP ALL-IN-ONE 24 DF1XXX;', '8CC202087F', ' CORE I5; 8GO; 1TO; WINDOWS 11; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'DESKTOP'),
(796, '0000-00-00', 'HP LAPTOP 15-DW3XXX', 'CND1382FWW', 'CORE I3; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'LAPTOP'),
(797, '0000-00-00', 'LASERJEST PRO MFP M479 FNW', 'CNCRQ4W7RC', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 2, ''),
(798, '0000-00-00', 'V221VB', 'CNC1321K22', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 3, ''),
(799, '0000-00-00', 'LASERJEST MFP M178 NW', 'CNB1PDQ597', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 2, ''),
(800, '0000-00-00', 'HP SPECTRE X360', '5CD2028V8M', 'CORE I7 11TH GEN; 16GO; 1TO; WINDOWS 11; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 16, 1, 1, 'LAPTOP'),
(801, '0000-00-00', 'DLP TEXAS INSTRUMENTS', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 42, 6, ''),
(802, '0000-00-00', 'FIBRE OPTIQUE', '', '', 'FONCTIONNE BIEN', 'OK', 3, 16, 5, 17, ''),
(803, '0000-00-00', 'HP DESKTOP PRO 300 G6 MT', '4CE1252J5T', 'PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 4, 17, 1, 1, 'DESKTOP'),
(804, '0000-00-00', 'HP P22V', 'CN41100RM6', '', 'FONCTIONNE BIEN', 'OK', 4, 17, 1, 3, ''),
(805, '0000-00-00', 'COLOR LASERJET PRO MFP M 479 FNW', 'CNCRQ2H7BQ', '', 'FONCTIONNE BIEN', 'OK', 4, 17, 1, 2, ''),
(806, '0000-00-00', 'DESKTOP-A84S200', 'PF2W50PW', '82C4; CORE I5; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 7, 1, 'LAPTOP'),
(807, '0000-00-00', 'HP DESKTOP PRO 300 G6 MT ', '4CE1092122', 'PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 1, 'DESKTOP'),
(808, '0000-00-00', 'HP P22V', 'CN0510S54', '', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 3, ''),
(809, '0000-00-00', 'HP DESKTOP PRO 300 G6 MT', '4CE1252NNJ', ' PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 1, 'DESKTOP'),
(810, '0000-00-00', 'HP P22V', 'CN41100RMK', '', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 3, ''),
(811, '0000-00-00', 'HP DESKTOP PRO 300 G6 MT', '4CE10921QD', 'PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 1, 'DESKTOP'),
(812, '0000-00-00', 'HP P22V', 'CN40510T75', '', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 3, ''),
(813, '0000-00-00', 'HP DESKTOP PRO 300 G6 MICROTOWER', '4CE109210F', 'PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 1, 'DESKTOP'),
(814, '0000-00-00', 'DESKTOP-Q7K3C9C', 'PF2P176A', 'CELERON N4020; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 7, 1, 'LAPTOP'),
(815, '0000-00-00', 'HP DESKTOP PRO 300 G6 MICROTOWER', '4CE1252GS', 'PENTIUM GOLD; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 1, 'DESKTOP'),
(816, '0000-00-00', 'HP P22V', 'CN40510S5G', '', 'FONCTIONNE BIEN', 'OK', 3, 17, 1, 3, ''),
(817, '0000-00-00', 'HP', 'CZC60986SK', 'HP 280 G1 MT; 6GO; 500GO; WINDOWS 8.1; OFFICE 2013', 'LENT', 'OK', 3, 3, 1, 1, 'DESKTOP'),
(818, '0000-00-00', 'LASERJET P1606 DN', 'VNC3B67632', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 2, ''),
(819, '0000-00-00', 'HP DESKTOP PRO G2', '4CE9091Q4L', 'CORE I3; 4GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 1, 'DESKTOP'),
(820, '0000-00-00', 'V212A', 'CNC55308W3', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 3, ''),
(821, '0000-00-00', 'V212A', 'CNC60807B5', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 3, ''),
(822, '0000-00-00', 'HP', 'CZC618B8H3', 'HP 280 G1 MT', 'HORS SERVICE', 'NOK', 3, 3, 1, 1, 'DESKTOP'),
(823, '0000-00-00', 'DESKTOP-HL16V01', '4CE94425PP', 'HP DESKTOP PRO G2, 4GO, 500GO', 'FONCTIONNE BIEN', 'OK', 4, 3, 1, 1, 'DESKTOP'),
(824, '0000-00-00', 'V214A', 'CNC945290T', '', 'FONCTIONNE BIEN', 'OK', 4, 3, 1, 3, ''),
(825, '0000-00-00', 'NITRAM', '320134BQ30002149', '', 'HORS SERVICE', 'NOK', 4, 3, 20, 4, ''),
(826, '0000-00-00', 'SSD-UPS-650VISION', '241411302233', '', 'HORS SERVICE', 'NOK', 4, 3, 18, 4, ''),
(827, '0000-00-00', 'LASERJET M1132 MFP', 'CNJ8G6C317', '', 'FONCTIONNE BIEN', 'OK', 4, 3, 1, 2, ''),
(828, '0000-00-00', 'HP 200 G4 ALL-IN-ONE', '8CC1474QLZ', 'CORE I3; 4GO; 1TO; WINDOWS 10; OFFICE 2016', 'LENT', 'OK', 3, 3, 1, 1, 'DESKTOP'),
(829, '0000-00-00', 'HP', '8CC8041OL2', 'HP PAVILLON ALL-IN-ONE, 4GO, 1TO', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 1, 'DESKTOP'),
(830, '0000-00-00', 'LASER MFP 135W', 'CNB2M62QKK', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 2, ''),
(831, '0000-00-00', 'DESKTOP-1PUAE4B', 'CZC53927BD', 'HP PRODESK 400 G2 MT (TPMDP), 4GO, 500GO', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 1, 'DESKTOP'),
(832, '0000-00-00', '20WD', '3CQ44706JZ', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 3, ''),
(833, '0000-00-00', 'V212A', 'CNC55308W3', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 3, ''),
(834, '0000-00-00', 'DESKTOP-7U1ERE0', '4CE6361MQK', 'HP 280 G1 MT, 4GO, 500GO', 'HORS SERVICE', 'NOK', 3, 3, 1, 1, 'DESKTOP'),
(835, '0000-00-00', 'LASERJET PRO M15W', 'VNC6H10143', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 2, ''),
(836, '0000-00-00', 'V214A', 'CNC9100CLRJ', '', 'FONCTIONNE BIEN', 'OK', 3, 3, 1, 3, ''),
(837, '0000-00-00', 'FIBRE OPTIQUE', '', '', 'FONCTIONNE BIEN', 'OK', 1, 3, 5, 17, ''),
(838, '0000-00-00', 'EASY-UPS', '9B2203A19681', '', 'NOUVELLEMENT ACQUIS', 'OK', 3, 7, 12, 4, ''),
(839, '0000-00-00', 'EASY-UPS', '9B2203A19682', '', 'NOUVELLEMENT ACQUIS', 'OK', 3, 7, 12, 4, ''),
(840, '0000-00-00', 'HP 200 G422 ALL-IN-ONE', '8CC129X71', 'CORE I5; 8GO; 256GO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 1, 7, 1, 1, 'DESKTOP'),
(841, '0000-00-00', 'LENOVO MT 20VK', 'PW00NN3Q', 'CORE I3 11TH GEN; 8GO; 256GO; WINDOWS 10; OFFICE 2016', 'NOUVELLEMENT ACQUIS', 'OK', 3, 7, 7, 1, 'LAPTOP'),
(842, '0000-00-00', 'DESKTOP-F0H7AH0', 'PF362129', 'CORE I5; 8GO; 256GO; WINDOWS 10', 'NOUVELLEMENT ACQUIS', 'OK', 3, 7, 7, 1, 'LAPTOP'),
(843, '0000-00-00', 'LASERJET PRO M404 DN', 'PHCL450815', '', 'FONCTIONNE BIEN', 'OK', 1, 7, 1, 2, ''),
(844, '0000-00-00', 'HP-PC', 'CZC6148YPZ', 'HP 280 G1 MT, 2GO, 500GO', 'WINDOWS PAS ACTIVÉ, LENT', 'OK', 3, 5, 1, 1, 'DESKTOP'),
(845, '0000-00-00', 'V212A', 'CNC60815LS', '', 'FONCTIONNE BIEN', 'OK', 3, 5, 1, 3, ''),
(846, '0000-00-00', 'HP', 'CND55292BV', 'HP 250 G4 NOTEBOOK PC, 4GO, 500GO', 'TRÈS LENT, OUVRE LES FICHIERS SEULS', 'OK', 3, 5, 1, 1, 'LAPTOP'),
(847, '0000-00-00', 'LASERJET P2035', '', '', 'FONCTIONNE BIEN', 'OK', 3, 5, 1, 2, ''),
(848, '0000-00-00', 'MME OGOU', 'TJ19300CC6', 'HP LAPTOP 17-BY0XXX, 8GO, 1TO', 'FONCTIONNE BIEN', 'OK', 3, 5, 1, 1, 'LAPTOP'),
(849, '0000-00-00', 'APC BACKUP 700', '', '', 'HORS SERVICE', 'NOK', 5, 5, 12, 4, ''),
(850, '0000-00-00', 'ALL-IN-ONE', 'LBPTC700A231464', 'CORE I5 11TH GEN; 16GO; 500GO; WINDOWS 10; OFFICE 2016', 'FONCTIONNE BIEN', 'OK', 5, 5, 28, 1, 'DESKTOP'),
(851, '0000-00-00', 'NITRAM', 'BU600E', '', 'HORS SERVICE', 'NOK', 5, 5, 20, 4, ''),
(852, '0000-00-00', 'COLOR LASERJET MFP M281FDW', 'VNBNKBN9ZT', '', 'FONCTIONNE BIEN', 'OK', 5, 5, 1, 2, ''),
(853, '0000-00-00', 'MACOS SIERRA', 'CO2TH1J7HJY', '8GO, 1TO', 'FONCTIONNE BIEN', 'OK', 4, 6, 19, 1, 'DESKTOP'),
(854, '0000-00-00', 'LASERJET PRO MFP M277 DW', '', '', 'FONCTIONNE BIEN', 'OK', 4, 6, 1, 2, ''),
(855, '0000-00-00', 'SCANJET ENTERPRISE FLOW 7000 S3', '', '', 'FONCTIONNE BIEN', 'OK', 4, 6, 1, 5, ''),
(856, '0000-00-00', 'DESKTOP-8KHG3F3', '8CC0114Y9W', 'HP 200 G4 ALL-IN-ONE PC, 4GO, 1TO', 'FONCTIONNE BIEN', 'OK', 4, 6, 1, 1, 'DESKTOP'),
(857, '0000-00-00', 'PC-PC', 'TRF545157D', 'HP 280 G1 MT, 2GO, 500GO', 'FONCTIONNE BIEN', 'OK', 10, 6, 1, 1, 'DESKTOP'),
(858, '0000-00-00', 'LV2011', 'CNC529P1JR', '', 'FONCTIONNE BIEN', 'OK', 10, 6, 1, 3, ''),
(859, '0000-00-00', 'LASERJET PRO MFP M130A', 'VNFRF05658', '', 'IMPRIME AVEC DES RAYURES', 'OK', 10, 6, 1, 2, ''),
(860, '0000-00-00', 'DESKTOP-6BK0A5T', 'SGH7095D0F', 'HP PRODESK 400 G3 MT, 4GO, 1TO', 'FONCTIONNE BIEN/ HORS SERVICE', 'OK', 10, 6, 1, 1, 'DESKTOP'),
(861, '0000-00-00', '23VX', '', '', 'FONCTIONNE BIEN', 'OK', 10, 6, 1, 3, ''),
(862, '0000-00-00', 'HP2035 ', 'VNC4C42216', '', 'FONCTIONNE BIEN', 'OK', 10, 6, 1, 2, ''),
(863, '0000-00-00', 'HP 280 G1 MT', 'TRF54515J6', '0', 'HORS SERVICE', 'NOK', 10, 6, 1, 1, 'DESKTOP'),
(864, '0000-00-00', 'LASERJET P2035 ', 'VNC4D25238', '', 'IMPRIME AVEC DES RAYURES', 'OK', 10, 6, 1, 2, ''),
(865, '0000-00-00', 'DESKTOP-5BJ04KM', '', 'HP PRO ONE 400 G320 O-IN NON-TOUCH AIO, 4GO, 500GO', 'FONCTIONNE BIEN', 'OK', 10, 6, 1, 1, 'DESKTOP'),
(866, '0000-00-00', 'DESKTOP-20M3BP0', 'SGH7095B41', 'HP PRODESK 400 G3 MT, 4GO, 1TO', 'FONCTIONNE BIEN', 'OK', 10, 6, 1, 1, 'DESKTOP'),
(867, '0000-00-00', 'HP', 'CZC6148Z48', '', 'HORS SERVICE', 'NOK', 10, 6, 1, 1, 'DESKTOP'),
(868, '0000-00-00', 'HP2035 ', '', '', 'HORS SERVICE', 'NOK', 10, 6, 1, 2, ''),
(869, '0000-00-00', 'DESKTOP-GQ95PIR', '8CC1270LW8', 'CORE I5; 4GO; 1TO; WINDOWS 10; OFFICE 2013', 'FONCTIONNE BIEN', 'OK', 3, 6, 1, 1, 'DESKTOP'),
(870, '0000-00-00', 'LASER MFP 137 FNW', 'CNB1P699KG', '', 'FONCTIONNE BIEN', 'OK', 3, 6, 1, 2, ''),
(871, '0000-00-00', 'C-R-UPS 1000VA', 'CR210700327', '', 'FONCTIONNE BIEN', 'OK', 3, 6, 8, 4, ''),
(872, '0000-00-00', 'IR2630(AL2630)', '2VF04726', '', 'FONCTIONNE BIEN', 'OK', 15, 6, 9, 2, ''),
(873, '0000-00-00', 'PC-KONE', '4CE81222R5N', '', 'RAS', 'OK', 4, 1, 1, 1, ''),
(874, '0000-00-00', 'HP V214A', 'CNC8080WBB', '', 'RAS', 'OK', 4, 1, 1, 3, ''),
(875, '0000-00-00', 'IMPRIMANTE', 'VNBKL4K47C', '', 'RAS', 'OK', 4, 1, 1, 2, ''),
(876, '0000-00-00', 'ONDULEUR', '3B1246X25950', '', 'RAS', 'OK', 4, 1, 12, 4, ''),
(877, '0000-00-00', 'ONDULEUR', '9B1836A09250', '', 'RAS', 'OK', 4, 1, 12, 4, ''),
(878, '0000-00-00', 'LASERJET PRO MFP M477 FDW', 'VNBKL4K316', '', 'RAS', 'OK', 4, 1, 1, 2, ''),
(879, '0000-00-00', 'MTOUR-PC-03', '4CE8122RHL', '', 'TRÈS LENT', 'OK', 4, 1, 1, 1, ''),
(880, '0000-00-00', 'HP V214A', 'CNC80528BS', '', 'RAS', 'OK', 4, 1, 1, 3, ''),
(881, '0000-00-00', 'BV650I', '9B1836A09251', '', 'RAS', 'OK', 4, 1, 12, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `panne_panne`
--

DROP TABLE IF EXISTS `panne_panne`;
CREATE TABLE IF NOT EXISTS `panne_panne` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DefautSigPanne` varchar(255) NOT NULL,
  `DatSigPanne` datetime(6) NOT NULL,
  `RefUtilisateur_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `panne_panne_RefUtilisateur_id_063c995a` (`RefUtilisateur_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_personnel`
--

DROP TABLE IF EXISTS `personnel_personnel`;
CREATE TABLE IF NOT EXISTS `personnel_personnel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `NomPersonel` varchar(20) NOT NULL,
  `PrePersonel` varchar(50) NOT NULL,
  `Responsable` tinyint(1) NOT NULL,
  `NumTelPersonnel` varchar(10) NOT NULL,
  `RefDirection_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personnel_personnel_RefDirection_id_80819d36` (`RefDirection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `region_region`
--

DROP TABLE IF EXISTS `region_region`;
CREATE TABLE IF NOT EXISTS `region_region` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibRegion` varchar(30) NOT NULL,
  `RefZone_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibRegion` (`LibRegion`),
  KEY `region_region_RefZone_id_69414e22` (`RefZone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `region_region`
--

INSERT INTO `region_region` (`id`, `LibRegion`, `RefZone_id`) VALUES
(1, 'GONTOUGO', 2),
(2, 'BOUNKANI', 2),
(3, 'GBEKE', 3),
(4, 'HAMBOL', 3),
(5, 'HAUT - SASSANDRA', 4),
(6, 'MARAHOUE', 4),
(7, 'LOH - DJIBOUA', 4),
(8, 'GOH', 4),
(9, 'LA ME', 5),
(10, 'SUD - COMOE', 5),
(11, 'AGNEBY - TIASSA', 5),
(12, 'PORO', 6),
(13, 'TCHOLOGO', 6),
(14, 'TONKPI', 7),
(15, 'MOYEN CAVALLY', 7),
(16, 'GUEMON', 7),
(17, 'CAVALLY', 7),
(18, 'KABADOUGOU', 8),
(19, 'FOLON', 8),
(20, 'SAN - PEDRO', 9),
(21, 'NAWA', 9),
(22, 'GBOKLE', 9),
(23, 'WORODOUGOU', 10),
(24, 'BAFING', 10),
(25, 'BERE', 10),
(26, 'YAMOUSSOUKRO', 11),
(27, 'BELIER', 11),
(28, 'N\'ZI', 11),
(29, 'INDENIE DJUABLIN', 12),
(30, 'MORONOU', 12),
(31, 'IFFOU', 12),
(32, 'ABIDJAN', 1),
(34, 'GRANDS - PONTS', 1),
(35, 'BAGOUE', 6);

-- --------------------------------------------------------

--
-- Table structure for table `typemateriel_typemateriel`
--

DROP TABLE IF EXISTS `typemateriel_typemateriel`;
CREATE TABLE IF NOT EXISTS `typemateriel_typemateriel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibTypeMateriel` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `typemateriel_typemateriel`
--

INSERT INTO `typemateriel_typemateriel` (`id`, `LibTypeMateriel`) VALUES
(1, 'ORDINATEUR'),
(2, 'IMPRIMANTE'),
(3, 'ECRAN'),
(4, 'ONDULEUR'),
(5, 'SCANNER'),
(6, 'VIDEO PROJECTEUR'),
(7, 'DRONE'),
(8, 'PHOTOCOPIEUR'),
(9, 'STABILISATEUR'),
(10, 'AUTO COMMUTATEUR'),
(11, 'COFFRET INFORMATIQUE'),
(12, 'TELEPHONE'),
(13, 'CLE WIFI'),
(14, 'CLE USB'),
(15, 'SOURIS'),
(16, 'CLAVIER'),
(17, 'BOX INTERNET'),
(18, 'TABLETTE');

-- --------------------------------------------------------

--
-- Table structure for table `ville_ville`
--

DROP TABLE IF EXISTS `ville_ville`;
CREATE TABLE IF NOT EXISTS `ville_ville` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibVille` varchar(30) NOT NULL,
  `RefRegion_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibVille` (`LibVille`),
  KEY `ville_ville_RefRegion_id_c845d3a1` (`RefRegion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ville_ville`
--

INSERT INTO `ville_ville` (`id`, `LibVille`, `RefRegion_id`) VALUES
(1, 'ABIDJAN', 32),
(2, 'DABOU', 34),
(3, 'GRAND - BASSAM', 10),
(4, 'ADZOPE', 9),
(5, 'AGBOVILLE', 11),
(6, 'ABENGOUROU', 29),
(7, 'DAOUKRO', 31),
(8, 'BONDOUKOU', 1),
(9, 'BOUNA', 2),
(10, 'BOUAKE', 3),
(11, 'KATIOLA', 4),
(12, 'DALOA', 5),
(13, 'GAGNOA', 8),
(14, 'DIVO', 7),
(15, 'KORHOGO', 12),
(16, 'BOUNDIALI', 35),
(17, 'FERKESSEDOUGOU', 13),
(18, 'MAN', 14),
(19, 'GUIGLO', 17),
(20, 'DANANE', 16),
(21, 'ODIENNE', 18),
(22, 'TOUBA', 24),
(23, 'SAN - PEDRO', 20),
(24, 'SOUBRE', 21),
(25, 'SASSANDRA', 22),
(26, 'SEGUELA', 23),
(27, 'MANKONO', 25),
(28, 'YAMOUSSOUKRO', 27),
(29, 'DIMBOKRO', 28),
(30, 'BOUAFLE', 6);

-- --------------------------------------------------------

--
-- Table structure for table `zone_zone`
--

DROP TABLE IF EXISTS `zone_zone`;
CREATE TABLE IF NOT EXISTS `zone_zone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `LibZone` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LibZone` (`LibZone`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `zone_zone`
--

INSERT INTO `zone_zone` (`id`, `LibZone`) VALUES
(1, 'ABIDJAN'),
(2, 'BONDOUKOU'),
(3, 'BOUAKE'),
(4, 'DALOA'),
(5, 'GRAND - BASSAM'),
(6, 'KORHOGO'),
(7, 'MAN'),
(8, 'ODIENNE'),
(9, 'SAN - PEDRO'),
(10, 'SEGUELAe'),
(11, 'YAMOUSSOUKRO'),
(12, 'ABENGOUROU');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

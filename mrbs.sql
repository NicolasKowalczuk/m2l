-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 14 oct. 2019 à 12:48
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mrbs`
--
CREATE DATABASE IF NOT EXISTS `mrbs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mrbs`;

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_area`
--

DROP TABLE IF EXISTS `mrbs_area`;
CREATE TABLE IF NOT EXISTS `mrbs_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_name` varchar(30) DEFAULT NULL,
  `area_admin_email` text,
  `resolution` int(11) DEFAULT NULL,
  `default_duration` int(11) DEFAULT NULL,
  `morningstarts` int(11) DEFAULT NULL,
  `morningstarts_minutes` int(11) DEFAULT NULL,
  `eveningends` int(11) DEFAULT NULL,
  `eveningends_minutes` int(11) DEFAULT NULL,
  `private_enabled` tinyint(1) DEFAULT NULL,
  `private_default` tinyint(1) DEFAULT NULL,
  `private_mandatory` tinyint(1) DEFAULT NULL,
  `private_override` varchar(32) DEFAULT NULL,
  `min_book_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_book_ahead_secs` int(11) DEFAULT NULL,
  `max_book_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_book_ahead_secs` int(11) DEFAULT NULL,
  `custom_html` text,
  `approval_enabled` tinyint(1) DEFAULT NULL,
  `reminders_enabled` tinyint(1) DEFAULT NULL,
  `enable_periods` tinyint(1) DEFAULT NULL,
  `confirmation_enabled` tinyint(1) DEFAULT NULL,
  `confirmed_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `area_admin_email`, `resolution`, `default_duration`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_book_ahead_enabled`, `min_book_ahead_secs`, `max_book_ahead_enabled`, `max_book_ahead_secs`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `confirmation_enabled`, `confirmed_default`) VALUES
(1, 0, 'Informatique - multimédia', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 7, 0, 19, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, '', 0, 1, 0, 1, 1),
(2, 0, 'Salles de réunion', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 7, 0, 23, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, '', 0, 1, 0, 1, 1),
(3, 0, 'Salles de réception', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 7, 0, 23, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, '', 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_entry`
--

DROP TABLE IF EXISTS `mrbs_entry`;
CREATE TABLE IF NOT EXISTS `mrbs_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `entry_type` int(11) NOT NULL DEFAULT '0',
  `repeat_id` int(11) NOT NULL DEFAULT '0',
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT NULL,
  `create_by` varchar(80) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) DEFAULT NULL,
  `info_text` text,
  `ical_uid` varchar(255) NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idxStartTime` (`start_time`),
  KEY `idxEndTime` (`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_entry`
--

INSERT INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `name`, `type`, `description`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`) VALUES
(2, 1568622600, 1568626200, 0, 0, 5, NULL, 'admin', 'test', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d7fa483a4744-71c2b5e1@localhost', 0, ''),
(3, 34200, 37800, 0, 0, 5, NULL, 'admin', 'test', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d88d77d6e255-21ea2e17@localhost', 0, ''),
(4, 41400, 45000, 0, 0, 5, NULL, 'admin', 'test', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d88d78bc5485-3288f702@localhost', 0, ''),
(7, 1569835800, 1569839400, 0, 0, 5, NULL, 'admin', 'test', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d91f28b0459b-0765040a@localhost', 0, ''),
(8, 1570338000, 1570341600, 0, 0, 5, NULL, 'admin', 'Reservation G1', 'I', '12 personnes', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a23142a255-60c04f23@localhost', 0, ''),
(9, 1570341600, 1570345200, 0, 0, 5, NULL, 'admin', 'Reservation G2', 'I', '5 personnes', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a232bb5973-1623bdfe@localhost', 0, ''),
(10, 1570345200, 1570348800, 0, 0, 5, NULL, 'admin', 'Reservation G3', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a2336622ee-188da273@localhost', 0, ''),
(11, 1570348800, 1570352400, 0, 0, 5, NULL, 'admin', 'Reservation G4', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a233e4dc9f-b409e4f6@localhost', 0, ''),
(12, 1570352400, 1570356000, 0, 0, 5, NULL, 'admin', 'Reservation G5', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a234aacc7f-fe695fab@localhost', 0, ''),
(13, 1570356000, 1570359600, 0, 0, 5, NULL, 'admin', 'Reservation G6', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a2351922ce-f5ee4ed7@localhost', 0, ''),
(14, 1570359600, 1570363200, 0, 0, 5, NULL, 'admin', 'Reservation G7', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a23581c238-4b828b59@localhost', 0, ''),
(15, 1570363200, 1570366800, 0, 0, 5, NULL, 'admin', 'Reservation G8', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a235eccc2f-d652d4f4@localhost', 0, ''),
(16, 1570366800, 1570370400, 0, 0, 5, NULL, 'admin', 'Reservation G9', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a2366b91ac-6e8a3d49@localhost', 0, ''),
(17, 1570370400, 1570374000, 0, 0, 5, NULL, 'admin', 'Reservation G10', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a236dcf7d6-24ef61c3@localhost', 0, ''),
(18, 1570374000, 1570377600, 0, 0, 5, NULL, 'admin', 'Reservation G11', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a2374ea0b4-52c8b686@localhost', 0, ''),
(19, 1570377600, 1570381200, 0, 0, 5, NULL, 'admin', 'Reservation G12', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a237bdd54a-31485228@localhost', 0, ''),
(20, 1570381200, 1570384800, 0, 0, 5, NULL, 'admin', 'Reservation G13', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a23844dca0-49b40b68@localhost', 0, ''),
(30, 1570510800, 1570521600, 0, 0, 5, NULL, 'admin', 'Reservation G2', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a24ca08aec-438828cf@localhost', 0, ''),
(31, 1570521600, 1570525200, 0, 0, 5, NULL, 'admin', 'Reservation G1', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a24cedba99-5fda08ed@localhost', 0, ''),
(32, 1570525200, 1570539600, 0, 0, 5, NULL, 'admin', 'Reservation G10', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a24d63ccf0-c6131b62@localhost', 0, ''),
(33, 1570539600, 1570548600, 0, 0, 5, NULL, 'admin', 'Reservation G5', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a24df689ec-823dca81@localhost', 0, ''),
(34, 1570548600, 1570554000, 0, 0, 5, NULL, 'admin', 'Reservation G3', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a24e988d54-7f0076e9@localhost', 0, ''),
(36, 1570554000, 1570557600, 0, 0, 5, NULL, 'admin', 'Reservation G9', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a24f10d818-bcf8ef07@localhost', 1, ''),
(37, 1570597200, 1570600800, 0, 0, 5, NULL, 'admin', 'Reservation G1', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a250ea4ac6-25baf401@localhost', 0, ''),
(38, 1570640400, 1570644000, 0, 0, 5, NULL, 'admin', 'Reservation G7', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a2513a5ac0-541812d0@localhost', 0, ''),
(39, 1570683600, 1570730400, 0, 0, 5, NULL, 'admin', 'Reservation G10', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a252e3be5b-94f84587@localhost', 0, ''),
(40, 1570338000, 1570341600, 0, 0, 12, NULL, 'admin', 'Reservation G7', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a2598d4116-529d54d3@localhost', 0, ''),
(41, 1570381200, 1570384800, 0, 0, 12, NULL, 'admin', 'Reservation G3', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a25a105344-597e3792@localhost', 0, ''),
(43, 1570195800, 1570199400, 0, 0, 5, NULL, 'admin', 'Reservation G1', 'I', '12 personnes', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a260d00188-a3d5ced4@localhost', 0, ''),
(45, 1570429800, 1570449600, 0, 0, 5, NULL, 'admin', 'Reservation G4', 'I', 'Interne', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a243411770-5631fb2a@localhost', 2, ''),
(46, 1570462200, 1570471200, 0, 0, 5, NULL, 'admin', 'Reservation G7', 'I', 'Interne', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a243e67932-bec2d933@localhost', 1, ''),
(47, 1570170600, 1570181400, 0, 0, 5, NULL, 'admin', 'Reservation G7', 'I', 'Interne', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a25fa60ec1-07d2273e@localhost', 1, ''),
(48, 1570251600, 1570298400, 0, 0, 5, NULL, 'admin', 'Reservation G3', 'I', 'Interne', 0, NULL, NULL, NULL, NULL, 'MRBS-5d9a26f005e79-cacea5c6@localhost', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_repeat`
--

DROP TABLE IF EXISTS `mrbs_repeat`;
CREATE TABLE IF NOT EXISTS `mrbs_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `rep_type` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `rep_opt` varchar(32) NOT NULL DEFAULT '',
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT NULL,
  `create_by` varchar(80) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text,
  `rep_num_weeks` smallint(6) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) DEFAULT NULL,
  `info_text` text,
  `ical_uid` varchar(255) NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_room`
--

DROP TABLE IF EXISTS `mrbs_room`;
CREATE TABLE IF NOT EXISTS `mrbs_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(25) NOT NULL DEFAULT '',
  `sort_key` varchar(25) NOT NULL DEFAULT '',
  `description` varchar(60) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `room_admin_email` text,
  `custom_html` text,
  PRIMARY KEY (`id`),
  KEY `idxSortKey` (`sort_key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `custom_html`) VALUES
(1, 0, 2, 'Daum', 'Daum', '', 15, '', ''),
(2, 0, 2, 'Corbin', 'Corbin', '', 15, '', ''),
(3, 0, 2, 'Baccarat', 'Baccarat', '', 20, '', ''),
(4, 0, 2, 'Longwy', 'Longwy', '', 12, '', ''),
(5, 0, 1, 'Multimédia', 'Multimédia', '', 25, '', ''),
(6, 0, 3, 'Amphithéâtre', 'Amphithéâtre', '', 200, '', ''),
(7, 0, 2, 'Lamour', 'Lamour', '', 30, '', ''),
(8, 0, 2, 'Grüber', 'Grüber', '', 15, '', ''),
(9, 0, 2, 'Majorelle', 'Majorelle', '', 40, '', ''),
(10, 0, 3, 'Salle de restauration', 'Salle de restauration', 'Salle de restauration', 50, '', ''),
(11, 0, 3, 'Galerie', 'Galerie', '', 80, '', ''),
(12, 0, 1, 'Salle informatique', 'Salle informatique', '', 15, NULL, NULL),
(13, 0, 3, 'Hall d\'accueil', 'Hall d\'accueil', '', 100, NULL, NULL),
(14, 0, 2, 'Gallé', 'Gallé', '', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_users`
--

DROP TABLE IF EXISTS `mrbs_users`;
CREATE TABLE IF NOT EXISTS `mrbs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `password`, `email`) VALUES
(1, 2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin.mrbs@lorraine-sport.net'),
(2, 0, 'cheminl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'chemin.lorette@lorraine-sport.net'),
(3, 0, 'fortetp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'fortet.patrick@lorraine-sport.net'),
(4, 0, 'dreauv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dreau.valerie@lorraine-sport.net'),
(5, 2, 'antoineq', '21232f297a57a5a743894a0e4a801fc3', 'antoine.quentin@lorraine-sport.net'),
(6, 2, 'aubinv', '21232f297a57a5a743894a0e4a801fc3', 'aubin.veronique@lorraine-sport.net'),
(7, 2, 'ackermanns', '21232f297a57a5a743894a0e4a801fc3', 'ackermann.solange@lorraine-sport.net'),
(8, 1, 'guesdonm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'guesdon.martin@lorraine-sport.net'),
(9, 1, 'grenierf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'grenier.francoise@lorraine-sport.net'),
(10, 1, 'giboired', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'giboire.david@lorraine-sport.net'),
(11, 1, 'guillemetm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'guillemet.martin@lorraine-sport.net'),
(12, 1, 'guilletm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'guillet.maud@lorraine-sport.net'),
(13, 1, 'gilbertj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'gilbert.jordan@lorraine-sport.net'),
(14, 1, 'grelichef', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'greliche.franck@lorraine-sport.net'),
(15, 1, 'garniert', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'garnier.theo@lorraine-sport.net'),
(16, 1, 'gaigar', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'gaiga.renan@lorraine-sport.net'),
(17, 1, 'glavork', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'glavor.kevin@lorraine-sport.net'),
(18, 0, 'lunavote', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lunavot.eric@lorraine-sport.net'),
(19, 0, 'borsellinoj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'borsellino.jean-marc@lorraine-sport.net'),
(20, 0, 'daumyn', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'daumy.nicolas@lorraine-sport.net'),
(21, 0, 'chambonp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'chambon.patrick@lorraine-sport.net'),
(22, 0, 'lecadetc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lecadet.cecile@lorraine-sport.net'),
(23, 0, 'vannierl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vannier.louis@lorraine-sport.net'),
(24, 0, 'minets', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'minet.sabrina@lorraine-sport.net'),
(25, 0, 'bourgeoiss', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bourgeois.simon@lorraine-sport.net'),
(26, 0, 'charleta', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'charlet.aurelie@lorraine-sport.net'),
(27, 0, 'pirotl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'pirot.lea@lorraine-sport.net'),
(28, 0, 'michauxa', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'michaux.alexandre@lorraine-sport.net'),
(29, 0, 'cullerierj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cullerier.jerome@lorraine-sport.net'),
(30, 0, 'monnetm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'monnet.michel@lorraine-sport.net'),
(31, 0, 'bergerv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'berger.vanessa@lorraine-sport.net'),
(32, 0, 'duquennel', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'duquenne.luc@lorraine-sport.net'),
(33, 0, 'vassalm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vassal.marc@lorraine-sport.net'),
(34, 0, 'samsonm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'samson.maryline@lorraine-sport.net'),
(35, 0, 'vassale', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vassal.elizabeth@lorraine-sport.net'),
(36, 0, 'dubuism', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dubuis.marie@lorraine-sport.net'),
(37, 0, 'briseuxs', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'briseux.serge@lorraine-sport.net'),
(38, 0, 'zambonie', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'zamboni.estelle@lorraine-sport.net'),
(39, 0, 'vernonc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vernon.christian@lorraine-sport.net'),
(40, 0, 'micherouxe', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'micheroux.emmanuel@lorraine-sport.net'),
(41, 0, 'philippej', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'philippe.jocelyne@lorraine-sport.net'),
(42, 0, 'brisseaup', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'brisseau.pierre-jean@lorraine-sport.net'),
(43, 0, 'meneure', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'meneur.emmanuel@lorraine-sport.net'),
(44, 0, 'martelh', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'martel.herve@lorraine-sport.net'),
(45, 0, 'fernandesf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'fernandes.fabrice@lorraine-sport.net'),
(46, 0, 'loubata', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'loubat.agnes@lorraine-sport.net'),
(47, 0, 'mogest', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'moges.thierry@lorraine-sport.net'),
(48, 0, 'bulicm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bulic.marc@lorraine-sport.net'),
(49, 0, 'coulombelt', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'coulombel.thomas@lorraine-sport.net'),
(50, 0, 'noirotm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'noirot.maxime@lorraine-sport.net'),
(51, 0, 'martinageo', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'martinage.ophelie@lorraine-sport.net'),
(52, 0, 'corvaisierk', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'corvaisier.kevin@lorraine-sport.net'),
(53, 0, 'danetc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'danet.christophe@lorraine-sport.net'),
(54, 0, 'antoineq', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'antoine.quentin@lorraine-sport.net'),
(55, 0, 'ouing', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'ouin.georges@lorraine-sport.net'),
(56, 0, 'mabilaisl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'mabilais.liliane@lorraine-sport.net'),
(57, 0, 'charbonnelt', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'charbonnel.tanguy@lorraine-sport.net'),
(58, 0, 'droaly', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'droal.yves@lorraine-sport.net'),
(59, 0, 'rocherf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rocher.fabienne@lorraine-sport.net'),
(60, 0, 'triballata', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'triballat.amelie@lorraine-sport.net'),
(61, 0, 'martih', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'marti.herve@lorraine-sport.net'),
(62, 0, 'vollej', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'volle.jocelyn@lorraine-sport.net'),
(63, 0, 'hubertx', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'hubert.xavier@lorraine-sport.net'),
(64, 0, 'lieutierv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lieutier.vianney@lorraine-sport.net'),
(65, 0, 'cabalf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cabal.frederick@lorraine-sport.net'),
(66, 0, 'kriegerc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'krieger.christian@lorraine-sport.net'),
(67, 0, 'fischerh', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'fischer.helene@lorraine-sport.net'),
(68, 0, 'descatb', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'descat.bastien@lorraine-sport.net'),
(69, 0, 'humbertf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'humbert.felix@lorraine-sport.net'),
(70, 0, 'landrieux', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'landrieu.xavier@lorraine-sport.net'),
(71, 0, 'delpeyroua', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'delpeyrou.andre@lorraine-sport.net'),
(72, 0, 'rodierd', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rodier.denis@lorraine-sport.net'),
(73, 0, 'boyers', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'boyer.suzanne@lorraine-sport.net'),
(74, 0, 'chassonn', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'chasson.nicole@lorraine-sport.net'),
(75, 0, 'cuenotb', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cuenot.bruno@lorraine-sport.net'),
(76, 0, 'pitonu', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'piton.ursule@lorraine-sport.net'),
(77, 0, 'gariny', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'garin.yvette@lorraine-sport.net'),
(78, 0, 'salioum', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'saliou.marcel@lorraine-sport.net'),
(79, 0, 'rigalg', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rigal.guenole@lorraine-sport.net'),
(80, 0, 'pelhatel', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'pelhate.loic@lorraine-sport.net'),
(81, 0, 'skweresp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'skweres.paul@lorraine-sport.net'),
(82, 0, 'haviso', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'havis.odette@lorraine-sport.net'),
(83, 0, 'rigalj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rigal.jonathan@lorraine-sport.net'),
(84, 0, 'cochetr', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cochet.remi@lorraine-sport.net'),
(85, 0, 'blinm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'blin.morgane@lorraine-sport.net'),
(86, 0, 'mazurierv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'mazurier.vincent@lorraine-sport.net'),
(87, 0, 'robichets', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'robichet.sylvain@lorraine-sport.net'),
(88, 0, 'brouillatf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'brouillat.francois@lorraine-sport.net'),
(89, 0, 'legerg', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'leger.geraldine@lorraine-sport.net'),
(90, 0, 'despresv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'despres.viviane@lorraine-sport.net'),
(91, 0, 'bretonj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'breton.jean@lorraine-sport.net'),
(92, 0, 'duboisl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dubois.laurence@lorraine-sport.net'),
(93, 0, 'mousquetj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'mousquet.jean@lorraine-sport.net'),
(94, 0, 'robuttep', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'robutte.philippe@lorraine-sport.net'),
(95, 0, 'lecailleo', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lecaille.oriane@lorraine-sport.net'),
(96, 0, 'veriteb', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'verite.brendan@lorraine-sport.net'),
(97, 0, 'dauthieub', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dauthieu.bryan@lorraine-sport.net'),
(98, 0, 'blancj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'blanc.jean-marc@lorraine-sport.net'),
(99, 0, 'dongelingeri', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dongelinger.irene@lorraine-sport.net'),
(100, 0, 'hochetg', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'hochet.guy@lorraine-sport.net'),
(101, 0, 'lecorree', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lecorre.emile@lorraine-sport.net'),
(102, 0, 'sacheta', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'sachet.armelle@lorraine-sport.net'),
(103, 0, 'bavelardp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bavelard.paul@lorraine-sport.net'),
(104, 0, 'panagetr', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'panaget.remi@lorraine-sport.net'),
(105, 0, 'aubinv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'aubin.veronique@lorraine-sport.net'),
(106, 0, 'ackermanns', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'ackermann.solange@lorraine-sport.net'),
(107, 0, 'hainryd', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'hainry.david@lorraine-sport.net'),
(108, 0, 'trouchetc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'trouchet.carinne@lorraine-sport.net'),
(109, 0, 'bertelles', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bertelle.sophie@lorraine-sport.net'),
(110, 0, 'pannetierc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'pannetier.celine@lorraine-sport.net'),
(111, 0, 'poulainm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'poulain.marie-ange@lorraine-sport.net'),
(112, 0, 'stervinour', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'stervinou.romain@lorraine-sport.net');

-- --------------------------------------------------------

--
-- Structure de la table `mrbs_variables`
--

DROP TABLE IF EXISTS `mrbs_variables`;
CREATE TABLE IF NOT EXISTS `mrbs_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) DEFAULT NULL,
  `variable_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '26'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_administrateurs`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_administrateurs`;
CREATE TABLE IF NOT EXISTS `v_administrateurs` (
`name` varchar(30)
,`email` varchar(75)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_sallesinfo`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_sallesinfo`;
CREATE TABLE IF NOT EXISTS `v_sallesinfo` (
`room_name` varchar(25)
,`sort_key` varchar(25)
,`description` varchar(60)
,`capacity` int(11)
,`room_admin_email` text
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_sallesreception`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_sallesreception`;
CREATE TABLE IF NOT EXISTS `v_sallesreception` (
`room_name` varchar(25)
,`sort_key` varchar(25)
,`description` varchar(60)
,`capacity` int(11)
,`room_admin_email` text
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_sallesreunion`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_sallesreunion`;
CREATE TABLE IF NOT EXISTS `v_sallesreunion` (
`room_name` varchar(25)
,`sort_key` varchar(25)
,`description` varchar(60)
,`capacity` int(11)
,`room_admin_email` text
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_usagers`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_usagers`;
CREATE TABLE IF NOT EXISTS `v_usagers` (
`name` varchar(30)
,`email` varchar(75)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_visiteurs`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_visiteurs`;
CREATE TABLE IF NOT EXISTS `v_visiteurs` (
`name` varchar(30)
,`email` varchar(75)
);

-- --------------------------------------------------------

--
-- Structure de la vue `v_administrateurs`
--
DROP TABLE IF EXISTS `v_administrateurs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_administrateurs`  AS  select `mrbs_users`.`name` AS `name`,`mrbs_users`.`email` AS `email` from `mrbs_users` where (`mrbs_users`.`level` = 2) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_sallesinfo`
--
DROP TABLE IF EXISTS `v_sallesinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sallesinfo`  AS  select `r`.`room_name` AS `room_name`,`r`.`sort_key` AS `sort_key`,`r`.`description` AS `description`,`r`.`capacity` AS `capacity`,`r`.`room_admin_email` AS `room_admin_email` from (`mrbs_room` `r` join `mrbs_area` `a` on((`r`.`area_id` = `a`.`id`))) where (`a`.`area_name` = 'Informatique - multimédia') ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_sallesreception`
--
DROP TABLE IF EXISTS `v_sallesreception`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sallesreception`  AS  select `r`.`room_name` AS `room_name`,`r`.`sort_key` AS `sort_key`,`r`.`description` AS `description`,`r`.`capacity` AS `capacity`,`r`.`room_admin_email` AS `room_admin_email` from (`mrbs_room` `r` join `mrbs_area` `a` on((`r`.`area_id` = `a`.`id`))) where (`a`.`area_name` = 'Salles de réception') ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_sallesreunion`
--
DROP TABLE IF EXISTS `v_sallesreunion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sallesreunion`  AS  select `r`.`room_name` AS `room_name`,`r`.`sort_key` AS `sort_key`,`r`.`description` AS `description`,`r`.`capacity` AS `capacity`,`r`.`room_admin_email` AS `room_admin_email` from (`mrbs_room` `r` join `mrbs_area` `a` on((`r`.`area_id` = `a`.`id`))) where (`a`.`area_name` = 'Salles de réunion') ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_usagers`
--
DROP TABLE IF EXISTS `v_usagers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usagers`  AS  select `mrbs_users`.`name` AS `name`,`mrbs_users`.`email` AS `email` from `mrbs_users` where (`mrbs_users`.`level` = 1) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_visiteurs`
--
DROP TABLE IF EXISTS `v_visiteurs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_visiteurs`  AS  select `mrbs_users`.`name` AS `name`,`mrbs_users`.`email` AS `email` from `mrbs_users` where (`mrbs_users`.`level` = 0) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

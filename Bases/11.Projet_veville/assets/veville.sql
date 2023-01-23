-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 23 jan. 2023 à 15:30
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `veville`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

DROP TABLE IF EXISTS `agences`;
CREATE TABLE IF NOT EXISTS `agences` (
  `id_agence` int(3) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `cp` int(3) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  PRIMARY KEY (`id_agence`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id_agence`, `titre`, `adresse`, `ville`, `cp`, `description`, `photo`) VALUES
(11, 'LOL', 'yoyoyo', 'wsh', 91000, 'sheesh', 'https://risibank.fr/cache/medias/0/9/902/90215/full.png'),
(14, 'TROLL', 'TROLL', 'TROLL', 7777, 'TROLL', 'https://risibank.fr/cache/medias/0/17/1799/179901/full.jpeg'),
(16, 'Bassem', 'la rue', 'Radio street', 91000, 'suuuuu', 'https://risibank.fr/cache/medias/0/13/1327/132711/full.png'),
(17, 'WHOOPER ', 'POUR COMMENCER', 'EVRY', 91000, 'JE ME SUIS RENSEIGNER SUR INTERNET', 'https://us-tuna-sounds-images.voicemod.net/b7f37cf1-d659-4224-880d-f590c9cc7a4f-1664402651541.png');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(3) NOT NULL AUTO_INCREMENT,
  `id_membre` int(3) DEFAULT NULL,
  `id_vehicule` int(3) DEFAULT NULL,
  `id_agence` int(3) DEFAULT NULL,
  `date_heure_depart` datetime NOT NULL,
  `date_heure_fin` datetime NOT NULL,
  `prix_total` int(3) NOT NULL,
  `date_enregistrement` datetime NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `id_membre` (`id_membre`),
  KEY `id_vehicule` (`id_vehicule`),
  KEY `id_agence` (`id_agence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int(3) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) NOT NULL,
  `mdp` varchar(60) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `civilite` enum('m','f') NOT NULL,
  `statut` int(3) NOT NULL,
  `date_enregistrement` datetime NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id_vehicule` int(3) NOT NULL AUTO_INCREMENT,
  `id_agence` int(3) DEFAULT NULL,
  `titre` varchar(200) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `prix_journalier` int(3) NOT NULL,
  PRIMARY KEY (`id_vehicule`),
  KEY `id_agence` (`id_agence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_fk_agence` FOREIGN KEY (`id_agence`) REFERENCES `agences` (`id_agence`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_fk_membre` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_fk_vehicule` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id_vehicule`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `vehicule_fk_agence` FOREIGN KEY (`id_agence`) REFERENCES `agences` (`id_agence`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

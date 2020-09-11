-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 11 sep. 2020 à 10:31
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `micro2`
--

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `Id_Departement` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Departement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `Id_Post` int(11) NOT NULL AUTO_INCREMENT,
  `texte` varchar(255) DEFAULT NULL,
  `like_com` int(11) DEFAULT NULL,
  `nb_com` int(11) DEFAULT NULL,
  `Id_Post_1` int(11) NOT NULL,
  `Id_Departement` int(11) NOT NULL,
  `Id_Utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`Id_Post`),
  KEY `Id_Post_1` (`Id_Post_1`),
  KEY `Id_Departement` (`Id_Departement`),
  KEY `Id_Utilisateur` (`Id_Utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Id_Utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `poste` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

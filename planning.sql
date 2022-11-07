-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 nov. 2022 à 14:02
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `planning`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `nb_eleve` int(11) NOT NULL,
  `id_ecole` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `intitule`, `nb_eleve`, `id_ecole`, `id_prof`) VALUES
(1, 'Classe 1', 13, 1, 2),
(2, 'Classe 2', 15, 1, 15),
(3, 'Classe 3', 18, 2, 6),
(4, 'Classe 4', 16, 3, 4),
(5, 'Classe 5', 21, 3, 12),
(6, 'Classe 6', 15, 2, 1),
(7, 'Classe 7', 19, 3, 7),
(8, 'Classe 8', 17, 1, 13),
(9, 'Classe 9', 23, 3, 14),
(10, 'Classe 10', 25, 1, 8),
(11, 'Classe 11', 24, 3, 3),
(12, 'Classe 12', 12, 3, 5),
(13, 'Classe 13', 25, 3, 11),
(14, 'Classe 14', 22, 2, 9),
(15, 'Classe 15', 20, 3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`id`, `nom`) VALUES
(1, 'Ecole 1'),
(2, 'Ecole 2'),
(3, 'Ecole 3');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `intitule`) VALUES
(1, 'Maths'),
(2, 'Français'),
(3, 'Physique-Chimie'),
(4, 'Sport'),
(5, 'SVT'),
(6, 'Informatique'),
(7, 'Anglais');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `nom`) VALUES
(1, 'Prof 1'),
(2, 'Prof 2'),
(3, 'Prof 3'),
(4, 'Prof 4'),
(5, 'Prof 5'),
(6, 'Prof 6'),
(7, 'Prof 7'),
(8, 'Prof 8'),
(9, 'Prof 9'),
(10, 'Prof 10'),
(11, 'Prof 11'),
(12, 'Prof 12'),
(13, 'Prof 13'),
(14, 'Prof 14'),
(15, 'Prof 15');

-- --------------------------------------------------------

--
-- Structure de la table `prof_matiere`
--

CREATE TABLE `prof_matiere` (
  `id_prof` int(11) NOT NULL,
  `id_matiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prof_matiere`
--

INSERT INTO `prof_matiere` (`id_prof`, `id_matiere`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 2),
(9, 4),
(10, 7),
(11, 3),
(12, 3),
(14, 4),
(15, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

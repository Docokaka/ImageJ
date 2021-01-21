-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 jan. 2021 à 17:58
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `amas`
--

CREATE TABLE `amas` (
  `x` float NOT NULL,
  `y` float NOT NULL,
  `n` int(11) NOT NULL,
  `IdImage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `amas`
--

INSERT INTO `amas` (`x`, `y`, `n`, `IdImage`) VALUES
(2, 2, 1, 1),
(2, 2, 1, 2),
(2, 2, 1, 3),
(2, 2, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `campagne`
--

CREATE TABLE `campagne` (
  `idCampagne` int(11) NOT NULL,
  `date` char(11) NOT NULL,
  `nbrEssaie` int(11) DEFAULT NULL,
  `moyNbrCelEssaie` double DEFAULT NULL,
  `nbrCelCampagne` int(11) DEFAULT NULL,
  `nbrImagesCamp` int(11) DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `campagne`
--

INSERT INTO `campagne` (`idCampagne`, `date`, `nbrEssaie`, `moyNbrCelEssaie`, `nbrCelCampagne`, `nbrImagesCamp`, `idUtilisateur`) VALUES
(758198832, '01-20 23:45', NULL, 3.115388698979711e88, 2037194845, NULL, 1702389038);

-- --------------------------------------------------------

--
-- Structure de la table `essaie`
--

CREATE TABLE `essaie` (
  `idEssaie` int(11) NOT NULL,
  `date` char(11) NOT NULL,
  `description` text DEFAULT NULL,
  `nbrImg` int(11) DEFAULT NULL,
  `nbrCellule` int(11) DEFAULT NULL,
  `moyCelEssaie` double DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idCampagne` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `essaie`
--

INSERT INTO `essaie` (`idEssaie`, `date`, `description`, `nbrImg`, `nbrCellule`, `moyCelEssaie`, `idUtilisateur`, `idCampagne`) VALUES
(1, '19/01/2021', '1', 2, 2, 1, 0, 1),
(2, '19/01/2021', '2', 2, 2, 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `idImage` int(11) NOT NULL,
  `date` char(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idEssaie` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`idImage`, `date`, `idUtilisateur`, `idEssaie`, `url`) VALUES
(1, '19/01/2021', 0, 1, 'https://classroom.google.com/u/0/c/MjUwMTYzNTM3MTI3?cjc=psfqeqz'),
(2, '19/01/2021', 0, 1, NULL),
(3, '19/01/2021', 0, 2, NULL),
(4, '19/01/2021', 0, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

CREATE TABLE `resultats` (
  `idImage` int(11) NOT NULL,
  `idEssai` int(11) NOT NULL,
  `idCampagne` int(11) NOT NULL,
  `moyenneCellules/Image` double NOT NULL,
  `nombreImages/Essai` int(11) NOT NULL,
  `moyenneCellules/Essai` double NOT NULL,
  `nombreEssais/Campagne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `resultats`
--

INSERT INTO `resultats` (`idImage`, `idEssai`, `idCampagne`, `moyenneCellules/Image`, `nombreImages/Essai`, `moyenneCellules/Essai`, `nombreEssais/Campagne`) VALUES
(42, 15, 0, 25.2, 128, 5.5, 3),
(42, 15, 0, 15, 12, 5, 5),
(5, 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL,
  `pseudo` text NOT NULL,
  `password` text NOT NULL,
  `statut` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUtilisateur`, `pseudo`, `password`, `statut`) VALUES
(1, 'thomas', 'thomasangama', 'technicien'),
(3, 'quentin', 'querntinraz', 'responsable'),
(4, 'admin', 'admin', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `campagne`
--
ALTER TABLE `campagne`
  ADD PRIMARY KEY (`idCampagne`);

--
-- Index pour la table `essaie`
--
ALTER TABLE `essaie`
  ADD PRIMARY KEY (`idEssaie`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`idImage`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `campagne`
--
ALTER TABLE `campagne`
  MODIFY `idCampagne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `essaie`
--
ALTER TABLE `essaie`
  MODIFY `idEssaie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

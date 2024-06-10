-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 juin 2024 à 14:35
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tirageexamen`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `idUser` int(11) NOT NULL,
  `permission` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`idUser`, `permission`) VALUES
(12, 'role'),
(14, 'role');

-- --------------------------------------------------------

--
-- Structure de la table `agenttirage`
--

CREATE TABLE `agenttirage` (
  `idUser` int(11) NOT NULL,
  `zone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `agenttirage`
--

INSERT INTO `agenttirage` (`idUser`, `zone`) VALUES
(13, 'zone'),
(16, 'zone');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `idUser` int(11) NOT NULL,
  `specialite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `idGroupe` int(11) NOT NULL,
  `nomGroupe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`idGroupe`, `nomGroupe`) VALUES
(3, 'Groupe1'),
(4, 'test test'),
(5, 'Groupe2'),
(6, 'Groupe3'),
(7, 'dsi32'),
(8, 'sem31');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `idMatiere` int(11) NOT NULL,
  `nomMatiere` varchar(255) NOT NULL,
  `idEnseignant` int(11) NOT NULL,
  `idGroupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`idMatiere`, `nomMatiere`, `idEnseignant`, `idGroupe`) VALUES
(19, 'c++', 11, 3),
(20, 'php', 19, 4);

-- --------------------------------------------------------

--
-- Structure de la table `tirage`
--

CREATE TABLE `tirage` (
  `id` int(11) NOT NULL,
  `enseignant_name` varchar(100) DEFAULT NULL,
  `matiere_name` varchar(100) DEFAULT NULL,
  `groupe_name` varchar(100) DEFAULT NULL,
  `date_tirage` date DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `nomber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tirage`
--

INSERT INTO `tirage` (`id`, `enseignant_name`, `matiere_name`, `groupe_name`, `date_tirage`, `fichier`, `nomber`) VALUES
(3, 'samia@gmail.com', 'c++', 'test test', '2024-06-05', NULL, '3'),
(4, 'samia@gmail.com', 'c++', 'test test', '2024-06-03', '2', '3'),
(5, 'samia@gmail.com', 'c++', 'Groupe1', '2024-06-07', 'Abdelaziz\'s Resume (1).pdf', '3'),
(6, 'samia@gmail.com', 'c++', 'Groupe1', '2024-06-14', 'Abdelaziz\'s Resume (1).pdf', '3'),
(7, 'samia@gmail.com', 'c++', 'test test', '2024-06-28', 'Abdelazizs-Resume-9.pdf', '3'),
(8, 'samia@gmail.com', 'c++', 'sem31', '2024-06-28', 'Abdelaziz\'s Resume (2).pdf', '3'),
(9, 'samia@gmail.com', 'c++', 'test test', '2024-06-29', 'Abdelaziz\'s Resume (1).pdf', '3'),
(10, 'samia@gmail.com', 'c++', 'sem31', '2024-06-13', 'hello.pdf', '3'),
(11, 'samia@gmail.com', 'c++', 'dsi32', '2024-06-07', 'TP1-DdemandeConges (1).pdf', '3');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `nom`, `prenom`, `adresse`, `email`, `username`, `password`, `role`) VALUES
(4, 'hajer', 'chelligue', 'sfax-sokra', 'chelligue@gmail.com', 'agent', 'test123', 'agenttirage'),
(11, 'samia', 'belhadj', 'sfax', 'samia@gmail.com', 'root', 'root', 'enseignant'),
(12, 'nour', 'chakroun', 'sfax-sokra', 'nour@gmail.com', 'nour_admin', 'root', 'administrateur'),
(13, 'yassmine', 'kharrat', 'sfax_ain', 'yassmine@gmail.com', 'agent_yassmine', 'root', 'agenttirage'),
(14, 'test', 'test2', 'sfax-sokra', 'test@gmail.com', 'root', 'root', 'administrateur'),
(15, 'hatem', 'ghorbel', 'sfax', 'hatem@gmail.com', 'hatemg', '12345678', 'enseignant'),
(16, 'hajer', 'chelligue', 'sfax-sokra', 'hajer@gmail.com', 'hajer', '123456', 'agenttirage'),
(17, 'ahmed', 'jmal', 'sfax', 'ahmed@gmail.com', 'ahmed', 'root', 'enseignant'),
(18, 'test', 'test', 'Tunisie', 'test@gmail.com', 'test', '123456', 'enseignant'),
(19, 'hammem', 'aziz', 'route lafran km1.5', 'hammemmiabdelaziz@gmail.com', 'aziz@gmail.com', '0000', 'enseignant');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `agenttirage`
--
ALTER TABLE `agenttirage`
  ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`idGroupe`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`idMatiere`),
  ADD KEY `fk_idEnseignant` (`idEnseignant`),
  ADD KEY `fk_idGroupe` (`idGroupe`);

--
-- Index pour la table `tirage`
--
ALTER TABLE `tirage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `idGroupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `idMatiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tirage`
--
ALTER TABLE `tirage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `administrateur_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `agenttirage`
--
ALTER TABLE `agenttirage`
  ADD CONSTRAINT `agenttirage_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `fk_idEnseignant` FOREIGN KEY (`idEnseignant`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `fk_idGroupe` FOREIGN KEY (`idGroupe`) REFERENCES `groupe` (`idGroupe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

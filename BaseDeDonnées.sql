-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Client :  devbdd.iutmetz.univ-lorraine.fr
-- Généré le :  Ven 18 Décembre 2020 à 19:31
-- Version du serveur :  10.3.25-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `muller851u_ProjetBDD`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE IF NOT EXISTS `adherent` (
  `no_adh` varchar(255) NOT NULL,
  `nom_adh` varchar(255) NOT NULL,
  `prenom_adh` varchar(255) NOT NULL,
  `ad_adh` varchar(255) NOT NULL,
  `d_pai_cotis` date NOT NULL,
  `no_type_adh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`no_adh`, `nom_adh`, `prenom_adh`, `ad_adh`, `d_pai_cotis`, `no_type_adh`) VALUES
('1', 'IUT METZ', '', 'Metz', '2018-01-01', 'TA1'),
('2', 'MJM', '', 'Strasbourg', '2018-01-01', 'TA1'),
('3', 'IDMC', '', 'Nancy', '2018-01-02', 'TA1'),
('4', 'DUPONT', 'Pierre', 'Metz', '2018-03-01', 'TA2'),
('5', 'HERNANDEZ', 'Lucas', 'Thionville', '2018-01-01', 'TA2'),
('6', 'HOGNON', 'Vincent', 'Metz', '2018-03-01', 'TA2'),
('7', 'FC Metz', '', 'Metz', '2018-01-01', 'TA1');

-- --------------------------------------------------------

--
-- Structure de la table `animateur`
--

CREATE TABLE IF NOT EXISTS `animateur` (
  `no_anim` varchar(255) NOT NULL,
  `nom_anim` varchar(255) NOT NULL,
  `prenom_anim` varchar(255) NOT NULL,
  `ad_anim` varchar(255) NOT NULL,
  `ad_mail` varchar(255) NOT NULL,
  `ad_bancaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `animateur`
--

INSERT INTO `animateur` (`no_anim`, `nom_anim`, `prenom_anim`, `ad_anim`, `ad_mail`, `ad_bancaire`) VALUES
('AN1', 'COVER', 'Harry', 'Strasbourg', 'cover-haris@hotmail.com', 'FR4312739000704893157334V57'),
('AN2', 'MARTIN', 'Florian', 'Marly', 'martin-florian@yahoo.fr', 'FR2312739000702313594384L85'),
('AN3', 'MEYER', 'Aurélien', 'Forbach', 'meyer-aurelien@gmail.com', 'FR0217569000505694826611K46'),
('AN4', 'LOGIE', 'Toto', 'Poitiers', 'logie-toto@yopmail.fr', 'FR2817569000408963367863R77'),
('AN5', 'DEPOYEN', 'Gérard', '4 rue des coquelicots', 'gégé@gmail.com', 'FR2817569000408763367863R78');

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

CREATE TABLE IF NOT EXISTS `anime` (
  `no_anim` varchar(255) NOT NULL,
  `no_session` varchar(255) NOT NULL,
  `date_sal` date NOT NULL,
  `nb_heures` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `anime`
--

INSERT INTO `anime` (`no_anim`, `no_session`, `date_sal`, `nb_heures`) VALUES
('AN1', 'S1', '2020-09-07', 50),
('AN2', 'S2', '2020-10-01', 30),
('AN3', 'S3', '2018-02-01', 25),
('AN4', 'S4', '2019-01-20', 26);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `no_emp` varchar(255) NOT NULL,
  `nom_emp` varchar(255) NOT NULL,
  `prenom_emp` varchar(255) NOT NULL,
  `ad_emp` varchar(255) NOT NULL,
  `no_adh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`no_emp`, `nom_emp`, `prenom_emp`, `ad_emp`, `no_adh`) VALUES
('E1', 'REID', 'Candice', '516 Duncan Ville Thomasmouth', '1'),
('E2', 'WAYNE', 'Richards', '437 Teagan Camp Foxmouth', '2'),
('E3', 'SMITH', 'Nathan', '8 Dave Motorway Whitestad', '3'),
('E4', 'NOEL', 'Thomas', 'Place de Gonzalez 59 669 Chauveau', '4'),
('E5', 'ARNAUD', 'Clémence', '296, chemin Charlotte Dias 19487', '5'),
('E6', 'COX', 'Natasha', 'Flat 69 Khan Squares North Rob', '6');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit1`
--

CREATE TABLE IF NOT EXISTS `inscrit1` (
  `no_adh` varchar(255) NOT NULL,
  `no_session` varchar(255) NOT NULL,
  `date_ins` date NOT NULL,
  `date_pai_ins` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inscrit1`
--

INSERT INTO `inscrit1` (`no_adh`, `no_session`, `date_ins`, `date_pai_ins`) VALUES
('4', 'S2', '2019-01-04', '2019-04-08'),
('4', 'S5', '2019-01-07', '2019-05-11'),
('5', 'S3', '2019-01-05', '2019-04-09'),
('5', 'S4', '2019-01-06', '2019-05-10'),
('6', 'S1', '2019-01-03', '2019-04-07'),
('6', 'S6', '2019-01-08', '2019-05-12');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit2`
--

CREATE TABLE IF NOT EXISTS `inscrit2` (
  `no_emp` varchar(255) NOT NULL,
  `no_session` varchar(255) NOT NULL,
  `date_ins` date NOT NULL,
  `date_pai_ins` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inscrit2`
--

INSERT INTO `inscrit2` (`no_emp`, `no_session`, `date_ins`, `date_pai_ins`) VALUES
('E1', 'S3', '2019-01-05', '2019-04-09'),
('E1', 'S4', '2019-01-06', '2019-05-10'),
('E1', 'S7', '2019-01-07', '2019-05-10'),
('E2', 'S2', '2019-01-04', '2019-04-08'),
('E2', 'S5', '2019-01-07', '2019-05-11'),
('E3', 'S1', '2019-01-03', '2019-04-07'),
('E3', 'S6', '2019-01-08', '2019-05-12');

-- --------------------------------------------------------

--
-- Structure de la table `interet`
--

CREATE TABLE IF NOT EXISTS `interet` (
  `no_adh` varchar(255) NOT NULL,
  `no_theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `interet`
--

INSERT INTO `interet` (`no_adh`, `no_theme`) VALUES
('2', 'T6'),
('3', 'T5'),
('4', 'T4'),
('5', 'T3'),
('6', 'T2'),
('7', 'T1');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `no_session` varchar(255) NOT NULL,
  `no_theme` varchar(255) NOT NULL,
  `date_deb` date NOT NULL,
  `duree` time NOT NULL,
  `prix` varchar(255) NOT NULL,
  `nb_places` int(11) NOT NULL,
  `taux_heure` int(11) NOT NULL,
  `prime` int(11) NOT NULL,
  `no_anim_resp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `session`
--

INSERT INTO `session` (`no_session`, `no_theme`, `date_deb`, `duree`, `prix`, `nb_places`, `taux_heure`, `prime`, `no_anim_resp`) VALUES
('S1', 'T1', '2018-02-01', '02:00:00', 'sac de patates', 100, 6, 100, 'AN1'),
('S2', 'T2', '2018-02-01', '03:00:00', 'Cookies', 50, 5, 50, 'AN4'),
('S3', 'T3', '2020-09-07', '04:00:00', 'Un poster', 10, 4, 60, 'AN3'),
('S4', 'T4', '2020-10-01', '02:00:00', 'Boite de stylos', 25, 3, 90, 'AN2'),
('S5', 'T5', '2020-10-05', '01:00:00', 'Sac de bonbons', 45, 2, 80, 'AN1'),
('S6', 'T6', '2020-10-03', '02:00:00', 'Aucun', 120, 5, 60, 'AN1'),
('S7', 'T6', '2019-02-01', '02:00:00', 'Cacahuètes', 100, 3, 40, 'AN1'),
('S8', 'T2', '2019-05-08', '23:00:00', 'Livre de maths', 123, 10, 100, 'AN4');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `no_anim` varchar(255) NOT NULL,
  `no_theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`no_anim`, `no_theme`) VALUES
('AN1', 'T1'),
('AN1', 'T5'),
('AN1', 'T6'),
('AN2', 'T2'),
('AN3', 'T3'),
('AN4', 'T4');

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `no_theme` varchar(255) NOT NULL,
  `lib_theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `theme`
--

INSERT INTO `theme` (`no_theme`, `lib_theme`) VALUES
('T1', 'Base de Données'),
('T2', 'Communication\r\n'),
('T3', 'Français'),
('T4', 'Algèbre'),
('T5', 'Algo'),
('T6', 'Maths');

-- --------------------------------------------------------

--
-- Structure de la table `type_adh`
--

CREATE TABLE IF NOT EXISTS `type_adh` (
  `no_type_adh` varchar(255) NOT NULL,
  `nom_type_adh` varchar(255) NOT NULL,
  `mcotis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_adh`
--

INSERT INTO `type_adh` (`no_type_adh`, `nom_type_adh`, `mcotis`) VALUES
('TA1', 'Entreprise', 1250),
('TA2', 'Particulier', 220);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`no_adh`),
  ADD KEY `no-type-adh` (`no_type_adh`),
  ADD KEY `no-type-adh_2` (`no_type_adh`),
  ADD KEY `no_type_adh` (`no_type_adh`);

--
-- Index pour la table `animateur`
--
ALTER TABLE `animateur`
  ADD PRIMARY KEY (`no_anim`);

--
-- Index pour la table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`no_anim`,`no_session`),
  ADD KEY `no_session` (`no_session`),
  ADD KEY `no_anim` (`no_anim`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`no_emp`),
  ADD KEY `no-adh` (`no_adh`);

--
-- Index pour la table `inscrit1`
--
ALTER TABLE `inscrit1`
  ADD PRIMARY KEY (`no_adh`,`no_session`),
  ADD KEY `no_session` (`no_session`),
  ADD KEY `no_adh` (`no_adh`);

--
-- Index pour la table `inscrit2`
--
ALTER TABLE `inscrit2`
  ADD PRIMARY KEY (`no_emp`,`no_session`),
  ADD KEY `no_session` (`no_session`),
  ADD KEY `no_emp` (`no_emp`);

--
-- Index pour la table `interet`
--
ALTER TABLE `interet`
  ADD PRIMARY KEY (`no_adh`,`no_theme`),
  ADD KEY `no_theme` (`no_theme`),
  ADD KEY `no_adh` (`no_adh`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`no_session`),
  ADD KEY `no-theme` (`no_theme`),
  ADD KEY `no_anim_resp` (`no_anim_resp`),
  ADD KEY `no_session` (`no_session`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`no_anim`,`no_theme`),
  ADD KEY `no_anim` (`no_anim`),
  ADD KEY `no_theme` (`no_theme`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`no_theme`);

--
-- Index pour la table `type_adh`
--
ALTER TABLE `type_adh`
  ADD PRIMARY KEY (`no_type_adh`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `adherent_ibfk_1` FOREIGN KEY (`no_type_adh`) REFERENCES `type_adh` (`no_type_adh`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `anime`
--
ALTER TABLE `anime`
  ADD CONSTRAINT `anime_ibfk_1` FOREIGN KEY (`no_session`) REFERENCES `session` (`no_session`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `anime_ibfk_2` FOREIGN KEY (`no_anim`) REFERENCES `animateur` (`no_anim`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`no_adh`) REFERENCES `adherent` (`no_adh`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `inscrit1`
--
ALTER TABLE `inscrit1`
  ADD CONSTRAINT `inscrit1_ibfk_1` FOREIGN KEY (`no_session`) REFERENCES `session` (`no_session`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `no_adh` FOREIGN KEY (`no_adh`) REFERENCES `adherent` (`no_adh`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `inscrit2`
--
ALTER TABLE `inscrit2`
  ADD CONSTRAINT `inscrit2_ibfk_1` FOREIGN KEY (`no_emp`) REFERENCES `employe` (`no_emp`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `no_session` FOREIGN KEY (`no_session`) REFERENCES `session` (`no_session`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `interet`
--
ALTER TABLE `interet`
  ADD CONSTRAINT `interet_ibfk_1` FOREIGN KEY (`no_theme`) REFERENCES `theme` (`no_theme`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `interet_ibfk_2` FOREIGN KEY (`no_adh`) REFERENCES `adherent` (`no_adh`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `anim` FOREIGN KEY (`no_anim_resp`) REFERENCES `animateur` (`no_anim`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `no_theme` FOREIGN KEY (`no_theme`) REFERENCES `theme` (`no_theme`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD CONSTRAINT `specialite_ibfk_1` FOREIGN KEY (`no_theme`) REFERENCES `theme` (`no_theme`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `specialite_ibfk_2` FOREIGN KEY (`no_anim`) REFERENCES `animateur` (`no_anim`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

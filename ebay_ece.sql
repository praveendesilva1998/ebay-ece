-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 12:18 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebay_ece`
--

-- --------------------------------------------------------

--
-- Table structure for table `acheteur`
--

CREATE TABLE `acheteur` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `validation_code` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `Adresse1` varchar(255) NOT NULL,
  `Adresse2` varchar(255) NOT NULL,
  `Ville` varchar(255) NOT NULL,
  `CodePostal` int(11) NOT NULL,
  `Pays` varchar(255) NOT NULL,
  `Telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acheteur`
--

INSERT INTO `acheteur` (`id`, `first_name`, `last_name`, `email`, `password`, `validation_code`, `active`, `Adresse1`, `Adresse2`, `Ville`, `CodePostal`, `Pays`, `Telephone`) VALUES
(12, 'Praveen', 'De Silva', 'iii@email.com', '827ccb0eea8a706c4c34a16891f84e7b', '0', 1, '43 Esplanade du Belv&eacute;d&egrave;re', '', 'Issy-les-Moulineaux', 92130, 'France', 767939295);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `login`, `password`, `nom`, `prenom`) VALUES
(1, 'praveends1998@gmail.com', '12345', 'De Silva', 'Praveen');

-- --------------------------------------------------------

--
-- Table structure for table `banque`
--

CREATE TABLE `banque` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `numero` bigint(16) NOT NULL,
  `expiration` date NOT NULL,
  `code` smallint(4) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banque`
--

INSERT INTO `banque` (`id`, `nom`, `numero`, `expiration`, `code`, `type`) VALUES
(2, 'DROUINEAU', 1111111111111111, '2021-01-01', 111, 'Visa'),
(3, 'RATTON', 222222222222222, '2021-01-01', 222, 'Mastercard'),
(5, 'DE SILVA', 3333333333333333, '2021-01-01', 333, 'American Express');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Image1` text NOT NULL,
  `Image2` text NOT NULL,
  `Image3` text NOT NULL,
  `Video` text NOT NULL,
  `Prix` float NOT NULL,
  `prix1` float NOT NULL,
  `prix2` float NOT NULL,
  `typeVente` varchar(255) NOT NULL,
  `Categorie` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Vendu` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ID`, `Nom`, `Image1`, `Image2`, `Image3`, `Video`, `Prix`, `prix1`, `prix2`, `typeVente`, `Categorie`, `Description`, `Vendu`) VALUES
(1, 'IPhone X', 'item/iphone1.png', 'item/iphone2.jpg', 'item/iphone3.jpg', '', 800, 0, 0, 'encheres', 'ferrailles ou tresor', 'Ecran Super Retina (OLED) de 5,8 pouces avec HDR\r\nIndice IP67 de resistance à la poussiere et à l eau (profondeur maximale de 1 metre pendant 30 minutes maximum)\r\nDouble appareil photo 12 Mpx avec double stabilisation optique de l image et camera avant TrueDepth 7 Mpx — Mode Portrait et Eclairage de portrait\r\nFace ID pour l authentification securisee et Apple Pay\r\nPuce A11 Bionic avec Neural Engine\r\nRecharge sans fil (avec chargeurs Qi)', 0),
(2, 'iPad Pro', 'item/ipad1.jpg', 'item/ipad2.jpg', 'item/ipad3.jpg', '', 1069, 0, 0, 'acheter maintenant', 'ferrailles ou tresor', 'Ecran Liquid Retina bord a bord de 11 pouces avec ProMotion, True Tone et large gamme de couleurs P3\r\nPuce A12Z Bionic avec Neural Engine\r\nAppareils photo grand‑angle 12 Mpx et ultra grand‑angle 10 Mpx, scanner LiDAR\r\nCamera avant TrueDepth 7 Mpx\r\nFace ID pour l authentification securisee et Apple Pay\r\nQuatre haut‑parleurs et cinq micros de qualite studio\r\nWi‑Fi 6 802.11ax et reseaux de donnees cellulaires 4G LTE Advanced\r\nJusqu a 10 heures d autonomie\r\nConnecteur USB-C pour la recharge et les accessoires\r\nCompatible avec le Magic Keyboard, le Smart Keyboard Folio et l Apple Pencil', 0),
(3, '', 'item/achat/5e9ad86813ea0mac3.jpg', '', '', '', 0, 0, 0, '', '', '', 0),
(4, 'MacBook Air 13 pouces', '', '', '', '', 1199, 0, 0, '', 'Achat ImmÃ©diat', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(5, '', 'item/achat/5e9ad8f46295fmac3.jpg', '', '', '', 0, 0, 0, '', '', '', 0),
(6, 'MacBook Air 13 pouces', '', '', '', '', 1199, 0, 0, 'Achat ImmÃ©diat', 'Accessoires VIP', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(7, '', 'item/achat/5e9ad94e42befmac3.jpg', '', '', '', 0, 0, 0, '', '', '', 0),
(8, 'MacBook Air 13 pouces', '', '', '', '', 1199, 0, 0, 'Achat ImmÃ©diat', 'Accessoires VIP', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(9, 'MacBook Air 13 pouces', '', '', '', '', 1234, 0, 0, 'Achat ImmÃ©diat', 'Ferrailles ou TrÃ©sor', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(10, 'MacBook Air 13 pouces', 'item/achat/5e9afa1a19ea6mac3.jpg', 'item/achat/5e9afa1a19ec2mac2.jpg', 'item/achat/5e9afa1a19ed7mac1.jpg', '', 1169, 0, 0, 'Achat ImmÃ©diat', 'Accessoires VIP', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(11, 'MacBook Air 13 pouces', 'item/achat/5e9afe592c510mac3.jpg', 'item/achat/5e9afe592c525mac2.jpg', 'item/achat/5e9afe592c52amac1.jpg', 'item/achat/5e9afe592c52eMacBook Air â€” Lightness â€” Apple.mp4', 1169, 0, 0, 'Achat ImmÃ©diat', 'Accessoires VIP', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(12, 'MacBook Air 13 pouces', 'item/achat/5e9b00c670719mac3.jpg', 'item/achat/5e9b00c67072emac2.jpg', 'item/achat/5e9b00c670734mac1.jpg', 'item/achat/5e9b00c670738macvideo.mp4', 1169, 0, 0, 'Achat ImmÃ©diat', 'Accessoires VIP', 'Processeur Core i3 bicÅ“ur Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\n256 Go de stockage\r\nTouch ID\r\nÃ‰cran Retina avec affichage True Tone\r\nProcesseur Intel Core i3 bicÅ“ur de 10e gÃ©nÃ©ration Ã  1,1 GHz (Turbo Boost jusquâ€™Ã  3,2 GHz)\r\nIntel Iris Plus Graphics\r\n8 Go de mÃ©moire LPDDR4X Ã  3 733 MHz\r\nSSD de 256 GoÂ¹\r\nMagic Keyboard\r\nTouch ID\r\nTrackpad Force Touch\r\nDeux ports Thunderbolt 3', 0),
(14, 'MacBook Air 13 pouces', '', 'item/achat/5e9b061e478ffmac2.jpg', 'item/achat/5e9b061e47902mac1.jpg', '', 1000, 0, 0, 'Achat ImmÃ©diat', 'Accessoires VIP', 'https://ashleydw.github.io/lightbox/', 0),
(15, 'MacBook Air 13 pouces', 'item/achat/5e9b378066ef3mac1.jpg', 'item/achat/5e9b378066efcmac2.jpg', 'item/achat/5e9b378066efdmac3.jpg', '', 1000, 0, 0, 'Achat ImmÃ©diat', 'Bon pour le MusÃ©e', 'MacBook', 0),
(16, 'MacBook Air 13 pouces', 'item/achat/5e9c8c6f44918mac2.jpg', 'item/achat/5e9c8c6f44921mac3.jpg', 'item/achat/5e9c8c6f44923mac1.jpg', 'item/achat/5e9c8c6f44925macvideo.mp4', 1300, 0, 0, 'Achat Ã  EnchÃ¨re', 'Bon pour le MusÃ©e', 'Avec une rÃ©solution de 2 560 x 1 600 et plus de 4 millions de pixels, les rÃ©sultats sont brillants. Les images offrent un niveau de dÃ©tail et de rÃ©alisme Ã©poustouflant. Le texte est clair et net. Et la technologie True Tone rÃ¨gle automatiquement le point blanc de lâ€™Ã©cran pour le faire correspondre Ã  la tempÃ©rature des couleurs de lâ€™environÂ­nement dans lequel vous vous trouvez. Pages web et eâ€‘mails ont le naturel dâ€™une page imprimÃ©e. Avec des millions de couleurs, tout ce qui sâ€™affiche est tout simplement sublime. Le verre de lâ€™Ã©cran se dÃ©ploie jusquâ€™Ã  la lisiÃ¨re du boÃ®tier et offre Ã  vos contenus une luxueuse vitrine. Vous allez adorer ce que vous allez voir.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `numero` bigint(16) NOT NULL,
  `code` smallint(4) NOT NULL,
  `expiration` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `mail_acheteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`id`, `nom`, `numero`, `code`, `expiration`, `type`, `mail_acheteur`) VALUES
(18, 'DE SILVA', 3333333333333333, 333, '2021-01-01', 'American Express', 'iii@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `photo` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `vendu` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panier`
--

INSERT INTO `panier` (`id`, `user`, `titre`, `prix`, `photo`, `type`, `vendu`) VALUES
(16, 'iii@email.com', 'MacBook Air 13 pouces', 1169, 'item/achat/5e9afe592c510mac3.jpg', 'Achat ImmÃ©diat', 1),
(17, 'iii@email.com', 'IPhone X', 800, 'item/iphone1.png', 'encheres', 1),
(18, 'iii@email.com', 'MacBook Air 13 pouces', 1169, 'item/achat/5e9afa1a19ea6mac3.jpg', 'Achat ImmÃ©diat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendeur`
--

CREATE TABLE `vendeur` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Pseudo` varchar(255) NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Photo` text NOT NULL,
  `Fond` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendeur`
--

INSERT INTO `vendeur` (`ID`, `Nom`, `Pseudo`, `Mail`, `Photo`, `Fond`, `Password`, `Active`) VALUES
(11, 'Lucas RATTON', 'lucas', 'aaa@email.com', 'profil/5e9b075c7ce0b9.jpg', 5000, '', 1),
(17, 'DE SILVA', 'anthony', 'praveends1998@gmail.com', 'profil/profil_random.png', 100, '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acheteur`
--
ALTER TABLE `acheteur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `banque`
--
ALTER TABLE `banque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendeur`
--
ALTER TABLE `vendeur`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acheteur`
--
ALTER TABLE `acheteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banque`
--
ALTER TABLE `banque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vendeur`
--
ALTER TABLE `vendeur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

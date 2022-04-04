-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Dez-2018 às 23:55
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkpath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkpath`) VALUES
(1, 'Collecting Bullets', 1, 11, 'assets/images/artwork/collecting_bullets.jpg'),
(2, 'Closing Time', 4, 5, 'assets/images/artwork/closing_time.jpg'),
(3, 'Flags Deluxe Edition', 7, 12, 'assets/images/artwork/flags_deluxe_edition.jpg'),
(4, 'Djavan Ao Vivo', 10, 1, 'assets/images/artwork/djavan_aovivo.jpg'),
(5, 'Vem', 6, 3, 'assets/images/artwork/vem.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Rosi Golan'),
(4, 'Tom Waits'),
(6, 'Mallu Magalhães'),
(7, 'Brooke Fraser'),
(10, 'Djavan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'MPB'),
(2, 'Samba'),
(3, 'Bossa Nova'),
(4, 'Rock'),
(5, 'Jazz'),
(11, 'folk'),
(12, 'Pop');

-- --------------------------------------------------------

--
-- Estrutura da tabela `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumorder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumorder`, `plays`) VALUES
(1, 'Betty', 7, 3, 12, '2:58', 'assets/mmusic/Brooke_Fraser_Betty.mp3', 2, 0),
(2, 'Coachella', 7, 3, 12, '3:32', 'assets/mmusic/Brooke_Fraser_Coachella.mp3', 6, 0),
(3, 'Something in The Water', 7, 3, 12, '3:02', 'assets/music/Brooke_Fraser_Something_In_The_Water.mp3', 1, 0),
(4, 'Casa Pronta', 6, 5, 12, '3:18', 'assets/music/Mallu_Magalhaes_Casa_Pronta.mp3', 3, 0),
(5, 'Navegador', 6, 5, 12, '3:30', 'assets/music/Mallu_Magalhaes_Navegador.mp3', 7, 0),
(6, 'Você não presta', 6, 5, 12, '4:01', 'assets/music/Mallu_Magalhaes_Voce_Nao_Presta.mp3', 1, 0),
(7, 'Martha', 4, 2, 5, '4:30', 'assets/music/Tom_Waits_Martha.mp3', 6, 0),
(8, 'OI\'55', 4, 2, 5, '3:57', 'assets/music/Tom_Waits_Ol55.mp3', 1, 0),
(9, 'Old Shoes (& Picture Postcards)', 4, 2, 5, '3:40', 'assets/music/Tom_Waits_Old_Shoes_Picture.mp3', 4, 0),
(10, 'Eu te Devoro', 10, 4, 1, '4:58', 'assets/music/Djavan_Eu_Te_Devoro.mp3', 15, 0),
(11, 'Collecting Bullets', 1, 1, 11, '3:49', 'assets/music/Rosi_Golan_Collecting_Bullets.mp3', 3, 0),
(12, 'Don\'t You Dare', 1, 1, 11, '4:30', 'assets/music/Rosi_Golan_Dont_You_Dare.mp3', 5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signupdate` datetime NOT NULL,
  `profilepic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `signupdate`, `profilepic`) VALUES
(1, 'zecarioca', 'Zã©', 'Carioca', 'Ze@gmail.com', 'fa45dab5e949a694a6b45bb01cfd52b4', '2018-12-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'thelsandro', 'Thelsandro', 'Antunes', 'Thelsandro@gmail.com', 'ae6ed4609d57e4ed692ab4e9751323ff', '2018-12-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'bartSimpson', 'Bart', 'Simpson', 'Bart@gmail.com', 'fa45dab5e949a694a6b45bb01cfd52b4', '2018-12-28 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

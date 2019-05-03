-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 03 maj 2019 kl 19:08
-- Serverversion: 10.1.37-MariaDB
-- PHP-version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `forum-webit`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) UNSIGNED NOT NULL,
  `category_title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `categories`
--

INSERT INTO `categories` (`cat_id`, `category_title`) VALUES
(1, 'Memes'),
(2, 'Games'),
(3, 'Youtube');

-- --------------------------------------------------------

--
-- Tabellstruktur `replies`
--

CREATE TABLE `replies` (
  `reply_id` int(3) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL,
  `subcategory_id` int(3) UNSIGNED NOT NULL,
  `topic_id` int(3) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `comment` text NOT NULL,
  `date_posted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `replies`
--

INSERT INTO `replies` (`reply_id`, `category_id`, `subcategory_id`, `topic_id`, `author`, `comment`, `date_posted`) VALUES
(1, 1, 1, 15, 'zzero', 'Hej', '2019-05-02'),
(2, 1, 1, 15, 'zzero', 'dsadsadsa', '2019-05-02'),
(3, 1, 1, 15, 'zzero', 'dsaadsadsadsadsad', '2019-05-02'),
(4, 1, 1, 15, 'lojfhsik', 'dsadadasd', '2019-05-03'),
(5, 1, 2, 16, 'zzero', 'NÃ¤men titta det trodde man inte :O', '2019-05-03'),
(6, 1, 1, 8, 'zzero', 'Jag skulle vilja lÃ¤gga en kommentar hÃ¤r va', '2019-05-03'),
(7, 1, 1, 17, 'zzero', 'HÃ¤r Ã¤r en fin kommentar', '2019-05-03'),
(8, 1, 1, 17, 'zzero', 'dsada', '2019-05-03'),
(9, 3, 6, 20, 'zzero', 'HÃ¤r finns det en massa ja', '2019-05-03'),
(10, 1, 1, 17, 'zzero', 'dsada', '2019-05-03'),
(11, 1, 1, 17, 'zzero', '', '2019-05-03'),
(12, 1, 1, 17, 'zzero', 'dsadadadadad', '2019-05-03'),
(13, 1, 1, 17, 'zzero', '', '2019-05-03');

-- --------------------------------------------------------

--
-- Tabellstruktur `subcategories`
--

CREATE TABLE `subcategories` (
  `subcat_id` int(3) UNSIGNED NOT NULL,
  `parent_id` int(3) UNSIGNED NOT NULL,
  `subcategory_title` varchar(128) NOT NULL,
  `subcategory_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `subcategories`
--

INSERT INTO `subcategories` (`subcat_id`, `parent_id`, `subcategory_title`, `subcategory_desc`) VALUES
(1, 1, 'Swedish Memes', 'Some of the funniest swedish memes'),
(2, 1, 'Funny Memes', 'Just random memes'),
(3, 1, 'Dark Memes', 'Some of the darkest memes'),
(4, 2, 'Counter-Strike Global Offensive', 'Things that happends in cs at the momement'),
(5, 2, 'Starcraft 2', 'more koreans'),
(6, 3, 'Cat Videos', 'Funny, atleast in 2007'),
(7, 3, 'Other Videos', 'Just your average youtube history');

-- --------------------------------------------------------

--
-- Tabellstruktur `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(8) UNSIGNED NOT NULL,
  `replies` int(3) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL,
  `subcategory_id` int(3) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date_posted` date NOT NULL,
  `views` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `topics`
--

INSERT INTO `topics` (`topic_id`, `replies`, `category_id`, `subcategory_id`, `author`, `title`, `content`, `date_posted`, `views`) VALUES
(1, 0, 1, 1, 'zzero', 'Bara ett test topic', 'test content', '2019-04-30', 0),
(2, 0, 1, 1, 'zzero', 'Bara ett test topic 2', 'test content 2', '2019-04-30', 0),
(3, 0, 1, 1, 'zzero', 'Bara ett test topic 3', 'test content 3', '2019-04-30', 2),
(4, 0, 1, 1, 'zzero', 'dsadsa', 'dsasadsddsadsadsadsa', '2019-05-01', 6),
(5, 0, 1, 1, 'zzero', 'dsadsa', 'dsasadsddsadsadsadsa', '2019-05-01', 0),
(6, 0, 1, 1, 'zzero', 'dsadsa', 'dsasadsddsadsadsadsa', '2019-05-01', 0),
(7, 0, 1, 1, 'zzero', 'dsadsa', 'dsasadsddsadsadsadsa', '2019-05-01', 2),
(8, 0, 1, 1, 'zzero', 'Ja det fungerar', 'Det rullar', '2019-05-01', 22),
(15, 0, 1, 1, 'zzero', 'dsadsa', 'dsada', '2019-05-01', 79),
(16, 0, 1, 2, 'zzero', 'Ja det fungerar', 'Wow', '2019-05-03', 6),
(17, 0, 1, 1, 'zzero', 'Ja det fungerar', 'Ã„n sÃ¥ lÃ¤nge', '2019-05-03', 77),
(18, 0, 1, 1, 'zzero', '', '', '2019-05-03', 0),
(19, 0, 1, 1, 'zzero', '', '', '2019-05-03', 0),
(20, 0, 3, 6, 'zzero', 'TEst', 'test', '2019-05-03', 6);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `user_id` int(8) UNSIGNED NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(13, 'zzero', '5f039b4ef0058a1d652f13d612375a5b', 'zzero71tv@hotmail.com'),
(14, 'plox301', '5f039b4ef0058a1d652f13d612375a5b', 'thebluecreeper@live.se');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index för tabell `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `subcategory_id_2` (`subcategory_id`),
  ADD KEY `topic_id_2` (`topic_id`);

--
-- Index för tabell `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Index för tabell `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id_2` (`subcategory_id`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT för tabell `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT för tabell `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT för tabell `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`subcat_id`),
  ADD CONSTRAINT `replies_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`topic_id`);

--
-- Restriktioner för tabell `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`subcat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

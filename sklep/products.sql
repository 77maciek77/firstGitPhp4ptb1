-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 02:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `smallImage` varchar(50) NOT NULL,
  `bigImage` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `avaliableCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `smallImage`, `bigImage`, `price`, `avaliableCount`) VALUES
(1, 'HP Pavilion Aero Ryzen 5-5600/16GB/512/Win11 Silve', 'To koniec kompromisów. Nowy Xiaomi 13 256 GB Flora Green wchodzi z buta na rynek smartfonów. Co może Ci zaoferować? Przede wszystkim topowe podzespoły, które zagwarantują Ci maksimum satysfakcji z zakupu. Znajdziesz tu najnowocześniejszy procesor Qualcomm Snapdragon 8 gen 2, który zasila wytrzymała bateria z technologią bardzo szybkiego ładowania o mocy do 67 W.', 'https://cdn.x-kom.pl/i/setup/images/prod/big/produ', 'https://cdn.x-kom.pl/i/setup/images/prod/big/produ', 3000, 100),
(2, 'Xiaomi 13 8/256GB Flora Green', 'Elegancja do pary z wygodą użytkowania? To właśnie oferuje ultramobilny laptop HP Pavilion Aero , który świetnie sprawdzi się zarówno jako narzędzie do pracy, jak i multimedialne centrum rozrywki, na którym zobaczysz kolejne sezony swoich ulubionych seriali. Do dyspozycji masz również wiele inteligentnych rozwiązań. A smukła konstrukcja oraz niewielka waga pozwolą Ci zabrać go ze sobą wszędzie, gdzie zechcesz. Zaufaj mobilności bez kompromisów..', 'https://cdn.x-kom.pl/i/setup/images/prod/big/produ', 'https://cdn.x-kom.pl/i/setup/images/prod/big/produ', 4800, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

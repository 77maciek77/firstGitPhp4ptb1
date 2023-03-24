-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 02:01 PM
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
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) NOT NULL,
  `key_id` varchar(40) DEFAULT NULL,
  `en` mediumtext DEFAULT NULL,
  `pl` mediumtext DEFAULT NULL,
  `de` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `key_id`, `en`, `pl`, `de`) VALUES
(22, 'notFoundMsg', 'Not Found', 'Nie znaleziono', 'Nicht gefunden'),
(23, 'WelcomeMsg', 'Welcome', 'Witamy', 'Willkommen'),
(24, 'delete', 'Delete', 'Usuń', 'Löschen'),
(25, 'edit', 'Edit', 'Edytuj', 'Bearbeitung'),
(26, 'pageForLoggedMsg', 'Page for logged in', 'Strona dla zalogowanych', 'Seite für eingeloggt'),
(27, 'exit', 'Exit', 'Wyjdź', 'Hinausgehen'),
(28, 'incorrectPassword', 'Incorrect password', 'Niepoprawne hasło', 'Falsches Passwort'),
(29, 'acer_laptop_description', 'New gaming laptop is now avaible in our shop', 'Nowy laptop do gier jest już dostępny w naszym sklepie', 'Neuer Gaming-Laptop ist jetzt in unserem Shop erhältlich'),
(30, 'hour', 'We are open from Monday to Friday between 8:00 and 20:00', 'Jesteśmy otwarci od poniedziałku do piątku w godzinach 8:00 - 20:00', 'Wir sind von Montag bis Freitag zwischen 8:00 und 20:00 Uhr geöffnet.'),
(31, 'MacBookPro14Description', '14 inch laptop with M2 processor.', '14-sto calowy laptop z procesorem M2.', '14 tommers bærbar PC med M2-prosessor.'),
(32, 'tequilaDescription', 'Distilled spirit made from the agave plant that can only be produced in certain regions of Mexico.', 'Spirytus destylowany wytwarzany z fabryki agawy, który może być produkowany tylko w niektórych regionach Meksyku.', 'Destillierter Spiritus aus der Agavenpflanze, der nur in bestimmten Regionen Mexikos hergestellt werden kann.'),
(33, 'login', 'Login', 'Zaloguj sie', 'Einloggen'),
(34, 'password', 'Password', 'Haslo', 'Passwort'),
(35, 'register', 'Register', 'Zarejestruj sie', 'Registrier'),
(36, 'user', 'User', 'Uzytkownik', 'Benutzer'),
(37, 'logout', 'Logout', 'Wyloguj', 'Abmelden'),
(38, 'name', 'Name', 'Imie', 'Vorname'),
(39, 'lname', 'Last name', 'Nazwisko', 'Name'),
(40, 'role', 'Role', 'Rola', 'Rolle'),
(41, 'age', 'Age', 'Wiek', 'Alter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `lname`, `role`, `age`) VALUES
(1, 'login1@gmail.com', 'pass1', 'Anatol', 'Lewandowski', 'admin', 16),
(2, 'login2@gmail.com', 'pass2', 'Korneliusz', 'Górecki', 'user', 17),
(3, 'login3@gmail.com', 'pass3', 'Konrad', 'Jagiełło', 'admin', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_id` (`key_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

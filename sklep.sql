-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Mar 2023, 15:40
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `languages`
--

CREATE TABLE `languages` (
  `id` int(10) NOT NULL,
  `key_id` varchar(40) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `en` mediumtext COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `pl` mediumtext COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `de` mediumtext COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `languages`
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
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `description` text COLLATE utf8mb4_polish_ci NOT NULL,
  `smallImage` text COLLATE utf8mb4_polish_ci NOT NULL,
  `bigImage` text COLLATE utf8mb4_polish_ci NOT NULL,
  `price` double NOT NULL,
  `avaliableCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `smallImage`, `bigImage`, `price`, `avaliableCount`) VALUES
(1, 'HP Pavilion Aero Ryzen 5-5600/16GB/512/Win11 Silve', 'To koniec kompromisów. Nowy Xiaomi 13 256 GB Flora Green wchodzi z buta na rynek smartfonów. Co może Ci zaoferować? Przede wszystkim topowe podzespoły, które zagwarantują Ci maksimum satysfakcji z zakupu. Znajdziesz tu najnowocześniejszy procesor Qualcomm Snapdragon 8 gen 2, który zasila wytrzymała bateria z technologią bardzo szybkiego ładowania o mocy do 67 W.', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2022/4/pr_2022_4_22_8_38_8_208_00.jpg', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2022/4/pr_2022_4_22_8_38_8_208_00.jpg', 3000, 100),
(2, 'Xiaomi 13 8/256GB Flora Green', 'Elegancja do pary z wygodą użytkowania? To właśnie oferuje ultramobilny laptop HP Pavilion Aero , który świetnie sprawdzi się zarówno jako narzędzie do pracy, jak i multimedialne centrum rozrywki, na którym zobaczysz kolejne sezony swoich ulubionych seriali. Do dyspozycji masz również wiele inteligentnych rozwiązań. A smukła konstrukcja oraz niewielka waga pozwolą Ci zabrać go ze sobą wszędzie, gdzie zechcesz. Zaufaj mobilności bez kompromisów..', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2023/2/pr_2023_2_17_10_19_31_289_07.jpg', 'https://cdn.x-kom.pl/i/setup/images/prod/big/product-new-big,,2023/2/pr_2023_2_17_10_19_31_289_07.jpg', 4800, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `lname` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `role` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `lname`, `role`, `age`) VALUES
(1, 'login1@gmail.com', 'pass1', 'Anatol', 'Lewandowski', 'admin', 16),
(3, 'login3@gmail.com', 'pass3', 'Konrad', 'Jagiełło', 'admin', 18),
(6, 'login4@gmail.com', 'pass4', 'Jadwiga', 'Korczyńska', 'user', 34);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_id` (`key_id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

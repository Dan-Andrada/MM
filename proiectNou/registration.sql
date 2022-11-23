-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: nov. 23, 2022 la 07:05 PM
-- Versiune server: 10.4.25-MariaDB
-- Versiune PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `registration`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(199) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 0, 'andrada5@yahoo.com', '0737168764', 'mesaj');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 5, 'Gabriela', '0714526887', 'gabriela@yahoo.com', 'credit card', 'flat no. , strada Sperantei, nr 1, Targu Jiu, Romania - 14251', ', Luciu de buze Makeup Revolution My Sign Lipgloss (2) , Ruj NYX Professional Makeup Soft Matte Lip Cream (1) , Ruj lichid Nyx Professional Makeup Shine Loud Pro Pigment Shine (2) ', 86, '22-Nov-2022', 'completed'),
(3, 5, 'Gabi', '0743565569', 'gabriela@yahoo.com', 'credit card on delivery', 'flat no. 3, str, Tm, ro - 123', ', Ruj NYX Professional Makeup Soft Matte Lip Cream (2) ', 24, '22-Nov-2022', 'pending');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(5, 'Luciu de buze Makeup Revolution My Sign Lipgloss', 23, 'ruj1.jpg'),
(6, 'Ruj NYX Professional Makeup Soft Matte Lip Cream', 12, 'ruj2.jpg'),
(10, 'Creion buze NYX Professional Makeup Slim Lip Pencil', 18, 'ruj3.jpg'),
(11, 'Luciu de buze Revolution Pro Supreme Gloss Lip Pigment', 9, 'ruj4.jpg'),
(12, 'Ruj lichid mat Makeup Revolution Matte Lip', 6, 'ruj5.jpg'),
(13, 'Ruj lichid Nyx Professional Makeup Shine Loud Pro Pigment Shine', 12, 'ruj6.jpg'),
(14, 'Creion buze NYX Professional Makeup Suede Matte Lip Liner', 19, 'ruj7.jpg'),
(15, 'Ruj lichid mat SLEEK MakeUP Matte Me XXL', 13, 'ruj8.jpg'),
(16, 'Ruj lichid Makeup Revolution Crème Lip', 14, 'ruj9.jpg'),
(17, 'Luciu buze NYX Professional Makeup Butter Gloss', 30, 'ruj10.jpg'),
(18, 'Creion buze NYX Professional Makeup Line Loud Lip Pencil', 21, 'ruj11.jpg'),
(19, 'Ruj lichid mat NYX Professional Makeup Lip Lingerie XXL', 44, 'ruj12.jpg'),
(20, 'Ruj Lichid Kiss The Queen Creamy Lipstick', 35, 'ruj13.jpg'),
(21, 'Set Boys`n Berries Magic Nights Liquid Lipstick Set', 42, 'ruj14.jpg'),
(22, 'Ruj Kiss Truism Color Intense Lipstick', 39, 'ruj15.jpg'),
(23, 'Ruj lichid metalic Sleek MakeUP Matte Me Metallic', 45, 'ruj16.jpg'),
(24, 'Ruj Lichid NYX Professional Makeup Powder Puff Lippie Lip Cream', 36, 'ruj17.jpg'),
(25, 'Ruj lichid mat Revolution Pro Supreme Matte Lip Pigment', 18, 'ruj18.jpg'),
(26, 'Ruj lichid mat NYX Professional Makeup Liquid Suede Cream', 27, 'ruj19.jpg'),
(27, 'Ruj Milani Color Statement Lipstick Matte', 28, 'ruj20.jpg'),
(28, 'Ruj Milani Color Fetish Matte Lipstick', 60, 'ruj21.jpg'),
(29, 'Creion buze Milani Understatement Lipliner', 49, 'ruj22.jpg'),
(30, 'Luciu buze pentru volum Milani Keep It Full Nourishing Lip Plumper', 52, 'ruj23.jpg'),
(31, 'Tratament buze NYX Professional Makeup Pride #Thisiseverything Lip Oil', 31, 'ruj24.jpg');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Bianca', 'bianca05@yahoo.com', '276b6c4692e78d4799c12ada515bc3e4', 'user'),
(2, 'Bianca', 'bianca10@yahoo.com', '900150983cd24fb0d6963f7d28e17f72', 'user'),
(3, 'Bianca', 'bianca2@gmail.com', '4124bc0a9335c27f086f24ba207a4912', 'user'),
(4, 'Andrada', 'andrada5@yahoo.com', '14180f38f11db420937b98aa24fad581', 'admin'),
(5, 'Gabriela', 'gabriela@yahoo.com', '900150983cd24fb0d6963f7d28e17f72', 'user');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

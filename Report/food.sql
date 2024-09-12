-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 09:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `status` enum('Pending','Out for delivery','Delivered') NOT NULL,
  `order_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `quantity`, `price`, `address`, `city`, `state`, `zip_code`, `country`, `status`, `order_date`) VALUES
(1, 3, 1, 4, 650.00, '725\r\nKashiwadi Masjid, Navinnagar, Manaliya Wad', 'Navsari', 'Gujarat', '396445', 'India', 'Out for delivery', '2024-08-28 11:44:48'),
(2, 3, 4, 2, 490.00, '725\r\nKashiwadi Masjid, Navinnagar, Manaliya Wad', 'Navsari', 'Gujarat', '396445', 'India', 'Out for delivery', '2024-08-28 11:44:48'),
(3, 4, 13, 1, 290.00, 'narshi nagar society,valsad', 'valsad', 'gujarat', '396001', 'india', 'Delivered', '2024-09-06 11:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `photo`, `category`, `price`, `description`) VALUES
(1, 'Caesar Salad', 'food_1.png', 'Salad', 150.00, 'A classic Caesar salad with romaine lettuce, croutons, and Parmesan cheese.'),
(2, 'Greek Salad', 'food_2.png', 'Salad', 180.00, 'Fresh Greek salad with cucumbers, tomatoes, olives, and feta cheese.'),
(3, 'Pasta Carbonara', 'food_3.png', 'Pasta', 250.00, 'Creamy pasta with pancetta, eggs, and Parmesan cheese.'),
(4, 'Spaghetti Bolognese', 'food_4.png', 'Pasta', 220.00, 'Classic spaghetti with a rich meat sauce.'),
(5, 'Chicken Alfredo', 'food_5.png', 'Pasta', 275.00, 'Pasta with a creamy Alfredo sauce and grilled chicken.'),
(6, 'Vegetable Noodles', 'food_6.png', 'Noodles', 200.00, 'Stir-fried noodles with mixed vegetables.'),
(7, 'Chicken Chow Mein', 'food_7.png', 'Noodles', 230.00, 'Noodles with chicken and a savory sauce.'),
(8, 'Beef Stroganoff Noodles', 'food_8.png', 'Noodles', 270.00, 'Noodles with beef and creamy Stroganoff sauce.'),
(9, 'Chocolate Cake', 'food_9.png', 'Cake', 300.00, 'Rich and moist chocolate cake with a creamy frosting.'),
(10, 'Carrot Cake', 'food_10.png', 'Cake', 280.00, 'Spiced carrot cake with cream cheese frosting.'),
(11, 'Cheesecake', 'food_11.png', 'Cake', 320.00, 'Classic cheesecake with a graham cracker crust.'),
(12, 'Paneer Tikka', 'food_12.png', 'Pure Veg', 220.00, 'Grilled paneer cubes marinated in spices.'),
(13, 'Vegetable Curry', 'food_13.png', 'Pure Veg', 240.00, 'Mixed vegetables cooked in a rich curry sauce.'),
(14, 'Dal Tadka', 'food_14.png', 'Pure Veg', 200.00, 'Lentils cooked with spices and herbs.'),
(15, 'Chicken Sandwich', 'food_15.png', 'Sandwich', 180.00, 'Sandwich with grilled chicken and fresh vegetables.'),
(16, 'Veg Club Sandwich', 'food_16.png', 'Sandwich', 200.00, 'Triple-layered sandwich with assorted vegetables and cheese.'),
(17, 'Grilled Cheese Sandwich', 'food_17.png', 'Sandwich', 160.00, 'Classic grilled cheese sandwich.'),
(18, 'Chicken Roll', 'food_18.png', 'Rolls', 190.00, 'Rolled tortilla with spiced chicken and vegetables.'),
(19, 'Paneer Roll', 'food_19.png', 'Rolls', 210.00, 'Rolled tortilla with spiced paneer and vegetables.'),
(20, 'Vegetable Spring Roll', 'food_20.png', 'Rolls', 170.00, 'Crispy rolls filled with mixed vegetables.'),
(21, 'Apple Pie', 'food_21.png', 'Deserts', 220.00, 'Warm apple pie with a flaky crust.'),
(22, 'Brownie', 'food_22.png', 'Deserts', 250.00, 'Fudgy chocolate brownie with nuts.'),
(23, 'Ice Cream Sundae', 'food_23.png', 'Deserts', 270.00, 'Vanilla ice cream with chocolate sauce and toppings.'),
(25, 'Pasta Primavera', 'food_25.png', 'Pasta', 260.00, 'Pasta with a variety of fresh vegetables.'),
(26, 'Pad Thai Noodles', 'food_26.png', 'Noodles', 250.00, 'Thai-style stir-fried noodles with shrimp and peanuts.'),
(27, 'Red Velvet Cake', 'food_27.png', 'Cake', 330.00, 'Rich red velvet cake with cream cheese frosting.'),
(28, 'Mixed Vegetable Salad', 'food_28.png', 'Salad', 170.00, 'A salad with a variety of fresh vegetables.'),
(29, 'Pasta Pesto', 'food_29.png', 'Pasta', 240.00, 'Pasta with a basil pesto sauce.'),
(30, 'Beef and Broccoli Noodles', 'food_30.png', 'Noodles', 260.00, 'Noodles with beef and broccoli in a savory sauce.'),
(31, 'Fruit Tart', 'food_31.png', 'Deserts', 280.00, 'Tart filled with pastry cream and fresh fruit.'),
(32, 'Mango Mousse', 'food_32.png', 'Deserts', 290.00, 'Light and airy mango mousse with a hint of cream.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Nitesh nadar', 'nitesh@gmail.com', '123434545', '12345'),
(2, 'chaudhari Rohan', 'rohu@gmail.com', '7265001770', '123456789'),
(3, 'Chaudhari Rohan', 'rohan@gmail.com', '7265001770', 'Rohu 143'),
(4, '1234', 'parth@gmail.com', '545454598', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

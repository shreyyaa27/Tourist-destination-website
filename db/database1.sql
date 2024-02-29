-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 08:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `Destinations`
--

CREATE TABLE `Destinations` (
  `Destination_id` int(15) UNSIGNED NOT NULL,
  `Destination_name` varchar(50) NOT NULL DEFAULT '',
  `Destination_year` int(6) NOT NULL,
  `Destination_rating` varchar(10) NOT NULL DEFAULT '',
  `Destination_bio` varchar(400) DEFAULT NULL,
  `Destination_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Destinations`
--

INSERT INTO `Destinations` (`Destination_id`, `Destination_name`, `Destination_year`, `Destination_rating`, `Destination_bio`, `Destination_img`) VALUES
(1, 'LONAVALA', 1750, '4.6', ' Lonavla is a beautiful place located in Maharashtra with grape-green valley. This place is undoubtedly one of the must-visit destinations in Maharashtra.The wonderland like hill station trails over a thick blanket of grass and is wrapped with the beauty of waterfalls and crystal clear lakes.', 'assets/img/lonavala1.jpg'),
(2, 'LADAKH', 19500, '4.3', ' Ladakh (meaning \"land of high mountain passes\") is a mountainous region in North India. Leh, the main city is situated at 3500m above sea level nestled in the great Himalayan, Karakoram, Zanskar and Ladakh ranges. Ladakh is known for remote mountain beauty, studded with monasteries and stupas.', 'assets/img/ladakh.jpg'),
(4, 'MUMBAI', 19453, '4.8', 'Mumbai is the commercial capital of India. It is also known as the city that never sleeps. Mumbai is the perfect blend of culture, customs and lifestyles. Mumbai is India\'s most cosmopolitan city, its financial powerhouse and the nerve center of India\'s fashion industry.', 'assets/img/mumbai.jpg'),
(5, 'MANALI', 10000, '4.5', 'A gift of the Himalayas to the world, Manali is a beautiful township nestled in the picturesque Beas River valley. It is a rustic enclave known for its cool climate and snow-capped mountains, offering respite to tourists escaping scorching heat of the plains.', 'assets/img/manali.jpg'),
(6, 'SHILLONG', 14250, '4.2', 'A beautiful city encircled by pine trees, Shillong is the capital of Meghalaya. It derives its name from Lei Shyllong, an idol worshipped at the Shillong Peak. Standing as tall as 1496 meters, this hill station is known for its weather, picturesque locations and traditions. This place is also known as the ‘Scotland of the East. ', 'assets/img/shillong.jpg'),
(7, 'DARJEELING', 22625, '4.0', ' Darjeeling is a hill station in the Eastern State of West Bengal. Also called the queen of hill-stations, at an altitude of 2134 m. or 7000 ft, it is a famous hill resort offering a breath taking sight of the numerous peaks of the majestic Himalayas.', 'assets/img/Darjeeling.jpg'),
(8, 'RISHIKESH', 19526, '4.6', 'The holy city of Rishikesh, in the base of the Himalayas, holds deep cultural and spiritual significance for local Hindus. Sacred rivers and mountains set the scene for yoga and reflective hikes, and rafting here is an absolute must.', 'assets/img/rishikesh.jpg'),
(9, 'MUNNAR', 15225, '4.5', 'Munnar, the famed hill station of south India, is a romantic locale where natural beauty is everywhere to visit, explore and to enjoy. Munnar is situated at the confluence of three mountain streams – Muthirapuzha, Nallathanni and Kundala – and the word \'Munnar\' means three rivers in Malayalam.\r\n', 'assets/img/munnar.jpg'),
(10, 'OOTY', 20205, '4.2', 'Ooty is popularly known as Queen of Hill Stations. It is also known as the Blue Mountains and is one of the most beautiful hill stations located in South India. It is one of the finest summer resort where the climate is chill and cool even in summer. Ooty is located about 7,500 feet above Sea level.', 'assets/img/Ooty.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `review_Destination_id` int(11) UNSIGNED NOT NULL,
  `review_user_id` int(11) UNSIGNED NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `review_Destination_id`, `review_user_id`, `review_rating`, `review_content`) VALUES
(6, 1, 39, 4, 'This is one of my favorite destination of all time!'),
(7, 1, 39, 1, 'On second thought, this destination was not so good.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_full_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_password`, `user_role`) VALUES
(38, 'admin', 'Admin 1', 'admin@admin.com', 'admin', 1),
(39, 'test', 'Test', 'test@test.com', 'test', 2),
(40, 'Shreya_27', 'SHREYA SINGH', 'shreyasingh1227@GMAIL.COM', '135792468', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Destinations`
--
ALTER TABLE `Destinations`
  ADD PRIMARY KEY (`Destination_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `users_foreign_key` (`review_user_id`),
  ADD KEY `Destinations_foreign_key` (`review_Destination_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Destinations`
--
ALTER TABLE `Destinations`
  MODIFY `Destination_id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `Destinations_foreign_key` FOREIGN KEY (`review_Destination_id`) REFERENCES `Destinations` (`Destination_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_foreign_key` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

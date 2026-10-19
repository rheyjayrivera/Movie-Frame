-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2026 at 10:07 AM
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
-- Database: `frame`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `release_year` smallint(5) UNSIGNED NOT NULL,
  `genre` varchar(50) NOT NULL,
  `director` varchar(100) NOT NULL,
  `synopsis` text NOT NULL,
  `poster_url` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `release_year`, `genre`, `director`, `synopsis`, `poster_url`, `created_at`) VALUES
(1, 'Obsession', 2025, 'Horror, Mystery, Thriller', 'Curry Barker', 'Obsession follows Bear, a hopeless romantic who wants his longtime crush, Nikki, to fall in love with him. He discovers a mysterious object called the “One Wish Willow” and uses it to make his wish come true. However, the wish brings unexpected and frightening consequences, turning his romantic dream into a disturbing nightmare.', 'https://images.openai.com/static-rsc-4/Lhxj4eyhJlyWucapg9dsGgHgrhOzbRyRVUWvszKmbszffr2dzQmmiPTuaWiCwuwBhm8ja8A1f64B62z3l6G2uBR0pqJD1Qw_muia6wsyPqIXIiGWxa6ltBT3Lbs6jtnPSM8KYAQ4DAx40YYITfpulenxl5_oZUgfySWiEdzmGpuueAfF5QT-nZ7zAgGMBfsd?purpose=fullsize', '2026-10-17 07:51:25'),
(2, 'Crystal Lake', 2026, 'Horror, psychological thriller', 'Brad Caleb Kane', 'Set before the original Friday the 13th, the series follows Pamela Voorhees, Jason\'s mother, as she struggles with grief after her young son drowns at Crystal Lake. When two strangers arrive asking questions about her past, disturbing secrets begin to emerge from the town.', 'https://images.openai.com/static-rsc-4/yP-B5uL13sO7kqqT2kao0SnjQZVdgv8pQkgrWTvfocALJrYlBa2Tg1Uq7NJySTSc7dGZt7c5CP4LYGO2YGnsouquM-GAyeEWky2N71yw3TcCL3T-vbap09UcXqP1jCDsDqxTOuxwbpi9hHKo02ZEAZBpqZGu27CkCi5dJ7DsLK5yM2rxDFiPLQlKz17r9SXa?purpose=fullsize', '2026-10-17 07:51:25'),
(3, 'Venom', 2018, 'Superhero, Action, Sci-Fi, Horror', 'Ruben Fleischer', 'Journalist Eddie Brock investigates the Life Foundation, a mysterious organization conducting experiments with alien lifeforms called symbiotes. During his investigation, Eddie becomes bonded with an alien symbiote named Venom, giving him extraordinary abilities and a dangerous second personality.\r\nAs Eddie struggles to control his new powers, he and Venom must work together to stop the Life Foundation\'s sinister plans and confront a powerful symbiote threat.', 'https://images.openai.com/static-rsc-4/N9OL8fFM0t9JOFmPGvriUKNl2Tm59YaZzTA-_Qy5saFPZu_P7jc6S0TRBNrwktpYeqgkPOc1W-E_f0B08fpoAvV8yb3-nnwGmROiaT49IdcwSX8VYlW3jyhUaVJFzpLUzyFYKQFOqXPk9SSFYKPRHwO0hTyb1bgZTjLVTjaBM6o?purpose=inline', '2026-10-17 07:51:25'),
(4, 'Talk to Me', 2023, 'Supernatural Horror, Thriller', 'Danny and Michael Philippou', 'A group of friends discover a mysterious embalmed hand that lets them communicate with spirits. Their curiosity turns dangerous when they push the experience too far and unleash supernatural forces.', 'https://images.openai.com/static-rsc-4/yxUoqQeYjhibGN4iUmIWotsqY7ufDTJ1qtS6sOy5t3imDcY0H02qQ7O14W4Ch-tZUm4blQ1pMtPkJoR3ePhYtKlgkBsPgUp2lGCu5lPCZpuuhiWrCaNKz3M79JTu_fN_hYHvAIYdRnEMZuMm1IcLvDa4ZiL1gcUpOgghDUm5q5zb9x2uCoUHYC-NX0U2mNBb?purpose=fullsize', '2026-10-17 07:51:25'),
(5, 'Bird Box', 2018, 'Post-Apocalyptic Horror, Thriller, Sci-Fi', 'Susanne Bier', 'In a world where an unexplained force causes people who see it to lose control, a mother must guide two children through a dangerous journey while keeping their eyes covered. Survival depends on avoiding the mysterious threat.', 'https://images.openai.com/static-rsc-4/7P8m0BegHI4L_2x6Defcqr5VH4ZvcUQ3tAsfz-5G9-mRMKIP6tj_anom-zfub2u5ti6aztspktKXV0yjRvM7J5vHnOpikLdTOEAPoPtEx1QVE-7oeWGXkCuuRxpTLrOCJewiNyV5elvdfcp7faJv98TGm_-zn6GkHrVZcfimak4?purpose=inline', '2026-10-17 07:51:25'),
(6, 'Life', 2017, 'Sci-Fi, Horror, Thriller', 'Daniel Espinosa', 'A team of astronauts aboard the International Space Station discovers a living organism from Mars. As the organism rapidly grows more intelligent and dangerous, the crew struggles to contain it before it can threaten life on Earth.', 'https://images.openai.com/static-rsc-4/n42bzmWA4ifcl8PrOiIxBHqoMwO6v3GX-2G6kcQUoh-tCmMCp8MS8XYEdu1qa3fwt7tWSNoyCXU4YPHRPOX1T97IYQSHn_vWD2mr2qC7BpJSxPiICJ-poJaw8aIy3zEs6bPm7Gd45AwJ_VyXvTrXrWNl7-7mnxsJrFN2vC0qztoFDqdYxdiWApI1OHVtWlkp?purpose=fullsize', '2026-10-17 07:51:25'),
(7, 'Upgrade', 2018, 'Sci-Fi, Action, Thriller, Horror', 'Leigh Whannell', 'After a violent attack leaves Grey Trace unable to walk, an experimental artificial intelligence implant gives him back control of his body and extraordinary physical abilities. As he investigates the attack, the technology begins influencing his actions in unexpected ways.', 'https://images.openai.com/static-rsc-4/ZOleZJcb-1Dcb-6_cJgN_en7rGTRR-Dyf9dwysIqbNInQjzV2Eu8JtxyhNqZinLs7CvsfwJpg9KY9bzWVKFD7Dxm4K7eiNA1Fwv8SYml6k6f9UxfrrDNPBAmb3cIufGsKJ3epcGKl7PEHAVUgfJ5LQK0DDvpFFSZb50uo2bA_1Ve4pXFOmi5EHmyA-m8kVlJ?purpose=fullsize', '2026-10-17 07:51:25'),
(8, 'Smile', 2022, 'Psychological Horror, Mystery, Thriller', 'Parker Finn', 'After witnessing a disturbing incident involving a patient, Dr. Rose Cotter begins experiencing frightening events that no one else seems to understand. She must uncover the truth behind the terrifying phenomenon before it takes over her life.', 'https://images.openai.com/static-rsc-4/wlkT57vb9hnUixGROTw-p2ypsy7B-yk-de6zWHo54WZL_OqEWVYnlwdN9LOHXwE_PDAzacUgIiRG25vcEvvzioepSdEXhFpytniu4eFsDm9pWjPvL-Xib19JvjEJvZ1_35KTOR3Krsm5Q6d0VbWSzjckEf6EODNXj8MbNsnx9xOjMFhO2eZedPF0kWutblXC?purpose=fullsize', '2026-10-17 07:51:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_genre` (`genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 28, 2023 alle 13:32
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labtv`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `director`
--

INSERT INTO `director` (`id`, `name`) VALUES
(1, 'Regista 1'),
(2, 'Regista 2'),
(3, 'Regista 3'),
(4, 'Regista 4');

-- --------------------------------------------------------

--
-- Struttura della tabella `evidenza`
--

CREATE TABLE `evidenza` (
  `id` varchar(100) DEFAULT NULL,
  `rank` double DEFAULT NULL,
  `rank_up_down` double DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `full_title` varchar(100) DEFAULT NULL,
  `year` double DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `crew` varchar(100) DEFAULT NULL,
  `im_db_rating` varchar(100) DEFAULT NULL,
  `im_db_rating_count` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `evidenza`
--

INSERT INTO `evidenza` (`id`, `rank`, `rank_up_down`, `title`, `full_title`, `year`, `image`, `crew`, `im_db_rating`, `im_db_rating_count`) VALUES
('tt1745960', 1, 0, 'Top Gun: Maverick', 'Top Gun: Maverick (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Joseph Kosinski (dir.), Tom Cruise, Jennifer Connelly\"', '8.7', '115447'),
('tt0092099', 2, 0, 'Top Gun', 'Top Gun (1986)', 1986, 'https://imdb-api.com/images/original/MV5BZjQxYTA3ODItNzgxMy00N2Y2LWJlZGMtMTRlM2JkZjI1ZDhhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg', '\"Tony Scott (dir.), Tom Cruise, Tim Robbins\"', '6.9', '360465'),
('tt4123432', 3, 31, 'Fantastic Beasts: The Secrets of Dumbledore', 'Fantastic Beasts: The Secrets of Dumbledore (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZGQ1NjQyNDMtNzFlZS00ZGIzLTliMWUtNGJkMGMzNTBjNDg0XkEyXkFqcGdeQXVyMTE1NDI5MDQx._V1_Ratio0.6716_AL_.jpg', '\"David Yates (dir.), Eddie Redmayne, Jude Law\"', '6.3', '81866'),
('tt6710474', 4, 1, 'Everything Everywhere All at Once', 'Everything Everywhere All at Once (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_Ratio0.6716_AL_.jpg', '\"Dan Kwan (dir.), Michelle Yeoh, Stephanie Hsu\"', '8.3', '98776'),
('tt4593060', 5, 0, 'Pinocchio', 'Pinocchio (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNDZiMTA3ZjEtZGJjNS00OTkwLWFiYzUtZjdkZDUxZTVlZTY0XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Robert Zemeckis (dir.), Tom Hanks, Lorraine Bracco\"', '', '0'),
('tt9419884', 6, 1, 'Doctor Strange in the Multiverse of Madness', 'Doctor Strange in the Multiverse of Madness (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Sam Raimi (dir.), Benedict Cumberbatch, Elizabeth Olsen\"', '7.3', '195460'),
('tt10648342', 7, -3, 'Thor: Love and Thunder', 'Thor: Love and Thunder (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Taika Waititi (dir.), Natalie Portman, Taika Waititi\"', '', '0'),
('tt19623240', 8, -2, 'Winnie-The-Pooh: Blood and Honey', 'Winnie-The-Pooh: Blood and Honey ( 2)', 2, 'https://imdb-api.com/images/original/MV5BNWZiMDFiZTgtN2QzYS00YjViLWE2OGQtZWIxNzA4MjFmM2UzXkEyXkFqcGdeQXVyMjM4MTU4NjQ@._V1_Ratio1.7761_AL_.jpg', '\"Rhys Frake-Waterfield (dir.), Natasha Tosini, Amber Doig-Thorne\"', '', '0'),
('tt11138512', 9, -1, 'The Northman', 'The Northman (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMzVlMmY2NTctODgwOC00NDMzLWEzMWYtM2RiYmIyNTNhMTI0XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_Ratio0.6716_AL_.jpg', '\"Robert Eggers (dir.), Alexander Skarsgård, Nicole Kidman\"', '7.3', '111885'),
('tt8041270', 10, 17, 'Jurassic World: Dominion', 'Jurassic World: Dominion (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZmQ1NDZjMTktMjFhZC00ZGY5LWEyMTMtNDhkOWM4NmMyZjI0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Colin Trevorrow (dir.), Chris Pratt, Bryce Dallas Howard\"', '6.3', '4153'),
('tt3513500', 11, -8, 'Chip \'n Dale: Rescue Rangers', 'Chip \'n Dale: Rescue Rangers (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZjBlMjIxN2ItNTMyNi00NDk5LWFhMzEtNzdiODE0Y2M4MWI2XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Akiva Schaffer (dir.), Andy Samberg, John Mulaney\"', '7.1', '23350'),
('tt1877830', 12, 0, 'The Batman', 'The Batman (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_Ratio0.6716_AL_.jpg', '\"Matt Reeves (dir.), Robert Pattinson, Zoë Kravitz\"', '7.9', '500872'),
('tt3704428', 13, 2, 'Elvis', 'Elvis (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMjk0YWFlZDQtZjIzYi00Y2Q3LTkxMjktNmMzNzc1NzFmMzhjXkEyXkFqcGdeQXVyNjc0NzQzNTM@._V1_Ratio0.6716_AL_.jpg', '\"Baz Luhrmann (dir.), Tom Hanks, Austin Butler\"', '', '0'),
('tt14549466', 14, 14, 'Crimes of the Future', 'Crimes of the Future (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZDdjODNkMmYtYjMwNS00NTQzLThlYjUtODY2ZjdjNTNlY2JiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"David Cronenberg (dir.), Léa Seydoux, Kristen Stewart\"', '6.6', '2195'),
('tt13320622', 15, -1, 'The Lost City', 'The Lost City (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMmIwYzFhODAtY2I1YS00ZDdmLTkyYWQtZjI5NDIwMDc2MjEyXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"Aaron Nee (dir.), Sandra Bullock, Channing Tatum\"', '6.2', '59532'),
('tt5108870', 16, 1, 'Morbius', 'Morbius (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_Ratio0.6716_AL_.jpg', '\"Daniel Espinosa (dir.), Jared Leto, Matt Smith\"', '5.2', '72601'),
('tt14174940', 17, 445, 'Interceptor', 'Interceptor (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZGNjYjQ3NjgtZWM0NS00MTY5LTlkZWMtODZlNzhkNTU3MzZiXkEyXkFqcGdeQXVyMjM2OTI3Mzk@._V1_Ratio0.6716_AL_.jpg', '\"Matthew Reilly (dir.), Elsa Pataky, Luke Bracey\"', '4.5', '6394'),
('tt13560574', 18, 1, 'X', 'X (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMTJiMmE5YWItOWZjYS00YTg0LWE0MTYtMzg2ZTY4YjNkNDEzXkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_Ratio0.7910_AL_.jpg', '\"Ti West (dir.), Mia Goth, Jenna Ortega\"', '6.6', '43622'),
('tt5315212', 19, -10, 'Senior Year', 'Senior Year (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNDUyYTM0ODYtYzIyMy00OTM2LWFmOTAtMTFlODQwN2NlYjY1XkEyXkFqcGdeQXVyNTk5NTQzNDI@._V1_Ratio0.7910_AL_.jpg', '\"Alex Hardcastle (dir.), Rebel Wilson, Angourie Rice\"', '5.5', '27857'),
('tt7322224', 20, 33, 'Triangle of Sadness', 'Triangle of Sadness (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOTFlYzkyMzEtMTEyNS00MTA3LTk4NTAtZGQzMGQ5MTBiNzVmXkEyXkFqcGdeQXVyNDYwNDUyNDc@._V1_Ratio0.6716_AL_.jpg', '\"Ruben Östlund (dir.), Charlbi Dean, Harris Dickinson\"', '7.8', '252'),
('tt13841850', 21, -5, 'Men', 'Men (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZGQ2ZDNiMjgtMTNhNS00MjUxLWFkYTMtYTI1OTE0MmQ2MmJkXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Alex Garland (dir.), Jessie Buckley, Rory Kinnear\"', '6.3', '6993'),
('tt12412888', 22, 1, 'Sonic the Hedgehog 2', 'Sonic the Hedgehog 2 (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMGI1NjA1MjUtNGQxNC00NDYyLThjODgtZjFkZjQ4OGM0NDc5XkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_Ratio0.6716_AL_.jpg', '\"Jeff Fowler (dir.), James Marsden, Jim Carrey\"', '6.6', '42140'),
('tt14439896', 23, 310, 'Father Stu', 'Father Stu (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNGYwOTI1MTUtYmY0Mi00OTAxLTkwNDEtOTI5YTkyZTVhN2JiXkEyXkFqcGdeQXVyMTAxNDE3MTE5._V1_Ratio0.7910_AL_.jpg', '\"Rosalind Ross (dir.), Mark Wahlberg, Mel Gibson\"', '6.5', '5407'),
('tt9764362', 24, 0, 'The Menu', 'The Menu (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMGUyOTNhZjEtYzg3Ni00NDJjLWJlYzQtYzRmMTBhODRmM2FkXkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_Ratio1.5075_AL_.jpg', '\"Mark Mylod (dir.), Anya Taylor-Joy, Ralph Fiennes\"', '', '0'),
('tt15215512', 25, -12, 'A Perfect Pairing', 'A Perfect Pairing (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNTgzZjM5MWQtN2NhMy00NTFiLTliNGUtYTFiZjY3MWYwYmZjXkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_Ratio0.7910_AL_.jpg', '\"Stuart McDonald (dir.), Victoria Justice, Adam Demos\"', '6.1', '6192'),
('tt1477834', 26, -8, 'Aquaman', 'Aquaman (2018)', 2018, 'https://imdb-api.com/images/original/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_Ratio0.6716_AL_.jpg', '\"James Wan (dir.), Jason Momoa, Amber Heard\"', '6.8', '454765'),
('tt7657566', 27, 6, 'Death on the Nile', 'Death on the Nile (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNjI4ZTQ1OTYtNTI0Yi00M2EyLThiNjMtMzk1MmZlOWMyMDQwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Kenneth Branagh (dir.), Tom Bateman, Annette Bening\"', '6.3', '113472'),
('tt8178634', 28, 8, 'RRR', 'RRR (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOTA5NzQwMGMtNDRlZC00YzA4LTliMzQtNGM0NDIwYTk5Y2ZiXkEyXkFqcGdeQXVyMTIyNzY0NTMx._V1_Ratio1.0000_AL_.jpg', '\"S.S. Rajamouli (dir.), Ram Charan, N.T. Rama Rao Jr.\"', '8.1', '73723'),
('tt4123430', 29, 104, 'Fantastic Beasts: The Crimes of Grindelwald', 'Fantastic Beasts: The Crimes of Grindelwald (2018)', 2018, 'https://imdb-api.com/images/original/MV5BYWVlMDI5N2UtZTIyMC00NjZkLWI5Y2QtODM5NGE5MzA0NmVjXkEyXkFqcGdeQXVyNzU3NjUxMzE@._V1_Ratio0.6716_AL_.jpg', '\"David Yates (dir.), Eddie Redmayne, Katherine Waterston\"', '6.5', '271344'),
('tt0068646', 30, 9, 'The Godfather', 'The Godfather (1972)', 1972, 'https://imdb-api.com/images/original/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.7015_AL_.jpg', '\"Francis Ford Coppola (dir.), Marlon Brando, Al Pacino\"', '9.2', '1790386'),
('tt1464335', 31, -2, 'Uncharted', 'Uncharted (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg', '\"Ruben Fleischer (dir.), Tom Holland, Mark Wahlberg\"', '6.4', '126841'),
('tt2049403', 32, 130, 'Beetlejuice 2', 'Beetlejuice 2 (2025)', 2025, 'https://imdb-api.com/images/original/nopicture.jpg', 'Tim Burton (dir.)', '', '0'),
('tt10954652', 33, 2, 'Old', 'Old (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMjJjZGRhM2YtNTU4NC00OWMwLThhYWUtMWUxNDNhMDZlOTNmXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg', '\"M. Night Shyamalan (dir.), Gael García Bernal, Vicky Krieps\"', '5.8', '103432'),
('tt13650600', 34, 23, 'Emergency', 'Emergency (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMzg0ZDkwZDItMzVkZC00YjI2LTk5OTAtMmE4YTZjMWU3YzllXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg', '\"Carey Williams (dir.), RJ Cyler, Donald Elise Watkins\"', '6.0', '3332'),
('tt0376136', 35, 5, 'The Rum Diary', 'The Rum Diary (2011)', 2011, 'https://imdb-api.com/images/original/MV5BMTM5ODA4MjYxM15BMl5BanBnXkFtZTcwMTM3NTE5Ng@@._V1_Ratio0.6716_AL_.jpg', '\"Bruce Robinson (dir.), Johnny Depp, Giovanni Ribisi\"', '6.1', '104247'),
('tt11703710', 36, -14, 'Downton Abbey: A New Era', 'Downton Abbey: A New Era (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZDdjZjM1YWItNWRmOS00OTEzLWJmYjAtOGQzNTAyNmEwNDhjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Simon Curtis (dir.), Hugh Bonneville, Jim Carter\"', '7.7', '7649'),
('tt15004136', 37, 211, 'Last Seen Alive', 'Last Seen Alive (2022)', 2022, 'https://imdb-api.com/images/original/MV5BODk4MzkxODgtODEwZi00YTAwLWJjYzUtNjRkYjEzY2ZmNzYxXkEyXkFqcGdeQXVyMDEyNTM2Mg@@._V1_Ratio0.7015_AL_.jpg', '\"Brian Goodman (dir.), Gerard Butler, Jaimie Alexander\"', '5.6', '2214'),
('tt8115900', 38, -6, 'The Bad Guys', 'The Bad Guys (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Pierre Perifel (dir.), Sam Rockwell, Marc Maron\"', '6.9', '19356'),
('tt1879016', 39, -13, 'Operation Mincemeat', 'Operation Mincemeat (2021)', 2021, 'https://imdb-api.com/images/original/MV5BOGZlNjZhNjgtMjQzZC00MDI0LWFmNGQtNmNiYTIyYTE3ODhkXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_Ratio0.6716_AL_.jpg', '\"John Madden (dir.), Colin Firth, Matthew Macfadyen\"', '6.6', '13449'),
('tt4513678', 40, -9, 'Ghostbusters: Afterlife', 'Ghostbusters: Afterlife (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMmZiMjdlN2UtYzdiZS00YjgxLTgyZGMtYzE4ZGU5NTlkNjhhXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Jason Reitman (dir.), Carrie Coon, Paul Rudd\"', '7.1', '153135'),
('tt10872600', 41, -3, 'Spider-Man: No Way Home', 'Spider-Man: No Way Home (2021)', 2021, 'https://imdb-api.com/images/original/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_Ratio0.6716_AL_.jpg', '\"Jon Watts (dir.), Tom Holland, Zendaya\"', '8.3', '648270'),
('tt7466442', 42, 16, 'The Bob\'s Burgers Movie', 'The Bob\'s Burgers Movie (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYzFhNDNkY2UtYjc3ZS00NzVkLTlhNzEtYmZiZGMzYmRjMjVhXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_Ratio0.6716_AL_.jpg', '\"Loren Bouchard (dir.), H. Jon Benjamin, Kristen Schaal\"', '7.5', '3440'),
('tt0096446', 43, 9, 'Willow', 'Willow (1988)', 1988, 'https://imdb-api.com/images/original/MV5BZWIyMTA2M2ItOGI5MC00OTY0LWFmZTItN2NkOWQ0MGQ5NDkyL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg', '\"Ron Howard (dir.), Val Kilmer, Joanne Whalley\"', '7.2', '111825'),
('tt0099685', 44, -19, 'Goodfellas', 'Goodfellas (1990)', 1990, 'https://imdb-api.com/images/original/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg', '\"Martin Scorsese (dir.), Robert De Niro, Ray Liotta\"', '8.7', '1121248'),
('tt4998632', 45, 0, 'Ambulance', 'Ambulance (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjUyN2VlZGEtNGEyZC00YjViLTgwYmQtZDJiM2FlOTU3Mjg2XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.6716_AL_.jpg', '\"Michael Bay (dir.), Jake Gyllenhaal, Yahya Abdul-Mateen II\"', '6.1', '43435'),
('tt4081630', 46, -25, 'The Valet', 'The Valet (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNWZiNDM3MjgtYzY1Ni00ZTI1LTgzMTktMzBiOTI5OWU0OTc0XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Richard Wong (dir.), Eugenio Derbez, Samara Weaving\"', '6.7', '6735'),
('tt9603212', 47, -36, 'Mission: Impossible - Dead Reckoning - Part One', 'Mission: Impossible - Dead Reckoning - Part One (2023)', 2023, 'https://imdb-api.com/images/original/MV5BZmM1MmI1MjctOTkyMi00MjZhLWEwN2MtYjEwNGRjNmUxZmVjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"Christopher McQuarrie (dir.), Tom Cruise, Indira Varma\"', '', '0'),
('tt1649418', 48, -28, 'The Gray Man', 'The Gray Man (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOWY4MmFiY2QtMzE1YS00NTg1LWIwOTQtYTI4ZGUzNWIxNTVmXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"Anthony Russo (dir.), Ana de Armas, Chris Evans\"', '', '0'),
('tt5919756', 49, 0, 'Disappearance at Clifton Hill', 'Disappearance at Clifton Hill (2019)', 2019, 'https://imdb-api.com/images/original/MV5BZmQ4NTM4ODctZjU1Yi00ZGMwLWJkMGYtYWZiNjhmMzg2MTk2XkEyXkFqcGdeQXVyODY3Nzc0OTk@._V1_Ratio0.6716_AL_.jpg', '\"Albert Shin (dir.), Addison Tymec, Mikayla Radan\"', '5.4', '3499'),
('tt11827628', 50, -26, 'Memory', 'Memory (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOGI5N2FhNzktZjZlNi00MmRjLWE1MmUtNjRlNzQyOGMzYjNhXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_Ratio0.6716_AL_.jpg', '\"Martin Campbell (dir.), Liam Neeson, Guy Pearce\"', '5.6', '8194'),
('tt0325980', 51, -5, 'Pirates of the Caribbean: The Curse of the Black Pearl', 'Pirates of the Caribbean: The Curse of the Black Pearl (2003)', 2003, 'https://imdb-api.com/images/original/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg', '\"Gore Verbinski (dir.), Johnny Depp, Geoffrey Rush\"', '8.0', '1093866'),
('tt7144666', 52, 18, 'The Black Phone', 'The Black Phone (2021)', 2021, 'https://imdb-api.com/images/original/MV5BOWVmNTBiYTUtZWQ3Yi00ZDlhLTgyYjUtNzBhZjM3YjRiNGRkXkEyXkFqcGdeQXVyNzYyOTM1ODI@._V1_Ratio0.6716_AL_.jpg', '\"Scott Derrickson (dir.), Ethan Hawke, Jeremy Davies\"', '7.3', '935'),
('tt0107290', 53, 1, 'Jurassic Park', 'Jurassic Park (1993)', 1993, 'https://imdb-api.com/images/original/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_Ratio0.6716_AL_.jpg', '\"Steven Spielberg (dir.), Sam Neill, Laura Dern\"', '8.2', '950065'),
('tt3183660', 54, 128, 'Fantastic Beasts and Where to Find Them', 'Fantastic Beasts and Where to Find Them (2016)', 2016, 'https://imdb-api.com/images/original/MV5BMjMxOTM1OTI4MV5BMl5BanBnXkFtZTgwODE5OTYxMDI@._V1_Ratio0.6716_AL_.jpg', '\"David Yates (dir.), Eddie Redmayne, Katherine Waterston\"', '7.2', '463482'),
('tt1160419', 55, -5, 'Dune', 'Dune (2021)', 2021, 'https://imdb-api.com/images/original/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Denis Villeneuve (dir.), Timothée Chalamet, Rebecca Ferguson\"', '8.0', '576128'),
('tt10886166', 56, -8, '365 Days', '365 Days (2020)', 2020, 'https://imdb-api.com/images/original/MV5BMDdhYzNkOWQtYWNlNi00NDdjLWJlZDMtMjJjZDYyNjAxM2U1XkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_Ratio0.7313_AL_.jpg', '\"Barbara Bialowas (dir.), Anna-Maria Sieklucka, Michele Morrone\"', '3.3', '82481'),
('tt15218000', 57, 975, 'Fire Island', 'Fire Island (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNjBiZjc3YzItYWQ0Ni00YjZlLWFjYTAtMTBiNzM5ZmMxOGExXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Andrew Ahn (dir.), Joel Kim Booster, Bowen Yang\"', '6.8', '2186'),
('tt12996154', 58, -11, '365 Days: This Day', '365 Days: This Day (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjY2NzUxNjgtNjJhNy00NTA4LTlmNzItYzQ4MDdjNWYxZjkwXkEyXkFqcGdeQXVyMTEwMTY3NDI@._V1_Ratio0.7015_AL_.jpg', '\"Barbara Bialowas (dir.), Anna-Maria Sieklucka, Michele Morrone\"', '2.5', '14807'),
('tt10298810', 59, 21, 'Lightyear', 'Lightyear (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYTg2Zjk0ZTctM2ZmMi00MDRmLWJjOGYtNWM0YjBmZTBjMjRkXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Angus MacLane (dir.), Chris Evans, Keke Palmer\"', '', '0'),
('tt7131622', 60, 4, 'Once Upon a Time... In Hollywood', 'Once Upon a Time... In Hollywood (2019)', 2019, 'https://imdb-api.com/images/original/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_Ratio0.6716_AL_.jpg', '\"Quentin Tarantino (dir.), Leonardo DiCaprio, Brad Pitt\"', '7.6', '691573'),
('tt1189340', 61, -17, 'The Lincoln Lawyer', 'The Lincoln Lawyer (2011)', 2011, 'https://imdb-api.com/images/original/MV5BMTQ4NDE4NTY5MV5BMl5BanBnXkFtZTcwODQyMTkxNA@@._V1_Ratio0.6716_AL_.jpg', '\"Brad Furman (dir.), Matthew McConaughey, Marisa Tomei\"', '7.3', '234306'),
('tt0120915', 62, 57, 'Star Wars: Episode I - The Phantom Menace', 'Star Wars: Episode I - The Phantom Menace (1999)', 1999, 'https://imdb-api.com/images/original/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg', '\"George Lucas (dir.), Ewan McGregor, Liam Neeson\"', '6.5', '784271'),
('tt12593682', 63, 111, 'Bullet Train', 'Bullet Train (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMDU2ZmM2OTYtNzIxYy00NjM5LTliNGQtN2JmOWQzYTBmZWUzXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"David Leitch (dir.), Zazie Beetz, Sandra Bullock\"', '7.8', '35'),
('tt0076759', 64, 35, 'Star Wars', 'Star Wars (1977)', 1977, 'https://imdb-api.com/images/original/MV5BNzg4MjQxNTQtZmI5My00YjMwLWJlMjUtMmJlY2U2ZWFlNzY1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"George Lucas (dir.), Mark Hamill, Harrison Ford\"', '8.6', '1327004'),
('tt0111161', 65, 11, 'The Shawshank Redemption', 'The Shawshank Redemption (1994)', 1994, 'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg', '\"Frank Darabont (dir.), Tim Robbins, Morgan Freeman\"', '9.3', '2595057'),
('tt0121766', 66, 54, 'Star Wars: Episode III - Revenge of the Sith', 'Star Wars: Episode III - Revenge of the Sith (2005)', 2005, 'https://imdb-api.com/images/original/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_Ratio0.7313_AL_.jpg', '\"George Lucas (dir.), Hayden Christensen, Natalie Portman\"', '7.6', '767962'),
('tt10838180', 67, 4, 'The Matrix Resurrections', 'The Matrix Resurrections (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMGJkNDJlZWUtOGM1Ny00YjNkLThiM2QtY2ZjMzQxMTIxNWNmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg', '\"Lana Wachowski (dir.), Keanu Reeves, Carrie-Anne Moss\"', '5.7', '228448'),
('tt9179430', 68, 0, 'Vikram', 'Vikram (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMmJhYTYxMGEtNjQ5NS00MWZiLWEwN2ItYjJmMWE2YTU1YWYxXkEyXkFqcGdeQXVyMTEzNzg0Mjkx._V1_Ratio0.6716_AL_.jpg', '\"Lokesh Kanagaraj (dir.), Kamal Haasan, Vijay Sethupathi\"', '9.1', '13365'),
('tt2382320', 69, 5, 'No Time to Die', 'No Time to Die (2021)', 2021, 'https://imdb-api.com/images/original/MV5BYWQ2NzQ1NjktMzNkNS00MGY1LTgwMmMtYTllYTI5YzNmMmE0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_Ratio0.6716_AL_.jpg', '\"Cary Joji Fukunaga (dir.), Daniel Craig, Ana de Armas\"', '7.3', '359021'),
('tt3774694', 70, 11, 'Love', 'Love (2015)', 2015, 'https://imdb-api.com/images/original/MV5BMTQzNDUwODk5NF5BMl5BanBnXkFtZTgwNzA0MDQ2NTE@._V1_Ratio0.7015_AL_.jpg', '\"Gaspar Noé (dir.), Aomi Muyock, Karl Glusman\"', '6.0', '57320'),
('tt0109830', 71, 81, 'Forrest Gump', 'Forrest Gump (1994)', 1994, 'https://imdb-api.com/images/original/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg', '\"Robert Zemeckis (dir.), Tom Hanks, Robin Wright\"', '8.8', '2003798'),
('tt0367594', 72, 15, 'Charlie and the Chocolate Factory', 'Charlie and the Chocolate Factory (2005)', 2005, 'https://imdb-api.com/images/original/MV5BNjcxMjg1Njg2NF5BMl5BanBnXkFtZTcwMjQ4NzMzMw@@._V1_Ratio0.6716_AL_.jpg', '\"Tim Burton (dir.), Johnny Depp, Freddie Highmore\"', '6.7', '468838'),
('tt1790809', 73, -9, 'Pirates of the Caribbean: Dead Men Tell No Tales', 'Pirates of the Caribbean: Dead Men Tell No Tales (2017)', 2017, 'https://imdb-api.com/images/original/MV5BMTYyMTcxNzc5M15BMl5BanBnXkFtZTgwOTg2ODE2MTI@._V1_Ratio0.6716_AL_.jpg', '\"Joachim Rønning (dir.), Johnny Depp, Geoffrey Rush\"', '6.5', '300554'),
('tt8550054', 74, -9, 'Pleasure', 'Pleasure (2021)', 2021, 'https://imdb-api.com/images/original/MV5BNmU3ZTJjMTEtYzc2Ny00YjVhLTkyYmQtZTFhYWY0N2MxMzkxXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Ninja Thyberg (dir.), Sofia Kappel, Zelda Morrison\"', '6.3', '9833'),
('tt9663764', 75, -15, 'Aquaman and the Lost Kingdom', 'Aquaman and the Lost Kingdom (2023)', 2023, 'https://imdb-api.com/images/original/MV5BM2QyYTRkMjMtMDk5NC00OTc0LWIyYTYtNGNhMzRjMTNhNGNkXkEyXkFqcGdeQXVyNjc0NzQzNTM@._V1_Ratio1.7761_AL_.jpg', '\"James Wan (dir.), Amber Heard, Temuera Morrison\"', '', '0'),
('tt0241527', 76, 55, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter and the Sorcerer\'s Stone (2001)', 2001, 'https://imdb-api.com/images/original/MV5BMzkyZGFlOWQtZjFlMi00N2YwLWE2OWQtYTgxY2NkNmM1NjMwXkEyXkFqcGdeQXVyNjY1NTM1MzA@._V1_Ratio0.6716_AL_.jpg', '\"Chris Columbus (dir.), Daniel Radcliffe, Rupert Grint\"', '7.6', '754674'),
('tt8367814', 77, -10, 'The Gentlemen', 'The Gentlemen (2019)', 2019, 'https://imdb-api.com/images/original/MV5BMTlkMmVmYjktYTc2NC00ZGZjLWEyOWUtMjc2MDMwMjQwOTA5XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_Ratio0.6716_AL_.jpg', '\"Guy Ritchie (dir.), Matthew McConaughey, Charlie Hunnam\"', '7.8', '319455'),
('tt1630029', 78, -42, 'Avatar: The Way of Water', 'Avatar: The Way of Water (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMWFmYmRiYzMtMTQ4YS00NjA5LTliYTgtMmM3OTc4OGY3MTFkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.7910_AL_.jpg', '\"James Cameron (dir.), Michelle Yeoh, Zoe Saldana\"', '', '0'),
('tt4154796', 79, -5, 'Avengers: Endgame', 'Avengers: Endgame (2019)', 2019, 'https://imdb-api.com/images/original/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_Ratio0.6716_AL_.jpg', '\"Anthony Russo (dir.), Robert Downey Jr., Chris Evans\"', '8.4', '1059848'),
('tt0369610', 80, -2, 'Jurassic World', 'Jurassic World (2015)', 2015, 'https://imdb-api.com/images/original/MV5BNzQ3OTY4NjAtNzM5OS00N2ZhLWJlOWUtYzYwZjNmOWRiMzcyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg', '\"Colin Trevorrow (dir.), Chris Pratt, Bryce Dallas Howard\"', '6.9', '622914'),
('tt2463208', 81, -5, 'The Adam Project', 'The Adam Project (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOWM0YWMwMDQtMjE5NS00ZTIwLWE1NWEtODViMWZjMWI2OTU3XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Shawn Levy (dir.), Ryan Reynolds, Walker Scobell\"', '6.7', '169249'),
('tt5834426', 82, -16, 'Moonfall', 'Moonfall (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZjk0OWZiN2ItNmQ2YS00NTJmLTg0MjItNzM4NzBkMWM1ZTRlXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.7015_AL_.jpg', '\"Roland Emmerich (dir.), Halle Berry, Patrick Wilson\"', '5.2', '51197'),
('tt14114802', 83, 10, 'The Outfit', 'The Outfit (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYWQ0NWUyMjktYjg4Yy00NmY3LTg2YzEtNWY5OTY5YTc2MjhjXkEyXkFqcGdeQXVyMTA2MDU0NjM5._V1_Ratio0.6716_AL_.jpg', '\"Graham Moore (dir.), Zoey Deutch, Dylan O\'Brien\"', '7.1', '22524'),
('tt6264654', 84, 15, 'Free Guy', 'Free Guy (2021)', 2021, 'https://imdb-api.com/images/original/MV5BOTY2NzFjODctOWUzMC00MGZhLTlhNjMtM2Y2ODBiNGY1ZWRiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg', '\"Shawn Levy (dir.), Ryan Reynolds, Jodie Comer\"', '7.1', '341531'),
('tt13919802', 85, 283, 'Anek', 'Anek (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNjc0ZGI2ZDItZmVmNC00ZjdiLWEwMDYtMmI1NjMyNzg5MDk3XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg', '\"Anubhav Sinha (dir.), Ayushmann Khurrana, Andrea Kevichüsa\"', '8.2', '11683'),
('tt13276352', 86, -45, 'Toscana', 'Toscana (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjJhNGRhNmItMDA1Yi00MTk0LWJiY2YtMmI2MzhiZTU0ZWZiXkEyXkFqcGdeQXVyNTk1NDE0NTU@._V1_Ratio0.7910_AL_.jpg', '\"Mehdi Avaz (dir.), Cristiana Dell\'Anna, Lærke Winther\"', '5.7', '4293'),
('tt1798632', 87, -45, 'Firestarter', 'Firestarter (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMWIzNzA4MmUtYTIzNy00Y2Q5LWIyM2YtZGRiYzM0ZWQzOTU2XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Keith Thomas (dir.), Zac Efron, Ryan Kiera Armstrong\"', '4.6', '10012'),
('tt1488589', 88, 0, 'Guillermo del Toro\'s Pinocchio', 'Guillermo del Toro\'s Pinocchio (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMTkwNjk2ODY2NF5BMl5BanBnXkFtZTcwNTgzNjAyOQ@@._V1_Ratio0.6716_AL_.jpg', '\"Guillermo del Toro (dir.), Finn Wolfhard, Ewan McGregor\"', '', '0'),
('tt12004038', 89, 163, 'Watcher', 'Watcher (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMTNkNjU4OGYtODM3NS00NzM1LWFkZWItZTExNzdjYTAwMmRlXkEyXkFqcGdeQXVyMTE1MzI2NzIz._V1_Ratio0.6716_AL_.jpg', '\"Chloe Okuno (dir.), Maika Monroe, Karl Glusman\"', '6.8', '615'),
('tt9032400', 90, -18, 'Eternals', 'Eternals (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMTExZmVjY2ItYTAzYi00MDdlLWFlOWItNTJhMDRjMzQ5ZGY0XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_Ratio0.6716_AL_.jpg', '\"Chloé Zhao (dir.), Gemma Chan, Richard Madden\"', '6.3', '309483'),
('tt6467266', 91, -1, 'Sing 2', 'Sing 2 (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMWRiZGQ1NDMtODQ2OS00MDlhLWJkZGYtM2ZmNjlhZThjOWRmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Garth Jennings (dir.), Matthew McConaughey, Reese Witherspoon\"', '7.4', '50341'),
('tt3748528', 92, 90, 'Rogue One: A Star Wars Story', 'Rogue One: A Star Wars Story (2016)', 2016, 'https://imdb-api.com/images/original/MV5BMjEwMzMxODIzOV5BMl5BanBnXkFtZTgwNzg3OTAzMDI@._V1_Ratio0.6716_AL_.jpg', '\"Gareth Edwards (dir.), Felicity Jones, Diego Luna\"', '7.8', '608945'),
('tt10323676', 93, 31, 'The Contractor', 'The Contractor (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOWQ3MDg1MTgtMmI4ZC00YjU3LWIyZGEtNmRkNzI0Y2QyN2ExXkEyXkFqcGdeQXVyNzgzODI1OTE@._V1_Ratio0.6716_AL_.jpg', '\"Tarik Saleh (dir.), Chris Pine, Gillian Jacobs\"', '5.8', '12770'),
('tt1273221', 94, 9, 'London Fields', 'London Fields (2018)', 2018, 'https://imdb-api.com/images/original/MV5BYjMwYWNiN2EtMWNkMS00MDU5LThiMGMtOTk5NTQzMjQ4OTkwXkEyXkFqcGdeQXVyNDExMzMxNjE@._V1_Ratio0.6716_AL_.jpg', '\"Mathew Cullen (dir.), Amber Heard, Theo James\"', '3.8', '10643'),
('tt8009428', 95, 167, 'Hustle', 'Hustle (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjdhYTE3NjMtZjI3OC00NzVlLWFiNTUtNzQ3NDNiNTI3NDg4XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Jeremiah Zagar (dir.), Adam Sandler, Ben Foster\"', '', '0'),
('tt11291274', 96, -35, 'The Unbearable Weight of Massive Talent', 'The Unbearable Weight of Massive Talent (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.6716_AL_.jpg', '\"Tom Gormican (dir.), Nicolas Cage, Pedro Pascal\"', '7.4', '23154'),
('tt2953050', 97, -2, 'Encanto', 'Encanto (2021)', 2021, 'https://imdb-api.com/images/original/MV5BNjE5NzA4ZDctOTJkZi00NzM0LTkwOTYtMDI4MmNkMzIxODhkXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_Ratio0.6716_AL_.jpg', '\"Jared Bush (dir.), Stephanie Beatriz, María Cecilia Botero\"', '7.2', '199843'),
('tt11271038', 98, -9, 'Licorice Pizza', 'Licorice Pizza (2021)', 2021, 'https://imdb-api.com/images/original/MV5BYjkwMzIxYzMtOTVkMS00NDQxLThkMjItNzgxN2RiNjdlNTliXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg', '\"Paul Thomas Anderson (dir.), Alana Haim, Cooper Hoffman\"', '7.3', '84308'),
('tt0087800', 99, 155, 'A Nightmare on Elm Street', 'A Nightmare on Elm Street (1984)', 1984, 'https://imdb-api.com/images/original/MV5BNzFjZmM1ODgtMDBkMS00NWFlLTg2YmUtZjc3ZTgxMjE1OTI2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg', '\"Wes Craven (dir.), Heather Langenkamp, Johnny Depp\"', '7.4', '231715'),
('tt3794354', 100, -17, 'Sonic the Hedgehog', 'Sonic the Hedgehog (2020)', 2020, 'https://imdb-api.com/images/original/MV5BNTdmNmI4MzQtZTAzNS00MjhjLWEzOGQtZjI1NDNjZjk4N2JjXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_Ratio0.6716_AL_.jpg', '\"Jeff Fowler (dir.), Ben Schwartz, James Marsden\"', '6.5', '131186');

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `id` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `plot` varchar(100) DEFAULT NULL,
  `star_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`id`, `image`, `title`, `plot`, `star_id`, `director_id`, `genre_id`) VALUES
('f1', 'f1.jpg', 'Film1', 'qwertyuiopè', 1, 3, 5),
('f2', 'f2.jpg', 'Film2', 'mnbvcxzlkjhgfds', 2, 2, 1),
('f3', 'f3.jpg', 'Film3', 'fghgbfvdsaerthjyhn', 3, 2, 2),
('f4', 'f4.jpg', 'Film1 contro tutti', 'fghyjkmhngbfvdsf', 1, 3, 4),
('f5', 'f5.jpg', 'Film5', 'dafghjfg', 3, 3, 1),
('f6', 'film6.jpg', 'FIlm6', 'fghfdsgrthygbfv', 3, 4, 4),
('f7', 'f7.png', 'Film7', 'film 7', 3, 3, 1),
('f8', 'f8.png', 'Film8 contro tutti', 'film8', 4, 4, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `genre`
--

INSERT INTO `genre` (`id`, `description`) VALUES
(1, 'Commedia'),
(2, 'Thriller'),
(3, 'Horror'),
(4, 'Avventura'),
(5, 'Fantasy'),
(6, 'Crime');

-- --------------------------------------------------------

--
-- Struttura della tabella `star`
--

CREATE TABLE `star` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `star`
--

INSERT INTO `star` (`id`, `name`) VALUES
(1, 'Attore 1, Attore 2'),
(2, 'Attore 3'),
(3, 'Attore 4, Attore 6'),
(4, 'Attore 5');

-- --------------------------------------------------------

--
-- Struttura della tabella `trailer`
--

CREATE TABLE `trailer` (
  `id` int(11) NOT NULL,
  `id_film` varchar(100) NOT NULL,
  `video_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `trailer`
--

INSERT INTO `trailer` (`id`, `id_film`, `video_url`) VALUES
(3, 'f1', 'hbhhbhb.com');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `star_id` (`star_id`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indici per le tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `trailer`
--
ALTER TABLE `trailer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_trailer` (`id_film`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `trailer`
--
ALTER TABLE `trailer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`star_id`) REFERENCES `star` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  ADD CONSTRAINT `film_ibfk_3` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Limiti per la tabella `trailer`
--
ALTER TABLE `trailer`
  ADD CONSTRAINT `trailer_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

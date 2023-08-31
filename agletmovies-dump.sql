-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: agletmovies
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_movies`
--

DROP TABLE IF EXISTS `favorite_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_movies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `movie_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorite_movies_user_id_movie_id_unique` (`user_id`,`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_movies`
--

LOCK TABLES `favorite_movies` WRITE;
/*!40000 ALTER TABLE `favorite_movies` DISABLE KEYS */;
INSERT INTO `favorite_movies` VALUES (16,1,9,'2023-08-30 20:34:27','2023-08-30 20:34:27'),(17,1,8,'2023-08-30 20:34:28','2023-08-30 20:34:28'),(19,1,6,'2023-08-30 20:34:32','2023-08-30 20:34:32'),(23,1,5,'2023-08-31 05:29:28','2023-08-31 05:29:28'),(27,1,2,'2023-08-31 05:36:15','2023-08-31 05:36:15'),(29,1,7,'2023-08-31 05:40:16','2023-08-31 05:40:16'),(31,1,4,'2023-08-31 10:47:23','2023-08-31 10:47:23'),(32,1,3,'2023-08-31 10:47:26','2023-08-31 10:47:26'),(33,1,1,'2023-08-31 10:47:28','2023-08-31 10:47:28'),(34,1,13,'2023-08-31 10:55:50','2023-08-31 10:55:50'),(35,1,14,'2023-08-31 10:56:01','2023-08-31 10:56:01'),(36,1,18,'2023-08-31 10:56:08','2023-08-31 10:56:08'),(38,1,12,'2023-08-31 10:57:03','2023-08-31 10:57:03'),(39,1,11,'2023-08-31 10:57:05','2023-08-31 10:57:05'),(40,1,22,'2023-08-31 10:57:09','2023-08-31 10:57:09');
/*!40000 ALTER TABLE `favorite_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_08_29_164650_create_movies_table',1),(6,'2023_08_29_190929_create_favorite_movies_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `movie_external_id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backdrop_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `original_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `popularity` decimal(18,2) DEFAULT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `vote_average` decimal(18,2) DEFAULT NULL,
  `vote_count` int NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `movies_movie_external_id_unique` (`movie_external_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,615656,'Meg 2: The Trench','2Icjry0xdRSNxrtsBR1F47b9r3u.jpg','en','Meg 2: The Trench','An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.',6365.28,'4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg','2023-08-02',6.90,941,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(2,976573,'Elemental','jZIYaISP3GBSrVOPfrp98AMa8Ng.jpg','en','Elemental','In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.',2150.88,'4Y1WNkd88JXmGfhtWR7dmDAo1T2.jpg','2023-06-14',7.80,1553,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(3,724209,'Heart of Stone','xVMtv55caCEvBaV83DofmuZybmI.jpg','en','Heart of Stone','An intelligence operative for a shadowy global peacekeeping agency races to stop a hacker from stealing its most valuable — and dangerous — weapon.',1617.20,'vB8o2p4ETnrfiWEgVxHmHWP9yRl.jpg','2023-08-09',6.90,862,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(4,346698,'Barbie','nHf61UzkfFno5X1ofIhugCPus2R.jpg','en','Barbie','Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.',1315.10,'iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg','2023-07-19',7.40,3492,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(5,667538,'Transformers: Rise of the Beasts','2vFuG6bWGyQUzYS9d69E5l85nIz.jpg','en','Transformers: Rise of the Beasts','When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.',1210.81,'gPbM0MK8CP8A174rmUwGsADNYKD.jpg','2023-06-06',7.50,2982,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(6,569094,'Spider-Man: Across the Spider-Verse','4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg','en','Spider-Man: Across the Spider-Verse','After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.',1157.73,'8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg','2023-05-31',8.40,3855,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(7,298618,'The Flash','yF1eOkaYvwiORauRCPWznV9xVvi.jpg','en','The Flash','When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry\'s only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?',1124.40,'rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg','2023-06-13',6.90,2587,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(8,385687,'Fast X','4XM8DUTQb3lhLemJC51Jx4a2EuA.jpg','en','Fast X','Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.',874.73,'fiVW06jE7z9YnO4trhaMEdclSiC.jpg','2023-05-17',7.30,3512,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(9,884605,'No Hard Feelings','rRcNmiH55Tz0ugUsDUGmj8Bsa4V.jpg','en','No Hard Feelings','On the brink of losing her childhood home, Maddie discovers an intriguing job listing: wealthy helicopter parents looking for someone to “date” their introverted 19-year-old son, Percy, before he leaves for college. To her surprise, Maddie soon discovers the awkward Percy is no sure thing.',837.14,'gD72DhJ7NbfxvtxGiAzLaa0xaoj.jpg','2023-06-15',7.10,986,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(10,633374,'Remember','ru2LECaGqWtsL3kRWWJ3EoDlF5J.jpg','ko','리멤','Pil-ju, an Alzheimer\'s patient in his 80s, who lost all his family during the Japanese colonial era, and devotes his lifelong revenge before his memories disappear, and a young man in his 20s who helps him.',826.99,'8y9mhh3PqGPXbZVhX7Mc25OJpHP.jpg','2022-10-26',7.50,32,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(11,709631,'Cobweb','nYDPmxvl0if5vHBBp7pDYGkTFc7.jpg','en','Cobweb','Eight year old Peter is plagued by a mysterious, constant tapping from inside his bedroom wall—one that his parents insist is all in his imagination. As Peter\'s fear intensifies, he believes that his parents could be hiding a terrible, dangerous secret and questions their trust.',813.53,'cGXFosYUHYjjdKrOmA0bbjvzhKz.jpg','2023-07-19',6.80,239,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(12,1121575,'Babylon 5: The Road Home','axIU0Ay88ZSfZHL5AlsQm64Bcb8.jpg','en','Babylon 5: The Road Home','Travel across the galaxy with John Sheridan as he unexpectedly finds himself transported through multiple timelines and alternate realities in a quest to find his way back home. Along the way he reunites with some familiar faces, while discovering cosmic new revelations about the history, purpose, and meaning of the Universe.',801.76,'qlXLiFKf2kvJ4K2VDBC5Z048vm3.jpg','2023-08-15',6.90,43,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(13,1163045,'Jagun Jagun: The Warrior','4Yon9Qmg3U4onL0OywXAHSkFTUG.jpg','yo','Jagun Jagun: The Warrior','A young man determined to become a powerful warrior joins an elite army, encountering the wrath of a maniacal warlord and the love of a fierce woman.',800.35,'jTLgX0DgJS8vMCroe4NGgUD04jd.jpg','2023-08-10',7.00,32,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(14,1006462,'The Flood','bz66a19bR6BKsbY8gSZCM4etJiK.jpg','en','The Flood','A horde of giant hungry alligators is unleashed on a group of in-transit prisoners and their guards after a massive hurricane floods Louisiana.',763.09,'mvjqqklMpHwOxc40rn7dMhGT0Fc.jpg','2023-07-14',6.80,173,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(15,758769,'Unwelcome','mXBth6deOA3XLU6HKwoNor9UivP.jpg','en','Unwelcome','Londoners Maya and Jamie escape their urban nightmare to the tranquility of rural Ireland only to discover malevolent, murderous goblins lurking in the gnarled, ancient wood at the foot of their new garden. When heavily pregnant Maya’s relationship with a local family turns sour, who – or what – will come to her rescue and to what extremes will she go to protect her unborn child?',723.88,'88bGObx8YKLQDOOhcrBHHzXpiAv.jpg','2023-01-27',5.90,78,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(16,335977,'Indiana Jones and the Dial of Destiny','oFv4qzBLAbi7AKnPaRfiApF4XbL.jpg','en','Indiana Jones and the Dial of Destiny','Finding himself in a new era, and approaching retirement, Indy wrestles with fitting into a world that seems to have outgrown him. But as the tentacles of an all-too-familiar evil return in the form of an old rival, Indy must don his hat and pick up his whip once more to make sure an ancient and powerful artifact doesn\'t fall into the wrong hands.',663.63,'Af4bXE63pVsb2FtbW8uYIyPBadD.jpg','2023-06-28',6.60,1044,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(17,1149381,'Soulcatcher','AioRI7M077BBR33VimFiyFop2Rc.jpg','pl','Operacja: Soulcatcher','A military contractor hired to seize a weapon that turns people into savage killers seeks revenge when his brother falls victim to the device.',661.98,'l1f9JSPjCfNftigEii1SDK1g2b3.jpg','2023-08-02',6.50,154,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(18,961420,'Kingdom 2: Far and Away','1Ju8s25F6l1K1cQRU2mHaODQvzj.jpg','ja','キングダム2 遥かなる大地へ','It follows a young man who dreams of becoming a general and Ying Zheng, whose goal is unification.',661.18,'wE4NqJosSPjiyqStBEv67mQbR1b.jpg','2022-07-15',7.00,24,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(19,614479,'Insidious: The Red Door','hPcP1kv6vrkRmQO3YgV1H97FE5Q.jpg','en','Insidious: The Red Door','To put their demons to rest once and for all, Josh Lambert and a college-aged Dalton Lambert must go deeper into The Further than ever before, facing their family\'s dark past and a host of new and more horrifying terrors that lurk behind the red door.',638.67,'d07phJqCx6z5wILDYqkyraorDPi.jpg','2023-07-05',6.90,990,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(20,872585,'Oppenheimer','rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg','en','Oppenheimer','The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.',631.85,'8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg','2023-07-19',8.30,2745,NULL,'2023-08-30 20:19:21','2023-08-30 20:19:21'),(21,447365,'Guardians of the Galaxy Vol. 3','5YZbUmjbMa3ClvSW1Wj3D6XGolb.jpg','en','Guardians of the Galaxy Vol. 3','Peter Quill, still reeling from the loss of Gamora, must rally his team around him to defend the universe along with protecting one of their own. A mission that, if not completed successfully, could quite possibly lead to the end of the Guardians as we know them.',576.98,'r2J02Z2OpNTctfOSN1Ydgii51I3.jpg','2023-05-03',8.00,4576,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(22,447277,'The Little Mermaid','8FQeHmusSN2hk3bICf16x5GFQvT.jpg','en','The Little Mermaid','The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.',554.73,'ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg','2023-05-18',6.50,1731,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(23,832502,'The Monkey King','jDjmnEuNUfWHg8rbW6u8mylkcO0.jpg','en','The Monkey King','A stick-wielding monkey teams with a young girl on an epic quest for immortality, battling demons, dragons, gods — and his own ego — along the way.',566.68,'i6ye8ueFhVE5pXatgyRrZ83LBD8.jpg','2023-08-11',7.00,97,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(24,644124,'Dampyr','97bwlJw220Z5XE3xAHF6G8gA8g6.jpg','it','Dampyr','Haunted by nightmares, con artist Harlan Draka wanders through the war-torn Balkan countryside, making money out of ridding superstitious villagers of imaginary monsters. But after being hired by soldiers who are under attack by actual vampires, Harlan discovers the truth: he\'s a Dampyr, half-human and half-vampire. While trying to stop a Master of the Night and his undead army, Harlan will have to learn to manage his newfound powers and uncover his origins.',494.53,'zAWfB7kaEUUrnTX9ZlaeySAAGgM.jpg','2022-10-28',6.40,65,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(25,457332,'Hidden Strike','6IafiYxaqR2MxCnEC29bi6637eo.jpg','en','Hidden Strike','Two elite soldiers must escort civilians through a gauntlet of gunfire and explosions.',490.19,'zsbolOkw8RhTU4DKOrpf4M7KCmi.jpg','2023-07-06',7.10,655,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(26,603692,'John Wick: Chapter 4','7I6VUdPj6tQECNHdviJkUHD2u89.jpg','en','John Wick: Chapter 4','With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.',527.04,'vZloFAK7NmvMGKE7VkF5UHaz0I.jpg','2023-03-22',7.80,4313,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(27,981314,'Alien Invasion','rbqxeMXNCCwGErcO4e6eUZA9LG1.jpg','en','Alien Invasion','A group of friends find a large egg, but little do they know it contains an unwelcome predator. Now they must stop it from reaching civilization.',400.43,'kaSvEH3RJvQa6NfAuEVqDMBEk5E.jpg','2023-05-11',4.90,30,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(28,1070514,'Zom 100: Bucket List of the Dead','aEVYGOIrhWDrNoZxVhhSazmRjeR.jpg','ja','ゾン100～ゾンビになるまでにしたい100のこと～','Bullied by his boss, worked around the clock, he\'s nothing more than a corporate drone. All it takes is a zombie outbreak for him to finally feel alive!',473.98,'kD35dB3KOHrLo1Y3RU5xXJ1hI7.jpg','2023-08-03',6.70,258,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(29,502356,'The Super Mario Bros. Movie','9n2tJBplPbgR2ca05hS5CKXwP2c.jpg','en','The Super Mario Bros. Movie','While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.',496.42,'qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg','2023-04-05',7.80,6440,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(30,1008042,'Talk to Me','lDCIQ1Qe7cRnhZ4ybQVVEbadMZ.jpg','en','Talk to Me','When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.',495.12,'kdPMUMJzyYAc4roD52qavX0nLIC.jpg','2023-07-26',7.10,258,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(31,1083862,'Resident Evil: Death Island','7drO1kYgQ0PnnU87sAnBEphYrSM.jpg','ja','バイオハザード：デスアイランド','In San Francisco, Jill Valentine is dealing with a zombie outbreak and a new T-Virus, Leon Kennedy is on the trail of a kidnapped DARPA scientist, and Claire Redfield is investigating a monstrous fish that is killing whales in the bay. Joined by Chris Redfield and Rebecca Chambers, they discover the trail of clues from their separate cases all converge on the same location, Alcatraz Island, where a new evil has taken residence and awaits their arrival.',447.45,'qayga07ICNDswm0cMJ8P3VwklFZ.jpg','2023-06-22',7.60,603,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(32,678512,'Sound of Freedom','waBWlJlMpyFb7STkFHfFvJKgwww.jpg','en','Sound of Freedom','The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.',471.20,'kSf9svfL2WrKeuK8W08xeR5lTn8.jpg','2023-07-03',8.20,381,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(33,1040148,'Ruby Gillman, Teenage Kraken','f7UI3dYpr7ZUHGo0iIr1Qvy1VPe.jpg','en','Ruby Gillman, Teenage Kraken','Ruby Gillman, a sweet and awkward high school student, discovers she\'s a direct descendant of the warrior kraken queens. The kraken are sworn to protect the oceans of the world against the vain, power-hungry mermaids. Destined to inherit the throne from her commanding grandmother, Ruby must use her newfound powers to protect those she loves most.',425.90,'kgrLpJcLBbyhWIkK7fx1fM4iSvf.jpg','2023-06-28',7.60,598,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(34,813477,'Shin Kamen Rider','iJ0UZaC7XW7BUpRQ7OLPZSms8Ou.jpg','ja','シン・仮面ライダー','A man forced to bear power and stripped of humanity. A woman skeptical of happiness. Takeshi Hongo, an Augmentation made by SHOCKER, and Ruriko Midorikawa, a rebel of the organization, escape while fighting off assassins. What’s justice? What’s evil? Will this violence end? Despite his power, Hongo tries to remain human. Along with freedom, Ruriko has regained a heart. What paths will they choose?',353.07,'9dTO2RygcDT0cQkawABw4QkDegN.jpg','2023-03-17',7.00,179,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(35,980489,'Gran Turismo','jv4tiXAgaArMQo57jFMjvBEjmoa.jpg','en','Gran Turismo','The ultimate wish-fulfillment tale of a teenage Gran Turismo player whose gaming skills won him a series of Nissan competitions to become an actual professional racecar driver.',398.18,'ckW6FZqMFEKA9DonixjZSAPxJMo.jpg','2023-08-09',7.40,197,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(36,1076487,'Warhorse One','J0XkW5toJLGEucm1pLDvTHXaKC.jpg','en','Warhorse One','A gunned down Navy SEAL Master Chief must guide a child to safety through a gauntlet of hostile Taliban insurgents and survive the brutal Afghanistan wilderness.',390.05,'jP2ik17jvKiV5sGEknMFbZv7WAe.jpg','2023-06-30',7.30,164,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(37,1003581,'Justice League: Warworld','kIMYSzp1fH1H9adKplekLD9BuNi.jpg','en','Justice League: Warworld','Until now, the Justice League has been a loose association of superpowered individuals. But when they are swept away to Warworld, a place of unending brutal gladiatorial combat, Batman, Superman, Wonder Woman and the others must somehow unite to form an unbeatable resistance able to lead an entire planet to freedom.',310.16,'qmevjlNDaWoEughGlXFWHbQ4TaR.jpg','2023-07-25',7.30,156,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(38,1010581,'My Fault','lntyt4OVDbcxA1l7LtwITbrD3FI.jpg','es','Culpa mía','Noah must leave her city, boyfriend, and friends to move into William Leister\'s mansion, the flashy and wealthy husband of her mother Rafaela. As a proud and independent 17 year old, Noah resists living in a mansion surrounded by luxury. However, it is there where she meets Nick, her new stepbrother, and the clash of their strong personalities becomes evident from the very beginning.',383.49,'w46Vw536HwNnEzOa7J24YH9DPRS.jpg','2023-06-08',8.10,1565,NULL,'2023-08-31 08:46:56','2023-08-31 08:46:56'),(39,912908,'Strays','8iUYdAdkfiIQFMrg2Kxe4gVbXdN.jpg','en','Strays','When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.',380.24,'wDyIj84k4zpEMbhNbX4zaUW0Jkj.jpg','2023-08-17',6.90,34,NULL,'2023-08-31 08:46:57','2023-08-31 08:46:57'),(40,496450,'Miraculous: Ladybug & Cat Noir, The Movie','iEFuHjqrE059SmflBva1JzDJutE.jpg','fr','Miraculous - le film','A life of an ordinary Parisian teenager Marinette goes superhuman when she becomes Ladybug. Bestowed with magical powers of creation, Ladybug must unite with her opposite, Cat Noir, to save Paris as a new villain unleashes chaos unto the city.',368.30,'bBON9XO9Ek0DjRwMBnJNCwC96Cd.jpg','2023-07-05',7.90,516,NULL,'2023-08-31 08:46:57','2023-08-31 08:46:57'),(41,76600,'Avatar: The Way of Water','8rpDcsfLJypbO6vREc0547VKqEv.jpg','en','Avatar: The Way of Water','Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.',331.37,'t6HIqrRAclMCA60NsSmeqe9RmNV.jpg','2022-12-14',7.70,9611,NULL,'2023-08-31 08:47:13','2023-08-31 08:47:13'),(42,1143190,'Fear the Night','aLpQ3G2LRgXYNrQgUlo6AQRo9R6.jpg','en','Fear the Night','During a bachelorette party in a secluded California farmhouse, masked intruders launch a brutal attack, forcing eight women to fight for survival. Led by Tess, a troubled military veteran, they unite to defend themselves throughout a harrowing night.',306.24,'4XLZS2xvdv5rxizzTUVREtRyw95.jpg','2023-07-21',6.60,107,NULL,'2023-08-31 08:47:13','2023-08-31 08:47:13'),(43,1000475,'River Wild','reELFfTtn50XSOPqp4oBdiq1G8v.jpg','en','River Wild','Follows a pair of siblings who love but distrust each other as they embark on a white-water rafting trip with a small group. One of their friends from childhood turns out to be more dangerous than he appears.',344.16,'fffPeOw5Ld8CrI8X9X36wMSzXuX.jpg','2023-08-01',6.40,79,NULL,'2023-08-31 08:47:13','2023-08-31 08:47:13'),(44,565770,'Blue Beetle','ixZzr4PyM2TPs5fka3IJj058WYo.jpg','en','Blue Beetle','Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab.',330.67,'lZ2sOCMCcGaPppaXj0Wiv0S7A08.jpg','2023-08-16',6.90,286,NULL,'2023-08-31 08:47:13','2023-08-31 08:47:13'),(45,455476,'Knights of the Zodiac','oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg','en','Knights of the Zodiac','When a headstrong street orphan, Seiya, in search of his abducted sister unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess, sent to watch over humanity. Can he let his past go and embrace his destiny to become a Knight of the Zodiac?',339.39,'qW4crfED8mpNDadSmMdi7ZDzhXF.jpg','2023-04-27',6.60,771,NULL,'2023-08-31 08:47:13','2023-08-31 08:47:13');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Team Aglet','jointheteam','jointheteam@aglet.co.za','2023-08-30 20:19:03','$2y$10$5SpD/xFH3fR5Ln/5bvuzUegHj4KhEYZa01bWUgTmA5vFqzEMUcsC2','0lsrLQGyyS9AdfJCjD5s4FyVeeWM1gL3jX9fpLAoUYoHEpzfQ7hYRmm6XFS3',NULL,'2023-08-30 20:19:03','2023-08-30 20:19:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31 16:04:23

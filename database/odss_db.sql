-- -------------------------------------------------------------
-- TablePlus 5.3.8(500)
--
-- https://tableplus.com/
--
-- Database: odss_db
-- Generation Time: 2023-06-10 14:26:28.4750
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `file_json` text NOT NULL,
  `user_id` int NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `documents` (`id`, `title`, `description`, `file_json`, `user_id`, `date_created`) VALUES
(3, 'Test Title', '&lt;p style=&quot;text-align: center; &quot;&gt;&lt;b&gt;IIT, NSTU 2023&lt;/b&gt;&lt;/p&gt;&lt;p&gt;This is body of application...&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;u&gt;&lt;br&gt;&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Thank you.&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;u&gt;&lt;br&gt;&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;u&gt;Faithfully&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;i&gt;Akash Debnath&lt;/i&gt;&lt;/b&gt;&lt;/p&gt;', '[\"1686376740_Akash Chandra Debnath (CV).pdf\",\"1686376800_Senior Officer IT Tracking Page.pdf\"]', 1, '2023-06-10 12:02:05');

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Akash', 'Debnath', '', '0163121221', 'Noakhali', 'akash@gmail.com', '12345678', 1, '1686376740_02.jpg', '2020-11-11 15:35:19'),
(3, 'Nasim', 'Molla', '', '0131234567', 'NSTU', 'nasim@gmail.com', '123456', 2, '1686378840__129881089_gettyimages-1245302053.jpg.webp', '2023-06-10 12:34:10'),
(4, 'Sanowar', 'Hossain', '', '0182345678', 'NSTU', 'sanowar@gmail.com', '123123', 1, '1686379800_93629federated_learning.png', '2023-06-10 12:50:53'),
(5, 'Asif', 'mahmud', '', '0193763683', 'NSTU', 'mahmud@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, '1686381960_46718942.png', '2023-06-10 13:26:29');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

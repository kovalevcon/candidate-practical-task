CREATE TABLE `books` (
	`id` int unsigned not null auto_increment primary key,
	`publisher_id` int unsigned not null,
	`isbn` varchar(13) not null,
	`name` varchar(100) not null,
	`description` varchar(200) not null,
	`year` smallint unsigned not null
) DEFAULT CHARACTER SET utf8mb4 COLLATE 'utf8mb4_unicode_ci';

CREATE TABLE `publishers` (
	`id` int unsigned not null auto_increment primary key,
	`name` varchar(100) not null
) DEFAULT CHARACTER SET utf8mb4 COLLATE 'utf8mb4_unicode_ci';

ALTER TABLE `books` ADD CONSTRAINT `books_publisher_id_foreign`
	FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

INSERT INTO `publishers` VALUES (1, 'Pub1'), (2, 'Pub2'), (3, 'Pub3');

INSERT INTO `books` VALUES
(1, 1, '1234567890123', 'Book 1', 'Good book with great plot', 1989),
(2, 2, '1234567190124', 'Book 2', 'Good book with great', 2014),
(3, 3, '1234567290125', 'Book 3', 'Good book with', 2001),
(4, 1, '1234567390126', 'Book 4', 'Good book', 1995),
(5, 2, '1234567890127', 'Book 5', 'Good', 2018);

SELECT `name`, `year` FROM `books`
	WHERE `year` BETWEEN 2000 AND 2015;

SELECT `name`, `description` FROM `books`
	WHERE LENGTH(`description`) > 20;

SELECT `name`, `isbn` FROM `books`
	WHERE `isbn` LIKE '%8%';

SELECT BK.`name`, PB.`name` FROM `books` AS BK
    JOIN `publishers` AS PB ON PB.`id` = BK.`publisher_id`
WHERE PB.`name` = 'Pub2';
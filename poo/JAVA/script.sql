CREATE DATABASE IF NOT EXISTS casa204;
SHOW warnings
CREATE TABLE IF NOT EXISTS author(
    author_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(3),
);
CREATE TABLE IF NOT EXISTS books(
    book_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    author_id INTEGER UNSIGNED ,
    title VARCHAR(100) NOT NULL,
    year INTEGER UNSIGNED NOT NULL DEFAULT 1900,
    languaje VARCHAR(2) NOT NULL  DEFAULT 'es' COMMENT 'ISO 639-1 Languaje',
    cover_url VARCHAR(500),
    price DOUBLE (6,2) NOT NULL DEFAULT 10.0,
    sellable TINYINT (1) DEFAULT 1,
    copies INTEGER NOT NULL DEFAULT 1,
    desciption TEXT
);
CREATE TABLE clients(
    client_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    email VARCHAR (100) NOT NULL UNIQUE,
    birthdate DATETIME,
    gender ENUM('M', 'F','ND') NOT NULL,
    active TINYINT (1) NOT NULL DEFAULT 1,   
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )

    CREATE TABLE IF NOT EXISTS operations(
        operation_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        book_id INTEGER UNSIGNED,
        client_id INTEGER UNSIGNED,
        `type` ENUM('P','D','V') NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        finished TINYINT(1) NOT NULL
    )

    INSERT INTO authors(author_id,name,nationality)
    VALUES('0','William Shakespeare','ENG');

    INSERT INTO authors(name,nationality)
    VALUES('Miguel de Cervantes Saavedra','ESP');

    INSERT INTO authors
    VALUES('0','Gabriel Garcia Marquez','COL');

    INSERT INTO authors(name,nationality)
    VALUES('Juan Rulfo','MEX'),
            ('Julio Cortazar','ARG'),
            ('Isabelle Allende', 'CHI'),
            ('Edgar Allan Poe', 'USA'),
            ('Oscar Wilde', "IRL"),
            ('Stephanie Meyer','USA'),
            ('J.k. Rowling','GBR');

    INSERT INTO `authors` VALUES ('0','Sam Altman','USA'),
(12,'Vladimir Vapnik','RUS'),
(13,'V P Menon','IND'),
(14,'Leonard Mlodinow','USA'),
(15,'Frank Shih','JAP'),
(16,'Maria Konnikova','RUS'),
(17,'Sebastian Gutierrez','ESP'),
(18,'Kurt Vonnegut','USA'),
(19,'Cedric Villani','FRA'),
(20,'Gerald Sussman','USA'),
(21,'Abraham Eraly','IND'),
(22,'Frank Kafka','AUT'),
(23,'John Pratt','USA'),
(24,'Robert Nisbet','USA'),
(25,'H. G. Wells',"ENG"),
(26,'Werner Heisenberg','DEU'),
(27,'Andy Oram',NULL),
(28,'Terence Tao',"AUS"),
(29,'Drew Conway',"USA"),
(30,'Nate Silver',"USA"),
(31,'Wes McKinney',"USA"),
(32,'Thomas Cormen', "USA"),
(33,'Siddhartha Deb',"IND"),
(34,'Albert Camus',"FRA"),
(37,'Adam Smith',"ENG"),
(38,'Ken Follett',"ENG"),
(39,'Fritjof Capra',"AUT"),
(40,'Richard Feynman',"USA"),
(41,'Ernest Hemingway',"USA"),
(42,'Frederick Forsyth',"ENG"),
(43,'Jeffery Archer',"ENG"),
(44,'Randy Pausch',"USA"),
(45,'Ayn Rand',"RUS"),
(46,'Michael Crichton',"USA"),
(47,'John Steinbeck',"USA"),
(48,'Edgar Allen Poe',"USA"),
(51,'Will Durant',NULL),
(52,'P L Deshpande',NULL),
(56,'John Grisham',"USA"),
(57,'V. S. Naipaul',NULL),
(58,'Joseph Heller',NULL),
(59,'BBC',NULL),
(60,'Bob Dylan',"USA"),
(61,'Madan Gupta',"IND"),
(62,'Alfred Stonier',NULL),
(63,'W. H. Greene',NULL),
(64,'Gary Bradsky',NULL),
(65,'Andrew Tanenbaum',NULL),
(66,'David Forsyth',NULL),
(67,'Schilling Taub',NULL),
(68,'Yashwant Kanetkar',NULL),
(69,'Jonathan Stroud',NULL),
(70,'Fyodor Dostoevsky',"RUS"),
(71,'Dan Brown',"USA"),
(72,'Amartya Sen',NULL),
(73,'Amitav Ghosh',NULL),
(75,'Lorraine Hansberry',NULL),
(76,'Bob Woodward',NULL),
(78,'Kuldip Nayar',NULL),
(79,'Sunita Deshpande',NULL),
(80,'William Dalrymple',NULL),
(81,'Various',NULL),
(85,'Sanjay Garg',NULL),
(86,'V P Kale',NULL),
(87,'Shashi Tharoor',"IND"),
(89,'Dominique Lapierre',NULL),
(93,'Bertrand Russell',"ENG"),
(94,'Sam Harris',NULL),
(96,'Earle Stanley Gardner',NULL),
(98,'Peter Drucker',NULL),
(99,'David Bodanis',NULL),
(100,'Victor Hugo',"FRA"),
(103,'Richard Gordon',NULL),
(104,'George Orwell',NULL),
(107,'Lee Iacoca',"USA"),
(108,'William S Maugham',NULL),
(111,'Robert Pirsig',NULL),
(112,'Robert Fisk',NULL),
(114,'Amir Aczel',NULL),
(117,'Samuel Huntington',NULL),
(119,'Richard Bach',NULL),
(120,'Braithwaite',NULL),
(121,'V S Naipaul',NULL),
(122,'Jawaharlal Nehru',NULL),
(128,'Gerald Durrell',NULL),
(133,'Simon Singh',"ENG"),
(134,'Hart Duda',NULL),
(135,'Thomas Friedman',NULL),
(138,'Keith Devlin',NULL),
(140,'James Gleick',NULL),
(141,'Joy Thomas',NULL),
(142,'Muhammad Rashid',NULL),
(143,'Ned Mohan',NULL),
(144,'Simon Haykin',NULL),
(148,'Alex Rutherford',NULL),
(153,'Michael Baz-Zohar',NULL),
(154,'Jim Corbett',NULL),
(155,'Jules Verne',NULL),
(156,'Deshpande P L',NULL),
(160,'Eric Raymond',NULL),
(161,'Sergio Franco',NULL),
(162,'Allen Downey',NULL),
(163,'Morris West',NULL),
(166,'Phillip Janert',NULL),
(167,'Carl Sagan',"USA"),
(168,'E T Bell',NULL),
(169,'Richard Dawkins',NULL),
(170,'Sudhanshu Ranjan',"IND"),
(171,'Kautiyla',NULL),
(172,'Palkhivala',NULL),
(174,'Sorabjee',NULL),
(175,'Hussain Zaidi',NULL),
(176,'Peter Ackroyd',NULL),
(178,'Nariman',NULL),
(179,'Jean Sassoon',NULL),
(180,'Peter Dickinson',NULL),
(182,'Machiavelli',NULL),
(183,'Aldous Huxley',"ENG"),
(184,'J K Rowling',"ENG"),
(185,'Steig Larsson',"SWE"),
(189,'Steve Eddins', NULL),
(192,'Charles Dickens',"ENG"),
('0','Freddy Vega','COL'),
('0','Arthur Conan Doyle','GBR'),
('0','Chuck Palahniuk','USA'),
('0','Juan Rulfo','MEX'),
('0','Henning Mankel','SWE'),
('0','Jaideva Goswami','USA'),
('0','John Foreman','USA'),
('0','Stephen Hawking','USA'),
('0','Stephen Dubner','USA'),
('0','Edward Said','USA'),


TRUNCATE `books`;

INSERT INTO `books` VALUES 
(144,138,'The Numbers Behind Numb3rs',1900,'en',NULL,11.56,1,4,NULL),
(145,47,'A Life in Letters',1900,'en',NULL,14.3,1,4,NULL),
(146,140,'The Information',1900,'en',NULL,16.15,1,4,NULL),
(147,141,'Elements of Information Theory',1900,'en',NULL,17.52,1,4,NULL),
(148,142,'Power Electronics - Rashid',1900,'en',NULL,14.10,1,4,NULL),
(149,143,'Power Electronics - Mohan',1900,'en',NULL,17.51,1,4,NULL),
(150,144,'Neural Networks',1900,'en',NULL,21.20,1,4,NULL),
(151,47,'The Grapes of Wrath',1900,'en',NULL,10.52,1,4,NULL),
(152,52,'Vyakti ani Valli',1900,'en',NULL,10.10,1,4,NULL),
(153,12,'Statistical Learning Theory',1900,'en',NULL,10.99,1,4,NULL),
(154,148,'Empire of the Mughal - The Tainted Throne',1900,'en',NULL,10.87,1,4,NULL),
(155,148,'Empire of the Mughal - Brothers at War',1900,'en',NULL,14.25,1,4,NULL),
(156,148,'Empire of the Mughal - Ruler of the World',1900,'en',NULL,18.58,1,4,NULL),
(157,148,'Empire of the Mughal - The Serpent\'s Tooth',1900,'en',NULL,14.65,1,4,NULL),
(158,148,'Empire of the Mughal - Raiders from the North',1900,'en',NULL,17.89,1,4,NULL),
(159,153,'Mossad',1900,'en',NULL,14.56,1,4,NULL),
(160,154,'Jim Corbett Omnibus',1900,'en',NULL,14.19,1,4,NULL),
(161,155,'20000 Leagues Under the Sea',1900,'en',NULL,19.41,1,4,NULL),
(162,156,'Batatyachi Chal',1900,'en',NULL,18.57,1,4,NULL),
(163,156,'Hafasavnuk',1900,'en',NULL,24.12,1,4,NULL),
(164,156,'Urlasurla',1900,'en',NULL,12.35,1,4,NULL),
(165,68,'Pointers in C',1900,'en',NULL,45.4,1,4,NULL),
(166,160,'The Cathedral and the Bazaar',1900,'en',NULL,14.25,1,4,NULL),
(167,161,'Design with OpAmps',1900,'en',NULL,14.21,1,4,NULL),
(168,162,'Think Complexity',1900,'en',NULL,12.63,1,4,NULL),
(169,163,'The Devil\'s Advocate',1900,'en',NULL,14.56,1,4,NULL),
(170,45,'Ayn Rand Answers',1900,'en',NULL,24.24,1,4,NULL),
(171,45,'Philosophy: Who Needs It',1900,'en',NULL,13.52,1,4,NULL),
(172,166,'Data Analysis with Open Source Tools',1900,'en',NULL,18.9,1,4,NULL),
(173,167,'Brocas Brain',1900,'en',NULL,18.98,1,4,NULL),
(174,168,'Men of Mathematics',1900,'en',NULL,17.54,1,4,NULL),
(175,169,'Oxford book of Modern Science Writing',1900,'en',NULL,17.58,1,4,NULL),
(176,170,'Judiciary and Democracy Justice',1900,'en',NULL,14.89,1,4,NULL),
(177,171,'The Arthashastra',1900,'en',NULL,15.87,1,4,NULL),
(178,172,'We the People',1900,'en',NULL,16.25,1,4,NULL),
(179,172,'We the Nation',1900,'en',NULL,11.145,1,4,NULL),
(180,174,'The Courtroom Genius',1900,'en',NULL,12.25,1,4,NULL),
(181,175,'Dongri to Dubai',1900,'en',NULL,14.00,1,4,NULL),
(182,176,'Foundation History of England',1900,'en',NULL,16.52,1,4,NULL),
(183,80,'City of Djinns',1900,'en',NULL,17.52,1,4,NULL),
(184,178,'India\'s Legal System',1900,'en',NULL,13.25,1,4,NULL),
(185,179,'More Tears to Cry',1900,'en',NULL,18.65,1,4,NULL),
(186,180,'The Ropemaker',1900,'en',NULL,17.85,1,4,NULL),
(188,182,'The Prince',1900,'en',NULL,19.52,1,4,NULL),
(189,183,'Eyeless in Gaza',1900,'en',NULL,13.25,1,4,NULL),
(190,184,'Tales of Beedle the Bard',1900,'en',NULL,25.63,1,4,NULL),
(191,185,'Girl with the Dragon Tattoo',1900,'en',NULL,18.58,1,4,NULL),
(192,185,'Girl who kicked the Hornet\'s Nest',1900,'en',NULL,17.56,1,4,NULL),
(193,185,'Girl who played with Fire',1900,'en',NULL,16.52,1,4,NULL),
(194,28,'Structure and Randomness',1900,'en',NULL,16.34,1,4,NULL),
(195,189,'Image Processing with MATLAB',1900,'en',NULL,13.28,1,4,NULL),
(196,104,'Animal Farm',1900,'en',NULL,24.24,1,4,NULL),
(197,70,'The Idiot',1900,'en',NULL,26.34,1,4,NULL),
(198,192,'A Christmas Carol',1900,'en',NULL,27.17,1,4,NULL);


SELECT b.book_id,a.name,b.title,
from books as b
JOIN authors as a
on a.author_id = b.author_id
where a.author_id between 1 and 10;

SELECT t.transaction_id, c.name, b.title, t.type, a.name
from transactions as t
JOIN books as b 
on t.book_id = b.book_id
JOIN clients as c 
on t.client_id = c.client_id
join authors as a 
on b.author_id = a.author_id
where c.gender = 'F'
and t.type ='sell';


select a.name, b.title
from authors as a, books as b
where a.author_id = b.author_id;

SELECT a.author_id, a.name, a.nationality, b.title,count(b.book_id)
from authors as a
LEFT JOIN books as b 
 on a.author_id = b.author_id
where a.author_id between 1 and 5
group by author_id
order by author_id;


SELECT a.name, b.book_id, b.title 
from authors as a
LEFT JOIN books as b
on a.author_id = b.author_id
WHERE (SELECT count(b.book_id))<1;

Qué nacionalidades hay?
SELECT DISTINCT nationality from authors order by nationality;


Cuántos escitores hay de cada  nacionalidad?
Select nationality, count(author_id) from authors;
cuántos libros hay de cada nacionalidad?
SELECT nationality, count(author_id)as c_authors
from authors
GROUP BY nationality
ORDER BY c_authors DESC;
cuál es el promedio de el precio de los libros?
select avg(price) from authors;
idem, pero  por nacionalidad
cual es el preciomaximo de un libro y el minimo?
cómo quedaria el reporte de prestamos?

    


SELECT nationality, AVG(price) as promedio,count(book_id) as libros, STDDEV(price) as desviacion
from books as b
join authors as a
on a.author_id= b.author_id
group by nationality;

select c.name, b.title,concat(a.name, "(", a.nationality,")") as namenat,t.type, t.modified_at,
TO_DAYS(now()) - TO_DAYS(t.modified_at) as ago
from transactions as t 
left join clients as c
on c.client_id = t.client_id
left join books  as b 
on b.book_id = t.book_id
left join authors as a
on a.author_id = b.author_id;

update clients
set  active = 0
where client_id = 80
limit 1;

UPDATE clients 
SET name = "El andresito", email = "peperueloqgmail.com"
where client_id = 7
limit 1;

SELECT nationality, count(book_id),
sum(if (year <= 1950 , 1, 0)) as "<1950",
sum(if (year >= 1950 and year <= 1990, 1, 0)) as "<1990",
sum(if (year >= 1990 and year <= 2000, 1, 0)) as "<2000",
sum(if (year >= 2000 ,1 ,0)) as "hoy"
FROM books AS b 
JOIN authors AS a
on a.author_id = b.author_id
WHERE a.nationality IS NOT NULL
group by nationality;
























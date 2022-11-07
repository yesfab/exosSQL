--question 1 a
SELECT * FROM film where date_sortie > '1960-01-01';

--questions 1 b
SELECT * FROM film where date_sortie < '1960-01-01'; 

--question 2
UPDATE film
SET description ='MODIF - Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. À cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\est-ce que la Matrice ?'
WHERE film.id=35;

--question 3
INSERT INTO `film` (`id`, `titre`, `slug`, `image`, `prix`, `description`, `date_sortie`) VALUES
(20, 'Star Wars 1', 'star wars 1', 'Star_Wars_Logo.svg.png', 50, 'La Menace fantôme', '1999-10-13');


--question 4
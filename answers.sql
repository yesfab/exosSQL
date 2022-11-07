--question 1 a
SELECT * FROM film where date_sortie > '1960-01-01';

--questions 1 b
SELECT * FROM film where date_sortie < '1960-01-01'; 

--question 2
UPDATE film
SET description ='MODIF - Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. À cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\est-ce que la Matrice ?'
WHERE film.id=35;

--question 3 a
INSERT INTO `film` (`id`, `titre`, `slug`, `image`, `prix`, `description`, `date_sortie`) VALUES
(20, 'Star Wars 1', 'star wars 1', 'Star_Wars_Logo.svg.png', 50, 'La Menace fantôme', '1999-10-13');
INSERT INTO `films_categs` (`id_film`, `id_categorie`) VALUES
(20, 49),
(20, 53),
(20, 52);



--question 4
SELECT * FROM commentaire
INNER JOIN film ON film.id = commentaire.id_film
INNER JOIN user ON user.id = commentaire.id_user
WHERE film.id = 43;

--question 5
DELETE FROM film WHERE film.slug LIKE 't%';

--question 6
SELECT DISTINCT user.id,email,password,avatar,role,login FROM user
INNER JOIN commentaire ON commentaire.id_user = user.id

--question 7
SELECT * FROM film
LEFT JOIN films_categs
ON films_categs.id_film = film.id
LEFT JOIN categorie
ON categorie.id = films_categs.id_categorie
WHERE categorie.id = 51;

--question 8
SELECT AVG(note) from commentaire
INNER JOIN film
ON film.id = commentaire.id_film;

--question 9
SELECT * FROM film
where MONTH(date_sortie) = 06;

--question 10
SELECT DISTINCT user.id,email,password,avatar,role,login FROM user
INNER JOIN commentaire ON commentaire.id_user = user.id
WHERE role = 1;
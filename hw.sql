--1--
SELECT *
FROM movies;
--2--
SELECT id,
    title
FROM movies
WHERE id < 11;
--3--
SELECT title
FROM movies
WHERE id = 485;
--4--
SELECT id
FROM movies
WHERE title = "Made in America (1993)";
--5--
SELECT *
FROM movies
GROUP BY title
LIMIT 10;
--6--
SELECT *
FROM movies
WHERE title LIKE "%(2002)";
--7--
SELECT *
FROM movies
WHERE title LIKE "%Godfather%";
--8--
SELECT *
FROM movies
WHERE genres LIKE "%comedy%";
--9--
SELECT *
FROM movies
WHERE title LIKE "%(2000)%"
    AND genres LIKE "%comedy%";
--10--
SELECT *
FROM movies
WHERE title LIKE "%death%"
    AND genres LIKE "%comedy%";
--11--
SELECT *
FROM movies
WHERE (
        title LIKE "%2001%"
        OR title LIKE "%2002%"
    )
    and title LIKE "%super%";
--joins--
--1--
SELECT movies.title,
    ratings.rating
FROM movies
    INNER JOIN ratings ON movies.id = ratings.movie_id
WHERE title LIKE "%Godfather%";
--2--
SELECT movies.title,
    ratings.rating
FROM movies
    INNER JOIN ratings ON movies.id = ratings.movie_id
WHERE title LIKE "%Godfather%"
ORDER BY title;
--3--
SELECT movies.title,
    links.imdb_id
FROM movies
    INNER JOIN links ON movies.id = links.movie_id
WHERE title LIKE "%(2005)%"
    AND genres LIKE "%comedy%";
--4--
SELECT movies.title,
    ratings.rating
FROM ratings
    JOIN movies ON ratings.movie_id <> movies.id
WHERE rating LIKE "";
--aggregations--
--1--
SELECT AVG(rating)
FROM ratings
WHERE movie_id = 1;
--2--
SELECT COUNT(rating)
FROM ratings
WHERE movie_id = 1;
--3--
SELECT COUNT(id)
FROM movies
WHERE genres LIKE "%horror%";
--4--
SELECT AVG(rating)
FROM ratings
WHERE user_id = 1;
--5--
select max(user_id)
from ratings;
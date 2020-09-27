/* 1 */
USE imdb_movies;
CREATE OR REPLACE VIEW copy_director AS
	SELECT CONCAT(director_first_name, " ", director_last_name) AS director_name, movie_name
	FROM Director
	JOIN movies ON Director.movie_id = movies.movie_id
	JOIN genre ON movies.genre_id = genre.genre_id
	WHERE genre_name = 'Comedy';
/* 2 */ 
USE imdb_movies;
CREATE OR REPLACE VIEW copy_cost AS 
	SELECT movie_name AS Movies, sales AS Sales 
    FROM Movies m 
    JOIN Budget b ON m.budget_id = b.budget_id
    WHERE sales >= 5000000
    ORDER BY SALES ASC;

/* 3 */ 
USE imdb_movies;
CREATE OR REPLACE VIEW avg_ratings AS 
	SELECT FORMAT(AVG(imdb_rating),2) AS Average_genre_ratings, genre_name
    FROM Genre g
    JOIN Movies m ON g.genre_id = m.genre_id 
    JOIN Ratings r ON m.rating_id = r.rating_id
    GROUP BY genre_name
    ORDER BY Average_genre_ratings DESC;

/* 4 */
USE imdb_movies; 
CREATE OR REPLACE VIEW popular_production AS 
	SELECT production_company,  COUNT(*) AS Number_of_Count
    FROM Production p 
    JOIN Movies_Production mp ON p.production_id = mp.production_id
    JOIN Movies m ON mp.movie_id = m.movie_id
    GROUP BY production_company
    ORDER BY Number_of_Count DESC;
    
/* 5 */ 
USE imdb_movies;
CREATE OR REPLACE VIEW viewcompany AS
SELECT movie_name, release_date
FROM Movies 
WHERE production_id IN
	(SELECT production_id
	FROM Production
    WHERE production_company = "Warner Bros")
ORDER BY movie_name ASC;

/* 6 */
USE imdb_movies;
CREATE VIEW high_budget AS
SELECT movie_name AS 'Movie name', release_date AS 'Release date', FORMAT(total_cost, 2) AS 'Budget'
FROM movies
JOIN budget
USING (budget_id)
WHERE total_cost >
(SELECT AVG(total_cost)
FROM budget)
ORDER BY release_date
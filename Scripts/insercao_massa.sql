-- Scrips para inserção em massa de 5.000 filmes
-- 0.18 seconds
LOAD DATA LOCAL INFILE 'C:/Users/WINDOWS/Downloads/movies_5000_fix.csv'
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, title, overview, year, popularity, vote_average, vote_count);

-- Script para inserção em massa de 50.000 filmes
-- 1.69 seconds
LOAD DATA LOCAL INFILE 'C:/Users/WINDOWS/Downloads/movies_50000_fix.csv'
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, title, overview, year, popularity, vote_average, vote_count);

-- Verificação da inserção de dados

SELECT COUNT(*) FROM movies;
SELECT * FROM movies LIMIT 100000;

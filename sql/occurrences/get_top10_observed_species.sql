-- name: get_top10_observed_species()
-- Regresa las diez especies más observadas
WITH top_10 AS (
    SELECT species 
    FROM Surveys 
    GROUP BY species 
    ORDER BY COUNT(*) DESC 
    LIMIT 10
)
SELECT speciescode, scientificname
FROM Species
WHERE speciescode IN top_10;
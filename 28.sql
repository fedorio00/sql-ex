WITH counts AS (SELECT COUNT(*) AS counts FROM Product
GROUP BY maker)

SELECT COUNT(counts) AS qty FROM counts
GROUP BY counts
HAVING counts = 1
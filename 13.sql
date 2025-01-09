SELECT AVG(speed) AS Avg_speed FROM PC
JOIN Product
ON Product.model = PC.model
WHERE maker = 'a' AND type = 'PC'
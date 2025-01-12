SELECT DISTINCT Product.maker, AVG(Laptop.screen) AS Avg_screen FROM Product JOIN Laptop ON Product.model = Laptop.model
WHERE type = 'Laptop'
GROUP BY maker
SELECT DISTINCT Product.Maker, MAX(PC.price) AS Max_price from Product 
JOIN PC ON Product.model = PC.MODEL
GROUP BY maker
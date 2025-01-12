SELECT DISTINCT Product.type, Laptop.model, Laptop.speed
FROM Product 
JOIN Laptop
ON Product.model = Laptop.model
WHERE speed<(SELECT MIN(speed) FROM PC)
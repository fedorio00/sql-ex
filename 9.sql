SELECT DISTINCT Product.maker
FROM Product
JOIN PC
ON PC.model = Product.model
WHERE speed >= 450
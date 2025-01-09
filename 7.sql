SELECT DISTINCT Product.model, PC.price
FROM Product
JOIN PC
ON Product.model = PC.model
WHERE maker = 'B'

UNION

SELECT DISTINCT Product.model, Laptop.price
FROM Product
JOIN Laptop
ON Product.model = Laptop.model
WHERE maker = 'B'

UNION

SELECT DISTINCT Product.model, Printer.price
FROM Product
JOIN Printer
ON Product.model = Printer.model
WHERE maker = 'B'

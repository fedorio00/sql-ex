WITH max_prices AS (
SELECT model, price FROM Laptop
WHERE price = (SELECT MAX(price) FROM Laptop)
UNION
SELECT model, price FROM PC
WHERE price = (SELECT MAX(price) FROM PC)
UNION
SELECT model, price FROM Printer
WHERE price = (SELECT MAX(price) FROM Printer)
)
SELECT model FROM max_prices WHERE price = (SELECT MAX(price) FROM max_prices)
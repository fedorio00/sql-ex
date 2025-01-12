WITH all_prices AS (
SELECT price FROM PC
WHERE model in (SELECT model FROM Product WHERE maker = 'A' AND type = 'PC')
UNION ALL
SELECT price FROM Laptop
WHERE model in (SELECT model FROM Product WHERE maker = 'A' AND type = 'Laptop'))
SELECT AVG(price) AS Avg_price FROM all_prices
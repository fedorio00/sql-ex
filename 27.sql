WITH models AS (SELECT maker,model FROM Product WHERE type = 'PC' AND maker IN (
SELECT maker FROM Product
WHERE type = 'PC'
INTERSECT
SELECT maker FROM Product
WHERE type = 'Printer')
), makers_and_hd AS (SELECT models.maker, PC.hd
FROM models JOIN PC
ON models.model = PC.model)

SELECT maker, AVG(hd) AS Avg_hd FROM makers_and_hd
GROUP BY maker
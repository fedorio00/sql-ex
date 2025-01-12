SELECT DISTINCT maker, COUNT(maker) AS Count_Model FROM Product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(model) >= 3
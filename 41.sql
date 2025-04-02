WITH total AS (
  SELECT model, price FROM pc
  UNION
  SELECT model, price FROM laptop
  UNION 
  SELECT model, price FROM printer
),
makers AS (
  SELECT product.maker, total.price
  FROM total
  LEFT JOIN product
    ON total.model = product.model
)
SELECT 
  maker,
  CASE 
    WHEN COUNT(*) > COUNT(price) THEN NULL 
    ELSE MAX(price)
  END AS m_price
FROM makers
GROUP BY maker

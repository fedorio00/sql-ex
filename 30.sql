WITH total_income AS(SELECT point,date,SUM(inc) AS income FROM Income
GROUP BY point, date), total_outcome AS (SELECT point,date,SUM(out) AS Outcome FROM Outcome
GROUP BY point, date)

SELECT total_income.point, total_income.date,total_outcome.Outcome,total_income.income
FROM total_income LEFT JOIN total_outcome
ON total_income.point = total_outcome.point AND total_income.date = total_outcome.date

UNION

SELECT total_outcome.point, total_outcome.date,total_outcome.Outcome,total_income.income
FROM total_outcome LEFT JOIN total_income
ON total_income.point = total_outcome.point AND total_income.date = total_outcome.date
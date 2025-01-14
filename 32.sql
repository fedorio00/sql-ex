SELECT country, CAST(AVG(POWER(bore, 3) / 2) AS NUMERIC(6,2)) AS weight FROM(
SELECT country, bore, name FROM classes JOIN ships ON classes.class = ships.class
UNION
SELECT country, bore, ship FROM classes JOIN outcomes on class = ship WHERE ship NOT IN (SELECT name FROM ships))
AS this_table 
GROUP BY country
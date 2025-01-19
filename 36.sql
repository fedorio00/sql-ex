SELECT Outcomes.ship AS name FROM classes
JOIN Outcomes ON Classes.class = Outcomes.ship

UNION

SELECT name FROM Ships
WHERE name = class
SELECT DISTINCT Ships.class, Ships.name, Classes.country
FROM Ships
JOIN Classes
ON Ships.class = Classes.class
WHERE numGuns >= 10
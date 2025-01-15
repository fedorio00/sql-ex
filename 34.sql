SELECT DISTINCT name FROM Ships
WHERE class IN (SELECT class FROM Classes
WHERE displacement > 35000 AND type = 'bb') AND launched >= 1922
AND launched IS NOT NULL
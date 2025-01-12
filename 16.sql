SELECT DISTINCT  P1.model, P2.model, P1.speed, P1.ram
FROM PC p1, PC p2
WHERE p1.ram =p2.ram
AND p1.speed =p2.speed
AND p1.model>p2.model
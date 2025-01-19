SELECT class FROM (
    SELECT classes.class, name FROM classes JOIN ships ON classes.class = ships.class
    UNION
    SELECT class, ship FROM classes JOIN outcomes ON class = ship
) AS this_table GROUP BY class
HAVING COUNT(*) = 1
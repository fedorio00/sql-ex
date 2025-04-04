select distinct ship from outcomes o1 left join battles b1 on name = battle
where ship in 
(select ship from outcomes where result = 'damaged')
and ship in
(select ship from outcomes group by ship having count(ship) > 1)
and result = 'damaged'
and exists (select date from outcomes o2 left join battles b2 on name = battle
where o1.ship = o2.ship
and b1.date < b2.date)

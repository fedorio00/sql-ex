Select distinct outcomes.battle from outcomes
left join ships on outcomes.ship = ships.name
where class = 'Kongo'
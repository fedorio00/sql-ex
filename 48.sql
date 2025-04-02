select classes.class from classes 
left join ships on classes.class = ships.class
left join outcomes on outcomes.ship = ships.name
where result = 'sunk'
union
select classes.class from classes
left join outcomes on classes.class = outcomes.ship
where result = 'sunk'
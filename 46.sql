with ships1 as (Select outcomes.ship from outcomes
where battle = 'Guadalcanal')

select ships1.ship, classes.displacement, classes.numGuns from ships1
left join ships on ships1.ship = ships.name
left join classes on classes.class = ships.class or ships1.ship = classes.class
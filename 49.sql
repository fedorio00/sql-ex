select ships.name from ships left join classes 
on ships.class = classes.class
where bore = '16'
union
select outcomes.ship from outcomes left join classes 
on outcomes.ship = classes.class
where bore = '16'
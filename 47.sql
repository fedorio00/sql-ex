with ships1 as (
select ships.name, classes.country from ships
left join classes on ships.class = classes.class
union
select outcomes.ship, classes.country from outcomes
join classes on outcomes.ship = classes.class), counts as(select country,count(name) as count from ships1
group by country), sunked as(select outcomes.ship, ships1.country
from outcomes right join ships1 
on outcomes.ship = ships1.name
where result = 'sunk'), count_sunked as (select country, count(ship) as count from sunked
group by country)

select count_sunked.country from count_sunked
join counts on counts.country = count_sunked.country
where counts.count = count_sunked.count
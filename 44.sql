Select name from ships
where name like 'R%'
UNION
Select ship from outcomes
where ship like 'R%'
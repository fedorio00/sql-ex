SELECT name from ships
where name like '% % %'
UNION
SELECT ship from outcomes
where ship like '% % %'
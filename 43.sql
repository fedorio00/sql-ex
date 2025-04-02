with battles_year as(Select name, datepart(year, date) as year from battles)

select distinct battles_year.name from battles_year 
left join ships on battles_year.year = ships.launched
where ships.launched IS NULL
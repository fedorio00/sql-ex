with maker as(select maker from product
group by maker
having count(model) > 1 and count(distinct type) = 1)

select distinct maker.maker, product.type
from maker join product on maker.maker = product.maker
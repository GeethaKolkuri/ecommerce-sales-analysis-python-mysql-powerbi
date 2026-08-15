create database ecommerce;
use ecommerce;
show tables;
select * from ecom;
select count(*) from ecom;

-- total orders
select count(*) from ecom;

-- total sales
select sum(net_amount)
from ecom;

-- top products
select product,
        round(sum(net_amount),2)
from ecom
group by product
order by 2 desc;

-- top cities
select city,
       sum(net_amount)
from ecom
group by city
order by 2 desc;

-- monthly sales
select month,
       sum(net_amount)
from ecom
group by month
order by 2 desc;

-- highest profit product
select product,
       sum(profit)
from ecom
group by product
order by 2 desc;

-- payment mode
select payment_mode,
       count(*)
from ecom
group by payment_mode;

-- cancelled orders
select *
from ecom
where order_status = 'cancelled';
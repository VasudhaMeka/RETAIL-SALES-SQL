use retail_sales;

-- data check
select * from orders limit 10;

-- montly sales trend
select year_id, month_id, round(sum(sales),2) as montly_sales
from orders
group by year_id, month_id
order by year_id, month_id;

-- top 10 products by sales
select productcode, sum(sales) as total_sales
from orders
group by productcode
order by total_sales desc
limit 10;

-- sales by country
select country, round(sum(sales),2) as total_sales
from orders
group by country
order by total_sales desc;

-- sales by deal size
select dealsize, round(sum(sales),2) as total_sales
from orders
group by dealsize
order by total_sales desc;

-- product line performance
select productline, sum(sales) as total_sales, count(*) as total_orders
from orders
group by productline
order by total_sales desc;

-- average sales per order
select round(avg(sales),2) as avg_sales
from orders; 

-- quarter-wise revenue
select qtr_id, sum(sales) as total_sales
from orders
group by qtr_id
order by qtr_id;

-- high revenue customers
select customername, sum(sales) as customer_revenue
from orders
group by customername
order by customer_revenue desc
limit 5;
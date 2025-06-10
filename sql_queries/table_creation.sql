create database retail_sales;
drop database retail_sales;
use retail_sales;

create table orders (
	ordernumber int,
    quantityordered int,
    priceeach decimal(10,2),
    orderlinenumber int,
    sales decimal(10,2),
    orderdate date,
    status varchar(50),
    qtr_id int,
    month_id int,
    year_id int,
    productline varchar(50),
    msrp decimal(10,2),
    productcode varchar(50),
    customername varchar(100),
    phone varchar(50),
    addressline1 varchar(100),
    addressline2 varchar(100),
    city varchar(50),
    state varchar(50),
    postalcode varchar(20),
    country varchar(50),
    territory varchar(50),
    contactlastname varchar(50),
    contactfirstname varchar(50),
    dealsize varchar(20)
);

select count(*) from orders limit 5;



create database if not exists sales;

use sales;

create table if not exists sales1(
order_id varchar(15) not null,
order_date varchar(15) not null,
ship_date varchar(15) not null,
ship_mode varchar(15) not null,
customer_name varchar(25) not null,
segment varchar(15) not null,
state varchar(36) not null,
country varchar(32) not null,
market varchar(10) not null,
region varchar(15) not null,
product_id varchar(16) not null,
category varchar(15) not null,
sub_category varchar(15) not null,
product_name varchar(130) not null,
sales decimal(38,0) not null,
quantity decimal(38,0) not null,
discount decimal(38,3) not null,
profit decimal(38,8) not null,
shipping_cost decimal(38,2) not null,
order_priority varchar(10) not null,
`year` decimal(38,0) not null
);

SET SESSION sql_mode = '';

LOAD DATA INFILE
'D:/sales_data_final (1).csv'
into table sales1
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE  1 ROWS;

select * from sales1;

select str_to_date(order_date,'%m/%d/%Y') from sales1;

ALTER TABLE sales1
add column order_date_new date after order_date;

select * from sales1;

update sales1
set order_date_new = str_to_date(order_date,'%m/%d/%Y');

select * from sales1;

SET SQL_SAFE_UPDATES = 0;

ALTER table sales1
add column ship_date_new date after ship_date;

update sales1
set ship_date_new = str_to_date(ship_date,'%m/%d%Y');

set sql_safe_updates = 0;

select * from sales1;

select * from sales1 where ship_date_new = '2011-01-05';

select now();

select curdate();

select curtime();

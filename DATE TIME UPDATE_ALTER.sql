use sales;

select * from sales1 where ship_date < date_sub(now() , interval 1 week);

select date_sub(now() , interval 1 week);

select date_sub(now() , interval 30 day);

select date_sub(now() , interval 30 year);

select year (now());

select date (now());

select dayname('2022-09-20 21:10:30');

alter table sales1
add column flag date after order_id;

update sales1
set flag = now();

select * from sales1;

alter table sales1
modify column year datetime;

alter table sales1
add column Year_New int;

alter table sales1
add column Month_new int;

alter table sales1
add column Day_new int;

update sales1 set Month_new = (order_date_new);

update sales1 set Day_new = (order_date_new);

update sales1 set Year_New = (order_date_new);

select * from sales1 limit 5; 

select month(order_date_new) from sales1;

select year_new , avg(sales) from sales1 group by year_new;

select year_new , sum(sales) from sales1 group by year_new;

select year_new , min(sales) from sales1 group by year_new;

select year_new , max(sales) from sales1 group by year_new;

select year_new , sum(quantity) from sales1 group by year_new;

select (sales*discount+shipping_cost) as CTC from sales1; 

select order_id,discount,if(discount > 0 ,'yes','no') as discount_flag from sales1;

select discount, if(discount > 0 ,'yes','no') as discount_flag from sales1;

alter table sales1
add column discount_flag varchar(20) after discount;

select * from sales1;

select discount_flag, count(*) from sales1 group by discount_flag;

select count(*) from sales1 where discount > 0;

update sales1
set discount_flag = if(discount > 0 ,'yes' , 'no')











#CRUD (CREATE, READ, UPDATE, DELETE)

show databases;
use  sakila;
select * from customer;
select store_id, first_name,last_name,email,address_id from customer where not store_id = 2;
select store_id, first_name,last_name,email,address_id from customer where  store_id = 1;
select first_name, last_name, email from customer where first_name = 'AUSTIN' limit 20;
select first_name, last_name, email from customer limit 20;
select count(email) from customer;
select avg(active) from customer;
select SUM(active) from customer;
select * from customer where first_name like 'B%';
select * from customer where first_name like '%B';
select * from customer where first_name like 'M%A';
select * from customer where first_name like'%or%';
select * from customer where first_name like 'A______%';
select * from customer where customer_id in (1,2,3);
select * from customer where customer_id not in(1,2,3);
select * from customer where customer_id between 1 AND 20;
select * from customer where customer_id not between 1 AND 570;
select first_name as first, last_name as last from customer;
select c.first_name, c.last_name from customer as c;
select COUNT(customer_id) from customer group by active;
use world;
select * from country group by (continent) having count(region)>6;
select distinct continent from world;


use sakila;
select * from city;
select city.city_id,country.country_id, city.last_update,country.last_update from city
INNER JOIN country ON city.country_id = country.country_id;
select city.city_id,country.country, city.last_update, country.last_update from city
LEFT JOIN country ON city.country_id = country.country_id;
select city.city_id,country.country, city.last_update, country.last_update from city
RIGHT JOIN country ON city.country_id = country.country_id;






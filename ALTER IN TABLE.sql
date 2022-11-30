show databases;
use customers;
select * from customers
create table customers(
id integer auto_increment,
first_name varchar(30),
last_name varchar(30),
salary integer,
primary key(id)
);
select * from customers;
## insert records in table
insert into customers (first_name,last_name,salary)
values
('jalpa','patel',5000),
('mehul','sirohi',6000),
('xyz','xx',7000),
('xyz2','xx1',8000),
('xyz3','xx3',null);
select * from customers where salary IS NULL;
select * from customers where salary is not null;
update customers set last_name ='sirohi' where id = 3;
select * from customers;
delete from customers where id = 5;
select * from customers;

alter table customers add email varchar(30);
select * from customers;
alter table customers add DOB date;
select * from customers;
alter table customers modify DOB year;
select * from customers;
alter table customers drop column email;



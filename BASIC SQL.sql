#session1
/*
1.	SQL create Databases
2. SQL drop databases
3.SQL create Table
4.SQL insert into table
5.SQL drop table
*/
create database customers;
show databases;
use customers;

#drop database customers;
#create table in databases
create table customers_info1(Id Integer(10), first_name varchar(10), last_name varchar(10));
show databases;
show tables;
select * from customers_info1;
insert into customers_info1(id, first_name, last_name) values(1, 'Mehul', 'Sirohi');
insert into customers_info1(id, first_name, last_name) values(2, 'Mahipal', 'Singh');
insert into customers_info1(id, first_name, last_name) values(3, 'sahil', 'rathee');
insert into customers_info1(id, first_name, last_name) values(4, 'uday', 'bind');
insert into customers_info1(id, first_name, last_name) values(5, 'rahul', 'Singh');
insert into customers_info1(id, first_name, last_name) values(6, 'vedansh', 'sharma');
insert into customers_info1(id, first_name, last_name) values(7, 'sachin', 'rawat');
select * from customers_info1;
UPDATE customers_info1 SET first_name = 'yash' WHERE id= 1;
select * from customers_info1;
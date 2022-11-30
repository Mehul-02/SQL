use customers;
create table if not exists test(
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_adrress varchar(50),
primary key(test_id))
show tables;
select * from test;

create table if not exists test3(
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_adrress varchar(30),
test_salary int check(test_salary > 10000))

insert into test3 values(1,'jalpa','jalpa@gmail.com','anand',50000),
(2,'mehul','sirohi@gmail.com','UP',55000),
(3,'banna','banna@gmail.com','RAJ',45000),
(4,'anshu','anshu@gmail.com','GUJ',35000)

create table if not exists test4(
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_adrress varchar(30) check (test_adrress = 'bengalore'),
test_salary int check(test_salary > 10000))
insert into test4 values (1,'sahil','sahil@gmail.com','bengalore', 50000),
(2,'sachin','sachin@gmail.com','bengalore',55000),
(3,'uday','uday@gmail.com','bengalore',40000),
(4,'wadi','wadi@gmail.com','bengalore',60000)

create table if not exists test5(
test_id int NOT NULL,
test_name varchar(30),
test_mailid varchar(30),
test_adrress varchar(30) check (test_adrress = 'bengalore'),
test_salary int check(test_salary > 10000))

select * from test5
insert into test5 (test_id,test_name, test_mailid,test_adrress,test_salary)values(1,'rahul','rahul@gmail.com','bengalore',30000)
select * from test5

create table if not exists test6(
test_id int NOT NULL default 0,
test_name varchar(30),
test_mailid varchar(30),
test_adrress varchar(30) check(test_adrress = 'bengalore'),
test_salary int check(test_salary > 10000))
insert into test6(test_id,test_name,test_mailid,test_adrress,test_salary)values(4,'parv','parv@gmail.com','bengalore',45000)
select * from test6

create table if not exists test7(
test_id int NOT NULL default 0,
test_name varchar(30),
test_mailid varchar(30) unique,
test_adrress varchar(30) check(test_adrress = 'bengalore'),
test_salary int check(test_salary > 10000))
insert into test7(test_id,test_name,test_mailid,test_adrress,test_salary) values (8,'rusty','rusty@gmail.com','bengalore',70000)
select * from test7

create table if not exists test8(
test_id int NOT NULL auto_increment,
test_name varchar(30)NOT NULL default 'unknown',
test_mailid varchar(30) unique NOT NULL,
test_adrress varchar(30) check(test_adrress = 'bengalore') NOT NULL,
test_salary int check(test_salary > 10000) NOT NULL,
primary key (test_id))

select * from test8

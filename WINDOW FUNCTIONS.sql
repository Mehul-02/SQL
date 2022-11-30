create database if not exists win_fun;
use win_fun;
create table if not exists bit_students(
student_id varchar(40),
student_batch varchar(40),
student_name varchar(40),
student_stream varchar(40),
student_marks int,
student_mailid varchar(40));

insert into bit_students values(119,'fsds','jalpa','EC',60,'jalpa@gmail.com');
select * from bit_students;

insert into bit_students values(90,'fsds','mehul','AI',80,'mehul@gmail.com'),
(91,'fsdb','sarkar','ECE',70,'sarkar@gmail.com'),
(92,'fsds','uday','CS',60,'uday@gmail.com'),
(93,'fsdb','sahil','EC',77,'sahil@gmail.com'),
(94,'fsde','rahul','ME',55,'rahul@gmail.com'),
(95,'fsbc','sachin','CS',60,'sachin@gmail.com'),
(96,'fsds','vedansh','EC',85,'vedansh@gmail.com'),
(97,'fsbc','mahipal','ECE',60,'mahipal@gmail.com'),
(98,'fsde','aritra','CS',80,'aritra@gmail.com'),
(99,'fsdb','rahulS','ME',70,'rahulS@gmail.com'),
(100,'fsds','dhruvi','EC',60,'dhruvi@gmail.com'),
(101,'fsdb','sabina','AI',78,'sabina@gmail.com'),
(102,'fsde','shivaniK','ECE',83,'shivaniK@gmail.com'),
(103,'fsbc','navdeep','AI',88,'navdeep@gmail.com'),
(104,'fsds','anshu','AI',65,'anshu@gmail.com'),
(105,'fsdb','mona','ME',90,'mona@gmail.com'),
(106,'fsbc','renu','CS',50,'renu@gmail.com'),
(107,'fsds','prateek','CS',93,'prateek@gmail.com'),
(108,'fsde','sahab','EC',89,'sahab@gmail.com');

select * from bit_students;
select * from bit_students where student_stream = 'ME';

select max(student_marks) from bit_students where student_batch = 'fsdb';
select student_batch , max(student_marks) from bit_students group by student_batch;
select student_batch , min(student_marks) from bit_students group by student_batch;
select student_batch , avg(student_marks) from bit_students group by student_batch;
select student_batch , sum(student_marks) from bit_students group by student_batch;
select distinct(student_batch) from bit_students;
select count(distinct student_batch) from bit_students;

select student_name, max(student_marks) from bit_students where student_batch = 'fsdb';
select student_name, max(student_marks) from bit_students group by student_batch ;
select student_name,student_batch, max(student_marks) from bit_students group by student_batch ;
select student_name from bit_students where student_marks in 
(select max(student_marks) from bit_students  where student_batch = 'fsdb');

select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 3;
select * from bit_students where student_batch = 'fsbc';
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 1,1;
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 2,1;
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 1,2;
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 1,3;
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 3,1;
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 2,2;
select student_name from bit_students where student_batch = 'fsbc' order by student_marks desc limit 3,3;
select * from bit_students where student_marks = (
select min(student_marks) from
(select student_marks from bit_students
where student_batch = 'fsdb'
order by student_marks desc
limit 3) as top);
select student_name from bit_students where student_marks in 
(select max(student_marks) from bit_students  where student_batch = 'fsdb');

select student_id , student_batch , student_stream , student_marks,
row_number() over(order by student_marks) as 'row_number' from bit_students;

select * from (select student_id , student_batch , student_stream , student_marks,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number' 
from bit_students) as test where 'row_number' = 1;

select * from (select student_id , student_batch , student_stream , student_marks,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number' 
from bit_students) as test where 'row_number' = 3;

select * from bit_students where student_batch = 'fsda' order by student_marks desc;

select * from bit_students where student_batch = 'fsdb';

select student_id , student_batch , student_stream , student_marks,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number' 
from bit_students;

select student_id , student_batch , student_stream , student_marks ,
row_number() over(order by student_marks desc) as 'row_nymber',
rank() over(order by student_marks desc) as 'row_rank'
from bit_students;

select * from (select student_id , student_batch , student_stream , student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank'
from bit_students) as test where row_rank = 1;

select * from (select student_id , student_batch , student_stream , student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank'
from bit_students) as test where row_rank = 3;

select * from (select student_id , student_batch , student_stream , student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank',
dense_rank() over(partition by student_batch order by student_marks desc) as 'dense_rank'
from bit_students) as test where `dense_rank` = 3;

select * from (select student_id , student_batch , student_stream , student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank',
dense_rank() over(partition by student_batch order by student_marks desc) as 'dense_rank'
from bit_students) as test where `dense_rank` limit 3;

select * from (select student_id , student_batch , student_stream , student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank'
from bit_students) as test where row_rank = 3;

select * from (select student_id , student_batch , student_stream , student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank',
dense_rank() over(partition by student_batch order by student_marks desc) as 'dense_rank'
from bit_students) as test where `dense_rank`< 4;





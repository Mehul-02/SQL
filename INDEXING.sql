create database index1;
use index1;
create table if not exists course1(
course_id varchar(40),
course_name varchar(40),
cousre_desc varchar(40),
course_tag varchar(40),
index(course_id)
);
 show index from course1;
 
 insert into course1 values(101,'fsda','full stack data analytics','analytics'),
 (102,'fsds','full stack data analytics','analytics'),
 (103,'fsds','full stack data analytics','DS'),
 (104,'big data','full stack big data','BD'),
 (105,'mern','web dev','mern'),
 (106,'blockchain','full stack blockchain','BC'),
 (101,'java','full stack java','java'),
 (102,'testing','full testing','testing'),
 (105,'cybersecurity','full stack cybersecurity','cybersedcurity'),
 (109,'c','c language','c'),
 (108,'c++','c++ language','c++');
 
 create table if not exists course2(
course_id varchar(40),
course_name varchar(40),
cousre_desc varchar(40),
course_tag varchar(40),
index(course_id,course_name,course_tag)
);
insert into course2 values(101,'fsda','full stack data analytics','analytics'),
 (102,'fsds','full stack data analytics','analytics'),
 (103,'fsds','full stack data analytics','DS'),
 (104,'big data','full stack big data','BD'),
 (105,'mern','web dev','mern'),
 (106,'blockchain','full stack blockchain','BC'),
 (101,'java','full stack java','java'),
 (102,'testing','full testing','testing'),
 (105,'cybersecurity','full stack cybersecurity','cybersedcurity'),
 (109,'c','c language','c'),
 (108,'c++','c++ language','c++');
 
 explain analyze select * from course2 where course_id = 106 or course_name = 'fsds';

analyze table course2;
describe course2;

create table if not exists student1(
student_id varchar(40),
student_name varchar(40),
student_desc varchar(40),
student_tag varchar(40)
);
insert into student1 values(01,'fs','full ','ana'),
 (02,'ds','full ','ana'),
 (03,'sd','data ','DA'),
 (04,'big ','f data','DB'),
 (05,'mern','dev','N'),
 (06,'chain',' blockchain','CB'),
 (01,'QS',' java','SQ'),
 (02,'ing','fulling','test'),
 (05,'cyber','security','cybers'),
 (09,'me',' language','cZ'),
 (08,'c+','c+ language','c+');
 
 select course_id ,course_name from course1
 union
 select student_id, student_name from student1;
 
 with sample_student as(
 select * from course1 where course_id in (101,102,106))
 select * from sample_student where course_tag = 'java';
 
with out_cross as ( select c.course_id ,c.course_name, s.student_id,s.student_name from course1 c
cross join student1 s) select course_id,course_name,student_id from out_cross where student_id =02;

with recursive cte1 as 
(select 1 as n union all select n+1 from cte1 where n<5)
select * from cte1;
 
 with recursive cte as (
 select 1 as n,1 as p, -1 as q
 union all
 select n+1,p+2,q+4 from cte where n<5)
 select * from cte;
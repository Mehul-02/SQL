create database student1;
use student1;
create table if not exists student_caas2(student_id varchar(30),
`subject` varchar(20));
DELIMITER //
create procedure student_case2(in s_subject varchar(30), out s_course varchar(50)
)
begin
declare sub varchar(10);
select subject into sub
from student where s_subject = subject;

case sub()
 when 'computer' then
    set s_course  = 'B.Tech';
 when 'History' then
 set s_course = 'BA';
else
set s_course = 'subject is not available';
end case;
end//

call student_case('computer', @s_course);
select @s_course
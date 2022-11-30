DELIMITER $$
create procedure my_sqrt1(input_number int , out out_number float)
begin
    set out_number = sqrt(25);
end$$
call my_sqrt1(4,@out_number);
select @out_number;

DELIMITER $$
create procedure setcounter1(
	inout counter int,
    in inc int
)
begin
     set counter = 1 + inc;
end$$

set @counter = 1;
call setcounter1(@counter,1);
call setcounter1(@counter,3);
select @counter;

DELIMITER //
create procedure user_variables()
begin
set @x = 20;
set @y = 30;
select @x , @y , @x-@y;
end//
call user_variables();

DELIMITER //
create procedure student_case1(in s_subject varchar(30), out s_course varchar(50)
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
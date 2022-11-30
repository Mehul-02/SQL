create database if not exists bit;
use bit;
create table if not exists course2(
course_id varchar(50),
course_desc varchar(50),
course_mentor varchar(50),
course_price int,
course_discount int,
create_date date,
user_info varchar(60)
);

create table if not exists course_update(
course_metor_update varchar(60),
course_price_update int,
course_discount_update int
);

delimiter //

create trigger course_before_insert1123
before insert
on  course2 for each row
begin
	declare user_val varchar(50);
    set new.create_date = sysdate();
    select user() into user_val;
    set new.user_info = user_val;
    insert into ref_course1 values(sysdate() , user_val);
end;//

create table if not exists ref_course1(
record_insert_date date,
record_insert_user varchar(50)
);

select * from course2;

insert into course2 (course_id,course_desc,course_mentor,course_price,course_discount)value(101,'FDSD','mehul',1000,10);
select * from course2;

create table if not exists test1(
c1 varchar(50),
c2 date,
c3 int
);

create table if not exists test2(
c1 varchar(50),
c2 date,
c3 int
);

create table if not exists test3(
c1 varchar(50),
c2 date,
c3 int
);

delimiter //
create trigger to_update_others
before insert on test1 for each row
begin
	insert into test2 values('xyz',sysdate(),23354);
    insert into test3 values('xyz',sysdate(),23354);
end;//

insert into test1 values('abc',sysdate(),234234);
select * from test1;
select * from test2;
select * from test3;

delimiter //
create trigger to_update_other_after
after insert on test1 for each row
begin
	insert into test2 values('xyz',sysdate(),23554);
    insert into test3 values('xyz',sysdate(),23554);
end;//
select * from test2;


     delimiter //
create trigger to_update_others_table
after insert on test1 for each row
begin
	update test2 set c1 = 'abc' where c1 = 'xyz';
    delete from test3 where c1 = 'xyz';
end;//
insert into test1 values ('harsh', sysdate(),977897);
    select * from test2;
    select * from test1;
    
    delimiter //
create trigger to_delete_others_table
after delete on test1 for each row
begin
    insert into test3 values('after delete',sysdate(),435457);
end;//
select * from test1;
delete from test1 where c1 = 'abc';
select * from test1;

delimiter //
create trigger to_delete_others_before2
before delete on test1 for each row
begin
    insert into test3 values('before delete',sysdate(),435457);
end;//
delimiter //
create trigger to_delete_others_before_observation2
before delete on test1 for each row
begin
    insert into test2(c1,c2,c3) values(old.c1,old.c2,old.c3);
end;//
select * from test1;
select * from test2;

delimiter //
create trigger to_update_others
after update on test1 for each row
begin
    insert into test3 values('after delete',sysdate(),435457);
end;//
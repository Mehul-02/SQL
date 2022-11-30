use sales;
select * from sales1;

DELIMITER $$
create function add_to_col3(a int)
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE b int;
    set b = a + 10;
    return b;
end $$

select profit ,add_to_col3(profit) from sales1;

DELIMITER $$
create function add_to_col4(a decimal)
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE b decimal;
    set b = a + 10;
    return b;
end $$

select profit ,add_to_col4(profit) from sales1;

DELIMITER $$
create function add_to_col5(a decimal)
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE b decimal;
    set b = a + 10;
    return b;
end $$
select profit ,add_to_col5(profit) from sales1;

DELIMITER $$
create function add_to_col6(a float)
RETURNS float
DETERMINISTIC
BEGIN
    DECLARE b float;
    set b = a + 10;
    return b;
end $$
select profit ,add_to_col6(profit) from sales1;

DELIMITER $$
create function add_to_col7(a decimal(20,6))
RETURNS decimal(20,6)
DETERMINISTIC
BEGIN
    DECLARE b decimal(20,6);
    set b = a + 10;
    return b;
end $$
select profit ,add_to_col7(profit) from sales1;

DELIMITER $$
create function final_profits(profit int , discount int)
RETURNS int
deterministic
BEGIN
    declare b int;
    set b = profit - discount;
    return b;
end$$
select profit,discount ,final_profits(profit,discount) from sales1;


#profit- sales*discount
DELIMITER $$
create function final(profit int , discount int,sales int)
RETURNS int
deterministic
BEGIN
    declare b int;
    set b = profit - sales * discount;
    return b;
end$$
select profit,discount,sales ,final(profit,discount,sales) from sales1;

select quantity , add_to_col3(qauntity) from sales1;

DELIMITER $$
create function int_to_str(a int)
RETURNS varchar(30)
deterministic
BEGIN
    declare b varchar(30);
    set b = a;
    return b;
end$$
select int_to_str(45);

select quantity , int_to_str(quantity) from sales1;

select min(sales) , max(sales) from sales1;

DELIMITER $$
create function marks_sales(sales int)
RETURNS varchar(30)
deterministic
BEGIN
    declare flag_sales varchar(30);
    if sales <= 100 then
       set flag_sales = 'super affordable products';
	elseif sales > 100 and sales < 300 then
	   set flag_sales = 'affordable';
	elseif sales > 300 and sales < 600 then
       set flag_sales = ' moderate price';
	else
	   set flag_sales = 'expensive';
	end if;
    return flag_sales;
end$$
select marks_sales(250);
select sales ,marks_sales(sales) from sales1;

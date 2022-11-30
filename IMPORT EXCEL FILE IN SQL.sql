create database if not exists retail;
use retail;
create table if not exists online1(
InvoiceNo varchar(40),
StockCode varchar(40),
`Description` varchar(60),
Quantity varchar(40),
InvoiceDate varchar(40),
UnitPrice varchar(40),
CustomerID varchar(40),
Country varchar(60) 
 );
SET SESSION sql_mode = '';

LOAD DATA LOCAL INFILE
'C:/Users/Admin/Desktop/Online_Retail.csv'
into table  online1 
CHARACTER SET latin1
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE  1 lines;

set global local_infile=true;

select * from online1;



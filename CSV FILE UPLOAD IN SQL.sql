create database dress_123;
use dress_123;
create table if not exists dress_123(`Dress_ID` varchar(30),
`Style` varchar(30),
`Price` varchar(30),
`Rating` varchar(30),
`Size` varchar(30),
`Season` varchar(30),
`NeckLine` varchar(30),
`SleeveLength` varchar(30),
`waiseline` varchar(30),
`Material` varchar(30),
`FabricType` varchar(30),
`Decoration` varchar(30),
`Pattern Type` varchar(30),
`Recommendation` varchar(30));

LOAD DATA INFILE
'D:/AttributeDataSet.csv'
into table dress_123
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE  1 ROWS;

select * from dress_123;
select count(*) from dress_123;

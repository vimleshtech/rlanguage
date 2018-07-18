-- create database
create database db_leaning

--switch database
use db_leaning;  -- cd dirname 


--table : 
--int : data type (number)
--varhcar: alpha numeric 

create table employee
(eid int, fname varchar(30), lname varchar(30), gender char(1))

--view table data  , * : view all columns 
select * from employee;

--insert 
insert into employee(eid,fname,lname,gender)
values(1,'nitin','sinha','male')

--bluck insert 

insert into employee(eid,fname,lname,gender)
values(10,'nitin','sinha','m'),
	   (11,'chahat','sinha','f'),
		(21,'kshitiz','sinha','m'),
		(31,'raman','sinha','m'),
		(41,'rhaul','sinha','m')

		
 select * from employee;
 -- import data from excel / csv


 insert into employee(eid,fname,gender)
	select 100,'monika','f'
	union select 200,'nitisha','f'
	union select 3000,'gaurav','m'


-- alter table 
-- add new column 
select * from employee

alter table employee
add country varchar(100)

--alter column data type or size 
alter table employee
alter column gender char(10)

--drop column
alter table employee
drop column country 


-- drop table or objects 
--make new copy/table from existing table 
select * into emp_bak from employee
select * from emp_bak 

drop table employee  

select * from employee


--update : modify data in existing rows 
select * from emp_bak;

update emp_bak
set country ='india'


update emp_bak
set country ='us'
where eid < 40 


update emp_bak
set country ='us', lname ='singh'
where eid = 1


--delete : remove rows 
-- delete selected row
delete from emp_bak  where eid = 1

--delete all rows 
select * into employee from emp_bak

select * from emp_bak 

delete from emp_bak   --remove all rows 


----
create table product
(
pid int identity(1,1),
pname varchar(100)
)

insert into product
values('lux')

select * from product;

delete from product
delete from product where pid   =10

truncate table product 


/*
DATA TYPE
===========

tinyint		
int		: 4 byte
bigint	: 8 byte

float		: 4 byte
double		: 8 byte
numeric(10,2)		: 16 byte  = 12345678.91

bit			: true / false 

--alpha numeric (any char from keyboard can be store)
char(2)			: fix size /ascii  :english
nchar(2)		:fix size	 / unicode : multi language
varchar(10)     : dynamic size 
nvarchar		: 
text			: xml, tag based data 
ntext

date			: yyyy-mm-dd
datetime		: yyyy-mm-dd hh:mm
smalldatetime	: yyyy-mm-dd hh:mm:ss:mis

varbinary		: hexa code 

*/


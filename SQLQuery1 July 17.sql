use test

select * from emp

select * from emp where dept='it'


--Group by--

select dept,avg(salary) from emp group by dept

--Having--

select dept,avg(salary) from emp group by dept having max(salary)>22000

--Constraints--
1.Primary Key
2.Foreign Key
3.Unique
4.Not Null
5.Default


create table employee(
id int primary key,
name varchar(30) not null,
phone varchar(10) unique)

create table dept(
deptid int,
deptname varchar(30) default 'it',
id int foreign key references employee(id))


insert into employee values(1,'kush','9876543210')
insert into employee values(2,'mohit','9876543240')
insert into employee values(3,'puneet','9856543210')


insert into dept(deptid,id) values(101,1)
insert into dept(deptid,deptname,id) values(102,'hr',3)

select * from dept

select name from employee,dept where deptname='hr'

select * from emp

select max(salary) from emp where salary<(select max(salary) from emp)


create table customers(
cid int,
cname varchar(30),
age int)

create table orders(
oid int,
odate date,
price int,
cid int)

insert into customers values(1,'kush',24)
insert into customers values(2,'aman',23)
insert into customers values(3,'vishesh',25)
insert into customers values(4,'puneet',26)

insert into orders values(101,'03-14-2017',200,2)
insert into orders values(102,'09-28-2018',340,1)
insert into orders values(103,'03-18-2017',245,2)
insert into orders values(104,'03-18-2017',255,6)

select * from customers
select * from orders
--Inner join--
--Left Join--
--Right Join--
--Full outer join--
--cross join--


select customers.cid,cname,odate from customers inner join orders on customers.cid=orders.cid


select customers.cid,cname,odate from customers left join orders on customers.cid=orders.cid

select customers.cid,cname,odate from customers right join orders on customers.cid=orders.cid

select customers.cid,cname,odate from customers full outer join orders on customers.cid=orders.cid

select * from customers cross join orders

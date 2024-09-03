create database db;
create schema db1; /*all schemas are databases but not all databases are schema*/
show databases;
use db1;

/*unique constraint*/ 
create table student(rollno int unique, name varchar(25));
insert into student values(01, "Ram"),
(02, "Sita"),
(03, "Laxman");
desc student;
select * from student;


/*not null constraint*/
create table stud1(rollno int unique, name varchar(25) not null);
insert into stud1(rollno, name) values(01, "SRK"), (02, "Akshay");
desc stud1;
select * from stud1;


/*primary key constraint*/
create table stud2(rollno int unique not null, name varchar(25) not null);
create table stud3(rollno int primary key, name varchar(25) not null);
desc stud2;


/*foreign key constraint*/
create table dept
(deptno int primary key, 
deptname varchar(30) not null,
city varchar(30));

create table emp1
(empid int primary key,
deptno int, 
employee_name varchar(30) not null,
city varchar(30),
foreign key(deptno) references dept(deptno));

desc dept;
desc emp1;

insert into dept values(1010, "Finance", "Delhi");
insert into emp1 values(100, 1010, "Prakash", "Delhi");
insert into emp1 values(101, 1010, "Ram", "Pune");

select * from dept;
select * from emp1;
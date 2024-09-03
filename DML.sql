use db1;
create table employee(id int, name varchar(40), salary int);
show tables;
desc employee;
insert into employee(id,name,salary) value(01,"Nitu",50000);

 /*we can change the order of insert columns in the syntax*/
insert into employee(salary, name, id) value(60000, "Harry", 03);
insert into employee(id, name) value(02, "Zayn");

insert into employee(id, name, salary) 
 value(04,"Liam", 20000), (05,"Louis", 30000), (06, "Niall", 40000);
select * from employee;

/*we can insert without specifying the column 
but it needs to be in order and all of the column value should be included*/
insert into employee value(07, "Ed Sheeran", 60000);

/*alter is DDL it alters the structure of the table while
update is DML it can update the data*/
update stud1 
set name="Akshay Kumar" 
where rollno = 02;
update stud1
set rollno=3
where name="SRK";

/*delete - deletes a particular record*/
delete from stud1
where name="SRK";
select * from stud1;

/*truncate clears all the data from the table*/
truncate table stud1;








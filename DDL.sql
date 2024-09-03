use db1;
create table student(rollno int, name varchar(23));
show tables;
desc student;
alter table student add column age int;/*adding column*/
alter table student drop column age;/*deleting column*/
alter table student add column age varchar(23);
alter table student modify column age int;/*modifying the datatype of a column*/
alter table student change column rollno id int;/*changing the column name*/
drop table student;




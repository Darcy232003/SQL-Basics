use db1;

show tables;

/*shows all the content*/
select * from student;

/*particular column*/
select name from student;

/*select with condition*/
select * from student
where rollno > 1;

select * from employee
where id >2
and salary >30000;

select * from employee
where salary =30000;


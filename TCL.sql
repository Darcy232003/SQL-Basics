use db1;

set autocommit=0;

insert into emp1 values(103, 1010, "Ram Sampath", "Dwarka");

select * from emp1;

rollback;

commit;

/*after commit rollback wont work*/
rollback;

insert into emp1 values(105, 1010, "Rajanikanth", "Chennai");
insert into emp1 values(104, 1010, "Meera", "Dwarka");

rollback;

insert into emp1 values(106, 1010, "Big B", "Mumbai");
insert into emp1 values(107, 1010, "Jr B", "Mumbai");

/*savepoint is like a specific log entry that you can rollback to*/
savepoint JB;

insert into emp1 values(108, 1010, "Arjun Kapoor", "Mumbai");
insert into emp1 values(109, 1010, "Ranbir Kapoor", "Mumbai");

savepoint RK;

select * from emp1;

rollback to JB;
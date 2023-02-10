-- commit
-- rollback
-- savepoint
select * from dept;
savepoint a;
insert into dept values(1, '기획부', '영등포구');
savepoint b;
insert into dept values(2, '총무부', '구로구');
select * from dept;
update dept set loc ='Seoul';
select * from dept;
rollback to b;
select * from dept;
rollback to a;

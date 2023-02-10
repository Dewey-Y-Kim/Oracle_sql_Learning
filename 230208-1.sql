--view 가상테이블
create or replace view emp_dept
as 
select e.empno, e.ename, e.sal, d.dname
from emp e join dept d on e.deptno=d.deptno;



create or replace view emp_view
as
select empno, ename, sal, deptno from emp;
-- emp 테이블에서 30번 부서의 사원 중 사원번호 사원명 업무 급여 부서코드를 이용하여 view생성
create VIEW emp_30
as
select empno, ename, job, sal, deptno from emp
where deptno =30;
desc emp;
select * from emp_dept;
Insert into emp(Empno, ename, deptno) Values (5555,'Hong',10);
desc Emp_dept;
SELECT * FROM emp_dept;
select * from emp_30;
insert into emp(Empno, ename, deptno) values(6666,'Park',30);
insert into emp_30(Empno, ename, job, sal, deptno) values (7777, 'choi', 'Programer', 7000, 20);
select * from emp_30;
select * from emp;
select * from emp_dept;
Select * from user_constraints where table_name = 'salgrade';
select * from tab where tabtype = 'VIEW';
delete from emp_view where ename='Park';

select * from emp_dept;
select * from tab where tabtype = 'VIEW';
Select * from tab;
create view emp_read
as
select empno, ename, sal from emp
with read only; -- readonly 만들기

-- 뷰 정보 확인
select * from user_views;
select * from tab where tabtype = 'VIEW';

-- 뷰 삭제
Drop view emp_read;
Drop view Emp_30;
Drop view emp_view;
select * from user_views;
drop view emp_dept;

insert into emp_read(empno, ename, sal) values ( 8888, 'Lee', 4000);

select * from emp_dept;
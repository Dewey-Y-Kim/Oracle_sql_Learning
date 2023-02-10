Select * from emp Order By ename asc;

Desc emp;

select empno, ename, job, hiredate, sal from emp where ename=upper('adams');
select empno, ename, job, hiredate, sal from emp where ename=upper(?);

select * from emp;
-- 모든 필드와 모든 레코드 복사

create table emp2 as select * from emp;

select * from tab;
select * from emp2;

create table emp3 as select empno, ename, sal from emp;
select * from emp3;
select * from tab;
--원하는 레코드만 복사

create table emp4 as select * from emp where deptno=20;
select * from emp4;

--레코드 없이 필드의 구조만 복사3
create table emp5 as select * from emp where 1=2;

select * from emp2;

desc emp2;
Insert Into emp2(empno) values(1111);
select * from emp2;
Insert Into emp2(empno, ename, sal) values(2222, 'Dr.hong', 5500);
Insert Into emp2(empno, sal, ename) values(2223, 2000, 'master.S');

Insert Into emp2(empno, ename, sal, deptno) values(3333, 'stu.K', 10, 20);

-- 모든 필드의 값이 있을때 필드명은 생략 가능하다.
Insert Into emp2 values(4444,'Dr.lee', 'MANAGER', '7839', sysdate, 10000, 200, 40);

commit; -- 적용
rollback; -- 롤백

select * from emp2;
desc emp2;
select * from emp4;
-- emp 테이블의 10번 부서 사원을 emp4에 삽입
Insert Into emp4(empno, ename, sal, comm, deptno) Select empno, ename, sal, comm, deptno from emp where deptno=10; 
rollback;
commit;

-- update : 레코드 수정하기
update emp2 set ename='KIM', job='CLERK', sal=3000 where empno=1111;
update emp2 set sal=sal*1.1 where job='SALESMAN';

select * from emp2;

-- 삭제
Delete From emp2 where empno In(4444 , 2222);
delete from emp2;

rollback;
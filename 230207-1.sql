-- Merge
-- A테이블과 B테이블을 합치기
-- A테이블에 있는 레코드가 B테이블에 있으면 update 시키고
-- 없으면 insert를 시킨다

select * from emp;
-- 테이블 복사 - 부서코드가 20부서인 사원을 emp_test테이블로 복사
Create Table emp_test as Select * from emp where deptno=20;
Select * from emp_test;
Select * from emp where job='MANAGER';
SavePoint I1;
Merge Into emp_test t Using emp e On (t.empno= e.empno) 
When Matched then --조건 만족시 실행
    update Set Sal=Sal*1.1
When Not Matched then --조건 불만족시 실행
    Insert Values(e.empno, e.ename, e.job, e.mgr, e.hireDate, e.sal, e.comm, e.deptno);
    
Select * from emp_test;

-- [문제]
-- 1. Emp테이블테이블에서 Job이 MANAGER인 사원만 emp2테이블 생성
-- 2. Emp2테이블에 이미 있는 사원은 급여와 보너스를 더한 값으로 급여를 변경하고 없는 사원은
--    emp테이블에서 추가

Create Table emp2 As Select * From emp where Job='MANAGER';
Select * from emp2;
Merge Into emp2 c 
Using Emp o On (c.empno=o.empno)
When Matched then
    update Set c.Sal = c.sal+nvl(c.comm,0)
when Not Matched then
    Insert Values(o.empno, o.ename, o.job, o.mgr, o.hiredate, o.sal, o.comm, o.deptno);
    
-- case : if
select deptno , case deptno
    when 10 then '기획부'
    when 20 then '인사부'
    when 30 then '총무부'
    else '영업부'
end as "d name" from emp;
    
-- nullif : 두개의 매개변수값이 같으면 null 다르면 첫번째 매개변수의 값을 구해준다
select Nullif('123', 'abc') from dual;
select nullif('123', '123') from dual;
select coalesce(comm,0), nvl(comm,0) from emp;

select * from emp2;

select * from dept;
Select deptno from dept Union Select deptno from emp;
insert into dept(deptno,dname,loc) Values(15,'Maintainance', 'Yongin');
select deptno from emp Union all Select deptno from emp;

--InterSect [inter + Sect(or)]
Select deptno from dept Intersect Select deptno from emp;
-- minus
Select deptno from dept Minus Select deptno From emp;
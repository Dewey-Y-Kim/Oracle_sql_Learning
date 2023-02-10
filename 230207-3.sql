--다중행 서브쿼리
Select max(sal) from emp group By job;
-- in
select ename, job, sal from emp
where sal in (select max(sal) from emp group by job);
-- not in
select ename, job, sal from emp
where sal not in (select max(sal) from emp group by job);

select empno, ename, job, sal From emp 
where sal in(select max(sal) from emp group by job)
Order by sal desc;

--Any : 서브쿼리 값 중 하나라도 만족하면 선택

Select ename, sal, deptno from emp where deptno != 20 and job != 'Job' and sal>ANY(Select sal from emp where job ='SALESMAN');
Select ename, sal, deptno from emp where deptno != 20 and sal > (select Min(sal) from emp where job='SALESMAN');

Select ename, job, sal ,hiredate,deptno from emp where hiredate>any(select hiredate from emp where deptno = (select deptno from emp where ename ='KING'));
Select ename, job, sal ,hiredate, deptno from emp where hiredate>(select min(hiredate) from emp WHERE deptno = (select deptno from emp where ename ='KING'));
select * from emp where deptno=10;
-- all : 서브쿼리 모든 값을 만족할 때 선택
Select ename, sal from emp where deptno != 20 and sal > all(Select sal from emp where JOB='SALESMAN');
Select ename, sal from emp where deptno != 20 and sal > (Select Max(sal) from emp where Job ='SALESMAN'); 
--exist : 서브쿼리에 값이 존재하면 값을 선택
-- 정리필요

Select empno, ename, sal from emp e
where Exists (Select empno From emp where e.empno = mgr);

Select empno, ename, sal from emp e
where Exists (Select empno From emp Where empno= e.mgr);

select empno, mgr from emp;

--다중열 서브쿼리
select * from emp where deptno = 30;
Select * from emp where deptno = 30 and comm is not null;
Select * from emp where (sal, deptno) in (select sal, deptno from emp where deptno=30 and nvl(comm,0)>0);

savepoint S0207;
update emp set deptno=30 where job ='MANAGER';
select * from emp order by job, sal;
Select empno, ename, job, sal, deptno from emp 
where (Job, sal) in (Select job, Min(sal) from emp Group by job) Order By job;

SELECT empno, sal, deptno FROM emp
WHERE sal IN (SELECT sal FROM emp
WHERE deptno = 30
AND comm is NOT NULL)
AND deptno IN (SELECT deptno FROM emp
WHERE deptno = 30
AND comm is NOT NULL);

Select emptno, sal, deptno From emp
Where sal In (select sal From emp Where deptno=30 And comm is not null);



Select empno, ename, sal from (Select empno, ename, sal from emp where deptno =30) where sal>2000;

-- 상관관계 서브쿼리
Select empno, ename, sal from emp e
where sal> (Select avg(sal) from emp e where exists (Select sal from emp where e.empno = mgr));
select empno, mgr, sal from emp e where exists (Select sal from emp where e.empno = mgr);
select empno, sal from emp;
select empno, ename from emp e where exists (select * from emp where e.empno=mgr); 


select * from emp;
select 
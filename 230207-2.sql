--SubQuery 쿼리문 내에 쿼리문 추가
--단일행 한개의 레코드를 선택하는 서브쿼리
-- 7369 사원과 같은 업무를 하는 사원
Select empno, ename, Job From emp where Job = (Select job from emp where empno = 7369);
--ADAMS보다 급여를 많이 받는 사원
Select Empno, ename, sal From emp where sal >(Select sal from emp where ename='ADAMS');
--평균급여 이상 받는 사원
Select * from emp where sal > (select Avg(sal) from emp);
--scott보다 급여가 많은 사원의 사원번호 이름 업무 급여 출력
Select empno, ename, job, sal from emp where sal>(select sal from emp where ename = 'SCOTT');
select * from tab;
Select ename, hiredate, Job, deptno from Emp where (Job =(Select job from emp where ename='ADAMS')) Or (deptno = (select deptno from emp where ename ='SCOTT'));

Select empno, ename,job, hiredate, sal from emp where job=(select job from emp where empno=7521) And sal > (select sal from emp where empno=7934);

Select deptno, min(sal) from emp Group by Deptno
having min(sal) >(Select min(sal) from emp where deptno=20);

Select Job, Avg(Sal) from emp group by Job having avg(sal)>(select avg(sal) from emp where deptno=10);


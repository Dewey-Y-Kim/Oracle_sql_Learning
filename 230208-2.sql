Select *
From emp e
where sal>(Select avg(sal) sal From emp where e.empno=mgr);

Select * from emp;

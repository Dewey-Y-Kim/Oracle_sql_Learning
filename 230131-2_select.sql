select * from tab;
select * from emp;


-- order by : asc, desc
SELECT ename, sal, deptno FROM emp ORDER BY ename ASC;
SELECT ename, sal, deptno FROM emp ORDER BY ename DESC;
SELECT * from emp ORDER BY hiredate ASC;
-- 두가지 기준 정렬
SELECT * from emp ORDER BY job ASC, sal DESC, ename ASC;


-- 중복행 제거 : 카테고리 만들때?

SELECT DISTINCT job from emp;
select * from emp;

-- NVL() null -> value 대체부여

SELECT ename 사원명, sal 급여,sal+NVL(comm,0) 지급액 from emp Order by ename asc; 
SELECT * from emp ORDER by 2 ASC;
SELECT * from emp ORDER by 3 DESC;

select * from emp;

-- 1.
SELECT empno, ename, sal from emp;

-- 2
SELECT empno, ename, sal, job FROM emp Order By ename;

-- 3
select * from emp where hiredate LIKE '__/05%';
-- 4
select * from emp where ename LIKE '%A%' And sal >=3000;
-- 5
select * from emp where job ='SALESMAN' OR job ='MANAGER';
select * from emp where job In('SALESMAN', 'MANAGER');
-- 6
select * from emp where sal>=3000 and comm is Null;
SELECT * FROM emp where sal>=3000 and NVL(comm, 0) =0;

-- 7
select * from emp where ((sal between 2000 and 4000) OR (comm is not null))

ORDER by sal asc;
-- 8
select * from tab;
select * from tabs;
-- 9
select empno, ename, job, hiredate, sal from emp
where deptno=10 or deptno=20 Order by job asc, sal desc;

-- ex 저는 이름이 %입니다.
select '저는 이름이 '||ename||'입니다.' 이름 from emp;

select ename||': 1 Year Salary = '||sal*12 "/year" from emp;

select job from emp;
select distinct deptno, job from emp order by deptno;

select * from tab;

select * from emp;

select * from emp where job='MANAGER';
select * from emp where job='manager';
select * from emp where deptno=10;
SELECT * from emp where sal>=2000;
-- 2000~3000? ?? ??
SELECT * FROM emp WHERE sal >=2000 AND sal<=3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;
SELECT * FROM  emp;
SELECT empno, ename, sal, deptno FROM emp WHERE sal BETWEEN 2500 AND 3000;
SELECT empno, ename, sal, deptno FROM emp WHERE sal >=2500 AND sal<=3000;
SELECT * FROM emp;

SELECT * FROM emp WHERE deptno=10 OR deptno =30 AND job='MANAGER';

SELECT * FROM emp WHERE (deptno=10 OR deptno=30) AND job ='MANAGER';
SELECT * FROM emp WHERE deptno in(10, 30) AND job ='MANAGER';
SELECT * FROM emp WHERE sal IN(2000, 3000, 4000, 5000);
select * from emp;
SELECT * FROM emp WHERE ename LIKE 'A%';
SELECT * FROM emp WHERE ename LIKE '%S';
SELECT * FROM emp WHERE ename LIKE '_A%';
SELECT * FROM emp WHERE ename LIKE '%M%';
SELECT * FROM emp WHERE ename LIKE '__L%';
SELECT * FROM emp WHERE (sal >1500) And (hiredate LIKE '___12%');

SELECT * FROM emp WHERE empno NOT BETWEEN 7369 AND 7700;
SELECT * FROM emp WHERE empno <=7369 OR empno > 7700;
Select * from emp where empno = 7369;
SELECT * FROM emp WHERE sal NOT IN(3000, 4000, 5000);
SELECT * FROM emp WHERE job NOT LIKE '%MAN%';
select * from emp where job like '%MAN%';
SELECT * FROM emp WHERE mgr IS NULL;
select empno, ename, sal, sal +2000, sal/2, comm, comm+2 from emp;
-- null ? ?? ???? ????.
SELECT * FROM emp WHERE job='SALESMAN';
SELECT * FROM emp WHERE comm=null;
SELECT * FROM emp WHERE comm IS NULL;
SELECT * FROM emp WHERE comm IS NOT NULL;

SELECT empno, ename, sal, sal*1.1 "Increased Pay" FROM emp;
-- emp table ename job sal hiredate comm
Select ename, job, sal*1.2 AS "increased", hiredate, comm FROM emp WHERE 
hiredate NOT LIKE '82%' AND hiredate NOT Like '83%';
SELECT ename, job, sal*1.2 as"increased", hiredate, comm FROM emp WHERE 
hiredate NOT IN('82%', '83%);
select * from emp;


DESCRIBE emp;


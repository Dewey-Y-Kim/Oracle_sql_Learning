-- 숫자 함수
-- dual 가상 테이블

Select -10 ,abs(-10) from dual;
--abs() 절대값, ceil() 올림, floor() 버림
Select ceil(10.5), floor(10.5), ceil(-10.5), floor(-10.5) from dual;
-- mod() 나머지, round(n, m)n의 반올림 0 1의자리 - m자리까지 표시
select mod(10, 4), round(10.4), round(10.5),round(12.5642,2),round(12.5642, 1),
round(12.668, -1), round(17.668, -1), round(12.668, -2) from dual;
-- power(n,m) n ^m  sqrt(n, m) n의 제곱근

select power(2,16), sqrt(100) from dual;


-- 문자함수
--concat(char1, char2)
select ename||'님' , concat(ename, '님') from emp;

-- initcap(cahr)
select initcap('superviser') from dual;
select initcap('사장님 나빠요') from dual;

--lower upper
select ename, lower(ename), lower('Superviser'), upper('Superviser') from emp;

-- lpad(char, n [,char2]) char를 n만큼 char2 표기
select ename, lpad(ename,5), lpad(ename,14,'!'), rpad(ename, 5), rpad(ename,14,'@') from emp;

select ename, rpad(lpad(sal, 7,'*'),10,'*') from emp;

select lpad('강',1) from dual;
select lpad('강',2) from dual;

-- substr(char, m [,n]) 문자열 일부 출력 m번째부터 n글자
select substr('I was loved her', 5) from dual;
select substr('I was loved her', 5, 5) from dual;
select ename, substr(ename, 3) from emp;
select ename, substr(ename, 3,4) from emp;
select ename, substr(ename, -4,3) from emp;

--length()
select length('잠탱이') from dual;
select lengthb('잠탱이') from dual;
select length(sal||'') from emp;
select length(sal) from emp;

select ename from emp;
select ename, rpad(lpad(ename, length(ename)/2),length(ename),'*') name from emp;
select ename, rpad(lpad(ename, round(length(ename)/2)),length(ename),'*') name from emp;
select floor(length(ename)/2), ceil(length(ename)/2) from emp;
select ename, Rpad(substr(ename, 0 , length(ename)/2), length(ename), '*' ) name from emp;


-- replace()
select ename, replace(ename,'C','c') from emp;
select ename, replace(replace(ename, 'A','a'),'C','c') from emp;

--instr(char, chr, m, n) 문자 위치 없으면 0 m번째글자부터 n번째chr찾기
select ename, instr(ename, 'A') from emp;
select instr('corporate floor', 'or' ,3) from dual;
select instr('corporate floor', 'or' , 2, 3) from dual;

-- trim() 양 사이드 특정 문자 제거
select sal, trim(0 from sal) from emp;
select trim(1 from 11211112222121211) from dual;
select rtrim(112211,1) from dual;
select ltrim('aassaagga','a') from dual; --a이거나 다른 문자가 나올때까지
select ltrim('xyxxyxxtt','xy') from dual;
select rtrim('BackEnd Copse cops eg xytxytxx','xyte') from dual;
select lpad(trim('  system,out  '),10) test from dual;


select empno, ename, job, hiredate, sal, nvl(comm,0), sal+nvl(comm,0) from emp;
select ename, job, sal, nvl(comm,0) comm from emp 
where (sal between 2500 and 4000) OR (job ='SALESMAN') ORDER BY sal DESC;

-- if 조건식  then
--
-- end if
-- dcode 부서코드 10/기획부  20/인사부 30/영업부
select empno,ename,job, deptno, decode(deptno, 10, '기획부' ,20 ,'인사부', 30,'영업부') from emp order by deptno, sal DESC;

-- 현재 시스템의 날짜 시간 가져오는 변수

select SYSDATE from dual;
select to_char(Sysdate,'YYYYMMDD,HHMISS') from dual;
select to_char(sysdate,'month') from dual;
select to_char(sysdate,'day') from dual;
select to_char(sysdate,'d') from dual;

select to_char(hiredate,'yymmdd,hh24miss pm') from emp;

-- last_day 해당월의 마지막날
SELECT sysdate today, last_day(sysdate) from dual;
select hiredate, last_day(hiredate) from emp;

-- add_months( 기준, 월) 기준일을 월만큼 더함
select sysdate, sysdate -10,add_months(sysdate,-10),add_months(sysdate,15) from dual;
select empno,ename,hiredate, add_months(hiredate, 15) from emp;
select add_months('20-01-04',5), add_months('20201004',3), add_months('20/03/04',3),add_months('20.10.01',3),
add_months('01-02-21',3),add_months('01.02.23',3) from dual;

--months_between(a,b) a와 b 개월수 차이
select hiredate, floor(months_between(sysdate,hiredate)) from emp;

-- round(시간,m) m이하 반올림('month' day 반올림, 'year' month 반올림)
select hiredate, round(hiredate, 'year') from emp;
select sysdate, round(sysdate,'year') from dual;
select sysdate, round(sysdate,'month') from dual;
select round(to_date('2020-12-11'),'year'), round(sysdate,'year') from dual;

select round(to_date('2020-12-11'),'month'), round(sysdate,'month') from dual;

select to_char(round(to_date('2023-01-17'),'day'),'day'), round(sysdate,'day') from dual;

select sysdate +100, sysdate -100, sysdate-to_date('1983-07-13') from dual;
select to_date('02-20-20','mm-dd-yy') from dual;

select '4444'+1 from dual;


-- group function

-- count() : 데이터의 수
select count(empno), count(ename), count (sal), count(comm), count(nvl(comm,0)) from emp;
select max(ename), max(sal), min(sal) from emp;
select avg(sal), avg(comm), avg(nvl(comm,0)) from emp;
select stddev(sal) from emp;
select sum(sal) from emp;
select sum(sal) from emp where deptno=10;

select sum(sal), avg(sal), round(stddev(sal),3) from emp where job ='MANAGER';

SELECT job, COUNT(ename), SUM(SAL), AVG(SAL), STDDEV(SAL) FROM EMP GROUP BY job;
SELECT deptno, COUNT(ename), SUM(sal),round(AVG(sal),3), round(STDDEV(sal),3) FROM emp GROUP BY deptno Order By deptno;

Select job, Count(empno) 사원수, max(sal) 급여최고액 , min(sal) 급여최저액 , round(avg(sal),3) 급여평균 from emp where job != 'SALESMAN' Group By job Order by max(sal) Desc;

Select deptno, job 주업무, avg(sal) 평균급여, sum(sal) 부서총급여, count(empno) 구성원 from emp 
group By deptno, job 
Order By deptno, avg(sal) DESC ,job;

Select Job, Sum(sal), Round(Avg(sal),3), Max(sal), Min(sal), Count(empno) From emp Group By job Having count(empno) >=3 Order By Avg(sal) Desc;

Select deptno, job, Sum(sal), Round(Avg(sal),3), count(empno), Round(STDDev(sal),3) From emp 
Where To_date(hiredate)>=To_date('81-01-01') And sal>=1000
Group By deptno, job Order By deptno Desc, job;

Select deptno ,job, sum(sal) from emp
Group By RollUp(deptno), RollUp(job);

Select deptno ,job, sum(sal) from emp
Group By deptno, RollUp(job);

Select deptno ,job, sum(sal) from emp
Group By RollUp(deptno, job);

Select deptno , nvl(job,'총계') , sum(sal), Count(empno) from emp
Group By RollUp(deptno, job);

--cube() 그룹함수에 통계 추가

select deptno,job, Sum(sal), Round(Avg(sal),2), Count(empno) From emp Group By cube(deptno, job) Order By deptno, job;
select * from emp where job like 'A%';

--grouping() Group By 처리된 행은 0, RollUp/Cube로 처리된 행은 1반환
Select deptno, job, sum(sal), Count(empno), Grouping(deptno), Grouping(Job)
from emp Group By cube(deptno, job) Order By deptno, job;



-- 이멜 추출하기
select lpad('cancereal@gamil.com',(instr('cancereal@gamil.com','@'))-1),substr('cancereal@gamil.com',(instr('cancereal@gamil.com','@')+1)) from dual;

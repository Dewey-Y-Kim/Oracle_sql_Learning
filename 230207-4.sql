-- Join : 2개 이상의 테이블을 연결하여 레코드를 선택할 때
Select * from emp;
Select * from dept;

-- 동등조인
-- 사원명(emp), 급여(emp), 부서명(dept)을 선택
Select emp.ename, emp.sal, dept.dname,emp.deptno from emp, dept where emp.deptno=dept.deptno;
Select ename, job, sal, dname, emp.deptno from emp, dept where emp.deptno=dept.deptno;
select * from tab;

-- join절을 이용한 조인
select ename, sal, dname, dept.deptno from emp join dept on emp.deptno=dept.deptno;

Select e.ename, e.sal, d.dname 
from (select * from emp where deptno=30) e 
join dept d on e.deptno = d.deptno;

Select * from bonus;

-- 시퀀스 객체 생성
create sequence pub_sq
start with 1
increment by 1;
create sequence author_sq
start with 10
increment by 10;
create sequence book_sq
start with 1
increment by 2;
select * from tab;

select * from user_sequences;
-- currval : 마지막에 사용된 시퀀스 번호 - 같은 쿼리문 내에서만 사용가능
select author_sq.nextval, author_sq.currval from dual;
select * from user_sequences;
desc pub_tbl;

insert into pub_tbl(pub_code, pub_name, pub_tel) 
values(pub_sq.nextval, '하늘','02-1234-1234');
desc author_tbl;
insert into author_tbl(author_code, author_name) 
values( author_sq.nextval,'lee');
select * from tab;
select * from author_tbl;
select * from pub_tbl;
desc books;
select * from books;

insert into books values (book_sq.nextval,'chrome',200,sysdate,'it',5,80,sysdate);
select * from books;
select * from pub_tbl;
select * from author_tbl;
commit;
-- 책이름, 가격 출판사명 카테고리를 선택하라
Select b.Bookname, b.price, p.pub_name, b.category
from books b join pub_tbl p on b.pub_code = p.pub_code;
-- 책이름, 작가 출판사 가격 카테고리
select b.bookname, a.author_name, p.pub_name,b.price, b.category
from books b join author_tbl a on b.author_code = a.author_code 
join pub_tbl p on b.pub_code=p.pub_code;
select * from author_tbl;
select b.isbn, b.price, p.pub_name, p.pub_tel, a.author_name 
from books b join author_tbl a on b.author_code=a.author_code join pub_tbl p on b.pub_code=p.pub_code
where price >10000;
select * from books;

-- emp dept 조인
-- 사원 중 부서코드가 30번인 사원의 사원명 업무 급여 부서명을 선택하라
select e.ename, e.job, e.sal, d.dname from emp e 
join dept d on e.deptno= d.deptno and e.deptno=30;
select * from dept;

--세일즈맨의 사원번호 이름 급여 부서명 근무지를 출력하라

select e.empno, e.ename, e.sal, d.dname, d.loc from emp e join dept d on e.deptno=d.deptno and e.job ='SALESMAN';

-- 비동등 조인 : 학점, 평점 등 범위를 이용해 조인
select * from salgrade;
-- 사원명 , 업무 급여 등급을 선택하라
select e.ename, e.job, e.sal, s.grade 
from emp e, salgrade s 
Where e.sal Between s.LoSal and s.HiSal;

Select e.ename, e.job, e.sal, s.grade
from emp e join salgrade s
on e.sal between s.losal and s.hisal;

select * from s lgrade;
-- 10번 20번 부서의 사원 중 사원번호, 사원명, 급여, 상여금, 부서명, 호봉을 선택하라
select e.empno, e.ename, e.sal, e.comm, d.dname, s.grade
from emp e join dept d on d.deptno= e.deptno and e.deptno in(10,20) 
join salgrade s on e.sal between s.losal and s.hisal;

-- 셀프 조인
-- 사원명 업무 입사일 급여 관리자명 관리자입사일 급여를 선택

select sel.ename, sel.hiredate, sel.sal, man.ename 관리자 , man.hiredate, man.sal 
from emp sel join emp man on sel.mgr = man.empno
Order by man.ename;

select  em.ename || '의 관리자는 '|| man.ename ||'이다' " " 
from emp em join emp man on em.mgr = man.empno
Order by man.ename;


Select concat( concat( ename ,'의 관리자는'), ename, '이다') from emp join emp;
select concat( em.ename , '의 관리자는 ') " ", concat ( man.ename,'이다') "  "
from emp em join emp man on em.mgr = man.empno
Order by man.ename;

select * from dept;

-- outer Join 

-- 사원명 급여 부서코드 부서명 선택
-- (+) 데이터가 부족한 쪽에 표기
Select e.ename, e.sal, e.deptno, d.dname
from emp e join dept d on e.deptno(+) = d.deptno;

Select e.ename, e.sal, e.deptno, d.dname
from emp e, dept d
where e.deptno(+) = d.deptno;


-- 책이름, 출판사명, 가격을 outJoin
select * from tab;
-- books pub
select * from books;
select * from pub_tbl;
select * from author_tbl;

select b.bookname, p.pub_name, b.price 
from books b join pub_tbl p
on b.pub_code(+)=p.pub_code;


Select b.bookname, p.pub_name, b.price
from books b left outer join pub_tbl p
on b.pub_code = p.pub_code;

Select b.bookname, p.pub_name, b.price
from books b right outer join pub_tbl p
on b.pub_code = p.pub_code;

--left outer join
-- right outer join

-- 사원명 급여 부서코드 부서명 선택
Select e.ename, e.sal, e.deptno, d.dname
from emp e right outer join dept d
on e.deptno = d.deptno;

Select e.ename, e.sal, e.deptno, d.dname
from emp e left outer join dept d
on e.deptno = d.deptno;

Select e.ename, e.sal, e.deptno, d.dname
from emp e full outer join dept d
on e.deptno = d.deptno;

Select e.ename, e.sal, e.deptno, d.dname
from dept d full outer join emp e
on e.deptno = d.deptno;

Select distinct a.deptno, b.deptno
from emp a full outer join dept b
on a.deptno=b.deptno
Order by a.deptno;

Select distinct a.deptno, b.deptno
from emp a right outer join dept b
on a.deptno=  b.deptno
Order by a.deptno;


-- 종합문제

--1
Select e.ename, e.deptno, d.dname from emp e Join dept d on e.deptno=d.deptno Order by e.deptno;

--2
Select e.ename, e.Job, e.sal, d.dname from emp e join dept d on e.deptno=d.deptno where d.loc ='NEW YORK';
Select e.ename, e.Job, e.sal, d.dname from emp e join dept d on e.deptno=d.deptno and d.loc ='NEW YORK';

--3
Select e.ename, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno where e.comm is not null;
Select e.ename, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno and e.comm >0;
Select * from emp;
--4
Select e.ename, e.job, d.dname, d.loc from emp e join dept d on e.deptno=d.deptno where e.ename like '%L%';
Select e.ename, e.job, d.dname, d.loc from emp e join dept d on e.deptno=d.deptno and e.ename like '%L%';

--5
Select E.ename Emplyee, E.empno Emp#, man.ename Manager, man.empno Mgr# from emp e Left Outer Join emp Man on e.mgr=man.empno
Order by e.mgr desc; 


-- Natural Join
Select empno, e.ename, deptno, d.dname From emp e Natural Join dept d;
Select empno, ename, dname from emp join dept on emp.deptno = dept.deptno;
Select empno, ename, deptno, dname from emp join dept using(deptno);


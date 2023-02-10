select * from tab;

Create Table member(
    no number(3) primary key,
    username varchar2(30) not null,
    tel varchar2(15) not null,
    email varchar2(30), --null 허용
    addr varchar2(200),
    writedate date default sysdate -- 날짜를 등록하지 않으면 현재날짜를 등록
);

select * from tab;

INSERT into member values(1, '홍길동', '010-1234-1234', 'skdjfj@gmail.com', '서울시 강남구', sysdate);
Insert Into member(no, username, tel) values(3, 'sunshinLee','010-2132-2222');
select * from member;

-- 도서관리 테이블 설계
-- 테이블 설계 엑셀+쿼리작성;


select * from tab;
select * from member;
-- member테이블에 필드 추가하기

--ex 취미 필드 추가
alter table member add (hobby varchar2(30));
select * from member;

-- member테이블 필드 수정-데이터타입 길이등-
desc member;
Alter table Member modify(email varchar2(30));
-- 기존데이터보다 작게 변경할 경우
-- ORA-01441: cannot decrease column length because some value is too big
-- 01441. 00000 -  "cannot decrease column length because some value is too big"

desc member;

-- 삭제 필드를 지울때 Drop

Alter Table Member drop Column Email;
desc member;
select * from member;

drop table member;
select * from tab;
drop table emp5;


CREATE table booktbl(
    isbn number(13) primary key,
    bookname varchar2(100) not null,
    price number(7) not null,
    pub_date date,
    category varchar2(30) not null,
    pub_code number(5) not null,
    author_code number(5) not null,
    writedate date default sysdate
);


Create table pub_tbl(
    pub_code number(5) primary key,
    pub_name varchar2(50) not null,
    pub_ceo varchar2(30),
    pub_tel varchar2(15) not null,
    pub_fax varchar2(15),
    pub_addr varchar(300),
    writedate date default sysdate
);


create table author_tbl(
    author_code number(5) not null primary key,
    author_name varchar2(30) not null,
    debue varchar2(100),
    debue_year date,
    author_email varchar2(100),
    author_homepage varchar2(100),
    author_writedate date default sysdate
);

select * from tab;

drop table pub_tbl;
drop table bookTBL;

alter table emp modify (ename varchar2(20) not null);
select * from tab;
desc emp;
alter table emp modify (empno number(4) not null primary key);

select * from emp;
commit;
-- primary key 제약조건 설정하기
-- 제약조건 이름 : 테이블명_제약조건종류_필드명
alter table emp add constraint emp_pk_empno primary key(empno);
desc emp;
-- 제약조건 확인하기
select  * from user_constraints order by table_name;
drop pk_emp from user_constraints;
delete * from user_constraints where constraint_name=pk_emp;
select * from salgrade;

--unique :중복데이터허용금지

alter table salgrade add constraints salgrade_uk_grade unique(grade);
select * from user_constraints order by table_name;
insert into salgrade value(5,0,699);
insert into salgrade values(6,0,699);
select * from user_constraints order by table_name;
select * from salgrade;

desc emp;
-- 급여 9999.99 까지 저장 가능
-- comm 도 9999.99까지 저장 가능
-- 10x 9000x
alter table emp add constraints emp_ck_sal check(sal between 800 and 6000);
select * from user_constraints order by table_name;
desc emp;
insert into emp (empno, ename, sal) values(2222,'kim', 5500);
select * from emp;
delete from emp where empno=2222;
desc dept;
--dept check 제약조건 10, 20, 30, 40, 50,... ,90
alter table dept add constraint dept_ck_deptno check(deptno in(10,20,30,40,50,60,70,80,90));
select * from user_constraints order by table_name;
insert into dept values(50, 'sales','Seoul');

insert into emp(empno, ename, deptno) values( 1234,'choi',60);
-- emp테이블의 deptno가 dept테이블의 dept 테이블의 deptno를 참조한다. - 참조데이터는 반드시 한개이어야
alter table dept add constraint dept_pk_depno primary key (depno);
-- 참조되는 레코드를 지운다.
alter table emp add constraint emp_fk_deptno foreign key (deptno) references dept(deptno) on delete cascade;
-- 참조 되고 있는 데이터는 삭제하지 않는다.
alter table emp add constraint emp_fk_deptno foreign key (deptno) references dept(deptno) on no actions;
select * from emp;
select * from dept;

select * from user_constraints order by table_name;


delete from dept where depno=50;
insert into dept ;
-- 제약조건 삭제

alter table dept drop constraint dept_ck_deptno;
insert into emp(empno, ename, deptno) values(5555, 'gang', 15);
insert into dept values(15, '인사부','송파구');
select * from dept;
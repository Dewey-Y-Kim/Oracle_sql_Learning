set serveroutput on; --부팅시
   Declare 
    I_MSG VARCHAR2(100); -- 변수명 데이터타입
    I_name Varchar2(10);
BEGIN
    i_msg := 'Hello World';
    i_name := '홍';
    DBMS_OUTPUT.PUT_LINE(I_MSG);
    Dbms_output.put_line('이름:'||i_name);
END;

-- SET SERVEROUTPUT ON;

-- BEGIN
--    DBMS_OUTPUT.PUT_LINE('Hello?');
-- END;


-- emp 테이블에서 사원번호, 사원명, 급여를 선택하여 출력하는 프로시저 생성
-- in 파라미터 : 외부에서 프로시저 내로 값을 넣어주는 변수 선언시 사용
-- %type : 테이블 내 특정 필드와 같은 데이터 형으로 선언한다.

create or replace procedure emp_select(i_empno in emp.empno%type)

is -- 변수 선언

    s_empno emp.empno%type;
    s_ename emp.ename%type;
    s_sal emp.sal%type;
    
begin
    select empno, ename, sal into s_empno, s_ename, s_sal from emp where empno= I_empno;
    dbms_output.put_line('사원번호 = ' || s_empno);
    dbms_output.put_line('사원명 = ' || s_ename);
    dbms_output.put_line('사원급여 = ' || s_sal);
end;
select * from emp;
-- 프로시저 실행
execute emp_select(7839);

select * from user_source;

-- %rowtype : 테이블내의 모든 필드와 같은 데이터형으로 변수 선언하기
-- 사번을 입력받아 사원번호, 사원명, 업무, 급여, 부서번호, 부서명를 출력하는 프로시저를 작성

create or replace procedure emp_row(i_empno in number)

is
    --select한 데이터를 담을 변수선언
    record_emp emp%rowtype;
    record_dep dept%rowtype;
    
begin
    select e.empno, e.ename, e.job, e.sal, e.deptno, d.dname
    into record_emp.empno, record_emp.ename, record_emp.job, record_emp.sal , record_emp.deptno , record_dep.dname
    from emp e join dept d on e.deptno=d.deptno and empno=i_empno;

    dbms_output.put_line('empno : '||record_emp.empno);
    dbms_output.put_line('ename : '||record_emp.ename);
    dbms_output.put_line('job : '||record_emp.job);
    dbms_output.put_line('sal : '||record_emp.sal);
    dbms_output.put_line('deptno : '||record_emp.deptno);
    dbms_output.put_line('depart : '||record_dep.dname);
end;

execute emp_row(7839);



Select * from emp;
insert into emp(empno, ename, sal, deptno) values (8888, 'FORD', 4000, 40);
commit;

-- Exception
-- 사원명을 입력받아 해당 사원의 사원번호, 사원명, 급여를 선택하는 프로시저 만들기
-- 예외처리 : 

create or replace procedure emp_ename(i_ename in emp.ename%type)
is
    get_name emp%rowtype;
begin
    select empno, ename, sal into get_name.empno, get_name.ename, get_name.sal
    from emp     where upper(i_ename) = upper(ename);
    
    dbms_output.put_line('√√√  '||'사 원 명:'||get_name.ename);
    dbms_output.put_line('√√√  '||'사원번호 :'||get_name.empno);
    dbms_output.put_line('√√√  '||'급   여 :'||get_name.sal);
    
    exception 
        when no_data_found then
        dbms_output.put_line('√√√  '||i_ename||'님은 당사 사원이 아닙니다.');
        when Too_many_rows then
        dbms_output.put_line('√√√  '||i_ename||'사우님은 같은 이름의 사우님이 2분이상입니다.');
        when Others then
        dbms_output.put_line('+ 예외가 발생하였습니다. 관리자에게 문의해주세요.');
end;
execute emp_ename('james');
execute emp_ename('ford');
execute emp_ename('gil');
execute emp_ename(gil);
select * from user_source;
select * from emp;
delete from EMP WHERE empno=8888;
select * from emp;



-- in parameter : 프로시저내로 데이터를 넣어주는 것
-- out parameter : 프로시저 밖으로 데이터를 내보내는 것
-- in out parameter [생략 가능] : 같은 변수로 in과 out을 처리하는 변수
select * from emp;
desc emp;

select * from user_constraints where table_name='EMP';

-- 사원번호 사원명 급여 부서번호를 입력받아 사원등록하는 프로시저 작성
desc emp;
create or replace procedure insert_emp(i_empno in emp.empno%type, i_ename in emp.ename%type, i_sal in number, i_deptno in emp.deptno%type)
is
    str varchar2(200);
begin
    insert into emp(empno, ename, sal, deptno) values(i_empno, i_ename, i_sal, i_deptno);
    commit;
    dbms_output.put_line('사원이 입력되었습니다');
    
    exception
    when others then dbms_output.put_line('사원 입력이 안되었습니다.');
end;

execute insert_emp(2222,'FORD', 4000, 40);
select * from emp;

-- 사원번호를 입력받아 이름, 업무, 급여를 선택하는 프로시저 만들기

create or replace procedure emp_list(i_empno in emp.empno%type,
o_ename out emp.ename%type,o_job out emp.job%type, o_sal out emp.sal%type)
is

begin
    select ename, job, sal into o_ename, o_job, o_sal from emp where empno= i_empno;
end;
-- 변수 선언
variable p_ename varchar2(20);
vari p_job varchar2(20);
variable p_sal number;

execute emp_list(7788, :p_ename, :p_job, :p_sal);
print p_job;
print p_ename;
print p_sal;

-- in out parameter

-- 사원번호 사원명 부서코드 급여를 입력받아 사원 등록하는 프로시저

create or replace procedure emp_in(i_empno emp.empno%type, i_ename emp.ename%type, i_deptno emp.deptno%type, i_sal emp.sal%type)
is

begin
    insert into emp(empno, ename, sal, hiredate, deptno)
    values (i_empno, i_ename, i_sal, sysdate, i_deptno);
    dbms_output.put_line(i_ename||'사원이 등록되었습니다.');
end;

execute emp_in(1234, 'kong', 40, 2000);
select * from emp;

-- 사원번호와 급여인상률을 입력받아 해당사원의 급여를 수정하는 프로시저

create or replace procedure emp_sal_update(i_empno emp.empno%type, i_rate number)
is
    I_emp emp%rowtype;
begin
    update emp set sal=sal + sal * (i_rate /100)
    where i_empno=empno;
    commit;
    dbms_output.put_line('급여가 수정되었습니다.');
    
    select empno, ename, sal into i_emp.empno, i_emp.ename, i_emp.sal from emp where empno=i_empno;
    dbms_output.put_line(i_emp.empno||'   '||i_emp.ename||'   '||i_emp.sal);
end;
select * from emp;
exec emp_sal_update(7777, 20);
select * from emp;
delete from emp where empno=2222;

create or replace procedure del_emp(inNum emp.empno%type)
is
begin
    delete from emp where empno=innum;
    commit;
    Dbms_output.put_Line('삭제되었습니다.');
end;
exec del_emp(1111);
select * from emp;

--type 만들기

create or replace procedure emp_search(i_empno emp.empno%type)
is
    -- 레코드형 데이터 타입 만들기
    type emp_record_type is record(
    v_empno emp.empno%type,
    v_ename emp.ename%type,
    v_job emp.job%type,
    v_mgr emp.mgr%type,
    v_hiredate emp.hiredate%type,
    v_sal emp.sal%type,
    v_comm emp.comm%type,
    v_dept emp.deptno%type
    );
    -- 변수선언
    e_record emp_record_type;
begin
    -- 선택한 필드의 값이 e_record변수에 대입된다.
    select * into e_record
    from emp where empno=i_empno;
    
    dbms_output.put_line(e_record.v_empno||','||e_record.v_ename||','||e_record.v_hiredate||','|| e_record.v_sal);
end;
select * from emp;
execute emp_search(7521);

desc pub_t
select * from pub_tbl;
select * from author_tbl;
select author_code from author_tbl;
select * from books;
delete from pub_tbl where pub_code=3;
create or replace procedure bookin(
                                    bname books.bookname%type , 
                                    pname pub_tbl.pub_name%type, 
                                    pric books.price%type, 
                                    aname author_tbl.author_name%type, 
                                    cate books.category%type)
is
    type b_rec is record(
    pcode pub_tbl.pub_code%type,
    acode author_tbl.author_code%type
    );
    
    book b_rec;
begin
    select pub_code into book.pcode from pub_tbl where pname=pub_name;
    select author_code into book.acode from author_tbl where aname=author_name;
    insert into books(isbn, bookname, price, category, pub_code, author_code) values (book_sq.nextval, bname, pric, cate, book.pcode, book.acode);
    dbms_output.put_line('입력완료');
    exception
        when others then
        dbms_output.put_line('입력실패');
end;

create or replace procedure bookins(
                                    bname books.bookname%type , 
                                    pname pub_tbl.pub_name%type, 
                                    pric books.price%type, 
                                    aname author_tbl.author_name%type, 
                                    cate books.category%type)
is
begin
    insert into books(isbn, bookname, price, category, pub_code, author_code) 
    values 
        (book_sq.nextval, bname, pric, cate,
        (select pub_code from pub_tbl where pname=pub_name), 
        (select author_code from author_tbl where aname=author_name));
    
    dbms_output.put_line('입력완료');
    exception
        when others then
        dbms_output.put_line('입력실패');
end;

rollback;

select * from pub_tbl;
select * from author_tbl;
exec bookins('대하','한빛',10000,'park','소설');
select * from books;